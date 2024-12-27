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
(declare-fun $generated@@26 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@42 (T@U T@U T@U) Int)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 (T@T T@U T@U) Bool)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@56 (Int) Int)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@61 (T@U T@U) T@U)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@63 (T@U T@U) Int)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@67 (T@U) Bool)
(declare-fun $generated@@69 (T@U) Bool)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@U T@U) Bool)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@89 (T@U) Int)
(declare-fun $generated@@93 (T@U) Int)
(declare-fun $generated@@108 () T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@127 (T@U) Int)
(declare-fun $generated@@135 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@136 () T@T)
(declare-fun $generated@@137 () T@T)
(declare-fun $generated@@138 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@139 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@140 () T@T)
(declare-fun $generated@@141 (T@T T@T) T@T)
(declare-fun $generated@@142 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@143 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@144 (T@T) T@T)
(declare-fun $generated@@145 (T@T) T@T)
(declare-fun $generated@@195 () Int)
(declare-fun $generated@@196 (T@U T@U) Bool)
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
(assert  (and (= ($generated@@9 $generated@@27) 3) (= ($generated@@9 $generated@@32) 4)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> ($generated@@30 $generated@@37) (= ($generated@@26 $generated@@27 ($generated@@28 $generated@@35 $generated@@36) ($generated@@29 $generated@@34) $generated@@37)  (and ($generated@@31 $generated@@35 $generated@@34 $generated@@37) ($generated@@26 $generated@@32 $generated@@36 ($generated@@33 ($generated@@29 $generated@@34)) $generated@@37))))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@28 $generated@@35 $generated@@36) ($generated@@29 $generated@@34) $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@26 $generated@@32 $generated@@40 ($generated@@33 $generated@@39) $generated@@41) ($generated@@26 $generated@@32 $generated@@40 ($generated@@38 $generated@@39) $generated@@41))
 :pattern ( ($generated@@26 $generated@@32 $generated@@40 ($generated@@33 $generated@@39) $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@42 $generated@@44 ($generated@@43 $generated@@45) $generated@@46) ($generated@@42 $generated@@44 $generated@@45 $generated@@46))
 :pattern ( ($generated@@42 $generated@@44 ($generated@@43 $generated@@45) $generated@@46))
)))
(assert (= ($generated@@47 $generated@@48) $generated@@5))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> ($generated@@49 $generated@@32 $generated@@51 ($generated@@38 $generated@@52)) ($generated@@50 $generated@@51))
 :pattern ( ($generated@@49 $generated@@32 $generated@@51 ($generated@@38 $generated@@52)))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (!  (=> ($generated@@30 $generated@@54) ($generated@@26 $generated@@27 $generated@@48 ($generated@@29 $generated@@53) $generated@@54))
 :pattern ( ($generated@@26 $generated@@27 $generated@@48 ($generated@@29 $generated@@53) $generated@@54))
)))
(assert (forall (($generated@@55 T@U) ) (! ($generated@@49 $generated@@27 $generated@@48 ($generated@@29 $generated@@55))
 :pattern ( ($generated@@49 $generated@@27 $generated@@48 ($generated@@29 $generated@@55)))
)))
(assert (forall (($generated@@57 Int) ) (! (= ($generated@@56 $generated@@57) $generated@@57)
 :pattern ( ($generated@@56 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@58 $generated@@60 $generated@@59) $generated@@59)
 :pattern ( ($generated@@58 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@62 $generated@@65 $generated@@66) (and ($generated@@49 $generated@@27 ($generated@@61 $generated@@65 $generated@@66) ($generated@@29 $generated@@65)) (> ($generated@@63 $generated@@66 ($generated@@64 $generated@@27 ($generated@@61 $generated@@65 $generated@@66))) 0)))
 :pattern ( ($generated@@61 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (! (= ($generated@@67 $generated@@68) (= ($generated@@47 $generated@@68) $generated@@5))
 :pattern ( ($generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@69 $generated@@70) (= ($generated@@47 $generated@@70) $generated@@6))
 :pattern ( ($generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@64 $generated@@73 ($generated@@71 $generated@@73 $generated@@72)) $generated@@72)
 :pattern ( ($generated@@71 $generated@@73 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@69 $generated@@74) (exists (($generated@@75 T@U) ($generated@@76 T@U) ) (= $generated@@74 ($generated@@28 $generated@@75 $generated@@76))))
 :pattern ( ($generated@@69 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ) (!  (=> ($generated@@67 $generated@@77) (= $generated@@77 $generated@@48))
 :pattern ( ($generated@@67 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@49 $generated@@27 ($generated@@28 $generated@@80 $generated@@81) ($generated@@29 $generated@@79))  (and ($generated@@78 $generated@@80 $generated@@79) ($generated@@49 $generated@@32 $generated@@81 ($generated@@33 ($generated@@29 $generated@@79)))))
 :pattern ( ($generated@@49 $generated@@27 ($generated@@28 $generated@@80 $generated@@81) ($generated@@29 $generated@@79)))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@31 ($generated@@64 $generated@@85 $generated@@82) $generated@@83 $generated@@84) ($generated@@26 $generated@@85 $generated@@82 $generated@@83 $generated@@84))
 :pattern ( ($generated@@31 ($generated@@64 $generated@@85 $generated@@82) $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@87 T@U) ) (!  (and (= ($generated@@25 ($generated@@29 $generated@@87)) $generated@@3) (= ($generated@@86 ($generated@@29 $generated@@87)) $generated@@7))
 :pattern ( ($generated@@29 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ) (!  (and (= ($generated@@25 ($generated@@33 $generated@@88)) $generated@@4) (= ($generated@@86 ($generated@@33 $generated@@88)) $generated@@8))
 :pattern ( ($generated@@33 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (> ($generated@@63 $generated@@91 ($generated@@64 $generated@@27 $generated@@92)) 0) (< ($generated@@89 $generated@@92) ($generated@@89 ($generated@@28 $generated@@90 $generated@@91))))
 :pattern ( ($generated@@63 $generated@@91 ($generated@@64 $generated@@27 $generated@@92)) ($generated@@28 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@49 $generated@@32 $generated@@95 ($generated@@33 $generated@@94))  (and ($generated@@49 $generated@@32 $generated@@95 ($generated@@38 $generated@@94)) (= ($generated@@93 $generated@@95) ($generated@@56 1))))
 :pattern ( ($generated@@49 $generated@@32 $generated@@95 ($generated@@33 $generated@@94)))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> ($generated@@49 $generated@@27 $generated@@97 ($generated@@29 $generated@@96)) (or ($generated@@67 $generated@@97) ($generated@@69 $generated@@97)))
 :pattern ( ($generated@@69 $generated@@97) ($generated@@49 $generated@@27 $generated@@97 ($generated@@29 $generated@@96)))
 :pattern ( ($generated@@67 $generated@@97) ($generated@@49 $generated@@27 $generated@@97 ($generated@@29 $generated@@96)))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@49 $generated@@32 $generated@@98 ($generated@@38 $generated@@99)) (forall (($generated@@100 T@U) ) (!  (=> (< 0 ($generated@@63 $generated@@98 $generated@@100)) ($generated@@78 $generated@@100 $generated@@99))
 :pattern ( ($generated@@63 $generated@@98 $generated@@100))
)))
 :pattern ( ($generated@@49 $generated@@32 $generated@@98 ($generated@@38 $generated@@99)))
)))
(assert (forall (($generated@@101 T@U) ) (!  (=> ($generated@@78 $generated@@101 $generated) (and (= ($generated@@64 $generated@@11 ($generated@@71 $generated@@11 $generated@@101)) $generated@@101) ($generated@@49 $generated@@11 ($generated@@71 $generated@@11 $generated@@101) $generated)))
 :pattern ( ($generated@@78 $generated@@101 $generated))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@78 ($generated@@64 $generated@@104 $generated@@102) $generated@@103) ($generated@@49 $generated@@104 $generated@@102 $generated@@103))
 :pattern ( ($generated@@78 ($generated@@64 $generated@@104 $generated@@102) $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@50 $generated@@105) (forall (($generated@@106 T@U) ) (!  (and (<= 0 ($generated@@63 $generated@@105 $generated@@106)) (<= ($generated@@63 $generated@@105 $generated@@106) ($generated@@93 $generated@@105)))
 :pattern ( ($generated@@63 $generated@@105 $generated@@106))
)))
 :pattern ( ($generated@@50 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (<= 0 ($generated@@93 $generated@@107))
 :pattern ( ($generated@@93 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@63 $generated@@108 $generated@@109) 0)
 :pattern ( ($generated@@63 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@47 ($generated@@28 $generated@@110 $generated@@111)) $generated@@6)
 :pattern ( ($generated@@28 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@28 $generated@@113 $generated@@114)) $generated@@113)
 :pattern ( ($generated@@28 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@115 ($generated@@28 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@28 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@38 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@38 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@25 ($generated@@38 $generated@@120)) $generated@@1)
 :pattern ( ($generated@@38 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@29 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@29 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@123 ($generated@@33 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@33 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@71 $generated@@126 ($generated@@64 $generated@@126 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@64 $generated@@126 $generated@@125))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (< ($generated@@127 $generated@@128) ($generated@@89 ($generated@@28 $generated@@128 $generated@@129)))
 :pattern ( ($generated@@28 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ) (!  (and (= (= ($generated@@93 $generated@@130) 0) (= $generated@@130 $generated@@108)) (=> (or (not (= ($generated@@93 $generated@@130) 0)) (not true)) (exists (($generated@@131 T@U) ) (! (< 0 ($generated@@63 $generated@@130 $generated@@131))
 :pattern ( ($generated@@63 $generated@@130 $generated@@131))
))))
 :pattern ( ($generated@@93 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (and ($generated@@30 $generated@@134) (and ($generated@@69 $generated@@132) ($generated@@26 $generated@@27 $generated@@132 ($generated@@29 $generated@@133) $generated@@134))) ($generated@@31 ($generated@@112 $generated@@132) $generated@@133 $generated@@134))
 :pattern ( ($generated@@31 ($generated@@112 $generated@@132) $generated@@133 $generated@@134))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@135 $generated@@146 $generated@@147 $generated@@148 ($generated@@142 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@152 $generated@@149) $generated@@151 $generated@@152) $generated@@149)
 :weight 0
)) (and (forall (($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (or (= $generated@@158 $generated@@160) (= ($generated@@135 $generated@@153 $generated@@154 $generated@@155 ($generated@@142 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@158 $generated@@159 $generated@@156) $generated@@160 $generated@@161) ($generated@@135 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@160 $generated@@161)))
 :weight 0
)) (forall (($generated@@162 T@T) ($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (or (= $generated@@168 $generated@@170) (= ($generated@@135 $generated@@162 $generated@@163 $generated@@164 ($generated@@142 $generated@@162 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@168 $generated@@165) $generated@@169 $generated@@170) ($generated@@135 $generated@@162 $generated@@163 $generated@@164 $generated@@166 $generated@@169 $generated@@170)))
 :weight 0
)))) (= ($generated@@9 $generated@@136) 5)) (= ($generated@@9 $generated@@137) 6)) (forall (($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@139 $generated@@171 $generated@@172 ($generated@@143 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@173) $generated@@175) $generated@@173)
 :weight 0
))) (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (or (= $generated@@180 $generated@@181) (= ($generated@@139 $generated@@176 $generated@@177 ($generated@@143 $generated@@176 $generated@@177 $generated@@179 $generated@@180 $generated@@178) $generated@@181) ($generated@@139 $generated@@176 $generated@@177 $generated@@179 $generated@@181)))
 :weight 0
))) (= ($generated@@9 $generated@@140) 7)) (forall (($generated@@182 T@T) ($generated@@183 T@T) ) (= ($generated@@9 ($generated@@141 $generated@@182 $generated@@183)) 8))) (forall (($generated@@184 T@T) ($generated@@185 T@T) ) (! (= ($generated@@144 ($generated@@141 $generated@@184 $generated@@185)) $generated@@184)
 :pattern ( ($generated@@141 $generated@@184 $generated@@185))
))) (forall (($generated@@186 T@T) ($generated@@187 T@T) ) (! (= ($generated@@145 ($generated@@141 $generated@@186 $generated@@187)) $generated@@187)
 :pattern ( ($generated@@141 $generated@@186 $generated@@187))
))))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 Bool) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@14 ($generated@@135 $generated@@136 $generated@@137 $generated@@10 ($generated@@138 $generated@@188 $generated@@189 $generated@@190 $generated@@191) $generated@@192 $generated@@193))  (=> (and (or (not (= $generated@@192 $generated@@188)) (not true)) ($generated@@14 ($generated@@71 $generated@@10 ($generated@@139 $generated@@137 $generated@@140 ($generated@@139 $generated@@136 ($generated@@141 $generated@@137 $generated@@140) $generated@@189 $generated@@192) $generated@@190)))) $generated@@191))
 :pattern ( ($generated@@135 $generated@@136 $generated@@137 $generated@@10 ($generated@@138 $generated@@188 $generated@@189 $generated@@190 $generated@@191) $generated@@192 $generated@@193))
)))
(assert (forall (($generated@@194 T@U) ) (! (= ($generated@@127 ($generated@@64 $generated@@27 $generated@@194)) ($generated@@89 $generated@@194))
 :pattern ( ($generated@@127 ($generated@@64 $generated@@27 $generated@@194)))
)))
(assert  (=> (<= 3 $generated@@195) (forall (($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> (or ($generated@@196 $generated@@197 $generated@@200) (and (< 3 $generated@@195) (and ($generated@@30 $generated@@199) ($generated@@49 $generated@@27 $generated@@200 ($generated@@29 $generated@@197))))) (and (=> (not ($generated@@67 $generated@@200)) (let (($generated@@201 ($generated@@115 $generated@@200)))
 (and ($generated@@62 $generated@@197 $generated@@201) ($generated@@196 $generated@@197 ($generated@@61 $generated@@197 $generated@@201))))) (= ($generated@@42 $generated@@197 ($generated@@43 $generated@@198) $generated@@200) (ite ($generated@@67 $generated@@200) 0 (let (($generated@@202 ($generated@@115 $generated@@200)))
(let (($generated@@203 ($generated@@61 $generated@@197 $generated@@202)))
($generated@@42 $generated@@197 $generated@@198 $generated@@203)))))))
 :pattern ( ($generated@@42 $generated@@197 ($generated@@43 $generated@@198) $generated@@200) ($generated@@30 $generated@@199))
))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (!  (=> ($generated@@78 $generated@@204 ($generated@@38 $generated@@205)) (and (= ($generated@@64 $generated@@32 ($generated@@71 $generated@@32 $generated@@204)) $generated@@204) ($generated@@49 $generated@@32 ($generated@@71 $generated@@32 $generated@@204) ($generated@@38 $generated@@205))))
 :pattern ( ($generated@@78 $generated@@204 ($generated@@38 $generated@@205)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> ($generated@@78 $generated@@207 ($generated@@29 $generated@@206)) (and (= ($generated@@64 $generated@@27 ($generated@@71 $generated@@27 $generated@@207)) $generated@@207) ($generated@@49 $generated@@27 ($generated@@71 $generated@@27 $generated@@207) ($generated@@29 $generated@@206))))
 :pattern ( ($generated@@78 $generated@@207 ($generated@@29 $generated@@206)))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ) (!  (=> ($generated@@78 $generated@@209 ($generated@@33 $generated@@208)) (and (= ($generated@@64 $generated@@32 ($generated@@71 $generated@@32 $generated@@209)) $generated@@209) ($generated@@49 $generated@@32 ($generated@@71 $generated@@32 $generated@@209) ($generated@@33 $generated@@208))))
 :pattern ( ($generated@@78 $generated@@209 ($generated@@33 $generated@@208)))
)))
(assert (= $generated@@48 ($generated@@58 $generated@@27 $generated@@48)))
(assert  (=> (<= 3 $generated@@195) (forall (($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (!  (=> (or ($generated@@196 $generated@@210 ($generated@@58 $generated@@27 $generated@@213)) (and (< 3 $generated@@195) (and ($generated@@30 $generated@@212) ($generated@@49 $generated@@27 $generated@@213 ($generated@@29 $generated@@210))))) (and (=> (not ($generated@@14 ($generated@@58 $generated@@10 ($generated@@13 ($generated@@67 ($generated@@58 $generated@@27 $generated@@213)))))) (let (($generated@@214 ($generated@@58 $generated@@32 ($generated@@115 ($generated@@58 $generated@@27 $generated@@213)))))
 (and ($generated@@62 $generated@@210 $generated@@214) ($generated@@196 $generated@@210 ($generated@@61 $generated@@210 $generated@@214))))) (= ($generated@@42 $generated@@210 ($generated@@43 $generated@@211) ($generated@@58 $generated@@27 $generated@@213)) (ite ($generated@@67 ($generated@@58 $generated@@27 $generated@@213)) 0 (let (($generated@@215 ($generated@@58 $generated@@32 ($generated@@115 ($generated@@58 $generated@@27 $generated@@213)))))
(let (($generated@@216 ($generated@@61 $generated@@210 $generated@@215)))
($generated@@42 $generated@@210 ($generated@@43 $generated@@211) $generated@@216)))))))
 :weight 3
 :pattern ( ($generated@@42 $generated@@210 ($generated@@43 $generated@@211) ($generated@@58 $generated@@27 $generated@@213)) ($generated@@30 $generated@@212))
))))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@28 ($generated@@58 $generated@@140 $generated@@217) ($generated@@58 $generated@@32 $generated@@218)) ($generated@@58 $generated@@27 ($generated@@28 $generated@@217 $generated@@218)))
 :pattern ( ($generated@@28 ($generated@@58 $generated@@140 $generated@@217) ($generated@@58 $generated@@32 $generated@@218)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (and ($generated@@30 $generated@@221) (and ($generated@@69 $generated@@219) ($generated@@26 $generated@@27 $generated@@219 ($generated@@29 $generated@@220) $generated@@221))) ($generated@@26 $generated@@32 ($generated@@115 $generated@@219) ($generated@@33 ($generated@@29 $generated@@220)) $generated@@221))
 :pattern ( ($generated@@26 $generated@@32 ($generated@@115 $generated@@219) ($generated@@33 ($generated@@29 $generated@@220)) $generated@@221))
)))
(assert (forall (($generated@@222 Int) ) (! (= ($generated@@64 $generated@@11 ($generated@@15 ($generated@@56 $generated@@222))) ($generated@@58 $generated@@140 ($generated@@64 $generated@@11 ($generated@@15 $generated@@222))))
 :pattern ( ($generated@@64 $generated@@11 ($generated@@15 ($generated@@56 $generated@@222))))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@T) ) (! (= ($generated@@64 $generated@@224 ($generated@@58 $generated@@224 $generated@@223)) ($generated@@58 $generated@@140 ($generated@@64 $generated@@224 $generated@@223)))
 :pattern ( ($generated@@64 $generated@@224 ($generated@@58 $generated@@224 $generated@@223)))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ) (! (= ($generated@@26 $generated@@32 $generated@@225 ($generated@@38 $generated@@226) $generated@@227) (forall (($generated@@228 T@U) ) (!  (=> (< 0 ($generated@@63 $generated@@225 $generated@@228)) ($generated@@31 $generated@@228 $generated@@226 $generated@@227))
 :pattern ( ($generated@@63 $generated@@225 $generated@@228))
)))
 :pattern ( ($generated@@26 $generated@@32 $generated@@225 ($generated@@38 $generated@@226) $generated@@227))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (! ($generated@@26 $generated@@11 $generated@@230 $generated $generated@@229)
 :pattern ( ($generated@@26 $generated@@11 $generated@@230 $generated $generated@@229))
)))
(assert (forall (($generated@@231 T@U) ) (! ($generated@@49 $generated@@11 $generated@@231 $generated)
 :pattern ( ($generated@@49 $generated@@11 $generated@@231 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 () T@U)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 12) (let (($generated@@245  (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and ($generated@@49 $generated@@27 ($generated@@58 $generated@@27 $generated@@48) ($generated@@29 $generated@@232)) (> ($generated@@63 $generated@@233 ($generated@@64 $generated@@27 ($generated@@58 $generated@@27 $generated@@48))) 0)) (exists (($generated@@246 T@U) )  (and ($generated@@49 $generated@@27 $generated@@246 ($generated@@29 $generated@@232)) (> ($generated@@63 $generated@@233 ($generated@@64 $generated@@27 $generated@@246)) 0))))) (=> (or (and ($generated@@49 $generated@@27 ($generated@@58 $generated@@27 $generated@@48) ($generated@@29 $generated@@232)) (> ($generated@@63 $generated@@233 ($generated@@64 $generated@@27 ($generated@@58 $generated@@27 $generated@@48))) 0)) (exists (($generated@@247 T@U) )  (and ($generated@@49 $generated@@27 $generated@@247 ($generated@@29 $generated@@232)) (> ($generated@@63 $generated@@233 ($generated@@64 $generated@@27 $generated@@247)) 0)))) (=> (and (and (and ($generated@@49 $generated@@27 $generated@@234 ($generated@@29 $generated@@232)) ($generated@@26 $generated@@27 $generated@@234 ($generated@@29 $generated@@232) $generated@@235)) (> ($generated@@63 $generated@@233 ($generated@@64 $generated@@27 $generated@@234)) 0)) (and ($generated@@26 $generated@@27 $generated@@234 ($generated@@29 $generated@@232) $generated@@235) (= (ControlFlow 0 5) (- 0 4)))) (< ($generated@@89 $generated@@234) ($generated@@89 $generated@@236)))))))
(let (($generated@@248  (=> (and (not (and ($generated@@49 $generated@@27 $generated@@234 ($generated@@29 $generated@@232)) ($generated@@26 $generated@@27 $generated@@234 ($generated@@29 $generated@@232) $generated@@235))) (= (ControlFlow 0 8) 5)) $generated@@245)))
(let (($generated@@249  (=> (and (and ($generated@@49 $generated@@27 $generated@@234 ($generated@@29 $generated@@232)) ($generated@@26 $generated@@27 $generated@@234 ($generated@@29 $generated@@232) $generated@@235)) (= (ControlFlow 0 7) 5)) $generated@@245)))
(let (($generated@@250  (=> (= $generated@@236 ($generated@@28 $generated@@237 $generated@@238)) (=> (and (and (and ($generated@@78 $generated@@237 $generated@@232) ($generated@@49 $generated@@32 $generated@@238 ($generated@@33 ($generated@@29 $generated@@232)))) (and (= $generated@@239 $generated@@238) ($generated@@49 $generated@@32 $generated@@239 ($generated@@33 ($generated@@29 $generated@@232))))) (and (and (= $generated@@233 $generated@@239) (= $generated@@240 $generated@@237)) (and ($generated@@78 $generated@@240 $generated@@232) (= $generated@@241 $generated@@240)))) (and (=> (= (ControlFlow 0 9) 7) $generated@@249) (=> (= (ControlFlow 0 9) 8) $generated@@248))))))
(let (($generated@@251 true))
(let (($generated@@252  (=> (or (not (= $generated@@236 $generated@@48)) (not true)) (and (=> (= (ControlFlow 0 10) 9) $generated@@250) (=> (= (ControlFlow 0 10) 3) $generated@@251)))))
(let (($generated@@253 true))
(let (($generated@@254 true))
(let (($generated@@255  (=> (= $generated@@242 ($generated@@138 $generated@@243 $generated@@235 $generated@@2 false)) (and (and (=> (= (ControlFlow 0 11) 1) $generated@@254) (=> (= (ControlFlow 0 11) 2) $generated@@253)) (=> (= (ControlFlow 0 11) 10) $generated@@252)))))
(let (($generated@@256  (=> (and (and (and ($generated@@30 $generated@@235) ($generated@@244 $generated@@235)) ($generated@@49 $generated@@27 $generated@@236 ($generated@@29 $generated@@232))) (and (= 3 $generated@@195) (= (ControlFlow 0 12) 11))) $generated@@255)))
$generated@@256)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)