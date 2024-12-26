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
(declare-fun $generated@@1 (T@T) Int)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 (Bool) T@U)
(declare-fun $generated@@6 (T@U) Bool)
(declare-fun $generated@@7 (Int) T@U)
(declare-fun $generated@@8 (T@U) Int)
(declare-fun $generated@@9 (Real) T@U)
(declare-fun $generated@@10 (T@U) Real)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (T@U T@U) T@U)
(declare-fun $generated@@19 (T@U T@U) T@U)
(declare-fun $generated@@20 (T@U T@U) T@U)
(declare-fun $generated@@23 (Int Int) Int)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@32 (T@U T@U) Int)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@T T@T) T@T)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@68 (Int) Int)
(declare-fun $generated@@70 (Int) Int)
(declare-fun $generated@@72 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@81 (T@U T@U) T@U)
(declare-fun $generated@@87 (T@U T@U T@U) Bool)
(declare-fun $generated@@88 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@104 (T@U T@U) Bool)
(declare-fun $generated@@107 (T@U T@U) Bool)
(declare-fun $generated@@120 () T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@137 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@139 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@193 (T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@1 $generated@@2) 0) (= ($generated@@1 $generated@@3) 1)) (= ($generated@@1 $generated@@4) 2)) (forall (($generated@@11 Bool) ) (! (= ($generated@@6 ($generated@@5 $generated@@11)) $generated@@11)
 :pattern ( ($generated@@5 $generated@@11))
))) (forall (($generated@@12 T@U) ) (! (= ($generated@@5 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 Int) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Real) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))))
(assert (distinct $generated $generated@@0)
)
(assert (forall (($generated@@21 T@U) ($generated@@22 T@U) ) (!  (and (= (+ (+ ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)) ($generated@@17 ($generated@@18 $generated@@22 $generated@@21))) (* 2 ($generated@@17 ($generated@@19 $generated@@21 $generated@@22)))) ($generated@@17 ($generated@@20 $generated@@21 $generated@@22))) (= ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)) (- ($generated@@17 $generated@@21) ($generated@@17 ($generated@@19 $generated@@21 $generated@@22)))))
 :pattern ( ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)))
)))
(assert (forall (($generated@@24 Int) ($generated@@25 Int) ) (!  (or (= ($generated@@23 $generated@@24 $generated@@25) $generated@@24) (= ($generated@@23 $generated@@24 $generated@@25) $generated@@25))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25))
)))
(assert (= ($generated@@1 $generated@@27) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)) ($generated@@29 $generated@@30))
 :pattern ( ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (<= ($generated@@32 $generated@@33 $generated@@35) ($generated@@32 $generated@@34 $generated@@35)) (= ($generated@@32 ($generated@@18 $generated@@33 $generated@@34) $generated@@35) 0))
 :pattern ( ($generated@@18 $generated@@33 $generated@@34) ($generated@@32 $generated@@34 $generated@@35) ($generated@@32 $generated@@33 $generated@@35))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@19 ($generated@@19 $generated@@36 $generated@@37) $generated@@37) ($generated@@19 $generated@@36 $generated@@37))
 :pattern ( ($generated@@19 ($generated@@19 $generated@@36 $generated@@37) $generated@@37))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@39 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@39 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@39 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@1 $generated@@40) 4)) (= ($generated@@1 $generated@@41) 5)) (= ($generated@@1 $generated@@42) 6)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@1 ($generated@@43 $generated@@59 $generated@@60)) 7))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@43 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@43 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@43 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@43 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@38 $generated@@65 $generated@@66) (forall (($generated@@67 T@U) ) (!  (=> ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@65 $generated@@67) $generated@@0))) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@66 $generated@@67) $generated@@0))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@66 $generated@@67) $generated@@0))
)))
 :pattern ( ($generated@@38 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@69 Int) ) (!  (=> (<= 0 $generated@@69) (= ($generated@@68 $generated@@69) $generated@@69))
 :pattern ( ($generated@@68 $generated@@69))
)))
(assert (forall (($generated@@71 Int) ) (! (= ($generated@@70 $generated@@71) $generated@@71)
 :pattern ( ($generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@72 $generated@@74 $generated@@73) $generated@@73)
 :pattern ( ($generated@@72 $generated@@74 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@32 ($generated@@19 $generated@@75 $generated@@76) $generated@@77) ($generated@@23 ($generated@@32 $generated@@75 $generated@@77) ($generated@@32 $generated@@76 $generated@@77)))
 :pattern ( ($generated@@32 ($generated@@19 $generated@@75 $generated@@76) $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 ($generated@@44 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@44 $generated@@80 $generated@@79))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (or (not (= $generated@@83 $generated@@84)) (not true)) (= ($generated@@32 $generated@@82 $generated@@84) ($generated@@32 ($generated@@81 $generated@@82 $generated@@83) $generated@@84)))
 :pattern ( ($generated@@81 $generated@@82 $generated@@83) ($generated@@32 $generated@@82 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@17 ($generated@@81 $generated@@85 $generated@@86)) (+ ($generated@@17 $generated@@85) 1))
 :pattern ( ($generated@@17 ($generated@@81 $generated@@85 $generated@@86)))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@87 ($generated@@78 $generated@@92 $generated@@89) $generated@@90 $generated@@91) ($generated@@88 $generated@@92 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@87 ($generated@@78 $generated@@92 $generated@@89) $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> ($generated@@38 $generated@@93 $generated@@94) (=> ($generated@@87 $generated@@95 $generated@@96 $generated@@93) ($generated@@87 $generated@@95 $generated@@96 $generated@@94)))
 :pattern ( ($generated@@38 $generated@@93 $generated@@94) ($generated@@87 $generated@@95 $generated@@96 $generated@@93))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (!  (=> ($generated@@38 $generated@@97 $generated@@98) (=> ($generated@@88 $generated@@101 $generated@@99 $generated@@100 $generated@@97) ($generated@@88 $generated@@101 $generated@@99 $generated@@100 $generated@@98)))
 :pattern ( ($generated@@38 $generated@@97 $generated@@98) ($generated@@88 $generated@@101 $generated@@99 $generated@@100 $generated@@97))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@17 ($generated@@20 $generated@@102 $generated@@103)) (+ ($generated@@17 $generated@@102) ($generated@@17 $generated@@103)))
 :pattern ( ($generated@@17 ($generated@@20 $generated@@102 $generated@@103)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> ($generated@@104 $generated@@105 $generated@@106) (= $generated@@105 $generated@@106))
 :pattern ( ($generated@@104 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@108 ($generated@@28 $generated@@109)) (forall (($generated@@110 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@108 $generated@@110)) ($generated@@107 $generated@@110 $generated@@109))
 :pattern ( ($generated@@32 $generated@@108 $generated@@110))
)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@108 ($generated@@28 $generated@@109)))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> (or (not (= $generated@@111 $generated@@113)) (not true)) (=> (and ($generated@@38 $generated@@111 $generated@@112) ($generated@@38 $generated@@112 $generated@@113)) ($generated@@38 $generated@@111 $generated@@113)))
 :pattern ( ($generated@@38 $generated@@111 $generated@@112) ($generated@@38 $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@T) ) (! (= ($generated@@107 ($generated@@78 $generated@@116 $generated@@114) $generated@@115) ($generated@@26 $generated@@116 $generated@@114 $generated@@115))
 :pattern ( ($generated@@107 ($generated@@78 $generated@@116 $generated@@114) $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@29 $generated@@117) (forall (($generated@@118 T@U) ) (!  (and (<= 0 ($generated@@32 $generated@@117 $generated@@118)) (<= ($generated@@32 $generated@@117 $generated@@118) ($generated@@17 $generated@@117)))
 :pattern ( ($generated@@32 $generated@@117 $generated@@118))
)))
 :pattern ( ($generated@@29 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (<= 0 ($generated@@17 $generated@@119))
 :pattern ( ($generated@@17 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@32 $generated@@120 $generated@@121) 0)
 :pattern ( ($generated@@32 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@32 ($generated@@81 $generated@@122 $generated@@123) $generated@@123) (+ ($generated@@32 $generated@@122 $generated@@123) 1))
 :pattern ( ($generated@@81 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ) (! (= ($generated@@124 ($generated@@28 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@28 $generated@@125))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@126 ($generated@@28 $generated@@127)) $generated)
 :pattern ( ($generated@@28 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@44 $generated@@129 ($generated@@78 $generated@@129 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@78 $generated@@129 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@19 $generated@@130 ($generated@@19 $generated@@130 $generated@@131)) ($generated@@19 $generated@@130 $generated@@131))
 :pattern ( ($generated@@19 $generated@@130 ($generated@@19 $generated@@130 $generated@@131)))
)))
(assert (forall (($generated@@132 T@U) ) (!  (and (= (= ($generated@@17 $generated@@132) 0) (= $generated@@132 $generated@@120)) (=> (or (not (= ($generated@@17 $generated@@132) 0)) (not true)) (exists (($generated@@133 T@U) ) (! (< 0 ($generated@@32 $generated@@132 $generated@@133))
 :pattern ( ($generated@@32 $generated@@132 $generated@@133))
))))
 :pattern ( ($generated@@17 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@32 ($generated@@20 $generated@@134 $generated@@135) $generated@@136) (+ ($generated@@32 $generated@@134 $generated@@136) ($generated@@32 $generated@@135 $generated@@136)))
 :pattern ( ($generated@@32 ($generated@@20 $generated@@134 $generated@@135) $generated@@136))
)))
(assert  (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@137 $generated@@140 $generated@@141 $generated@@142 ($generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@145 $generated@@146) $generated@@143)
 :weight 0
)) (and (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (or (= $generated@@152 $generated@@154) (= ($generated@@137 $generated@@147 $generated@@148 $generated@@149 ($generated@@139 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@152 $generated@@153 $generated@@150) $generated@@154 $generated@@155) ($generated@@137 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@154 $generated@@155)))
 :weight 0
)) (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (or (= $generated@@162 $generated@@164) (= ($generated@@137 $generated@@156 $generated@@157 $generated@@158 ($generated@@139 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@161 $generated@@162 $generated@@159) $generated@@163 $generated@@164) ($generated@@137 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@163 $generated@@164)))
 :weight 0
)))))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 Bool) ($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@6 ($generated@@137 $generated@@42 $generated@@40 $generated@@2 ($generated@@138 $generated@@165 $generated@@166 $generated@@167 $generated@@168) $generated@@169 $generated@@170))  (=> (and (or (not (= $generated@@169 $generated@@165)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@166 $generated@@169) $generated@@167)))) $generated@@168))
 :pattern ( ($generated@@137 $generated@@42 $generated@@40 $generated@@2 ($generated@@138 $generated@@165 $generated@@166 $generated@@167 $generated@@168) $generated@@169 $generated@@170))
)))
(assert (forall (($generated@@171 Int) ($generated@@172 Int) ) (! (= (<= $generated@@171 $generated@@172) (= ($generated@@23 $generated@@171 $generated@@172) $generated@@171))
 :pattern ( ($generated@@23 $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 Int) ($generated@@174 Int) ) (! (= (<= $generated@@174 $generated@@173) (= ($generated@@23 $generated@@173 $generated@@174) $generated@@174))
 :pattern ( ($generated@@23 $generated@@173 $generated@@174))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> ($generated@@107 $generated@@175 ($generated@@28 $generated@@176)) (and (= ($generated@@78 $generated@@27 ($generated@@44 $generated@@27 $generated@@175)) $generated@@175) ($generated@@26 $generated@@27 ($generated@@44 $generated@@27 $generated@@175) ($generated@@28 $generated@@176))))
 :pattern ( ($generated@@107 $generated@@175 ($generated@@28 $generated@@176)))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@32 ($generated@@18 $generated@@177 $generated@@178) $generated@@179) ($generated@@68 (- ($generated@@32 $generated@@177 $generated@@179) ($generated@@32 $generated@@178 $generated@@179))))
 :pattern ( ($generated@@32 ($generated@@18 $generated@@177 $generated@@178) $generated@@179))
)))
(assert (forall (($generated@@180 Int) ) (!  (=> (< $generated@@180 0) (= ($generated@@68 $generated@@180) 0))
 :pattern ( ($generated@@68 $generated@@180))
)))
(assert (forall (($generated@@181 Int) ) (! (= ($generated@@78 $generated@@3 ($generated@@7 ($generated@@70 $generated@@181))) ($generated@@72 $generated@@41 ($generated@@78 $generated@@3 ($generated@@7 $generated@@181))))
 :pattern ( ($generated@@78 $generated@@3 ($generated@@7 ($generated@@70 $generated@@181))))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@T) ) (! (= ($generated@@78 $generated@@183 ($generated@@72 $generated@@183 $generated@@182)) ($generated@@72 $generated@@41 ($generated@@78 $generated@@183 $generated@@182)))
 :pattern ( ($generated@@78 $generated@@183 ($generated@@72 $generated@@183 $generated@@182)))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@184 $generated@@186)) (< 0 ($generated@@32 ($generated@@81 $generated@@184 $generated@@185) $generated@@186)))
 :pattern ( ($generated@@81 $generated@@184 $generated@@185) ($generated@@32 $generated@@184 $generated@@186))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= (< 0 ($generated@@32 ($generated@@81 $generated@@187 $generated@@188) $generated@@189))  (or (= $generated@@189 $generated@@188) (< 0 ($generated@@32 $generated@@187 $generated@@189))))
 :pattern ( ($generated@@32 ($generated@@81 $generated@@187 $generated@@188) $generated@@189))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@104 $generated@@190 $generated@@191) (forall (($generated@@192 T@U) ) (! (= ($generated@@32 $generated@@190 $generated@@192) ($generated@@32 $generated@@191 $generated@@192))
 :pattern ( ($generated@@32 $generated@@190 $generated@@192))
 :pattern ( ($generated@@32 $generated@@191 $generated@@192))
)))
 :pattern ( ($generated@@104 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@193 $generated@@194 $generated@@195) (forall (($generated@@196 T@U) ) (! (<= ($generated@@32 $generated@@194 $generated@@196) ($generated@@32 $generated@@195 $generated@@196))
 :pattern ( ($generated@@32 $generated@@194 $generated@@196))
 :pattern ( ($generated@@32 $generated@@195 $generated@@196))
)))
 :pattern ( ($generated@@193 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@88 $generated@@27 $generated@@197 ($generated@@28 $generated@@198) $generated@@199) (forall (($generated@@200 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@197 $generated@@200)) ($generated@@87 $generated@@200 $generated@@198 $generated@@199))
 :pattern ( ($generated@@32 $generated@@197 $generated@@200))
)))
 :pattern ( ($generated@@88 $generated@@27 $generated@@197 ($generated@@28 $generated@@198) $generated@@199))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () Int)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () Bool)
(declare-fun $generated@@209 () Int)
(declare-fun $generated@@210 () Bool)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () Int)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 (T@U) Bool)
(declare-fun $generated@@217 (T@U) Bool)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () Bool)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () Int)
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
 (=> (= (ControlFlow 0 0) 17) (let (($generated@@222  (and (=> (= (ControlFlow 0 6) (- 0 9)) (exists (($generated@@223 T@U) )  (and ($generated@@107 $generated@@223 $generated@@201) (> ($generated@@32 $generated@@202 $generated@@223) 0)))) (=> (exists (($generated@@224 T@U) )  (and ($generated@@107 $generated@@224 $generated@@201) (> ($generated@@32 $generated@@202 $generated@@224) 0))) (=> (and (=> true (and ($generated@@107 $generated@@203 $generated@@201) ($generated@@87 $generated@@203 $generated@@201 $generated@@204))) (> ($generated@@32 $generated@@202 $generated@@203) 0)) (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (=> (= $generated@@205 ($generated@@18 $generated@@202 ($generated@@81 $generated@@120 $generated@@203))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (<= 0 $generated@@206) (= ($generated@@17 $generated@@205) $generated@@206))) (=> (or (<= 0 $generated@@206) (= ($generated@@17 $generated@@205) $generated@@206)) (=> (= (ControlFlow 0 6) (- 0 5)) (< ($generated@@17 $generated@@205) $generated@@206)))))))))))
(let (($generated@@225  (=> (and (not (and ($generated@@107 $generated@@207 $generated@@201) ($generated@@87 $generated@@207 $generated@@201 $generated@@204))) (= (ControlFlow 0 11) 6)) $generated@@222)))
(let (($generated@@226  (=> (and (and ($generated@@107 $generated@@207 $generated@@201) ($generated@@87 $generated@@207 $generated@@201 $generated@@204)) (= (ControlFlow 0 10) 6)) $generated@@222)))
(let (($generated@@227  (=> (and (and ($generated@@193 $generated@@120 $generated@@202) (not ($generated@@104 $generated@@120 $generated@@202))) (= $generated@@206 ($generated@@17 $generated@@202))) (and (=> (= (ControlFlow 0 12) 10) $generated@@226) (=> (= (ControlFlow 0 12) 11) $generated@@225)))))
(let (($generated@@228 true))
(let (($generated@@229  (=> $generated@@208 (and (=> (= (ControlFlow 0 13) 4) $generated@@228) (=> (= (ControlFlow 0 13) 12) $generated@@227)))))
(let (($generated@@230  (=> (not $generated@@208) (=> (and (= $generated@@209 ($generated@@17 $generated@@202)) (= (ControlFlow 0 3) (- 0 2))) (<= ($generated@@70 0) $generated@@209)))))
(let (($generated@@231  (and (=> (= (ControlFlow 0 14) 3) $generated@@230) (=> (= (ControlFlow 0 14) 13) $generated@@229))))
(let (($generated@@232 true))
(let (($generated@@233  (=> (=> $generated@@210 (and ($generated@@107 $generated@@211 $generated@@201) ($generated@@87 $generated@@211 $generated@@201 $generated@@204))) (=> (and (and (and ($generated@@26 $generated@@27 $generated@@202 ($generated@@28 $generated@@201)) ($generated@@88 $generated@@27 $generated@@202 ($generated@@28 $generated@@201) $generated@@204)) (not false)) (and (and (forall (($generated@@234 T@U) ) (!  (=> (and (or (not (= $generated@@234 $generated@@212)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@234) $generated@@0)))) (= ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@234) ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@234)))
 :pattern ( ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@234))
)) ($generated@@38 $generated@@204 $generated@@204)) (and (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> (and (or (not (= $generated@@235 $generated@@212)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@235) $generated@@0)))) (or (= ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@235) $generated@@236) ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@235) $generated@@236)) ($generated@@6 ($generated@@137 $generated@@42 $generated@@40 $generated@@2 $generated@@213 $generated@@235 $generated@@236))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@204 $generated@@235) $generated@@236))
)) (<= ($generated@@17 $generated@@202) $generated@@214)))) (and (=> (= (ControlFlow 0 15) 1) $generated@@232) (=> (= (ControlFlow 0 15) 14) $generated@@231))))))
(let (($generated@@237  (=> (= $generated@@213 ($generated@@138 $generated@@212 $generated@@204 $generated@@0 false)) (=> (and (= $generated@@214 ($generated@@17 $generated@@215)) (= (ControlFlow 0 16) 15)) $generated@@233))))
(let (($generated@@238  (=> (and (and ($generated@@216 $generated@@204) ($generated@@217 $generated@@204)) (and ($generated@@26 $generated@@27 $generated@@215 ($generated@@28 $generated@@201)) ($generated@@88 $generated@@27 $generated@@215 ($generated@@28 $generated@@201) $generated@@204))) (=> (and (and (and ($generated@@26 $generated@@27 $generated@@218 ($generated@@28 $generated@@201)) ($generated@@88 $generated@@27 $generated@@218 ($generated@@28 $generated@@201) $generated@@204)) true) (and (and (=> $generated@@219 (and ($generated@@107 $generated@@220 $generated@@201) ($generated@@87 $generated@@220 $generated@@201 $generated@@204))) true) (and (= 0 $generated@@221) (= (ControlFlow 0 17) 16)))) $generated@@237))))
$generated@@238)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)