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
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@24 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U T@U T@U) T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@38 (T@U T@U T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@51 (T@U) T@U)
(declare-fun $generated@@55 (T@U) T@U)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@63 (T@U T@U) T@U)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@T T@U T@U) Bool)
(declare-fun $generated@@85 (T@U T@U) Bool)
(declare-fun $generated@@88 (Int) Int)
(declare-fun $generated@@90 (T@T T@U) T@U)
(declare-fun $generated@@93 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@110 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@111 (T@U) Bool)
(declare-fun $generated@@112 (T@U T@U T@U) Bool)
(declare-fun $generated@@134 (T@U T@U) Bool)
(declare-fun $generated@@145 () T@T)
(declare-fun $generated@@149 (T@U) T@U)
(declare-fun $generated@@154 (T@U) Int)
(declare-fun $generated@@155 (T@U) Int)
(declare-fun $generated@@165 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@166 () T@T)
(declare-fun $generated@@167 () T@T)
(declare-fun $generated@@168 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@169 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@170 (T@T T@T) T@T)
(declare-fun $generated@@171 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@172 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@173 (T@T) T@T)
(declare-fun $generated@@174 (T@T) T@T)
(declare-fun $generated@@223 (Int Int) Int)
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
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ) (! ($generated@@24 ($generated@@23 $generated@@25 $generated@@26) $generated@@26)
 :pattern ( ($generated@@23 $generated@@25 $generated@@26))
)))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@U) ($generated@@29 T@U) ) (!  (=> ($generated@@24 $generated@@27 $generated@@29) ($generated@@24 ($generated@@23 $generated@@27 $generated@@28) $generated@@29))
 :pattern ( ($generated@@23 $generated@@27 $generated@@28) ($generated@@24 $generated@@27 $generated@@29))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@24 ($generated@@23 $generated@@30 $generated@@31) $generated@@32)  (or (= $generated@@32 $generated@@31) ($generated@@24 $generated@@30 $generated@@32)))
 :pattern ( ($generated@@24 ($generated@@23 $generated@@30 $generated@@31) $generated@@32))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@34 ($generated@@33 $generated@@35 $generated@@36 $generated@@37)) $generated@@3)
 :pattern ( ($generated@@33 $generated@@35 $generated@@36 $generated@@37))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@39 ($generated@@38 $generated@@40 $generated@@41 $generated@@42)) $generated@@40)
 :pattern ( ($generated@@38 $generated@@40 $generated@@41 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@43 ($generated@@38 $generated@@44 $generated@@45 $generated@@46)) $generated@@45)
 :pattern ( ($generated@@38 $generated@@44 $generated@@45 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@47 ($generated@@38 $generated@@48 $generated@@49 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@38 $generated@@48 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@51 ($generated@@33 $generated@@52 $generated@@53 $generated@@54)) $generated@@52)
 :pattern ( ($generated@@33 $generated@@52 $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@55 ($generated@@33 $generated@@56 $generated@@57 $generated@@58)) $generated@@57)
 :pattern ( ($generated@@33 $generated@@56 $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@59 ($generated@@33 $generated@@60 $generated@@61 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@33 $generated@@60 $generated@@61 $generated@@62))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@24 $generated@@65 $generated@@66) (not ($generated@@24 ($generated@@63 $generated@@64 $generated@@65) $generated@@66)))
 :pattern ( ($generated@@63 $generated@@64 $generated@@65) ($generated@@24 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (!  (not ($generated@@24 $generated@@67 $generated@@68))
 :pattern ( ($generated@@24 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (!  (and (= ($generated@@22 ($generated@@38 $generated@@70 $generated@@71 $generated@@72)) $generated@@4) (= ($generated@@69 ($generated@@38 $generated@@70 $generated@@71 $generated@@72)) $generated@@5))
 :pattern ( ($generated@@38 $generated@@70 $generated@@71 $generated@@72))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@24 ($generated@@63 $generated@@73 $generated@@74) $generated@@75)  (and ($generated@@24 $generated@@73 $generated@@75) (not ($generated@@24 $generated@@74 $generated@@75))))
 :pattern ( ($generated@@24 ($generated@@63 $generated@@73 $generated@@74) $generated@@75))
)))
(assert (= ($generated@@6 $generated@@78) 3))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> ($generated@@76 $generated@@84 ($generated@@38 $generated@@81 $generated@@82 $generated@@83)) (and (= ($generated@@77 $generated@@78 ($generated@@79 $generated@@78 $generated@@84)) $generated@@84) ($generated@@80 $generated@@78 ($generated@@79 $generated@@78 $generated@@84) ($generated@@38 $generated@@81 $generated@@82 $generated@@83))))
 :pattern ( ($generated@@76 $generated@@84 ($generated@@38 $generated@@81 $generated@@82 $generated@@83)))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@85 $generated@@86 $generated@@87) (= $generated@@86 $generated@@87))
 :pattern ( ($generated@@85 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 Int) ) (! (= ($generated@@88 $generated@@89) $generated@@89)
 :pattern ( ($generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@90 $generated@@92 $generated@@91) $generated@@91)
 :pattern ( ($generated@@90 $generated@@92 $generated@@91))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@93 $generated@@94 $generated@@95) (forall (($generated@@96 T@U) ) (!  (=> ($generated@@24 $generated@@94 $generated@@96) ($generated@@24 $generated@@95 $generated@@96))
 :pattern ( ($generated@@24 $generated@@94 $generated@@96))
 :pattern ( ($generated@@24 $generated@@95 $generated@@96))
)))
 :pattern ( ($generated@@93 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@97 $generated@@98) (= ($generated@@34 $generated@@98) $generated@@3))
 :pattern ( ($generated@@97 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@77 $generated@@100 ($generated@@79 $generated@@100 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@79 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ) (!  (=> ($generated@@97 $generated@@101) (exists (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (= $generated@@101 ($generated@@33 $generated@@102 $generated@@103 $generated@@104))))
 :pattern ( ($generated@@97 $generated@@101))
)))
(assert (= ($generated@@6 $generated@@105) 4))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@80 $generated@@105 $generated@@107 ($generated@@106 $generated@@108)) (forall (($generated@@109 T@U) ) (!  (=> ($generated@@24 $generated@@107 $generated@@109) ($generated@@76 $generated@@109 $generated@@108))
 :pattern ( ($generated@@24 $generated@@107 $generated@@109))
)))
 :pattern ( ($generated@@80 $generated@@105 $generated@@107 ($generated@@106 $generated@@108)))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (=> ($generated@@111 $generated@@119) (= ($generated@@110 $generated@@78 ($generated@@33 $generated@@116 $generated@@117 $generated@@118) ($generated@@38 $generated@@113 $generated@@114 $generated@@115) $generated@@119)  (and (and ($generated@@112 $generated@@116 $generated@@113 $generated@@119) ($generated@@112 $generated@@117 $generated@@114 $generated@@119)) ($generated@@112 $generated@@118 $generated@@115 $generated@@119))))
 :pattern ( ($generated@@110 $generated@@78 ($generated@@33 $generated@@116 $generated@@117 $generated@@118) ($generated@@38 $generated@@113 $generated@@114 $generated@@115) $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@T) ) (! (= ($generated@@112 ($generated@@77 $generated@@123 $generated@@120) $generated@@121 $generated@@122) ($generated@@110 $generated@@123 $generated@@120 $generated@@121 $generated@@122))
 :pattern ( ($generated@@112 ($generated@@77 $generated@@123 $generated@@120) $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> ($generated@@80 $generated@@78 $generated@@127 ($generated@@38 $generated@@124 $generated@@125 $generated@@126)) ($generated@@97 $generated@@127))
 :pattern ( ($generated@@97 $generated@@127) ($generated@@80 $generated@@78 $generated@@127 ($generated@@38 $generated@@124 $generated@@125 $generated@@126)))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@80 $generated@@78 ($generated@@33 $generated@@131 $generated@@132 $generated@@133) ($generated@@38 $generated@@128 $generated@@129 $generated@@130))  (and (and ($generated@@76 $generated@@131 $generated@@128) ($generated@@76 $generated@@132 $generated@@129)) ($generated@@76 $generated@@133 $generated@@130)))
 :pattern ( ($generated@@80 $generated@@78 ($generated@@33 $generated@@131 $generated@@132 $generated@@133) ($generated@@38 $generated@@128 $generated@@129 $generated@@130)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> ($generated@@134 $generated@@135 $generated@@136) (= $generated@@135 $generated@@136))
 :pattern ( ($generated@@134 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ) (!  (=> ($generated@@76 $generated@@137 $generated) (and (= ($generated@@77 $generated@@8 ($generated@@79 $generated@@8 $generated@@137)) $generated@@137) ($generated@@80 $generated@@8 ($generated@@79 $generated@@8 $generated@@137) $generated)))
 :pattern ( ($generated@@76 $generated@@137 $generated))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@76 ($generated@@77 $generated@@140 $generated@@138) $generated@@139) ($generated@@80 $generated@@140 $generated@@138 $generated@@139))
 :pattern ( ($generated@@76 ($generated@@77 $generated@@140 $generated@@138) $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@110 $generated@@105 $generated@@141 ($generated@@106 $generated@@142) $generated@@143) (forall (($generated@@144 T@U) ) (!  (=> ($generated@@24 $generated@@141 $generated@@144) ($generated@@112 $generated@@144 $generated@@142 $generated@@143))
 :pattern ( ($generated@@24 $generated@@141 $generated@@144))
)))
 :pattern ( ($generated@@110 $generated@@105 $generated@@141 ($generated@@106 $generated@@142) $generated@@143))
)))
(assert (= ($generated@@6 $generated@@145) 5))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@33 ($generated@@90 $generated@@145 $generated@@146) ($generated@@90 $generated@@145 $generated@@147) ($generated@@90 $generated@@145 $generated@@148)) ($generated@@90 $generated@@78 ($generated@@33 $generated@@146 $generated@@147 $generated@@148)))
 :pattern ( ($generated@@33 ($generated@@90 $generated@@145 $generated@@146) ($generated@@90 $generated@@145 $generated@@147) ($generated@@90 $generated@@145 $generated@@148)))
)))
(assert (forall (($generated@@150 T@U) ) (! (= ($generated@@149 ($generated@@106 $generated@@150)) $generated@@150)
 :pattern ( ($generated@@106 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@22 ($generated@@106 $generated@@151)) $generated@@1)
 :pattern ( ($generated@@106 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@79 $generated@@153 ($generated@@77 $generated@@153 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@77 $generated@@153 $generated@@152))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (< ($generated@@154 $generated@@156) ($generated@@155 ($generated@@33 $generated@@156 $generated@@157 $generated@@158)))
 :pattern ( ($generated@@33 $generated@@156 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (< ($generated@@154 $generated@@160) ($generated@@155 ($generated@@33 $generated@@159 $generated@@160 $generated@@161)))
 :pattern ( ($generated@@33 $generated@@159 $generated@@160 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (< ($generated@@154 $generated@@164) ($generated@@155 ($generated@@33 $generated@@162 $generated@@163 $generated@@164)))
 :pattern ( ($generated@@33 $generated@@162 $generated@@163 $generated@@164))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@175 T@T) ($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@165 $generated@@175 $generated@@176 $generated@@177 ($generated@@171 $generated@@175 $generated@@176 $generated@@177 $generated@@179 $generated@@180 $generated@@181 $generated@@178) $generated@@180 $generated@@181) $generated@@178)
 :weight 0
)) (and (forall (($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ) (!  (or (= $generated@@187 $generated@@189) (= ($generated@@165 $generated@@182 $generated@@183 $generated@@184 ($generated@@171 $generated@@182 $generated@@183 $generated@@184 $generated@@186 $generated@@187 $generated@@188 $generated@@185) $generated@@189 $generated@@190) ($generated@@165 $generated@@182 $generated@@183 $generated@@184 $generated@@186 $generated@@189 $generated@@190)))
 :weight 0
)) (forall (($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ) (!  (or (= $generated@@197 $generated@@199) (= ($generated@@165 $generated@@191 $generated@@192 $generated@@193 ($generated@@171 $generated@@191 $generated@@192 $generated@@193 $generated@@195 $generated@@196 $generated@@197 $generated@@194) $generated@@198 $generated@@199) ($generated@@165 $generated@@191 $generated@@192 $generated@@193 $generated@@195 $generated@@198 $generated@@199)))
 :weight 0
)))) (= ($generated@@6 $generated@@166) 6)) (= ($generated@@6 $generated@@167) 7)) (forall (($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@169 $generated@@200 $generated@@201 ($generated@@172 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@202) $generated@@204) $generated@@202)
 :weight 0
))) (forall (($generated@@205 T@T) ($generated@@206 T@T) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ) (!  (or (= $generated@@209 $generated@@210) (= ($generated@@169 $generated@@205 $generated@@206 ($generated@@172 $generated@@205 $generated@@206 $generated@@208 $generated@@209 $generated@@207) $generated@@210) ($generated@@169 $generated@@205 $generated@@206 $generated@@208 $generated@@210)))
 :weight 0
))) (forall (($generated@@211 T@T) ($generated@@212 T@T) ) (= ($generated@@6 ($generated@@170 $generated@@211 $generated@@212)) 8))) (forall (($generated@@213 T@T) ($generated@@214 T@T) ) (! (= ($generated@@173 ($generated@@170 $generated@@213 $generated@@214)) $generated@@213)
 :pattern ( ($generated@@170 $generated@@213 $generated@@214))
))) (forall (($generated@@215 T@T) ($generated@@216 T@T) ) (! (= ($generated@@174 ($generated@@170 $generated@@215 $generated@@216)) $generated@@216)
 :pattern ( ($generated@@170 $generated@@215 $generated@@216))
))))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 Bool) ($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@11 ($generated@@165 $generated@@166 $generated@@167 $generated@@7 ($generated@@168 $generated@@217 $generated@@218 $generated@@219 $generated@@220) $generated@@221 $generated@@222))  (=> (and (or (not (= $generated@@221 $generated@@217)) (not true)) ($generated@@11 ($generated@@79 $generated@@7 ($generated@@169 $generated@@167 $generated@@145 ($generated@@169 $generated@@166 ($generated@@170 $generated@@167 $generated@@145) $generated@@218 $generated@@221) $generated@@219)))) $generated@@220))
 :pattern ( ($generated@@165 $generated@@166 $generated@@167 $generated@@7 ($generated@@168 $generated@@217 $generated@@218 $generated@@219 $generated@@220) $generated@@221 $generated@@222))
)))
(assert (forall (($generated@@224 Int) ($generated@@225 Int) ) (! (= ($generated@@223 $generated@@224 $generated@@225) (* $generated@@224 $generated@@225))
 :pattern ( ($generated@@223 $generated@@224 $generated@@225))
)))
(assert (forall (($generated@@226 T@U) ) (! (= ($generated@@154 ($generated@@77 $generated@@78 $generated@@226)) ($generated@@155 $generated@@226))
 :pattern ( ($generated@@154 ($generated@@77 $generated@@78 $generated@@226)))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (!  (=> ($generated@@76 $generated@@227 ($generated@@106 $generated@@228)) (and (= ($generated@@77 $generated@@105 ($generated@@79 $generated@@105 $generated@@227)) $generated@@227) ($generated@@80 $generated@@105 ($generated@@79 $generated@@105 $generated@@227) ($generated@@106 $generated@@228))))
 :pattern ( ($generated@@76 $generated@@227 ($generated@@106 $generated@@228)))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ) (!  (=> (and ($generated@@111 $generated@@231) (and ($generated@@97 $generated@@229) (exists (($generated@@232 T@U) ($generated@@233 T@U) ) (! ($generated@@110 $generated@@78 $generated@@229 ($generated@@38 $generated@@230 $generated@@232 $generated@@233) $generated@@231)
 :pattern ( ($generated@@110 $generated@@78 $generated@@229 ($generated@@38 $generated@@230 $generated@@232 $generated@@233) $generated@@231))
)))) ($generated@@112 ($generated@@51 $generated@@229) $generated@@230 $generated@@231))
 :pattern ( ($generated@@112 ($generated@@51 $generated@@229) $generated@@230 $generated@@231))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> (and ($generated@@111 $generated@@236) (and ($generated@@97 $generated@@234) (exists (($generated@@237 T@U) ($generated@@238 T@U) ) (! ($generated@@110 $generated@@78 $generated@@234 ($generated@@38 $generated@@237 $generated@@235 $generated@@238) $generated@@236)
 :pattern ( ($generated@@110 $generated@@78 $generated@@234 ($generated@@38 $generated@@237 $generated@@235 $generated@@238) $generated@@236))
)))) ($generated@@112 ($generated@@55 $generated@@234) $generated@@235 $generated@@236))
 :pattern ( ($generated@@112 ($generated@@55 $generated@@234) $generated@@235 $generated@@236))
)))
(assert (forall (($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ) (!  (=> (and ($generated@@111 $generated@@241) (and ($generated@@97 $generated@@239) (exists (($generated@@242 T@U) ($generated@@243 T@U) ) (! ($generated@@110 $generated@@78 $generated@@239 ($generated@@38 $generated@@242 $generated@@243 $generated@@240) $generated@@241)
 :pattern ( ($generated@@110 $generated@@78 $generated@@239 ($generated@@38 $generated@@242 $generated@@243 $generated@@240) $generated@@241))
)))) ($generated@@112 ($generated@@59 $generated@@239) $generated@@240 $generated@@241))
 :pattern ( ($generated@@112 ($generated@@59 $generated@@239) $generated@@240 $generated@@241))
)))
(assert (forall (($generated@@244 T@U) ($generated@@245 T@U) ) (! (= ($generated@@85 $generated@@244 $generated@@245)  (and (and (= ($generated@@51 $generated@@244) ($generated@@51 $generated@@245)) (= ($generated@@55 $generated@@244) ($generated@@55 $generated@@245))) (= ($generated@@59 $generated@@244) ($generated@@59 $generated@@245))))
 :pattern ( ($generated@@85 $generated@@244 $generated@@245))
)))
(assert (forall (($generated@@246 T@U) ($generated@@247 T@U) ) (! (= ($generated@@134 $generated@@246 $generated@@247) (forall (($generated@@248 T@U) ) (! (= ($generated@@24 $generated@@246 $generated@@248) ($generated@@24 $generated@@247 $generated@@248))
 :pattern ( ($generated@@24 $generated@@246 $generated@@248))
 :pattern ( ($generated@@24 $generated@@247 $generated@@248))
)))
 :pattern ( ($generated@@134 $generated@@246 $generated@@247))
)))
(assert (forall (($generated@@249 Int) ) (! (= ($generated@@77 $generated@@8 ($generated@@12 ($generated@@88 $generated@@249))) ($generated@@90 $generated@@145 ($generated@@77 $generated@@8 ($generated@@12 $generated@@249))))
 :pattern ( ($generated@@77 $generated@@8 ($generated@@12 ($generated@@88 $generated@@249))))
)))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@T) ) (! (= ($generated@@77 $generated@@251 ($generated@@90 $generated@@251 $generated@@250)) ($generated@@90 $generated@@145 ($generated@@77 $generated@@251 $generated@@250)))
 :pattern ( ($generated@@77 $generated@@251 ($generated@@90 $generated@@251 $generated@@250)))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ) (! ($generated@@110 $generated@@8 $generated@@253 $generated $generated@@252)
 :pattern ( ($generated@@110 $generated@@8 $generated@@253 $generated $generated@@252))
)))
(assert (forall (($generated@@254 T@U) ) (! ($generated@@80 $generated@@8 $generated@@254 $generated)
 :pattern ( ($generated@@80 $generated@@8 $generated@@254 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@255 () Int)
(declare-fun $generated@@256 () Int)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () T@U)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 () T@U)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 (T@U) Bool)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () Int)
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
 (=> (= (ControlFlow 0 0) 12) (let (($generated@@266  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (> $generated@@255 $generated@@256) ($generated@@85 ($generated@@33 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256)) ($generated@@77 $generated@@7 ($generated@@10 (< $generated@@256 $generated@@255))) ($generated@@77 $generated@@8 ($generated@@12 (- $generated@@255 1)))) ($generated@@33 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256)) ($generated@@77 $generated@@7 ($generated@@90 $generated@@7 ($generated@@10 true))) ($generated@@77 $generated@@8 ($generated@@12 (- $generated@@255 1))))))) (=> (=> (> $generated@@255 $generated@@256) ($generated@@85 ($generated@@33 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256)) ($generated@@77 $generated@@7 ($generated@@10 (< $generated@@256 $generated@@255))) ($generated@@77 $generated@@8 ($generated@@12 (- $generated@@255 1)))) ($generated@@33 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256)) ($generated@@77 $generated@@7 ($generated@@90 $generated@@7 ($generated@@10 true))) ($generated@@77 $generated@@8 ($generated@@12 (- $generated@@255 1)))))) (=> (and (= $generated@@257 ($generated@@23 ($generated@@23 ($generated@@23 $generated@@67 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256))) ($generated@@77 $generated@@8 ($generated@@12 $generated@@255))) ($generated@@77 $generated@@8 ($generated@@12 ($generated@@223 $generated@@256 $generated@@255))))) (= $generated@@258 ($generated@@63 $generated@@257 ($generated@@23 $generated@@67 ($generated@@77 $generated@@8 ($generated@@12 $generated@@256)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and ($generated@@93 $generated@@257 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@257))) (and ($generated@@134 $generated@@257 $generated@@257) (or (and ($generated@@93 $generated@@257 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@257))) (and ($generated@@134 $generated@@257 $generated@@257) (and ($generated@@93 $generated@@258 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@258)))))))) (=> (or (and ($generated@@93 $generated@@257 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@257))) (and ($generated@@134 $generated@@257 $generated@@257) (or (and ($generated@@93 $generated@@257 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@257))) (and ($generated@@134 $generated@@257 $generated@@257) (and ($generated@@93 $generated@@258 $generated@@257) (not ($generated@@93 $generated@@257 $generated@@258))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= ($generated@@88 0) ($generated@@88 0))))))))))
(let (($generated@@267  (=> (and (>= $generated@@256 $generated@@255) (= (ControlFlow 0 6) 2)) $generated@@266)))
(let (($generated@@268  (=> (and (> $generated@@255 $generated@@256) (= (ControlFlow 0 5) 2)) $generated@@266)))
(let (($generated@@269  (=> (= $generated@@259 ($generated@@168 $generated@@260 $generated@@261 $generated@@2 false)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (and (not ($generated@@11 ($generated@@90 $generated@@7 ($generated@@10 false)))) ($generated@@11 ($generated@@90 $generated@@7 ($generated@@10 true))))) (=> (and (not ($generated@@11 ($generated@@90 $generated@@7 ($generated@@10 false)))) ($generated@@11 ($generated@@90 $generated@@7 ($generated@@10 true)))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (< ($generated@@88 0) ($generated@@88 1))) (=> (< ($generated@@88 0) ($generated@@88 1)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (< (- $generated@@256 1) $generated@@256)) (=> (< (- $generated@@256 1) $generated@@256) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< $generated@@256 $generated@@256) (and (= $generated@@256 $generated@@256) (< (- $generated@@255 1) $generated@@255)))) (=> (or (< $generated@@256 $generated@@256) (and (= $generated@@256 $generated@@256) (< (- $generated@@255 1) $generated@@255))) (and (=> (= (ControlFlow 0 7) 5) $generated@@268) (=> (= (ControlFlow 0 7) 6) $generated@@267)))))))))))))
(let (($generated@@270  (=> (and ($generated@@111 $generated@@261) ($generated@@262 $generated@@261)) (=> (and (and ($generated@@80 $generated@@105 $generated@@263 ($generated@@106 $generated)) ($generated@@110 $generated@@105 $generated@@263 ($generated@@106 $generated) $generated@@261)) true) (=> (and (and (and ($generated@@80 $generated@@105 $generated@@264 ($generated@@106 $generated)) ($generated@@110 $generated@@105 $generated@@264 ($generated@@106 $generated) $generated@@261)) true) (and (= 0 $generated@@265) (= (ControlFlow 0 12) 7))) $generated@@269)))))
$generated@@270))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)