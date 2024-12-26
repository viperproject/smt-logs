(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun $generated () T@U)
(declare-fun $generated@@0 () T@U)
(declare-fun $generated@@1 () T@U)
(declare-fun $generated@@2 () T@U)
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@20 () T@T)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@T T@T) T@T)
(declare-fun $generated@@31 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@32 (T@T) T@T)
(declare-fun $generated@@33 (T@T) T@T)
(declare-fun $generated@@53 (Int) Int)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@61 (T@U T@U T@U) Bool)
(declare-fun $generated@@66 (T@T T@U T@U) Bool)
(declare-fun $generated@@70 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@72 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@106 (T@U) Bool)
(declare-fun $generated@@107 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (= ($generated@@3 $generated@@20) 3))
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@23 $generated@@21 $generated@@24) ($generated@@19 $generated@@20 $generated@@23 $generated@@22 $generated@@24))
 :pattern ( ($generated@@19 $generated@@20 $generated@@23 $generated@@21 $generated@@24))
 :pattern ( ($generated@@19 $generated@@20 $generated@@23 $generated@@22 $generated@@24))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@34 T@T) ($generated@@35 T@T) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@27 $generated@@34 $generated@@35 ($generated@@31 $generated@@34 $generated@@35 $generated@@37 $generated@@38 $generated@@36) $generated@@38) $generated@@36)
 :weight 0
)) (forall (($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (!  (or (= $generated@@43 $generated@@44) (= ($generated@@27 $generated@@39 $generated@@40 ($generated@@31 $generated@@39 $generated@@40 $generated@@42 $generated@@43 $generated@@41) $generated@@44) ($generated@@27 $generated@@39 $generated@@40 $generated@@42 $generated@@44)))
 :weight 0
))) (= ($generated@@3 $generated@@28) 4)) (= ($generated@@3 $generated@@29) 5)) (forall (($generated@@45 T@T) ($generated@@46 T@T) ) (= ($generated@@3 ($generated@@30 $generated@@45 $generated@@46)) 6))) (forall (($generated@@47 T@T) ($generated@@48 T@T) ) (! (= ($generated@@32 ($generated@@30 $generated@@47 $generated@@48)) $generated@@47)
 :pattern ( ($generated@@30 $generated@@47 $generated@@48))
))) (forall (($generated@@49 T@T) ($generated@@50 T@T) ) (! (= ($generated@@33 ($generated@@30 $generated@@49 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@30 $generated@@49 $generated@@50))
))))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@51 $generated@@22 $generated@@52)  (or (= $generated@@51 $generated@@25) ($generated@@8 ($generated@@26 $generated@@4 ($generated@@27 $generated@@28 $generated@@29 ($generated@@27 $generated@@20 ($generated@@30 $generated@@28 $generated@@29) $generated@@52 $generated@@51) $generated)))))
 :pattern ( ($generated@@19 $generated@@20 $generated@@51 $generated@@22 $generated@@52))
)))
(assert (forall (($generated@@54 Int) ) (! (= ($generated@@53 $generated@@54) $generated@@54)
 :pattern ( ($generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 $generated@@56) $generated@@56)
 :pattern ( ($generated@@55 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@58 $generated@@60 ($generated@@26 $generated@@60 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@26 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@61 ($generated@@58 $generated@@65 $generated@@62) $generated@@63 $generated@@64) ($generated@@19 $generated@@65 $generated@@62 $generated@@63 $generated@@64))
 :pattern ( ($generated@@61 ($generated@@58 $generated@@65 $generated@@62) $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@66 $generated@@20 $generated@@67 $generated@@21)  (and ($generated@@66 $generated@@20 $generated@@67 $generated@@22) (or (not (= $generated@@67 $generated@@25)) (not true))))
 :pattern ( ($generated@@66 $generated@@20 $generated@@67 $generated@@21))
 :pattern ( ($generated@@66 $generated@@20 $generated@@67 $generated@@22))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@T) ) (! (= ($generated@@26 $generated@@69 ($generated@@58 $generated@@69 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@58 $generated@@69 $generated@@68))
)))
(assert  (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@70 $generated@@73 $generated@@74 $generated@@75 ($generated@@72 $generated@@73 $generated@@74 $generated@@75 $generated@@77 $generated@@78 $generated@@79 $generated@@76) $generated@@78 $generated@@79) $generated@@76)
 :weight 0
)) (and (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (or (= $generated@@85 $generated@@87) (= ($generated@@70 $generated@@80 $generated@@81 $generated@@82 ($generated@@72 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@85 $generated@@86 $generated@@83) $generated@@87 $generated@@88) ($generated@@70 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@87 $generated@@88)))
 :weight 0
)) (forall (($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (or (= $generated@@95 $generated@@97) (= ($generated@@70 $generated@@89 $generated@@90 $generated@@91 ($generated@@72 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@95 $generated@@92) $generated@@96 $generated@@97) ($generated@@70 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@96 $generated@@97)))
 :weight 0
)))))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 Bool) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@8 ($generated@@70 $generated@@20 $generated@@28 $generated@@4 ($generated@@71 $generated@@98 $generated@@99 $generated@@100 $generated@@101) $generated@@102 $generated@@103))  (=> (and (or (not (= $generated@@102 $generated@@98)) (not true)) ($generated@@8 ($generated@@26 $generated@@4 ($generated@@27 $generated@@28 $generated@@29 ($generated@@27 $generated@@20 ($generated@@30 $generated@@28 $generated@@29) $generated@@99 $generated@@102) $generated@@100)))) $generated@@101))
 :pattern ( ($generated@@70 $generated@@20 $generated@@28 $generated@@4 ($generated@@71 $generated@@98 $generated@@99 $generated@@100 $generated@@101) $generated@@102 $generated@@103))
)))
(assert (= ($generated@@104 $generated@@22) $generated@@0))
(assert (= ($generated@@105 $generated@@22) $generated@@2))
(assert (= ($generated@@104 $generated@@21) $generated@@1))
(assert (= ($generated@@105 $generated@@21) $generated@@2))
(assert (forall (($generated@@108 T@U) ) (! (= ($generated@@66 $generated@@20 $generated@@108 $generated@@22)  (or (= $generated@@108 $generated@@25) ($generated@@106 ($generated@@107 $generated@@108))))
 :pattern ( ($generated@@66 $generated@@20 $generated@@108 $generated@@22))
)))
(assert (forall (($generated@@109 Int) ) (! (= ($generated@@58 $generated@@5 ($generated@@9 ($generated@@53 $generated@@109))) ($generated@@55 $generated@@29 ($generated@@58 $generated@@5 ($generated@@9 $generated@@109))))
 :pattern ( ($generated@@58 $generated@@5 ($generated@@9 ($generated@@53 $generated@@109))))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@T) ) (! (= ($generated@@58 $generated@@111 ($generated@@55 $generated@@111 $generated@@110)) ($generated@@55 $generated@@29 ($generated@@58 $generated@@111 $generated@@110)))
 :pattern ( ($generated@@58 $generated@@111 ($generated@@55 $generated@@111 $generated@@110)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)