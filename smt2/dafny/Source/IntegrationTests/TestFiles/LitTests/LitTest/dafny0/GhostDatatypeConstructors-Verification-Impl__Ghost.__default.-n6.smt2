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
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (Bool Real T@U) T@U)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Real)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@48 (T@T T@U T@U) Bool)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@55 (Real Bool) T@U)
(declare-fun $generated@@58 (Real) Real)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@67 (T@U) Bool)
(declare-fun $generated@@69 (T@U) Bool)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@T T@U) T@U)
(declare-fun $generated@@82 (Int) T@U)
(declare-fun $generated@@85 (Bool) T@U)
(declare-fun $generated@@99 (T@U) Int)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@107 () T@T)
(declare-fun $generated@@108 () T@T)
(declare-fun $generated@@109 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@110 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@112 (T@T T@T) T@T)
(declare-fun $generated@@113 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@114 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@115 (T@T) T@T)
(declare-fun $generated@@116 (T@T) T@T)
(declare-fun $generated@@165 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@166 (T@U) Bool)
(declare-fun $generated@@183 (T@U) T@U)
(declare-fun $generated@@184 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (forall (($generated@@32 Bool) ($generated@@33 Real) ($generated@@34 T@U) ) (! (= ($generated@@31 ($generated@@30 $generated@@32 $generated@@33 $generated@@34)) $generated@@32)
 :pattern ( ($generated@@30 $generated@@32 $generated@@33 $generated@@34))
)))
(assert (= ($generated@@35 $generated) $generated@@3))
(assert (= ($generated@@35 $generated@@0) $generated@@4))
(assert (= ($generated@@35 $generated@@1) $generated@@5))
(assert (= ($generated@@35 $generated@@2) $generated@@6))
(assert (forall (($generated@@37 Bool) ($generated@@38 Real) ($generated@@39 T@U) ) (! (= ($generated@@36 ($generated@@30 $generated@@37 $generated@@38 $generated@@39)) $generated@@11)
 :pattern ( ($generated@@30 $generated@@37 $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 Bool) ($generated@@42 Real) ($generated@@43 T@U) ) (! (= ($generated@@40 ($generated@@30 $generated@@41 $generated@@42 $generated@@43)) $generated@@42)
 :pattern ( ($generated@@30 $generated@@41 $generated@@42 $generated@@43))
)))
(assert (forall (($generated@@45 Bool) ($generated@@46 Real) ($generated@@47 T@U) ) (! (= ($generated@@44 ($generated@@30 $generated@@45 $generated@@46 $generated@@47)) $generated@@47)
 :pattern ( ($generated@@30 $generated@@45 $generated@@46 $generated@@47))
)))
(assert  (and (= ($generated@@14 $generated@@49) 3) (= ($generated@@14 $generated@@51) 4)))
(assert (forall (($generated@@52 Bool) ($generated@@53 Real) ($generated@@54 T@U) ) (! (= ($generated@@48 $generated@@49 ($generated@@30 $generated@@52 $generated@@53 $generated@@54) $generated@@50)  (and (and ($generated@@48 $generated@@15 ($generated@@18 $generated@@52) $generated) ($generated@@48 $generated@@17 ($generated@@22 $generated@@53) $generated@@2)) ($generated@@48 $generated@@51 $generated@@54 $generated@@0)))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@30 $generated@@52 $generated@@53 $generated@@54) $generated@@50))
)))
(assert (forall (($generated@@56 Real) ($generated@@57 Bool) ) (! (= ($generated@@48 $generated@@49 ($generated@@55 $generated@@56 $generated@@57) $generated@@50)  (and ($generated@@48 $generated@@17 ($generated@@22 $generated@@56) $generated@@2) ($generated@@48 $generated@@15 ($generated@@18 $generated@@57) $generated)))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@55 $generated@@56 $generated@@57) $generated@@50))
)))
(assert (forall (($generated@@59 Real) ) (! (= ($generated@@58 $generated@@59) $generated@@59)
 :pattern ( ($generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ) (! (= ($generated@@63 $generated@@64) (= ($generated@@36 $generated@@64) $generated@@9))
 :pattern ( ($generated@@63 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ) (! (= ($generated@@65 $generated@@66) (= ($generated@@36 $generated@@66) $generated@@10))
 :pattern ( ($generated@@65 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (! (= ($generated@@67 $generated@@68) (= ($generated@@36 $generated@@68) $generated@@11))
 :pattern ( ($generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@69 $generated@@70) (= ($generated@@36 $generated@@70) $generated@@12))
 :pattern ( ($generated@@69 $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@72 $generated@@74 ($generated@@71 $generated@@74 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@71 $generated@@74 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ) (!  (=> ($generated@@67 $generated@@75) (exists (($generated@@76 Bool) ($generated@@77 Real) ($generated@@78 T@U) ) (= $generated@@75 ($generated@@30 $generated@@76 $generated@@77 $generated@@78))))
 :pattern ( ($generated@@67 $generated@@75))
)))
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@69 $generated@@79) (exists (($generated@@80 Real) ($generated@@81 Bool) ) (= $generated@@79 ($generated@@55 $generated@@80 $generated@@81))))
 :pattern ( ($generated@@69 $generated@@79))
)))
(assert (forall (($generated@@83 T@U) ) (!  (=> ($generated@@63 $generated@@83) (exists (($generated@@84 Int) ) (= $generated@@83 ($generated@@82 $generated@@84))))
 :pattern ( ($generated@@63 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ) (!  (=> ($generated@@65 $generated@@86) (exists (($generated@@87 Bool) ) (= $generated@@86 ($generated@@85 $generated@@87))))
 :pattern ( ($generated@@65 $generated@@86))
)))
(assert (forall (($generated@@88 Real) ($generated@@89 Bool) ) (! (= ($generated@@31 ($generated@@55 $generated@@88 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@55 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@90 Bool) ) (! (= ($generated@@31 ($generated@@85 $generated@@90)) $generated@@90)
 :pattern ( ($generated@@85 $generated@@90))
)))
(assert (forall (($generated@@91 Real) ($generated@@92 Bool) ) (! (= ($generated@@36 ($generated@@55 $generated@@91 $generated@@92)) $generated@@12)
 :pattern ( ($generated@@55 $generated@@91 $generated@@92))
)))
(assert (forall (($generated@@93 Real) ($generated@@94 Bool) ) (! (= ($generated@@40 ($generated@@55 $generated@@93 $generated@@94)) $generated@@93)
 :pattern ( ($generated@@55 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 Real) ($generated@@97 T@U) ) (! (= ($generated@@30 ($generated@@19 ($generated@@60 $generated@@15 $generated@@95)) ($generated@@58 $generated@@96) ($generated@@60 $generated@@51 $generated@@97)) ($generated@@60 $generated@@49 ($generated@@30 ($generated@@19 $generated@@95) $generated@@96 $generated@@97)))
 :pattern ( ($generated@@30 ($generated@@19 ($generated@@60 $generated@@15 $generated@@95)) ($generated@@58 $generated@@96) ($generated@@60 $generated@@51 $generated@@97)))
)))
(assert (forall (($generated@@98 Int) ) (! (= ($generated@@36 ($generated@@82 $generated@@98)) $generated@@9)
 :pattern ( ($generated@@82 $generated@@98))
)))
(assert (forall (($generated@@100 Int) ) (! (= ($generated@@99 ($generated@@82 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@82 $generated@@100))
)))
(assert (forall (($generated@@101 Bool) ) (! (= ($generated@@36 ($generated@@85 $generated@@101)) $generated@@10)
 :pattern ( ($generated@@85 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@71 $generated@@103 ($generated@@72 $generated@@103 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@72 $generated@@103 $generated@@102))
)))
(assert (forall (($generated@@104 Int) ) (! (= ($generated@@48 $generated@@49 ($generated@@82 $generated@@104) $generated@@50) ($generated@@48 $generated@@16 ($generated@@20 $generated@@104) $generated@@1))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@82 $generated@@104) $generated@@50))
)))
(assert (forall (($generated@@105 Bool) ) (! (= ($generated@@48 $generated@@49 ($generated@@85 $generated@@105) $generated@@50) ($generated@@48 $generated@@15 ($generated@@18 $generated@@105) $generated))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@85 $generated@@105) $generated@@50))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@106 $generated@@117 $generated@@118 $generated@@119 ($generated@@113 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@122 $generated@@123) $generated@@120)
 :weight 0
)) (and (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@106 $generated@@124 $generated@@125 $generated@@126 ($generated@@113 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@130 $generated@@127) $generated@@131 $generated@@132) ($generated@@106 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@131 $generated@@132)))
 :weight 0
)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (or (= $generated@@139 $generated@@141) (= ($generated@@106 $generated@@133 $generated@@134 $generated@@135 ($generated@@113 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@140 $generated@@141) ($generated@@106 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@140 $generated@@141)))
 :weight 0
)))) (= ($generated@@14 $generated@@107) 5)) (= ($generated@@14 $generated@@108) 6)) (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@110 $generated@@142 $generated@@143 ($generated@@114 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@144) $generated@@146) $generated@@144)
 :weight 0
))) (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (!  (or (= $generated@@151 $generated@@152) (= ($generated@@110 $generated@@147 $generated@@148 ($generated@@114 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@149) $generated@@152) ($generated@@110 $generated@@147 $generated@@148 $generated@@150 $generated@@152)))
 :weight 0
))) (= ($generated@@14 $generated@@111) 7)) (forall (($generated@@153 T@T) ($generated@@154 T@T) ) (= ($generated@@14 ($generated@@112 $generated@@153 $generated@@154)) 8))) (forall (($generated@@155 T@T) ($generated@@156 T@T) ) (! (= ($generated@@115 ($generated@@112 $generated@@155 $generated@@156)) $generated@@155)
 :pattern ( ($generated@@112 $generated@@155 $generated@@156))
))) (forall (($generated@@157 T@T) ($generated@@158 T@T) ) (! (= ($generated@@116 ($generated@@112 $generated@@157 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@112 $generated@@157 $generated@@158))
))))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 Bool) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@19 ($generated@@106 $generated@@107 $generated@@108 $generated@@15 ($generated@@109 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))  (=> (and (or (not (= $generated@@163 $generated@@159)) (not true)) ($generated@@19 ($generated@@71 $generated@@15 ($generated@@110 $generated@@108 $generated@@111 ($generated@@110 $generated@@107 ($generated@@112 $generated@@108 $generated@@111) $generated@@160 $generated@@163) $generated@@161)))) $generated@@162))
 :pattern ( ($generated@@106 $generated@@107 $generated@@108 $generated@@15 ($generated@@109 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> (and ($generated@@166 $generated@@168) (and ($generated@@63 $generated@@167) ($generated@@165 $generated@@49 $generated@@167 $generated@@50 $generated@@168))) ($generated@@165 $generated@@16 ($generated@@20 ($generated@@99 $generated@@167)) $generated@@1 $generated@@168))
 :pattern ( ($generated@@165 $generated@@16 ($generated@@20 ($generated@@99 $generated@@167)) $generated@@1 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> (and ($generated@@166 $generated@@170) (and ($generated@@65 $generated@@169) ($generated@@165 $generated@@49 $generated@@169 $generated@@50 $generated@@170))) ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@169)) $generated $generated@@170))
 :pattern ( ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@169)) $generated $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@166 $generated@@172) (and ($generated@@67 $generated@@171) ($generated@@165 $generated@@49 $generated@@171 $generated@@50 $generated@@172))) ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@171)) $generated $generated@@172))
 :pattern ( ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@171)) $generated $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> (and ($generated@@166 $generated@@174) (and ($generated@@67 $generated@@173) ($generated@@165 $generated@@49 $generated@@173 $generated@@50 $generated@@174))) ($generated@@165 $generated@@17 ($generated@@22 ($generated@@40 $generated@@173)) $generated@@2 $generated@@174))
 :pattern ( ($generated@@165 $generated@@17 ($generated@@22 ($generated@@40 $generated@@173)) $generated@@2 $generated@@174))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (and ($generated@@166 $generated@@176) (and ($generated@@67 $generated@@175) ($generated@@165 $generated@@49 $generated@@175 $generated@@50 $generated@@176))) ($generated@@165 $generated@@51 ($generated@@44 $generated@@175) $generated@@0 $generated@@176))
 :pattern ( ($generated@@165 $generated@@51 ($generated@@44 $generated@@175) $generated@@0 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and ($generated@@166 $generated@@178) (and ($generated@@69 $generated@@177) ($generated@@165 $generated@@49 $generated@@177 $generated@@50 $generated@@178))) ($generated@@165 $generated@@17 ($generated@@22 ($generated@@40 $generated@@177)) $generated@@2 $generated@@178))
 :pattern ( ($generated@@165 $generated@@17 ($generated@@22 ($generated@@40 $generated@@177)) $generated@@2 $generated@@178))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> (and ($generated@@166 $generated@@180) (and ($generated@@69 $generated@@179) ($generated@@165 $generated@@49 $generated@@179 $generated@@50 $generated@@180))) ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@179)) $generated $generated@@180))
 :pattern ( ($generated@@165 $generated@@15 ($generated@@18 ($generated@@31 $generated@@179)) $generated $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> (and ($generated@@166 $generated@@182) ($generated@@48 $generated@@49 $generated@@181 $generated@@50)) ($generated@@165 $generated@@49 $generated@@181 $generated@@50 $generated@@182))
 :pattern ( ($generated@@165 $generated@@49 $generated@@181 $generated@@50 $generated@@182))
)))
(assert (= ($generated@@35 $generated@@50) $generated@@8))
(assert (= ($generated@@183 $generated@@50) $generated@@13))
(assert (forall (($generated@@185 T@U) ) (!  (=> ($generated@@184 $generated@@185) (or (or (or ($generated@@63 $generated@@185) ($generated@@65 $generated@@185)) ($generated@@67 $generated@@185)) ($generated@@69 $generated@@185)))
 :pattern ( ($generated@@184 $generated@@185))
)))
(assert (forall (($generated@@186 Real) ($generated@@187 T@U) ) (! (= ($generated@@55 ($generated@@58 $generated@@186) ($generated@@19 ($generated@@60 $generated@@15 $generated@@187))) ($generated@@60 $generated@@49 ($generated@@55 $generated@@186 ($generated@@19 $generated@@187))))
 :pattern ( ($generated@@55 ($generated@@58 $generated@@186) ($generated@@19 ($generated@@60 $generated@@15 $generated@@187))))
)))
(assert (forall (($generated@@188 Real) ) (! (= ($generated@@72 $generated@@17 ($generated@@22 ($generated@@58 $generated@@188))) ($generated@@60 $generated@@111 ($generated@@72 $generated@@17 ($generated@@22 $generated@@188))))
 :pattern ( ($generated@@72 $generated@@17 ($generated@@22 ($generated@@58 $generated@@188))))
)))
(assert (forall (($generated@@189 T@U) ) (! (= ($generated@@85 ($generated@@19 ($generated@@60 $generated@@15 $generated@@189))) ($generated@@60 $generated@@49 ($generated@@85 ($generated@@19 $generated@@189))))
 :pattern ( ($generated@@85 ($generated@@19 ($generated@@60 $generated@@15 $generated@@189))))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@T) ) (! (= ($generated@@72 $generated@@191 ($generated@@60 $generated@@191 $generated@@190)) ($generated@@60 $generated@@111 ($generated@@72 $generated@@191 $generated@@190)))
 :pattern ( ($generated@@72 $generated@@191 ($generated@@60 $generated@@191 $generated@@190)))
)))
(assert (forall (($generated@@192 T@U) ) (!  (=> ($generated@@48 $generated@@49 $generated@@192 $generated@@50) (or (or (or ($generated@@63 $generated@@192) ($generated@@65 $generated@@192)) ($generated@@67 $generated@@192)) ($generated@@69 $generated@@192)))
 :pattern ( ($generated@@69 $generated@@192) ($generated@@48 $generated@@49 $generated@@192 $generated@@50))
 :pattern ( ($generated@@67 $generated@@192) ($generated@@48 $generated@@49 $generated@@192 $generated@@50))
 :pattern ( ($generated@@65 $generated@@192) ($generated@@48 $generated@@49 $generated@@192 $generated@@50))
 :pattern ( ($generated@@63 $generated@@192) ($generated@@48 $generated@@49 $generated@@192 $generated@@50))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (! ($generated@@165 $generated@@16 $generated@@194 $generated@@1 $generated@@193)
 :pattern ( ($generated@@165 $generated@@16 $generated@@194 $generated@@1 $generated@@193))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! ($generated@@165 $generated@@17 $generated@@196 $generated@@2 $generated@@195)
 :pattern ( ($generated@@165 $generated@@17 $generated@@196 $generated@@2 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! ($generated@@165 $generated@@15 $generated@@198 $generated $generated@@197)
 :pattern ( ($generated@@165 $generated@@15 $generated@@198 $generated $generated@@197))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (! ($generated@@165 $generated@@51 $generated@@200 $generated@@0 $generated@@199)
 :pattern ( ($generated@@165 $generated@@51 $generated@@200 $generated@@0 $generated@@199))
)))
(assert (forall (($generated@@201 T@U) ) (! ($generated@@48 $generated@@16 $generated@@201 $generated@@1)
 :pattern ( ($generated@@48 $generated@@16 $generated@@201 $generated@@1))
)))
(assert (forall (($generated@@202 T@U) ) (! ($generated@@48 $generated@@17 $generated@@202 $generated@@2)
 :pattern ( ($generated@@48 $generated@@17 $generated@@202 $generated@@2))
)))
(assert (forall (($generated@@203 T@U) ) (! ($generated@@48 $generated@@15 $generated@@203 $generated)
 :pattern ( ($generated@@48 $generated@@15 $generated@@203 $generated))
)))
(assert (forall (($generated@@204 T@U) ) (! ($generated@@48 $generated@@51 $generated@@204 $generated@@0)
 :pattern ( ($generated@@48 $generated@@51 $generated@@204 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () Real)
(declare-fun $generated@@209 () Real)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 (T@U) Bool)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () Int)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@216  (=> (and (and (not ($generated@@19 ($generated@@60 $generated@@15 ($generated@@18 true)))) (not ($generated@@19 ($generated@@60 $generated@@15 ($generated@@18 true))))) (= (ControlFlow 0 9) (- 0 8))) false)))
(let (($generated@@217  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or ($generated@@69 $generated@@205) ($generated@@67 $generated@@205))) (=> (or ($generated@@69 $generated@@205) ($generated@@67 $generated@@205)) (=> (= (ControlFlow 0 6) (- 0 5)) (not ($generated@@67 $generated@@205)))))))
(let (($generated@@218  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or ($generated@@69 $generated@@205) ($generated@@67 $generated@@205))) (=> (or ($generated@@69 $generated@@205) ($generated@@67 $generated@@205)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not ($generated@@67 $generated@@205))) (=> (not ($generated@@67 $generated@@205)) (=> (= $generated@@206 $generated@@205) (=> (and ($generated@@48 $generated@@49 $generated@@206 $generated@@50) (= $generated@@207 $generated@@206)) (=> (and (and (= $generated@@208 ($generated@@58 2.2)) ($generated@@48 $generated@@17 ($generated@@22 $generated@@208) $generated@@2)) (and (= $generated@@209 $generated@@208) (= (ControlFlow 0 2) (- 0 1)))) (or (or ($generated@@65 $generated@@207) ($generated@@67 $generated@@207)) ($generated@@69 $generated@@207)))))))))))
(let (($generated@@219  (=> (= $generated@@210 ($generated@@109 $generated@@211 $generated@@212 $generated@@7 false)) (and (and (=> (= (ControlFlow 0 10) 2) $generated@@218) (=> (= (ControlFlow 0 10) 6) $generated@@217)) (=> (= (ControlFlow 0 10) 9) $generated@@216)))))
(let (($generated@@220  (=> (and ($generated@@166 $generated@@212) ($generated@@213 $generated@@212)) (=> (and (and ($generated@@48 $generated@@49 $generated@@205 $generated@@50) ($generated@@165 $generated@@49 $generated@@205 $generated@@50 $generated@@212)) ($generated@@184 $generated@@205)) (=> (and (and (and ($generated@@48 $generated@@49 $generated@@214 $generated@@50) ($generated@@165 $generated@@49 $generated@@214 $generated@@50 $generated@@212)) (= 0 $generated@@215)) (and ($generated@@67 $generated@@205) (= (ControlFlow 0 11) 10))) $generated@@219)))))
$generated@@220))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)