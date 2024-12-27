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
(declare-fun $generated@@2 (T@T) Int)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 (Bool) T@U)
(declare-fun $generated@@7 (T@U) Bool)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun $generated@@9 (T@U) Int)
(declare-fun $generated@@10 (Real) T@U)
(declare-fun $generated@@11 (T@U) Real)
(declare-fun $generated@@18 (T@U) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 () T@U)
(declare-fun $generated@@21 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@39 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@44 (T@U T@U T@U) Bool)
(declare-fun $generated@@45 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@54 () Int)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@60 (T@T T@U T@U) Bool)
(declare-fun $generated@@73 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 () T@T)
(declare-fun $generated@@76 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@77 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@T T@T) T@T)
(declare-fun $generated@@80 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@81 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@82 (T@T) T@T)
(declare-fun $generated@@83 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@2 $generated@@3) 0) (= ($generated@@2 $generated@@4) 1)) (= ($generated@@2 $generated@@5) 2)) (forall (($generated@@12 Bool) ) (! (= ($generated@@7 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 T@U) ) (! (= ($generated@@6 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 Int) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Real) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))))
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert (= ($generated@@18 $generated) $generated@@0))
(assert ($generated@@19 $generated@@20))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! (= ($generated@@21 $generated@@20 $generated@@20 $generated@@24 $generated@@22 $generated@@25) ($generated@@23 $generated@@25))
 :pattern ( ($generated@@21 $generated@@20 $generated@@20 $generated@@24 $generated@@22 $generated@@25))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (! (= ($generated@@21 $generated@@20 $generated@@20 $generated@@28 $generated@@26 $generated@@29) ($generated@@27 $generated@@29))
 :pattern ( ($generated@@21 $generated@@20 $generated@@20 $generated@@28 $generated@@26 $generated@@29))
)))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@T) ) (! (= ($generated@@30 $generated@@32 $generated@@31) $generated@@31)
 :pattern ( ($generated@@30 $generated@@32 $generated@@31))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@34 $generated@@36 ($generated@@33 $generated@@36 $generated@@35)) $generated@@35)
 :pattern ( ($generated@@33 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@37 $generated@@42 $generated@@43) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@41 $generated@@40 $generated@@42 $generated@@43))))
 :pattern ( ($generated@@37 $generated@@42 $generated@@43) ($generated@@38 $generated@@41))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@T) ) (! (= ($generated@@44 ($generated@@34 $generated@@49 $generated@@46) $generated@@47 $generated@@48) ($generated@@45 $generated@@49 $generated@@46 $generated@@47 $generated@@48))
 :pattern ( ($generated@@44 ($generated@@34 $generated@@49 $generated@@46) $generated@@47 $generated@@48))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@23 $generated@@51) ($generated@@21 $generated@@20 $generated@@20 $generated@@50 $generated@@22 $generated@@51))
 :pattern ( ($generated@@23 $generated@@51) ($generated@@38 $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@27 $generated@@53) ($generated@@21 $generated@@20 $generated@@20 $generated@@52 $generated@@26 $generated@@53))
 :pattern ( ($generated@@27 $generated@@53) ($generated@@38 $generated@@52))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@57 T@U) ) (!  (=> (or ($generated@@55 $generated@@57) (and (< 0 $generated@@54) ($generated@@56 $generated@@57 $generated@@20))) ($generated@@56 ($generated@@23 $generated@@57) $generated@@20))
 :pattern ( ($generated@@23 $generated@@57))
))))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@59 T@U) ) (!  (=> (or ($generated@@58 $generated@@59) (and (< 0 $generated@@54) ($generated@@56 $generated@@59 $generated@@20))) ($generated@@56 ($generated@@27 $generated@@59) $generated@@20))
 :pattern ( ($generated@@27 $generated@@59))
))))
(assert (forall (($generated@@61 T@U) ) (!  (=> ($generated@@56 $generated@@61 $generated) (and (= ($generated@@34 $generated@@3 ($generated@@33 $generated@@3 $generated@@61)) $generated@@61) ($generated@@60 $generated@@3 ($generated@@33 $generated@@3 $generated@@61) $generated)))
 :pattern ( ($generated@@56 $generated@@61 $generated))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@56 ($generated@@34 $generated@@64 $generated@@62) $generated@@63) ($generated@@60 $generated@@64 $generated@@62 $generated@@63))
 :pattern ( ($generated@@56 ($generated@@34 $generated@@64 $generated@@62) $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ) (!  (=> ($generated@@19 $generated@@65) (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> ($generated@@56 $generated@@67 $generated@@65) ($generated@@44 $generated@@67 $generated@@65 $generated@@66))
 :pattern ( ($generated@@44 $generated@@67 $generated@@65 $generated@@66))
)))
 :pattern ( ($generated@@19 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@68 $generated@@40 $generated@@69 $generated@@70) ($generated@@34 $generated@@3 ($generated@@6 ($generated@@37 $generated@@69 $generated@@70))))
 :pattern ( ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@68 $generated@@40 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@T) ) (! (= ($generated@@33 $generated@@72 ($generated@@34 $generated@@72 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@34 $generated@@72 $generated@@71))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@73 $generated@@84 $generated@@85 $generated@@86 ($generated@@80 $generated@@84 $generated@@85 $generated@@86 $generated@@88 $generated@@89 $generated@@90 $generated@@87) $generated@@89 $generated@@90) $generated@@87)
 :weight 0
)) (and (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (or (= $generated@@96 $generated@@98) (= ($generated@@73 $generated@@91 $generated@@92 $generated@@93 ($generated@@80 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@98 $generated@@99) ($generated@@73 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@98 $generated@@99)))
 :weight 0
)) (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (or (= $generated@@106 $generated@@108) (= ($generated@@73 $generated@@100 $generated@@101 $generated@@102 ($generated@@80 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@107 $generated@@108) ($generated@@73 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@107 $generated@@108)))
 :weight 0
)))) (= ($generated@@2 $generated@@74) 3)) (= ($generated@@2 $generated@@75) 4)) (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@77 $generated@@109 $generated@@110 ($generated@@81 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@111) $generated@@113) $generated@@111)
 :weight 0
))) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (or (= $generated@@118 $generated@@119) (= ($generated@@77 $generated@@114 $generated@@115 ($generated@@81 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@116) $generated@@119) ($generated@@77 $generated@@114 $generated@@115 $generated@@117 $generated@@119)))
 :weight 0
))) (= ($generated@@2 $generated@@78) 5)) (forall (($generated@@120 T@T) ($generated@@121 T@T) ) (= ($generated@@2 ($generated@@79 $generated@@120 $generated@@121)) 6))) (forall (($generated@@122 T@T) ($generated@@123 T@T) ) (! (= ($generated@@82 ($generated@@79 $generated@@122 $generated@@123)) $generated@@122)
 :pattern ( ($generated@@79 $generated@@122 $generated@@123))
))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (! (= ($generated@@83 ($generated@@79 $generated@@124 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@79 $generated@@124 $generated@@125))
))))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 Bool) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@7 ($generated@@73 $generated@@74 $generated@@75 $generated@@3 ($generated@@76 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))  (=> (and (or (not (= $generated@@130 $generated@@126)) (not true)) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@77 $generated@@75 $generated@@78 ($generated@@77 $generated@@74 ($generated@@79 $generated@@75 $generated@@78) $generated@@127 $generated@@130) $generated@@128)))) $generated@@129))
 :pattern ( ($generated@@73 $generated@@74 $generated@@75 $generated@@3 ($generated@@76 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@T) ) (! (= ($generated@@34 $generated@@133 ($generated@@30 $generated@@133 $generated@@132)) ($generated@@30 $generated@@78 ($generated@@34 $generated@@133 $generated@@132)))
 :pattern ( ($generated@@34 $generated@@133 ($generated@@30 $generated@@133 $generated@@132)))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (! ($generated@@45 $generated@@3 $generated@@135 $generated $generated@@134)
 :pattern ( ($generated@@45 $generated@@3 $generated@@135 $generated $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ) (! ($generated@@60 $generated@@3 $generated@@136 $generated)
 :pattern ( ($generated@@60 $generated@@3 $generated@@136 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@138 () T@U)
(declare-fun $generated@@139 () T@U)
(declare-fun $generated@@140 (T@U) Bool)
(declare-fun $generated@@141 () T@U)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
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
 (=> (= (ControlFlow 0 0) 17) (let (($generated@@150  (=> (= (ControlFlow 0 5) (- 0 4)) ($generated@@37 ($generated@@23 $generated@@137) ($generated@@23 $generated@@138)))))
(let (($generated@@151  (=> (and (and ($generated@@38 $generated@@139) ($generated@@140 $generated@@139)) (and (= $generated@@141 $generated@@139) (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> (and (and ($generated@@56 $generated@@152 $generated@@20) ($generated@@56 $generated@@153 $generated@@20)) ($generated@@7 ($generated@@30 $generated@@3 ($generated@@6 true)))) (= ($generated@@37 ($generated@@23 $generated@@152) $generated@@153) ($generated@@37 $generated@@152 ($generated@@27 $generated@@153))))
 :pattern ( ($generated@@27 $generated@@153) ($generated@@23 $generated@@152))
)))) (and (=> (= (ControlFlow 0 6) (- 0 13)) (or (not (= 0 $generated@@54)) (not true))) (=> (or (not (= 0 $generated@@54)) (not true)) (=> (= $generated@@142 $generated@@40) (and (=> (= (ControlFlow 0 6) (- 0 12)) (or (not (= 0 $generated@@54)) (not true))) (=> (or (not (= 0 $generated@@54)) (not true)) (=> (= $generated@@143 $generated@@22) (and (=> (= (ControlFlow 0 6) (- 0 11)) (or (not (= 0 $generated@@54)) (not true))) (=> (or (not (= 0 $generated@@54)) (not true)) (=> (= $generated@@144 $generated@@26) (and (=> (= (ControlFlow 0 6) (- 0 10)) (forall (($generated@@154 T@U) ) (!  (=> ($generated@@56 $generated@@154 $generated@@20) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@154 $generated@@154))))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@154 $generated@@154)))
))) (=> (forall (($generated@@155 T@U) ) (!  (=> ($generated@@56 $generated@@155 $generated@@20) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@155 $generated@@155))))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@155 $generated@@155)))
)) (and (=> (= (ControlFlow 0 6) (- 0 9)) (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> (and (and ($generated@@56 $generated@@156 $generated@@20) ($generated@@56 $generated@@157 $generated@@20)) ($generated@@56 $generated@@158 $generated@@20)) (=> (and ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@156 $generated@@157))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@157 $generated@@158)))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@156 $generated@@158)))))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@156 $generated@@158)) ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@157 $generated@@158)))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@157 $generated@@158)) ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@156 $generated@@157)))
))) (=> (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> (and (and ($generated@@56 $generated@@159 $generated@@20) ($generated@@56 $generated@@160 $generated@@20)) ($generated@@56 $generated@@161 $generated@@20)) (=> (and ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@159 $generated@@160))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@160 $generated@@161)))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@159 $generated@@161)))))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@159 $generated@@161)) ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@160 $generated@@161)))
 :pattern ( ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@160 $generated@@161)) ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@159 $generated@@160)))
)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> (and ($generated@@56 $generated@@162 $generated@@20) ($generated@@56 $generated@@163 $generated@@20)) (= ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@143 $generated@@162) $generated@@163))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@162 ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@144 $generated@@163))))))
 :pattern ( ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@144 $generated@@163) ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@143 $generated@@162))
))) (=> (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and ($generated@@56 $generated@@164 $generated@@20) ($generated@@56 $generated@@165 $generated@@20)) (= ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@143 $generated@@164) $generated@@165))) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@164 ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@144 $generated@@165))))))
 :pattern ( ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@144 $generated@@165) ($generated@@21 $generated@@20 $generated@@20 $generated@@139 $generated@@143 $generated@@164))
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@137 $generated@@138)))) (=> ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@139 $generated@@142 $generated@@137 $generated@@138))) (=> (and (and (and ($generated@@38 $generated@@145) ($generated@@140 $generated@@145)) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@39 $generated@@20 $generated@@20 $generated $generated@@145 $generated@@142 ($generated@@21 $generated@@20 $generated@@20 $generated@@145 $generated@@143 $generated@@137) ($generated@@21 $generated@@20 $generated@@20 $generated@@145 $generated@@143 $generated@@138))))) (and (= $generated@@139 $generated@@145) (= (ControlFlow 0 6) 5))) $generated@@150)))))))))))))))))))))
(let (($generated@@166 true))
(let (($generated@@167  (=> (and (and ($generated@@38 $generated@@141) ($generated@@140 $generated@@141)) (and (= $generated@@146 $generated@@141) (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> (and (and (and ($generated@@56 $generated@@168 $generated@@20) ($generated@@56 $generated@@169 $generated@@20)) ($generated@@56 $generated@@170 $generated@@20)) ($generated@@7 ($generated@@30 $generated@@3 ($generated@@6 true)))) (=> (and ($generated@@37 $generated@@168 $generated@@169) ($generated@@37 $generated@@169 $generated@@170)) ($generated@@37 $generated@@168 $generated@@170)))
 :pattern ( ($generated@@37 $generated@@168 $generated@@170) ($generated@@37 $generated@@169 $generated@@170))
 :pattern ( ($generated@@37 $generated@@169 $generated@@170) ($generated@@37 $generated@@168 $generated@@169))
)))) (and (=> (= (ControlFlow 0 14) 3) $generated@@166) (=> (= (ControlFlow 0 14) 6) $generated@@151)))))
(let (($generated@@171 true))
(let (($generated@@172  (=> (and (and ($generated@@38 $generated@@146) ($generated@@140 $generated@@146)) (and (= $generated@@147 $generated@@146) (forall (($generated@@173 T@U) ) (!  (=> (and ($generated@@56 $generated@@173 $generated@@20) ($generated@@7 ($generated@@30 $generated@@3 ($generated@@6 true)))) ($generated@@37 $generated@@173 $generated@@173))
 :pattern ( ($generated@@37 $generated@@173 $generated@@173))
)))) (and (=> (= (ControlFlow 0 15) 2) $generated@@171) (=> (= (ControlFlow 0 15) 14) $generated@@167)))))
(let (($generated@@174 true))
(let (($generated@@175  (=> (= $generated@@148 ($generated@@76 $generated@@149 $generated@@147 $generated@@1 false)) (and (=> (= (ControlFlow 0 16) 1) $generated@@174) (=> (= (ControlFlow 0 16) 15) $generated@@172)))))
(let (($generated@@176  (=> (and (and ($generated@@38 $generated@@147) ($generated@@140 $generated@@147)) (and ($generated@@56 $generated@@137 $generated@@20) ($generated@@44 $generated@@137 $generated@@20 $generated@@147))) (=> (and (and (and ($generated@@56 $generated@@138 $generated@@20) ($generated@@44 $generated@@138 $generated@@20 $generated@@147)) (= 2 $generated@@54)) (and ($generated@@37 $generated@@137 $generated@@138) (= (ControlFlow 0 17) 16))) $generated@@175))))
$generated@@176))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)