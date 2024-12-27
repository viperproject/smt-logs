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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@45 (Int) Int)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@53 (T@U T@U) Bool)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@U T@U T@U) Bool)
(declare-fun $generated@@69 (T@U T@U) T@U)
(declare-fun $generated@@74 (T@U T@U) T@U)
(declare-fun $generated@@79 () Int)
(declare-fun $generated@@80 (T@U Int T@U) Int)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@82 (Int T@U) Bool)
(declare-fun $generated@@83 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@92 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@137 () T@T)
(declare-fun $generated@@138 () T@U)
(declare-fun $generated@@139 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@140 () T@T)
(declare-fun $generated@@141 () T@T)
(declare-fun $generated@@142 (T@T T@T) T@T)
(declare-fun $generated@@143 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@144 (T@T) T@T)
(declare-fun $generated@@145 (T@T) T@T)
(declare-fun $generated@@178 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@179 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@180 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@216 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ) (! ($generated@@27 $generated@@12 $generated@@29 $generated@@28 $generated@@30)
 :pattern ( ($generated@@27 $generated@@12 $generated@@29 $generated@@28 $generated@@30))
)))
(assert (forall (($generated@@33 T@U) ) (!  (not ($generated@@31 $generated@@32 $generated@@33))
 :pattern ( ($generated@@31 $generated@@32 $generated@@33))
)))
(assert (= ($generated@@10 $generated@@35) 3))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (!  (=> (and (and ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@39 $generated@@40)) (forall (($generated@@43 T@U) ) (!  (=> ($generated@@37 $generated@@43 $generated@@41) ($generated@@37 $generated@@43 $generated@@39))
 :pattern ( ($generated@@37 $generated@@43 $generated@@41))
 :pattern ( ($generated@@37 $generated@@43 $generated@@39))
))) (forall (($generated@@44 T@U) ) (!  (=> ($generated@@37 $generated@@44 $generated@@40) ($generated@@37 $generated@@44 $generated@@42))
 :pattern ( ($generated@@37 $generated@@44 $generated@@40))
 :pattern ( ($generated@@37 $generated@@44 $generated@@42))
))) ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@41 $generated@@42)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@39 $generated@@40)) ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@41 $generated@@42)))
)))
(assert (forall (($generated@@46 Int) ) (! (= ($generated@@45 $generated@@46) $generated@@46)
 :pattern ( ($generated@@45 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@T) ) (! (= ($generated@@47 $generated@@49 $generated@@48) $generated@@48)
 :pattern ( ($generated@@47 $generated@@49 $generated@@48))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> (and ($generated@@52 $generated@@56) (and ($generated@@37 $generated@@58 $generated@@54) ($generated@@34 $generated@@35 $generated@@57 ($generated@@36 $generated@@54 $generated@@55)))) (= ($generated@@53 ($generated@@50 $generated@@54 $generated@@55 $generated@@51 $generated@@57 $generated@@58) $generated@@32) ($generated@@53 ($generated@@50 $generated@@54 $generated@@55 $generated@@56 $generated@@57 $generated@@58) $generated@@32)))
 :pattern ( ($generated@@50 $generated@@54 $generated@@55 $generated@@51 $generated@@57 $generated@@58) ($generated@@52 $generated@@56))
 :pattern ( ($generated@@50 $generated@@54 $generated@@55 $generated@@56 $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 ($generated@@59 $generated@@62 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@59 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ) (! (= ($generated@@34 $generated@@12 $generated@@63 $generated@@28) (<= ($generated@@45 0) ($generated@@17 $generated@@63)))
 :pattern ( ($generated@@34 $generated@@12 $generated@@63 $generated@@28))
)))
(assert ($generated@@52 $generated@@51))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@64 ($generated@@60 $generated@@68 $generated@@65) $generated@@66 $generated@@67) ($generated@@27 $generated@@68 $generated@@65 $generated@@66 $generated@@67))
 :pattern ( ($generated@@64 ($generated@@60 $generated@@68 $generated@@65) $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@27 $generated@@35 $generated@@72 ($generated@@69 $generated@@70 $generated@@71) $generated@@73) ($generated@@27 $generated@@35 $generated@@72 ($generated@@36 $generated@@70 $generated@@71) $generated@@73))
 :pattern ( ($generated@@27 $generated@@35 $generated@@72 ($generated@@69 $generated@@70 $generated@@71) $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@27 $generated@@35 $generated@@77 ($generated@@74 $generated@@75 $generated@@76) $generated@@78) ($generated@@27 $generated@@35 $generated@@77 ($generated@@69 $generated@@75 $generated@@76) $generated@@78))
 :pattern ( ($generated@@27 $generated@@35 $generated@@77 ($generated@@74 $generated@@75 $generated@@76) $generated@@78))
)))
(assert  (=> (<= 0 $generated@@79) (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 Int) ($generated@@87 T@U) ) (!  (=> (or ($generated@@82 ($generated@@45 $generated@@86) $generated@@87) (and (< 0 $generated@@79) (and (and ($generated@@52 $generated@@85) (<= ($generated@@45 0) $generated@@86)) ($generated@@34 $generated@@35 $generated@@87 ($generated@@74 $generated $generated))))) (and (=> (or (not (= ($generated@@45 $generated@@86) ($generated@@45 0))) (not true)) ($generated@@82 ($generated@@45 (- $generated@@86 1)) $generated@@87)) (= ($generated@@80 ($generated@@81 $generated@@84) ($generated@@45 $generated@@86) $generated@@87) (ite (= ($generated@@45 $generated@@86) ($generated@@45 0)) 0 (+ ($generated@@17 ($generated@@59 $generated@@12 ($generated@@83 $generated $generated $generated@@85 $generated@@87 ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 (- $generated@@86 1))))))) ($generated@@80 ($generated@@81 $generated@@84) ($generated@@45 (- $generated@@86 1)) $generated@@87))))))
 :weight 3
 :pattern ( ($generated@@80 ($generated@@81 $generated@@84) ($generated@@45 $generated@@86) $generated@@87) ($generated@@52 $generated@@85))
))))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@37 $generated@@88 $generated@@28) (and (= ($generated@@60 $generated@@12 ($generated@@59 $generated@@12 $generated@@88)) $generated@@88) ($generated@@34 $generated@@12 ($generated@@59 $generated@@12 $generated@@88) $generated@@28)))
 :pattern ( ($generated@@37 $generated@@88 $generated@@28))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 Int) ($generated@@91 T@U) ) (! (= ($generated@@80 ($generated@@81 $generated@@89) $generated@@90 $generated@@91) ($generated@@80 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@89) $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and ($generated@@52 $generated@@96) ($generated@@27 $generated@@35 $generated@@93 ($generated@@36 $generated@@94 $generated@@95) $generated@@96)) (forall (($generated@@97 T@U) ) (!  (=> (and ($generated@@64 $generated@@97 $generated@@94 $generated@@96) ($generated@@92 $generated@@94 $generated@@95 $generated@@96 $generated@@93 $generated@@97)) ($generated@@64 ($generated@@83 $generated@@94 $generated@@95 $generated@@96 $generated@@93 $generated@@97) $generated@@95 $generated@@96))
 :pattern ( ($generated@@83 $generated@@94 $generated@@95 $generated@@96 $generated@@93 $generated@@97))
)))
 :pattern ( ($generated@@27 $generated@@35 $generated@@93 ($generated@@36 $generated@@94 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> ($generated@@53 $generated@@98 $generated@@99) (= $generated@@98 $generated@@99))
 :pattern ( ($generated@@53 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@100 ($generated@@36 $generated@@101 $generated@@102)) (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@103) ($generated@@37 $generated@@104 $generated@@101)) ($generated@@92 $generated@@101 $generated@@102 $generated@@103 $generated@@100 $generated@@104)) ($generated@@37 ($generated@@83 $generated@@101 $generated@@102 $generated@@103 $generated@@100 $generated@@104) $generated@@102))
 :pattern ( ($generated@@83 $generated@@101 $generated@@102 $generated@@103 $generated@@100 $generated@@104))
)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@100 ($generated@@36 $generated@@101 $generated@@102)))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@37 $generated@@105 $generated) (and (= ($generated@@60 $generated@@12 ($generated@@59 $generated@@12 $generated@@105)) $generated@@105) ($generated@@34 $generated@@12 ($generated@@59 $generated@@12 $generated@@105) $generated)))
 :pattern ( ($generated@@37 $generated@@105 $generated))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@37 ($generated@@60 $generated@@108 $generated@@106) $generated@@107) ($generated@@34 $generated@@108 $generated@@106 $generated@@107))
 :pattern ( ($generated@@37 ($generated@@60 $generated@@108 $generated@@106) $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@109 ($generated@@36 $generated@@110 $generated@@111)) $generated@@110)
 :pattern ( ($generated@@36 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@36 $generated@@113 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@36 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@115 ($generated@@69 $generated@@116 $generated@@117)) $generated@@116)
 :pattern ( ($generated@@69 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@118 ($generated@@69 $generated@@119 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@69 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@121 ($generated@@74 $generated@@122 $generated@@123)) $generated@@122)
 :pattern ( ($generated@@74 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@124 ($generated@@74 $generated@@125 $generated@@126)) $generated@@126)
 :pattern ( ($generated@@74 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@59 $generated@@128 ($generated@@60 $generated@@128 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@60 $generated@@128 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@131 ($generated@@74 $generated@@129 $generated@@130))  (and ($generated@@34 $generated@@35 $generated@@131 ($generated@@69 $generated@@129 $generated@@130)) (forall (($generated@@132 T@U) )  (=> ($generated@@37 $generated@@132 $generated@@129) ($generated@@92 $generated@@129 $generated@@130 $generated@@51 $generated@@131 $generated@@132)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@131 ($generated@@74 $generated@@129 $generated@@130)))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@135 ($generated@@69 $generated@@133 $generated@@134))  (and ($generated@@34 $generated@@35 $generated@@135 ($generated@@36 $generated@@133 $generated@@134)) (forall (($generated@@136 T@U) )  (=> ($generated@@37 $generated@@136 $generated@@133) ($generated@@53 ($generated@@50 $generated@@133 $generated@@134 $generated@@51 $generated@@135 $generated@@136) $generated@@32)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@135 ($generated@@69 $generated@@133 $generated@@134)))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@10 $generated@@137) 4) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@139 $generated@@146 $generated@@147 ($generated@@143 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@148) $generated@@150) $generated@@148)
 :weight 0
))) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@155 $generated@@156) (= ($generated@@139 $generated@@151 $generated@@152 ($generated@@143 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@153) $generated@@156) ($generated@@139 $generated@@151 $generated@@152 $generated@@154 $generated@@156)))
 :weight 0
))) (= ($generated@@10 $generated@@140) 5)) (= ($generated@@10 $generated@@141) 6)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ) (= ($generated@@10 ($generated@@142 $generated@@157 $generated@@158)) 7))) (forall (($generated@@159 T@T) ($generated@@160 T@T) ) (! (= ($generated@@144 ($generated@@142 $generated@@159 $generated@@160)) $generated@@159)
 :pattern ( ($generated@@142 $generated@@159 $generated@@160))
))) (forall (($generated@@161 T@T) ($generated@@162 T@T) ) (! (= ($generated@@145 ($generated@@142 $generated@@161 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@142 $generated@@161 $generated@@162))
))))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@52 $generated@@166) (= ($generated@@27 $generated@@35 $generated@@163 ($generated@@36 $generated@@164 $generated@@165) $generated@@166) (forall (($generated@@167 T@U) ) (!  (=> (and (and ($generated@@37 $generated@@167 $generated@@164) ($generated@@64 $generated@@167 $generated@@164 $generated@@166)) ($generated@@92 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167)) (forall (($generated@@168 T@U) ) (!  (=> (and (or (not (= $generated@@168 $generated@@138)) (not true)) ($generated@@31 ($generated@@50 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167) ($generated@@60 $generated@@137 $generated@@168))) ($generated@@15 ($generated@@59 $generated@@11 ($generated@@139 $generated@@140 $generated@@141 ($generated@@139 $generated@@137 ($generated@@142 $generated@@140 $generated@@141) $generated@@166 $generated@@168) $generated@@1))))
 :pattern ( ($generated@@31 ($generated@@50 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167) ($generated@@60 $generated@@137 $generated@@168)))
)))
 :pattern ( ($generated@@83 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167))
 :pattern ( ($generated@@50 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167))
))))
 :pattern ( ($generated@@27 $generated@@35 $generated@@163 ($generated@@36 $generated@@164 $generated@@165) $generated@@166))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> ($generated@@37 $generated@@171 ($generated@@36 $generated@@169 $generated@@170)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@171)) $generated@@171) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@171) ($generated@@36 $generated@@169 $generated@@170))))
 :pattern ( ($generated@@37 $generated@@171 ($generated@@36 $generated@@169 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> ($generated@@37 $generated@@174 ($generated@@69 $generated@@172 $generated@@173)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@174)) $generated@@174) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@174) ($generated@@69 $generated@@172 $generated@@173))))
 :pattern ( ($generated@@37 $generated@@174 ($generated@@69 $generated@@172 $generated@@173)))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> ($generated@@37 $generated@@177 ($generated@@74 $generated@@175 $generated@@176)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@177)) $generated@@177) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@177) ($generated@@74 $generated@@175 $generated@@176))))
 :pattern ( ($generated@@37 $generated@@177 ($generated@@74 $generated@@175 $generated@@176)))
)))
(assert  (and (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@178 $generated@@181 $generated@@182 $generated@@183 ($generated@@180 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@186 $generated@@187) $generated@@184)
 :weight 0
)) (and (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (or (= $generated@@193 $generated@@195) (= ($generated@@178 $generated@@188 $generated@@189 $generated@@190 ($generated@@180 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@193 $generated@@194 $generated@@191) $generated@@195 $generated@@196) ($generated@@178 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@195 $generated@@196)))
 :weight 0
)) (forall (($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (or (= $generated@@203 $generated@@205) (= ($generated@@178 $generated@@197 $generated@@198 $generated@@199 ($generated@@180 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@202 $generated@@203 $generated@@200) $generated@@204 $generated@@205) ($generated@@178 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@204 $generated@@205)))
 :weight 0
)))))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 Bool) ($generated@@210 T@U) ($generated@@211 T@U) ) (! (= ($generated@@15 ($generated@@178 $generated@@137 $generated@@140 $generated@@11 ($generated@@179 $generated@@206 $generated@@207 $generated@@208 $generated@@209) $generated@@210 $generated@@211))  (=> (and (or (not (= $generated@@210 $generated@@206)) (not true)) ($generated@@15 ($generated@@59 $generated@@11 ($generated@@139 $generated@@140 $generated@@141 ($generated@@139 $generated@@137 ($generated@@142 $generated@@140 $generated@@141) $generated@@207 $generated@@210) $generated@@208)))) $generated@@209))
 :pattern ( ($generated@@178 $generated@@137 $generated@@140 $generated@@11 ($generated@@179 $generated@@206 $generated@@207 $generated@@208 $generated@@209) $generated@@210 $generated@@211))
)))
(assert  (=> (<= 0 $generated@@79) (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 Int) ($generated@@215 T@U) ) (!  (=> (or ($generated@@82 ($generated@@45 $generated@@214) ($generated@@47 $generated@@35 $generated@@215)) (and (< 0 $generated@@79) (and (and ($generated@@52 $generated@@213) (<= ($generated@@45 0) $generated@@214)) ($generated@@34 $generated@@35 $generated@@215 ($generated@@74 $generated $generated))))) (and (=> (or (not (= ($generated@@45 $generated@@214) ($generated@@45 0))) (not true)) ($generated@@82 ($generated@@45 (- $generated@@214 1)) ($generated@@47 $generated@@35 $generated@@215))) (= ($generated@@80 ($generated@@81 $generated@@212) ($generated@@45 $generated@@214) ($generated@@47 $generated@@35 $generated@@215)) (ite (= ($generated@@45 $generated@@214) ($generated@@45 0)) 0 (+ ($generated@@17 ($generated@@59 $generated@@12 ($generated@@83 $generated $generated $generated@@213 ($generated@@47 $generated@@35 $generated@@215) ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 (- $generated@@214 1))))))) ($generated@@80 ($generated@@81 $generated@@212) ($generated@@45 (- $generated@@214 1)) ($generated@@47 $generated@@35 $generated@@215)))))))
 :weight 3
 :pattern ( ($generated@@80 ($generated@@81 $generated@@212) ($generated@@45 $generated@@214) ($generated@@47 $generated@@35 $generated@@215)) ($generated@@52 $generated@@213))
))))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (and (= ($generated@@26 ($generated@@36 $generated@@217 $generated@@218)) $generated@@3) (= ($generated@@216 ($generated@@36 $generated@@217 $generated@@218)) $generated@@7))
 :pattern ( ($generated@@36 $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@26 ($generated@@69 $generated@@219 $generated@@220)) $generated@@4) (= ($generated@@216 ($generated@@69 $generated@@219 $generated@@220)) $generated@@8))
 :pattern ( ($generated@@69 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (!  (and (= ($generated@@26 ($generated@@74 $generated@@221 $generated@@222)) $generated@@5) (= ($generated@@216 ($generated@@74 $generated@@221 $generated@@222)) $generated@@9))
 :pattern ( ($generated@@74 $generated@@221 $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@225) (and ($generated@@37 $generated@@227 $generated@@223) ($generated@@34 $generated@@35 $generated@@226 ($generated@@36 $generated@@223 $generated@@224)))) ($generated@@53 ($generated@@50 $generated@@223 $generated@@224 $generated@@51 $generated@@226 $generated@@227) $generated@@32)) (= ($generated@@92 $generated@@223 $generated@@224 $generated@@51 $generated@@226 $generated@@227) ($generated@@92 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@227)))
 :pattern ( ($generated@@92 $generated@@223 $generated@@224 $generated@@51 $generated@@226 $generated@@227) ($generated@@52 $generated@@225))
 :pattern ( ($generated@@92 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@227))
)))
(assert (= ($generated@@26 $generated@@28) $generated@@2))
(assert (= ($generated@@216 $generated@@28) $generated@@6))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (! (= ($generated@@53 $generated@@228 $generated@@229) (forall (($generated@@230 T@U) ) (! (= ($generated@@31 $generated@@228 $generated@@230) ($generated@@31 $generated@@229 $generated@@230))
 :pattern ( ($generated@@31 $generated@@228 $generated@@230))
 :pattern ( ($generated@@31 $generated@@229 $generated@@230))
)))
 :pattern ( ($generated@@53 $generated@@228 $generated@@229))
)))
(assert  (=> (<= 0 $generated@@79) (forall (($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 Int) ($generated@@234 T@U) ) (!  (=> (or ($generated@@82 $generated@@233 $generated@@234) (and (< 0 $generated@@79) (and (and ($generated@@52 $generated@@232) (<= ($generated@@45 0) $generated@@233)) ($generated@@34 $generated@@35 $generated@@234 ($generated@@74 $generated $generated))))) (and (=> (or (not (= $generated@@233 ($generated@@45 0))) (not true)) ($generated@@82 (- $generated@@233 1) $generated@@234)) (= ($generated@@80 ($generated@@81 $generated@@231) $generated@@233 $generated@@234) (ite (= $generated@@233 ($generated@@45 0)) 0 (+ ($generated@@17 ($generated@@59 $generated@@12 ($generated@@83 $generated $generated $generated@@232 $generated@@234 ($generated@@60 $generated@@12 ($generated@@16 (- $generated@@233 1)))))) ($generated@@80 $generated@@231 (- $generated@@233 1) $generated@@234))))))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@231) $generated@@233 $generated@@234) ($generated@@52 $generated@@232))
))))
(assert (forall (($generated@@235 Int) ) (! (= ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 $generated@@235))) ($generated@@47 $generated@@141 ($generated@@60 $generated@@12 ($generated@@16 $generated@@235))))
 :pattern ( ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 $generated@@235))))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@T) ) (! (= ($generated@@60 $generated@@237 ($generated@@47 $generated@@237 $generated@@236)) ($generated@@47 $generated@@141 ($generated@@60 $generated@@237 $generated@@236)))
 :pattern ( ($generated@@60 $generated@@237 ($generated@@47 $generated@@237 $generated@@236)))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ) (! ($generated@@27 $generated@@12 $generated@@239 $generated $generated@@238)
 :pattern ( ($generated@@27 $generated@@12 $generated@@239 $generated $generated@@238))
)))
(assert (forall (($generated@@240 T@U) ) (! ($generated@@34 $generated@@12 $generated@@240 $generated)
 :pattern ( ($generated@@34 $generated@@12 $generated@@240 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@241 () Int)
(declare-fun $generated@@242 () Int)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@247  (=> (or (not (= $generated@@241 ($generated@@45 0))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($generated@@34 $generated@@12 ($generated@@16 (- $generated@@241 1)) $generated@@28)) (=> ($generated@@34 $generated@@12 ($generated@@16 (- $generated@@241 1)) $generated@@28) (=> (= $generated@@242 (- $generated@@241 1)) (=> (and ($generated@@27 $generated@@12 ($generated@@16 $generated@@242) $generated@@28 $generated@@243) ($generated@@27 $generated@@35 $generated@@244 ($generated@@74 $generated $generated) $generated@@243)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 $generated@@241) (= $generated@@242 $generated@@241))) (=> (or (<= 0 $generated@@241) (= $generated@@242 $generated@@241)) (=> (= (ControlFlow 0 4) (- 0 3)) (< $generated@@242 $generated@@241)))))))))))
(let (($generated@@248 true))
(let (($generated@@249 true))
(let (($generated@@250  (=> (= $generated@@245 ($generated@@179 $generated@@138 $generated@@243 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@249) (=> (= (ControlFlow 0 7) 2) $generated@@248)) (=> (= (ControlFlow 0 7) 4) $generated@@247)))))
(let (($generated@@251  (=> (and ($generated@@52 $generated@@243) ($generated@@246 $generated@@243)) (=> (and (and (<= ($generated@@45 0) $generated@@241) ($generated@@34 $generated@@35 $generated@@244 ($generated@@74 $generated $generated))) (and (= 0 $generated@@79) (= (ControlFlow 0 8) 7))) $generated@@250))))
$generated@@251))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)