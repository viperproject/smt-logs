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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U) Bool)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U) Bool)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@43 (Int) Int)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@49 (T@U) Bool)
(declare-fun $generated@@50 (T@U T@U T@U) Bool)
(declare-fun $generated@@56 (T@U) T@U)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@U T@U) T@U)
(declare-fun $generated@@63 (T@U T@U) Int)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@U) T@U)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@76 (T@U) Int)
(declare-fun $generated@@83 (T@U T@U) Bool)
(declare-fun $generated@@100 () T@U)
(declare-fun $generated@@102 (T@U T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@130 (T@U) T@U)
(declare-fun $generated@@135 () T@T)
(declare-fun $generated@@136 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@137 () T@T)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@140 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@157 (T@U) Int)
(declare-fun $generated@@158 (T@U) Int)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@174 () T@T)
(declare-fun $generated@@175 () T@T)
(declare-fun $generated@@176 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@177 (T@T T@T) T@T)
(declare-fun $generated@@178 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@179 (T@T) T@T)
(declare-fun $generated@@180 (T@T) T@T)
(declare-fun $generated@@218 (T@U) T@U)
(declare-fun $generated@@223 (T@U) T@U)
(declare-fun $generated@@226 (T@U) T@U)
(declare-fun $generated@@232 (T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (= ($generated@@8 $generated@@27) 3))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@31 ($generated@@28 $generated@@29 $generated@@30)) ($generated@@25 $generated@@31))
 :pattern ( ($generated@@25 $generated@@31) ($generated@@26 $generated@@27 $generated@@31 ($generated@@28 $generated@@29 $generated@@30)))
)))
(assert (= ($generated@@8 $generated@@32) 4))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> ($generated@@26 $generated@@32 $generated@@35 ($generated@@33 $generated@@36)) ($generated@@34 $generated@@35))
 :pattern ( ($generated@@26 $generated@@32 $generated@@35 ($generated@@33 $generated@@36)))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@26 $generated@@27 ($generated@@37 $generated@@41 $generated@@42) ($generated@@28 $generated@@39 $generated@@40))  (and ($generated@@38 $generated@@41 $generated@@39) ($generated@@38 $generated@@42 $generated@@40)))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@37 $generated@@41 $generated@@42) ($generated@@28 $generated@@39 $generated@@40)))
)))
(assert (forall (($generated@@44 Int) ) (! (= ($generated@@43 $generated@@44) $generated@@44)
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@45 $generated@@47 $generated@@46) $generated@@46)
 :pattern ( ($generated@@45 $generated@@47 $generated@@46))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> ($generated@@49 $generated@@55) (= ($generated@@48 $generated@@27 ($generated@@37 $generated@@53 $generated@@54) ($generated@@28 $generated@@51 $generated@@52) $generated@@55)  (and ($generated@@50 $generated@@53 $generated@@51 $generated@@55) ($generated@@50 $generated@@54 $generated@@52 $generated@@55))))
 :pattern ( ($generated@@48 $generated@@27 ($generated@@37 $generated@@53 $generated@@54) ($generated@@28 $generated@@51 $generated@@52) $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ) (! (= ($generated@@25 $generated@@57) (= ($generated@@56 $generated@@57) $generated@@5))
 :pattern ( ($generated@@25 $generated@@57))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@59 $generated@@61 ($generated@@58 $generated@@61 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@58 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> (or (not (= $generated@@65 $generated@@66)) (not true)) (= ($generated@@63 $generated@@64 $generated@@66) ($generated@@63 ($generated@@62 $generated@@64 $generated@@65) $generated@@66)))
 :pattern ( ($generated@@62 $generated@@64 $generated@@65) ($generated@@63 $generated@@64 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ) (!  (=> ($generated@@25 $generated@@67) (exists (($generated@@68 T@U) ($generated@@69 T@U) ) (= $generated@@67 ($generated@@37 $generated@@68 $generated@@69))))
 :pattern ( ($generated@@25 $generated@@67))
)))
(assert (= ($generated@@8 $generated@@70) 5))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@26 $generated@@70 $generated@@73 ($generated@@71 $generated@@74)) (forall (($generated@@75 T@U) ) (!  (=> ($generated@@72 $generated@@73 $generated@@75) ($generated@@38 $generated@@75 $generated@@74))
 :pattern ( ($generated@@72 $generated@@73 $generated@@75))
)))
 :pattern ( ($generated@@26 $generated@@70 $generated@@73 ($generated@@71 $generated@@74)))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@76 ($generated@@62 $generated@@77 $generated@@78)) (+ ($generated@@76 $generated@@77) 1))
 :pattern ( ($generated@@76 ($generated@@62 $generated@@77 $generated@@78)))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@50 ($generated@@59 $generated@@82 $generated@@79) $generated@@80 $generated@@81) ($generated@@48 $generated@@82 $generated@@79 $generated@@80 $generated@@81))
 :pattern ( ($generated@@50 ($generated@@59 $generated@@82 $generated@@79) $generated@@80 $generated@@81))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@83 $generated@@84 $generated@@85) (= $generated@@84 $generated@@85))
 :pattern ( ($generated@@83 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@26 $generated@@32 $generated@@86 ($generated@@33 $generated@@87)) (forall (($generated@@88 T@U) ) (!  (=> (< 0 ($generated@@63 $generated@@86 $generated@@88)) ($generated@@38 $generated@@88 $generated@@87))
 :pattern ( ($generated@@63 $generated@@86 $generated@@88))
)))
 :pattern ( ($generated@@26 $generated@@32 $generated@@86 ($generated@@33 $generated@@87)))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@38 $generated@@89 $generated) (and (= ($generated@@59 $generated@@10 ($generated@@58 $generated@@10 $generated@@89)) $generated@@89) ($generated@@26 $generated@@10 ($generated@@58 $generated@@10 $generated@@89) $generated)))
 :pattern ( ($generated@@38 $generated@@89 $generated))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@38 ($generated@@59 $generated@@92 $generated@@90) $generated@@91) ($generated@@26 $generated@@92 $generated@@90 $generated@@91))
 :pattern ( ($generated@@38 ($generated@@59 $generated@@92 $generated@@90) $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@34 $generated@@93) (forall (($generated@@94 T@U) ) (!  (and (<= 0 ($generated@@63 $generated@@93 $generated@@94)) (<= ($generated@@63 $generated@@93 $generated@@94) ($generated@@76 $generated@@93)))
 :pattern ( ($generated@@63 $generated@@93 $generated@@94))
)))
 :pattern ( ($generated@@34 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ) (! (<= 0 ($generated@@76 $generated@@95))
 :pattern ( ($generated@@76 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@48 $generated@@70 $generated@@96 ($generated@@71 $generated@@97) $generated@@98) (forall (($generated@@99 T@U) ) (!  (=> ($generated@@72 $generated@@96 $generated@@99) ($generated@@50 $generated@@99 $generated@@97 $generated@@98))
 :pattern ( ($generated@@72 $generated@@96 $generated@@99))
)))
 :pattern ( ($generated@@48 $generated@@70 $generated@@96 ($generated@@71 $generated@@97) $generated@@98))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@63 $generated@@100 $generated@@101) 0)
 :pattern ( ($generated@@63 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@103 ($generated@@102 $generated@@104 $generated@@105)) $generated@@104)
 :pattern ( ($generated@@102 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@106 ($generated@@102 $generated@@107 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@102 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@24 ($generated@@102 $generated@@109 $generated@@110)) $generated@@3)
 :pattern ( ($generated@@102 $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@56 ($generated@@37 $generated@@111 $generated@@112)) $generated@@5)
 :pattern ( ($generated@@37 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@113 ($generated@@28 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@28 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@116 ($generated@@28 $generated@@117 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@28 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 ($generated@@37 $generated@@120 $generated@@121)) $generated@@120)
 :pattern ( ($generated@@37 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@37 $generated@@123 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@37 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@63 ($generated@@62 $generated@@125 $generated@@126) $generated@@126) (+ ($generated@@63 $generated@@125 $generated@@126) 1))
 :pattern ( ($generated@@62 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ) (! (= ($generated@@127 ($generated@@71 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@71 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@24 ($generated@@71 $generated@@129)) $generated@@1)
 :pattern ( ($generated@@71 $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ) (! (= ($generated@@130 ($generated@@33 $generated@@131)) $generated@@131)
 :pattern ( ($generated@@33 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@24 ($generated@@33 $generated@@132)) $generated@@2)
 :pattern ( ($generated@@33 $generated@@132))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@T) ) (! (= ($generated@@58 $generated@@134 ($generated@@59 $generated@@134 $generated@@133)) $generated@@133)
 :pattern ( ($generated@@59 $generated@@134 $generated@@133))
)))
(assert  (and (and (and (= ($generated@@8 $generated@@135) 6) (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@136 $generated@@141 $generated@@142 ($generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@143) $generated@@145) $generated@@143)
 :weight 0
))) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (or (= $generated@@150 $generated@@151) (= ($generated@@136 $generated@@146 $generated@@147 ($generated@@140 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@148) $generated@@151) ($generated@@136 $generated@@146 $generated@@147 $generated@@149 $generated@@151)))
 :weight 0
))) (= ($generated@@8 $generated@@137) 7)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@48 $generated@@135 $generated@@152 ($generated@@102 $generated@@153 $generated@@154) $generated@@155) (forall (($generated@@156 T@U) ) (!  (=> ($generated@@72 ($generated@@139 $generated@@152) $generated@@156) (and ($generated@@50 ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@152) $generated@@156) $generated@@154 $generated@@155) ($generated@@50 $generated@@156 $generated@@153 $generated@@155)))
 :pattern ( ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@152) $generated@@156))
 :pattern ( ($generated@@72 ($generated@@139 $generated@@152) $generated@@156))
)))
 :pattern ( ($generated@@48 $generated@@135 $generated@@152 ($generated@@102 $generated@@153 $generated@@154) $generated@@155))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (! (< ($generated@@157 $generated@@159) ($generated@@158 ($generated@@37 $generated@@159 $generated@@160)))
 :pattern ( ($generated@@37 $generated@@159 $generated@@160))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (< ($generated@@157 $generated@@162) ($generated@@158 ($generated@@37 $generated@@161 $generated@@162)))
 :pattern ( ($generated@@37 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ) (!  (and (= (= ($generated@@76 $generated@@163) 0) (= $generated@@163 $generated@@100)) (=> (or (not (= ($generated@@76 $generated@@163) 0)) (not true)) (exists (($generated@@164 T@U) ) (! (< 0 ($generated@@63 $generated@@163 $generated@@164))
 :pattern ( ($generated@@63 $generated@@163 $generated@@164))
))))
 :pattern ( ($generated@@76 $generated@@163))
)))
(assert (forall (($generated@@166 T@U) ) (!  (not ($generated@@72 ($generated@@139 $generated@@165) $generated@@166))
 :pattern ( ($generated@@72 ($generated@@139 $generated@@165) $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@38 $generated@@167 ($generated@@102 $generated@@168 $generated@@169)) (and (= ($generated@@59 $generated@@135 ($generated@@58 $generated@@135 $generated@@167)) $generated@@167) ($generated@@26 $generated@@135 ($generated@@58 $generated@@135 $generated@@167) ($generated@@102 $generated@@168 $generated@@169))))
 :pattern ( ($generated@@38 $generated@@167 ($generated@@102 $generated@@168 $generated@@169)))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@38 $generated@@172 ($generated@@28 $generated@@170 $generated@@171)) (and (= ($generated@@59 $generated@@27 ($generated@@58 $generated@@27 $generated@@172)) $generated@@172) ($generated@@26 $generated@@27 ($generated@@58 $generated@@27 $generated@@172) ($generated@@28 $generated@@170 $generated@@171))))
 :pattern ( ($generated@@38 $generated@@172 ($generated@@28 $generated@@170 $generated@@171)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@173 $generated@@181 $generated@@182 $generated@@183 ($generated@@178 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@186 $generated@@187) $generated@@184)
 :weight 0
)) (and (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (or (= $generated@@193 $generated@@195) (= ($generated@@173 $generated@@188 $generated@@189 $generated@@190 ($generated@@178 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@193 $generated@@194 $generated@@191) $generated@@195 $generated@@196) ($generated@@173 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@195 $generated@@196)))
 :weight 0
)) (forall (($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (or (= $generated@@203 $generated@@205) (= ($generated@@173 $generated@@197 $generated@@198 $generated@@199 ($generated@@178 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@202 $generated@@203 $generated@@200) $generated@@204 $generated@@205) ($generated@@173 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@204 $generated@@205)))
 :weight 0
)))) (= ($generated@@8 $generated@@174) 8)) (= ($generated@@8 $generated@@175) 9)) (forall (($generated@@206 T@T) ($generated@@207 T@T) ) (= ($generated@@8 ($generated@@177 $generated@@206 $generated@@207)) 10))) (forall (($generated@@208 T@T) ($generated@@209 T@T) ) (! (= ($generated@@179 ($generated@@177 $generated@@208 $generated@@209)) $generated@@208)
 :pattern ( ($generated@@177 $generated@@208 $generated@@209))
))) (forall (($generated@@210 T@T) ($generated@@211 T@T) ) (! (= ($generated@@180 ($generated@@177 $generated@@210 $generated@@211)) $generated@@211)
 :pattern ( ($generated@@177 $generated@@210 $generated@@211))
))))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 Bool) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@13 ($generated@@173 $generated@@174 $generated@@175 $generated@@9 ($generated@@176 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@13 ($generated@@58 $generated@@9 ($generated@@136 $generated@@175 $generated@@137 ($generated@@136 $generated@@174 ($generated@@177 $generated@@175 $generated@@137) $generated@@213 $generated@@216) $generated@@214)))) $generated@@215))
 :pattern ( ($generated@@173 $generated@@174 $generated@@175 $generated@@9 ($generated@@176 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@24 ($generated@@28 $generated@@219 $generated@@220)) $generated@@6) (= ($generated@@218 ($generated@@28 $generated@@219 $generated@@220)) $generated@@7))
 :pattern ( ($generated@@28 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ) (!  (or (= $generated@@221 $generated@@165) (exists (($generated@@222 T@U) ) ($generated@@72 ($generated@@139 $generated@@221) $generated@@222)))
 :pattern ( ($generated@@139 $generated@@221))
)))
(assert (forall (($generated@@224 T@U) ) (!  (or (= $generated@@224 $generated@@165) (exists (($generated@@225 T@U) ) ($generated@@72 ($generated@@223 $generated@@224) $generated@@225)))
 :pattern ( ($generated@@223 $generated@@224))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (! (= ($generated@@72 ($generated@@226 $generated@@227) $generated@@228)  (and ($generated@@72 ($generated@@139 $generated@@227) ($generated@@119 ($generated@@58 $generated@@27 $generated@@228))) (= ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@227) ($generated@@119 ($generated@@58 $generated@@27 $generated@@228))) ($generated@@122 ($generated@@58 $generated@@27 $generated@@228)))))
 :pattern ( ($generated@@72 ($generated@@226 $generated@@227) $generated@@228))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (! (= ($generated@@72 ($generated@@223 $generated@@229) $generated@@230) (exists (($generated@@231 T@U) ) (!  (and ($generated@@72 ($generated@@139 $generated@@229) $generated@@231) (= $generated@@230 ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@229) $generated@@231)))
 :pattern ( ($generated@@72 ($generated@@139 $generated@@229) $generated@@231))
 :pattern ( ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@229) $generated@@231))
)))
 :pattern ( ($generated@@72 ($generated@@223 $generated@@229) $generated@@230))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (!  (and (=> (= $generated@@235 $generated@@234) (and ($generated@@72 ($generated@@139 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235) (= ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235) $generated@@236))) (=> (or (not (= $generated@@235 $generated@@234)) (not true)) (and (= ($generated@@72 ($generated@@139 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235) ($generated@@72 ($generated@@139 $generated@@233) $generated@@235)) (= ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235) ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@233) $generated@@235)))))
 :pattern ( ($generated@@72 ($generated@@139 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235))
 :pattern ( ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 ($generated@@232 $generated@@233 $generated@@234 $generated@@236)) $generated@@235))
)))
(assert (forall (($generated@@237 T@U) ) (! (= ($generated@@157 ($generated@@59 $generated@@27 $generated@@237)) ($generated@@158 $generated@@237))
 :pattern ( ($generated@@157 ($generated@@59 $generated@@27 $generated@@237)))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> ($generated@@38 $generated@@238 ($generated@@71 $generated@@239)) (and (= ($generated@@59 $generated@@70 ($generated@@58 $generated@@70 $generated@@238)) $generated@@238) ($generated@@26 $generated@@70 ($generated@@58 $generated@@70 $generated@@238) ($generated@@71 $generated@@239))))
 :pattern ( ($generated@@38 $generated@@238 ($generated@@71 $generated@@239)))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (!  (=> ($generated@@38 $generated@@240 ($generated@@33 $generated@@241)) (and (= ($generated@@59 $generated@@32 ($generated@@58 $generated@@32 $generated@@240)) $generated@@240) ($generated@@26 $generated@@32 ($generated@@58 $generated@@32 $generated@@240) ($generated@@33 $generated@@241))))
 :pattern ( ($generated@@38 $generated@@240 ($generated@@33 $generated@@241)))
)))
(assert (forall (($generated@@242 T@U) ($generated@@243 T@U) ($generated@@244 T@U) ) (! (= ($generated@@26 $generated@@135 $generated@@242 ($generated@@102 $generated@@243 $generated@@244)) (forall (($generated@@245 T@U) ) (!  (=> ($generated@@72 ($generated@@139 $generated@@242) $generated@@245) (and ($generated@@38 ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@242) $generated@@245) $generated@@244) ($generated@@38 $generated@@245 $generated@@243)))
 :pattern ( ($generated@@136 $generated@@137 $generated@@137 ($generated@@138 $generated@@242) $generated@@245))
 :pattern ( ($generated@@72 ($generated@@139 $generated@@242) $generated@@245))
)))
 :pattern ( ($generated@@26 $generated@@135 $generated@@242 ($generated@@102 $generated@@243 $generated@@244)))
)))
(assert (forall (($generated@@246 T@U) ($generated@@247 T@U) ($generated@@248 T@U) ) (!  (=> (and ($generated@@49 $generated@@248) (and ($generated@@25 $generated@@246) (exists (($generated@@249 T@U) ) (! ($generated@@48 $generated@@27 $generated@@246 ($generated@@28 $generated@@247 $generated@@249) $generated@@248)
 :pattern ( ($generated@@48 $generated@@27 $generated@@246 ($generated@@28 $generated@@247 $generated@@249) $generated@@248))
)))) ($generated@@50 ($generated@@119 $generated@@246) $generated@@247 $generated@@248))
 :pattern ( ($generated@@50 ($generated@@119 $generated@@246) $generated@@247 $generated@@248))
)))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ) (!  (=> (and ($generated@@49 $generated@@252) (and ($generated@@25 $generated@@250) (exists (($generated@@253 T@U) ) (! ($generated@@48 $generated@@27 $generated@@250 ($generated@@28 $generated@@253 $generated@@251) $generated@@252)
 :pattern ( ($generated@@48 $generated@@27 $generated@@250 ($generated@@28 $generated@@253 $generated@@251) $generated@@252))
)))) ($generated@@50 ($generated@@122 $generated@@250) $generated@@251 $generated@@252))
 :pattern ( ($generated@@50 ($generated@@122 $generated@@250) $generated@@251 $generated@@252))
)))
(assert (forall (($generated@@254 T@U) ($generated@@255 T@U) ) (! (= ($generated@@37 ($generated@@45 $generated@@137 $generated@@254) ($generated@@45 $generated@@137 $generated@@255)) ($generated@@45 $generated@@27 ($generated@@37 $generated@@254 $generated@@255)))
 :pattern ( ($generated@@37 ($generated@@45 $generated@@137 $generated@@254) ($generated@@45 $generated@@137 $generated@@255)))
)))
(assert (forall (($generated@@256 Int) ) (! (= ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 $generated@@256))) ($generated@@45 $generated@@137 ($generated@@59 $generated@@10 ($generated@@14 $generated@@256))))
 :pattern ( ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 $generated@@256))))
)))
(assert (forall (($generated@@257 T@U) ($generated@@258 T@T) ) (! (= ($generated@@59 $generated@@258 ($generated@@45 $generated@@258 $generated@@257)) ($generated@@45 $generated@@137 ($generated@@59 $generated@@258 $generated@@257)))
 :pattern ( ($generated@@59 $generated@@258 ($generated@@45 $generated@@258 $generated@@257)))
)))
(assert (forall (($generated@@259 T@U) ($generated@@260 T@U) ($generated@@261 T@U) ) (!  (=> (< 0 ($generated@@63 $generated@@259 $generated@@261)) (< 0 ($generated@@63 ($generated@@62 $generated@@259 $generated@@260) $generated@@261)))
 :pattern ( ($generated@@62 $generated@@259 $generated@@260) ($generated@@63 $generated@@259 $generated@@261))
)))
(assert (forall (($generated@@262 T@U) ($generated@@263 T@U) ($generated@@264 T@U) ) (! (= (< 0 ($generated@@63 ($generated@@62 $generated@@262 $generated@@263) $generated@@264))  (or (= $generated@@264 $generated@@263) (< 0 ($generated@@63 $generated@@262 $generated@@264))))
 :pattern ( ($generated@@63 ($generated@@62 $generated@@262 $generated@@263) $generated@@264))
)))
(assert (forall (($generated@@265 T@U) ($generated@@266 T@U) ) (! (= ($generated@@83 $generated@@265 $generated@@266) (forall (($generated@@267 T@U) ) (! (= ($generated@@63 $generated@@265 $generated@@267) ($generated@@63 $generated@@266 $generated@@267))
 :pattern ( ($generated@@63 $generated@@265 $generated@@267))
 :pattern ( ($generated@@63 $generated@@266 $generated@@267))
)))
 :pattern ( ($generated@@83 $generated@@265 $generated@@266))
)))
(assert (forall (($generated@@268 T@U) ($generated@@269 T@U) ($generated@@270 T@U) ) (! (= ($generated@@48 $generated@@32 $generated@@268 ($generated@@33 $generated@@269) $generated@@270) (forall (($generated@@271 T@U) ) (!  (=> (< 0 ($generated@@63 $generated@@268 $generated@@271)) ($generated@@50 $generated@@271 $generated@@269 $generated@@270))
 :pattern ( ($generated@@63 $generated@@268 $generated@@271))
)))
 :pattern ( ($generated@@48 $generated@@32 $generated@@268 ($generated@@33 $generated@@269) $generated@@270))
)))
(assert (forall (($generated@@272 T@U) ($generated@@273 T@U) ) (! ($generated@@48 $generated@@10 $generated@@273 $generated $generated@@272)
 :pattern ( ($generated@@48 $generated@@10 $generated@@273 $generated $generated@@272))
)))
(assert (forall (($generated@@274 T@U) ) (!  (or (= $generated@@274 $generated@@165) (exists (($generated@@275 T@U) ($generated@@276 T@U) ) ($generated@@72 ($generated@@226 $generated@@274) ($generated@@59 $generated@@27 ($generated@@37 $generated@@275 $generated@@276)))))
 :pattern ( ($generated@@226 $generated@@274))
)))
(assert (forall (($generated@@277 T@U) ($generated@@278 T@U) ($generated@@279 T@U) ) (!  (=> ($generated@@26 $generated@@135 $generated@@277 ($generated@@102 $generated@@278 $generated@@279)) (and (and ($generated@@26 $generated@@70 ($generated@@139 $generated@@277) ($generated@@71 $generated@@278)) ($generated@@26 $generated@@70 ($generated@@223 $generated@@277) ($generated@@71 $generated@@279))) ($generated@@26 $generated@@70 ($generated@@226 $generated@@277) ($generated@@71 ($generated@@28 $generated@@278 $generated@@279)))))
 :pattern ( ($generated@@26 $generated@@135 $generated@@277 ($generated@@102 $generated@@278 $generated@@279)))
)))
(assert (forall (($generated@@280 T@U) ) (! ($generated@@26 $generated@@10 $generated@@280 $generated)
 :pattern ( ($generated@@26 $generated@@10 $generated@@280 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 () T@U)
(declare-fun $generated@@283 () T@U)
(declare-fun $generated@@284 () T@U)
(declare-fun $generated@@285 (T@U) Bool)
(declare-fun $generated@@286 () T@U)
(declare-fun $generated@@287 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@288  (=> (and (= $generated@@281 ($generated@@176 $generated@@282 $generated@@283 $generated@@4 false)) (= $generated@@284 ($generated@@45 $generated@@135 ($generated@@232 $generated@@165 ($generated@@59 $generated@@32 ($generated@@45 $generated@@32 ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 33))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@83 ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))) ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10)))))) (=> ($generated@@83 ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))) ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10))))) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@72 ($generated@@139 $generated@@284) ($generated@@59 $generated@@32 ($generated@@62 ($generated@@62 $generated@@100 ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 20)))) ($generated@@59 $generated@@10 ($generated@@14 ($generated@@43 10))))))))))))
(let (($generated@@289  (=> (and ($generated@@49 $generated@@283) ($generated@@285 $generated@@283)) (=> (and (and (and ($generated@@26 $generated@@135 $generated@@286 ($generated@@102 ($generated@@33 $generated) $generated)) ($generated@@48 $generated@@135 $generated@@286 ($generated@@102 ($generated@@33 $generated) $generated) $generated@@283)) true) (and (= 0 $generated@@287) (= (ControlFlow 0 4) 2))) $generated@@288))))
$generated@@289)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)