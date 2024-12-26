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
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@24 (T@U T@U T@U) Bool)
(declare-fun $generated@@25 (T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@T T@T) T@T)
(declare-fun $generated@@34 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T) T@T)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@60 () T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@63 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@66 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@T T@U) T@U)
(declare-fun $generated@@80 () Int)
(declare-fun $generated@@81 (T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@88 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (= ($generated@@5 $generated@@28) 3) (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@30 $generated@@37 $generated@@38 ($generated@@34 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@41) $generated@@39)
 :weight 0
))) (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (or (= $generated@@46 $generated@@47) (= ($generated@@30 $generated@@42 $generated@@43 ($generated@@34 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@47) ($generated@@30 $generated@@42 $generated@@43 $generated@@45 $generated@@47)))
 :weight 0
))) (= ($generated@@5 $generated@@31) 4)) (= ($generated@@5 $generated@@32) 5)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (= ($generated@@5 ($generated@@33 $generated@@48 $generated@@49)) 6))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@35 ($generated@@33 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@33 $generated@@50 $generated@@51))
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (! (= ($generated@@36 ($generated@@33 $generated@@52 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@33 $generated@@52 $generated@@53))
))))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (and (and (and ($generated@@25 $generated@@55) ($generated@@25 $generated@@56)) (and (or (not (= $generated@@57 $generated@@26)) (not true)) ($generated@@27 $generated@@28 $generated@@57 $generated@@29))) (and ($generated@@22 $generated@@55) ($generated@@23 $generated@@55 $generated@@56))) (=> (forall (($generated@@58 T@U) ($generated@@59 T@U) )  (=> (and (or (not (= $generated@@58 $generated@@26)) (not true)) (= $generated@@58 $generated@@57)) (= ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@55 $generated@@58) $generated@@59) ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@56 $generated@@58) $generated@@59)))) (= ($generated@@24 $generated@@54 $generated@@55 $generated@@57) ($generated@@24 $generated@@54 $generated@@56 $generated@@57))))
 :pattern ( ($generated@@22 $generated@@55) ($generated@@23 $generated@@55 $generated@@56) ($generated@@24 $generated@@54 $generated@@56 $generated@@57))
)))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@62 $generated@@60)  (or (= $generated@@62 $generated@@26) (= ($generated@@61 $generated@@62) $generated@@60)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@62 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@63 $generated@@28 $generated@@64 $generated@@29 $generated@@65) ($generated@@63 $generated@@28 $generated@@64 $generated@@60 $generated@@65))
 :pattern ( ($generated@@63 $generated@@28 $generated@@64 $generated@@29 $generated@@65))
 :pattern ( ($generated@@63 $generated@@28 $generated@@64 $generated@@60 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@63 $generated@@28 $generated@@67 $generated@@60 $generated@@68)  (or (= $generated@@67 $generated@@26) ($generated@@10 ($generated@@66 $generated@@6 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@68 $generated@@67) $generated@@1)))))
 :pattern ( ($generated@@63 $generated@@28 $generated@@67 $generated@@60 $generated@@68))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> ($generated@@23 $generated@@69 $generated@@70) (forall (($generated@@71 T@U) ) (!  (=> ($generated@@10 ($generated@@66 $generated@@6 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@69 $generated@@71) $generated@@1))) ($generated@@10 ($generated@@66 $generated@@6 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@70 $generated@@71) $generated@@1))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@70 $generated@@71) $generated@@1))
)))
 :pattern ( ($generated@@23 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@72 $generated@@74 ($generated@@66 $generated@@74 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@66 $generated@@74 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@T) ) (!  (=> ($generated@@23 $generated@@75 $generated@@76) (=> ($generated@@63 $generated@@79 $generated@@77 $generated@@78 $generated@@75) ($generated@@63 $generated@@79 $generated@@77 $generated@@78 $generated@@76)))
 :pattern ( ($generated@@23 $generated@@75 $generated@@76) ($generated@@63 $generated@@79 $generated@@77 $generated@@78 $generated@@75))
)))
(assert  (=> (<= 0 $generated@@80) (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (or ($generated@@81 $generated@@82 $generated@@83 $generated@@84) (and (< 0 $generated@@80) (and (and (and ($generated@@25 $generated@@82) ($generated@@25 $generated@@83)) ($generated@@23 $generated@@82 $generated@@83)) (and (or (not (= $generated@@84 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@84 $generated@@29) ($generated@@63 $generated@@28 $generated@@84 $generated@@29 $generated@@82)))))) (= ($generated@@24 $generated@@82 $generated@@83 $generated@@84) (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> (or (not (= $generated@@85 $generated@@26)) (not true)) (=> (= $generated@@85 $generated@@84) (= ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@83 $generated@@85) $generated@@86) ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@82 $generated@@85) $generated@@86))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@83 $generated@@85) $generated@@86))
))))
 :pattern ( ($generated@@24 $generated@@82 $generated@@83 $generated@@84) ($generated@@25 $generated@@83))
))))
(assert  (and (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@87 $generated@@90 $generated@@91 $generated@@92 ($generated@@89 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96 $generated@@93) $generated@@95 $generated@@96) $generated@@93)
 :weight 0
)) (and (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (or (= $generated@@102 $generated@@104) (= ($generated@@87 $generated@@97 $generated@@98 $generated@@99 ($generated@@89 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@103 $generated@@100) $generated@@104 $generated@@105) ($generated@@87 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@104 $generated@@105)))
 :weight 0
)) (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (or (= $generated@@112 $generated@@114) (= ($generated@@87 $generated@@106 $generated@@107 $generated@@108 ($generated@@89 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@111 $generated@@112 $generated@@109) $generated@@113 $generated@@114) ($generated@@87 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@113 $generated@@114)))
 :weight 0
)))))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@10 ($generated@@87 $generated@@28 $generated@@31 $generated@@6 ($generated@@88 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))  (=> (and (or (not (= $generated@@119 $generated@@115)) (not true)) ($generated@@10 ($generated@@66 $generated@@6 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@116 $generated@@119) $generated@@117)))) (= $generated@@119 $generated@@118)))
 :pattern ( ($generated@@87 $generated@@28 $generated@@31 $generated@@6 ($generated@@88 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@121 $generated@@29)  (and ($generated@@27 $generated@@28 $generated@@121 $generated@@60) (or (not (= $generated@@121 $generated@@26)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@121 $generated@@29))
 :pattern ( ($generated@@27 $generated@@28 $generated@@121 $generated@@60))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or (not (= $generated@@122 $generated@@124)) (not true)) (=> (and ($generated@@23 $generated@@122 $generated@@123) ($generated@@23 $generated@@123 $generated@@124)) ($generated@@23 $generated@@122 $generated@@124)))
 :pattern ( ($generated@@23 $generated@@122 $generated@@123) ($generated@@23 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@66 $generated@@126 ($generated@@72 $generated@@126 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@72 $generated@@126 $generated@@125))
)))
(assert (= ($generated@@21 $generated@@60) $generated@@2))
(assert (= ($generated@@127 $generated@@60) $generated@@4))
(assert (= ($generated@@21 $generated@@29) $generated@@3))
(assert (= ($generated@@127 $generated@@29) $generated@@4))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! ($generated@@63 $generated@@6 $generated@@129 $generated $generated@@128)
 :pattern ( ($generated@@63 $generated@@6 $generated@@129 $generated $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ) (! ($generated@@27 $generated@@6 $generated@@130 $generated)
 :pattern ( ($generated@@27 $generated@@6 $generated@@130 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@131 () T@U)
(declare-fun $generated@@132 () T@U)
(declare-fun $generated@@133 () Bool)
(declare-fun $generated@@134 () T@U)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@137  (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@63 $generated@@28 $generated@@131 $generated@@29 $generated@@132)) (=> ($generated@@63 $generated@@28 $generated@@131 $generated@@29 $generated@@132) (=> (and (and (= $generated@@133 (forall (($generated@@138 T@U) ($generated@@139 T@U) )  (=> (and (and (or (not (= $generated@@138 $generated@@26)) (not true)) ($generated@@10 ($generated@@66 $generated@@6 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@134 $generated@@138) $generated@@1)))) (= $generated@@138 $generated@@131)) ($generated@@10 ($generated@@87 $generated@@28 $generated@@31 $generated@@6 $generated@@135 $generated@@138 $generated@@139))))) (= ($generated@@24 $generated@@132 $generated@@134 $generated@@131) (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> (or (not (= $generated@@140 $generated@@26)) (not true)) (=> (= $generated@@140 $generated@@131) (= ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@134 $generated@@140) $generated@@141) ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@132 $generated@@140) $generated@@141))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@28 ($generated@@33 $generated@@31 $generated@@32) $generated@@134 $generated@@140) $generated@@141))
)))) (and ($generated@@27 $generated@@6 ($generated@@9 ($generated@@24 $generated@@132 $generated@@134 $generated@@131)) $generated) (= (ControlFlow 0 3) (- 0 2)))) $generated@@133)))))
(let (($generated@@142 true))
(let (($generated@@143  (=> (= $generated@@135 ($generated@@88 $generated@@26 $generated@@134 $generated@@1 $generated@@131)) (and (=> (= (ControlFlow 0 5) 1) $generated@@142) (=> (= (ControlFlow 0 5) 3) $generated@@137)))))
(let (($generated@@144  (=> (and ($generated@@25 $generated@@132) ($generated@@22 $generated@@132)) (=> (and (and (and (or (not (= $generated@@131 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@131 $generated@@29) ($generated@@63 $generated@@28 $generated@@131 $generated@@29 $generated@@136))) (= 0 $generated@@80)) (and (and (= $generated@@136 $generated@@132) (and ($generated@@23 $generated@@136 $generated@@134) ($generated@@25 $generated@@134))) (= (ControlFlow 0 6) 5))) $generated@@143))))
$generated@@144)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)