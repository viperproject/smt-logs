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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 (T@T T@T) T@T)
(declare-fun $generated@@40 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@41 (T@T) T@T)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@66 (Int) Int)
(declare-fun $generated@@68 (T@T T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U T@U) T@U)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U T@U) Bool)
(declare-fun $generated@@78 (T@U T@U) Bool)
(declare-fun $generated@@79 (T@U Int) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@88 (T@U T@U T@U) Bool)
(declare-fun $generated@@102 (T@U T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@130 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@131 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@164 (T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
(declare-fun $generated@@170 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (= ($generated@@23 $generated@@24) 0))
(assert (= ($generated@@6 $generated@@26) 3))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@30 $generated@@27)  (or (= $generated@@30 $generated@@28) (= ($generated@@29 $generated@@30) $generated@@27)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@30 $generated@@27))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34) ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@43 T@T) ($generated@@44 T@T) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@36 $generated@@43 $generated@@44 ($generated@@40 $generated@@43 $generated@@44 $generated@@46 $generated@@47 $generated@@45) $generated@@47) $generated@@45)
 :weight 0
)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (or (= $generated@@52 $generated@@53) (= ($generated@@36 $generated@@48 $generated@@49 ($generated@@40 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@53) ($generated@@36 $generated@@48 $generated@@49 $generated@@51 $generated@@53)))
 :weight 0
))) (= ($generated@@6 $generated@@37) 4)) (= ($generated@@6 $generated@@38) 5)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ) (= ($generated@@6 ($generated@@39 $generated@@54 $generated@@55)) 6))) (forall (($generated@@56 T@T) ($generated@@57 T@T) ) (! (= ($generated@@41 ($generated@@39 $generated@@56 $generated@@57)) $generated@@56)
 :pattern ( ($generated@@39 $generated@@56 $generated@@57))
))) (forall (($generated@@58 T@T) ($generated@@59 T@T) ) (! (= ($generated@@42 ($generated@@39 $generated@@58 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@39 $generated@@58 $generated@@59))
))))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@60 $generated@@27 $generated@@61)  (or (= $generated@@60 $generated@@28) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@61 $generated@@60) $generated@@2)))))
 :pattern ( ($generated@@31 $generated@@26 $generated@@60 $generated@@27 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> ($generated@@62 $generated@@63 $generated@@64) (forall (($generated@@65 T@U) ) (!  (=> ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@63 $generated@@65) $generated@@2))) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@64 $generated@@65) $generated@@2))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@64 $generated@@65) $generated@@2))
)))
 :pattern ( ($generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@67 Int) ) (! (= ($generated@@66 $generated@@67) $generated@@67)
 :pattern ( ($generated@@66 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@68 $generated@@70 $generated@@69) $generated@@69)
 :pattern ( ($generated@@68 $generated@@70 $generated@@69))
)))
(assert (= ($generated@@6 $generated@@71) 7))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (and ($generated@@25 $generated@@71 $generated@@75 ($generated@@73 $generated@@77)) ($generated@@74 $generated@@76 $generated@@77)) ($generated@@25 $generated@@71 ($generated@@72 $generated@@75 $generated@@76) ($generated@@73 $generated@@77)))
 :pattern ( ($generated@@25 $generated@@71 ($generated@@72 $generated@@75 $generated@@76) ($generated@@73 $generated@@77)))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@78 $generated@@80 $generated@@81)  (and (= ($generated@@23 $generated@@80) ($generated@@23 $generated@@81)) (forall (($generated@@82 Int) ) (!  (=> (and (<= 0 $generated@@82) (< $generated@@82 ($generated@@23 $generated@@80))) (= ($generated@@79 $generated@@80 $generated@@82) ($generated@@79 $generated@@81 $generated@@82)))
 :pattern ( ($generated@@79 $generated@@80 $generated@@82))
 :pattern ( ($generated@@79 $generated@@81 $generated@@82))
))))
 :pattern ( ($generated@@78 $generated@@80 $generated@@81))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 ($generated@@35 $generated@@85 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@35 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@23 ($generated@@72 $generated@@86 $generated@@87)) (+ 1 ($generated@@23 $generated@@86)))
 :pattern ( ($generated@@72 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@88 ($generated@@83 $generated@@92 $generated@@89) $generated@@90 $generated@@91) ($generated@@31 $generated@@92 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@88 ($generated@@83 $generated@@92 $generated@@89) $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> ($generated@@62 $generated@@93 $generated@@94) (=> ($generated@@88 $generated@@95 $generated@@96 $generated@@93) ($generated@@88 $generated@@95 $generated@@96 $generated@@94)))
 :pattern ( ($generated@@62 $generated@@93 $generated@@94) ($generated@@88 $generated@@95 $generated@@96 $generated@@93))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (!  (=> ($generated@@62 $generated@@97 $generated@@98) (=> ($generated@@31 $generated@@101 $generated@@99 $generated@@100 $generated@@97) ($generated@@31 $generated@@101 $generated@@99 $generated@@100 $generated@@98)))
 :pattern ( ($generated@@62 $generated@@97 $generated@@98) ($generated@@31 $generated@@101 $generated@@99 $generated@@100 $generated@@97))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@23 ($generated@@102 $generated@@103 $generated@@104)) (+ ($generated@@23 $generated@@103) ($generated@@23 $generated@@104)))
 :pattern ( ($generated@@23 ($generated@@102 $generated@@103 $generated@@104)))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@74 $generated@@105 $generated@@27) (and (= ($generated@@83 $generated@@26 ($generated@@35 $generated@@26 $generated@@105)) $generated@@105) ($generated@@25 $generated@@26 ($generated@@35 $generated@@26 $generated@@105) $generated@@27)))
 :pattern ( ($generated@@74 $generated@@105 $generated@@27))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@74 $generated@@106 $generated@@32) (and (= ($generated@@83 $generated@@26 ($generated@@35 $generated@@26 $generated@@106)) $generated@@106) ($generated@@25 $generated@@26 ($generated@@35 $generated@@26 $generated@@106) $generated@@32)))
 :pattern ( ($generated@@74 $generated@@106 $generated@@32))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@107 $generated@@32)  (and ($generated@@25 $generated@@26 $generated@@107 $generated@@27) (or (not (= $generated@@107 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@107 $generated@@32))
 :pattern ( ($generated@@25 $generated@@26 $generated@@107 $generated@@27))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 Int) ($generated@@110 T@U) ) (!  (and (=> (= $generated@@109 ($generated@@23 $generated@@108)) (= ($generated@@79 ($generated@@72 $generated@@108 $generated@@110) $generated@@109) $generated@@110)) (=> (or (not (= $generated@@109 ($generated@@23 $generated@@108))) (not true)) (= ($generated@@79 ($generated@@72 $generated@@108 $generated@@110) $generated@@109) ($generated@@79 $generated@@108 $generated@@109))))
 :pattern ( ($generated@@79 ($generated@@72 $generated@@108 $generated@@110) $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (!  (=> ($generated@@78 $generated@@111 $generated@@112) (= $generated@@111 $generated@@112))
 :pattern ( ($generated@@78 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (or (not (= $generated@@113 $generated@@115)) (not true)) (=> (and ($generated@@62 $generated@@113 $generated@@114) ($generated@@62 $generated@@114 $generated@@115)) ($generated@@62 $generated@@113 $generated@@115)))
 :pattern ( ($generated@@62 $generated@@113 $generated@@114) ($generated@@62 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ) (!  (=> ($generated@@74 $generated@@116 $generated) (and (= ($generated@@83 $generated@@8 ($generated@@35 $generated@@8 $generated@@116)) $generated@@116) ($generated@@25 $generated@@8 ($generated@@35 $generated@@8 $generated@@116) $generated)))
 :pattern ( ($generated@@74 $generated@@116 $generated))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@74 ($generated@@83 $generated@@119 $generated@@117) $generated@@118) ($generated@@25 $generated@@119 $generated@@117 $generated@@118))
 :pattern ( ($generated@@74 ($generated@@83 $generated@@119 $generated@@117) $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ) (! (<= 0 ($generated@@23 $generated@@120))
 :pattern ( ($generated@@23 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@31 $generated@@71 $generated@@121 ($generated@@73 $generated@@122) $generated@@123) (forall (($generated@@124 Int) ) (!  (=> (and (<= 0 $generated@@124) (< $generated@@124 ($generated@@23 $generated@@121))) ($generated@@88 ($generated@@79 $generated@@121 $generated@@124) $generated@@122 $generated@@123))
 :pattern ( ($generated@@79 $generated@@121 $generated@@124))
)))
 :pattern ( ($generated@@31 $generated@@71 $generated@@121 ($generated@@73 $generated@@122) $generated@@123))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@125 ($generated@@73 $generated@@126)) $generated@@126)
 :pattern ( ($generated@@73 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@22 ($generated@@73 $generated@@127)) $generated@@1)
 :pattern ( ($generated@@73 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@35 $generated@@129 ($generated@@83 $generated@@129 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@83 $generated@@129 $generated@@128))
)))
(assert  (and (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@130 $generated@@133 $generated@@134 $generated@@135 ($generated@@132 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@138 $generated@@139) $generated@@136)
 :weight 0
)) (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@130 $generated@@140 $generated@@141 $generated@@142 ($generated@@132 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@147 $generated@@148) ($generated@@130 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@147 $generated@@148)))
 :weight 0
)) (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@130 $generated@@149 $generated@@150 $generated@@151 ($generated@@132 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@130 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)))))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 Bool) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@11 ($generated@@130 $generated@@26 $generated@@37 $generated@@7 ($generated@@131 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))  (=> (and (or (not (= $generated@@162 $generated@@158)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@159 $generated@@162) $generated@@160)))) $generated@@161))
 :pattern ( ($generated@@130 $generated@@26 $generated@@37 $generated@@7 ($generated@@131 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (!  (and (= ($generated@@164 ($generated@@72 $generated@@166 $generated@@167)) $generated@@166) (= ($generated@@165 ($generated@@72 $generated@@166 $generated@@167)) $generated@@167))
 :pattern ( ($generated@@72 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@74 $generated@@168 ($generated@@73 $generated@@169)) (and (= ($generated@@83 $generated@@71 ($generated@@35 $generated@@71 $generated@@168)) $generated@@168) ($generated@@25 $generated@@71 ($generated@@35 $generated@@71 $generated@@168) ($generated@@73 $generated@@169))))
 :pattern ( ($generated@@74 $generated@@168 ($generated@@73 $generated@@169)))
)))
(assert (= ($generated@@22 $generated@@27) $generated@@3))
(assert (= ($generated@@170 $generated@@27) $generated@@5))
(assert (= ($generated@@22 $generated@@32) $generated@@4))
(assert (= ($generated@@170 $generated@@32) $generated@@5))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 Int) ) (!  (and (=> (< $generated@@173 ($generated@@23 $generated@@171)) (= ($generated@@79 ($generated@@102 $generated@@171 $generated@@172) $generated@@173) ($generated@@79 $generated@@171 $generated@@173))) (=> (<= ($generated@@23 $generated@@171) $generated@@173) (= ($generated@@79 ($generated@@102 $generated@@171 $generated@@172) $generated@@173) ($generated@@79 $generated@@172 (- $generated@@173 ($generated@@23 $generated@@171))))))
 :pattern ( ($generated@@79 ($generated@@102 $generated@@171 $generated@@172) $generated@@173))
)))
(assert (forall (($generated@@174 Int) ) (! (= ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 $generated@@174))) ($generated@@68 $generated@@38 ($generated@@83 $generated@@8 ($generated@@12 $generated@@174))))
 :pattern ( ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 $generated@@174))))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@T) ) (! (= ($generated@@83 $generated@@176 ($generated@@68 $generated@@176 $generated@@175)) ($generated@@68 $generated@@38 ($generated@@83 $generated@@176 $generated@@175)))
 :pattern ( ($generated@@83 $generated@@176 ($generated@@68 $generated@@176 $generated@@175)))
)))
(assert (forall (($generated@@177 T@U) ) (!  (=> (= ($generated@@23 $generated@@177) 0) (= $generated@@177 $generated@@24))
 :pattern ( ($generated@@23 $generated@@177))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! ($generated@@31 $generated@@8 $generated@@179 $generated $generated@@178)
 :pattern ( ($generated@@31 $generated@@8 $generated@@179 $generated $generated@@178))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@25 $generated@@71 $generated@@180 ($generated@@73 $generated@@181)) (forall (($generated@@182 Int) ) (!  (=> (and (<= 0 $generated@@182) (< $generated@@182 ($generated@@23 $generated@@180))) ($generated@@74 ($generated@@79 $generated@@180 $generated@@182) $generated@@181))
 :pattern ( ($generated@@79 $generated@@180 $generated@@182))
)))
 :pattern ( ($generated@@25 $generated@@71 $generated@@180 ($generated@@73 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ) (! ($generated@@25 $generated@@8 $generated@@183 $generated)
 :pattern ( ($generated@@25 $generated@@8 $generated@@183 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 (T@U) T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 (T@U) T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 (T@U) Bool)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 (T@U) Bool)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@204  (=> (and (= $generated@@184 ($generated@@185 $generated@@186)) (= $generated@@187 ($generated@@185 ($generated@@185 $generated@@186)))) (=> (and (and (and (and (= ($generated@@188 $generated@@186) $generated@@186) (= $generated@@189 ($generated@@131 $generated@@28 $generated@@190 $generated@@2 false))) (and (= $generated@@191 ($generated@@68 $generated@@71 ($generated@@72 ($generated@@72 ($generated@@72 $generated@@24 ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 2)))) ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 5)))) ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 3)))))) (= $generated@@192 ($generated@@66 7)))) (and (and ($generated@@25 $generated@@71 $generated@@193 ($generated@@73 $generated@@194)) ($generated@@31 $generated@@71 $generated@@193 ($generated@@73 $generated@@194) $generated@@190)) (= $generated@@195 ($generated@@83 $generated@@8 ($generated@@12 $generated@@192))))) (and (and (and ($generated@@196 $generated@@197) ($generated@@198 $generated@@197)) (and ($generated@@25 $generated@@71 $generated@@199 ($generated@@73 $generated)) ($generated@@31 $generated@@71 $generated@@199 ($generated@@73 $generated) $generated@@197))) (and (and ($generated@@78 $generated@@199 ($generated@@102 $generated@@191 ($generated@@72 $generated@@24 $generated@@195))) (forall (($generated@@205 T@U) ) (!  (=> (and (or (not (= $generated@@205 $generated@@28)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@190 $generated@@205) $generated@@2)))) (= ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@197 $generated@@205) ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@190 $generated@@205)))
 :pattern ( ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@197 $generated@@205))
))) (and ($generated@@62 $generated@@190 $generated@@197) (= (ControlFlow 0 2) (- 0 1)))))) ($generated@@78 ($generated@@72 ($generated@@72 ($generated@@72 ($generated@@72 $generated@@24 ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 2)))) ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 5)))) ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 3)))) ($generated@@83 $generated@@8 ($generated@@12 ($generated@@66 7)))) $generated@@199)))))
(let (($generated@@206  (=> (and (and (and (and ($generated@@196 $generated@@190) ($generated@@198 $generated@@190)) (and (or (not (= $generated@@200 $generated@@28)) (not true)) (and ($generated@@25 $generated@@26 $generated@@200 $generated@@32) ($generated@@31 $generated@@26 $generated@@200 $generated@@32 $generated@@190)))) (and (and ($generated@@25 $generated@@71 $generated@@201 ($generated@@73 $generated)) ($generated@@31 $generated@@71 $generated@@201 ($generated@@73 $generated) $generated@@190)) true)) (and (and (and ($generated@@25 $generated@@71 $generated@@202 ($generated@@73 $generated)) ($generated@@31 $generated@@71 $generated@@202 ($generated@@73 $generated) $generated@@190)) true) (and (= 1 $generated@@203) (= (ControlFlow 0 3) 2)))) $generated@@204)))
$generated@@206)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)