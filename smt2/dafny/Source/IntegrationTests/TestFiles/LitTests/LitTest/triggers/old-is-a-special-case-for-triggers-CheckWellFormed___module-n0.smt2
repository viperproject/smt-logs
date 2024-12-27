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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@T T@U T@U) Bool)
(declare-fun $generated@@21 () T@T)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@26 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@T T@T) T@T)
(declare-fun $generated@@35 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@37 (T@T) T@T)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@70 (T@U T@U) Bool)
(declare-fun $generated@@74 (T@U T@U T@U) Bool)
(declare-fun $generated@@91 () Int)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@93 (T@U) Bool)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@96 (T@U) Bool)
(declare-fun $generated@@108 (T@U) Bool)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@119 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@120 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@121 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (= ($generated@@4 $generated@@21) 3))
(assert (forall (($generated@@25 T@U) ) (! (= ($generated@@20 $generated@@21 $generated@@25 $generated@@22)  (or (= $generated@@25 $generated@@23) (= ($generated@@24 $generated@@25) $generated@@22)))
 :pattern ( ($generated@@20 $generated@@21 $generated@@25 $generated@@22))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (! (= ($generated@@26 $generated@@21 $generated@@28 $generated@@27 $generated@@29) ($generated@@26 $generated@@21 $generated@@28 $generated@@22 $generated@@29))
 :pattern ( ($generated@@26 $generated@@21 $generated@@28 $generated@@27 $generated@@29))
 :pattern ( ($generated@@26 $generated@@21 $generated@@28 $generated@@22 $generated@@29))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@38 T@T) ($generated@@39 T@T) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@31 $generated@@38 $generated@@39 ($generated@@35 $generated@@38 $generated@@39 $generated@@41 $generated@@42 $generated@@40) $generated@@42) $generated@@40)
 :weight 0
)) (forall (($generated@@43 T@T) ($generated@@44 T@T) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (!  (or (= $generated@@47 $generated@@48) (= ($generated@@31 $generated@@43 $generated@@44 ($generated@@35 $generated@@43 $generated@@44 $generated@@46 $generated@@47 $generated@@45) $generated@@48) ($generated@@31 $generated@@43 $generated@@44 $generated@@46 $generated@@48)))
 :weight 0
))) (= ($generated@@4 $generated@@32) 4)) (= ($generated@@4 $generated@@33) 5)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ) (= ($generated@@4 ($generated@@34 $generated@@49 $generated@@50)) 6))) (forall (($generated@@51 T@T) ($generated@@52 T@T) ) (! (= ($generated@@36 ($generated@@34 $generated@@51 $generated@@52)) $generated@@51)
 :pattern ( ($generated@@34 $generated@@51 $generated@@52))
))) (forall (($generated@@53 T@T) ($generated@@54 T@T) ) (! (= ($generated@@37 ($generated@@34 $generated@@53 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@34 $generated@@53 $generated@@54))
))))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@26 $generated@@21 $generated@@55 $generated@@22 $generated@@56)  (or (= $generated@@55 $generated@@23) ($generated@@9 ($generated@@30 $generated@@5 ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@56 $generated@@55) $generated@@0)))))
 :pattern ( ($generated@@26 $generated@@21 $generated@@55 $generated@@22 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (!  (=> ($generated@@57 $generated@@58 $generated@@59) (forall (($generated@@60 T@U) ) (!  (=> ($generated@@9 ($generated@@30 $generated@@5 ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@58 $generated@@60) $generated@@0))) ($generated@@9 ($generated@@30 $generated@@5 ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@59 $generated@@60) $generated@@0))))
 :pattern ( ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@59 $generated@@60) $generated@@0))
)))
 :pattern ( ($generated@@57 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@61 $generated@@63 $generated@@62) $generated@@62)
 :pattern ( ($generated@@61 $generated@@63 $generated@@62))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@64 $generated@@66 ($generated@@30 $generated@@66 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@30 $generated@@66 $generated@@65))
)))
(assert (= ($generated@@4 $generated@@67) 7))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@20 $generated@@67 $generated@@71 ($generated@@68 $generated@@72)) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@69 $generated@@71 $generated@@73) ($generated@@70 $generated@@73 $generated@@72))
 :pattern ( ($generated@@69 $generated@@71 $generated@@73))
)))
 :pattern ( ($generated@@20 $generated@@67 $generated@@71 ($generated@@68 $generated@@72)))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@74 ($generated@@64 $generated@@78 $generated@@75) $generated@@76 $generated@@77) ($generated@@26 $generated@@78 $generated@@75 $generated@@76 $generated@@77))
 :pattern ( ($generated@@74 ($generated@@64 $generated@@78 $generated@@75) $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> ($generated@@57 $generated@@79 $generated@@80) (=> ($generated@@74 $generated@@81 $generated@@82 $generated@@79) ($generated@@74 $generated@@81 $generated@@82 $generated@@80)))
 :pattern ( ($generated@@57 $generated@@79 $generated@@80) ($generated@@74 $generated@@81 $generated@@82 $generated@@79))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (!  (=> ($generated@@57 $generated@@83 $generated@@84) (=> ($generated@@26 $generated@@87 $generated@@85 $generated@@86 $generated@@83) ($generated@@26 $generated@@87 $generated@@85 $generated@@86 $generated@@84)))
 :pattern ( ($generated@@57 $generated@@83 $generated@@84) ($generated@@26 $generated@@87 $generated@@85 $generated@@86 $generated@@83))
)))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@70 $generated@@88 $generated@@27) (and (= ($generated@@64 $generated@@21 ($generated@@30 $generated@@21 $generated@@88)) $generated@@88) ($generated@@20 $generated@@21 ($generated@@30 $generated@@21 $generated@@88) $generated@@27)))
 :pattern ( ($generated@@70 $generated@@88 $generated@@27))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@70 $generated@@89 $generated@@22) (and (= ($generated@@64 $generated@@21 ($generated@@30 $generated@@21 $generated@@89)) $generated@@89) ($generated@@20 $generated@@21 ($generated@@30 $generated@@21 $generated@@89) $generated@@22)))
 :pattern ( ($generated@@70 $generated@@89 $generated@@22))
)))
(assert (forall (($generated@@90 T@U) ) (! (= ($generated@@20 $generated@@21 $generated@@90 $generated@@27)  (and ($generated@@20 $generated@@21 $generated@@90 $generated@@22) (or (not (= $generated@@90 $generated@@23)) (not true))))
 :pattern ( ($generated@@20 $generated@@21 $generated@@90 $generated@@27))
 :pattern ( ($generated@@20 $generated@@21 $generated@@90 $generated@@22))
)))
(assert  (=> (<= 1 $generated@@91) (forall (($generated@@94 T@U) ) (!  (=> (or ($generated@@93 $generated@@94) (and (< 1 $generated@@91) ($generated@@20 $generated@@21 $generated@@94 $generated@@27))) ($generated@@20 $generated@@21 ($generated@@92 $generated@@94) $generated@@27))
 :pattern ( ($generated@@92 $generated@@94))
))))
(assert  (=> (<= 1 $generated@@91) (forall (($generated@@97 T@U) ) (!  (=> (or ($generated@@96 $generated@@97) (and (< 1 $generated@@91) ($generated@@20 $generated@@21 $generated@@97 $generated@@27))) ($generated@@20 $generated@@21 ($generated@@95 $generated@@97) $generated@@27))
 :pattern ( ($generated@@95 $generated@@97))
))))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> (or (not (= $generated@@98 $generated@@100)) (not true)) (=> (and ($generated@@57 $generated@@98 $generated@@99) ($generated@@57 $generated@@99 $generated@@100)) ($generated@@57 $generated@@98 $generated@@100)))
 :pattern ( ($generated@@57 $generated@@98 $generated@@99) ($generated@@57 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@70 ($generated@@64 $generated@@103 $generated@@101) $generated@@102) ($generated@@20 $generated@@103 $generated@@101 $generated@@102))
 :pattern ( ($generated@@70 ($generated@@64 $generated@@103 $generated@@101) $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@26 $generated@@67 $generated@@104 ($generated@@68 $generated@@105) $generated@@106) (forall (($generated@@107 T@U) ) (!  (=> ($generated@@69 $generated@@104 $generated@@107) ($generated@@74 $generated@@107 $generated@@105 $generated@@106))
 :pattern ( ($generated@@69 $generated@@104 $generated@@107))
)))
 :pattern ( ($generated@@26 $generated@@67 $generated@@104 ($generated@@68 $generated@@105) $generated@@106))
)))
(assert  (=> (<= 1 $generated@@91) (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> (and (or ($generated@@93 $generated@@110) (and (< 1 $generated@@91) (and ($generated@@20 $generated@@21 $generated@@110 $generated@@27) ($generated@@26 $generated@@21 $generated@@110 $generated@@27 $generated@@109)))) ($generated@@108 $generated@@109)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@110) $generated@@27 $generated@@109))
 :pattern ( ($generated@@26 $generated@@21 ($generated@@92 $generated@@110) $generated@@27 $generated@@109))
))))
(assert  (=> (<= 1 $generated@@91) (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (!  (=> (and (or ($generated@@96 $generated@@112) (and (< 1 $generated@@91) (and ($generated@@20 $generated@@21 $generated@@112 $generated@@27) ($generated@@26 $generated@@21 $generated@@112 $generated@@27 $generated@@111)))) ($generated@@108 $generated@@111)) ($generated@@26 $generated@@21 ($generated@@95 $generated@@112) $generated@@27 $generated@@111))
 :pattern ( ($generated@@26 $generated@@21 ($generated@@95 $generated@@112) $generated@@27 $generated@@111))
))))
(assert (forall (($generated@@114 T@U) ) (! (= ($generated@@113 ($generated@@68 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@68 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@115 ($generated@@68 $generated@@116)) $generated)
 :pattern ( ($generated@@68 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@30 $generated@@118 ($generated@@64 $generated@@118 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@64 $generated@@118 $generated@@117))
)))
(assert  (and (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@119 $generated@@122 $generated@@123 $generated@@124 ($generated@@121 $generated@@122 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128 $generated@@125) $generated@@127 $generated@@128) $generated@@125)
 :weight 0
)) (and (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (or (= $generated@@134 $generated@@136) (= ($generated@@119 $generated@@129 $generated@@130 $generated@@131 ($generated@@121 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@136 $generated@@137) ($generated@@119 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@136 $generated@@137)))
 :weight 0
)) (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (or (= $generated@@144 $generated@@146) (= ($generated@@119 $generated@@138 $generated@@139 $generated@@140 ($generated@@121 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@145 $generated@@146) ($generated@@119 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@145 $generated@@146)))
 :weight 0
)))))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 Bool) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@9 ($generated@@119 $generated@@21 $generated@@32 $generated@@5 ($generated@@120 $generated@@147 $generated@@148 $generated@@149 $generated@@150) $generated@@151 $generated@@152))  (=> (and (or (not (= $generated@@151 $generated@@147)) (not true)) ($generated@@9 ($generated@@30 $generated@@5 ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@148 $generated@@151) $generated@@149)))) $generated@@150))
 :pattern ( ($generated@@119 $generated@@21 $generated@@32 $generated@@5 ($generated@@120 $generated@@147 $generated@@148 $generated@@149 $generated@@150) $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (!  (=> ($generated@@70 $generated@@153 ($generated@@68 $generated@@154)) (and (= ($generated@@64 $generated@@67 ($generated@@30 $generated@@67 $generated@@153)) $generated@@153) ($generated@@20 $generated@@67 ($generated@@30 $generated@@67 $generated@@153) ($generated@@68 $generated@@154))))
 :pattern ( ($generated@@70 $generated@@153 ($generated@@68 $generated@@154)))
)))
(assert (= ($generated@@115 $generated@@27) $generated@@1))
(assert (= ($generated@@155 $generated@@27) $generated@@3))
(assert (= ($generated@@115 $generated@@22) $generated@@2))
(assert (= ($generated@@155 $generated@@22) $generated@@3))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@64 $generated@@157 ($generated@@61 $generated@@157 $generated@@156)) ($generated@@61 $generated@@33 ($generated@@64 $generated@@157 $generated@@156)))
 :pattern ( ($generated@@64 $generated@@157 ($generated@@61 $generated@@157 $generated@@156)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 44) (let (($generated@@178 true))
(let (($generated@@179  (=> (not ($generated@@9 ($generated@@61 $generated@@5 ($generated@@8 true)))) (=> (and ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@159) ($generated@@93 $generated@@158)) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@160) (=> ($generated@@93 $generated@@158) (=> (and (= ($generated@@92 $generated@@158) ($generated@@92 $generated@@158)) (= (ControlFlow 0 7) 1)) $generated@@178))))))))
(let (($generated@@180  (=> (= (ControlFlow 0 6) 1) $generated@@178)))
(let (($generated@@181  (=> (not (or true (= ($generated@@92 $generated@@158) ($generated@@92 $generated@@158)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@160) (=> (and ($generated@@93 $generated@@158) (= $generated@@161 ($generated@@92 $generated@@158))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@158) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@92 $generated@@158) $generated@@27 $generated@@160) (=> (and (and (and ($generated@@96 ($generated@@92 $generated@@158)) ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@159)) (and ($generated@@93 $generated@@158) (= $generated@@162 ($generated@@92 $generated@@158)))) (and (and ($generated@@26 $generated@@21 $generated@@162 $generated@@27 $generated@@159) ($generated@@96 ($generated@@92 $generated@@158))) (and (= ($generated@@95 ($generated@@92 $generated@@158)) ($generated@@95 ($generated@@92 $generated@@158))) (= (ControlFlow 0 3) 1)))) $generated@@178)))))))))
(let (($generated@@182  (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@158)) (and (and (=> (= (ControlFlow 0 9) 3) $generated@@181) (=> (= (ControlFlow 0 9) 6) $generated@@180)) (=> (= (ControlFlow 0 9) 7) $generated@@179)))))
(let (($generated@@183  (=> (and (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@158)) (or (or true (= ($generated@@92 $generated@@158) ($generated@@92 $generated@@158))) (= ($generated@@95 ($generated@@92 $generated@@158)) ($generated@@95 ($generated@@92 $generated@@158))))) (= (ControlFlow 0 2) 1)) $generated@@178)))
(let (($generated@@184  (=> (forall (($generated@@185 T@U) ) (!  (=> (and ($generated@@20 $generated@@21 $generated@@185 $generated@@27) ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@185))) (or true (= ($generated@@92 $generated@@185) ($generated@@95 ($generated@@92 $generated@@185)))))
 :pattern ( ($generated@@92 $generated@@185))
 :pattern ( ($generated@@92 $generated@@185))
 :pattern ( ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@185)))
)) (=> (and ($generated@@20 $generated@@21 $generated@@158 $generated@@27) ($generated@@26 $generated@@21 $generated@@158 $generated@@27 $generated@@159)) (and (=> (= (ControlFlow 0 10) 9) $generated@@182) (=> (= (ControlFlow 0 10) 2) $generated@@183))))))
(let (($generated@@186  (=> (not ($generated@@9 ($generated@@61 $generated@@5 ($generated@@8 true)))) (=> (and ($generated@@26 $generated@@21 $generated@@164 $generated@@27 $generated@@159) ($generated@@93 $generated@@164)) (and (=> (= (ControlFlow 0 13) (- 0 15)) ($generated@@26 $generated@@21 $generated@@164 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@164 $generated@@27 $generated@@160) (=> (and ($generated@@93 $generated@@164) (= $generated@@165 ($generated@@92 $generated@@164))) (and (=> (= (ControlFlow 0 13) (- 0 14)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@164) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@92 $generated@@164) $generated@@27 $generated@@160) (=> ($generated@@96 ($generated@@92 $generated@@164)) (=> (and (= ($generated@@92 $generated@@164) ($generated@@95 ($generated@@92 $generated@@164))) (= (ControlFlow 0 13) 10)) $generated@@184)))))))))))
(let (($generated@@187  (=> (= (ControlFlow 0 12) 10) $generated@@184)))
(let (($generated@@188  (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@164)) (and (=> (= (ControlFlow 0 16) 12) $generated@@187) (=> (= (ControlFlow 0 16) 13) $generated@@186)))))
(let (($generated@@189  (=> (and (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@164)) (or true (= ($generated@@92 $generated@@164) ($generated@@95 ($generated@@92 $generated@@164))))) (= (ControlFlow 0 11) 10)) $generated@@184)))
(let (($generated@@190  (=> (forall (($generated@@191 T@U) ) (!  (=> (and ($generated@@20 $generated@@21 $generated@@191 $generated@@27) ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@191))) (or (or (or true (= ($generated@@92 ($generated@@92 $generated@@191)) ($generated@@95 ($generated@@92 $generated@@191)))) (= ($generated@@92 ($generated@@95 $generated@@191)) ($generated@@95 ($generated@@92 $generated@@191)))) (= ($generated@@92 ($generated@@95 $generated@@191)) ($generated@@95 ($generated@@92 $generated@@191)))))
 :pattern ( ($generated@@92 ($generated@@95 $generated@@191)))
 :pattern ( ($generated@@95 ($generated@@92 $generated@@191)))
 :pattern ( ($generated@@92 ($generated@@95 $generated@@191)))
 :pattern ( ($generated@@95 ($generated@@92 $generated@@191)))
 :pattern ( ($generated@@92 ($generated@@92 $generated@@191)))
 :pattern ( ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@191)))
)) (=> (and ($generated@@20 $generated@@21 $generated@@164 $generated@@27) ($generated@@26 $generated@@21 $generated@@164 $generated@@27 $generated@@159)) (and (=> (= (ControlFlow 0 17) 16) $generated@@188) (=> (= (ControlFlow 0 17) 11) $generated@@189))))))
(let (($generated@@192  (=> (not ($generated@@9 ($generated@@61 $generated@@5 ($generated@@8 true)))) (and (=> (= (ControlFlow 0 24) (- 0 28)) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160) (=> (and ($generated@@93 $generated@@166) (= $generated@@167 ($generated@@92 $generated@@166))) (and (=> (= (ControlFlow 0 24) (- 0 27)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@166) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@92 $generated@@166) $generated@@27 $generated@@160) (=> ($generated@@93 ($generated@@92 $generated@@166)) (and (=> (= (ControlFlow 0 24) (- 0 26)) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160) (=> (and ($generated@@93 $generated@@166) (= $generated@@168 ($generated@@92 $generated@@166))) (and (=> (= (ControlFlow 0 24) (- 0 25)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@166) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@92 $generated@@166) $generated@@27 $generated@@160) (=> ($generated@@96 ($generated@@92 $generated@@166)) (=> (and (= ($generated@@92 ($generated@@92 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))) (= (ControlFlow 0 24) 17)) $generated@@190))))))))))))))))
(let (($generated@@193  (=> (= (ControlFlow 0 23) 17) $generated@@190)))
(let (($generated@@194  (=> (not (or true (= ($generated@@92 ($generated@@92 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))))) (and (=> (= (ControlFlow 0 20) (- 0 22)) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@160) (=> (and ($generated@@96 $generated@@166) (= $generated@@169 ($generated@@95 $generated@@166))) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($generated@@26 $generated@@21 ($generated@@95 $generated@@166) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@95 $generated@@166) $generated@@27 $generated@@160) (=> (and (and (and ($generated@@93 ($generated@@95 $generated@@166)) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@159)) (and ($generated@@93 $generated@@166) (= $generated@@170 ($generated@@92 $generated@@166)))) (and (and ($generated@@26 $generated@@21 $generated@@170 $generated@@27 $generated@@159) ($generated@@96 ($generated@@92 $generated@@166))) (and (= ($generated@@92 ($generated@@95 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))) (= (ControlFlow 0 20) 17)))) $generated@@190)))))))))
(let (($generated@@195  (=> (not (or (or true (= ($generated@@92 ($generated@@92 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166)))) (= ($generated@@92 ($generated@@95 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))))) (=> (and (and ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@159) ($generated@@96 $generated@@166)) (and (= $generated@@171 ($generated@@95 $generated@@166)) ($generated@@26 $generated@@21 $generated@@171 $generated@@27 $generated@@159))) (=> (and (and (and ($generated@@93 ($generated@@95 $generated@@166)) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@159)) (and ($generated@@93 $generated@@166) (= $generated@@172 ($generated@@92 $generated@@166)))) (and (and ($generated@@26 $generated@@21 $generated@@172 $generated@@27 $generated@@159) ($generated@@96 ($generated@@92 $generated@@166))) (and (= ($generated@@92 ($generated@@95 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))) (= (ControlFlow 0 19) 17)))) $generated@@190)))))
(let (($generated@@196  (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@166)) (and (and (and (=> (= (ControlFlow 0 29) 19) $generated@@195) (=> (= (ControlFlow 0 29) 20) $generated@@194)) (=> (= (ControlFlow 0 29) 23) $generated@@193)) (=> (= (ControlFlow 0 29) 24) $generated@@192)))))
(let (($generated@@197  (=> (and (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@166)) (or (or (or true (= ($generated@@92 ($generated@@92 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166)))) (= ($generated@@92 ($generated@@95 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166)))) (= ($generated@@92 ($generated@@95 $generated@@166)) ($generated@@95 ($generated@@92 $generated@@166))))) (= (ControlFlow 0 18) 17)) $generated@@190)))
(let (($generated@@198  (=> (forall (($generated@@199 T@U) ) (!  (=> (and ($generated@@20 $generated@@21 $generated@@199 $generated@@27) ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@199))) (or true (= ($generated@@92 $generated@@199) ($generated@@92 ($generated@@92 $generated@@199)))))
 :pattern ( ($generated@@92 ($generated@@92 $generated@@199)))
 :pattern ( ($generated@@92 $generated@@199))
 :pattern ( ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@199)))
)) (=> (and ($generated@@20 $generated@@21 $generated@@166 $generated@@27) ($generated@@26 $generated@@21 $generated@@166 $generated@@27 $generated@@159)) (and (=> (= (ControlFlow 0 30) 29) $generated@@196) (=> (= (ControlFlow 0 30) 18) $generated@@197))))))
(let (($generated@@200  (=> (not ($generated@@9 ($generated@@61 $generated@@5 ($generated@@8 true)))) (=> (and ($generated@@26 $generated@@21 $generated@@173 $generated@@27 $generated@@159) ($generated@@93 $generated@@173)) (and (=> (= (ControlFlow 0 33) (- 0 35)) ($generated@@26 $generated@@21 $generated@@173 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@173 $generated@@27 $generated@@160) (=> (and ($generated@@93 $generated@@173) (= $generated@@174 ($generated@@92 $generated@@173))) (and (=> (= (ControlFlow 0 33) (- 0 34)) ($generated@@26 $generated@@21 ($generated@@92 $generated@@173) $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 ($generated@@92 $generated@@173) $generated@@27 $generated@@160) (=> ($generated@@93 ($generated@@92 $generated@@173)) (=> (and (= ($generated@@92 $generated@@173) ($generated@@92 ($generated@@92 $generated@@173))) (= (ControlFlow 0 33) 30)) $generated@@198)))))))))))
(let (($generated@@201  (=> (= (ControlFlow 0 32) 30) $generated@@198)))
(let (($generated@@202  (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@173)) (and (=> (= (ControlFlow 0 36) 32) $generated@@201) (=> (= (ControlFlow 0 36) 33) $generated@@200)))))
(let (($generated@@203  (=> (and (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@173)) (or true (= ($generated@@92 $generated@@173) ($generated@@92 ($generated@@92 $generated@@173))))) (= (ControlFlow 0 31) 30)) $generated@@198)))
(let (($generated@@204  (=> (forall (($generated@@205 T@U) ) (!  (=> (and ($generated@@20 $generated@@21 $generated@@205 $generated@@27) ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@205))) (or true (= $generated@@205 ($generated@@92 $generated@@205))))
 :pattern ( ($generated@@92 $generated@@205))
 :pattern ( ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@205)))
)) (=> (and ($generated@@20 $generated@@21 $generated@@173 $generated@@27) ($generated@@26 $generated@@21 $generated@@173 $generated@@27 $generated@@159)) (and (=> (= (ControlFlow 0 37) 36) $generated@@202) (=> (= (ControlFlow 0 37) 31) $generated@@203))))))
(let (($generated@@206  (=> (not ($generated@@9 ($generated@@61 $generated@@5 ($generated@@8 true)))) (and (=> (= (ControlFlow 0 40) (- 0 41)) ($generated@@26 $generated@@21 $generated@@175 $generated@@27 $generated@@160)) (=> ($generated@@26 $generated@@21 $generated@@175 $generated@@27 $generated@@160) (=> ($generated@@93 $generated@@175) (=> (and (= $generated@@175 ($generated@@92 $generated@@175)) (= (ControlFlow 0 40) 37)) $generated@@204)))))))
(let (($generated@@207  (=> (= (ControlFlow 0 39) 37) $generated@@204)))
(let (($generated@@208  (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@175)) (and (=> (= (ControlFlow 0 42) 39) $generated@@207) (=> (= (ControlFlow 0 42) 40) $generated@@206)))))
(let (($generated@@209  (=> (and (=> ($generated@@69 $generated@@163 ($generated@@64 $generated@@21 $generated@@175)) (or true (= $generated@@175 ($generated@@92 $generated@@175)))) (= (ControlFlow 0 38) 37)) $generated@@204)))
(let (($generated@@210  (=> (= $generated@@176 ($generated@@120 $generated@@23 $generated@@160 $generated@@0 false)) (=> (and ($generated@@108 $generated@@159) ($generated@@177 $generated@@159)) (=> (and (and (forall (($generated@@211 T@U) ) (!  (=> (and (or (not (= $generated@@211 $generated@@23)) (not true)) ($generated@@9 ($generated@@30 $generated@@5 ($generated@@31 $generated@@32 $generated@@33 ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@160 $generated@@211) $generated@@0)))) (= ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@159 $generated@@211) ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@160 $generated@@211)))
 :pattern ( ($generated@@31 $generated@@21 ($generated@@34 $generated@@32 $generated@@33) $generated@@159 $generated@@211))
)) ($generated@@57 $generated@@160 $generated@@159)) (and ($generated@@20 $generated@@21 $generated@@175 $generated@@27) ($generated@@26 $generated@@21 $generated@@175 $generated@@27 $generated@@159))) (and (=> (= (ControlFlow 0 43) 42) $generated@@208) (=> (= (ControlFlow 0 43) 38) $generated@@209)))))))
(let (($generated@@212  (=> (and ($generated@@108 $generated@@160) ($generated@@177 $generated@@160)) (=> (and (and ($generated@@20 $generated@@67 $generated@@163 ($generated@@68 $generated@@27)) ($generated@@26 $generated@@67 $generated@@163 ($generated@@68 $generated@@27) $generated@@160)) (and (= 2 $generated@@91) (= (ControlFlow 0 44) 43))) $generated@@210))))
$generated@@212)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)