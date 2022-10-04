-------------------------- MODULE BlockingQueueFairStarvation --------------------------

EXTENDS Integers, Sequences, FiniteSets, TLC, Apalache

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_1

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_1

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_2

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_2

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_3

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_3

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_4

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_4

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_4_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_4_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_5

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_5

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_5_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_5_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_6

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_6

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_6_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_6_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_7

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_7

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_7_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_7_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_8

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_8

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_9

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_9

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_9_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_9_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_a

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_a

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_a_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_a_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_b

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_b

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_b_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_b_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_c

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_c

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_c_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_c_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_d

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_d

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_e

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_e

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_e_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_e_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_f

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_f

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_f_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_f_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_g

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_g

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_g_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_g_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_h

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_h

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_h_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_h_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_i

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_i

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_j

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_j

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_j_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_j_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_k

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_k

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_k_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_k_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_l

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_l

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_l_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_l_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_m

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_m

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_m_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_m_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_n

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_n

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_o

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_o

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_o_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_o_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_p

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_p

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_p_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_p_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_q

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_q

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_q_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_q_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_r

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_r

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_r_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_r_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_s

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_s

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_s_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_s_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_t

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_t

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_t_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_t_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_u

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_u

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_u_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_u_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_v

VARIABLE
  (*
    @type: Bool;
  *)
  __saved___temporal_t_v

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_v_unroll

VARIABLE
  (*
    @type: Bool;
  *)
  __temporal_t_v_unroll_prev

VARIABLE
  (*
    @type: Bool;
  *)
  __Liveness_init

VARIABLE
  (*
    @type: Seq(Str);
  *)
  __saved_waitSeqC

VARIABLE
  (*
    @type: Seq(Str);
  *)
  __saved_waitSeqP

VARIABLE
  (*
    @type: Seq(Str);
  *)
  __saved_buffer

VARIABLE
  (*
    @type: Bool;
  *)
  __InLoop

VARIABLE
  (*
    @type: Seq(Str);
  *)
  waitSeqC

VARIABLE
  (*
    @type: Seq(Str);
  *)
  waitSeqP

VARIABLE
  (*
    @type: Seq(Str);
  *)
  buffer

CONSTANT
  (*
    @type: Set(Str);
  *)
  Producers

CONSTANT
  (*
    @type: Set(Str);
  *)
  Consumers

CONSTANT
  (*
    @type: Int;
  *)
  BufCapacity

\* @type: <<Seq(Str), Seq(Str), Seq(Str)>>;
vars == <<buffer, waitSeqC, waitSeqP>>

(*
  @type: (() => Bool);
*)
ASSUME(Producers /= {}
  /\ Consumers /= {}
  /\ Producers \intersect Consumers = {}
  /\ Consumers \intersect Producers = {}
  /\ BufCapacity \in Nat \ {0})

(*
  @type: (() => Bool);
*)
ConstInit ==
  Producers = { "a", "b" } /\ Consumers = { "d", "e" } /\ BufCapacity = 3

(*
  @type: (() => Bool);
*)
Init ==
  buffer = <<>>
    /\ waitSeqC = <<>>
    /\ waitSeqP = <<>>
    /\ __InLoop = FALSE
    /\ __saved_waitSeqC = waitSeqC
    /\ __saved_waitSeqP = waitSeqP
    /\ __saved_buffer = buffer
    /\ __temporal_t_1 \in BOOLEAN
    /\ __saved___temporal_t_1 = __temporal_t_1
    /\ __temporal_t_2 \in BOOLEAN
    /\ __saved___temporal_t_2 = __temporal_t_2
    /\ __temporal_t_3 \in BOOLEAN
    /\ __saved___temporal_t_3 = __temporal_t_3
    /\ __temporal_t_4 \in BOOLEAN
    /\ __saved___temporal_t_4 = __temporal_t_4
    /\ __temporal_t_5 \in BOOLEAN
    /\ __saved___temporal_t_5 = __temporal_t_5
    /\ __temporal_t_5_unroll = FALSE
    /\ __temporal_t_5_unroll_prev = FALSE
    /\ __temporal_t_4_unroll = TRUE
    /\ __temporal_t_4_unroll_prev = TRUE
    /\ __temporal_t_6 \in BOOLEAN
    /\ __saved___temporal_t_6 = __temporal_t_6
    /\ __temporal_t_7 \in BOOLEAN
    /\ __saved___temporal_t_7 = __temporal_t_7
    /\ __temporal_t_7_unroll = FALSE
    /\ __temporal_t_7_unroll_prev = FALSE
    /\ __temporal_t_6_unroll = TRUE
    /\ __temporal_t_6_unroll_prev = TRUE
    /\ __temporal_t_3 = (__temporal_t_4 \/ __temporal_t_6)
    /\ __temporal_t_8 \in BOOLEAN
    /\ __saved___temporal_t_8 = __temporal_t_8
    /\ __temporal_t_9 \in BOOLEAN
    /\ __saved___temporal_t_9 = __temporal_t_9
    /\ __temporal_t_a \in BOOLEAN
    /\ __saved___temporal_t_a = __temporal_t_a
    /\ __temporal_t_a_unroll = FALSE
    /\ __temporal_t_a_unroll_prev = FALSE
    /\ __temporal_t_9_unroll = TRUE
    /\ __temporal_t_9_unroll_prev = TRUE
    /\ __temporal_t_b \in BOOLEAN
    /\ __saved___temporal_t_b = __temporal_t_b
    /\ __temporal_t_c \in BOOLEAN
    /\ __saved___temporal_t_c = __temporal_t_c
    /\ __temporal_t_c_unroll = FALSE
    /\ __temporal_t_c_unroll_prev = FALSE
    /\ __temporal_t_b_unroll = TRUE
    /\ __temporal_t_b_unroll_prev = TRUE
    /\ __temporal_t_8 = (__temporal_t_9 \/ __temporal_t_b)
    /\ __temporal_t_d \in BOOLEAN
    /\ __saved___temporal_t_d = __temporal_t_d
    /\ __temporal_t_e \in BOOLEAN
    /\ __saved___temporal_t_e = __temporal_t_e
    /\ __temporal_t_f \in BOOLEAN
    /\ __saved___temporal_t_f = __temporal_t_f
    /\ __temporal_t_f_unroll = FALSE
    /\ __temporal_t_f_unroll_prev = FALSE
    /\ __temporal_t_e_unroll = TRUE
    /\ __temporal_t_e_unroll_prev = TRUE
    /\ __temporal_t_g \in BOOLEAN
    /\ __saved___temporal_t_g = __temporal_t_g
    /\ __temporal_t_h \in BOOLEAN
    /\ __saved___temporal_t_h = __temporal_t_h
    /\ __temporal_t_h_unroll = FALSE
    /\ __temporal_t_h_unroll_prev = FALSE
    /\ __temporal_t_g_unroll = TRUE
    /\ __temporal_t_g_unroll_prev = TRUE
    /\ __temporal_t_d = (__temporal_t_e \/ __temporal_t_g)
    /\ __temporal_t_i \in BOOLEAN
    /\ __saved___temporal_t_i = __temporal_t_i
    /\ __temporal_t_j \in BOOLEAN
    /\ __saved___temporal_t_j = __temporal_t_j
    /\ __temporal_t_k \in BOOLEAN
    /\ __saved___temporal_t_k = __temporal_t_k
    /\ __temporal_t_k_unroll = FALSE
    /\ __temporal_t_k_unroll_prev = FALSE
    /\ __temporal_t_j_unroll = TRUE
    /\ __temporal_t_j_unroll_prev = TRUE
    /\ __temporal_t_l \in BOOLEAN
    /\ __saved___temporal_t_l = __temporal_t_l
    /\ __temporal_t_m \in BOOLEAN
    /\ __saved___temporal_t_m = __temporal_t_m
    /\ __temporal_t_m_unroll = FALSE
    /\ __temporal_t_m_unroll_prev = FALSE
    /\ __temporal_t_l_unroll = TRUE
    /\ __temporal_t_l_unroll_prev = TRUE
    /\ __temporal_t_i = (__temporal_t_j \/ __temporal_t_l)
    /\ __temporal_t_2
      = (__temporal_t_3
        /\ __temporal_t_8
        /\ __temporal_t_d
        /\ __temporal_t_i)
    /\ __temporal_t_n \in BOOLEAN
    /\ __saved___temporal_t_n = __temporal_t_n
    /\ __temporal_t_o \in BOOLEAN
    /\ __saved___temporal_t_o = __temporal_t_o
    /\ __temporal_t_p \in BOOLEAN
    /\ __saved___temporal_t_p = __temporal_t_p
    /\ __temporal_t_p_unroll = FALSE
    /\ __temporal_t_p_unroll_prev = FALSE
    /\ __temporal_t_o_unroll = TRUE
    /\ __temporal_t_o_unroll_prev = TRUE
    /\ __temporal_t_q \in BOOLEAN
    /\ __saved___temporal_t_q = __temporal_t_q
    /\ __temporal_t_r \in BOOLEAN
    /\ __saved___temporal_t_r = __temporal_t_r
    /\ __temporal_t_r_unroll = FALSE
    /\ __temporal_t_r_unroll_prev = FALSE
    /\ __temporal_t_q_unroll = TRUE
    /\ __temporal_t_q_unroll_prev = TRUE
    /\ __temporal_t_s \in BOOLEAN
    /\ __saved___temporal_t_s = __temporal_t_s
    /\ __temporal_t_t \in BOOLEAN
    /\ __saved___temporal_t_t = __temporal_t_t
    /\ __temporal_t_t_unroll = FALSE
    /\ __temporal_t_t_unroll_prev = FALSE
    /\ __temporal_t_s_unroll = TRUE
    /\ __temporal_t_s_unroll_prev = TRUE
    /\ __temporal_t_u \in BOOLEAN
    /\ __saved___temporal_t_u = __temporal_t_u
    /\ __temporal_t_v \in BOOLEAN
    /\ __saved___temporal_t_v = __temporal_t_v
    /\ __temporal_t_v_unroll = FALSE
    /\ __temporal_t_v_unroll_prev = FALSE
    /\ __temporal_t_u_unroll = TRUE
    /\ __temporal_t_u_unroll_prev = TRUE
    /\ __temporal_t_n
      = (__temporal_t_o
        /\ __temporal_t_q
        /\ __temporal_t_s
        /\ __temporal_t_u)
    /\ __temporal_t_1 = (__temporal_t_2 => __temporal_t_n)
    /\ __Liveness_init = __temporal_t_1

(*
  @type: (() => Bool);
*)
Next ==
  ((\E p28 \in Producers:
        ~((Len(waitSeqP) >= 1 /\ p28 = waitSeqP[1])
            \/ (Len(waitSeqP) >= 2 /\ p28 = waitSeqP[2])
            \/ (Len(waitSeqP) >= 3 /\ p28 = waitSeqP[3]))
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, p28)
              /\ ((waitSeqC = <<>> /\ waitSeqC' = waitSeqC)
                \/ (waitSeqC /= <<>> /\ waitSeqC' = Tail(waitSeqC)))
              /\ waitSeqP' := waitSeqP)
            \/ (Len(buffer) = 3
              /\ waitSeqP' = Append(waitSeqP, p28)
              /\ buffer' := buffer
              /\ waitSeqC' := waitSeqC)))
      \/ (\E c28 \in Consumers:
        ~((Len(waitSeqC) >= 1 /\ c28 = waitSeqC[1])
            \/ (Len(waitSeqC) >= 2 /\ c28 = waitSeqC[2])
            \/ (Len(waitSeqC) >= 3 /\ c28 = waitSeqC[3]))
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ ((waitSeqP = <<>> /\ waitSeqP' = waitSeqP)
                \/ (waitSeqP /= <<>> /\ waitSeqP' = Tail(waitSeqP)))
              /\ waitSeqC' := waitSeqC)
            \/ (buffer = <<>>
              /\ waitSeqC' = Append(waitSeqC, c28)
              /\ buffer' := buffer
              /\ waitSeqP' := waitSeqP))))
    /\ __InLoop' \in BOOLEAN
    /\ (__InLoop => __InLoop')
    /\ (IF __InLoop = __InLoop'
    THEN UNCHANGED (<<__saved_waitSeqC, __saved_waitSeqP, __saved_buffer>>)
    ELSE __saved_waitSeqC' = waitSeqC
      /\ __saved_waitSeqP' = waitSeqP
      /\ __saved_buffer' = buffer)
    /\ __temporal_t_1' \in BOOLEAN
    /\ __saved___temporal_t_1'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_1 ELSE __temporal_t_1)
    /\ __temporal_t_2' \in BOOLEAN
    /\ __saved___temporal_t_2'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_2 ELSE __temporal_t_2)
    /\ __temporal_t_3' \in BOOLEAN
    /\ __saved___temporal_t_3'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_3 ELSE __temporal_t_3)
    /\ __temporal_t_4' \in BOOLEAN
    /\ __saved___temporal_t_4'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_4 ELSE __temporal_t_4)
    /\ __temporal_t_5' \in BOOLEAN
    /\ __saved___temporal_t_5'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_5 ELSE __temporal_t_5)
    /\ __temporal_t_5_unroll' \in BOOLEAN
    /\ (__temporal_t_5
      <=> ~((~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
            /\ ~(buffer = <<>>)
            /\ waitSeqP = <<>>
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
            /\ ~(buffer = <<>>)
            /\ ~(waitSeqP = <<>>)
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
            /\ buffer = <<>>
            /\ ~(vars'
              = vars)))
        \/ __temporal_t_5')
    /\ (__temporal_t_5_unroll
      <=> __temporal_t_5_unroll_prev
        \/ (__InLoop'
          /\ ~((~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
              /\ ~(buffer = <<>>)
              /\ waitSeqP = <<>>
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
              /\ ~(buffer = <<>>)
              /\ ~(waitSeqP = <<>>)
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
              /\ buffer = <<>>
              /\ ~(vars'
                = vars)))))
    /\ __temporal_t_5_unroll_prev' = __temporal_t_5_unroll
    /\ __temporal_t_4_unroll' \in BOOLEAN
    /\ (__temporal_t_4 <=> __temporal_t_5 /\ __temporal_t_4')
    /\ (__temporal_t_4_unroll
      <=> __temporal_t_4_unroll_prev /\ (~__InLoop' \/ __temporal_t_5))
    /\ __temporal_t_4_unroll_prev' = __temporal_t_4_unroll
    /\ __temporal_t_6' \in BOOLEAN
    /\ __saved___temporal_t_6'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_6 ELSE __temporal_t_6)
    /\ __temporal_t_7' \in BOOLEAN
    /\ __saved___temporal_t_7'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_7 ELSE __temporal_t_7)
    /\ __temporal_t_7_unroll' \in BOOLEAN
    /\ (__temporal_t_7
      <=> (~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
            \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
            \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ ((waitSeqP = <<>> /\ waitSeqP' = waitSeqP)
                \/ (waitSeqP /= <<>> /\ waitSeqP' = Tail(waitSeqP)))
              /\ waitSeqC' = waitSeqC)
            \/ (buffer = <<>>
              /\ waitSeqC' = Append(waitSeqC, "d")
              /\ buffer' = buffer
              /\ waitSeqP' = waitSeqP))
          /\ ~(vars' = vars))
        \/ __temporal_t_7')
    /\ (__temporal_t_7_unroll
      <=> __temporal_t_7_unroll_prev
        \/ (__InLoop'
          /\ ~((Len(waitSeqC) >= 1 /\ "d" = waitSeqC[1])
            \/ (Len(waitSeqC) >= 2 /\ "d" = waitSeqC[2])
            \/ (Len(waitSeqC) >= 3 /\ "d" = waitSeqC[3]))
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ ((waitSeqP = <<>> /\ waitSeqP' = waitSeqP)
                \/ (waitSeqP /= <<>> /\ waitSeqP' = Tail(waitSeqP)))
              /\ waitSeqC' = waitSeqC)
            \/ (buffer = <<>>
              /\ waitSeqC' = Append(waitSeqC, "d")
              /\ buffer' = buffer
              /\ waitSeqP' = waitSeqP))
          /\ ~(vars' = vars)))
    /\ __temporal_t_7_unroll_prev' = __temporal_t_7_unroll
    /\ __temporal_t_6_unroll' \in BOOLEAN
    /\ (__temporal_t_6 <=> __temporal_t_7 /\ __temporal_t_6')
    /\ (__temporal_t_6_unroll
      <=> __temporal_t_6_unroll_prev /\ (~__InLoop' \/ __temporal_t_7))
    /\ __temporal_t_6_unroll_prev' = __temporal_t_6_unroll
    /\ __temporal_t_3' = (__temporal_t_4 \/ __temporal_t_6)
    /\ __temporal_t_8' \in BOOLEAN
    /\ __saved___temporal_t_8'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_8 ELSE __temporal_t_8)
    /\ __temporal_t_9' \in BOOLEAN
    /\ __saved___temporal_t_9'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_9 ELSE __temporal_t_9)
    /\ __temporal_t_a' \in BOOLEAN
    /\ __saved___temporal_t_a'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_a ELSE __temporal_t_a)
    /\ __temporal_t_a_unroll' \in BOOLEAN
    /\ (__temporal_t_a
      <=> ~((~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
            /\ ~(buffer = <<>>)
            /\ waitSeqP = <<>>
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
            /\ ~(buffer = <<>>)
            /\ ~(waitSeqP = <<>>)
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
              \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
              \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
            /\ buffer = <<>>
            /\ ~(vars'
              = vars)))
        \/ __temporal_t_a')
    /\ (__temporal_t_a_unroll
      <=> __temporal_t_a_unroll_prev
        \/ (__InLoop'
          /\ ~((~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
              /\ ~(buffer = <<>>)
              /\ waitSeqP = <<>>
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
              /\ ~(buffer = <<>>)
              /\ ~(waitSeqP = <<>>)
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
                \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
                \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
              /\ buffer = <<>>
              /\ ~(vars'
                = vars)))))
    /\ __temporal_t_a_unroll_prev' = __temporal_t_a_unroll
    /\ __temporal_t_9_unroll' \in BOOLEAN
    /\ (__temporal_t_9 <=> __temporal_t_a /\ __temporal_t_9')
    /\ (__temporal_t_9_unroll
      <=> __temporal_t_9_unroll_prev /\ (~__InLoop' \/ __temporal_t_a))
    /\ __temporal_t_9_unroll_prev' = __temporal_t_9_unroll
    /\ __temporal_t_b' \in BOOLEAN
    /\ __saved___temporal_t_b'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_b ELSE __temporal_t_b)
    /\ __temporal_t_c' \in BOOLEAN
    /\ __saved___temporal_t_c'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_c ELSE __temporal_t_c)
    /\ __temporal_t_c_unroll' \in BOOLEAN
    /\ (__temporal_t_c
      <=> (~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
            \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
            \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ ((waitSeqP = <<>> /\ waitSeqP' = waitSeqP)
                \/ (waitSeqP /= <<>> /\ waitSeqP' = Tail(waitSeqP)))
              /\ waitSeqC' = waitSeqC)
            \/ (buffer = <<>>
              /\ waitSeqC' = Append(waitSeqC, "e")
              /\ buffer' = buffer
              /\ waitSeqP' = waitSeqP))
          /\ ~(vars' = vars))
        \/ __temporal_t_c')
    /\ (__temporal_t_c_unroll
      <=> __temporal_t_c_unroll_prev
        \/ (__InLoop'
          /\ ~((Len(waitSeqC) >= 1 /\ "e" = waitSeqC[1])
            \/ (Len(waitSeqC) >= 2 /\ "e" = waitSeqC[2])
            \/ (Len(waitSeqC) >= 3 /\ "e" = waitSeqC[3]))
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ ((waitSeqP = <<>> /\ waitSeqP' = waitSeqP)
                \/ (waitSeqP /= <<>> /\ waitSeqP' = Tail(waitSeqP)))
              /\ waitSeqC' = waitSeqC)
            \/ (buffer = <<>>
              /\ waitSeqC' = Append(waitSeqC, "e")
              /\ buffer' = buffer
              /\ waitSeqP' = waitSeqP))
          /\ ~(vars' = vars)))
    /\ __temporal_t_c_unroll_prev' = __temporal_t_c_unroll
    /\ __temporal_t_b_unroll' \in BOOLEAN
    /\ (__temporal_t_b <=> __temporal_t_c /\ __temporal_t_b')
    /\ (__temporal_t_b_unroll
      <=> __temporal_t_b_unroll_prev /\ (~__InLoop' \/ __temporal_t_c))
    /\ __temporal_t_b_unroll_prev' = __temporal_t_b_unroll
    /\ __temporal_t_8' = (__temporal_t_9 \/ __temporal_t_b)
    /\ __temporal_t_d' \in BOOLEAN
    /\ __saved___temporal_t_d'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_d ELSE __temporal_t_d)
    /\ __temporal_t_e' \in BOOLEAN
    /\ __saved___temporal_t_e'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_e ELSE __temporal_t_e)
    /\ __temporal_t_f' \in BOOLEAN
    /\ __saved___temporal_t_f'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_f ELSE __temporal_t_f)
    /\ __temporal_t_f_unroll' \in BOOLEAN
    /\ (__temporal_t_f
      <=> ~((~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
            /\ Len(buffer) < 3
            /\ waitSeqC = <<>>
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
            /\ Len(buffer) < 3
            /\ ~(waitSeqC = <<>>)
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
            /\ Len(buffer) = 3
            /\ ~(vars'
              = vars)))
        \/ __temporal_t_f')
    /\ (__temporal_t_f_unroll
      <=> __temporal_t_f_unroll_prev
        \/ (__InLoop'
          /\ ~((~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
              /\ Len(buffer) < 3
              /\ waitSeqC = <<>>
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
              /\ Len(buffer) < 3
              /\ ~(waitSeqC = <<>>)
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
              /\ Len(buffer) = 3
              /\ ~(vars'
                = vars)))))
    /\ __temporal_t_f_unroll_prev' = __temporal_t_f_unroll
    /\ __temporal_t_e_unroll' \in BOOLEAN
    /\ (__temporal_t_e <=> __temporal_t_f /\ __temporal_t_e')
    /\ (__temporal_t_e_unroll
      <=> __temporal_t_e_unroll_prev /\ (~__InLoop' \/ __temporal_t_f))
    /\ __temporal_t_e_unroll_prev' = __temporal_t_e_unroll
    /\ __temporal_t_g' \in BOOLEAN
    /\ __saved___temporal_t_g'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_g ELSE __temporal_t_g)
    /\ __temporal_t_h' \in BOOLEAN
    /\ __saved___temporal_t_h'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_h ELSE __temporal_t_h)
    /\ __temporal_t_h_unroll' \in BOOLEAN
    /\ (__temporal_t_h
      <=> (~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
            \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
            \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "a")
              /\ ((waitSeqC = <<>> /\ waitSeqC' = waitSeqC)
                \/ (waitSeqC /= <<>> /\ waitSeqC' = Tail(waitSeqC)))
              /\ waitSeqP' = waitSeqP)
            \/ (Len(buffer) = 3
              /\ waitSeqP' = Append(waitSeqP, "a")
              /\ buffer' = buffer
              /\ waitSeqC' = waitSeqC))
          /\ ~(vars' = vars))
        \/ __temporal_t_h')
    /\ (__temporal_t_h_unroll
      <=> __temporal_t_h_unroll_prev
        \/ (__InLoop'
          /\ ~((Len(waitSeqP) >= 1 /\ "a" = waitSeqP[1])
            \/ (Len(waitSeqP) >= 2 /\ "a" = waitSeqP[2])
            \/ (Len(waitSeqP) >= 3 /\ "a" = waitSeqP[3]))
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "a")
              /\ ((waitSeqC = <<>> /\ waitSeqC' = waitSeqC)
                \/ (waitSeqC /= <<>> /\ waitSeqC' = Tail(waitSeqC)))
              /\ waitSeqP' = waitSeqP)
            \/ (Len(buffer) = 3
              /\ waitSeqP' = Append(waitSeqP, "a")
              /\ buffer' = buffer
              /\ waitSeqC' = waitSeqC))
          /\ ~(vars' = vars)))
    /\ __temporal_t_h_unroll_prev' = __temporal_t_h_unroll
    /\ __temporal_t_g_unroll' \in BOOLEAN
    /\ (__temporal_t_g <=> __temporal_t_h /\ __temporal_t_g')
    /\ (__temporal_t_g_unroll
      <=> __temporal_t_g_unroll_prev /\ (~__InLoop' \/ __temporal_t_h))
    /\ __temporal_t_g_unroll_prev' = __temporal_t_g_unroll
    /\ __temporal_t_d' = (__temporal_t_e \/ __temporal_t_g)
    /\ __temporal_t_i' \in BOOLEAN
    /\ __saved___temporal_t_i'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_i ELSE __temporal_t_i)
    /\ __temporal_t_j' \in BOOLEAN
    /\ __saved___temporal_t_j'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_j ELSE __temporal_t_j)
    /\ __temporal_t_k' \in BOOLEAN
    /\ __saved___temporal_t_k'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_k ELSE __temporal_t_k)
    /\ __temporal_t_k_unroll' \in BOOLEAN
    /\ (__temporal_t_k
      <=> ~((~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
            /\ Len(buffer) < 3
            /\ waitSeqC = <<>>
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
            /\ Len(buffer) < 3
            /\ ~(waitSeqC = <<>>)
            /\ ~(vars'
              = vars))
          \/ (~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
              \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
              \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
            /\ Len(buffer) = 3
            /\ ~(vars'
              = vars)))
        \/ __temporal_t_k')
    /\ (__temporal_t_k_unroll
      <=> __temporal_t_k_unroll_prev
        \/ (__InLoop'
          /\ ~((~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
              /\ Len(buffer) < 3
              /\ waitSeqC = <<>>
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
              /\ Len(buffer) < 3
              /\ ~(waitSeqC = <<>>)
              /\ ~(vars'
                = vars))
            \/ (~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
                \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
                \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
              /\ Len(buffer) = 3
              /\ ~(vars'
                = vars)))))
    /\ __temporal_t_k_unroll_prev' = __temporal_t_k_unroll
    /\ __temporal_t_j_unroll' \in BOOLEAN
    /\ (__temporal_t_j <=> __temporal_t_k /\ __temporal_t_j')
    /\ (__temporal_t_j_unroll
      <=> __temporal_t_j_unroll_prev /\ (~__InLoop' \/ __temporal_t_k))
    /\ __temporal_t_j_unroll_prev' = __temporal_t_j_unroll
    /\ __temporal_t_l' \in BOOLEAN
    /\ __saved___temporal_t_l'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_l ELSE __temporal_t_l)
    /\ __temporal_t_m' \in BOOLEAN
    /\ __saved___temporal_t_m'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_m ELSE __temporal_t_m)
    /\ __temporal_t_m_unroll' \in BOOLEAN
    /\ (__temporal_t_m
      <=> (~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
            \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
            \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "b")
              /\ ((waitSeqC = <<>> /\ waitSeqC' = waitSeqC)
                \/ (waitSeqC /= <<>> /\ waitSeqC' = Tail(waitSeqC)))
              /\ waitSeqP' = waitSeqP)
            \/ (Len(buffer) = 3
              /\ waitSeqP' = Append(waitSeqP, "b")
              /\ buffer' = buffer
              /\ waitSeqC' = waitSeqC))
          /\ ~(vars' = vars))
        \/ __temporal_t_m')
    /\ (__temporal_t_m_unroll
      <=> __temporal_t_m_unroll_prev
        \/ (__InLoop'
          /\ ~((Len(waitSeqP) >= 1 /\ "b" = waitSeqP[1])
            \/ (Len(waitSeqP) >= 2 /\ "b" = waitSeqP[2])
            \/ (Len(waitSeqP) >= 3 /\ "b" = waitSeqP[3]))
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "b")
              /\ ((waitSeqC = <<>> /\ waitSeqC' = waitSeqC)
                \/ (waitSeqC /= <<>> /\ waitSeqC' = Tail(waitSeqC)))
              /\ waitSeqP' = waitSeqP)
            \/ (Len(buffer) = 3
              /\ waitSeqP' = Append(waitSeqP, "b")
              /\ buffer' = buffer
              /\ waitSeqC' = waitSeqC))
          /\ ~(vars' = vars)))
    /\ __temporal_t_m_unroll_prev' = __temporal_t_m_unroll
    /\ __temporal_t_l_unroll' \in BOOLEAN
    /\ (__temporal_t_l <=> __temporal_t_m /\ __temporal_t_l')
    /\ (__temporal_t_l_unroll
      <=> __temporal_t_l_unroll_prev /\ (~__InLoop' \/ __temporal_t_m))
    /\ __temporal_t_l_unroll_prev' = __temporal_t_l_unroll
    /\ __temporal_t_i' = (__temporal_t_j \/ __temporal_t_l)
    /\ __temporal_t_2'
      = (__temporal_t_3
        /\ __temporal_t_8
        /\ __temporal_t_d
        /\ __temporal_t_i)
    /\ __temporal_t_n' \in BOOLEAN
    /\ __saved___temporal_t_n'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_n ELSE __temporal_t_n)
    /\ __temporal_t_o' \in BOOLEAN
    /\ __saved___temporal_t_o'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_o ELSE __temporal_t_o)
    /\ __temporal_t_p' \in BOOLEAN
    /\ __saved___temporal_t_p'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_p ELSE __temporal_t_p)
    /\ __temporal_t_p_unroll' \in BOOLEAN
    /\ (__temporal_t_p
      <=> ("a"
            \notin {
              c467 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c467 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c467 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c467 = waitSeqC[3])
            }
              \union {
                p467 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p467 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p467 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p467 = waitSeqP[3])
              }
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "a")
              /\ (IF ({
                c468 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c468 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c468 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c468 = waitSeqC[3])
              }
                \union {
                  p468 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p468 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p468 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p468 = waitSeqP[3])
                })
                \intersect Consumers
                /= {}
              THEN \E t37 \in ({
                c469 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c469 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c469 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c469 = waitSeqC[3])
              }
                \union {
                  p469 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p469 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p469 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p469 = waitSeqP[3])
                })
                \intersect Consumers:
                ({
                  c470 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c470 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c470 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c470 = waitSeqC[3])
                }
                  \union {
                    p470 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p470 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p470 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p470 = waitSeqP[3])
                  })'
                  = ({
                    c471 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c471 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c471 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c471 = waitSeqC[3])
                  }
                    \union {
                      p471 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p471 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p471 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p471 = waitSeqP[3])
                    })
                    \ {t37}
              ELSE ({
                c472 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c472 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c472 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c472 = waitSeqC[3])
              }
                \union {
                  p472 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p472 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p472 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p472 = waitSeqP[3])
                })'
                = {
                  c473 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c473 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c473 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c473 = waitSeqC[3])
                }
                  \union {
                    p473 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p473 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p473 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p473 = waitSeqP[3])
                  }))
            \/ (Len(buffer) = 3
              /\ ({
                c474 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c474 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c474 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c474 = waitSeqC[3])
              }
                \union {
                  p474 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p474 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p474 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p474 = waitSeqP[3])
                })'
                = ({
                  c475 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c475 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c475 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c475 = waitSeqC[3])
                }
                  \union {
                    p475 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p475 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p475 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p475 = waitSeqP[3])
                  })
                  \union {"a"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c476 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c476 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c476 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c476 = waitSeqC[3])
            }
              \union {
                p476 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p476 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p476 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p476 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c477 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c477 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c477 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c477 = waitSeqC[3])
              }
                \union {
                  p477 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p477 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p477 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p477 = waitSeqP[3])
                })
            >>))
        \/ __temporal_t_p')
    /\ (__temporal_t_p_unroll
      <=> __temporal_t_p_unroll_prev
        \/ (__InLoop'
          /\ "a"
            \notin {
              c467 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c467 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c467 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c467 = waitSeqC[3])
            }
              \union {
                p467 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p467 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p467 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p467 = waitSeqP[3])
              }
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "a")
              /\ (IF ({
                c468 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c468 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c468 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c468 = waitSeqC[3])
              }
                \union {
                  p468 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p468 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p468 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p468 = waitSeqP[3])
                })
                \intersect Consumers
                /= {}
              THEN \E t37 \in ({
                c469 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c469 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c469 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c469 = waitSeqC[3])
              }
                \union {
                  p469 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p469 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p469 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p469 = waitSeqP[3])
                })
                \intersect Consumers:
                ({
                  c470 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c470 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c470 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c470 = waitSeqC[3])
                }
                  \union {
                    p470 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p470 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p470 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p470 = waitSeqP[3])
                  })'
                  = ({
                    c471 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c471 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c471 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c471 = waitSeqC[3])
                  }
                    \union {
                      p471 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p471 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p471 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p471 = waitSeqP[3])
                    })
                    \ {t37}
              ELSE ({
                c472 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c472 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c472 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c472 = waitSeqC[3])
              }
                \union {
                  p472 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p472 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p472 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p472 = waitSeqP[3])
                })'
                = {
                  c473 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c473 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c473 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c473 = waitSeqC[3])
                }
                  \union {
                    p473 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p473 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p473 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p473 = waitSeqP[3])
                  }))
            \/ (Len(buffer) = 3
              /\ ({
                c474 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c474 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c474 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c474 = waitSeqC[3])
              }
                \union {
                  p474 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p474 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p474 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p474 = waitSeqP[3])
                })'
                = ({
                  c475 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c475 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c475 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c475 = waitSeqC[3])
                }
                  \union {
                    p475 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p475 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p475 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p475 = waitSeqP[3])
                  })
                  \union {"a"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c476 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c476 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c476 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c476 = waitSeqC[3])
            }
              \union {
                p476 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p476 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p476 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p476 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c477 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c477 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c477 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c477 = waitSeqC[3])
              }
                \union {
                  p477 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p477 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p477 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p477 = waitSeqP[3])
                })
            >>)))
    /\ __temporal_t_p_unroll_prev' = __temporal_t_p_unroll
    /\ __temporal_t_o_unroll' \in BOOLEAN
    /\ (__temporal_t_o <=> __temporal_t_p /\ __temporal_t_o')
    /\ (__temporal_t_o_unroll
      <=> __temporal_t_o_unroll_prev /\ (~__InLoop' \/ __temporal_t_p))
    /\ __temporal_t_o_unroll_prev' = __temporal_t_o_unroll
    /\ __temporal_t_q' \in BOOLEAN
    /\ __saved___temporal_t_q'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_q ELSE __temporal_t_q)
    /\ __temporal_t_r' \in BOOLEAN
    /\ __saved___temporal_t_r'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_r ELSE __temporal_t_r)
    /\ __temporal_t_r_unroll' \in BOOLEAN
    /\ (__temporal_t_r
      <=> ("b"
            \notin {
              c478 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c478 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c478 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c478 = waitSeqC[3])
            }
              \union {
                p478 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p478 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p478 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p478 = waitSeqP[3])
              }
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "b")
              /\ (IF ({
                c479 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c479 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c479 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c479 = waitSeqC[3])
              }
                \union {
                  p479 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p479 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p479 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p479 = waitSeqP[3])
                })
                \intersect Consumers
                /= {}
              THEN \E t38 \in ({
                c480 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c480 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c480 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c480 = waitSeqC[3])
              }
                \union {
                  p480 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p480 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p480 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p480 = waitSeqP[3])
                })
                \intersect Consumers:
                ({
                  c481 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c481 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c481 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c481 = waitSeqC[3])
                }
                  \union {
                    p481 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p481 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p481 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p481 = waitSeqP[3])
                  })'
                  = ({
                    c482 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c482 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c482 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c482 = waitSeqC[3])
                  }
                    \union {
                      p482 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p482 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p482 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p482 = waitSeqP[3])
                    })
                    \ {t38}
              ELSE ({
                c483 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c483 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c483 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c483 = waitSeqC[3])
              }
                \union {
                  p483 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p483 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p483 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p483 = waitSeqP[3])
                })'
                = {
                  c484 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c484 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c484 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c484 = waitSeqC[3])
                }
                  \union {
                    p484 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p484 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p484 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p484 = waitSeqP[3])
                  }))
            \/ (Len(buffer) = 3
              /\ ({
                c485 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c485 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c485 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c485 = waitSeqC[3])
              }
                \union {
                  p485 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p485 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p485 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p485 = waitSeqP[3])
                })'
                = ({
                  c486 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c486 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c486 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c486 = waitSeqC[3])
                }
                  \union {
                    p486 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p486 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p486 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p486 = waitSeqP[3])
                  })
                  \union {"b"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c487 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c487 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c487 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c487 = waitSeqC[3])
            }
              \union {
                p487 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p487 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p487 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p487 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c488 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c488 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c488 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c488 = waitSeqC[3])
              }
                \union {
                  p488 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p488 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p488 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p488 = waitSeqP[3])
                })
            >>))
        \/ __temporal_t_r')
    /\ (__temporal_t_r_unroll
      <=> __temporal_t_r_unroll_prev
        \/ (__InLoop'
          /\ "b"
            \notin {
              c478 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c478 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c478 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c478 = waitSeqC[3])
            }
              \union {
                p478 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p478 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p478 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p478 = waitSeqP[3])
              }
          /\ ((Len(buffer) < 3
              /\ buffer' = Append(buffer, "b")
              /\ (IF ({
                c479 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c479 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c479 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c479 = waitSeqC[3])
              }
                \union {
                  p479 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p479 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p479 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p479 = waitSeqP[3])
                })
                \intersect Consumers
                /= {}
              THEN \E t38 \in ({
                c480 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c480 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c480 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c480 = waitSeqC[3])
              }
                \union {
                  p480 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p480 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p480 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p480 = waitSeqP[3])
                })
                \intersect Consumers:
                ({
                  c481 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c481 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c481 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c481 = waitSeqC[3])
                }
                  \union {
                    p481 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p481 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p481 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p481 = waitSeqP[3])
                  })'
                  = ({
                    c482 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c482 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c482 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c482 = waitSeqC[3])
                  }
                    \union {
                      p482 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p482 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p482 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p482 = waitSeqP[3])
                    })
                    \ {t38}
              ELSE ({
                c483 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c483 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c483 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c483 = waitSeqC[3])
              }
                \union {
                  p483 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p483 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p483 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p483 = waitSeqP[3])
                })'
                = {
                  c484 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c484 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c484 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c484 = waitSeqC[3])
                }
                  \union {
                    p484 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p484 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p484 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p484 = waitSeqP[3])
                  }))
            \/ (Len(buffer) = 3
              /\ ({
                c485 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c485 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c485 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c485 = waitSeqC[3])
              }
                \union {
                  p485 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p485 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p485 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p485 = waitSeqP[3])
                })'
                = ({
                  c486 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c486 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c486 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c486 = waitSeqC[3])
                }
                  \union {
                    p486 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p486 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p486 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p486 = waitSeqP[3])
                  })
                  \union {"b"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c487 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c487 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c487 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c487 = waitSeqC[3])
            }
              \union {
                p487 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p487 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p487 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p487 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c488 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c488 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c488 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c488 = waitSeqC[3])
              }
                \union {
                  p488 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p488 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p488 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p488 = waitSeqP[3])
                })
            >>)))
    /\ __temporal_t_r_unroll_prev' = __temporal_t_r_unroll
    /\ __temporal_t_q_unroll' \in BOOLEAN
    /\ (__temporal_t_q <=> __temporal_t_r /\ __temporal_t_q')
    /\ (__temporal_t_q_unroll
      <=> __temporal_t_q_unroll_prev /\ (~__InLoop' \/ __temporal_t_r))
    /\ __temporal_t_q_unroll_prev' = __temporal_t_q_unroll
    /\ __temporal_t_s' \in BOOLEAN
    /\ __saved___temporal_t_s'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_s ELSE __temporal_t_s)
    /\ __temporal_t_t' \in BOOLEAN
    /\ __saved___temporal_t_t'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_t ELSE __temporal_t_t)
    /\ __temporal_t_t_unroll' \in BOOLEAN
    /\ (__temporal_t_t
      <=> ("d"
            \notin {
              c489 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c489 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c489 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c489 = waitSeqC[3])
            }
              \union {
                p489 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p489 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p489 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p489 = waitSeqP[3])
              }
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ (IF ({
                c490 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c490 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c490 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c490 = waitSeqC[3])
              }
                \union {
                  p490 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p490 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p490 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p490 = waitSeqP[3])
                })
                \intersect Producers
                /= {}
              THEN \E t39 \in ({
                c491 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c491 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c491 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c491 = waitSeqC[3])
              }
                \union {
                  p491 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p491 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p491 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p491 = waitSeqP[3])
                })
                \intersect Producers:
                ({
                  c492 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c492 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c492 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c492 = waitSeqC[3])
                }
                  \union {
                    p492 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p492 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p492 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p492 = waitSeqP[3])
                  })'
                  = ({
                    c493 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c493 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c493 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c493 = waitSeqC[3])
                  }
                    \union {
                      p493 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p493 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p493 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p493 = waitSeqP[3])
                    })
                    \ {t39}
              ELSE ({
                c494 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c494 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c494 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c494 = waitSeqC[3])
              }
                \union {
                  p494 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p494 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p494 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p494 = waitSeqP[3])
                })'
                = {
                  c495 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c495 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c495 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c495 = waitSeqC[3])
                }
                  \union {
                    p495 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p495 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p495 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p495 = waitSeqP[3])
                  }))
            \/ (buffer = <<>>
              /\ ({
                c496 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c496 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c496 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c496 = waitSeqC[3])
              }
                \union {
                  p496 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p496 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p496 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p496 = waitSeqP[3])
                })'
                = ({
                  c497 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c497 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c497 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c497 = waitSeqC[3])
                }
                  \union {
                    p497 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p497 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p497 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p497 = waitSeqP[3])
                  })
                  \union {"d"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c498 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c498 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c498 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c498 = waitSeqC[3])
            }
              \union {
                p498 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p498 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p498 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p498 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c499 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c499 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c499 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c499 = waitSeqC[3])
              }
                \union {
                  p499 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p499 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p499 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p499 = waitSeqP[3])
                })
            >>))
        \/ __temporal_t_t')
    /\ (__temporal_t_t_unroll
      <=> __temporal_t_t_unroll_prev
        \/ (__InLoop'
          /\ "d"
            \notin {
              c489 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c489 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c489 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c489 = waitSeqC[3])
            }
              \union {
                p489 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p489 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p489 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p489 = waitSeqP[3])
              }
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ (IF ({
                c490 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c490 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c490 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c490 = waitSeqC[3])
              }
                \union {
                  p490 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p490 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p490 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p490 = waitSeqP[3])
                })
                \intersect Producers
                /= {}
              THEN \E t39 \in ({
                c491 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c491 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c491 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c491 = waitSeqC[3])
              }
                \union {
                  p491 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p491 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p491 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p491 = waitSeqP[3])
                })
                \intersect Producers:
                ({
                  c492 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c492 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c492 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c492 = waitSeqC[3])
                }
                  \union {
                    p492 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p492 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p492 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p492 = waitSeqP[3])
                  })'
                  = ({
                    c493 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c493 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c493 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c493 = waitSeqC[3])
                  }
                    \union {
                      p493 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p493 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p493 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p493 = waitSeqP[3])
                    })
                    \ {t39}
              ELSE ({
                c494 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c494 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c494 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c494 = waitSeqC[3])
              }
                \union {
                  p494 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p494 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p494 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p494 = waitSeqP[3])
                })'
                = {
                  c495 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c495 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c495 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c495 = waitSeqC[3])
                }
                  \union {
                    p495 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p495 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p495 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p495 = waitSeqP[3])
                  }))
            \/ (buffer = <<>>
              /\ ({
                c496 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c496 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c496 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c496 = waitSeqC[3])
              }
                \union {
                  p496 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p496 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p496 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p496 = waitSeqP[3])
                })'
                = ({
                  c497 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c497 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c497 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c497 = waitSeqC[3])
                }
                  \union {
                    p497 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p497 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p497 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p497 = waitSeqP[3])
                  })
                  \union {"d"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c498 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c498 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c498 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c498 = waitSeqC[3])
            }
              \union {
                p498 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p498 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p498 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p498 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c499 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c499 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c499 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c499 = waitSeqC[3])
              }
                \union {
                  p499 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p499 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p499 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p499 = waitSeqP[3])
                })
            >>)))
    /\ __temporal_t_t_unroll_prev' = __temporal_t_t_unroll
    /\ __temporal_t_s_unroll' \in BOOLEAN
    /\ (__temporal_t_s <=> __temporal_t_t /\ __temporal_t_s')
    /\ (__temporal_t_s_unroll
      <=> __temporal_t_s_unroll_prev /\ (~__InLoop' \/ __temporal_t_t))
    /\ __temporal_t_s_unroll_prev' = __temporal_t_s_unroll
    /\ __temporal_t_u' \in BOOLEAN
    /\ __saved___temporal_t_u'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_u ELSE __temporal_t_u)
    /\ __temporal_t_v' \in BOOLEAN
    /\ __saved___temporal_t_v'
      = (IF __InLoop = __InLoop' THEN __saved___temporal_t_v ELSE __temporal_t_v)
    /\ __temporal_t_v_unroll' \in BOOLEAN
    /\ (__temporal_t_v
      <=> ("e"
            \notin {
              c500 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c500 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c500 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c500 = waitSeqC[3])
            }
              \union {
                p500 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p500 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p500 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p500 = waitSeqP[3])
              }
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ (IF ({
                c501 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c501 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c501 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c501 = waitSeqC[3])
              }
                \union {
                  p501 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p501 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p501 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p501 = waitSeqP[3])
                })
                \intersect Producers
                /= {}
              THEN \E t40 \in ({
                c502 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c502 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c502 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c502 = waitSeqC[3])
              }
                \union {
                  p502 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p502 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p502 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p502 = waitSeqP[3])
                })
                \intersect Producers:
                ({
                  c503 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c503 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c503 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c503 = waitSeqC[3])
                }
                  \union {
                    p503 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p503 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p503 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p503 = waitSeqP[3])
                  })'
                  = ({
                    c504 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c504 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c504 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c504 = waitSeqC[3])
                  }
                    \union {
                      p504 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p504 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p504 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p504 = waitSeqP[3])
                    })
                    \ {t40}
              ELSE ({
                c505 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c505 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c505 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c505 = waitSeqC[3])
              }
                \union {
                  p505 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p505 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p505 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p505 = waitSeqP[3])
                })'
                = {
                  c506 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c506 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c506 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c506 = waitSeqC[3])
                }
                  \union {
                    p506 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p506 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p506 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p506 = waitSeqP[3])
                  }))
            \/ (buffer = <<>>
              /\ ({
                c507 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c507 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c507 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c507 = waitSeqC[3])
              }
                \union {
                  p507 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p507 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p507 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p507 = waitSeqP[3])
                })'
                = ({
                  c508 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c508 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c508 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c508 = waitSeqC[3])
                }
                  \union {
                    p508 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p508 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p508 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p508 = waitSeqP[3])
                  })
                  \union {"e"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c509 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c509 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c509 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c509 = waitSeqC[3])
            }
              \union {
                p509 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p509 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p509 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p509 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c510 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c510 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c510 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c510 = waitSeqC[3])
              }
                \union {
                  p510 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p510 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p510 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p510 = waitSeqP[3])
                })
            >>))
        \/ __temporal_t_v')
    /\ (__temporal_t_v_unroll
      <=> __temporal_t_v_unroll_prev
        \/ (__InLoop'
          /\ "e"
            \notin {
              c500 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c500 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c500 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c500 = waitSeqC[3])
            }
              \union {
                p500 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p500 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p500 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p500 = waitSeqP[3])
              }
          /\ ((buffer /= <<>>
              /\ buffer' = Tail(buffer)
              /\ (IF ({
                c501 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c501 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c501 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c501 = waitSeqC[3])
              }
                \union {
                  p501 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p501 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p501 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p501 = waitSeqP[3])
                })
                \intersect Producers
                /= {}
              THEN \E t40 \in ({
                c502 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c502 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c502 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c502 = waitSeqC[3])
              }
                \union {
                  p502 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p502 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p502 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p502 = waitSeqP[3])
                })
                \intersect Producers:
                ({
                  c503 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c503 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c503 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c503 = waitSeqC[3])
                }
                  \union {
                    p503 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p503 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p503 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p503 = waitSeqP[3])
                  })'
                  = ({
                    c504 \in Consumers:
                      (Len(waitSeqC) >= 1 /\ c504 = waitSeqC[1])
                        \/ (Len(waitSeqC) >= 2 /\ c504 = waitSeqC[2])
                        \/ (Len(waitSeqC) >= 3 /\ c504 = waitSeqC[3])
                  }
                    \union {
                      p504 \in Producers:
                        (Len(waitSeqP) >= 1 /\ p504 = waitSeqP[1])
                          \/ (Len(waitSeqP) >= 2 /\ p504 = waitSeqP[2])
                          \/ (Len(waitSeqP) >= 3 /\ p504 = waitSeqP[3])
                    })
                    \ {t40}
              ELSE ({
                c505 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c505 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c505 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c505 = waitSeqC[3])
              }
                \union {
                  p505 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p505 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p505 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p505 = waitSeqP[3])
                })'
                = {
                  c506 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c506 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c506 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c506 = waitSeqC[3])
                }
                  \union {
                    p506 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p506 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p506 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p506 = waitSeqP[3])
                  }))
            \/ (buffer = <<>>
              /\ ({
                c507 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c507 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c507 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c507 = waitSeqC[3])
              }
                \union {
                  p507 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p507 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p507 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p507 = waitSeqP[3])
                })'
                = ({
                  c508 \in Consumers:
                    (Len(waitSeqC) >= 1 /\ c508 = waitSeqC[1])
                      \/ (Len(waitSeqC) >= 2 /\ c508 = waitSeqC[2])
                      \/ (Len(waitSeqC) >= 3 /\ c508 = waitSeqC[3])
                }
                  \union {
                    p508 \in Producers:
                      (Len(waitSeqP) >= 1 /\ p508 = waitSeqP[1])
                        \/ (Len(waitSeqP) >= 2 /\ p508 = waitSeqP[2])
                        \/ (Len(waitSeqP) >= 3 /\ p508 = waitSeqP[3])
                  })
                  \union {"e"}
              /\ buffer' = buffer))
          /\ ~(<<
            buffer, ({
              c509 \in Consumers:
                (Len(waitSeqC) >= 1 /\ c509 = waitSeqC[1])
                  \/ (Len(waitSeqC) >= 2 /\ c509 = waitSeqC[2])
                  \/ (Len(waitSeqC) >= 3 /\ c509 = waitSeqC[3])
            }
              \union {
                p509 \in Producers:
                  (Len(waitSeqP) >= 1 /\ p509 = waitSeqP[1])
                    \/ (Len(waitSeqP) >= 2 /\ p509 = waitSeqP[2])
                    \/ (Len(waitSeqP) >= 3 /\ p509 = waitSeqP[3])
              })
          >>'
            = <<
              buffer, ({
                c510 \in Consumers:
                  (Len(waitSeqC) >= 1 /\ c510 = waitSeqC[1])
                    \/ (Len(waitSeqC) >= 2 /\ c510 = waitSeqC[2])
                    \/ (Len(waitSeqC) >= 3 /\ c510 = waitSeqC[3])
              }
                \union {
                  p510 \in Producers:
                    (Len(waitSeqP) >= 1 /\ p510 = waitSeqP[1])
                      \/ (Len(waitSeqP) >= 2 /\ p510 = waitSeqP[2])
                      \/ (Len(waitSeqP) >= 3 /\ p510 = waitSeqP[3])
                })
            >>)))
    /\ __temporal_t_v_unroll_prev' = __temporal_t_v_unroll
    /\ __temporal_t_u_unroll' \in BOOLEAN
    /\ (__temporal_t_u <=> __temporal_t_v /\ __temporal_t_u')
    /\ (__temporal_t_u_unroll
      <=> __temporal_t_u_unroll_prev /\ (~__InLoop' \/ __temporal_t_v))
    /\ __temporal_t_u_unroll_prev' = __temporal_t_u_unroll
    /\ __temporal_t_n'
      = (__temporal_t_o
        /\ __temporal_t_q
        /\ __temporal_t_s
        /\ __temporal_t_u)
    /\ __temporal_t_1' = (__temporal_t_2 => __temporal_t_n)
    /\ UNCHANGED __Liveness_init

(*
  @type: (() => Bool);
*)
__LoopOK ==
  __InLoop
    /\ waitSeqC = __saved_waitSeqC
    /\ waitSeqP = __saved_waitSeqP
    /\ buffer = __saved_buffer
    /\ __temporal_t_1 = __saved___temporal_t_1
    /\ __temporal_t_2 = __saved___temporal_t_2
    /\ __temporal_t_3 = __saved___temporal_t_3
    /\ __temporal_t_4 = __saved___temporal_t_4
    /\ __temporal_t_5 = __saved___temporal_t_5
    /\ (__temporal_t_5 => __temporal_t_5_unroll)
    /\ __temporal_t_5_unroll_prev = __temporal_t_5_unroll
    /\ (__temporal_t_4_unroll => __temporal_t_4)
    /\ __temporal_t_4_unroll_prev = __temporal_t_4_unroll
    /\ __temporal_t_6 = __saved___temporal_t_6
    /\ __temporal_t_7 = __saved___temporal_t_7
    /\ (__temporal_t_7 => __temporal_t_7_unroll)
    /\ __temporal_t_7_unroll_prev = __temporal_t_7_unroll
    /\ (__temporal_t_6_unroll => __temporal_t_6)
    /\ __temporal_t_6_unroll_prev = __temporal_t_6_unroll
    /\ __temporal_t_8 = __saved___temporal_t_8
    /\ __temporal_t_9 = __saved___temporal_t_9
    /\ __temporal_t_a = __saved___temporal_t_a
    /\ (__temporal_t_a => __temporal_t_a_unroll)
    /\ __temporal_t_a_unroll_prev = __temporal_t_a_unroll
    /\ (__temporal_t_9_unroll => __temporal_t_9)
    /\ __temporal_t_9_unroll_prev = __temporal_t_9_unroll
    /\ __temporal_t_b = __saved___temporal_t_b
    /\ __temporal_t_c = __saved___temporal_t_c
    /\ (__temporal_t_c => __temporal_t_c_unroll)
    /\ __temporal_t_c_unroll_prev = __temporal_t_c_unroll
    /\ (__temporal_t_b_unroll => __temporal_t_b)
    /\ __temporal_t_b_unroll_prev = __temporal_t_b_unroll
    /\ __temporal_t_d = __saved___temporal_t_d
    /\ __temporal_t_e = __saved___temporal_t_e
    /\ __temporal_t_f = __saved___temporal_t_f
    /\ (__temporal_t_f => __temporal_t_f_unroll)
    /\ __temporal_t_f_unroll_prev = __temporal_t_f_unroll
    /\ (__temporal_t_e_unroll => __temporal_t_e)
    /\ __temporal_t_e_unroll_prev = __temporal_t_e_unroll
    /\ __temporal_t_g = __saved___temporal_t_g
    /\ __temporal_t_h = __saved___temporal_t_h
    /\ (__temporal_t_h => __temporal_t_h_unroll)
    /\ __temporal_t_h_unroll_prev = __temporal_t_h_unroll
    /\ (__temporal_t_g_unroll => __temporal_t_g)
    /\ __temporal_t_g_unroll_prev = __temporal_t_g_unroll
    /\ __temporal_t_i = __saved___temporal_t_i
    /\ __temporal_t_j = __saved___temporal_t_j
    /\ __temporal_t_k = __saved___temporal_t_k
    /\ (__temporal_t_k => __temporal_t_k_unroll)
    /\ __temporal_t_k_unroll_prev = __temporal_t_k_unroll
    /\ (__temporal_t_j_unroll => __temporal_t_j)
    /\ __temporal_t_j_unroll_prev = __temporal_t_j_unroll
    /\ __temporal_t_l = __saved___temporal_t_l
    /\ __temporal_t_m = __saved___temporal_t_m
    /\ (__temporal_t_m => __temporal_t_m_unroll)
    /\ __temporal_t_m_unroll_prev = __temporal_t_m_unroll
    /\ (__temporal_t_l_unroll => __temporal_t_l)
    /\ __temporal_t_l_unroll_prev = __temporal_t_l_unroll
    /\ __temporal_t_n = __saved___temporal_t_n
    /\ __temporal_t_o = __saved___temporal_t_o
    /\ __temporal_t_p = __saved___temporal_t_p
    /\ (__temporal_t_p => __temporal_t_p_unroll)
    /\ __temporal_t_p_unroll_prev = __temporal_t_p_unroll
    /\ (__temporal_t_o_unroll => __temporal_t_o)
    /\ __temporal_t_o_unroll_prev = __temporal_t_o_unroll
    /\ __temporal_t_q = __saved___temporal_t_q
    /\ __temporal_t_r = __saved___temporal_t_r
    /\ (__temporal_t_r => __temporal_t_r_unroll)
    /\ __temporal_t_r_unroll_prev = __temporal_t_r_unroll
    /\ (__temporal_t_q_unroll => __temporal_t_q)
    /\ __temporal_t_q_unroll_prev = __temporal_t_q_unroll
    /\ __temporal_t_s = __saved___temporal_t_s
    /\ __temporal_t_t = __saved___temporal_t_t
    /\ (__temporal_t_t => __temporal_t_t_unroll)
    /\ __temporal_t_t_unroll_prev = __temporal_t_t_unroll
    /\ (__temporal_t_s_unroll => __temporal_t_s)
    /\ __temporal_t_s_unroll_prev = __temporal_t_s_unroll
    /\ __temporal_t_u = __saved___temporal_t_u
    /\ __temporal_t_v = __saved___temporal_t_v
    /\ (__temporal_t_v => __temporal_t_v_unroll)
    /\ __temporal_t_v_unroll_prev = __temporal_t_v_unroll
    /\ (__temporal_t_u_unroll => __temporal_t_u)
    /\ __temporal_t_u_unroll_prev = __temporal_t_u_unroll

(*
  @type: (() => Bool);
*)
Liveness == __LoopOK => __Liveness_init

================================================================================
