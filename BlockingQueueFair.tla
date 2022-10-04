------------------------- MODULE BlockingQueueFair -------------------------
EXTENDS Naturals, Sequences, FiniteSets, Functions, SequencesExt, Apalache

CONSTANTS 
    \* @type: Set(Str);
    Producers,   (* the (nonempty) set of producers                       *)
    \* @type: Set(Str);
    Consumers,   (* the (nonempty) set of consumers                       *)
    \* @type: Int;
    BufCapacity  (* the maximum number of messages in the bounded buffer  *)

ConstInit ==
    /\ Producers = {"a", "b"}
    /\ Consumers = {"d", "e"}
    /\ BufCapacity = 3

ASSUME Assumption ==
       /\ Producers # {}                      (* at least one producer *)
       /\ Consumers # {}                      (* at least one consumer *)
       /\ Producers \intersect Consumers = {} (* no thread is both consumer and producer *)
       /\ Consumers \intersect Producers = {} (* no thread is both consumer and producer *)
       /\ BufCapacity \in (Nat \ {0})         (* buffer capacity is at least 1 *)
       
-----------------------------------------------------------------------------

VARIABLES 
    \* @type: Seq(Str);
    buffer,
    \* @type: Seq(Str);
    waitSeqC,
    \* @type: Seq(Str);
    waitSeqP

\* @type: <<Seq(Str), Seq(Str), Seq(Str)>>;
vars == <<buffer, waitSeqC, waitSeqP>>

BoundedMembership(seq, elem) ==
    \/ Len(seq) >= 1 /\ elem = seq[1]
    \/ Len(seq) >= 2 /\ elem = seq[2]
    \/ Len(seq) >= 3 /\ elem = seq[3]

WaitingThreads == {c \in Consumers: BoundedMembership(waitSeqC, c)} \cup {p \in Producers: BoundedMembership(waitSeqP, p)}

RunningThreads == (Producers \cup Consumers) \ WaitingThreads

NotifyOther(ws) ==
            \/ /\ ws = <<>>
               /\ UNCHANGED ws
            \/ /\ ws # <<>>
               /\ ws' = Tail(ws)

(* @see java.lang.Object#wait *)
Wait(ws, t) == 
            /\ ws' = Append(ws, t)
            /\ UNCHANGED <<buffer>>
           
-----------------------------------------------------------------------------

Put(t, d) ==
/\ ~BoundedMembership(waitSeqP, t)
/\ \/ /\ Len(buffer) < BufCapacity
      /\ buffer' = Append(buffer, d)
      /\ NotifyOther(waitSeqC)
      /\ UNCHANGED waitSeqP
   \/ /\ Len(buffer) = BufCapacity
      /\ Wait(waitSeqP, t)
      /\ UNCHANGED waitSeqC
      
Get(t) ==
/\ ~BoundedMembership(waitSeqC, t)
/\ \/ /\ buffer # <<>>
      /\ buffer' = Tail(buffer)
      /\ NotifyOther(waitSeqP)
      /\ UNCHANGED waitSeqC
   \/ /\ buffer = <<>>
      /\ Wait(waitSeqC, t)
      /\ UNCHANGED waitSeqP

-----------------------------------------------------------------------------

(* Initially, the buffer is empty and no thread is waiting. *)
Init == /\ buffer = <<>>
        /\ waitSeqC = <<>>
        /\ waitSeqP = <<>>

(* Then, pick a thread out of all running threads and have it do its thing. *)
Next == \/ \E p \in Producers: Put(p, p) \* Add some data to buffer
        \/ \E c \in Consumers: Get(c)

Spec == Init /\ [][Next]_vars 

FairSpec == Spec /\ \A c \in Consumers : WF_vars(Get(c)) 
                 /\ \A p \in Producers : WF_vars(Put(p, p)) 


Invariant == \A c \in Consumers : ENABLED Get(c)


----------------

BQS == INSTANCE BlockingQueueSplit WITH waitSetC <- {c \in Consumers: BoundedMembership(waitSeqC, c)}, 
                                        waitSetP <- {p \in Producers: BoundedMembership(waitSeqP, p)}

BQSSpec == BQS!Spec
SpecImpliesBQSSpec == Spec => BQSSpec

BQSFairSpec == BQS!A!FairSpec
FairSpecImpliesBQSFairSpec == FairSpec => BQSFairSpec

BQSStarvation == BQS!A!Starvation
FairSpecImpliesBQSStarvation == FairSpec => BQSStarvation

Fairness == 
    /\ WF_vars(Get("d"))
    /\ WF_vars(Get("e"))
    /\ WF_vars(Put("a", "a"))
    /\ WF_vars(Put("b", "b"))

Liveness == Fairness => BQSFairSpec

Starvations == Fairness => BQSStarvation
-----------------------------------------------------------------------------

=============================================================================
