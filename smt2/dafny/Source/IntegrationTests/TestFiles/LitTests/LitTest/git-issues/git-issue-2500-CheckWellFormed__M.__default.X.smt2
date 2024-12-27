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
(declare-fun $generated@@5 () T@U)
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U T@U T@U) Bool)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@28 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@36 () Int)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 (T@T T@T) T@T)
(declare-fun $generated@@47 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@100 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@137 (T@U) Bool)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@140 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (!  (=> (and ($generated@@22 $generated@@26 $generated@@23 $generated@@27) ($generated@@24 $generated@@27)) ($generated@@22 $generated@@26 $generated@@25 $generated@@27))
 :pattern ( ($generated@@22 $generated@@26 $generated@@23 $generated@@27))
)))
(assert (= ($generated@@6 $generated@@29) 3))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32) ($generated@@28 $generated@@29 $generated@@31 $generated@@25 $generated@@32))
 :pattern ( ($generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32))
 :pattern ( ($generated@@28 $generated@@29 $generated@@31 $generated@@25 $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@34 $generated@@33 $generated@@35) ($generated@@28 $generated@@29 $generated@@34 $generated@@23 $generated@@35))
 :pattern ( ($generated@@28 $generated@@29 $generated@@34 $generated@@33 $generated@@35))
 :pattern ( ($generated@@28 $generated@@29 $generated@@34 $generated@@23 $generated@@35))
)))
(assert  (=> (<= 0 $generated@@36) (forall (($generated@@41 T@U) ) (!  (=> (or ($generated@@38 $generated@@41) (and (< 0 $generated@@36) (and (or (not (= $generated@@41 $generated@@39)) (not true)) ($generated@@40 $generated@@29 $generated@@41 $generated@@30)))) ($generated@@37 $generated@@41))
 :pattern ( ($generated@@37 $generated@@41))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@43 $generated@@50 $generated@@51 ($generated@@47 $generated@@50 $generated@@51 $generated@@53 $generated@@54 $generated@@52) $generated@@54) $generated@@52)
 :weight 0
)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (or (= $generated@@59 $generated@@60) (= ($generated@@43 $generated@@55 $generated@@56 ($generated@@47 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@60) ($generated@@43 $generated@@55 $generated@@56 $generated@@58 $generated@@60)))
 :weight 0
))) (= ($generated@@6 $generated@@44) 4)) (= ($generated@@6 $generated@@45) 5)) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (= ($generated@@6 ($generated@@46 $generated@@61 $generated@@62)) 6))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@48 ($generated@@46 $generated@@63 $generated@@64)) $generated@@63)
 :pattern ( ($generated@@46 $generated@@63 $generated@@64))
))) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (! (= ($generated@@49 ($generated@@46 $generated@@65 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@46 $generated@@65 $generated@@66))
))))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@67 $generated@@25 $generated@@68)  (or (= $generated@@67 $generated@@39) ($generated@@11 ($generated@@42 $generated@@7 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@68 $generated@@67) $generated)))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@67 $generated@@25 $generated@@68))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@69 $generated@@23 $generated@@70)  (or (= $generated@@69 $generated@@39) ($generated@@11 ($generated@@42 $generated@@7 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@70 $generated@@69) $generated)))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@69 $generated@@23 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@71 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@11 ($generated@@42 $generated@@7 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@72 $generated@@74) $generated))) ($generated@@11 ($generated@@42 $generated@@7 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@73 $generated@@74) $generated))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@73 $generated@@74) $generated))
)))
 :pattern ( ($generated@@71 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 ($generated@@42 $generated@@77 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@42 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@22 ($generated@@75 $generated@@81 $generated@@78) $generated@@79 $generated@@80) ($generated@@28 $generated@@81 $generated@@78 $generated@@79 $generated@@80))
 :pattern ( ($generated@@22 ($generated@@75 $generated@@81 $generated@@78) $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@71 $generated@@82 $generated@@83) (=> ($generated@@22 $generated@@84 $generated@@85 $generated@@82) ($generated@@22 $generated@@84 $generated@@85 $generated@@83)))
 :pattern ( ($generated@@71 $generated@@82 $generated@@83) ($generated@@22 $generated@@84 $generated@@85 $generated@@82))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@T) ) (!  (=> ($generated@@71 $generated@@86 $generated@@87) (=> ($generated@@28 $generated@@90 $generated@@88 $generated@@89 $generated@@86) ($generated@@28 $generated@@90 $generated@@88 $generated@@89 $generated@@87)))
 :pattern ( ($generated@@71 $generated@@86 $generated@@87) ($generated@@28 $generated@@90 $generated@@88 $generated@@89 $generated@@86))
)))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@40 $generated@@29 $generated@@91 $generated@@30)  (and ($generated@@40 $generated@@29 $generated@@91 $generated@@25) (or (not (= $generated@@91 $generated@@39)) (not true))))
 :pattern ( ($generated@@40 $generated@@29 $generated@@91 $generated@@30))
 :pattern ( ($generated@@40 $generated@@29 $generated@@91 $generated@@25))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@40 $generated@@29 $generated@@92 $generated@@33)  (and ($generated@@40 $generated@@29 $generated@@92 $generated@@23) (or (not (= $generated@@92 $generated@@39)) (not true))))
 :pattern ( ($generated@@40 $generated@@29 $generated@@92 $generated@@33))
 :pattern ( ($generated@@40 $generated@@29 $generated@@92 $generated@@23))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> ($generated@@28 $generated@@29 $generated@@93 $generated@@23 $generated@@94) ($generated@@28 $generated@@29 $generated@@93 $generated@@25 $generated@@94))
 :pattern ( ($generated@@28 $generated@@29 $generated@@93 $generated@@23 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (or (not (= $generated@@95 $generated@@97)) (not true)) (=> (and ($generated@@71 $generated@@95 $generated@@96) ($generated@@71 $generated@@96 $generated@@97)) ($generated@@71 $generated@@95 $generated@@97)))
 :pattern ( ($generated@@71 $generated@@95 $generated@@96) ($generated@@71 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@42 $generated@@99 ($generated@@75 $generated@@99 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@75 $generated@@99 $generated@@98))
)))
(assert  (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@100 $generated@@103 $generated@@104 $generated@@105 ($generated@@102 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@100 $generated@@110 $generated@@111 $generated@@112 ($generated@@102 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@100 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@100 $generated@@119 $generated@@120 $generated@@121 ($generated@@102 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@100 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 Bool) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@11 ($generated@@100 $generated@@29 $generated@@44 $generated@@7 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))  (=> (and (or (not (= $generated@@132 $generated@@128)) (not true)) ($generated@@11 ($generated@@42 $generated@@7 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@29 ($generated@@46 $generated@@44 $generated@@45) $generated@@129 $generated@@132) $generated@@130)))) $generated@@131))
 :pattern ( ($generated@@100 $generated@@29 $generated@@44 $generated@@7 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@40 $generated@@29 $generated@@134 $generated@@23) ($generated@@40 $generated@@29 $generated@@134 $generated@@25))
 :pattern ( ($generated@@40 $generated@@29 $generated@@134 $generated@@23))
)))
(assert (= ($generated@@135 $generated@@33) $generated@@0))
(assert (= ($generated@@136 $generated@@33) $generated@@4))
(assert (= ($generated@@135 $generated@@25) $generated@@1))
(assert (= ($generated@@136 $generated@@25) $generated@@5))
(assert (= ($generated@@135 $generated@@30) $generated@@2))
(assert (= ($generated@@136 $generated@@30) $generated@@5))
(assert (= ($generated@@135 $generated@@23) $generated@@3))
(assert (= ($generated@@136 $generated@@23) $generated@@4))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@40 $generated@@29 $generated@@139 $generated@@25)  (or (= $generated@@139 $generated@@39) ($generated@@137 ($generated@@138 $generated@@139))))
 :pattern ( ($generated@@40 $generated@@29 $generated@@139 $generated@@25))
)))
(assert (forall (($generated@@141 T@U) ) (! (= ($generated@@40 $generated@@29 $generated@@141 $generated@@23)  (or (= $generated@@141 $generated@@39) ($generated@@140 ($generated@@138 $generated@@141))))
 :pattern ( ($generated@@40 $generated@@29 $generated@@141 $generated@@23))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@146  (=> (and (= $generated@@142 ($generated@@101 $generated@@39 $generated@@143 $generated false)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= $generated@@144 $generated@@39)) (not true)))))
(let (($generated@@147  (=> (and ($generated@@24 $generated@@143) ($generated@@145 $generated@@143)) (=> (and (and ($generated@@40 $generated@@29 $generated@@144 $generated@@33) ($generated@@28 $generated@@29 $generated@@144 $generated@@33 $generated@@143)) (and (= 1 $generated@@36) (= (ControlFlow 0 3) 2))) $generated@@146))))
$generated@@147)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)