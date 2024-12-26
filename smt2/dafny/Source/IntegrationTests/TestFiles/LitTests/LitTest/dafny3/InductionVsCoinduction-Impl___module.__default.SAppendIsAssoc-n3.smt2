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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U T@U) T@U)
(declare-fun $generated@@34 (T@U) Int)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@46 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@49 (T@U) Bool)
(declare-fun $generated@@52 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@58 (T@T T@U T@U) Bool)
(declare-fun $generated@@60 (Int) Int)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@U T@U) T@U)
(declare-fun $generated@@66 (T@U T@U) Bool)
(declare-fun $generated@@70 () Int)
(declare-fun $generated@@71 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@72 (T@U T@U T@U) Bool)
(declare-fun $generated@@73 (T@U) Bool)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@86 (T@T T@U) T@U)
(declare-fun $generated@@87 (T@T T@U) T@U)
(declare-fun $generated@@100 (T@U T@U T@U) Bool)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@108 (T@U) Bool)
(declare-fun $generated@@117 (T@U) Bool)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@152 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@153 () T@T)
(declare-fun $generated@@154 () T@T)
(declare-fun $generated@@155 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@156 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@157 () T@T)
(declare-fun $generated@@158 (T@T T@T) T@T)
(declare-fun $generated@@159 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@160 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@161 (T@T) T@T)
(declare-fun $generated@@162 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (!  (=> (or (not (= $generated@@25 ($generated@@22 0))) (not true)) (= ($generated@@20 $generated@@23 $generated@@24 $generated@@25 ($generated@@21 $generated@@26) $generated@@27 $generated@@28) ($generated@@20 $generated@@23 $generated@@24 $generated@@25 $generated@@26 $generated@@27 $generated@@28)))
 :pattern ( ($generated@@20 $generated@@23 $generated@@24 $generated@@25 ($generated@@21 $generated@@26) $generated@@27 $generated@@28))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> (and ($generated@@29 $generated@@30 $generated@@31) ($generated@@29 $generated@@31 $generated@@32)) ($generated@@29 $generated@@30 $generated@@32))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31) ($generated@@29 $generated@@31 $generated@@32))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31) ($generated@@29 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 Int) ($generated@@37 Int) ) (!  (=> (and (and (<= 0 $generated@@36) (<= 0 $generated@@37)) (<= (+ $generated@@36 $generated@@37) ($generated@@34 $generated@@35))) (= ($generated@@33 ($generated@@33 $generated@@35 ($generated@@22 $generated@@36)) ($generated@@22 $generated@@37)) ($generated@@33 $generated@@35 ($generated@@22 (+ $generated@@36 $generated@@37)))))
 :pattern ( ($generated@@33 ($generated@@33 $generated@@35 ($generated@@22 $generated@@36)) ($generated@@22 $generated@@37)))
)))
(assert (= ($generated@@38 $generated@@39) $generated@@1))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (= $generated@@44 $generated@@45) ($generated@@20 $generated@@40 $generated@@41 $generated@@42 ($generated@@21 $generated@@43) $generated@@44 $generated@@45))
 :pattern ( ($generated@@20 $generated@@40 $generated@@41 $generated@@42 ($generated@@21 $generated@@43) $generated@@44 $generated@@45))
)))
(assert (= ($generated@@4 $generated@@47) 3))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> ($generated@@49 $generated@@51) ($generated@@46 $generated@@47 $generated@@39 ($generated@@48 $generated@@50) $generated@@51))
 :pattern ( ($generated@@46 $generated@@47 $generated@@39 ($generated@@48 $generated@@50) $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (! (= ($generated@@52 $generated@@53 $generated@@54 ($generated@@21 $generated@@55) $generated@@56 $generated@@57) (= $generated@@56 $generated@@57))
 :pattern ( ($generated@@52 $generated@@53 $generated@@54 ($generated@@21 $generated@@55) $generated@@56 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ) (! ($generated@@58 $generated@@47 $generated@@39 ($generated@@48 $generated@@59))
 :pattern ( ($generated@@58 $generated@@47 $generated@@39 ($generated@@48 $generated@@59)))
)))
(assert (forall (($generated@@61 Int) ) (! (= ($generated@@60 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@62 $generated@@64 $generated@@63) $generated@@63)
 :pattern ( ($generated@@62 $generated@@64 $generated@@63))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@58 $generated@@47 ($generated@@65 $generated@@68 $generated@@69) ($generated@@48 $generated@@67))  (and ($generated@@66 $generated@@68 $generated@@67) ($generated@@58 $generated@@47 $generated@@69 ($generated@@48 $generated@@67))))
 :pattern ( ($generated@@58 $generated@@47 ($generated@@65 $generated@@68 $generated@@69) ($generated@@48 $generated@@67)))
)))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (or ($generated@@72 $generated@@76 $generated@@78 $generated@@79) (and (< 1 $generated@@70) (and ($generated@@58 $generated@@47 $generated@@78 ($generated@@48 $generated@@76)) ($generated@@58 $generated@@47 $generated@@79 ($generated@@48 $generated@@76))))) (and (=> (not ($generated@@73 $generated@@78)) (let (($generated@@80 ($generated@@74 $generated@@78)))
($generated@@72 $generated@@76 $generated@@80 $generated@@79))) (= ($generated@@71 $generated@@76 ($generated@@21 $generated@@77) $generated@@78 $generated@@79) (ite ($generated@@73 $generated@@78) $generated@@79 (let (($generated@@81 ($generated@@74 $generated@@78)))
(let (($generated@@82 ($generated@@75 $generated@@78)))
($generated@@65 $generated@@82 ($generated@@71 $generated@@76 $generated@@77 $generated@@81 $generated@@79))))))))
 :pattern ( ($generated@@71 $generated@@76 ($generated@@21 $generated@@77) $generated@@78 $generated@@79))
))))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@73 $generated@@83) (= ($generated@@38 $generated@@83) $generated@@1))
 :pattern ( ($generated@@73 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@84 $generated@@85) (= ($generated@@38 $generated@@85) $generated@@2))
 :pattern ( ($generated@@84 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@87 $generated@@89 ($generated@@86 $generated@@89 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@86 $generated@@89 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@84 $generated@@90) (exists (($generated@@91 T@U) ($generated@@92 T@U) ) (= $generated@@90 ($generated@@65 $generated@@91 $generated@@92))))
 :pattern ( ($generated@@84 $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ) (!  (=> ($generated@@73 $generated@@93) (= $generated@@93 $generated@@39))
 :pattern ( ($generated@@73 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> (and ($generated@@58 $generated@@47 $generated@@98 ($generated@@48 $generated@@94)) ($generated@@58 $generated@@47 $generated@@99 ($generated@@48 $generated@@95))) (= ($generated@@20 $generated@@94 $generated@@95 $generated@@96 ($generated@@21 $generated@@97) $generated@@98 $generated@@99)  (and (=> (< 0 ($generated@@34 $generated@@96)) (or (and ($generated@@73 $generated@@98) ($generated@@73 $generated@@99)) (and (and ($generated@@84 $generated@@98) ($generated@@84 $generated@@99)) (=> (and ($generated@@84 $generated@@98) ($generated@@84 $generated@@99)) (and (= ($generated@@75 $generated@@98) ($generated@@75 $generated@@99)) ($generated@@20 $generated@@94 $generated@@95 ($generated@@33 $generated@@96 ($generated@@22 1)) $generated@@97 ($generated@@74 $generated@@98) ($generated@@74 $generated@@99))))))) (=> (and (or (not (= $generated@@96 ($generated@@22 0))) (not true)) (= ($generated@@34 $generated@@96) 0)) ($generated@@52 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@99)))))
 :pattern ( ($generated@@20 $generated@@94 $generated@@95 $generated@@96 ($generated@@21 $generated@@97) $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@100 ($generated@@87 $generated@@104 $generated@@101) $generated@@102 $generated@@103) ($generated@@46 $generated@@104 $generated@@101 $generated@@102 $generated@@103))
 :pattern ( ($generated@@100 ($generated@@87 $generated@@104 $generated@@101) $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@107 T@U) ) (!  (and (= ($generated@@105 ($generated@@48 $generated@@107)) $generated@@0) (= ($generated@@106 ($generated@@48 $generated@@107)) $generated@@3))
 :pattern ( ($generated@@48 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> (and ($generated@@108 $generated@@110) (<= ($generated@@34 $generated@@110) ($generated@@34 $generated@@109))) (and (= ($generated@@108 ($generated@@33 $generated@@109 $generated@@110)) ($generated@@108 $generated@@109)) (= ($generated@@34 ($generated@@33 $generated@@109 $generated@@110)) (- ($generated@@34 $generated@@109) ($generated@@34 $generated@@110)))))
 :pattern ( ($generated@@33 $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@111 Int) ) (!  (=> (<= 0 $generated@@111) (and ($generated@@108 ($generated@@22 $generated@@111)) (= ($generated@@34 ($generated@@22 $generated@@111)) $generated@@111)))
 :pattern ( ($generated@@22 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> (and ($generated@@58 $generated@@47 $generated@@115 ($generated@@48 $generated@@112)) ($generated@@58 $generated@@47 $generated@@116 ($generated@@48 $generated@@113))) (= ($generated@@52 $generated@@112 $generated@@113 ($generated@@21 $generated@@114) $generated@@115 $generated@@116)  (or (and ($generated@@73 $generated@@115) ($generated@@73 $generated@@116)) (and (and ($generated@@84 $generated@@115) ($generated@@84 $generated@@116)) (=> (and ($generated@@84 $generated@@115) ($generated@@84 $generated@@116)) (and (= ($generated@@75 $generated@@115) ($generated@@75 $generated@@116)) ($generated@@52 $generated@@112 $generated@@113 $generated@@114 ($generated@@74 $generated@@115) ($generated@@74 $generated@@116))))))))
 :pattern ( ($generated@@52 $generated@@112 $generated@@113 ($generated@@21 $generated@@114) $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ) (!  (=> ($generated@@117 $generated@@118) (or ($generated@@73 $generated@@118) ($generated@@84 $generated@@118)))
 :pattern ( ($generated@@117 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (!  (or (or ($generated@@29 $generated@@119 $generated@@120) (= $generated@@119 $generated@@120)) ($generated@@29 $generated@@120 $generated@@119))
 :pattern ( ($generated@@29 $generated@@119 $generated@@120) ($generated@@29 $generated@@120 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> ($generated@@58 $generated@@47 $generated@@122 ($generated@@48 $generated@@121)) (or ($generated@@73 $generated@@122) ($generated@@84 $generated@@122)))
 :pattern ( ($generated@@84 $generated@@122) ($generated@@58 $generated@@47 $generated@@122 ($generated@@48 $generated@@121)))
 :pattern ( ($generated@@73 $generated@@122) ($generated@@58 $generated@@47 $generated@@122 ($generated@@48 $generated@@121)))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@66 ($generated@@87 $generated@@125 $generated@@123) $generated@@124) ($generated@@58 $generated@@125 $generated@@123 $generated@@124))
 :pattern ( ($generated@@66 ($generated@@87 $generated@@125 $generated@@123) $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ) (! (<= 0 ($generated@@34 $generated@@126))
 :pattern ( ($generated@@34 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@38 ($generated@@65 $generated@@127 $generated@@128)) $generated@@2)
 :pattern ( ($generated@@65 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@75 ($generated@@65 $generated@@129 $generated@@130)) $generated@@129)
 :pattern ( ($generated@@65 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@74 ($generated@@65 $generated@@131 $generated@@132)) $generated@@132)
 :pattern ( ($generated@@65 $generated@@131 $generated@@132))
)))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (or ($generated@@72 $generated@@133 $generated@@135 $generated@@136) (and (< 1 $generated@@70) (and ($generated@@58 $generated@@47 $generated@@135 ($generated@@48 $generated@@133)) ($generated@@58 $generated@@47 $generated@@136 ($generated@@48 $generated@@133))))) ($generated@@58 $generated@@47 ($generated@@71 $generated@@133 $generated@@134 $generated@@135 $generated@@136) ($generated@@48 $generated@@133)))
 :pattern ( ($generated@@71 $generated@@133 $generated@@134 $generated@@135 $generated@@136))
))))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@137 ($generated@@48 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@48 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@86 $generated@@140 ($generated@@87 $generated@@140 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@87 $generated@@140 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (and (and (and (=> ($generated@@29 $generated@@141 $generated@@142) (or (not (= $generated@@141 $generated@@142)) (not true))) (=> (and ($generated@@108 $generated@@141) (not ($generated@@108 $generated@@142))) ($generated@@29 $generated@@141 $generated@@142))) (=> (and ($generated@@108 $generated@@141) ($generated@@108 $generated@@142)) (= ($generated@@29 $generated@@141 $generated@@142) (< ($generated@@34 $generated@@141) ($generated@@34 $generated@@142))))) (=> (and ($generated@@29 $generated@@141 $generated@@142) ($generated@@108 $generated@@142)) ($generated@@108 $generated@@141)))
 :pattern ( ($generated@@29 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@52 $generated@@143 $generated@@144 ($generated@@21 $generated@@145) $generated@@146 $generated@@147) (forall (($generated@@148 T@U) ) (! ($generated@@20 $generated@@143 $generated@@144 $generated@@148 ($generated@@21 $generated@@145) $generated@@146 $generated@@147)
 :pattern ( ($generated@@20 $generated@@143 $generated@@144 $generated@@148 ($generated@@21 $generated@@145) $generated@@146 $generated@@147))
)))
 :pattern ( ($generated@@52 $generated@@143 $generated@@144 ($generated@@21 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (and ($generated@@49 $generated@@151) (and ($generated@@84 $generated@@149) ($generated@@46 $generated@@47 $generated@@149 ($generated@@48 $generated@@150) $generated@@151))) ($generated@@100 ($generated@@75 $generated@@149) $generated@@150 $generated@@151))
 :pattern ( ($generated@@100 ($generated@@75 $generated@@149) $generated@@150 $generated@@151))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@152 $generated@@163 $generated@@164 $generated@@165 ($generated@@159 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@168 $generated@@169 $generated@@166) $generated@@168 $generated@@169) $generated@@166)
 :weight 0
)) (and (forall (($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (or (= $generated@@175 $generated@@177) (= ($generated@@152 $generated@@170 $generated@@171 $generated@@172 ($generated@@159 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@176 $generated@@173) $generated@@177 $generated@@178) ($generated@@152 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@177 $generated@@178)))
 :weight 0
)) (forall (($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (or (= $generated@@185 $generated@@187) (= ($generated@@152 $generated@@179 $generated@@180 $generated@@181 ($generated@@159 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@184 $generated@@185 $generated@@182) $generated@@186 $generated@@187) ($generated@@152 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@186 $generated@@187)))
 :weight 0
)))) (= ($generated@@4 $generated@@153) 4)) (= ($generated@@4 $generated@@154) 5)) (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@156 $generated@@188 $generated@@189 ($generated@@160 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@190) $generated@@192) $generated@@190)
 :weight 0
))) (forall (($generated@@193 T@T) ($generated@@194 T@T) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@197 $generated@@198) (= ($generated@@156 $generated@@193 $generated@@194 ($generated@@160 $generated@@193 $generated@@194 $generated@@196 $generated@@197 $generated@@195) $generated@@198) ($generated@@156 $generated@@193 $generated@@194 $generated@@196 $generated@@198)))
 :weight 0
))) (= ($generated@@4 $generated@@157) 6)) (forall (($generated@@199 T@T) ($generated@@200 T@T) ) (= ($generated@@4 ($generated@@158 $generated@@199 $generated@@200)) 7))) (forall (($generated@@201 T@T) ($generated@@202 T@T) ) (! (= ($generated@@161 ($generated@@158 $generated@@201 $generated@@202)) $generated@@201)
 :pattern ( ($generated@@158 $generated@@201 $generated@@202))
))) (forall (($generated@@203 T@T) ($generated@@204 T@T) ) (! (= ($generated@@162 ($generated@@158 $generated@@203 $generated@@204)) $generated@@204)
 :pattern ( ($generated@@158 $generated@@203 $generated@@204))
))))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 Bool) ($generated@@209 T@U) ($generated@@210 T@U) ) (! (= ($generated@@9 ($generated@@152 $generated@@153 $generated@@154 $generated@@5 ($generated@@155 $generated@@205 $generated@@206 $generated@@207 $generated@@208) $generated@@209 $generated@@210))  (=> (and (or (not (= $generated@@209 $generated@@205)) (not true)) ($generated@@9 ($generated@@86 $generated@@5 ($generated@@156 $generated@@154 $generated@@157 ($generated@@156 $generated@@153 ($generated@@158 $generated@@154 $generated@@157) $generated@@206 $generated@@209) $generated@@207)))) $generated@@208))
 :pattern ( ($generated@@152 $generated@@153 $generated@@154 $generated@@5 ($generated@@155 $generated@@205 $generated@@206 $generated@@207 $generated@@208) $generated@@209 $generated@@210))
)))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (!  (=> (and (or ($generated@@72 $generated@@212 $generated@@214 $generated@@215) (and (< 1 $generated@@70) (and (and ($generated@@58 $generated@@47 $generated@@214 ($generated@@48 $generated@@212)) ($generated@@46 $generated@@47 $generated@@214 ($generated@@48 $generated@@212) $generated@@211)) (and ($generated@@58 $generated@@47 $generated@@215 ($generated@@48 $generated@@212)) ($generated@@46 $generated@@47 $generated@@215 ($generated@@48 $generated@@212) $generated@@211))))) ($generated@@49 $generated@@211)) ($generated@@46 $generated@@47 ($generated@@71 $generated@@212 $generated@@213 $generated@@214 $generated@@215) ($generated@@48 $generated@@212) $generated@@211))
 :pattern ( ($generated@@46 $generated@@47 ($generated@@71 $generated@@212 $generated@@213 $generated@@214 $generated@@215) ($generated@@48 $generated@@212) $generated@@211))
))))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@71 $generated@@216 ($generated@@21 $generated@@217) $generated@@218 $generated@@219) ($generated@@71 $generated@@216 $generated@@217 $generated@@218 $generated@@219))
 :pattern ( ($generated@@71 $generated@@216 ($generated@@21 $generated@@217) $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> ($generated@@66 $generated@@221 ($generated@@48 $generated@@220)) (and (= ($generated@@87 $generated@@47 ($generated@@86 $generated@@47 $generated@@221)) $generated@@221) ($generated@@58 $generated@@47 ($generated@@86 $generated@@47 $generated@@221) ($generated@@48 $generated@@220))))
 :pattern ( ($generated@@66 $generated@@221 ($generated@@48 $generated@@220)))
)))
(assert (forall (($generated@@222 T@U) ) (!  (=> ($generated@@108 $generated@@222) (= $generated@@222 ($generated@@22 ($generated@@34 $generated@@222))))
 :pattern ( ($generated@@34 $generated@@222))
 :pattern ( ($generated@@108 $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and ($generated@@49 $generated@@225) (and ($generated@@84 $generated@@223) ($generated@@46 $generated@@47 $generated@@223 ($generated@@48 $generated@@224) $generated@@225))) ($generated@@46 $generated@@47 ($generated@@74 $generated@@223) ($generated@@48 $generated@@224) $generated@@225))
 :pattern ( ($generated@@46 $generated@@47 ($generated@@74 $generated@@223) ($generated@@48 $generated@@224) $generated@@225))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@U) ) (!  (=> (and ($generated@@108 $generated@@227) (<= ($generated@@34 $generated@@227) ($generated@@34 $generated@@226))) (or (and (= $generated@@227 ($generated@@22 0)) (= ($generated@@33 $generated@@226 $generated@@227) $generated@@226)) (and (or (not (= $generated@@227 ($generated@@22 0))) (not true)) ($generated@@29 ($generated@@33 $generated@@226 $generated@@227) $generated@@226))))
 :pattern ( ($generated@@33 $generated@@226 $generated@@227))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> (and ($generated@@29 $generated@@230 $generated@@234) ($generated@@20 $generated@@228 $generated@@229 $generated@@234 ($generated@@21 $generated@@231) $generated@@232 $generated@@233)) ($generated@@20 $generated@@228 $generated@@229 $generated@@230 ($generated@@21 $generated@@231) $generated@@232 $generated@@233))
 :pattern ( ($generated@@20 $generated@@228 $generated@@229 $generated@@230 ($generated@@21 $generated@@231) $generated@@232 $generated@@233) ($generated@@20 $generated@@228 $generated@@229 $generated@@234 ($generated@@21 $generated@@231) $generated@@232 $generated@@233))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (! (= ($generated@@52 $generated@@235 $generated@@236 ($generated@@21 $generated@@237) $generated@@238 $generated@@239) ($generated@@52 $generated@@235 $generated@@236 $generated@@237 $generated@@238 $generated@@239))
 :pattern ( ($generated@@52 $generated@@235 $generated@@236 ($generated@@21 $generated@@237) $generated@@238 $generated@@239))
)))
(assert (forall (($generated@@240 Int) ) (! (= ($generated@@87 $generated@@6 ($generated@@10 ($generated@@60 $generated@@240))) ($generated@@62 $generated@@157 ($generated@@87 $generated@@6 ($generated@@10 $generated@@240))))
 :pattern ( ($generated@@87 $generated@@6 ($generated@@10 ($generated@@60 $generated@@240))))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@T) ) (! (= ($generated@@87 $generated@@242 ($generated@@62 $generated@@242 $generated@@241)) ($generated@@62 $generated@@157 ($generated@@87 $generated@@242 $generated@@241)))
 :pattern ( ($generated@@87 $generated@@242 ($generated@@62 $generated@@242 $generated@@241)))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (!  (=> (forall (($generated@@248 Int) ) (!  (=> (<= 0 $generated@@248) ($generated@@20 $generated@@243 $generated@@244 ($generated@@22 $generated@@248) ($generated@@21 $generated@@245) $generated@@246 $generated@@247))
 :pattern ( ($generated@@20 $generated@@243 $generated@@244 ($generated@@22 $generated@@248) ($generated@@21 $generated@@245) $generated@@246 $generated@@247))
)) ($generated@@52 $generated@@243 $generated@@244 ($generated@@21 $generated@@245) $generated@@246 $generated@@247))
 :pattern ( ($generated@@52 $generated@@243 $generated@@244 ($generated@@21 $generated@@245) $generated@@246 $generated@@247))
)))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ) (!  (=> ($generated@@49 $generated@@252) (= ($generated@@46 $generated@@47 ($generated@@65 $generated@@250 $generated@@251) ($generated@@48 $generated@@249) $generated@@252)  (and ($generated@@100 $generated@@250 $generated@@249 $generated@@252) ($generated@@46 $generated@@47 $generated@@251 ($generated@@48 $generated@@249) $generated@@252))))
 :pattern ( ($generated@@46 $generated@@47 ($generated@@65 $generated@@250 $generated@@251) ($generated@@48 $generated@@249) $generated@@252))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@253 () T@U)
(declare-fun $generated@@254 () T@U)
(declare-fun $generated@@255 () T@U)
(declare-fun $generated@@256 () T@U)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () Int)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 () T@U)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 (T@U) Bool)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 () T@U)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@267  (=> (= (ControlFlow 0 3) (- 0 2)) ($generated@@52 $generated@@253 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@255 $generated@@256) $generated@@257) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@256 $generated@@257))))))
(let (($generated@@268  (=> (and (and ($generated@@72 $generated@@253 $generated@@255 $generated@@256) ($generated@@72 $generated@@253 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 $generated@@256) $generated@@257)) (and ($generated@@72 $generated@@253 $generated@@256 $generated@@257) ($generated@@72 $generated@@253 $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@256 $generated@@257)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall (($generated@@269 Int) )  (=> (<= ($generated@@60 0) $generated@@269) ($generated@@20 $generated@@253 $generated@@253 ($generated@@22 $generated@@269) ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@255 $generated@@256) $generated@@257) ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 ($generated@@21 $generated@@254)) $generated@@256 $generated@@257)))))) (=> (and (forall (($generated@@270 Int) )  (=> (<= ($generated@@60 0) $generated@@270) ($generated@@20 $generated@@253 $generated@@253 ($generated@@22 $generated@@270) ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 $generated@@256) $generated@@257) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@256 $generated@@257))))) (= (ControlFlow 0 4) 3)) $generated@@267)))))
(let (($generated@@271  (=> (and (< $generated@@258 ($generated@@60 0)) (= (ControlFlow 0 8) 4)) $generated@@268)))
(let (($generated@@272  (=> (<= ($generated@@60 0) $generated@@258) (=> (and ($generated@@46 $generated@@47 $generated@@255 ($generated@@48 $generated@@253) $generated@@259) ($generated@@46 $generated@@47 $generated@@256 ($generated@@48 $generated@@253) $generated@@259)) (=> (and (and ($generated@@72 $generated@@253 $generated@@255 $generated@@256) (= $generated@@260 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 $generated@@256))) (and ($generated@@46 $generated@@47 $generated@@260 ($generated@@48 $generated@@253) $generated@@259) ($generated@@46 $generated@@47 $generated@@257 ($generated@@48 $generated@@253) $generated@@259))) (=> (and (and (and ($generated@@72 $generated@@253 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 $generated@@256) $generated@@257) ($generated@@46 $generated@@47 $generated@@255 ($generated@@48 $generated@@253) $generated@@259)) (and ($generated@@46 $generated@@47 $generated@@256 ($generated@@48 $generated@@253) $generated@@259) ($generated@@46 $generated@@47 $generated@@257 ($generated@@48 $generated@@253) $generated@@259))) (and (and ($generated@@72 $generated@@253 $generated@@256 $generated@@257) (= $generated@@261 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@256 $generated@@257))) (and ($generated@@46 $generated@@47 $generated@@261 ($generated@@48 $generated@@253) $generated@@259) ($generated@@72 $generated@@253 $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@256 $generated@@257))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= 0 $generated@@258)) (=> (= (ControlFlow 0 6) 4) $generated@@268))))))))
(let (($generated@@273  (=> (and (and ($generated@@49 $generated@@259) ($generated@@262 $generated@@259)) (and (= $generated@@263 $generated@@259) (forall (($generated@@274 Int) )  (=> (and (<= ($generated@@60 0) $generated@@274) ($generated@@9 ($generated@@62 $generated@@5 ($generated@@8 true)))) ($generated@@20 $generated@@253 $generated@@253 ($generated@@22 $generated@@274) ($generated@@21 ($generated@@21 $generated@@254)) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 $generated@@256) $generated@@257) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@255 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@256 $generated@@257))))))) (and (=> (= (ControlFlow 0 9) 6) $generated@@272) (=> (= (ControlFlow 0 9) 8) $generated@@271)))))
(let (($generated@@275 true))
(let (($generated@@276  (=> (and (and (and (= $generated@@264 ($generated@@155 $generated@@265 $generated@@266 $generated false)) ($generated@@117 $generated@@255)) (and ($generated@@117 $generated@@256) ($generated@@117 $generated@@257))) (and (and ($generated@@49 $generated@@263) ($generated@@262 $generated@@263)) (and (= $generated@@266 $generated@@263) (forall (($generated@@277 T@U) ($generated@@278 T@U) ($generated@@279 T@U) ) (! true
 :pattern ( ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@277 ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@278 $generated@@279)))
 :pattern ( ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) ($generated@@71 $generated@@253 ($generated@@21 $generated@@254) $generated@@277 $generated@@278) $generated@@279))
))))) (and (=> (= (ControlFlow 0 10) 1) $generated@@275) (=> (= (ControlFlow 0 10) 9) $generated@@273)))))
(let (($generated@@280  (=> (and ($generated@@49 $generated@@266) ($generated@@262 $generated@@266)) (=> (and (and (and (and ($generated@@58 $generated@@47 $generated@@255 ($generated@@48 $generated@@253)) ($generated@@46 $generated@@47 $generated@@255 ($generated@@48 $generated@@253) $generated@@266)) ($generated@@117 $generated@@255)) (and (and ($generated@@58 $generated@@47 $generated@@256 ($generated@@48 $generated@@253)) ($generated@@46 $generated@@47 $generated@@256 ($generated@@48 $generated@@253) $generated@@266)) ($generated@@117 $generated@@256))) (and (and (and ($generated@@58 $generated@@47 $generated@@257 ($generated@@48 $generated@@253)) ($generated@@46 $generated@@47 $generated@@257 ($generated@@48 $generated@@253) $generated@@266)) ($generated@@117 $generated@@257)) (and (= 3 $generated@@70) (= (ControlFlow 0 11) 10)))) $generated@@276))))
$generated@@280)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)