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
(declare-fun $generated@@80 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@81 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@107 (T@U) T@U)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@126 () T@T)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@129 () T@T)
(declare-fun $generated@@130 () T@T)
(declare-fun $generated@@131 (T@T T@T) T@T)
(declare-fun $generated@@132 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 (T@T) T@T)
(declare-fun $generated@@134 (T@T) T@T)
(declare-fun $generated@@167 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@168 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@169 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@201 (T@U) T@U)
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
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@37 $generated@@79 $generated@@28) (and (= ($generated@@60 $generated@@12 ($generated@@59 $generated@@12 $generated@@79)) $generated@@79) ($generated@@34 $generated@@12 ($generated@@59 $generated@@12 $generated@@79) $generated@@28)))
 :pattern ( ($generated@@37 $generated@@79 $generated@@28))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> (and ($generated@@52 $generated@@85) ($generated@@27 $generated@@35 $generated@@82 ($generated@@36 $generated@@83 $generated@@84) $generated@@85)) (forall (($generated@@86 T@U) ) (!  (=> (and ($generated@@64 $generated@@86 $generated@@83 $generated@@85) ($generated@@81 $generated@@83 $generated@@84 $generated@@85 $generated@@82 $generated@@86)) ($generated@@64 ($generated@@80 $generated@@83 $generated@@84 $generated@@85 $generated@@82 $generated@@86) $generated@@84 $generated@@85))
 :pattern ( ($generated@@80 $generated@@83 $generated@@84 $generated@@85 $generated@@82 $generated@@86))
)))
 :pattern ( ($generated@@27 $generated@@35 $generated@@82 ($generated@@36 $generated@@83 $generated@@84) $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> ($generated@@53 $generated@@87 $generated@@88) (= $generated@@87 $generated@@88))
 :pattern ( ($generated@@53 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@89 ($generated@@36 $generated@@90 $generated@@91)) (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@92) ($generated@@37 $generated@@93 $generated@@90)) ($generated@@81 $generated@@90 $generated@@91 $generated@@92 $generated@@89 $generated@@93)) ($generated@@37 ($generated@@80 $generated@@90 $generated@@91 $generated@@92 $generated@@89 $generated@@93) $generated@@91))
 :pattern ( ($generated@@80 $generated@@90 $generated@@91 $generated@@92 $generated@@89 $generated@@93))
)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@89 ($generated@@36 $generated@@90 $generated@@91)))
)))
(assert (forall (($generated@@94 T@U) ) (!  (=> ($generated@@37 $generated@@94 $generated) (and (= ($generated@@60 $generated@@11 ($generated@@59 $generated@@11 $generated@@94)) $generated@@94) ($generated@@34 $generated@@11 ($generated@@59 $generated@@11 $generated@@94) $generated)))
 :pattern ( ($generated@@37 $generated@@94 $generated))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@37 ($generated@@60 $generated@@97 $generated@@95) $generated@@96) ($generated@@34 $generated@@97 $generated@@95 $generated@@96))
 :pattern ( ($generated@@37 ($generated@@60 $generated@@97 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@98 ($generated@@36 $generated@@99 $generated@@100)) $generated@@99)
 :pattern ( ($generated@@36 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@101 ($generated@@36 $generated@@102 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@36 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@104 ($generated@@69 $generated@@105 $generated@@106)) $generated@@105)
 :pattern ( ($generated@@69 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@107 ($generated@@69 $generated@@108 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@69 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@110 ($generated@@74 $generated@@111 $generated@@112)) $generated@@111)
 :pattern ( ($generated@@74 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@113 ($generated@@74 $generated@@114 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@74 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@59 $generated@@117 ($generated@@60 $generated@@117 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@60 $generated@@117 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@120 ($generated@@74 $generated@@118 $generated@@119))  (and ($generated@@34 $generated@@35 $generated@@120 ($generated@@69 $generated@@118 $generated@@119)) (forall (($generated@@121 T@U) )  (=> ($generated@@37 $generated@@121 $generated@@118) ($generated@@81 $generated@@118 $generated@@119 $generated@@51 $generated@@120 $generated@@121)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@120 ($generated@@74 $generated@@118 $generated@@119)))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@124 ($generated@@69 $generated@@122 $generated@@123))  (and ($generated@@34 $generated@@35 $generated@@124 ($generated@@36 $generated@@122 $generated@@123)) (forall (($generated@@125 T@U) )  (=> ($generated@@37 $generated@@125 $generated@@122) ($generated@@53 ($generated@@50 $generated@@122 $generated@@123 $generated@@51 $generated@@124 $generated@@125) $generated@@32)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@124 ($generated@@69 $generated@@122 $generated@@123)))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@10 $generated@@126) 4) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@128 $generated@@135 $generated@@136 ($generated@@132 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@137) $generated@@139) $generated@@137)
 :weight 0
))) (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@144 $generated@@145) (= ($generated@@128 $generated@@140 $generated@@141 ($generated@@132 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@142) $generated@@145) ($generated@@128 $generated@@140 $generated@@141 $generated@@143 $generated@@145)))
 :weight 0
))) (= ($generated@@10 $generated@@129) 5)) (= ($generated@@10 $generated@@130) 6)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ) (= ($generated@@10 ($generated@@131 $generated@@146 $generated@@147)) 7))) (forall (($generated@@148 T@T) ($generated@@149 T@T) ) (! (= ($generated@@133 ($generated@@131 $generated@@148 $generated@@149)) $generated@@148)
 :pattern ( ($generated@@131 $generated@@148 $generated@@149))
))) (forall (($generated@@150 T@T) ($generated@@151 T@T) ) (! (= ($generated@@134 ($generated@@131 $generated@@150 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@131 $generated@@150 $generated@@151))
))))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> ($generated@@52 $generated@@155) (= ($generated@@27 $generated@@35 $generated@@152 ($generated@@36 $generated@@153 $generated@@154) $generated@@155) (forall (($generated@@156 T@U) ) (!  (=> (and (and ($generated@@37 $generated@@156 $generated@@153) ($generated@@64 $generated@@156 $generated@@153 $generated@@155)) ($generated@@81 $generated@@153 $generated@@154 $generated@@155 $generated@@152 $generated@@156)) (forall (($generated@@157 T@U) ) (!  (=> (and (or (not (= $generated@@157 $generated@@127)) (not true)) ($generated@@31 ($generated@@50 $generated@@153 $generated@@154 $generated@@155 $generated@@152 $generated@@156) ($generated@@60 $generated@@126 $generated@@157))) ($generated@@15 ($generated@@59 $generated@@11 ($generated@@128 $generated@@129 $generated@@130 ($generated@@128 $generated@@126 ($generated@@131 $generated@@129 $generated@@130) $generated@@155 $generated@@157) $generated@@1))))
 :pattern ( ($generated@@31 ($generated@@50 $generated@@153 $generated@@154 $generated@@155 $generated@@152 $generated@@156) ($generated@@60 $generated@@126 $generated@@157)))
)))
 :pattern ( ($generated@@80 $generated@@153 $generated@@154 $generated@@155 $generated@@152 $generated@@156))
 :pattern ( ($generated@@50 $generated@@153 $generated@@154 $generated@@155 $generated@@152 $generated@@156))
))))
 :pattern ( ($generated@@27 $generated@@35 $generated@@152 ($generated@@36 $generated@@153 $generated@@154) $generated@@155))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> ($generated@@37 $generated@@160 ($generated@@36 $generated@@158 $generated@@159)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@160)) $generated@@160) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@160) ($generated@@36 $generated@@158 $generated@@159))))
 :pattern ( ($generated@@37 $generated@@160 ($generated@@36 $generated@@158 $generated@@159)))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> ($generated@@37 $generated@@163 ($generated@@69 $generated@@161 $generated@@162)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@163)) $generated@@163) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@163) ($generated@@69 $generated@@161 $generated@@162))))
 :pattern ( ($generated@@37 $generated@@163 ($generated@@69 $generated@@161 $generated@@162)))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@37 $generated@@166 ($generated@@74 $generated@@164 $generated@@165)) (and (= ($generated@@60 $generated@@35 ($generated@@59 $generated@@35 $generated@@166)) $generated@@166) ($generated@@34 $generated@@35 ($generated@@59 $generated@@35 $generated@@166) ($generated@@74 $generated@@164 $generated@@165))))
 :pattern ( ($generated@@37 $generated@@166 ($generated@@74 $generated@@164 $generated@@165)))
)))
(assert  (and (forall (($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@167 $generated@@170 $generated@@171 $generated@@172 ($generated@@169 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@176 $generated@@173) $generated@@175 $generated@@176) $generated@@173)
 :weight 0
)) (and (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (!  (or (= $generated@@182 $generated@@184) (= ($generated@@167 $generated@@177 $generated@@178 $generated@@179 ($generated@@169 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@182 $generated@@183 $generated@@180) $generated@@184 $generated@@185) ($generated@@167 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@184 $generated@@185)))
 :weight 0
)) (forall (($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (!  (or (= $generated@@192 $generated@@194) (= ($generated@@167 $generated@@186 $generated@@187 $generated@@188 ($generated@@169 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@191 $generated@@192 $generated@@189) $generated@@193 $generated@@194) ($generated@@167 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@193 $generated@@194)))
 :weight 0
)))))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 Bool) ($generated@@199 T@U) ($generated@@200 T@U) ) (! (= ($generated@@15 ($generated@@167 $generated@@126 $generated@@129 $generated@@11 ($generated@@168 $generated@@195 $generated@@196 $generated@@197 $generated@@198) $generated@@199 $generated@@200))  (=> (and (or (not (= $generated@@199 $generated@@195)) (not true)) ($generated@@15 ($generated@@59 $generated@@11 ($generated@@128 $generated@@129 $generated@@130 ($generated@@128 $generated@@126 ($generated@@131 $generated@@129 $generated@@130) $generated@@196 $generated@@199) $generated@@197)))) $generated@@198))
 :pattern ( ($generated@@167 $generated@@126 $generated@@129 $generated@@11 ($generated@@168 $generated@@195 $generated@@196 $generated@@197 $generated@@198) $generated@@199 $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (!  (and (= ($generated@@26 ($generated@@36 $generated@@202 $generated@@203)) $generated@@3) (= ($generated@@201 ($generated@@36 $generated@@202 $generated@@203)) $generated@@7))
 :pattern ( ($generated@@36 $generated@@202 $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (!  (and (= ($generated@@26 ($generated@@69 $generated@@204 $generated@@205)) $generated@@4) (= ($generated@@201 ($generated@@69 $generated@@204 $generated@@205)) $generated@@8))
 :pattern ( ($generated@@69 $generated@@204 $generated@@205))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (!  (and (= ($generated@@26 ($generated@@74 $generated@@206 $generated@@207)) $generated@@5) (= ($generated@@201 ($generated@@74 $generated@@206 $generated@@207)) $generated@@9))
 :pattern ( ($generated@@74 $generated@@206 $generated@@207))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@210) (and ($generated@@37 $generated@@212 $generated@@208) ($generated@@34 $generated@@35 $generated@@211 ($generated@@36 $generated@@208 $generated@@209)))) ($generated@@53 ($generated@@50 $generated@@208 $generated@@209 $generated@@51 $generated@@211 $generated@@212) $generated@@32)) (= ($generated@@81 $generated@@208 $generated@@209 $generated@@51 $generated@@211 $generated@@212) ($generated@@81 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212)))
 :pattern ( ($generated@@81 $generated@@208 $generated@@209 $generated@@51 $generated@@211 $generated@@212) ($generated@@52 $generated@@210))
 :pattern ( ($generated@@81 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212))
)))
(assert (= ($generated@@26 $generated@@28) $generated@@2))
(assert (= ($generated@@201 $generated@@28) $generated@@6))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (! (= ($generated@@53 $generated@@213 $generated@@214) (forall (($generated@@215 T@U) ) (! (= ($generated@@31 $generated@@213 $generated@@215) ($generated@@31 $generated@@214 $generated@@215))
 :pattern ( ($generated@@31 $generated@@213 $generated@@215))
 :pattern ( ($generated@@31 $generated@@214 $generated@@215))
)))
 :pattern ( ($generated@@53 $generated@@213 $generated@@214))
)))
(assert (forall (($generated@@216 Int) ) (! (= ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 $generated@@216))) ($generated@@47 $generated@@130 ($generated@@60 $generated@@12 ($generated@@16 $generated@@216))))
 :pattern ( ($generated@@60 $generated@@12 ($generated@@16 ($generated@@45 $generated@@216))))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@T) ) (! (= ($generated@@60 $generated@@218 ($generated@@47 $generated@@218 $generated@@217)) ($generated@@47 $generated@@130 ($generated@@60 $generated@@218 $generated@@217)))
 :pattern ( ($generated@@60 $generated@@218 ($generated@@47 $generated@@218 $generated@@217)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (! ($generated@@27 $generated@@11 $generated@@220 $generated $generated@@219)
 :pattern ( ($generated@@27 $generated@@11 $generated@@220 $generated $generated@@219))
)))
(assert (forall (($generated@@221 T@U) ) (! ($generated@@34 $generated@@11 $generated@@221 $generated)
 :pattern ( ($generated@@34 $generated@@11 $generated@@221 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 (T@U) Bool)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@228  (=> (= $generated@@222 ($generated@@168 $generated@@127 $generated@@223 $generated@@1 false)) (=> (and ($generated@@34 $generated@@35 $generated@@224 ($generated@@74 $generated@@28 ($generated@@74 $generated@@28 $generated))) ($generated@@27 $generated@@35 $generated@@224 ($generated@@74 $generated@@28 ($generated@@74 $generated@@28 $generated)) $generated@@223)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@34 $generated@@12 ($generated@@16 ($generated@@45 0)) $generated@@28)) (=> ($generated@@34 $generated@@12 ($generated@@16 ($generated@@45 0)) $generated@@28) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@34 $generated@@12 ($generated@@16 ($generated@@45 1)) $generated@@28))))))))
(let (($generated@@229  (=> (and ($generated@@52 $generated@@223) ($generated@@225 $generated@@223)) (=> (and (and (and ($generated@@34 $generated@@35 $generated@@226 ($generated@@74 $generated@@28 ($generated@@74 $generated@@28 $generated))) ($generated@@27 $generated@@35 $generated@@226 ($generated@@74 $generated@@28 ($generated@@74 $generated@@28 $generated)) $generated@@223)) true) (and (= 0 $generated@@227) (= (ControlFlow 0 4) 2))) $generated@@228))))
$generated@@229)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid