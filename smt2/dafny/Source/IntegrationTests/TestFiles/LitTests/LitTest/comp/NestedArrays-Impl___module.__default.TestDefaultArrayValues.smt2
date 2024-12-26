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
(declare-fun $generated@@6 () T@U)
(declare-fun $generated@@7 () T@U)
(declare-fun $generated@@8 () T@U)
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 (T@U) Int)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Int)
(declare-fun $generated@@43 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@T T@T) T@T)
(declare-fun $generated@@58 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@T) T@T)
(declare-fun $generated@@84 (Int) Int)
(declare-fun $generated@@86 (T@T T@U) T@U)
(declare-fun $generated@@89 (T@T T@U) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@107 () Int)
(declare-fun $generated@@108 (T@U T@U) Int)
(declare-fun $generated@@109 (T@U T@U) Bool)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@117 (T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@127 (T@U) Bool)
(declare-fun $generated@@137 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@139 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@171 () T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated) $generated@@0))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (and (or (not (= $generated@@35 $generated@@31)) (not true)) (= ($generated@@32 $generated@@35) ($generated@@30 $generated@@34))) ($generated@@33 $generated@@14 ($generated@@18 ($generated@@29 $generated@@35)) $generated))
 :pattern ( ($generated@@29 $generated@@35) ($generated@@30 $generated@@34))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> (and (or (not (= $generated@@39 $generated@@31)) (not true)) (= ($generated@@32 $generated@@39) ($generated@@37 $generated@@38))) ($generated@@33 $generated@@14 ($generated@@18 ($generated@@36 $generated@@39)) $generated))
 :pattern ( ($generated@@36 $generated@@39) ($generated@@37 $generated@@38))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (!  (=> (and (or (not (= $generated@@42 $generated@@31)) (not true)) (= ($generated@@32 $generated@@42) ($generated@@37 $generated@@41))) ($generated@@33 $generated@@14 ($generated@@18 ($generated@@40 $generated@@42)) $generated))
 :pattern ( ($generated@@40 $generated@@42) ($generated@@37 $generated@@41))
)))
(assert (= ($generated@@12 $generated@@44) 3))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@46) $generated@@48) ($generated@@43 $generated@@44 $generated@@47 ($generated@@30 $generated@@46) $generated@@48))
 :pattern ( ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@46) $generated@@48))
 :pattern ( ($generated@@43 $generated@@44 $generated@@47 ($generated@@30 $generated@@46) $generated@@48))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@51 ($generated@@49 $generated@@50) $generated@@52) ($generated@@43 $generated@@44 $generated@@51 ($generated@@37 $generated@@50) $generated@@52))
 :pattern ( ($generated@@43 $generated@@44 $generated@@51 ($generated@@49 $generated@@50) $generated@@52))
 :pattern ( ($generated@@43 $generated@@44 $generated@@51 ($generated@@37 $generated@@50) $generated@@52))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@54 $generated@@61 $generated@@62 ($generated@@58 $generated@@61 $generated@@62 $generated@@64 $generated@@65 $generated@@63) $generated@@65) $generated@@63)
 :weight 0
)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (or (= $generated@@70 $generated@@71) (= ($generated@@54 $generated@@66 $generated@@67 ($generated@@58 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@68) $generated@@71) ($generated@@54 $generated@@66 $generated@@67 $generated@@69 $generated@@71)))
 :weight 0
))) (= ($generated@@12 $generated@@55) 4)) (= ($generated@@12 $generated@@56) 5)) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (= ($generated@@12 ($generated@@57 $generated@@72 $generated@@73)) 6))) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (! (= ($generated@@59 ($generated@@57 $generated@@74 $generated@@75)) $generated@@74)
 :pattern ( ($generated@@57 $generated@@74 $generated@@75))
))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@60 ($generated@@57 $generated@@76 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@57 $generated@@76 $generated@@77))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@79 ($generated@@30 $generated@@78) $generated@@80)  (or (= $generated@@79 $generated@@31) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@80 $generated@@79) $generated@@1)))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@79 ($generated@@30 $generated@@78) $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@82 ($generated@@37 $generated@@81) $generated@@83)  (or (= $generated@@82 $generated@@31) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@83 $generated@@82) $generated@@1)))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@82 ($generated@@37 $generated@@81) $generated@@83))
)))
(assert (forall (($generated@@85 Int) ) (! (= ($generated@@84 $generated@@85) $generated@@85)
 :pattern ( ($generated@@84 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@86 $generated@@88 $generated@@87) $generated@@87)
 :pattern ( ($generated@@86 $generated@@88 $generated@@87))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@89 $generated@@91 ($generated@@53 $generated@@91 $generated@@90)) $generated@@90)
 :pattern ( ($generated@@53 $generated@@91 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@33 $generated@@44 $generated@@93 ($generated@@45 $generated@@92))  (and ($generated@@33 $generated@@44 $generated@@93 ($generated@@30 $generated@@92)) (or (not (= $generated@@93 $generated@@31)) (not true))))
 :pattern ( ($generated@@33 $generated@@44 $generated@@93 ($generated@@45 $generated@@92)))
 :pattern ( ($generated@@33 $generated@@44 $generated@@93 ($generated@@30 $generated@@92)))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@33 $generated@@44 $generated@@95 ($generated@@49 $generated@@94))  (and ($generated@@33 $generated@@44 $generated@@95 ($generated@@37 $generated@@94)) (or (not (= $generated@@95 $generated@@31)) (not true))))
 :pattern ( ($generated@@33 $generated@@44 $generated@@95 ($generated@@49 $generated@@94)))
 :pattern ( ($generated@@33 $generated@@44 $generated@@95 ($generated@@37 $generated@@94)))
)))
(assert (forall (($generated@@97 T@U) ) (!  (and (= ($generated@@28 ($generated@@30 $generated@@97)) $generated@@2) (= ($generated@@96 ($generated@@30 $generated@@97)) $generated@@8))
 :pattern ( ($generated@@30 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ) (!  (and (= ($generated@@28 ($generated@@45 $generated@@98)) $generated@@3) (= ($generated@@96 ($generated@@45 $generated@@98)) $generated@@8))
 :pattern ( ($generated@@45 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ) (!  (and (= ($generated@@28 ($generated@@37 $generated@@99)) $generated@@4) (= ($generated@@96 ($generated@@37 $generated@@99)) $generated@@9))
 :pattern ( ($generated@@37 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ) (!  (and (= ($generated@@28 ($generated@@49 $generated@@100)) $generated@@5) (= ($generated@@96 ($generated@@49 $generated@@100)) $generated@@9))
 :pattern ( ($generated@@49 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@28 ($generated@@101 $generated@@102)) $generated@@7) (= ($generated@@96 ($generated@@101 $generated@@102)) $generated@@11))
 :pattern ( ($generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@33 $generated@@44 $generated@@104 ($generated@@30 $generated@@103))  (or (= $generated@@104 $generated@@31) (= ($generated@@32 $generated@@104) ($generated@@30 $generated@@103))))
 :pattern ( ($generated@@33 $generated@@44 $generated@@104 ($generated@@30 $generated@@103)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@33 $generated@@44 $generated@@106 ($generated@@37 $generated@@105))  (or (= $generated@@106 $generated@@31) (= ($generated@@32 $generated@@106) ($generated@@37 $generated@@105))))
 :pattern ( ($generated@@33 $generated@@44 $generated@@106 ($generated@@37 $generated@@105)))
)))
(assert  (=> (<= 0 $generated@@107) (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (or ($generated@@109 $generated@@110 $generated@@111) (and (< 0 $generated@@107) ($generated@@33 $generated@@44 $generated@@111 ($generated@@49 $generated@@110)))) (= ($generated@@108 $generated@@110 $generated@@111) (+ ($generated@@36 $generated@@111) ($generated@@40 $generated@@111))))
 :pattern ( ($generated@@108 $generated@@110 $generated@@111))
))))
(assert (forall (($generated@@112 T@U) ) (! (<= 0 ($generated@@29 $generated@@112))
 :pattern ( ($generated@@29 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ) (! (<= 0 ($generated@@36 $generated@@113))
 :pattern ( ($generated@@36 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ) (! (<= 0 ($generated@@40 $generated@@114))
 :pattern ( ($generated@@40 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@115 ($generated@@30 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@30 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ) (! (= ($generated@@117 ($generated@@45 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@45 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@119 ($generated@@37 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@37 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@49 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@49 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@123 ($generated@@101 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@101 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@53 $generated@@126 ($generated@@89 $generated@@126 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@89 $generated@@126 $generated@@125))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (and (and ($generated@@127 $generated@@129) (and (or (not (= $generated@@130 $generated@@31)) (not true)) (= ($generated@@32 $generated@@130) ($generated@@30 $generated@@128)))) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@129 $generated@@130) $generated@@1)))) ($generated@@43 $generated@@14 ($generated@@18 ($generated@@29 $generated@@130)) $generated $generated@@129))
 :pattern ( ($generated@@29 $generated@@130) ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@129 $generated@@130) $generated@@1)) ($generated@@30 $generated@@128))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> (and (and ($generated@@127 $generated@@132) (and (or (not (= $generated@@133 $generated@@31)) (not true)) (= ($generated@@32 $generated@@133) ($generated@@37 $generated@@131)))) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@132 $generated@@133) $generated@@1)))) ($generated@@43 $generated@@14 ($generated@@18 ($generated@@36 $generated@@133)) $generated $generated@@132))
 :pattern ( ($generated@@36 $generated@@133) ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@132 $generated@@133) $generated@@1)) ($generated@@37 $generated@@131))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and (and ($generated@@127 $generated@@135) (and (or (not (= $generated@@136 $generated@@31)) (not true)) (= ($generated@@32 $generated@@136) ($generated@@37 $generated@@134)))) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@135 $generated@@136) $generated@@1)))) ($generated@@43 $generated@@14 ($generated@@18 ($generated@@40 $generated@@136)) $generated $generated@@135))
 :pattern ( ($generated@@40 $generated@@136) ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@135 $generated@@136) $generated@@1)) ($generated@@37 $generated@@134))
)))
(assert  (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@137 $generated@@140 $generated@@141 $generated@@142 ($generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@145 $generated@@146) $generated@@143)
 :weight 0
)) (and (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (or (= $generated@@152 $generated@@154) (= ($generated@@137 $generated@@147 $generated@@148 $generated@@149 ($generated@@139 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@152 $generated@@153 $generated@@150) $generated@@154 $generated@@155) ($generated@@137 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@154 $generated@@155)))
 :weight 0
)) (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (or (= $generated@@162 $generated@@164) (= ($generated@@137 $generated@@156 $generated@@157 $generated@@158 ($generated@@139 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@161 $generated@@162 $generated@@159) $generated@@163 $generated@@164) ($generated@@137 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@163 $generated@@164)))
 :weight 0
)))))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 Bool) ($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@17 ($generated@@137 $generated@@44 $generated@@55 $generated@@13 ($generated@@138 $generated@@165 $generated@@166 $generated@@167 $generated@@168) $generated@@169 $generated@@170))  (=> (and (or (not (= $generated@@169 $generated@@165)) (not true)) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@44 ($generated@@57 $generated@@55 $generated@@56) $generated@@166 $generated@@169) $generated@@167)))) $generated@@168))
 :pattern ( ($generated@@137 $generated@@44 $generated@@55 $generated@@13 ($generated@@138 $generated@@165 $generated@@166 $generated@@167 $generated@@168) $generated@@169 $generated@@170))
)))
(assert (= ($generated@@28 $generated@@171) $generated@@6))
(assert (= ($generated@@96 $generated@@171) $generated@@10))
(assert (forall (($generated@@172 Int) ) (! (= ($generated@@89 $generated@@14 ($generated@@18 ($generated@@84 $generated@@172))) ($generated@@86 $generated@@56 ($generated@@89 $generated@@14 ($generated@@18 $generated@@172))))
 :pattern ( ($generated@@89 $generated@@14 ($generated@@18 ($generated@@84 $generated@@172))))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@T) ) (! (= ($generated@@89 $generated@@174 ($generated@@86 $generated@@174 $generated@@173)) ($generated@@86 $generated@@56 ($generated@@89 $generated@@174 $generated@@173)))
 :pattern ( ($generated@@89 $generated@@174 ($generated@@86 $generated@@174 $generated@@173)))
)))
(assert  (=> (<= 0 $generated@@107) (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (or ($generated@@109 $generated@@175 $generated@@176) (and (< 0 $generated@@107) ($generated@@33 $generated@@44 $generated@@176 ($generated@@49 $generated@@175)))) (<= ($generated@@84 0) ($generated@@108 $generated@@175 $generated@@176)))
 :pattern ( ($generated@@108 $generated@@175 $generated@@176))
))))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (! ($generated@@43 $generated@@14 $generated@@178 $generated $generated@@177)
 :pattern ( ($generated@@43 $generated@@14 $generated@@178 $generated $generated@@177))
)))
(assert  (=> (<= 0 $generated@@107) (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> (or ($generated@@109 $generated@@179 ($generated@@86 $generated@@44 $generated@@180)) (and (< 0 $generated@@107) ($generated@@33 $generated@@44 $generated@@180 ($generated@@49 $generated@@179)))) (= ($generated@@108 $generated@@179 ($generated@@86 $generated@@44 $generated@@180)) ($generated@@84 (+ ($generated@@36 ($generated@@86 $generated@@44 $generated@@180)) ($generated@@40 ($generated@@86 $generated@@44 $generated@@180))))))
 :weight 3
 :pattern ( ($generated@@108 $generated@@179 ($generated@@86 $generated@@44 $generated@@180)))
))))
(assert (forall (($generated@@181 T@U) ) (! ($generated@@33 $generated@@14 $generated@@181 $generated)
 :pattern ( ($generated@@33 $generated@@14 $generated@@181 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 (T@U) Bool)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@228  (=> (= $generated@@182 ($generated@@138 $generated@@31 $generated@@183 $generated@@1 false)) (=> (and ($generated@@33 $generated@@44 $generated@@184 ($generated@@45 ($generated@@45 $generated))) ($generated@@43 $generated@@44 $generated@@184 ($generated@@45 ($generated@@45 $generated)) $generated@@183)) (=> (and (and (and ($generated@@33 $generated@@44 $generated@@185 ($generated@@45 $generated@@171)) ($generated@@43 $generated@@44 $generated@@185 ($generated@@45 $generated@@171) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@186 ($generated@@45 ($generated@@101 ($generated@@45 $generated)))) ($generated@@43 $generated@@44 $generated@@186 ($generated@@45 ($generated@@101 ($generated@@45 $generated))) $generated@@183))) (and (and ($generated@@33 $generated@@44 $generated@@187 ($generated@@45 ($generated@@45 $generated@@188))) ($generated@@43 $generated@@44 $generated@@187 ($generated@@45 ($generated@@45 $generated@@188)) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@189 ($generated@@49 ($generated@@45 $generated))) ($generated@@43 $generated@@44 $generated@@189 ($generated@@49 ($generated@@45 $generated)) $generated@@183)))) (=> (and (and (and (and (and ($generated@@33 $generated@@44 $generated@@190 ($generated@@49 $generated@@171)) ($generated@@43 $generated@@44 $generated@@190 ($generated@@49 $generated@@171) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@191 ($generated@@49 ($generated@@101 ($generated@@45 $generated)))) ($generated@@43 $generated@@44 $generated@@191 ($generated@@49 ($generated@@101 ($generated@@45 $generated))) $generated@@183))) (and (and ($generated@@33 $generated@@44 $generated@@192 ($generated@@49 ($generated@@45 $generated@@188))) ($generated@@43 $generated@@44 $generated@@192 ($generated@@49 ($generated@@45 $generated@@188)) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@193 ($generated@@49 ($generated@@49 $generated))) ($generated@@43 $generated@@44 $generated@@193 ($generated@@49 ($generated@@49 $generated)) $generated@@183)))) (and (and (and ($generated@@33 $generated@@44 $generated@@194 ($generated@@49 ($generated@@49 $generated@@188))) ($generated@@43 $generated@@44 $generated@@194 ($generated@@49 ($generated@@49 $generated@@188)) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@195 ($generated@@45 ($generated@@49 $generated))) ($generated@@43 $generated@@44 $generated@@195 ($generated@@45 ($generated@@49 $generated)) $generated@@183))) (and (and ($generated@@33 $generated@@44 $generated@@196 ($generated@@45 ($generated@@49 $generated@@188))) ($generated@@43 $generated@@44 $generated@@196 ($generated@@45 ($generated@@49 $generated@@188)) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@197 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@197 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188)))) $generated@@183))))) (and (and (and (and ($generated@@33 $generated@@44 $generated@@198 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@198 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@199 ($generated@@45 ($generated@@45 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@199 ($generated@@45 ($generated@@45 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183))) (and (and ($generated@@33 $generated@@44 $generated@@200 ($generated@@45 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@200 ($generated@@45 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@201 ($generated@@45 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@201 ($generated@@45 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183)))) (and (and (and ($generated@@33 $generated@@44 $generated@@202 ($generated@@49 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@202 ($generated@@49 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@203 ($generated@@49 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@203 ($generated@@49 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183))) (and (and ($generated@@33 $generated@@44 $generated@@204 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@204 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) (and ($generated@@33 $generated@@44 $generated@@205 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@205 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188)))) $generated@@183)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $generated@@184 $generated@@31)) (not true))) (=> (or (not (= $generated@@184 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $generated@@185 $generated@@31)) (not true))) (=> (or (not (= $generated@@185 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $generated@@186 $generated@@31)) (not true))) (=> (or (not (= $generated@@186 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $generated@@187 $generated@@31)) (not true))) (=> (or (not (= $generated@@187 $generated@@31)) (not true)) (=> (and (and ($generated@@43 $generated@@44 $generated@@189 ($generated@@49 ($generated@@45 $generated)) $generated@@183) ($generated@@109 ($generated@@45 $generated) $generated@@189)) (and ($generated@@43 $generated@@44 $generated@@190 ($generated@@49 $generated@@171) $generated@@183) ($generated@@109 $generated@@171 $generated@@190))) (=> (and (and (and ($generated@@43 $generated@@44 $generated@@191 ($generated@@49 ($generated@@101 ($generated@@45 $generated))) $generated@@183) ($generated@@109 ($generated@@101 ($generated@@45 $generated)) $generated@@191)) (and ($generated@@43 $generated@@44 $generated@@192 ($generated@@49 ($generated@@45 $generated@@188)) $generated@@183) ($generated@@109 ($generated@@45 $generated@@188) $generated@@192))) (and (and ($generated@@43 $generated@@44 $generated@@193 ($generated@@49 ($generated@@49 $generated)) $generated@@183) ($generated@@109 ($generated@@49 $generated) $generated@@193)) (and ($generated@@43 $generated@@44 $generated@@194 ($generated@@49 ($generated@@49 $generated@@188)) $generated@@183) ($generated@@109 ($generated@@49 $generated@@188) $generated@@194)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $generated@@195 $generated@@31)) (not true))) (=> (or (not (= $generated@@195 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $generated@@196 $generated@@31)) (not true))) (=> (or (not (= $generated@@196 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $generated@@197 $generated@@31)) (not true))) (=> (or (not (= $generated@@197 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $generated@@198 $generated@@31)) (not true))) (=> (or (not (= $generated@@198 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@199 $generated@@31)) (not true))) (=> (or (not (= $generated@@199 $generated@@31)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@200 $generated@@31)) (not true))) (=> (or (not (= $generated@@200 $generated@@31)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $generated@@201 $generated@@31)) (not true)))))))))))))))))))))))))))))))
(let (($generated@@229  (=> (and ($generated@@127 $generated@@183) ($generated@@206 $generated@@183)) (=> (and (and (and ($generated@@33 $generated@@44 $generated@@207 ($generated@@45 ($generated@@45 $generated))) ($generated@@43 $generated@@44 $generated@@207 ($generated@@45 ($generated@@45 $generated)) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@208 ($generated@@45 $generated@@171)) ($generated@@43 $generated@@44 $generated@@208 ($generated@@45 $generated@@171) $generated@@183)) true)) (=> (and (and (and (and ($generated@@33 $generated@@44 $generated@@209 ($generated@@45 ($generated@@101 ($generated@@45 $generated)))) ($generated@@43 $generated@@44 $generated@@209 ($generated@@45 ($generated@@101 ($generated@@45 $generated))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@210 ($generated@@45 ($generated@@45 $generated@@188))) ($generated@@43 $generated@@44 $generated@@210 ($generated@@45 ($generated@@45 $generated@@188)) $generated@@183)) true)) (and (and (and ($generated@@33 $generated@@44 $generated@@211 ($generated@@49 ($generated@@45 $generated))) ($generated@@43 $generated@@44 $generated@@211 ($generated@@49 ($generated@@45 $generated)) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@212 ($generated@@49 $generated@@171)) ($generated@@43 $generated@@44 $generated@@212 ($generated@@49 $generated@@171) $generated@@183)) true))) (=> (and (and (and (and (and (and ($generated@@33 $generated@@44 $generated@@213 ($generated@@49 ($generated@@101 ($generated@@45 $generated)))) ($generated@@43 $generated@@44 $generated@@213 ($generated@@49 ($generated@@101 ($generated@@45 $generated))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@214 ($generated@@49 ($generated@@45 $generated@@188))) ($generated@@43 $generated@@44 $generated@@214 ($generated@@49 ($generated@@45 $generated@@188)) $generated@@183)) true)) (and (and (and ($generated@@33 $generated@@44 $generated@@215 ($generated@@49 ($generated@@49 $generated))) ($generated@@43 $generated@@44 $generated@@215 ($generated@@49 ($generated@@49 $generated)) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@216 ($generated@@49 ($generated@@49 $generated@@188))) ($generated@@43 $generated@@44 $generated@@216 ($generated@@49 ($generated@@49 $generated@@188)) $generated@@183)) true))) (and (and (and (and ($generated@@33 $generated@@44 $generated@@217 ($generated@@45 ($generated@@49 $generated))) ($generated@@43 $generated@@44 $generated@@217 ($generated@@45 ($generated@@49 $generated)) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@218 ($generated@@45 ($generated@@49 $generated@@188))) ($generated@@43 $generated@@44 $generated@@218 ($generated@@45 ($generated@@49 $generated@@188)) $generated@@183)) true)) (and (and (and ($generated@@33 $generated@@44 $generated@@219 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@219 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188)))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@220 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@220 ($generated@@45 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) true)))) (and (and (and (and (and ($generated@@33 $generated@@44 $generated@@221 ($generated@@45 ($generated@@45 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@221 ($generated@@45 ($generated@@45 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@222 ($generated@@45 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@222 ($generated@@45 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) true)) (and (and (and ($generated@@33 $generated@@44 $generated@@223 ($generated@@45 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@223 ($generated@@45 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@224 ($generated@@49 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@224 ($generated@@49 ($generated@@49 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) true))) (and (and (and (and ($generated@@33 $generated@@44 $generated@@225 ($generated@@49 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@225 ($generated@@49 ($generated@@49 ($generated@@49 ($generated@@45 $generated@@188)))) $generated@@183)) true) (and (and ($generated@@33 $generated@@44 $generated@@226 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@226 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@49 $generated@@188)))) $generated@@183)) true)) (and (and (and ($generated@@33 $generated@@44 $generated@@227 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188))))) ($generated@@43 $generated@@44 $generated@@227 ($generated@@49 ($generated@@45 ($generated@@45 ($generated@@45 $generated@@188)))) $generated@@183)) true) (and (= 1 $generated@@107) (= (ControlFlow 0 13) 2)))))) $generated@@228))))))
$generated@@229)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)