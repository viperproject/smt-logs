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
(declare-fun $generated@@26 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U T@U T@U) Bool)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@32 (T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T) T@T)
(declare-fun $generated@@41 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@43 (T@T) T@T)
(declare-fun $generated@@65 () T@U)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@76 () T@U)
(declare-fun $generated@@78 (Int) Int)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@85 () T@U)
(declare-fun $generated@@86 (T@T T@U T@U) Bool)
(declare-fun $generated@@87 (T@U T@U) Bool)
(declare-fun $generated@@92 (T@U T@U T@U) Bool)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@104 () T@U)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@107 (T@U T@U Int) Int)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@112 () Int)
(declare-fun $generated@@113 (T@U Int) Bool)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@130 (T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@139 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@140 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@175 (T@U T@U T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@27) 3) (= ($generated@@10 $generated@@34) 4)) (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@37 $generated@@44 $generated@@45 ($generated@@41 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@48) $generated@@46)
 :weight 0
))) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (!  (or (= $generated@@53 $generated@@54) (= ($generated@@37 $generated@@49 $generated@@50 ($generated@@41 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@54) ($generated@@37 $generated@@49 $generated@@50 $generated@@52 $generated@@54)))
 :weight 0
))) (= ($generated@@10 $generated@@38) 5)) (= ($generated@@10 $generated@@39) 6)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (= ($generated@@10 ($generated@@40 $generated@@55 $generated@@56)) 7))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@42 ($generated@@40 $generated@@57 $generated@@58)) $generated@@57)
 :pattern ( ($generated@@40 $generated@@57 $generated@@58))
))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@43 ($generated@@40 $generated@@59 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@40 $generated@@59 $generated@@60))
))))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> ($generated@@29 $generated@@63) (= ($generated@@26 $generated@@27 $generated@@61 ($generated@@28 $generated@@62) $generated@@63)  (=> ($generated@@30 $generated@@62 $generated@@63 $generated@@61) (forall (($generated@@64 T@U) ) (!  (=> (and (or (not (= $generated@@64 $generated@@35)) (not true)) ($generated@@31 ($generated@@32 $generated@@62 $generated@@63 $generated@@61) ($generated@@33 $generated@@34 $generated@@64))) ($generated@@15 ($generated@@36 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@34 ($generated@@40 $generated@@38 $generated@@39) $generated@@63 $generated@@64) $generated))))
 :pattern ( ($generated@@31 ($generated@@32 $generated@@62 $generated@@63 $generated@@61) ($generated@@33 $generated@@34 $generated@@64)))
)))))
 :pattern ( ($generated@@26 $generated@@27 $generated@@61 ($generated@@28 $generated@@62) $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (! ($generated@@26 $generated@@12 $generated@@66 $generated@@65 $generated@@67)
 :pattern ( ($generated@@26 $generated@@12 $generated@@66 $generated@@65 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@70 ($generated@@68 $generated@@69) $generated@@71) ($generated@@26 $generated@@27 $generated@@70 ($generated@@28 $generated@@69) $generated@@71))
 :pattern ( ($generated@@26 $generated@@27 $generated@@70 ($generated@@68 $generated@@69) $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@74 ($generated@@72 $generated@@73) $generated@@75) ($generated@@26 $generated@@27 $generated@@74 ($generated@@68 $generated@@73) $generated@@75))
 :pattern ( ($generated@@26 $generated@@27 $generated@@74 ($generated@@72 $generated@@73) $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ) (!  (not ($generated@@31 $generated@@76 $generated@@77))
 :pattern ( ($generated@@31 $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@79 Int) ) (! (= ($generated@@78 $generated@@79) $generated@@79)
 :pattern ( ($generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@33 $generated@@84 ($generated@@36 $generated@@84 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@36 $generated@@84 $generated@@83))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (=> (and (and ($generated@@29 $generated@@89) ($generated@@86 $generated@@27 $generated@@90 ($generated@@28 $generated@@88))) ($generated@@87 ($generated@@32 $generated@@88 $generated@@85 $generated@@90) $generated@@76)) (= ($generated@@30 $generated@@88 $generated@@85 $generated@@90) ($generated@@30 $generated@@88 $generated@@89 $generated@@90)))
 :pattern ( ($generated@@30 $generated@@88 $generated@@85 $generated@@90) ($generated@@29 $generated@@89))
 :pattern ( ($generated@@30 $generated@@88 $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@86 $generated@@12 $generated@@91 $generated@@65) (<= ($generated@@78 0) ($generated@@17 $generated@@91)))
 :pattern ( ($generated@@86 $generated@@12 $generated@@91 $generated@@65))
)))
(assert ($generated@@29 $generated@@85))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@92 ($generated@@33 $generated@@96 $generated@@93) $generated@@94 $generated@@95) ($generated@@26 $generated@@96 $generated@@93 $generated@@94 $generated@@95))
 :pattern ( ($generated@@92 ($generated@@33 $generated@@96 $generated@@93) $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@99 T@U) ) (!  (and (= ($generated@@97 ($generated@@28 $generated@@99)) $generated@@1) (= ($generated@@98 ($generated@@28 $generated@@99)) $generated@@6))
 :pattern ( ($generated@@28 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ) (!  (and (= ($generated@@97 ($generated@@68 $generated@@100)) $generated@@2) (= ($generated@@98 ($generated@@68 $generated@@100)) $generated@@7))
 :pattern ( ($generated@@68 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ) (!  (and (= ($generated@@97 ($generated@@72 $generated@@101)) $generated@@3) (= ($generated@@98 ($generated@@72 $generated@@101)) $generated@@8))
 :pattern ( ($generated@@72 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@102 $generated@@103 $generated@@65) (and (= ($generated@@33 $generated@@12 ($generated@@36 $generated@@12 $generated@@103)) $generated@@103) ($generated@@86 $generated@@12 ($generated@@36 $generated@@12 $generated@@103) $generated@@65)))
 :pattern ( ($generated@@102 $generated@@103 $generated@@65))
)))
(assert (= ($generated@@10 $generated@@105) 8))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@102 $generated@@106 $generated@@104) (and (= ($generated@@33 $generated@@105 ($generated@@36 $generated@@105 $generated@@106)) $generated@@106) ($generated@@86 $generated@@105 ($generated@@36 $generated@@105 $generated@@106) $generated@@104)))
 :pattern ( ($generated@@102 $generated@@106 $generated@@104))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 Int) ) (! (= ($generated@@107 ($generated@@108 $generated@@109) $generated@@110 $generated@@111) ($generated@@107 $generated@@109 $generated@@110 $generated@@111))
 :pattern ( ($generated@@107 ($generated@@108 $generated@@109) $generated@@110 $generated@@111))
)))
(assert  (=> (<= 0 $generated@@112) (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 Int) ) (!  (=> (or ($generated@@113 ($generated@@80 $generated@@27 $generated@@115) ($generated@@78 $generated@@116)) (and (< 0 $generated@@112) (and ($generated@@86 $generated@@27 $generated@@115 ($generated@@72 $generated@@104)) (<= ($generated@@78 0) $generated@@116)))) (and (=> (or (not (= ($generated@@78 $generated@@116) ($generated@@78 0))) (not true)) ($generated@@113 ($generated@@80 $generated@@27 $generated@@115) ($generated@@78 (- $generated@@116 1)))) (= ($generated@@107 ($generated@@108 $generated@@114) ($generated@@80 $generated@@27 $generated@@115) ($generated@@78 $generated@@116)) (ite (= ($generated@@78 $generated@@116) ($generated@@78 0)) $generated@@116 ($generated@@107 ($generated@@108 $generated@@114) ($generated@@80 $generated@@27 $generated@@115) ($generated@@78 (- $generated@@116 1)))))))
 :weight 3
 :pattern ( ($generated@@107 ($generated@@108 $generated@@114) ($generated@@80 $generated@@27 $generated@@115) ($generated@@78 $generated@@116)))
))))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (=> (and ($generated@@29 $generated@@118) ($generated@@86 $generated@@27 $generated@@119 ($generated@@28 $generated@@117))) (= ($generated@@87 ($generated@@32 $generated@@117 $generated@@85 $generated@@119) $generated@@76) ($generated@@87 ($generated@@32 $generated@@117 $generated@@118 $generated@@119) $generated@@76)))
 :pattern ( ($generated@@32 $generated@@117 $generated@@85 $generated@@119) ($generated@@29 $generated@@118))
 :pattern ( ($generated@@32 $generated@@117 $generated@@118 $generated@@119))
)))
(assert  (=> (<= 0 $generated@@112) (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 Int) ) (!  (=> (or ($generated@@113 $generated@@121 $generated@@122) (and (< 0 $generated@@112) (and ($generated@@86 $generated@@27 $generated@@121 ($generated@@72 $generated@@104)) (<= ($generated@@78 0) $generated@@122)))) (<= ($generated@@78 0) ($generated@@107 $generated@@120 $generated@@121 $generated@@122)))
 :pattern ( ($generated@@107 $generated@@120 $generated@@121 $generated@@122))
))))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> ($generated@@87 $generated@@123 $generated@@124) (= $generated@@123 $generated@@124))
 :pattern ( ($generated@@87 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@T) ) (! (= ($generated@@102 ($generated@@33 $generated@@127 $generated@@125) $generated@@126) ($generated@@86 $generated@@127 $generated@@125 $generated@@126))
 :pattern ( ($generated@@102 ($generated@@33 $generated@@127 $generated@@125) $generated@@126))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@128 ($generated@@28 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@28 $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ) (! (= ($generated@@130 ($generated@@68 $generated@@131)) $generated@@131)
 :pattern ( ($generated@@68 $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ) (! (= ($generated@@132 ($generated@@72 $generated@@133)) $generated@@133)
 :pattern ( ($generated@@72 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@T) ) (! (= ($generated@@36 $generated@@135 ($generated@@33 $generated@@135 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@33 $generated@@135 $generated@@134))
)))
(assert  (=> (<= 0 $generated@@112) (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 Int) ) (!  (=> (or ($generated@@113 $generated@@137 $generated@@138) (and (< 0 $generated@@112) (and ($generated@@86 $generated@@27 $generated@@137 ($generated@@72 $generated@@104)) (<= ($generated@@78 0) $generated@@138)))) (and (=> (or (not (= $generated@@138 ($generated@@78 0))) (not true)) ($generated@@113 $generated@@137 (- $generated@@138 1))) (= ($generated@@107 ($generated@@108 $generated@@136) $generated@@137 $generated@@138) (ite (= $generated@@138 ($generated@@78 0)) $generated@@138 ($generated@@107 $generated@@136 $generated@@137 (- $generated@@138 1))))))
 :pattern ( ($generated@@107 ($generated@@108 $generated@@136) $generated@@137 $generated@@138))
))))
(assert  (and (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@139 $generated@@142 $generated@@143 $generated@@144 ($generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@147 $generated@@148) $generated@@145)
 :weight 0
)) (and (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@154 $generated@@156) (= ($generated@@139 $generated@@149 $generated@@150 $generated@@151 ($generated@@141 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@139 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)) (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@139 $generated@@158 $generated@@159 $generated@@160 ($generated@@141 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@164 $generated@@161) $generated@@165 $generated@@166) ($generated@@139 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@165 $generated@@166)))
 :weight 0
)))))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 Bool) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@15 ($generated@@139 $generated@@34 $generated@@38 $generated@@11 ($generated@@140 $generated@@167 $generated@@168 $generated@@169 $generated@@170) $generated@@171 $generated@@172))  (=> (and (or (not (= $generated@@171 $generated@@167)) (not true)) ($generated@@15 ($generated@@36 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@34 ($generated@@40 $generated@@38 $generated@@39) $generated@@168 $generated@@171) $generated@@169)))) $generated@@170))
 :pattern ( ($generated@@139 $generated@@34 $generated@@38 $generated@@11 ($generated@@140 $generated@@167 $generated@@168 $generated@@169 $generated@@170) $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@86 $generated@@27 $generated@@174 ($generated@@72 $generated@@173))  (and ($generated@@86 $generated@@27 $generated@@174 ($generated@@68 $generated@@173)) ($generated@@30 $generated@@173 $generated@@85 $generated@@174)))
 :pattern ( ($generated@@86 $generated@@27 $generated@@174 ($generated@@72 $generated@@173)))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@86 $generated@@27 $generated@@176 ($generated@@28 $generated@@177)) (forall (($generated@@178 T@U) ) (!  (=> (and ($generated@@29 $generated@@178) ($generated@@30 $generated@@177 $generated@@178 $generated@@176)) ($generated@@102 ($generated@@175 $generated@@177 $generated@@178 $generated@@176) $generated@@177))
 :pattern ( ($generated@@175 $generated@@177 $generated@@178 $generated@@176))
)))
 :pattern ( ($generated@@86 $generated@@27 $generated@@176 ($generated@@28 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@102 $generated@@180 ($generated@@28 $generated@@179)) (and (= ($generated@@33 $generated@@27 ($generated@@36 $generated@@27 $generated@@180)) $generated@@180) ($generated@@86 $generated@@27 ($generated@@36 $generated@@27 $generated@@180) ($generated@@28 $generated@@179))))
 :pattern ( ($generated@@102 $generated@@180 ($generated@@28 $generated@@179)))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@102 $generated@@182 ($generated@@68 $generated@@181)) (and (= ($generated@@33 $generated@@27 ($generated@@36 $generated@@27 $generated@@182)) $generated@@182) ($generated@@86 $generated@@27 ($generated@@36 $generated@@27 $generated@@182) ($generated@@68 $generated@@181))))
 :pattern ( ($generated@@102 $generated@@182 ($generated@@68 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> ($generated@@102 $generated@@184 ($generated@@72 $generated@@183)) (and (= ($generated@@33 $generated@@27 ($generated@@36 $generated@@27 $generated@@184)) $generated@@184) ($generated@@86 $generated@@27 ($generated@@36 $generated@@27 $generated@@184) ($generated@@72 $generated@@183))))
 :pattern ( ($generated@@102 $generated@@184 ($generated@@72 $generated@@183)))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (and ($generated@@29 $generated@@186) ($generated@@86 $generated@@105 $generated@@185 $generated@@104)) ($generated@@26 $generated@@105 $generated@@185 $generated@@104 $generated@@186))
 :pattern ( ($generated@@26 $generated@@105 $generated@@185 $generated@@104 $generated@@186))
)))
(assert (= ($generated@@97 $generated@@65) $generated@@0))
(assert (= ($generated@@98 $generated@@65) $generated@@5))
(assert (= ($generated@@97 $generated@@104) $generated@@4))
(assert (= ($generated@@98 $generated@@104) $generated@@9))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> (and ($generated@@29 $generated@@189) ($generated@@26 $generated@@27 $generated@@187 ($generated@@28 $generated@@188) $generated@@189)) (=> ($generated@@30 $generated@@188 $generated@@189 $generated@@187) ($generated@@92 ($generated@@175 $generated@@188 $generated@@189 $generated@@187) $generated@@188 $generated@@189)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@187 ($generated@@28 $generated@@188) $generated@@189))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@87 $generated@@190 $generated@@191) (forall (($generated@@192 T@U) ) (! (= ($generated@@31 $generated@@190 $generated@@192) ($generated@@31 $generated@@191 $generated@@192))
 :pattern ( ($generated@@31 $generated@@190 $generated@@192))
 :pattern ( ($generated@@31 $generated@@191 $generated@@192))
)))
 :pattern ( ($generated@@87 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> (and ($generated@@86 $generated@@27 $generated@@193 ($generated@@28 $generated@@194)) (forall (($generated@@196 T@U) ) (!  (=> ($generated@@102 $generated@@196 $generated@@194) ($generated@@102 $generated@@196 $generated@@195))
 :pattern ( ($generated@@102 $generated@@196 $generated@@194))
 :pattern ( ($generated@@102 $generated@@196 $generated@@195))
))) ($generated@@86 $generated@@27 $generated@@193 ($generated@@28 $generated@@195)))
 :pattern ( ($generated@@86 $generated@@27 $generated@@193 ($generated@@28 $generated@@194)) ($generated@@86 $generated@@27 $generated@@193 ($generated@@28 $generated@@195)))
)))
(assert (forall (($generated@@197 Int) ) (! (= ($generated@@33 $generated@@12 ($generated@@16 ($generated@@78 $generated@@197))) ($generated@@80 $generated@@39 ($generated@@33 $generated@@12 ($generated@@16 $generated@@197))))
 :pattern ( ($generated@@33 $generated@@12 ($generated@@16 ($generated@@78 $generated@@197))))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@T) ) (! (= ($generated@@33 $generated@@199 ($generated@@80 $generated@@199 $generated@@198)) ($generated@@80 $generated@@39 ($generated@@33 $generated@@199 $generated@@198)))
 :pattern ( ($generated@@33 $generated@@199 ($generated@@80 $generated@@199 $generated@@198)))
)))
(assert  (=> (<= 0 $generated@@112) (forall (($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 Int) ) (!  (=> (or ($generated@@113 $generated@@201 ($generated@@78 $generated@@202)) (and (< 0 $generated@@112) (and ($generated@@86 $generated@@27 $generated@@201 ($generated@@72 $generated@@104)) (<= ($generated@@78 0) $generated@@202)))) (and (=> (or (not (= ($generated@@78 $generated@@202) ($generated@@78 0))) (not true)) ($generated@@113 $generated@@201 ($generated@@78 (- $generated@@202 1)))) (= ($generated@@107 ($generated@@108 $generated@@200) $generated@@201 ($generated@@78 $generated@@202)) (ite (= ($generated@@78 $generated@@202) ($generated@@78 0)) $generated@@202 ($generated@@107 ($generated@@108 $generated@@200) $generated@@201 ($generated@@78 (- $generated@@202 1)))))))
 :weight 3
 :pattern ( ($generated@@107 ($generated@@108 $generated@@200) $generated@@201 ($generated@@78 $generated@@202)))
))))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@86 $generated@@27 $generated@@204 ($generated@@68 $generated@@203))  (and ($generated@@86 $generated@@27 $generated@@204 ($generated@@28 $generated@@203)) ($generated@@87 ($generated@@32 $generated@@203 $generated@@85 $generated@@204) $generated@@76)))
 :pattern ( ($generated@@86 $generated@@27 $generated@@204 ($generated@@68 $generated@@203)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@205 () Int)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () Int)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@211  (=> (and (or (not (= $generated@@205 ($generated@@78 0))) (not true)) ($generated@@26 $generated@@27 $generated@@206 ($generated@@72 $generated@@104) $generated@@207)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($generated@@86 $generated@@12 ($generated@@16 (- $generated@@205 1)) $generated@@65)) (=> ($generated@@86 $generated@@12 ($generated@@16 (- $generated@@205 1)) $generated@@65) (=> (and (= $generated@@208 (- $generated@@205 1)) ($generated@@26 $generated@@12 ($generated@@16 $generated@@208) $generated@@65 $generated@@207)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 $generated@@205) (= $generated@@208 $generated@@205))) (=> (or (<= 0 $generated@@205) (= $generated@@208 $generated@@205)) (=> (= (ControlFlow 0 4) (- 0 3)) (< $generated@@208 $generated@@205))))))))))
(let (($generated@@212 true))
(let (($generated@@213 true))
(let (($generated@@214  (=> (= $generated@@209 ($generated@@140 $generated@@35 $generated@@207 $generated false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@213) (=> (= (ControlFlow 0 7) 2) $generated@@212)) (=> (= (ControlFlow 0 7) 4) $generated@@211)))))
(let (($generated@@215  (=> (and ($generated@@29 $generated@@207) ($generated@@210 $generated@@207)) (=> (and (and ($generated@@86 $generated@@27 $generated@@206 ($generated@@72 $generated@@104)) (<= ($generated@@78 0) $generated@@205)) (and (= 0 $generated@@112) (= (ControlFlow 0 8) 7))) $generated@@214))))
$generated@@215))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)