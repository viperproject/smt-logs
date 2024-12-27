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
(declare-fun $generated@@24 (Int Int T@U T@U) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@35 (T@U) Int)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@50 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@54 (T@U) Bool)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 () T@U)
(declare-fun $generated@@59 () T@U)
(declare-fun $generated@@62 (T@T T@U T@U) Bool)
(declare-fun $generated@@63 () T@T)
(declare-fun $generated@@64 () T@U)
(declare-fun $generated@@66 () T@U)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@69 () T@T)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@T T@T) T@T)
(declare-fun $generated@@72 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T) T@T)
(declare-fun $generated@@74 (T@T) T@T)
(declare-fun $generated@@94 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U T@U) Bool)
(declare-fun $generated@@101 (Int) Int)
(declare-fun $generated@@103 (T@T T@U) T@U)
(declare-fun $generated@@107 (T@T T@U) T@U)
(declare-fun $generated@@110 (T@U) Bool)
(declare-fun $generated@@116 (T@U) Bool)
(declare-fun $generated@@130 (T@U T@U) Bool)
(declare-fun $generated@@138 (Int Int) Int)
(declare-fun $generated@@150 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@151 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@152 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@186 (T@U) T@U)
(declare-fun $generated@@187 (T@U) T@U)
(declare-fun $generated@@188 (T@U) Bool)
(declare-fun $generated@@189 (T@U) T@U)
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
(assert (forall (($generated@@26 Int) ($generated@@27 Int) ($generated@@28 T@U) ($generated@@29 T@U) ) (! (= ($generated@@25 ($generated@@24 $generated@@26 $generated@@27 $generated@@28 $generated@@29)) $generated@@4)
 :pattern ( ($generated@@24 $generated@@26 $generated@@27 $generated@@28 $generated@@29))
)))
(assert (forall (($generated@@31 Int) ($generated@@32 Int) ($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@30 ($generated@@24 $generated@@31 $generated@@32 $generated@@33 $generated@@34)) $generated@@31)
 :pattern ( ($generated@@24 $generated@@31 $generated@@32 $generated@@33 $generated@@34))
)))
(assert (forall (($generated@@36 Int) ($generated@@37 Int) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@35 ($generated@@24 $generated@@36 $generated@@37 $generated@@38 $generated@@39)) $generated@@37)
 :pattern ( ($generated@@24 $generated@@36 $generated@@37 $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 Int) ($generated@@42 Int) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@40 ($generated@@24 $generated@@41 $generated@@42 $generated@@43 $generated@@44)) $generated@@43)
 :pattern ( ($generated@@24 $generated@@41 $generated@@42 $generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 Int) ($generated@@47 Int) ($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@45 ($generated@@24 $generated@@46 $generated@@47 $generated@@48 $generated@@49)) $generated@@49)
 :pattern ( ($generated@@24 $generated@@46 $generated@@47 $generated@@48 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (! ($generated@@50 $generated@@10 $generated@@52 $generated@@51 $generated@@53)
 :pattern ( ($generated@@50 $generated@@10 $generated@@52 $generated@@51 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ) (!  (=> ($generated@@54 $generated@@56) ($generated@@55 $generated@@56))
 :pattern ( ($generated@@54 $generated@@56))
)))
(assert (= ($generated@@8 $generated@@57) 3))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@50 $generated@@57 $generated@@60 $generated@@58 $generated@@61) ($generated@@50 $generated@@57 $generated@@60 $generated@@59 $generated@@61))
 :pattern ( ($generated@@50 $generated@@57 $generated@@60 $generated@@58 $generated@@61))
 :pattern ( ($generated@@50 $generated@@57 $generated@@60 $generated@@59 $generated@@61))
)))
(assert (= ($generated@@8 $generated@@63) 4))
(assert (forall (($generated@@65 T@U) ) (!  (=> ($generated@@62 $generated@@63 $generated@@65 $generated@@64) ($generated@@55 $generated@@65))
 :pattern ( ($generated@@55 $generated@@65) ($generated@@62 $generated@@63 $generated@@65 $generated@@64))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@68 $generated@@75 $generated@@76 ($generated@@72 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@79) $generated@@77)
 :weight 0
)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@84 $generated@@85) (= ($generated@@68 $generated@@80 $generated@@81 ($generated@@72 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@85) ($generated@@68 $generated@@80 $generated@@81 $generated@@83 $generated@@85)))
 :weight 0
))) (= ($generated@@8 $generated@@69) 5)) (= ($generated@@8 $generated@@70) 6)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (= ($generated@@8 ($generated@@71 $generated@@86 $generated@@87)) 7))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@73 ($generated@@71 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@71 $generated@@88 $generated@@89))
))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@74 ($generated@@71 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@71 $generated@@90 $generated@@91))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@50 $generated@@57 $generated@@92 $generated@@59 $generated@@93)  (or (= $generated@@92 $generated@@66) ($generated@@13 ($generated@@67 $generated@@9 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@93 $generated@@92) $generated)))))
 :pattern ( ($generated@@50 $generated@@57 $generated@@92 $generated@@59 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@94 $generated@@95 $generated@@96) (= $generated@@95 $generated@@96))
 :pattern ( ($generated@@94 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> ($generated@@97 $generated@@98 $generated@@99) (forall (($generated@@100 T@U) ) (!  (=> ($generated@@13 ($generated@@67 $generated@@9 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@98 $generated@@100) $generated))) ($generated@@13 ($generated@@67 $generated@@9 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@99 $generated@@100) $generated))))
 :pattern ( ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@99 $generated@@100) $generated))
)))
 :pattern ( ($generated@@97 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@102 Int) ) (! (= ($generated@@101 $generated@@102) $generated@@102)
 :pattern ( ($generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@103 $generated@@105 $generated@@104) $generated@@104)
 :pattern ( ($generated@@103 $generated@@105 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@55 $generated@@106) (= ($generated@@25 $generated@@106) $generated@@4))
 :pattern ( ($generated@@55 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@107 $generated@@109 ($generated@@67 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@67 $generated@@109 $generated@@108))
)))
(assert (forall (($generated@@111 Int) ($generated@@112 Int) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> ($generated@@110 $generated@@115) (= ($generated@@50 $generated@@63 ($generated@@24 $generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@64 $generated@@115)  (and (and (and ($generated@@50 $generated@@10 ($generated@@14 $generated@@111) $generated@@51 $generated@@115) ($generated@@50 $generated@@10 ($generated@@14 $generated@@112) $generated@@51 $generated@@115)) ($generated@@50 $generated@@57 $generated@@113 $generated@@58 $generated@@115)) ($generated@@50 $generated@@57 $generated@@114 $generated@@58 $generated@@115))))
 :pattern ( ($generated@@50 $generated@@63 ($generated@@24 $generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@64 $generated@@115))
)))
(assert ($generated@@116 $generated))
(assert (forall (($generated@@117 Int) ($generated@@118 Int) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@24 ($generated@@101 $generated@@117) ($generated@@101 $generated@@118) ($generated@@103 $generated@@57 $generated@@119) ($generated@@103 $generated@@57 $generated@@120)) ($generated@@103 $generated@@63 ($generated@@24 $generated@@117 $generated@@118 $generated@@119 $generated@@120)))
 :pattern ( ($generated@@24 ($generated@@101 $generated@@117) ($generated@@101 $generated@@118) ($generated@@103 $generated@@57 $generated@@119) ($generated@@103 $generated@@57 $generated@@120)))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@T) ) (!  (=> ($generated@@97 $generated@@121 $generated@@122) (=> ($generated@@50 $generated@@125 $generated@@123 $generated@@124 $generated@@121) ($generated@@50 $generated@@125 $generated@@123 $generated@@124 $generated@@122)))
 :pattern ( ($generated@@97 $generated@@121 $generated@@122) ($generated@@50 $generated@@125 $generated@@123 $generated@@124 $generated@@121))
)))
(assert (forall (($generated@@126 Int) ($generated@@127 Int) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@62 $generated@@63 ($generated@@24 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@64)  (and (and (and ($generated@@62 $generated@@10 ($generated@@14 $generated@@126) $generated@@51) ($generated@@62 $generated@@10 ($generated@@14 $generated@@127) $generated@@51)) ($generated@@62 $generated@@57 $generated@@128 $generated@@58)) ($generated@@62 $generated@@57 $generated@@129 $generated@@58)))
 :pattern ( ($generated@@62 $generated@@63 ($generated@@24 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@64))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (!  (=> ($generated@@130 $generated@@131 $generated@@132) (and ($generated@@97 $generated@@131 $generated@@132) (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (not ($generated@@116 $generated@@134)) (= ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@131 $generated@@133) $generated@@134) ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@132 $generated@@133) $generated@@134)))
 :pattern ( ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@132 $generated@@133) $generated@@134))
))))
 :pattern ( ($generated@@130 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@135 T@U) ) (! (= ($generated@@62 $generated@@57 $generated@@135 $generated@@58)  (and ($generated@@62 $generated@@57 $generated@@135 $generated@@59) (or (not (= $generated@@135 $generated@@66)) (not true))))
 :pattern ( ($generated@@62 $generated@@57 $generated@@135 $generated@@58))
 :pattern ( ($generated@@62 $generated@@57 $generated@@135 $generated@@59))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@94 $generated@@136 $generated@@137)  (and (and (and (= ($generated@@30 $generated@@136) ($generated@@30 $generated@@137)) (= ($generated@@35 $generated@@136) ($generated@@35 $generated@@137))) (= ($generated@@40 $generated@@136) ($generated@@40 $generated@@137))) (= ($generated@@45 $generated@@136) ($generated@@45 $generated@@137))))
 :pattern ( ($generated@@94 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@62 $generated@@10 $generated@@139 $generated@@51) (= ($generated@@138 ($generated@@15 $generated@@139) ($generated@@101 2)) ($generated@@101 1)))
 :pattern ( ($generated@@62 $generated@@10 $generated@@139 $generated@@51))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> (or (not (= $generated@@140 $generated@@142)) (not true)) (=> (and ($generated@@97 $generated@@140 $generated@@141) ($generated@@97 $generated@@141 $generated@@142)) ($generated@@97 $generated@@140 $generated@@142)))
 :pattern ( ($generated@@97 $generated@@140 $generated@@141) ($generated@@97 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (!  (=> ($generated@@55 $generated@@143) (exists (($generated@@144 Int) ($generated@@145 Int) ($generated@@146 T@U) ($generated@@147 T@U) ) (= $generated@@143 ($generated@@24 $generated@@144 $generated@@145 $generated@@146 $generated@@147))))
 :pattern ( ($generated@@55 $generated@@143))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@67 $generated@@149 ($generated@@107 $generated@@149 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@107 $generated@@149 $generated@@148))
)))
(assert  (and (forall (($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@150 $generated@@153 $generated@@154 $generated@@155 ($generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@158 $generated@@159 $generated@@156) $generated@@158 $generated@@159) $generated@@156)
 :weight 0
)) (and (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@150 $generated@@160 $generated@@161 $generated@@162 ($generated@@152 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@167 $generated@@168) ($generated@@150 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@167 $generated@@168)))
 :weight 0
)) (forall (($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (or (= $generated@@175 $generated@@177) (= ($generated@@150 $generated@@169 $generated@@170 $generated@@171 ($generated@@152 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@174 $generated@@175 $generated@@172) $generated@@176 $generated@@177) ($generated@@150 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@176 $generated@@177)))
 :weight 0
)))))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 Bool) ($generated@@182 T@U) ($generated@@183 T@U) ) (! (= ($generated@@13 ($generated@@150 $generated@@57 $generated@@69 $generated@@9 ($generated@@151 $generated@@178 $generated@@179 $generated@@180 $generated@@181) $generated@@182 $generated@@183))  (=> (and (or (not (= $generated@@182 $generated@@178)) (not true)) ($generated@@13 ($generated@@67 $generated@@9 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@57 ($generated@@71 $generated@@69 $generated@@70) $generated@@179 $generated@@182) $generated@@180)))) $generated@@181))
 :pattern ( ($generated@@150 $generated@@57 $generated@@69 $generated@@9 ($generated@@151 $generated@@178 $generated@@179 $generated@@180 $generated@@181) $generated@@182 $generated@@183))
)))
(assert (forall (($generated@@184 Int) ($generated@@185 Int) ) (! (= ($generated@@138 $generated@@184 $generated@@185) (mod $generated@@184 $generated@@185))
 :pattern ( ($generated@@138 $generated@@184 $generated@@185))
)))
(assert (= ($generated@@186 $generated@@58) $generated@@0))
(assert (= ($generated@@187 $generated@@58) $generated@@5))
(assert (= ($generated@@186 $generated@@64) $generated@@1))
(assert (= ($generated@@187 $generated@@64) $generated@@6))
(assert (= ($generated@@186 $generated@@51) $generated@@2))
(assert (= ($generated@@187 $generated@@51) $generated@@7))
(assert (= ($generated@@186 $generated@@59) $generated@@3))
(assert (= ($generated@@187 $generated@@59) $generated@@5))
(assert (forall (($generated@@190 T@U) ) (! (= ($generated@@62 $generated@@57 $generated@@190 $generated@@59)  (or (= $generated@@190 $generated@@66) ($generated@@188 ($generated@@189 $generated@@190))))
 :pattern ( ($generated@@62 $generated@@57 $generated@@190 $generated@@59))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (!  (=> (and ($generated@@110 $generated@@192) (and ($generated@@55 $generated@@191) ($generated@@50 $generated@@63 $generated@@191 $generated@@64 $generated@@192))) ($generated@@50 $generated@@10 ($generated@@14 ($generated@@30 $generated@@191)) $generated@@51 $generated@@192))
 :pattern ( ($generated@@50 $generated@@10 ($generated@@14 ($generated@@30 $generated@@191)) $generated@@51 $generated@@192))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (!  (=> (and ($generated@@110 $generated@@194) (and ($generated@@55 $generated@@193) ($generated@@50 $generated@@63 $generated@@193 $generated@@64 $generated@@194))) ($generated@@50 $generated@@10 ($generated@@14 ($generated@@35 $generated@@193)) $generated@@51 $generated@@194))
 :pattern ( ($generated@@50 $generated@@10 ($generated@@14 ($generated@@35 $generated@@193)) $generated@@51 $generated@@194))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (and ($generated@@110 $generated@@196) (and ($generated@@55 $generated@@195) ($generated@@50 $generated@@63 $generated@@195 $generated@@64 $generated@@196))) ($generated@@50 $generated@@57 ($generated@@40 $generated@@195) $generated@@58 $generated@@196))
 :pattern ( ($generated@@50 $generated@@57 ($generated@@40 $generated@@195) $generated@@58 $generated@@196))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> (and ($generated@@110 $generated@@198) (and ($generated@@55 $generated@@197) ($generated@@50 $generated@@63 $generated@@197 $generated@@64 $generated@@198))) ($generated@@50 $generated@@57 ($generated@@45 $generated@@197) $generated@@58 $generated@@198))
 :pattern ( ($generated@@50 $generated@@57 ($generated@@45 $generated@@197) $generated@@58 $generated@@198))
)))
(assert (forall (($generated@@199 Int) ) (! (= ($generated@@107 $generated@@10 ($generated@@14 ($generated@@101 $generated@@199))) ($generated@@103 $generated@@70 ($generated@@107 $generated@@10 ($generated@@14 $generated@@199))))
 :pattern ( ($generated@@107 $generated@@10 ($generated@@14 ($generated@@101 $generated@@199))))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@T) ) (! (= ($generated@@107 $generated@@201 ($generated@@103 $generated@@201 $generated@@200)) ($generated@@103 $generated@@70 ($generated@@107 $generated@@201 $generated@@200)))
 :pattern ( ($generated@@107 $generated@@201 ($generated@@103 $generated@@201 $generated@@200)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 7) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)