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
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@T T@T) T@T)
(declare-fun $generated@@32 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T) T@T)
(declare-fun $generated@@34 (T@T) T@T)
(declare-fun $generated@@55 (T@U T@U) Bool)
(declare-fun $generated@@59 () Int)
(declare-fun $generated@@60 (T@U T@U) T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@U) Bool)
(declare-fun $generated@@69 (T@U T@U T@U) Bool)
(declare-fun $generated@@73 (T@T T@U T@U) Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ($generated@@25 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@24 ($generated@@21 $generated@@23) $generated@@25) ($generated@@19 $generated@@20 $generated@@24 ($generated@@22 $generated@@23) $generated@@25))
 :pattern ( ($generated@@19 $generated@@20 $generated@@24 ($generated@@21 $generated@@23) $generated@@25))
 :pattern ( ($generated@@19 $generated@@20 $generated@@24 ($generated@@22 $generated@@23) $generated@@25))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@35 T@T) ($generated@@36 T@T) ($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@28 $generated@@35 $generated@@36 ($generated@@32 $generated@@35 $generated@@36 $generated@@38 $generated@@39 $generated@@37) $generated@@39) $generated@@37)
 :weight 0
)) (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (or (= $generated@@44 $generated@@45) (= ($generated@@28 $generated@@40 $generated@@41 ($generated@@32 $generated@@40 $generated@@41 $generated@@43 $generated@@44 $generated@@42) $generated@@45) ($generated@@28 $generated@@40 $generated@@41 $generated@@43 $generated@@45)))
 :weight 0
))) (= ($generated@@3 $generated@@29) 4)) (= ($generated@@3 $generated@@30) 5)) (forall (($generated@@46 T@T) ($generated@@47 T@T) ) (= ($generated@@3 ($generated@@31 $generated@@46 $generated@@47)) 6))) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (! (= ($generated@@33 ($generated@@31 $generated@@48 $generated@@49)) $generated@@48)
 :pattern ( ($generated@@31 $generated@@48 $generated@@49))
))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@34 ($generated@@31 $generated@@50 $generated@@51)) $generated@@51)
 :pattern ( ($generated@@31 $generated@@50 $generated@@51))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@53 ($generated@@22 $generated@@52) $generated@@54)  (or (= $generated@@53 $generated@@26) ($generated@@8 ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@54 $generated@@53) $generated)))))
 :pattern ( ($generated@@19 $generated@@20 $generated@@53 ($generated@@22 $generated@@52) $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> ($generated@@55 $generated@@56 $generated@@57) (forall (($generated@@58 T@U) ) (!  (=> ($generated@@8 ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@56 $generated@@58) $generated))) ($generated@@8 ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@57 $generated@@58) $generated))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@57 $generated@@58) $generated))
)))
 :pattern ( ($generated@@55 $generated@@56 $generated@@57))
)))
(assert  (=> (< 0 $generated@@59) (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (and (or (not (= $generated@@64 $generated@@26)) (not true)) (= ($generated@@61 $generated@@64) ($generated@@22 $generated@@63))) ($generated@@62 ($generated@@60 $generated@@63 $generated@@64) $generated@@63))
 :pattern ( ($generated@@60 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@27 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@27 $generated@@67 $generated@@66))
)))
(assert  (=> (< 0 $generated@@59) (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (!  (=> (and (and ($generated@@68 $generated@@71) (and (or (not (= $generated@@72 $generated@@26)) (not true)) (= ($generated@@61 $generated@@72) ($generated@@22 $generated@@70)))) ($generated@@8 ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@71 $generated@@72) $generated)))) ($generated@@69 ($generated@@60 $generated@@70 $generated@@72) $generated@@70 $generated@@71))
 :pattern ( ($generated@@60 $generated@@70 $generated@@72) ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@71 $generated@@72) $generated)))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@73 $generated@@20 $generated@@75 ($generated@@21 $generated@@74))  (and ($generated@@73 $generated@@20 $generated@@75 ($generated@@22 $generated@@74)) (or (not (= $generated@@75 $generated@@26)) (not true))))
 :pattern ( ($generated@@73 $generated@@20 $generated@@75 ($generated@@21 $generated@@74)))
 :pattern ( ($generated@@73 $generated@@20 $generated@@75 ($generated@@22 $generated@@74)))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@69 ($generated@@65 $generated@@79 $generated@@76) $generated@@77 $generated@@78) ($generated@@19 $generated@@79 $generated@@76 $generated@@77 $generated@@78))
 :pattern ( ($generated@@69 ($generated@@65 $generated@@79 $generated@@76) $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> ($generated@@55 $generated@@80 $generated@@81) (=> ($generated@@69 $generated@@82 $generated@@83 $generated@@80) ($generated@@69 $generated@@82 $generated@@83 $generated@@81)))
 :pattern ( ($generated@@55 $generated@@80 $generated@@81) ($generated@@69 $generated@@82 $generated@@83 $generated@@80))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@T) ) (!  (=> ($generated@@55 $generated@@84 $generated@@85) (=> ($generated@@19 $generated@@88 $generated@@86 $generated@@87 $generated@@84) ($generated@@19 $generated@@88 $generated@@86 $generated@@87 $generated@@85)))
 :pattern ( ($generated@@55 $generated@@84 $generated@@85) ($generated@@19 $generated@@88 $generated@@86 $generated@@87 $generated@@84))
)))
(assert (forall (($generated@@91 T@U) ) (!  (and (= ($generated@@89 ($generated@@21 $generated@@91)) $generated@@0) (= ($generated@@90 ($generated@@21 $generated@@91)) $generated@@2))
 :pattern ( ($generated@@21 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ) (!  (and (= ($generated@@89 ($generated@@22 $generated@@92)) $generated@@1) (= ($generated@@90 ($generated@@22 $generated@@92)) $generated@@2))
 :pattern ( ($generated@@22 $generated@@92))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@73 $generated@@20 $generated@@94 ($generated@@22 $generated@@93))  (or (= $generated@@94 $generated@@26) (= ($generated@@61 $generated@@94) ($generated@@22 $generated@@93))))
 :pattern ( ($generated@@73 $generated@@20 $generated@@94 ($generated@@22 $generated@@93)))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (or (not (= $generated@@95 $generated@@97)) (not true)) (=> (and ($generated@@55 $generated@@95 $generated@@96) ($generated@@55 $generated@@96 $generated@@97)) ($generated@@55 $generated@@95 $generated@@97)))
 :pattern ( ($generated@@55 $generated@@95 $generated@@96) ($generated@@55 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@62 ($generated@@65 $generated@@100 $generated@@98) $generated@@99) ($generated@@73 $generated@@100 $generated@@98 $generated@@99))
 :pattern ( ($generated@@62 ($generated@@65 $generated@@100 $generated@@98) $generated@@99))
)))
(assert (forall (($generated@@102 T@U) ) (! (= ($generated@@101 ($generated@@21 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@21 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@103 ($generated@@22 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@22 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@27 $generated@@106 ($generated@@65 $generated@@106 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@65 $generated@@106 $generated@@105))
)))
(assert  (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@107 $generated@@110 $generated@@111 $generated@@112 ($generated@@109 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@107 $generated@@117 $generated@@118 $generated@@119 ($generated@@109 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@107 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@107 $generated@@126 $generated@@127 $generated@@128 ($generated@@109 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@107 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 Bool) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@8 ($generated@@107 $generated@@20 $generated@@29 $generated@@4 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))  (=> (and (or (not (= $generated@@139 $generated@@135)) (not true)) ($generated@@8 ($generated@@27 $generated@@4 ($generated@@28 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@136 $generated@@139) $generated@@137)))) $generated@@138))
 :pattern ( ($generated@@107 $generated@@20 $generated@@29 $generated@@4 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> ($generated@@62 $generated@@142 ($generated@@21 $generated@@141)) (and (= ($generated@@65 $generated@@20 ($generated@@27 $generated@@20 $generated@@142)) $generated@@142) ($generated@@73 $generated@@20 ($generated@@27 $generated@@20 $generated@@142) ($generated@@21 $generated@@141))))
 :pattern ( ($generated@@62 $generated@@142 ($generated@@21 $generated@@141)))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@62 $generated@@144 ($generated@@22 $generated@@143)) (and (= ($generated@@65 $generated@@20 ($generated@@27 $generated@@20 $generated@@144)) $generated@@144) ($generated@@73 $generated@@20 ($generated@@27 $generated@@20 $generated@@144) ($generated@@22 $generated@@143))))
 :pattern ( ($generated@@62 $generated@@144 ($generated@@22 $generated@@143)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@68 ($generated@@32 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146 ($generated@@32 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146) $generated@@147 $generated@@148))) ($generated@@55 $generated@@145 ($generated@@32 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146 ($generated@@32 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146) $generated@@147 $generated@@148))))
 :pattern ( ($generated@@32 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146 ($generated@@32 $generated@@29 $generated@@30 ($generated@@28 $generated@@20 ($generated@@31 $generated@@29 $generated@@30) $generated@@145 $generated@@146) $generated@@147 $generated@@148)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 (T@U) Bool)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@154  (=> (and (= $generated@@149 ($generated@@108 $generated@@26 $generated@@150 $generated false)) (= (ControlFlow 0 2) (- 0 1))) true)))
(let (($generated@@155  (=> (and ($generated@@68 $generated@@150) ($generated@@151 $generated@@150)) (=> (and (and ($generated@@62 $generated@@152 $generated@@153) ($generated@@69 $generated@@152 $generated@@153 $generated@@150)) (and (= 1 $generated@@59) (= (ControlFlow 0 3) 2))) $generated@@154))))
$generated@@155)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)