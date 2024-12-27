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
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@44 (T@T T@U T@U) Bool)
(declare-fun $generated@@48 (T@U T@U) Bool)
(declare-fun $generated@@52 () T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@T T@T) T@T)
(declare-fun $generated@@58 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@T) T@T)
(declare-fun $generated@@83 (T@U T@U) Bool)
(declare-fun $generated@@87 (T@T T@U) T@U)
(declare-fun $generated@@90 () T@T)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@92 (T@U T@U) Bool)
(declare-fun $generated@@96 (T@U T@U) T@U)
(declare-fun $generated@@102 (T@U T@U T@U) Bool)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@123 (T@U) Bool)
(declare-fun $generated@@135 () Int)
(declare-fun $generated@@136 (T@U T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@170 (T@U) T@U)
(declare-fun $generated@@172 (T@U) T@U)
(declare-fun $generated@@184 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@185 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@186 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) ($generated@@29 ($generated@@30 $generated@@31 $generated@@32) $generated@@31)))
(assert (= ($generated@@12 $generated@@34) 3))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@37) $generated@@39) ($generated@@33 $generated@@34 $generated@@38 ($generated@@36 $generated@@37) $generated@@39))
 :pattern ( ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@37) $generated@@39))
 :pattern ( ($generated@@33 $generated@@34 $generated@@38 ($generated@@36 $generated@@37) $generated@@39))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@42 $generated@@40 $generated@@43) ($generated@@33 $generated@@34 $generated@@42 $generated@@41 $generated@@43))
 :pattern ( ($generated@@33 $generated@@34 $generated@@42 $generated@@40 $generated@@43))
 :pattern ( ($generated@@33 $generated@@34 $generated@@42 $generated@@41 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> ($generated@@44 $generated@@34 $generated@@47 ($generated@@30 $generated@@45 $generated@@46)) ($generated@@44 $generated@@34 $generated@@47 ($generated@@36 $generated@@45)))
 :pattern ( ($generated@@44 $generated@@34 $generated@@47 ($generated@@30 $generated@@45 $generated@@46)))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> ($generated@@48 $generated@@51 ($generated@@30 $generated@@49 $generated@@50)) ($generated@@48 $generated@@51 ($generated@@36 $generated@@49)))
 :pattern ( ($generated@@48 $generated@@51 ($generated@@30 $generated@@49 $generated@@50)))
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
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@79 ($generated@@36 $generated@@78) $generated@@80)  (or (= $generated@@79 $generated@@52) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@80 $generated@@79) $generated@@2)))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@79 ($generated@@36 $generated@@78) $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@81 $generated@@41 $generated@@82)  (or (= $generated@@81 $generated@@52) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@82 $generated@@81) $generated@@2)))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@81 $generated@@41 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@83 $generated@@84 $generated@@85) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@84 $generated@@86) $generated@@2))) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@85 $generated@@86) $generated@@2))))
 :pattern ( ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@85 $generated@@86) $generated@@2))
)))
 :pattern ( ($generated@@83 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@87 $generated@@89 ($generated@@53 $generated@@89 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@53 $generated@@89 $generated@@88))
)))
(assert (= ($generated@@12 $generated@@90) 7))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@44 $generated@@90 $generated@@93 ($generated@@91 $generated@@94)) (forall (($generated@@95 T@U) ) (!  (=> ($generated@@92 $generated@@93 $generated@@95) ($generated@@48 $generated@@95 $generated@@94))
 :pattern ( ($generated@@92 $generated@@93 $generated@@95))
)))
 :pattern ( ($generated@@44 $generated@@90 $generated@@93 ($generated@@91 $generated@@94)))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@99 ($generated@@96 $generated@@97 $generated@@98))  (and ($generated@@44 $generated@@34 $generated@@99 ($generated@@30 $generated@@97 $generated@@98)) (or (not (= $generated@@99 $generated@@52)) (not true))))
 :pattern ( ($generated@@44 $generated@@34 $generated@@99 ($generated@@96 $generated@@97 $generated@@98)))
 :pattern ( ($generated@@44 $generated@@34 $generated@@99 ($generated@@30 $generated@@97 $generated@@98)))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@101 ($generated@@35 $generated@@100))  (and ($generated@@44 $generated@@34 $generated@@101 ($generated@@36 $generated@@100)) (or (not (= $generated@@101 $generated@@52)) (not true))))
 :pattern ( ($generated@@44 $generated@@34 $generated@@101 ($generated@@35 $generated@@100)))
 :pattern ( ($generated@@44 $generated@@34 $generated@@101 ($generated@@36 $generated@@100)))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@102 ($generated@@87 $generated@@106 $generated@@103) $generated@@104 $generated@@105) ($generated@@33 $generated@@106 $generated@@103 $generated@@104 $generated@@105))
 :pattern ( ($generated@@102 ($generated@@87 $generated@@106 $generated@@103) $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> ($generated@@83 $generated@@107 $generated@@108) (=> ($generated@@102 $generated@@109 $generated@@110 $generated@@107) ($generated@@102 $generated@@109 $generated@@110 $generated@@108)))
 :pattern ( ($generated@@83 $generated@@107 $generated@@108) ($generated@@102 $generated@@109 $generated@@110 $generated@@107))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@T) ) (!  (=> ($generated@@83 $generated@@111 $generated@@112) (=> ($generated@@33 $generated@@115 $generated@@113 $generated@@114 $generated@@111) ($generated@@33 $generated@@115 $generated@@113 $generated@@114 $generated@@112)))
 :pattern ( ($generated@@83 $generated@@111 $generated@@112) ($generated@@33 $generated@@115 $generated@@113 $generated@@114 $generated@@111))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@119 ($generated@@30 $generated@@117 $generated@@118))  (or (= $generated@@119 $generated@@52) (= ($generated@@116 $generated@@119) ($generated@@30 $generated@@117 $generated@@118))))
 :pattern ( ($generated@@44 $generated@@34 $generated@@119 ($generated@@30 $generated@@117 $generated@@118)))
)))
(assert (forall (($generated@@121 T@U) ) (!  (and (= ($generated@@28 ($generated@@36 $generated@@121)) $generated@@6) (= ($generated@@120 ($generated@@36 $generated@@121)) $generated@@11))
 :pattern ( ($generated@@36 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ) (!  (and (= ($generated@@28 ($generated@@35 $generated@@122)) $generated@@7) (= ($generated@@120 ($generated@@35 $generated@@122)) $generated@@11))
 :pattern ( ($generated@@35 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> (and ($generated@@102 $generated@@126 ($generated@@30 $generated@@124 $generated@@125) $generated@@127) ($generated@@123 $generated@@127)) ($generated@@102 $generated@@126 ($generated@@36 $generated@@124) $generated@@127))
 :pattern ( ($generated@@102 $generated@@126 ($generated@@30 $generated@@124 $generated@@125) $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@130 ($generated@@96 $generated@@128 $generated@@129) $generated@@131) ($generated@@33 $generated@@34 $generated@@130 ($generated@@30 $generated@@128 $generated@@129) $generated@@131))
 :pattern ( ($generated@@33 $generated@@34 $generated@@130 ($generated@@96 $generated@@128 $generated@@129) $generated@@131))
 :pattern ( ($generated@@33 $generated@@34 $generated@@130 ($generated@@30 $generated@@128 $generated@@129) $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ) (!  (=> ($generated@@48 $generated@@132 $generated@@41) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@132)) $generated@@132) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@132) $generated@@41)))
 :pattern ( ($generated@@48 $generated@@132 $generated@@41))
)))
(assert (forall (($generated@@133 T@U) ) (!  (=> ($generated@@48 $generated@@133 $generated@@40) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@133)) $generated@@133) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@133) $generated@@40)))
 :pattern ( ($generated@@48 $generated@@133 $generated@@40))
)))
(assert (forall (($generated@@134 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@134 $generated@@40)  (and ($generated@@44 $generated@@34 $generated@@134 $generated@@41) (or (not (= $generated@@134 $generated@@52)) (not true))))
 :pattern ( ($generated@@44 $generated@@34 $generated@@134 $generated@@40))
 :pattern ( ($generated@@44 $generated@@34 $generated@@134 $generated@@41))
)))
(assert  (=> (< 0 $generated@@135) (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (!  (=> (and (or (not (= $generated@@138 $generated@@52)) (not true)) ($generated@@44 $generated@@34 $generated@@138 ($generated@@36 $generated@@137))) ($generated@@44 $generated@@90 ($generated@@136 $generated@@137 $generated@@138) ($generated@@91 $generated@@40)))
 :pattern ( ($generated@@136 $generated@@137 $generated@@138))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@141 ($generated@@30 $generated@@139 $generated@@140) $generated@@142)  (or (= $generated@@141 $generated@@52) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@142 $generated@@141) $generated@@2)))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@141 ($generated@@30 $generated@@139 $generated@@140) $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> (or (not (= $generated@@143 $generated@@145)) (not true)) (=> (and ($generated@@83 $generated@@143 $generated@@144) ($generated@@83 $generated@@144 $generated@@145)) ($generated@@83 $generated@@143 $generated@@145)))
 :pattern ( ($generated@@83 $generated@@143 $generated@@144) ($generated@@83 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ) (!  (=> ($generated@@48 $generated@@146 $generated) (and (= ($generated@@87 $generated@@14 ($generated@@53 $generated@@14 $generated@@146)) $generated@@146) ($generated@@44 $generated@@14 ($generated@@53 $generated@@14 $generated@@146) $generated)))
 :pattern ( ($generated@@48 $generated@@146 $generated))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@48 ($generated@@87 $generated@@149 $generated@@147) $generated@@148) ($generated@@44 $generated@@149 $generated@@147 $generated@@148))
 :pattern ( ($generated@@48 ($generated@@87 $generated@@149 $generated@@147) $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@33 $generated@@90 $generated@@150 ($generated@@91 $generated@@151) $generated@@152) (forall (($generated@@153 T@U) ) (!  (=> ($generated@@92 $generated@@150 $generated@@153) ($generated@@102 $generated@@153 $generated@@151 $generated@@152))
 :pattern ( ($generated@@92 $generated@@150 $generated@@153))
)))
 :pattern ( ($generated@@33 $generated@@90 $generated@@150 ($generated@@91 $generated@@151) $generated@@152))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@154 ($generated@@96 $generated@@155 $generated@@156)) $generated@@155)
 :pattern ( ($generated@@96 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@157 ($generated@@96 $generated@@158 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@96 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@160 ($generated@@30 $generated@@161 $generated@@162)) $generated@@161)
 :pattern ( ($generated@@30 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@163 ($generated@@30 $generated@@164 $generated@@165)) $generated@@165)
 :pattern ( ($generated@@30 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (! ($generated@@44 $generated@@34 $generated@@166 $generated@@41)
 :pattern ( ($generated@@44 $generated@@34 $generated@@166 $generated@@41))
)))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@167 ($generated@@91 $generated@@168)) $generated@@168)
 :pattern ( ($generated@@91 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@28 ($generated@@91 $generated@@169)) $generated@@1)
 :pattern ( ($generated@@91 $generated@@169))
)))
(assert (forall (($generated@@171 T@U) ) (! (= ($generated@@170 ($generated@@36 $generated@@171)) $generated@@171)
 :pattern ( ($generated@@36 $generated@@171))
)))
(assert (forall (($generated@@173 T@U) ) (! (= ($generated@@172 ($generated@@35 $generated@@173)) $generated@@173)
 :pattern ( ($generated@@35 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@T) ) (! (= ($generated@@53 $generated@@175 ($generated@@87 $generated@@175 $generated@@174)) $generated@@174)
 :pattern ( ($generated@@87 $generated@@175 $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> ($generated@@48 $generated@@178 ($generated@@96 $generated@@176 $generated@@177)) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@178)) $generated@@178) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@178) ($generated@@96 $generated@@176 $generated@@177))))
 :pattern ( ($generated@@48 $generated@@178 ($generated@@96 $generated@@176 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> ($generated@@48 $generated@@181 ($generated@@30 $generated@@179 $generated@@180)) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@181)) $generated@@181) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@181) ($generated@@30 $generated@@179 $generated@@180))))
 :pattern ( ($generated@@48 $generated@@181 ($generated@@30 $generated@@179 $generated@@180)))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@183 ($generated@@36 $generated@@182))  (or (= $generated@@183 $generated@@52) ($generated@@29 ($generated@@116 $generated@@183) $generated@@182)))
 :pattern ( ($generated@@44 $generated@@34 $generated@@183 ($generated@@36 $generated@@182)))
)))
(assert  (and (forall (($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@184 $generated@@187 $generated@@188 $generated@@189 ($generated@@186 $generated@@187 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@193 $generated@@190) $generated@@192 $generated@@193) $generated@@190)
 :weight 0
)) (and (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@199 $generated@@201) (= ($generated@@184 $generated@@194 $generated@@195 $generated@@196 ($generated@@186 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@184 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)) (forall (($generated@@203 T@T) ($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (or (= $generated@@209 $generated@@211) (= ($generated@@184 $generated@@203 $generated@@204 $generated@@205 ($generated@@186 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@208 $generated@@209 $generated@@206) $generated@@210 $generated@@211) ($generated@@184 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@210 $generated@@211)))
 :weight 0
)))))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 Bool) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@17 ($generated@@184 $generated@@34 $generated@@55 $generated@@13 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@213 $generated@@216) $generated@@214)))) $generated@@215))
 :pattern ( ($generated@@184 $generated@@34 $generated@@55 $generated@@13 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ) (!  (and (= ($generated@@28 ($generated@@96 $generated@@218 $generated@@219)) $generated@@5) (= ($generated@@120 ($generated@@96 $generated@@218 $generated@@219)) $generated@@10))
 :pattern ( ($generated@@96 $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (!  (and (= ($generated@@28 ($generated@@30 $generated@@220 $generated@@221)) $generated@@8) (= ($generated@@120 ($generated@@30 $generated@@220 $generated@@221)) $generated@@10))
 :pattern ( ($generated@@30 $generated@@220 $generated@@221))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (!  (=> ($generated@@48 $generated@@222 ($generated@@91 $generated@@223)) (and (= ($generated@@87 $generated@@90 ($generated@@53 $generated@@90 $generated@@222)) $generated@@222) ($generated@@44 $generated@@90 ($generated@@53 $generated@@90 $generated@@222) ($generated@@91 $generated@@223))))
 :pattern ( ($generated@@48 $generated@@222 ($generated@@91 $generated@@223)))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> ($generated@@48 $generated@@225 ($generated@@36 $generated@@224)) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@225)) $generated@@225) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@225) ($generated@@36 $generated@@224))))
 :pattern ( ($generated@@48 $generated@@225 ($generated@@36 $generated@@224)))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@U) ) (!  (=> ($generated@@48 $generated@@227 ($generated@@35 $generated@@226)) (and (= ($generated@@87 $generated@@34 ($generated@@53 $generated@@34 $generated@@227)) $generated@@227) ($generated@@44 $generated@@34 ($generated@@53 $generated@@34 $generated@@227) ($generated@@35 $generated@@226))))
 :pattern ( ($generated@@48 $generated@@227 ($generated@@35 $generated@@226)))
)))
(assert (= ($generated@@28 $generated@@41) $generated@@3))
(assert (= ($generated@@120 $generated@@41) $generated@@9))
(assert (= ($generated@@28 $generated@@40) $generated@@4))
(assert (= ($generated@@120 $generated@@40) $generated@@9))
(assert  (=> (< 0 $generated@@135) (forall (($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ) (!  (=> (and (and ($generated@@123 $generated@@229) (and (or (not (= $generated@@230 $generated@@52)) (not true)) ($generated@@44 $generated@@34 $generated@@230 ($generated@@36 $generated@@228)))) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@229 $generated@@230) $generated@@2)))) ($generated@@33 $generated@@90 ($generated@@136 $generated@@228 $generated@@230) ($generated@@91 $generated@@40) $generated@@229))
 :pattern ( ($generated@@136 $generated@@228 $generated@@230) ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@229 $generated@@230) $generated@@2)))
))))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> ($generated@@33 $generated@@34 $generated@@233 ($generated@@30 $generated@@231 $generated@@232) $generated@@234) ($generated@@33 $generated@@34 $generated@@233 ($generated@@36 $generated@@231) $generated@@234))
 :pattern ( ($generated@@33 $generated@@34 $generated@@233 ($generated@@30 $generated@@231 $generated@@232) $generated@@234))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (! ($generated@@33 $generated@@14 $generated@@236 $generated $generated@@235)
 :pattern ( ($generated@@33 $generated@@14 $generated@@236 $generated $generated@@235))
)))
(assert (forall (($generated@@237 T@U) ) (! ($generated@@44 $generated@@14 $generated@@237 $generated)
 :pattern ( ($generated@@44 $generated@@14 $generated@@237 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 (T@U) Bool)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 () Bool)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@249  (=> (= $generated@@238 ($generated@@185 $generated@@52 $generated@@239 $generated@@2 false)) (=> (and (and (or (not (= $generated@@240 $generated@@52)) (not true)) (and ($generated@@44 $generated@@34 $generated@@240 ($generated@@96 $generated@@241 $generated@@242)) ($generated@@33 $generated@@34 $generated@@240 ($generated@@96 $generated@@241 $generated@@242) $generated@@239))) (and ($generated@@123 $generated@@243) ($generated@@244 $generated@@243))) (=> (and (and (and (or (not (= $generated@@245 $generated@@52)) (not true)) (and ($generated@@44 $generated@@34 $generated@@245 ($generated@@96 $generated $generated)) ($generated@@33 $generated@@34 $generated@@245 ($generated@@96 $generated $generated) $generated@@243))) (not ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@239 $generated@@245) $generated@@2))))) (and (forall (($generated@@250 T@U) ) (!  (=> (and (or (not (= $generated@@250 $generated@@52)) (not true)) ($generated@@17 ($generated@@53 $generated@@13 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@239 $generated@@250) $generated@@2)))) (= ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@243 $generated@@250) ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@239 $generated@@250)))
 :pattern ( ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@243 $generated@@250))
)) ($generated@@83 $generated@@239 $generated@@243))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $generated@@245 $generated@@52)) (not true)))))))))
(let (($generated@@251  (=> (and (and ($generated@@123 $generated@@239) ($generated@@244 $generated@@239)) (and (=> $generated@@246 (and ($generated@@44 $generated@@34 $generated@@247 ($generated@@96 $generated $generated)) ($generated@@33 $generated@@34 $generated@@247 ($generated@@96 $generated $generated) $generated@@239))) true)) (=> (and (and (and ($generated@@44 $generated@@90 $generated@@248 ($generated@@91 $generated@@40)) ($generated@@33 $generated@@90 $generated@@248 ($generated@@91 $generated@@40) $generated@@239)) true) (and (= 1 $generated@@135) (= (ControlFlow 0 4) 2))) $generated@@249))))
$generated@@251)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)