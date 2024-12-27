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
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@68 (T@U T@U) Bool)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@75 (T@U) Bool)
(declare-fun $generated@@76 (T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@U T@U) T@U)
(declare-fun $generated@@84 (T@U T@U) Bool)
(declare-fun $generated@@88 (T@U) Bool)
(declare-fun $generated@@91 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@U T@U T@U) Bool)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@118 (T@U) Bool)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@140 (T@U) Int)
(declare-fun $generated@@141 (T@U) Int)
(declare-fun $generated@@149 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@150 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@151 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated@@24) $generated@@3))
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@30 $generated@@27)  (or (= $generated@@30 $generated@@28) (= ($generated@@29 $generated@@30) $generated@@27)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@30 $generated@@27))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34) ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
)))
(assert (= ($generated@@7 $generated@@35) 4))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> ($generated@@37 $generated@@39) ($generated@@31 $generated@@35 $generated@@24 ($generated@@36 $generated@@38) $generated@@39))
 :pattern ( ($generated@@31 $generated@@35 $generated@@24 ($generated@@36 $generated@@38) $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ) (! ($generated@@25 $generated@@35 $generated@@24 ($generated@@36 $generated@@40))
 :pattern ( ($generated@@25 $generated@@35 $generated@@24 ($generated@@36 $generated@@40)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@42 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@42 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@42 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@7 $generated@@43) 5)) (= ($generated@@7 $generated@@44) 6)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@7 ($generated@@45 $generated@@60 $generated@@61)) 7))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@45 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@45 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@66 $generated@@27 $generated@@67)  (or (= $generated@@66 $generated@@28) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@67 $generated@@66) $generated)))))
 :pattern ( ($generated@@31 $generated@@26 $generated@@66 $generated@@27 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@68 $generated@@69 $generated@@70) (= $generated@@69 $generated@@70))
 :pattern ( ($generated@@68 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@71 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@72 $generated@@74) $generated))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@73 $generated@@74) $generated))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@73 $generated@@74) $generated))
)))
 :pattern ( ($generated@@71 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (and ($generated@@75 $generated@@78) ($generated@@75 $generated@@79)) (= ($generated@@68 $generated@@78 $generated@@79)  (and (= ($generated@@76 $generated@@78) ($generated@@76 $generated@@79)) ($generated@@68 ($generated@@77 $generated@@78) ($generated@@77 $generated@@79)))))
 :pattern ( ($generated@@68 $generated@@78 $generated@@79) ($generated@@75 $generated@@78))
 :pattern ( ($generated@@68 $generated@@78 $generated@@79) ($generated@@75 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@25 $generated@@35 ($generated@@83 $generated@@86 $generated@@87) ($generated@@36 $generated@@85))  (and ($generated@@84 $generated@@86 $generated@@85) ($generated@@25 $generated@@35 $generated@@87 ($generated@@36 $generated@@85))))
 :pattern ( ($generated@@25 $generated@@35 ($generated@@83 $generated@@86 $generated@@87) ($generated@@36 $generated@@85)))
)))
(assert (forall (($generated@@89 T@U) ) (! (= ($generated@@88 $generated@@89) (= ($generated@@23 $generated@@89) $generated@@3))
 :pattern ( ($generated@@88 $generated@@89))
)))
(assert (forall (($generated@@90 T@U) ) (! (= ($generated@@75 $generated@@90) (= ($generated@@23 $generated@@90) $generated@@4))
 :pattern ( ($generated@@75 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@91 $generated@@93 ($generated@@41 $generated@@93 $generated@@92)) $generated@@92)
 :pattern ( ($generated@@41 $generated@@93 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ) (!  (=> ($generated@@75 $generated@@94) (exists (($generated@@95 T@U) ($generated@@96 T@U) ) (= $generated@@94 ($generated@@83 $generated@@95 $generated@@96))))
 :pattern ( ($generated@@75 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@88 $generated@@97) (= $generated@@97 $generated@@24))
 :pattern ( ($generated@@88 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@98 ($generated@@91 $generated@@102 $generated@@99) $generated@@100 $generated@@101) ($generated@@31 $generated@@102 $generated@@99 $generated@@100 $generated@@101))
 :pattern ( ($generated@@98 ($generated@@91 $generated@@102 $generated@@99) $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> ($generated@@71 $generated@@103 $generated@@104) (=> ($generated@@98 $generated@@105 $generated@@106 $generated@@103) ($generated@@98 $generated@@105 $generated@@106 $generated@@104)))
 :pattern ( ($generated@@71 $generated@@103 $generated@@104) ($generated@@98 $generated@@105 $generated@@106 $generated@@103))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@T) ) (!  (=> ($generated@@71 $generated@@107 $generated@@108) (=> ($generated@@31 $generated@@111 $generated@@109 $generated@@110 $generated@@107) ($generated@@31 $generated@@111 $generated@@109 $generated@@110 $generated@@108)))
 :pattern ( ($generated@@71 $generated@@107 $generated@@108) ($generated@@31 $generated@@111 $generated@@109 $generated@@110 $generated@@107))
)))
(assert (forall (($generated@@114 T@U) ) (!  (and (= ($generated@@112 ($generated@@36 $generated@@114)) $generated@@0) (= ($generated@@113 ($generated@@36 $generated@@114)) $generated@@5))
 :pattern ( ($generated@@36 $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ) (!  (=> ($generated@@84 $generated@@115 $generated@@27) (and (= ($generated@@91 $generated@@26 ($generated@@41 $generated@@26 $generated@@115)) $generated@@115) ($generated@@25 $generated@@26 ($generated@@41 $generated@@26 $generated@@115) $generated@@27)))
 :pattern ( ($generated@@84 $generated@@115 $generated@@27))
)))
(assert (forall (($generated@@116 T@U) ) (!  (=> ($generated@@84 $generated@@116 $generated@@32) (and (= ($generated@@91 $generated@@26 ($generated@@41 $generated@@26 $generated@@116)) $generated@@116) ($generated@@25 $generated@@26 ($generated@@41 $generated@@26 $generated@@116) $generated@@32)))
 :pattern ( ($generated@@84 $generated@@116 $generated@@32))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@117 $generated@@32)  (and ($generated@@25 $generated@@26 $generated@@117 $generated@@27) (or (not (= $generated@@117 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@117 $generated@@32))
 :pattern ( ($generated@@25 $generated@@26 $generated@@117 $generated@@27))
)))
(assert (forall (($generated@@119 T@U) ) (!  (=> ($generated@@118 $generated@@119) (or ($generated@@88 $generated@@119) ($generated@@75 $generated@@119)))
 :pattern ( ($generated@@118 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> ($generated@@25 $generated@@35 $generated@@121 ($generated@@36 $generated@@120)) (or ($generated@@88 $generated@@121) ($generated@@75 $generated@@121)))
 :pattern ( ($generated@@75 $generated@@121) ($generated@@25 $generated@@35 $generated@@121 ($generated@@36 $generated@@120)))
 :pattern ( ($generated@@88 $generated@@121) ($generated@@25 $generated@@35 $generated@@121 ($generated@@36 $generated@@120)))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or (not (= $generated@@122 $generated@@124)) (not true)) (=> (and ($generated@@71 $generated@@122 $generated@@123) ($generated@@71 $generated@@123 $generated@@124)) ($generated@@71 $generated@@122 $generated@@124)))
 :pattern ( ($generated@@71 $generated@@122 $generated@@123) ($generated@@71 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@T) ) (! (= ($generated@@84 ($generated@@91 $generated@@127 $generated@@125) $generated@@126) ($generated@@25 $generated@@127 $generated@@125 $generated@@126))
 :pattern ( ($generated@@84 ($generated@@91 $generated@@127 $generated@@125) $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> (and ($generated@@88 $generated@@128) ($generated@@88 $generated@@129)) ($generated@@68 $generated@@128 $generated@@129))
 :pattern ( ($generated@@68 $generated@@128 $generated@@129) ($generated@@88 $generated@@128))
 :pattern ( ($generated@@68 $generated@@128 $generated@@129) ($generated@@88 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@23 ($generated@@83 $generated@@130 $generated@@131)) $generated@@4)
 :pattern ( ($generated@@83 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@76 ($generated@@83 $generated@@132 $generated@@133)) $generated@@132)
 :pattern ( ($generated@@83 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@77 ($generated@@83 $generated@@134 $generated@@135)) $generated@@135)
 :pattern ( ($generated@@83 $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@136 ($generated@@36 $generated@@137)) $generated@@137)
 :pattern ( ($generated@@36 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@T) ) (! (= ($generated@@41 $generated@@139 ($generated@@91 $generated@@139 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@91 $generated@@139 $generated@@138))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (< ($generated@@140 $generated@@142) ($generated@@141 ($generated@@83 $generated@@142 $generated@@143)))
 :pattern ( ($generated@@83 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (< ($generated@@141 $generated@@145) ($generated@@141 ($generated@@83 $generated@@144 $generated@@145)))
 :pattern ( ($generated@@83 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> (and ($generated@@37 $generated@@148) (and ($generated@@75 $generated@@146) ($generated@@31 $generated@@35 $generated@@146 ($generated@@36 $generated@@147) $generated@@148))) ($generated@@98 ($generated@@76 $generated@@146) $generated@@147 $generated@@148))
 :pattern ( ($generated@@98 ($generated@@76 $generated@@146) $generated@@147 $generated@@148))
)))
(assert  (and (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@149 $generated@@152 $generated@@153 $generated@@154 ($generated@@151 $generated@@152 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@158 $generated@@155) $generated@@157 $generated@@158) $generated@@155)
 :weight 0
)) (and (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@149 $generated@@159 $generated@@160 $generated@@161 ($generated@@151 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@149 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@149 $generated@@168 $generated@@169 $generated@@170 ($generated@@151 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@149 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)))))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 Bool) ($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@12 ($generated@@149 $generated@@26 $generated@@43 $generated@@8 ($generated@@150 $generated@@177 $generated@@178 $generated@@179 $generated@@180) $generated@@181 $generated@@182))  (=> (and (or (not (= $generated@@181 $generated@@177)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@178 $generated@@181) $generated@@179)))) $generated@@180))
 :pattern ( ($generated@@149 $generated@@26 $generated@@43 $generated@@8 ($generated@@150 $generated@@177 $generated@@178 $generated@@179 $generated@@180) $generated@@181 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ) (! (= ($generated@@140 ($generated@@91 $generated@@35 $generated@@183)) ($generated@@141 $generated@@183))
 :pattern ( ($generated@@140 ($generated@@91 $generated@@35 $generated@@183)))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ) (!  (=> ($generated@@84 $generated@@185 ($generated@@36 $generated@@184)) (and (= ($generated@@91 $generated@@35 ($generated@@41 $generated@@35 $generated@@185)) $generated@@185) ($generated@@25 $generated@@35 ($generated@@41 $generated@@35 $generated@@185) ($generated@@36 $generated@@184))))
 :pattern ( ($generated@@84 $generated@@185 ($generated@@36 $generated@@184)))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> (and ($generated@@37 $generated@@188) (and ($generated@@75 $generated@@186) ($generated@@31 $generated@@35 $generated@@186 ($generated@@36 $generated@@187) $generated@@188))) ($generated@@31 $generated@@35 ($generated@@77 $generated@@186) ($generated@@36 $generated@@187) $generated@@188))
 :pattern ( ($generated@@31 $generated@@35 ($generated@@77 $generated@@186) ($generated@@36 $generated@@187) $generated@@188))
)))
(assert (= ($generated@@112 $generated@@27) $generated@@1))
(assert (= ($generated@@113 $generated@@27) $generated@@6))
(assert (= ($generated@@112 $generated@@32) $generated@@2))
(assert (= ($generated@@113 $generated@@32) $generated@@6))
(assert (= $generated@@24 ($generated@@80 $generated@@35 $generated@@24)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (! (= ($generated@@83 ($generated@@80 $generated@@44 $generated@@189) ($generated@@80 $generated@@35 $generated@@190)) ($generated@@80 $generated@@35 ($generated@@83 $generated@@189 $generated@@190)))
 :pattern ( ($generated@@83 ($generated@@80 $generated@@44 $generated@@189) ($generated@@80 $generated@@35 $generated@@190)))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@T) ) (! (= ($generated@@91 $generated@@192 ($generated@@80 $generated@@192 $generated@@191)) ($generated@@80 $generated@@44 ($generated@@91 $generated@@192 $generated@@191)))
 :pattern ( ($generated@@91 $generated@@192 ($generated@@80 $generated@@192 $generated@@191)))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> ($generated@@37 $generated@@196) (= ($generated@@31 $generated@@35 ($generated@@83 $generated@@194 $generated@@195) ($generated@@36 $generated@@193) $generated@@196)  (and ($generated@@98 $generated@@194 $generated@@193 $generated@@196) ($generated@@31 $generated@@35 $generated@@195 ($generated@@36 $generated@@193) $generated@@196))))
 :pattern ( ($generated@@31 $generated@@35 ($generated@@83 $generated@@194 $generated@@195) ($generated@@36 $generated@@193) $generated@@196))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () Bool)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 (T@U) Bool)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () Bool)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () Bool)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () Int)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@219  (=> (and (not ($generated@@68 $generated@@197 $generated@@24)) (=> $generated@@198 (and ($generated@@84 $generated@@199 $generated@@200) ($generated@@98 $generated@@199 $generated@@200 $generated@@201)))) (=> (and (and ($generated@@84 $generated@@202 $generated@@203) ($generated@@98 $generated@@202 $generated@@203 $generated@@204)) (and ($generated@@25 $generated@@35 $generated@@205 ($generated@@36 $generated@@203)) ($generated@@31 $generated@@35 $generated@@205 ($generated@@36 $generated@@203) $generated@@204))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (not ($generated@@68 $generated@@197 $generated@@24))) (=> (not ($generated@@68 $generated@@197 $generated@@24)) (=> (and (and ($generated@@37 $generated@@206) ($generated@@207 $generated@@206)) (and ($generated@@84 $generated@@208 $generated@@200) ($generated@@98 $generated@@208 $generated@@200 $generated@@206))) (=> (and (and (and ($generated@@25 $generated@@35 $generated@@209 ($generated@@36 $generated@@200)) ($generated@@31 $generated@@35 $generated@@209 ($generated@@36 $generated@@200) $generated@@206)) ($generated@@118 $generated@@197)) (and (and ($generated@@68 $generated@@197 ($generated@@83 $generated@@208 $generated@@209)) (forall (($generated@@220 T@U) ) (!  (=> (and (or (not (= $generated@@220 $generated@@28)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@220) $generated)))) (= ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@206 $generated@@220) ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@220)))
 :pattern ( ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@206 $generated@@220))
))) (and ($generated@@71 $generated@@201 $generated@@206) (= (ControlFlow 0 5) (- 0 4))))) (< ($generated@@141 $generated@@209) ($generated@@141 $generated@@197))))))))))
(let (($generated@@221 true))
(let (($generated@@222  (=> (and $generated@@210 ($generated@@118 $generated@@197)) (and (=> (= (ControlFlow 0 7) 3) $generated@@221) (=> (= (ControlFlow 0 7) 5) $generated@@219)))))
(let (($generated@@223 true))
(let (($generated@@224  (and (=> (= (ControlFlow 0 8) 2) $generated@@223) (=> (= (ControlFlow 0 8) 7) $generated@@222))))
(let (($generated@@225 true))
(let (($generated@@226  (=> (=> $generated@@198 (and ($generated@@84 $generated@@211 $generated@@200) ($generated@@98 $generated@@211 $generated@@200 $generated@@201))) (=> (and ($generated@@37 $generated@@201) ($generated@@207 $generated@@201)) (=> (and (and (and ($generated@@25 $generated@@35 $generated@@197 ($generated@@36 $generated@@200)) ($generated@@31 $generated@@35 $generated@@197 ($generated@@36 $generated@@200) $generated@@201)) (not false)) (and (and (forall (($generated@@227 T@U) ) (!  (=> (and (or (not (= $generated@@227 $generated@@28)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@204 $generated@@227) $generated)))) (= ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@227) ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@204 $generated@@227)))
 :pattern ( ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@227))
)) ($generated@@71 $generated@@204 $generated@@201)) (and (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (!  (=> (and (or (not (= $generated@@228 $generated@@28)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@204 $generated@@228) $generated)))) (or (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@228) $generated@@229) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@204 $generated@@228) $generated@@229)) ($generated@@12 ($generated@@149 $generated@@26 $generated@@43 $generated@@8 $generated@@212 $generated@@228 $generated@@229))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@26 ($generated@@45 $generated@@43 $generated@@44) $generated@@201 $generated@@228) $generated@@229))
)) (<= ($generated@@141 $generated@@197) ($generated@@141 $generated@@213))))) (and (=> (= (ControlFlow 0 9) 1) $generated@@225) (=> (= (ControlFlow 0 9) 8) $generated@@224)))))))
(let (($generated@@230  (=> (and (= $generated@@212 ($generated@@150 $generated@@28 $generated@@204 $generated false)) (= (ControlFlow 0 10) 9)) $generated@@226)))
(let (($generated@@231  (=> (and (and (and (and ($generated@@37 $generated@@204) ($generated@@207 $generated@@204)) (and (or (not (= $generated@@214 $generated@@28)) (not true)) (and ($generated@@25 $generated@@26 $generated@@214 $generated@@32) ($generated@@31 $generated@@26 $generated@@214 $generated@@32 $generated@@204)))) (and (and ($generated@@25 $generated@@35 $generated@@213 ($generated@@36 $generated@@200)) ($generated@@31 $generated@@35 $generated@@213 ($generated@@36 $generated@@200) $generated@@204)) ($generated@@118 $generated@@213))) (and (and (and ($generated@@25 $generated@@35 $generated@@215 ($generated@@36 $generated@@200)) ($generated@@31 $generated@@35 $generated@@215 ($generated@@36 $generated@@200) $generated@@204)) true) (and (and (=> $generated@@216 (and ($generated@@84 $generated@@217 $generated@@200) ($generated@@98 $generated@@217 $generated@@200 $generated@@204))) true) (and (= 2 $generated@@218) (= (ControlFlow 0 11) 10))))) $generated@@230)))
$generated@@231))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)