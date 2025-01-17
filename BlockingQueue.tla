--------------------------- MODULE BlockingQueue ---------------------------
EXTENDS Naturals, Sequences, FiniteSets

CONSTANTS 
    \* @type: Set(Str);
    Producers,   (* the (nonempty) set of producers                       *)
    \* @type: Set(Str);
    Consumers,   (* the (nonempty) set of consumers                       *)
    \* @type: Int;
    BufCapacity  (* the maximum number of messages in the bounded buffer  *)

ASSUME Assumption ==
       /\ Producers # {}                      (* at least one producer *)
       /\ Consumers # {}                      (* at least one consumer *)
       /\ Producers \intersect Consumers = {} (* no thread is both consumer and producer *)
       /\ BufCapacity \in (Nat \ {0})         (* buffer capacity is at least 1 *)
       
-----------------------------------------------------------------------------

VARIABLES 
    \* @type: Seq(Str);
    buffer, 
    \* @type: Set(Str);
    waitSet
vars == <<buffer, waitSet>>

RunningThreads == (Producers \cup Consumers) \ waitSet

NotifyOther(Others) == 
    IF waitSet \cap Others # {}
    THEN \E t \in waitSet \cap Others : waitSet' = waitSet \ {t}
    ELSE UNCHANGED waitSet

(* @see java.lang.Object#wait *)
Wait(t) == /\ waitSet' = waitSet \cup {t}
           /\ UNCHANGED <<buffer>>
           
-----------------------------------------------------------------------------

Put(t, d) ==
/\ t \notin waitSet
/\ \/ /\ Len(buffer) < BufCapacity
      /\ buffer' = Append(buffer, d)
      /\ NotifyOther(Consumers)
   \/ /\ Len(buffer) = BufCapacity
      /\ Wait(t)
      
Get(t) ==
/\ t \notin waitSet
/\ \/ /\ buffer # <<>>
      /\ buffer' = Tail(buffer)
      /\ NotifyOther(Producers)
   \/ /\ buffer = <<>>
      /\ Wait(t)

-----------------------------------------------------------------------------

(* Initially, the buffer is empty and no thread is waiting. *)
Init == /\ buffer = <<>>
        /\ waitSet = {}

(* Then, pick a thread out of all running threads and have it do its thing. *)
Next == \/ \E p \in Producers: Put(p, p) \* Add some data to buffer
        \/ \E c \in Consumers: Get(c)

-----------------------------------------------------------------------------

(* TLA+ is untyped, thus lets verify the range of some values in each state. *)
TypeInv == /\ buffer \in Seq(Producers)
           /\ Len(buffer) \in 0..BufCapacity
           /\ waitSet \in SUBSET (Producers \cup Consumers)

(* No Deadlock *)
Invariant == waitSet # (Producers \cup Consumers)

-----------------------------------------------------------------------------

MySeq(P) == UNION {[1..n -> P] : n \in 0..BufCapacity}

INSTANCE TLAPS

Spec == Init /\ [][Next]_vars

(* Whitelist all the known facts and definitions (except IInv below) *)
USE Assumption DEF vars, RunningThreads,
                   Init, Next, Spec,
                   Put, Get,
                   Wait, NotifyOther,
                   TypeInv, Invariant

\* TypeInv will be a conjunct of the inductive invariant, so prove it inductive.
\* An invariant I is inductive, iff Init => I and I /\ [Next]_vars => I. Note
\* though, that TypeInv itself won't imply Invariant though!  TypeInv alone
\* does not help us prove Invariant.
\* Luckily, TLAPS does not require us to decompose the proof into substeps. 
LEMMA TypeCorrect == Spec => []TypeInv
<1>1. Init => TypeInv BY SMT 
<1>2. TypeInv /\ [Next]_vars => TypeInv' BY SMT 
<1>. QED BY <1>1, <1>2, PTL

-----------------------------------------------------------------------------

PutEnabled == \A p \in Producers : ENABLED Put(p, p)

FairSpec == 
    /\ Spec

    \* Assert that producers take steps should their  Put  action be (continuously) 
    \* enabled. This is the basic case of fairness that rules out stuttering, i.e.,
    \* assert global progress.
    /\ WF_vars(Put("a", "a"))
    /\ WF_vars(Put("b", "b"))
    \* Stipulates that  Get  actions (consumers!) will eventually notify *all*
    \* waiting producers. In other words, given repeated  Get  actions (we don't
    \* care which consumer, thus, existential quantification), all waiting
    \* producers will eventually be notified.  Because  Get  actions are not
    \* continuously enabled (the buffer might be empty), weak fairness is not
    \* strong enough. Obviously, no real system scheduler implements such an
    \* inefficient "policy".
    \* This fairness constraint was initially proposed by Leslie Lamport, although
    \* with the minor typo "in" instead of "notin", which happens to hold for
    \* configurations with at most two producers
    /\ SF_vars(\E self \in Consumers: Get(self) /\ "a" \notin waitSet')
    /\ SF_vars(\E self \in Consumers: Get(self) /\ "b" \notin waitSet')

    \* See notes above (except swap "producer" with "consumer").
    /\ WF_vars(Get("d"))
    /\ WF_vars(Get("e"))
    /\ SF_vars(\E self \in Consumers: Get(self) /\ "d" \notin waitSet')
    /\ SF_vars(\E self \in Consumers: Get(self) /\ "e" \notin waitSet')


(* All producers will continuously be serviced. For this to be violated,    *)
(* ASSUME Cardinality(Producers) > 1 has to hold (a single producer cannot  *)
(* starve itself).                                                          *)
Starvation ==
    /\ []<>(<<Put("a", "a")>>_vars)
    /\ []<>(<<Put("b", "b")>>_vars)
    /\ []<>(<<Get("d")>>_vars)
    /\ []<>(<<Get("e")>>_vars)

=============================================================================
