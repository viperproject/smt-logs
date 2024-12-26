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
(declare-fun $generated@@3 () T@U)
(declare-fun $generated@@4 () T@U)
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@U) Bool)
(declare-fun $generated@@23 (T@T T@U T@U) Bool)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@28 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@T T@T) T@T)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T) T@T)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@57 (Int) Int)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@67 (Int) T@U)
(declare-fun $generated@@70 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@U) Int)
(declare-fun $generated@@85 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@86 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@87 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@U) Bool)
(declare-fun $generated@@124 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (= ($generated@@5 $generated@@24) 3))
(assert (forall (($generated@@26 T@U) ) (!  (=> ($generated@@23 $generated@@24 $generated@@26 $generated@@25) ($generated@@22 $generated@@26))
 :pattern ( ($generated@@22 $generated@@26) ($generated@@23 $generated@@24 $generated@@26 $generated@@25))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@28 $generated@@37 $generated@@38 ($generated@@34 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@41) $generated@@39)
 :weight 0
)) (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (or (= $generated@@46 $generated@@47) (= ($generated@@28 $generated@@42 $generated@@43 ($generated@@34 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@47) ($generated@@28 $generated@@42 $generated@@43 $generated@@45 $generated@@47)))
 :weight 0
))) (= ($generated@@5 $generated@@29) 4)) (= ($generated@@5 $generated@@30) 5)) (= ($generated@@5 $generated@@31) 6)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (= ($generated@@5 ($generated@@32 $generated@@48 $generated@@49)) 7))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@35 ($generated@@32 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@32 $generated@@50 $generated@@51))
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (! (= ($generated@@36 ($generated@@32 $generated@@52 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@32 $generated@@52 $generated@@53))
))))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> ($generated@@27 $generated@@54 $generated@@55) (forall (($generated@@56 T@U) ) (!  (=> ($generated@@10 ($generated@@33 $generated@@6 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@31 ($generated@@32 $generated@@29 $generated@@30) $generated@@54 $generated@@56) $generated@@1))) ($generated@@10 ($generated@@33 $generated@@6 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@31 ($generated@@32 $generated@@29 $generated@@30) $generated@@55 $generated@@56) $generated@@1))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@31 ($generated@@32 $generated@@29 $generated@@30) $generated@@55 $generated@@56) $generated@@1))
)))
 :pattern ( ($generated@@27 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@58 Int) ) (! (= ($generated@@57 $generated@@58) $generated@@58)
 :pattern ( ($generated@@57 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@59 $generated@@61 $generated@@60) $generated@@60)
 :pattern ( ($generated@@59 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@63 T@U) ) (! (= ($generated@@22 $generated@@63) (= ($generated@@62 $generated@@63) $generated@@3))
 :pattern ( ($generated@@22 $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@64 $generated@@66 ($generated@@33 $generated@@66 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@33 $generated@@66 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ) (!  (=> ($generated@@22 $generated@@68) (exists (($generated@@69 Int) ) (= $generated@@68 ($generated@@67 $generated@@69))))
 :pattern ( ($generated@@22 $generated@@68))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (!  (=> ($generated@@27 $generated@@71 $generated@@72) (=> ($generated@@70 $generated@@75 $generated@@73 $generated@@74 $generated@@71) ($generated@@70 $generated@@75 $generated@@73 $generated@@74 $generated@@72)))
 :pattern ( ($generated@@27 $generated@@71 $generated@@72) ($generated@@70 $generated@@75 $generated@@73 $generated@@74 $generated@@71))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> (or (not (= $generated@@76 $generated@@78)) (not true)) (=> (and ($generated@@27 $generated@@76 $generated@@77) ($generated@@27 $generated@@77 $generated@@78)) ($generated@@27 $generated@@76 $generated@@78)))
 :pattern ( ($generated@@27 $generated@@76 $generated@@77) ($generated@@27 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@79 Int) ) (! (= ($generated@@62 ($generated@@67 $generated@@79)) $generated@@3)
 :pattern ( ($generated@@67 $generated@@79))
)))
(assert (forall (($generated@@81 Int) ) (! (= ($generated@@80 ($generated@@67 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@67 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@33 $generated@@83 ($generated@@64 $generated@@83 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@64 $generated@@83 $generated@@82))
)))
(assert (forall (($generated@@84 Int) ) (! (= ($generated@@23 $generated@@24 ($generated@@67 $generated@@84) $generated@@25) ($generated@@23 $generated@@7 ($generated@@11 $generated@@84) $generated))
 :pattern ( ($generated@@23 $generated@@24 ($generated@@67 $generated@@84) $generated@@25))
)))
(assert  (and (forall (($generated@@88 T@T) ($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@85 $generated@@88 $generated@@89 $generated@@90 ($generated@@87 $generated@@88 $generated@@89 $generated@@90 $generated@@92 $generated@@93 $generated@@94 $generated@@91) $generated@@93 $generated@@94) $generated@@91)
 :weight 0
)) (and (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (or (= $generated@@100 $generated@@102) (= ($generated@@85 $generated@@95 $generated@@96 $generated@@97 ($generated@@87 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@101 $generated@@98) $generated@@102 $generated@@103) ($generated@@85 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@102 $generated@@103)))
 :weight 0
)) (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@85 $generated@@104 $generated@@105 $generated@@106 ($generated@@87 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@85 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)))))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 Bool) ($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@10 ($generated@@85 $generated@@31 $generated@@29 $generated@@6 ($generated@@86 $generated@@113 $generated@@114 $generated@@115 $generated@@116) $generated@@117 $generated@@118))  (=> (and (or (not (= $generated@@117 $generated@@113)) (not true)) ($generated@@10 ($generated@@33 $generated@@6 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@31 ($generated@@32 $generated@@29 $generated@@30) $generated@@114 $generated@@117) $generated@@115)))) $generated@@116))
 :pattern ( ($generated@@85 $generated@@31 $generated@@29 $generated@@6 ($generated@@86 $generated@@113 $generated@@114 $generated@@115 $generated@@116) $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> (and ($generated@@119 $generated@@121) (and ($generated@@22 $generated@@120) ($generated@@70 $generated@@24 $generated@@120 $generated@@25 $generated@@121))) ($generated@@70 $generated@@7 ($generated@@11 ($generated@@80 $generated@@120)) $generated $generated@@121))
 :pattern ( ($generated@@70 $generated@@7 ($generated@@11 ($generated@@80 $generated@@120)) $generated $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (and ($generated@@119 $generated@@123) ($generated@@23 $generated@@24 $generated@@122 $generated@@25)) ($generated@@70 $generated@@24 $generated@@122 $generated@@25 $generated@@123))
 :pattern ( ($generated@@70 $generated@@24 $generated@@122 $generated@@25 $generated@@123))
)))
(assert (= ($generated@@21 $generated@@25) $generated@@2))
(assert (= ($generated@@124 $generated@@25) $generated@@4))
(assert (forall (($generated@@125 Int) ) (! (= ($generated@@64 $generated@@7 ($generated@@11 ($generated@@57 $generated@@125))) ($generated@@59 $generated@@30 ($generated@@64 $generated@@7 ($generated@@11 $generated@@125))))
 :pattern ( ($generated@@64 $generated@@7 ($generated@@11 ($generated@@57 $generated@@125))))
)))
(assert (forall (($generated@@126 Int) ) (! (= ($generated@@67 ($generated@@57 $generated@@126)) ($generated@@59 $generated@@24 ($generated@@67 $generated@@126)))
 :pattern ( ($generated@@67 ($generated@@57 $generated@@126)))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@64 $generated@@128 ($generated@@59 $generated@@128 $generated@@127)) ($generated@@59 $generated@@30 ($generated@@64 $generated@@128 $generated@@127)))
 :pattern ( ($generated@@64 $generated@@128 ($generated@@59 $generated@@128 $generated@@127)))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! ($generated@@70 $generated@@7 $generated@@130 $generated $generated@@129)
 :pattern ( ($generated@@70 $generated@@7 $generated@@130 $generated $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ) (! ($generated@@23 $generated@@7 $generated@@131 $generated)
 :pattern ( ($generated@@23 $generated@@7 $generated@@131 $generated))
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid