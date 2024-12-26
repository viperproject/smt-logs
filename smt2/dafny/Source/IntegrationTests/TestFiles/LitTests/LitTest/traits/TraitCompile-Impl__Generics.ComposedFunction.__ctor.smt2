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
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U T@U T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@34 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@51 (T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@56 (T@U) T@U)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@64 (T@U) T@U)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@80 (T@T T@T) T@T)
(declare-fun $generated@@81 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@83 (T@T) T@T)
(declare-fun $generated@@84 (T@T) T@T)
(declare-fun $generated@@105 (T@T T@U) T@U)
(declare-fun $generated@@108 (T@U T@U T@U) Bool)
(declare-fun $generated@@112 (T@U T@U) T@U)
(declare-fun $generated@@116 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@151 (T@U) T@U)
(declare-fun $generated@@159 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@160 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@161 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@211 (T@U) Bool)
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
(assert (= ($generated@@6 $generated@@28) 3))
(assert  (=> (< 1 $generated@@22) (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (!  (=> (and (or (not (= $generated@@33 $generated@@24)) (not true)) (= ($generated@@25 $generated@@33) ($generated@@26 $generated@@30 $generated@@31 $generated@@32))) ($generated@@27 $generated@@28 ($generated@@23 $generated@@30 $generated@@31 $generated@@32 $generated@@33) ($generated@@29 $generated@@30 $generated@@31)))
 :pattern ( ($generated@@23 $generated@@30 $generated@@31 $generated@@32 $generated@@33))
))))
(assert  (=> (< 1 $generated@@22) (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> (and (or (not (= $generated@@38 $generated@@24)) (not true)) (= ($generated@@25 $generated@@38) ($generated@@26 $generated@@35 $generated@@36 $generated@@37))) ($generated@@27 $generated@@28 ($generated@@34 $generated@@35 $generated@@36 $generated@@37 $generated@@38) ($generated@@29 $generated@@36 $generated@@37)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@36 $generated@@37 $generated@@38))
))))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@39 ($generated@@26 $generated@@40 $generated@@41 $generated@@42)) $generated@@40)
 :pattern ( ($generated@@26 $generated@@40 $generated@@41 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@43 ($generated@@26 $generated@@44 $generated@@45 $generated@@46)) $generated@@45)
 :pattern ( ($generated@@26 $generated@@44 $generated@@45 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@47 ($generated@@26 $generated@@48 $generated@@49 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@26 $generated@@48 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@52 ($generated@@51 $generated@@53 $generated@@54 $generated@@55)) $generated@@53)
 :pattern ( ($generated@@51 $generated@@53 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@56 ($generated@@51 $generated@@57 $generated@@58 $generated@@59)) $generated@@58)
 :pattern ( ($generated@@51 $generated@@57 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@60 ($generated@@51 $generated@@61 $generated@@62 $generated@@63)) $generated@@63)
 :pattern ( ($generated@@51 $generated@@61 $generated@@62 $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (and (= ($generated@@64 ($generated@@26 $generated@@66 $generated@@67 $generated@@68)) $generated@@2) (= ($generated@@65 ($generated@@26 $generated@@66 $generated@@67 $generated@@68)) $generated@@5))
 :pattern ( ($generated@@26 $generated@@66 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (and (= ($generated@@64 ($generated@@51 $generated@@69 $generated@@70 $generated@@71)) $generated@@3) (= ($generated@@65 ($generated@@51 $generated@@69 $generated@@70 $generated@@71)) $generated@@5))
 :pattern ( ($generated@@51 $generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@75 ($generated@@51 $generated@@72 $generated@@73 $generated@@74))  (and ($generated@@27 $generated@@28 $generated@@75 ($generated@@26 $generated@@72 $generated@@73 $generated@@74)) (or (not (= $generated@@75 $generated@@24)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@75 ($generated@@51 $generated@@72 $generated@@73 $generated@@74)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@75 ($generated@@26 $generated@@72 $generated@@73 $generated@@74)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@77 $generated@@85 $generated@@86 ($generated@@82 $generated@@85 $generated@@86 $generated@@88 $generated@@89 $generated@@87) $generated@@89) $generated@@87)
 :weight 0
)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (or (= $generated@@94 $generated@@95) (= ($generated@@77 $generated@@90 $generated@@91 ($generated@@82 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@92) $generated@@95) ($generated@@77 $generated@@90 $generated@@91 $generated@@93 $generated@@95)))
 :weight 0
))) (= ($generated@@6 $generated@@78) 4)) (= ($generated@@6 $generated@@79) 5)) (forall (($generated@@96 T@T) ($generated@@97 T@T) ) (= ($generated@@6 ($generated@@80 $generated@@96 $generated@@97)) 6))) (forall (($generated@@98 T@T) ($generated@@99 T@T) ) (! (= ($generated@@83 ($generated@@80 $generated@@98 $generated@@99)) $generated@@98)
 :pattern ( ($generated@@80 $generated@@98 $generated@@99))
))) (forall (($generated@@100 T@T) ($generated@@101 T@T) ) (! (= ($generated@@84 ($generated@@80 $generated@@100 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@80 $generated@@100 $generated@@101))
))))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> ($generated@@76 $generated@@102 $generated@@103) (forall (($generated@@104 T@U) ) (!  (=> ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@102 $generated@@104) $generated))) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@103 $generated@@104) $generated))))
 :pattern ( ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@103 $generated@@104) $generated))
)))
 :pattern ( ($generated@@76 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@T) ) (! (= ($generated@@105 $generated@@107 ($generated@@81 $generated@@107 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@81 $generated@@107 $generated@@106))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) ($generated@@108 ($generated@@26 $generated@@109 $generated@@110 $generated@@111) $generated@@109 $generated@@111)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@115 ($generated@@29 $generated@@113 $generated@@114))  (and ($generated@@27 $generated@@28 $generated@@115 ($generated@@112 $generated@@113 $generated@@114)) (or (not (= $generated@@115 $generated@@24)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@115 ($generated@@29 $generated@@113 $generated@@114)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@115 ($generated@@112 $generated@@113 $generated@@114)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@T) ) (!  (=> ($generated@@76 $generated@@117 $generated@@118) (=> ($generated@@116 $generated@@121 $generated@@119 $generated@@120 $generated@@117) ($generated@@116 $generated@@121 $generated@@119 $generated@@120 $generated@@118)))
 :pattern ( ($generated@@76 $generated@@117 $generated@@118) ($generated@@116 $generated@@121 $generated@@119 $generated@@120 $generated@@117))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@116 $generated@@28 $generated@@124 ($generated@@29 $generated@@122 $generated@@123) $generated@@125) ($generated@@116 $generated@@28 $generated@@124 ($generated@@112 $generated@@122 $generated@@123) $generated@@125))
 :pattern ( ($generated@@116 $generated@@28 $generated@@124 ($generated@@29 $generated@@122 $generated@@123) $generated@@125))
 :pattern ( ($generated@@116 $generated@@28 $generated@@124 ($generated@@112 $generated@@122 $generated@@123) $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@116 $generated@@28 $generated@@129 ($generated@@26 $generated@@126 $generated@@127 $generated@@128) $generated@@130)  (or (= $generated@@129 $generated@@24) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@130 $generated@@129) $generated)))))
 :pattern ( ($generated@@116 $generated@@28 $generated@@129 ($generated@@26 $generated@@126 $generated@@127 $generated@@128) $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> ($generated@@27 $generated@@28 $generated@@134 ($generated@@26 $generated@@131 $generated@@132 $generated@@133)) ($generated@@27 $generated@@28 $generated@@134 ($generated@@112 $generated@@131 $generated@@133)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@134 ($generated@@26 $generated@@131 $generated@@132 $generated@@133)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@116 $generated@@28 $generated@@137 ($generated@@112 $generated@@135 $generated@@136) $generated@@138)  (or (= $generated@@137 $generated@@24) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@138 $generated@@137) $generated)))))
 :pattern ( ($generated@@116 $generated@@28 $generated@@137 ($generated@@112 $generated@@135 $generated@@136) $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> (or (not (= $generated@@139 $generated@@141)) (not true)) (=> (and ($generated@@76 $generated@@139 $generated@@140) ($generated@@76 $generated@@140 $generated@@141)) ($generated@@76 $generated@@139 $generated@@141)))
 :pattern ( ($generated@@76 $generated@@139 $generated@@140) ($generated@@76 $generated@@140 $generated@@141))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@142 ($generated@@112 $generated@@143 $generated@@144)) $generated@@143)
 :pattern ( ($generated@@112 $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@145 ($generated@@112 $generated@@146 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@112 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@148 ($generated@@29 $generated@@149 $generated@@150)) $generated@@149)
 :pattern ( ($generated@@29 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@151 ($generated@@29 $generated@@152 $generated@@153)) $generated@@153)
 :pattern ( ($generated@@29 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@156 ($generated@@112 $generated@@154 $generated@@155))  (or (= $generated@@156 $generated@@24) ($generated@@108 ($generated@@25 $generated@@156) $generated@@154 $generated@@155)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@156 ($generated@@112 $generated@@154 $generated@@155)))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@T) ) (! (= ($generated@@81 $generated@@158 ($generated@@105 $generated@@158 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@105 $generated@@158 $generated@@157))
)))
(assert  (and (forall (($generated@@162 T@T) ($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (! (= ($generated@@159 $generated@@162 $generated@@163 $generated@@164 ($generated@@161 $generated@@162 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@168 $generated@@165) $generated@@167 $generated@@168) $generated@@165)
 :weight 0
)) (and (forall (($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@159 $generated@@169 $generated@@170 $generated@@171 ($generated@@161 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@174 $generated@@175 $generated@@172) $generated@@176 $generated@@177) ($generated@@159 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@176 $generated@@177)))
 :weight 0
)) (forall (($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (or (= $generated@@184 $generated@@186) (= ($generated@@159 $generated@@178 $generated@@179 $generated@@180 ($generated@@161 $generated@@178 $generated@@179 $generated@@180 $generated@@182 $generated@@183 $generated@@184 $generated@@181) $generated@@185 $generated@@186) ($generated@@159 $generated@@178 $generated@@179 $generated@@180 $generated@@182 $generated@@185 $generated@@186)))
 :weight 0
)))))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 Bool) ($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@11 ($generated@@159 $generated@@28 $generated@@78 $generated@@7 ($generated@@160 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))  (=> (and (or (not (= $generated@@191 $generated@@187)) (not true)) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@188 $generated@@191) $generated@@189)))) $generated@@190))
 :pattern ( ($generated@@159 $generated@@28 $generated@@78 $generated@@7 ($generated@@160 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@196 ($generated@@26 $generated@@193 $generated@@194 $generated@@195))  (or (= $generated@@196 $generated@@24) (= ($generated@@25 $generated@@196) ($generated@@26 $generated@@193 $generated@@194 $generated@@195))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@196 ($generated@@26 $generated@@193 $generated@@194 $generated@@195)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (! (= ($generated@@116 $generated@@28 $generated@@200 ($generated@@51 $generated@@197 $generated@@198 $generated@@199) $generated@@201) ($generated@@116 $generated@@28 $generated@@200 ($generated@@26 $generated@@197 $generated@@198 $generated@@199) $generated@@201))
 :pattern ( ($generated@@116 $generated@@28 $generated@@200 ($generated@@51 $generated@@197 $generated@@198 $generated@@199) $generated@@201))
 :pattern ( ($generated@@116 $generated@@28 $generated@@200 ($generated@@26 $generated@@197 $generated@@198 $generated@@199) $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (!  (and (= ($generated@@64 ($generated@@112 $generated@@202 $generated@@203)) $generated@@0) (= ($generated@@65 ($generated@@112 $generated@@202 $generated@@203)) $generated@@4))
 :pattern ( ($generated@@112 $generated@@202 $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (!  (and (= ($generated@@64 ($generated@@29 $generated@@204 $generated@@205)) $generated@@1) (= ($generated@@65 ($generated@@29 $generated@@204 $generated@@205)) $generated@@4))
 :pattern ( ($generated@@29 $generated@@204 $generated@@205))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ) (!  (=> ($generated@@116 $generated@@28 $generated@@209 ($generated@@26 $generated@@206 $generated@@207 $generated@@208) $generated@@210) ($generated@@116 $generated@@28 $generated@@209 ($generated@@112 $generated@@206 $generated@@208) $generated@@210))
 :pattern ( ($generated@@116 $generated@@28 $generated@@209 ($generated@@26 $generated@@206 $generated@@207 $generated@@208) $generated@@210))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (!  (=> ($generated@@211 ($generated@@82 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213 ($generated@@82 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213) $generated@@214 $generated@@215))) ($generated@@76 $generated@@212 ($generated@@82 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213 ($generated@@82 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213) $generated@@214 $generated@@215))))
 :pattern ( ($generated@@82 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213 ($generated@@82 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@212 $generated@@213) $generated@@214 $generated@@215)))
)))
(assert  (=> (< 1 $generated@@22) (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> (and (and ($generated@@211 $generated@@219) (and (or (not (= $generated@@220 $generated@@24)) (not true)) (= ($generated@@25 $generated@@220) ($generated@@26 $generated@@216 $generated@@217 $generated@@218)))) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@219 $generated@@220) $generated)))) ($generated@@116 $generated@@28 ($generated@@23 $generated@@216 $generated@@217 $generated@@218 $generated@@220) ($generated@@29 $generated@@216 $generated@@217) $generated@@219))
 :pattern ( ($generated@@23 $generated@@216 $generated@@217 $generated@@218 $generated@@220) ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@219 $generated@@220) $generated)))
))))
(assert  (=> (< 1 $generated@@22) (forall (($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and (and ($generated@@211 $generated@@224) (and (or (not (= $generated@@225 $generated@@24)) (not true)) (= ($generated@@25 $generated@@225) ($generated@@26 $generated@@221 $generated@@222 $generated@@223)))) ($generated@@11 ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@224 $generated@@225) $generated)))) ($generated@@116 $generated@@28 ($generated@@34 $generated@@221 $generated@@222 $generated@@223 $generated@@225) ($generated@@29 $generated@@222 $generated@@223) $generated@@224))
 :pattern ( ($generated@@34 $generated@@221 $generated@@222 $generated@@223 $generated@@225) ($generated@@81 $generated@@7 ($generated@@77 $generated@@78 $generated@@79 ($generated@@77 $generated@@28 ($generated@@80 $generated@@78 $generated@@79) $generated@@224 $generated@@225) $generated)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 (T@U) Bool)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@234  (=> (= $generated@@226 ($generated@@160 $generated@@24 $generated@@227 $generated false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true)))))
(let (($generated@@235  (=> (and (and (and ($generated@@211 $generated@@227) ($generated@@228 $generated@@227)) (and ($generated@@27 $generated@@28 $generated@@229 ($generated@@29 $generated@@230 $generated@@231)) ($generated@@116 $generated@@28 $generated@@229 ($generated@@29 $generated@@230 $generated@@231) $generated@@227))) (and (and ($generated@@27 $generated@@28 $generated@@232 ($generated@@29 $generated@@231 $generated@@233)) ($generated@@116 $generated@@28 $generated@@232 ($generated@@29 $generated@@231 $generated@@233) $generated@@227)) (and (= 2 $generated@@22) (= (ControlFlow 0 4) 2)))) $generated@@234)))
$generated@@235)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)