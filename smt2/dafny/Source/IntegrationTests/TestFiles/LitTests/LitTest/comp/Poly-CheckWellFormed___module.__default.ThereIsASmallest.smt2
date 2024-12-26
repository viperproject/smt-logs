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
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 (Bool) T@U)
(declare-fun $generated@@14 (T@U) Bool)
(declare-fun $generated@@15 (Int) T@U)
(declare-fun $generated@@16 (T@U) Int)
(declare-fun $generated@@17 (Real) T@U)
(declare-fun $generated@@18 (T@U) Real)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) Bool)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@36 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@42 (T@U T@U) T@U)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 (T@T T@T) T@T)
(declare-fun $generated@@54 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@76 (T@U) Bool)
(declare-fun $generated@@77 (T@U T@U T@U) Bool)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@103 (T@U T@U) Bool)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@133 (T@U) Int)
(declare-fun $generated@@134 (T@U) Int)
(declare-fun $generated@@139 () Int)
(declare-fun $generated@@140 (T@U T@U) T@U)
(declare-fun $generated@@141 (T@U T@U) Bool)
(declare-fun $generated@@147 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@148 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@149 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@U) T@U)
(declare-fun $generated@@187 (T@U) Bool)
(declare-fun $generated@@188 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@10) 0) (= ($generated@@9 $generated@@11) 1)) (= ($generated@@9 $generated@@12) 2)) (forall (($generated@@19 Bool) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Int) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8)
)
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (= ($generated@@9 $generated@@28) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@30 $generated@@31)) ($generated@@26 $generated@@32))
 :pattern ( ($generated@@26 $generated@@32) ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@30 $generated@@31)))
)))
(assert (forall (($generated@@35 T@U) ) (!  (not ($generated@@33 $generated@@34 $generated@@35))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35))
)))
(assert (= ($generated@@9 $generated@@37) 4))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@40 $generated@@38 $generated@@41) ($generated@@36 $generated@@37 $generated@@40 $generated@@39 $generated@@41))
 :pattern ( ($generated@@36 $generated@@37 $generated@@40 $generated@@38 $generated@@41))
 :pattern ( ($generated@@36 $generated@@37 $generated@@40 $generated@@39 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@27 $generated@@28 ($generated@@42 $generated@@46 $generated@@47) ($generated@@29 $generated@@44 $generated@@45))  (and ($generated@@43 $generated@@46 $generated@@44) ($generated@@43 $generated@@47 $generated@@45)))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@42 $generated@@46 $generated@@47) ($generated@@29 $generated@@44 $generated@@45)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@50 $generated@@57 $generated@@58 ($generated@@54 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@50 $generated@@62 $generated@@63 ($generated@@54 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@50 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@9 $generated@@51) 5)) (= ($generated@@9 $generated@@52) 6)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (= ($generated@@9 ($generated@@53 $generated@@68 $generated@@69)) 7))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@55 ($generated@@53 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@53 $generated@@70 $generated@@71))
))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@56 ($generated@@53 $generated@@72 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@53 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@74 $generated@@39 $generated@@75)  (or (= $generated@@74 $generated@@48) ($generated@@14 ($generated@@49 $generated@@10 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@37 ($generated@@53 $generated@@51 $generated@@52) $generated@@75 $generated@@74) $generated@@2)))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@74 $generated@@39 $generated@@75))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> ($generated@@76 $generated@@82) (= ($generated@@36 $generated@@28 ($generated@@42 $generated@@80 $generated@@81) ($generated@@29 $generated@@78 $generated@@79) $generated@@82)  (and ($generated@@77 $generated@@80 $generated@@78 $generated@@82) ($generated@@77 $generated@@81 $generated@@79 $generated@@82))))
 :pattern ( ($generated@@36 $generated@@28 ($generated@@42 $generated@@80 $generated@@81) ($generated@@29 $generated@@78 $generated@@79) $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@26 $generated@@84) (= ($generated@@83 $generated@@84) $generated@@3))
 :pattern ( ($generated@@26 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@49 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@49 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@26 $generated@@88) (exists (($generated@@89 T@U) ($generated@@90 T@U) ) (= $generated@@88 ($generated@@42 $generated@@89 $generated@@90))))
 :pattern ( ($generated@@26 $generated@@88))
)))
(assert (= ($generated@@9 $generated@@91) 8))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@27 $generated@@91 $generated@@93 ($generated@@92 $generated@@94)) (forall (($generated@@95 T@U) ) (!  (=> ($generated@@33 $generated@@93 $generated@@95) ($generated@@43 $generated@@95 $generated@@94))
 :pattern ( ($generated@@33 $generated@@93 $generated@@95))
)))
 :pattern ( ($generated@@27 $generated@@91 $generated@@93 ($generated@@92 $generated@@94)))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@77 ($generated@@85 $generated@@99 $generated@@96) $generated@@97 $generated@@98) ($generated@@36 $generated@@99 $generated@@96 $generated@@97 $generated@@98))
 :pattern ( ($generated@@77 ($generated@@85 $generated@@99 $generated@@96) $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ) (!  (=> ($generated@@43 $generated@@100 $generated@@39) (and (= ($generated@@85 $generated@@37 ($generated@@49 $generated@@37 $generated@@100)) $generated@@100) ($generated@@27 $generated@@37 ($generated@@49 $generated@@37 $generated@@100) $generated@@39)))
 :pattern ( ($generated@@43 $generated@@100 $generated@@39))
)))
(assert (forall (($generated@@101 T@U) ) (!  (=> ($generated@@43 $generated@@101 $generated@@38) (and (= ($generated@@85 $generated@@37 ($generated@@49 $generated@@37 $generated@@101)) $generated@@101) ($generated@@27 $generated@@37 ($generated@@49 $generated@@37 $generated@@101) $generated@@38)))
 :pattern ( ($generated@@43 $generated@@101 $generated@@38))
)))
(assert (forall (($generated@@102 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@102 $generated@@38)  (and ($generated@@27 $generated@@37 $generated@@102 $generated@@39) (or (not (= $generated@@102 $generated@@48)) (not true))))
 :pattern ( ($generated@@27 $generated@@37 $generated@@102 $generated@@38))
 :pattern ( ($generated@@27 $generated@@37 $generated@@102 $generated@@39))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> ($generated@@103 $generated@@104 $generated@@105) (= $generated@@104 $generated@@105))
 :pattern ( ($generated@@103 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@43 $generated@@106 $generated) (and (= ($generated@@85 $generated@@12 ($generated@@49 $generated@@12 $generated@@106)) $generated@@106) ($generated@@27 $generated@@12 ($generated@@49 $generated@@12 $generated@@106) $generated)))
 :pattern ( ($generated@@43 $generated@@106 $generated))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@43 ($generated@@85 $generated@@109 $generated@@107) $generated@@108) ($generated@@27 $generated@@109 $generated@@107 $generated@@108))
 :pattern ( ($generated@@43 ($generated@@85 $generated@@109 $generated@@107) $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@36 $generated@@91 $generated@@110 ($generated@@92 $generated@@111) $generated@@112) (forall (($generated@@113 T@U) ) (!  (=> ($generated@@33 $generated@@110 $generated@@113) ($generated@@77 $generated@@113 $generated@@111 $generated@@112))
 :pattern ( ($generated@@33 $generated@@110 $generated@@113))
)))
 :pattern ( ($generated@@36 $generated@@91 $generated@@110 ($generated@@92 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@83 ($generated@@42 $generated@@114 $generated@@115)) $generated@@3)
 :pattern ( ($generated@@42 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@116 ($generated@@29 $generated@@117 $generated@@118)) $generated@@117)
 :pattern ( ($generated@@29 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 ($generated@@29 $generated@@120 $generated@@121)) $generated@@121)
 :pattern ( ($generated@@29 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@42 $generated@@123 $generated@@124)) $generated@@123)
 :pattern ( ($generated@@42 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@125 ($generated@@42 $generated@@126 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@42 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@128 ($generated@@92 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@92 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ) (! (= ($generated@@25 ($generated@@92 $generated@@130)) $generated@@1)
 :pattern ( ($generated@@92 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@T) ) (! (= ($generated@@49 $generated@@132 ($generated@@85 $generated@@132 $generated@@131)) $generated@@131)
 :pattern ( ($generated@@85 $generated@@132 $generated@@131))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (< ($generated@@133 $generated@@135) ($generated@@134 ($generated@@42 $generated@@135 $generated@@136)))
 :pattern ( ($generated@@42 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (< ($generated@@133 $generated@@138) ($generated@@134 ($generated@@42 $generated@@137 $generated@@138)))
 :pattern ( ($generated@@42 $generated@@137 $generated@@138))
)))
(assert  (=> (<= 1 $generated@@139) (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (or ($generated@@141 $generated@@142 $generated@@143) (and (< 1 $generated@@139) (and ($generated@@76 $generated@@142) (and (or (not (= $generated@@143 $generated@@48)) (not true)) (and ($generated@@27 $generated@@37 $generated@@143 $generated@@38) ($generated@@36 $generated@@37 $generated@@143 $generated@@38 $generated@@142)))))) ($generated@@27 $generated@@28 ($generated@@140 $generated@@142 $generated@@143) ($generated@@29 $generated $generated)))
 :pattern ( ($generated@@140 $generated@@142 $generated@@143))
))))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> ($generated@@43 $generated@@146 ($generated@@29 $generated@@144 $generated@@145)) (and (= ($generated@@85 $generated@@28 ($generated@@49 $generated@@28 $generated@@146)) $generated@@146) ($generated@@27 $generated@@28 ($generated@@49 $generated@@28 $generated@@146) ($generated@@29 $generated@@144 $generated@@145))))
 :pattern ( ($generated@@43 $generated@@146 ($generated@@29 $generated@@144 $generated@@145)))
)))
(assert  (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@147 $generated@@150 $generated@@151 $generated@@152 ($generated@@149 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@155 $generated@@156) $generated@@153)
 :weight 0
)) (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@162 $generated@@164) (= ($generated@@147 $generated@@157 $generated@@158 $generated@@159 ($generated@@149 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@147 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)) (forall (($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@T) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (or (= $generated@@172 $generated@@174) (= ($generated@@147 $generated@@166 $generated@@167 $generated@@168 ($generated@@149 $generated@@166 $generated@@167 $generated@@168 $generated@@170 $generated@@171 $generated@@172 $generated@@169) $generated@@173 $generated@@174) ($generated@@147 $generated@@166 $generated@@167 $generated@@168 $generated@@170 $generated@@173 $generated@@174)))
 :weight 0
)))))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 Bool) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@14 ($generated@@147 $generated@@37 $generated@@51 $generated@@10 ($generated@@148 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))  (=> (and (or (not (= $generated@@179 $generated@@175)) (not true)) ($generated@@14 ($generated@@49 $generated@@10 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@37 ($generated@@53 $generated@@51 $generated@@52) $generated@@176 $generated@@179) $generated@@177)))) $generated@@178))
 :pattern ( ($generated@@147 $generated@@37 $generated@@51 $generated@@10 ($generated@@148 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (and (= ($generated@@25 ($generated@@29 $generated@@182 $generated@@183)) $generated@@4) (= ($generated@@181 ($generated@@29 $generated@@182 $generated@@183)) $generated@@7))
 :pattern ( ($generated@@29 $generated@@182 $generated@@183))
)))
(assert (forall (($generated@@184 T@U) ) (! (= ($generated@@133 ($generated@@85 $generated@@28 $generated@@184)) ($generated@@134 $generated@@184))
 :pattern ( ($generated@@133 ($generated@@85 $generated@@28 $generated@@184)))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> ($generated@@43 $generated@@185 ($generated@@92 $generated@@186)) (and (= ($generated@@85 $generated@@91 ($generated@@49 $generated@@91 $generated@@185)) $generated@@185) ($generated@@27 $generated@@91 ($generated@@49 $generated@@91 $generated@@185) ($generated@@92 $generated@@186))))
 :pattern ( ($generated@@43 $generated@@185 ($generated@@92 $generated@@186)))
)))
(assert (= ($generated@@25 $generated@@39) $generated@@5))
(assert (= ($generated@@181 $generated@@39) $generated@@8))
(assert (= ($generated@@25 $generated@@38) $generated@@6))
(assert (= ($generated@@181 $generated@@38) $generated@@8))
(assert (forall (($generated@@189 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@189 $generated@@39)  (or (= $generated@@189 $generated@@48) ($generated@@187 ($generated@@188 $generated@@189))))
 :pattern ( ($generated@@27 $generated@@37 $generated@@189 $generated@@39))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@103 $generated@@190 $generated@@191) (forall (($generated@@192 T@U) ) (! (= ($generated@@33 $generated@@190 $generated@@192) ($generated@@33 $generated@@191 $generated@@192))
 :pattern ( ($generated@@33 $generated@@190 $generated@@192))
 :pattern ( ($generated@@33 $generated@@191 $generated@@192))
)))
 :pattern ( ($generated@@103 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> (and ($generated@@76 $generated@@195) (and ($generated@@26 $generated@@193) (exists (($generated@@196 T@U) ) (! ($generated@@36 $generated@@28 $generated@@193 ($generated@@29 $generated@@194 $generated@@196) $generated@@195)
 :pattern ( ($generated@@36 $generated@@28 $generated@@193 ($generated@@29 $generated@@194 $generated@@196) $generated@@195))
)))) ($generated@@77 ($generated@@122 $generated@@193) $generated@@194 $generated@@195))
 :pattern ( ($generated@@77 ($generated@@122 $generated@@193) $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ) (!  (=> (and ($generated@@76 $generated@@199) (and ($generated@@26 $generated@@197) (exists (($generated@@200 T@U) ) (! ($generated@@36 $generated@@28 $generated@@197 ($generated@@29 $generated@@200 $generated@@198) $generated@@199)
 :pattern ( ($generated@@36 $generated@@28 $generated@@197 ($generated@@29 $generated@@200 $generated@@198) $generated@@199))
)))) ($generated@@77 ($generated@@125 $generated@@197) $generated@@198 $generated@@199))
 :pattern ( ($generated@@77 ($generated@@125 $generated@@197) $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (! ($generated@@36 $generated@@12 $generated@@202 $generated $generated@@201)
 :pattern ( ($generated@@36 $generated@@12 $generated@@202 $generated $generated@@201))
)))
(assert (forall (($generated@@203 T@U) ) (! ($generated@@27 $generated@@12 $generated@@203 $generated)
 :pattern ( ($generated@@27 $generated@@12 $generated@@203 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 (T@U) Bool)
(declare-fun $generated@@211 () T@U)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@212 true))
(let (($generated@@213  (=> (and (=> ($generated@@33 $generated@@204 ($generated@@85 $generated@@37 $generated@@205)) (<= ($generated@@18 ($generated@@49 $generated@@12 ($generated@@122 ($generated@@140 $generated@@206 $generated@@207)))) ($generated@@18 ($generated@@49 $generated@@12 ($generated@@122 ($generated@@140 $generated@@206 $generated@@205)))))) (= (ControlFlow 0 5) 1)) $generated@@212)))
(let (($generated@@214  (=> ($generated@@33 $generated@@204 ($generated@@85 $generated@@37 $generated@@205)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@207 $generated@@48)) (not true))) (=> (or (not (= $generated@@207 $generated@@48)) (not true)) (=> (and (and ($generated@@77 ($generated@@85 $generated@@37 $generated@@207) $generated@@39 $generated@@206) ($generated@@141 $generated@@206 $generated@@207)) (and ($generated@@26 ($generated@@140 $generated@@206 $generated@@207)) ($generated@@26 ($generated@@140 $generated@@206 $generated@@207)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@205 $generated@@48)) (not true))) (=> (or (not (= $generated@@205 $generated@@48)) (not true)) (=> (and ($generated@@77 ($generated@@85 $generated@@37 $generated@@205) $generated@@39 $generated@@206) ($generated@@141 $generated@@206 $generated@@205)) (=> (and (and ($generated@@26 ($generated@@140 $generated@@206 $generated@@205)) ($generated@@26 ($generated@@140 $generated@@206 $generated@@205))) (and (<= ($generated@@18 ($generated@@49 $generated@@12 ($generated@@122 ($generated@@140 $generated@@206 $generated@@207)))) ($generated@@18 ($generated@@49 $generated@@12 ($generated@@122 ($generated@@140 $generated@@206 $generated@@205))))) (= (ControlFlow 0 2) 1))) $generated@@212))))))))))
(let (($generated@@215  (=> (and (= $generated@@208 ($generated@@148 $generated@@48 $generated@@209 $generated@@2 false)) (not ($generated@@103 $generated@@204 $generated@@34))) (=> (and (and ($generated@@76 $generated@@206) ($generated@@210 $generated@@206)) (= $generated@@209 $generated@@206)) (=> (and (and (and ($generated@@27 $generated@@37 $generated@@207 $generated@@38) ($generated@@36 $generated@@37 $generated@@207 $generated@@38 $generated@@206)) ($generated@@33 $generated@@204 ($generated@@85 $generated@@37 $generated@@207))) (and ($generated@@27 $generated@@37 $generated@@205 $generated@@38) ($generated@@36 $generated@@37 $generated@@205 $generated@@38 $generated@@206))) (and (=> (= (ControlFlow 0 6) 2) $generated@@214) (=> (= (ControlFlow 0 6) 5) $generated@@213)))))))
(let (($generated@@216  (=> (and (and (and ($generated@@76 $generated@@209) ($generated@@210 $generated@@209)) (and ($generated@@27 $generated@@91 $generated@@204 ($generated@@92 $generated@@38)) ($generated@@36 $generated@@91 $generated@@204 ($generated@@92 $generated@@38) $generated@@209))) (and (and ($generated@@27 $generated@@37 $generated@@211 $generated@@38) ($generated@@36 $generated@@37 $generated@@211 $generated@@38 $generated@@209)) (and (= 2 $generated@@139) (= (ControlFlow 0 7) 6)))) $generated@@215)))
$generated@@216))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)