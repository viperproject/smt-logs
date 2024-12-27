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
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@U T@U) T@U)
(declare-fun $generated@@21 (T@U T@U) Bool)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@54 (T@U) Int)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 () T@T)
(declare-fun $generated@@63 () T@T)
(declare-fun $generated@@64 (T@T T@T) T@T)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@67 (T@T) T@T)
(declare-fun $generated@@68 (T@T) T@T)
(declare-fun $generated@@89 (Int) Int)
(declare-fun $generated@@91 (T@T T@U) T@U)
(declare-fun $generated@@94 (T@T T@U) T@U)
(declare-fun $generated@@97 (T@U T@U) Bool)
(declare-fun $generated@@101 (T@T T@U T@U) Bool)
(declare-fun $generated@@102 () T@T)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@104 (T@U T@U) Bool)
(declare-fun $generated@@108 (T@U T@U T@U) Bool)
(declare-fun $generated@@109 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@128 (T@U T@U) Bool)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@154 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@156 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (= ($generated@@19 $generated) $generated@@0))
(assert (forall (($generated@@22 T@U) ($generated@@23 T@U) ) (! ($generated@@21 ($generated@@20 $generated@@22 $generated@@23) $generated@@23)
 :pattern ( ($generated@@20 $generated@@22 $generated@@23))
)))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 T@U) ) (!  (=> ($generated@@21 $generated@@24 $generated@@26) ($generated@@21 ($generated@@20 $generated@@24 $generated@@25) $generated@@26))
 :pattern ( ($generated@@20 $generated@@24 $generated@@25) ($generated@@21 $generated@@24 $generated@@26))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> ($generated@@21 $generated@@28 $generated@@30) ($generated@@21 ($generated@@27 $generated@@28 $generated@@29) $generated@@30))
 :pattern ( ($generated@@27 $generated@@28 $generated@@29) ($generated@@21 $generated@@28 $generated@@30))
)))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (!  (=> ($generated@@21 $generated@@32 $generated@@33) ($generated@@21 ($generated@@27 $generated@@31 $generated@@32) $generated@@33))
 :pattern ( ($generated@@27 $generated@@31 $generated@@32) ($generated@@21 $generated@@32 $generated@@33))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@21 ($generated@@20 $generated@@34 $generated@@35) $generated@@36)  (or (= $generated@@36 $generated@@35) ($generated@@21 $generated@@34 $generated@@36)))
 :pattern ( ($generated@@21 ($generated@@20 $generated@@34 $generated@@35) $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (!  (=> ($generated@@21 $generated@@39 $generated@@40) (not ($generated@@21 ($generated@@37 $generated@@38 $generated@@39) $generated@@40)))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39) ($generated@@21 $generated@@39 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ) (!  (not ($generated@@21 $generated@@41 $generated@@42))
 :pattern ( ($generated@@21 $generated@@41 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@21 ($generated@@43 $generated@@44 $generated@@45) $generated@@46)  (and ($generated@@21 $generated@@44 $generated@@46) ($generated@@21 $generated@@45 $generated@@46)))
 :pattern ( ($generated@@21 ($generated@@43 $generated@@44 $generated@@45) $generated@@46))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@27 ($generated@@27 $generated@@47 $generated@@48) $generated@@48) ($generated@@27 $generated@@47 $generated@@48))
 :pattern ( ($generated@@27 ($generated@@27 $generated@@47 $generated@@48) $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@43 ($generated@@43 $generated@@49 $generated@@50) $generated@@50) ($generated@@43 $generated@@49 $generated@@50))
 :pattern ( ($generated@@43 ($generated@@43 $generated@@49 $generated@@50) $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@21 ($generated@@37 $generated@@51 $generated@@52) $generated@@53)  (and ($generated@@21 $generated@@51 $generated@@53) (not ($generated@@21 $generated@@52 $generated@@53))))
 :pattern ( ($generated@@21 ($generated@@37 $generated@@51 $generated@@52) $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ) (!  (and (= (= ($generated@@54 $generated@@55) 0) (= $generated@@55 $generated@@41)) (=> (or (not (= ($generated@@54 $generated@@55) 0)) (not true)) (exists (($generated@@56 T@U) ) (! ($generated@@21 $generated@@55 $generated@@56)
 :pattern ( ($generated@@21 $generated@@55 $generated@@56))
))))
 :pattern ( ($generated@@54 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (! (= (+ ($generated@@54 ($generated@@27 $generated@@57 $generated@@58)) ($generated@@54 ($generated@@43 $generated@@57 $generated@@58))) (+ ($generated@@54 $generated@@57) ($generated@@54 $generated@@58)))
 :pattern ( ($generated@@54 ($generated@@27 $generated@@57 $generated@@58)))
 :pattern ( ($generated@@54 ($generated@@43 $generated@@57 $generated@@58)))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@60 $generated@@69 $generated@@70 ($generated@@66 $generated@@69 $generated@@70 $generated@@72 $generated@@73 $generated@@71) $generated@@73) $generated@@71)
 :weight 0
)) (forall (($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (or (= $generated@@78 $generated@@79) (= ($generated@@60 $generated@@74 $generated@@75 ($generated@@66 $generated@@74 $generated@@75 $generated@@77 $generated@@78 $generated@@76) $generated@@79) ($generated@@60 $generated@@74 $generated@@75 $generated@@77 $generated@@79)))
 :weight 0
))) (= ($generated@@3 $generated@@61) 3)) (= ($generated@@3 $generated@@62) 4)) (= ($generated@@3 $generated@@63) 5)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ) (= ($generated@@3 ($generated@@64 $generated@@80 $generated@@81)) 6))) (forall (($generated@@82 T@T) ($generated@@83 T@T) ) (! (= ($generated@@67 ($generated@@64 $generated@@82 $generated@@83)) $generated@@82)
 :pattern ( ($generated@@64 $generated@@82 $generated@@83))
))) (forall (($generated@@84 T@T) ($generated@@85 T@T) ) (! (= ($generated@@68 ($generated@@64 $generated@@84 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@64 $generated@@84 $generated@@85))
))))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> ($generated@@59 $generated@@86 $generated@@87) (forall (($generated@@88 T@U) ) (!  (=> ($generated@@8 ($generated@@65 $generated@@4 ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@86 $generated@@88) $generated@@2))) ($generated@@8 ($generated@@65 $generated@@4 ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@87 $generated@@88) $generated@@2))))
 :pattern ( ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@87 $generated@@88) $generated@@2))
)))
 :pattern ( ($generated@@59 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@90 Int) ) (! (= ($generated@@89 $generated@@90) $generated@@90)
 :pattern ( ($generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@91 $generated@@93 $generated@@92) $generated@@92)
 :pattern ( ($generated@@91 $generated@@93 $generated@@92))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@94 $generated@@96 ($generated@@65 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@65 $generated@@96 $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@97 $generated@@98 $generated@@99) (forall (($generated@@100 T@U) ) (!  (or (not ($generated@@21 $generated@@98 $generated@@100)) (not ($generated@@21 $generated@@99 $generated@@100)))
 :pattern ( ($generated@@21 $generated@@98 $generated@@100))
 :pattern ( ($generated@@21 $generated@@99 $generated@@100))
)))
 :pattern ( ($generated@@97 $generated@@98 $generated@@99))
)))
(assert (= ($generated@@3 $generated@@102) 7))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@101 $generated@@102 $generated@@105 ($generated@@103 $generated@@106)) (forall (($generated@@107 T@U) ) (!  (=> ($generated@@21 $generated@@105 $generated@@107) ($generated@@104 $generated@@107 $generated@@106))
 :pattern ( ($generated@@21 $generated@@105 $generated@@107))
)))
 :pattern ( ($generated@@101 $generated@@102 $generated@@105 ($generated@@103 $generated@@106)))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@108 ($generated@@94 $generated@@113 $generated@@110) $generated@@111 $generated@@112) ($generated@@109 $generated@@113 $generated@@110 $generated@@111 $generated@@112))
 :pattern ( ($generated@@108 ($generated@@94 $generated@@113 $generated@@110) $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> ($generated@@59 $generated@@114 $generated@@115) (=> ($generated@@108 $generated@@116 $generated@@117 $generated@@114) ($generated@@108 $generated@@116 $generated@@117 $generated@@115)))
 :pattern ( ($generated@@59 $generated@@114 $generated@@115) ($generated@@108 $generated@@116 $generated@@117 $generated@@114))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@T) ) (!  (=> ($generated@@59 $generated@@118 $generated@@119) (=> ($generated@@109 $generated@@122 $generated@@120 $generated@@121 $generated@@118) ($generated@@109 $generated@@122 $generated@@120 $generated@@121 $generated@@119)))
 :pattern ( ($generated@@59 $generated@@118 $generated@@119) ($generated@@109 $generated@@122 $generated@@120 $generated@@121 $generated@@118))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@21 ($generated@@27 $generated@@123 $generated@@124) $generated@@125)  (or ($generated@@21 $generated@@123 $generated@@125) ($generated@@21 $generated@@124 $generated@@125)))
 :pattern ( ($generated@@21 ($generated@@27 $generated@@123 $generated@@124) $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> ($generated@@97 $generated@@126 $generated@@127) (and (= ($generated@@37 ($generated@@27 $generated@@126 $generated@@127) $generated@@126) $generated@@127) (= ($generated@@37 ($generated@@27 $generated@@126 $generated@@127) $generated@@127) $generated@@126)))
 :pattern ( ($generated@@27 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> ($generated@@128 $generated@@129 $generated@@130) (= $generated@@129 $generated@@130))
 :pattern ( ($generated@@128 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> (or (not (= $generated@@131 $generated@@133)) (not true)) (=> (and ($generated@@59 $generated@@131 $generated@@132) ($generated@@59 $generated@@132 $generated@@133)) ($generated@@59 $generated@@131 $generated@@133)))
 :pattern ( ($generated@@59 $generated@@131 $generated@@132) ($generated@@59 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@104 $generated@@134 $generated) (and (= ($generated@@94 $generated@@5 ($generated@@65 $generated@@5 $generated@@134)) $generated@@134) ($generated@@101 $generated@@5 ($generated@@65 $generated@@5 $generated@@134) $generated)))
 :pattern ( ($generated@@104 $generated@@134 $generated))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (!  (and (= (+ (+ ($generated@@54 ($generated@@37 $generated@@135 $generated@@136)) ($generated@@54 ($generated@@37 $generated@@136 $generated@@135))) ($generated@@54 ($generated@@43 $generated@@135 $generated@@136))) ($generated@@54 ($generated@@27 $generated@@135 $generated@@136))) (= ($generated@@54 ($generated@@37 $generated@@135 $generated@@136)) (- ($generated@@54 $generated@@135) ($generated@@54 ($generated@@43 $generated@@135 $generated@@136)))))
 :pattern ( ($generated@@54 ($generated@@37 $generated@@135 $generated@@136)))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@T) ) (! (= ($generated@@104 ($generated@@94 $generated@@139 $generated@@137) $generated@@138) ($generated@@101 $generated@@139 $generated@@137 $generated@@138))
 :pattern ( ($generated@@104 ($generated@@94 $generated@@139 $generated@@137) $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ) (! (<= 0 ($generated@@54 $generated@@140))
 :pattern ( ($generated@@54 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@109 $generated@@102 $generated@@141 ($generated@@103 $generated@@142) $generated@@143) (forall (($generated@@144 T@U) ) (!  (=> ($generated@@21 $generated@@141 $generated@@144) ($generated@@108 $generated@@144 $generated@@142 $generated@@143))
 :pattern ( ($generated@@21 $generated@@141 $generated@@144))
)))
 :pattern ( ($generated@@109 $generated@@102 $generated@@141 ($generated@@103 $generated@@142) $generated@@143))
)))
(assert (forall (($generated@@146 T@U) ) (! (= ($generated@@145 ($generated@@103 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@103 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@19 ($generated@@103 $generated@@147)) $generated@@1)
 :pattern ( ($generated@@103 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@65 $generated@@149 ($generated@@94 $generated@@149 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@94 $generated@@149 $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@27 $generated@@150 ($generated@@27 $generated@@150 $generated@@151)) ($generated@@27 $generated@@150 $generated@@151))
 :pattern ( ($generated@@27 $generated@@150 ($generated@@27 $generated@@150 $generated@@151)))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@43 $generated@@152 ($generated@@43 $generated@@152 $generated@@153)) ($generated@@43 $generated@@152 $generated@@153))
 :pattern ( ($generated@@43 $generated@@152 ($generated@@43 $generated@@152 $generated@@153)))
)))
(assert  (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@154 $generated@@157 $generated@@158 $generated@@159 ($generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@162 $generated@@163) $generated@@160)
 :weight 0
)) (and (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@169 $generated@@171) (= ($generated@@154 $generated@@164 $generated@@165 $generated@@166 ($generated@@156 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@154 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (or (= $generated@@179 $generated@@181) (= ($generated@@154 $generated@@173 $generated@@174 $generated@@175 ($generated@@156 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@180 $generated@@181) ($generated@@154 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@180 $generated@@181)))
 :weight 0
)))))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 Bool) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@8 ($generated@@154 $generated@@63 $generated@@61 $generated@@4 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))  (=> (and (or (not (= $generated@@186 $generated@@182)) (not true)) ($generated@@8 ($generated@@65 $generated@@4 ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@183 $generated@@186) $generated@@184)))) $generated@@185))
 :pattern ( ($generated@@154 $generated@@63 $generated@@61 $generated@@4 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> ($generated@@104 $generated@@188 ($generated@@103 $generated@@189)) (and (= ($generated@@94 $generated@@102 ($generated@@65 $generated@@102 $generated@@188)) $generated@@188) ($generated@@101 $generated@@102 ($generated@@65 $generated@@102 $generated@@188) ($generated@@103 $generated@@189))))
 :pattern ( ($generated@@104 $generated@@188 ($generated@@103 $generated@@189)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (!  (=> ($generated@@21 $generated@@190 $generated@@191) (= ($generated@@54 ($generated@@20 $generated@@190 $generated@@191)) ($generated@@54 $generated@@190)))
 :pattern ( ($generated@@54 ($generated@@20 $generated@@190 $generated@@191)))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@128 $generated@@192 $generated@@193) (forall (($generated@@194 T@U) ) (! (= ($generated@@21 $generated@@192 $generated@@194) ($generated@@21 $generated@@193 $generated@@194))
 :pattern ( ($generated@@21 $generated@@192 $generated@@194))
 :pattern ( ($generated@@21 $generated@@193 $generated@@194))
)))
 :pattern ( ($generated@@128 $generated@@192 $generated@@193))
)))
(assert (forall (($generated@@195 Int) ) (! (= ($generated@@94 $generated@@5 ($generated@@9 ($generated@@89 $generated@@195))) ($generated@@91 $generated@@62 ($generated@@94 $generated@@5 ($generated@@9 $generated@@195))))
 :pattern ( ($generated@@94 $generated@@5 ($generated@@9 ($generated@@89 $generated@@195))))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@T) ) (! (= ($generated@@94 $generated@@197 ($generated@@91 $generated@@197 $generated@@196)) ($generated@@91 $generated@@62 ($generated@@94 $generated@@197 $generated@@196)))
 :pattern ( ($generated@@94 $generated@@197 ($generated@@91 $generated@@197 $generated@@196)))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! ($generated@@109 $generated@@5 $generated@@199 $generated $generated@@198)
 :pattern ( ($generated@@109 $generated@@5 $generated@@199 $generated $generated@@198))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> (not ($generated@@21 $generated@@200 $generated@@201)) (= ($generated@@54 ($generated@@20 $generated@@200 $generated@@201)) (+ ($generated@@54 $generated@@200) 1)))
 :pattern ( ($generated@@54 ($generated@@20 $generated@@200 $generated@@201)))
)))
(assert (forall (($generated@@202 T@U) ) (! ($generated@@101 $generated@@5 $generated@@202 $generated)
 :pattern ( ($generated@@101 $generated@@5 $generated@@202 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () Int)
(declare-fun $generated@@207 () Bool)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () Int)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 (T@U) Bool)
(declare-fun $generated@@214 (T@U) Bool)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () Int)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@217 true))
(let (($generated@@218  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (and ($generated@@101 $generated@@5 ($generated@@9 ($generated@@89 0)) $generated) ($generated@@21 $generated@@203 ($generated@@94 $generated@@5 ($generated@@9 ($generated@@89 0))))) (exists (($generated@@219 T@U) ) ($generated@@21 $generated@@203 ($generated@@94 $generated@@5 $generated@@219))))) (=> (or (and ($generated@@101 $generated@@5 ($generated@@9 ($generated@@89 0)) $generated) ($generated@@21 $generated@@203 ($generated@@94 $generated@@5 ($generated@@9 ($generated@@89 0))))) (exists (($generated@@220 Int) ) ($generated@@21 $generated@@203 ($generated@@94 $generated@@5 ($generated@@9 $generated@@220))))) (=> (and ($generated@@21 $generated@@203 ($generated@@94 $generated@@5 ($generated@@9 $generated@@204))) (= $generated@@205 ($generated@@37 $generated@@203 ($generated@@20 $generated@@41 ($generated@@94 $generated@@5 ($generated@@9 $generated@@204)))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 $generated@@206) (= ($generated@@54 $generated@@205) $generated@@206))) (=> (or (<= 0 $generated@@206) (= ($generated@@54 $generated@@205) $generated@@206)) (=> (= (ControlFlow 0 5) (- 0 4)) (< ($generated@@54 $generated@@205) $generated@@206)))))))))
(let (($generated@@221  (=> (and (not ($generated@@128 $generated@@203 $generated@@41)) (= $generated@@206 ($generated@@54 $generated@@203))) (and (=> (= (ControlFlow 0 9) 5) $generated@@218) (=> (= (ControlFlow 0 9) 8) $generated@@217)))))
(let (($generated@@222 true))
(let (($generated@@223  (=> $generated@@207 (and (=> (= (ControlFlow 0 10) 3) $generated@@222) (=> (= (ControlFlow 0 10) 9) $generated@@221)))))
(let (($generated@@224 true))
(let (($generated@@225  (and (=> (= (ControlFlow 0 11) 2) $generated@@224) (=> (= (ControlFlow 0 11) 10) $generated@@223))))
(let (($generated@@226 true))
(let (($generated@@227  (=> (and (and (and ($generated@@101 $generated@@102 $generated@@203 ($generated@@103 $generated)) ($generated@@109 $generated@@102 $generated@@203 ($generated@@103 $generated) $generated@@208)) (not false)) (and (and (forall (($generated@@228 T@U) ) (!  (=> (and (or (not (= $generated@@228 $generated@@209)) (not true)) ($generated@@8 ($generated@@65 $generated@@4 ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@228) $generated@@2)))) (= ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@228) ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@228)))
 :pattern ( ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@228))
)) ($generated@@59 $generated@@208 $generated@@208)) (and (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (!  (=> (and (or (not (= $generated@@229 $generated@@209)) (not true)) ($generated@@8 ($generated@@65 $generated@@4 ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@229) $generated@@2)))) (or (= ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@229) $generated@@230) ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@229) $generated@@230)) ($generated@@8 ($generated@@154 $generated@@63 $generated@@61 $generated@@4 $generated@@210 $generated@@229 $generated@@230))))
 :pattern ( ($generated@@60 $generated@@61 $generated@@62 ($generated@@60 $generated@@63 ($generated@@64 $generated@@61 $generated@@62) $generated@@208 $generated@@229) $generated@@230))
)) (<= ($generated@@54 $generated@@203) $generated@@211)))) (and (=> (= (ControlFlow 0 12) 1) $generated@@226) (=> (= (ControlFlow 0 12) 11) $generated@@225)))))
(let (($generated@@231  (=> (= $generated@@210 ($generated@@155 $generated@@209 $generated@@208 $generated@@2 false)) (=> (and (= $generated@@211 ($generated@@54 $generated@@212)) (= (ControlFlow 0 13) 12)) $generated@@227))))
(let (($generated@@232  (=> (and (and ($generated@@213 $generated@@208) ($generated@@214 $generated@@208)) (and ($generated@@101 $generated@@102 $generated@@212 ($generated@@103 $generated)) ($generated@@109 $generated@@102 $generated@@212 ($generated@@103 $generated) $generated@@208))) (=> (and (and (and ($generated@@101 $generated@@102 $generated@@215 ($generated@@103 $generated)) ($generated@@109 $generated@@102 $generated@@215 ($generated@@103 $generated) $generated@@208)) true) (and (= 0 $generated@@216) (= (ControlFlow 0 14) 13))) $generated@@231))))
$generated@@232))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)