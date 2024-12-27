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
(declare-fun $generated@@26 (T@U Int) T@U)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (Int) Int)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@U) T@U)
(declare-fun $generated@@53 (T@U T@U T@U) Bool)
(declare-fun $generated@@54 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@62 (T@U) Bool)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 (T@U) T@U)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@75 (T@T T@U T@U) Bool)
(declare-fun $generated@@78 (T@U T@U) Bool)
(declare-fun $generated@@80 () T@T)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@104 (T@U) Int)
(declare-fun $generated@@106 (T@U) Int)
(declare-fun $generated@@111 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@112 () T@T)
(declare-fun $generated@@113 () T@T)
(declare-fun $generated@@114 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@115 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@116 () T@T)
(declare-fun $generated@@117 (T@T T@T) T@T)
(declare-fun $generated@@118 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@120 (T@T) T@T)
(declare-fun $generated@@121 (T@T) T@T)
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
(assert (= ($generated@@25 $generated) $generated@@1))
(assert (= ($generated@@25 $generated@@0) $generated@@2))
(assert (= ($generated@@9 $generated@@31) 3))
(assert (forall (($generated@@32 T@U) ($generated@@33 Int) ) (!  (=> (and (<= 0 $generated@@33) (< $generated@@33 ($generated@@28 $generated@@32))) (< ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@32 $generated@@33))) ($generated@@29 ($generated@@27 $generated@@32))))
 :pattern ( ($generated@@26 $generated@@32 $generated@@33) ($generated@@27 $generated@@32))
)))
(assert (= ($generated@@28 $generated@@34) 0))
(assert (forall (($generated@@36 Int) ) (! (= ($generated@@35 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@T) ) (! (= ($generated@@37 $generated@@39 $generated@@38) $generated@@38)
 :pattern ( ($generated@@37 $generated@@39 $generated@@38))
)))
(assert (forall (($generated@@42 T@U) ) (! (= ($generated@@40 $generated@@42) (= ($generated@@41 $generated@@42) $generated@@6))
 :pattern ( ($generated@@40 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@43 $generated@@44) (= ($generated@@41 $generated@@44) $generated@@7))
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@45 $generated@@47 ($generated@@30 $generated@@47 $generated@@46)) $generated@@46)
 :pattern ( ($generated@@30 $generated@@47 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ) (!  (=> ($generated@@40 $generated@@48) (exists (($generated@@49 T@U) ) (= $generated@@48 ($generated@@27 $generated@@49))))
 :pattern ( ($generated@@40 $generated@@48))
)))
(assert (forall (($generated@@51 T@U) ) (!  (=> ($generated@@43 $generated@@51) (exists (($generated@@52 T@U) ) (= $generated@@51 ($generated@@50 $generated@@52))))
 :pattern ( ($generated@@43 $generated@@51))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@53 ($generated@@45 $generated@@58 $generated@@55) $generated@@56 $generated@@57) ($generated@@54 $generated@@58 $generated@@55 $generated@@56 $generated@@57))
 :pattern ( ($generated@@53 ($generated@@45 $generated@@58 $generated@@55) $generated@@56 $generated@@57))
)))
(assert (forall (($generated@@61 T@U) ) (!  (and (= ($generated@@25 ($generated@@59 $generated@@61)) $generated@@5) (= ($generated@@60 ($generated@@59 $generated@@61)) $generated@@8))
 :pattern ( ($generated@@59 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (=> ($generated@@62 $generated@@65) (= ($generated@@54 $generated@@31 ($generated@@50 $generated@@64) ($generated@@59 $generated@@63) $generated@@65) ($generated@@53 $generated@@64 $generated@@63 $generated@@65)))
 :pattern ( ($generated@@54 $generated@@31 ($generated@@50 $generated@@64) ($generated@@59 $generated@@63) $generated@@65))
)))
(assert (= ($generated@@9 $generated@@66) 4))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> (and ($generated@@62 $generated@@70) (and ($generated@@40 $generated@@69) (exists (($generated@@71 T@U) ) (! ($generated@@54 $generated@@31 $generated@@69 ($generated@@59 $generated@@71) $generated@@70)
 :pattern ( ($generated@@54 $generated@@31 $generated@@69 ($generated@@59 $generated@@71) $generated@@70))
)))) ($generated@@54 $generated@@66 ($generated@@67 $generated@@69) ($generated@@68 $generated) $generated@@70))
 :pattern ( ($generated@@54 $generated@@66 ($generated@@67 $generated@@69) ($generated@@68 $generated) $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (=> ($generated@@62 $generated@@74) (= ($generated@@54 $generated@@31 ($generated@@27 $generated@@73) ($generated@@59 $generated@@72) $generated@@74) ($generated@@54 $generated@@66 $generated@@73 ($generated@@68 $generated) $generated@@74)))
 :pattern ( ($generated@@54 $generated@@31 ($generated@@27 $generated@@73) ($generated@@59 $generated@@72) $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> ($generated@@75 $generated@@31 $generated@@77 ($generated@@59 $generated@@76)) (or ($generated@@40 $generated@@77) ($generated@@43 $generated@@77)))
 :pattern ( ($generated@@43 $generated@@77) ($generated@@75 $generated@@31 $generated@@77 ($generated@@59 $generated@@76)))
 :pattern ( ($generated@@40 $generated@@77) ($generated@@75 $generated@@31 $generated@@77 ($generated@@59 $generated@@76)))
)))
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@78 $generated@@79 $generated@@0) (and (= ($generated@@45 $generated@@11 ($generated@@30 $generated@@11 $generated@@79)) $generated@@79) ($generated@@75 $generated@@11 ($generated@@30 $generated@@11 $generated@@79) $generated@@0)))
 :pattern ( ($generated@@78 $generated@@79 $generated@@0))
)))
(assert (= ($generated@@9 $generated@@80) 5))
(assert (forall (($generated@@81 T@U) ) (!  (=> ($generated@@78 $generated@@81 $generated) (and (= ($generated@@45 $generated@@80 ($generated@@30 $generated@@80 $generated@@81)) $generated@@81) ($generated@@75 $generated@@80 ($generated@@30 $generated@@80 $generated@@81) $generated)))
 :pattern ( ($generated@@78 $generated@@81 $generated))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@78 ($generated@@45 $generated@@84 $generated@@82) $generated@@83) ($generated@@75 $generated@@84 $generated@@82 $generated@@83))
 :pattern ( ($generated@@78 ($generated@@45 $generated@@84 $generated@@82) $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (! (<= 0 ($generated@@28 $generated@@85))
 :pattern ( ($generated@@28 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@54 $generated@@66 $generated@@86 ($generated@@68 $generated@@87) $generated@@88) (forall (($generated@@89 Int) ) (!  (=> (and (<= 0 $generated@@89) (< $generated@@89 ($generated@@28 $generated@@86))) ($generated@@53 ($generated@@26 $generated@@86 $generated@@89) $generated@@87 $generated@@88))
 :pattern ( ($generated@@26 $generated@@86 $generated@@89))
)))
 :pattern ( ($generated@@54 $generated@@66 $generated@@86 ($generated@@68 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@90 ($generated@@68 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@68 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@25 ($generated@@68 $generated@@92)) $generated@@3)
 :pattern ( ($generated@@68 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@93 ($generated@@59 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@59 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ) (! (= ($generated@@41 ($generated@@27 $generated@@95)) $generated@@6)
 :pattern ( ($generated@@27 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ) (! (= ($generated@@67 ($generated@@27 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@27 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@41 ($generated@@50 $generated@@97)) $generated@@7)
 :pattern ( ($generated@@50 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@98 ($generated@@50 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@50 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@30 $generated@@101 ($generated@@45 $generated@@101 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@45 $generated@@101 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@75 $generated@@31 ($generated@@50 $generated@@103) ($generated@@59 $generated@@102)) ($generated@@78 $generated@@103 $generated@@102))
 :pattern ( ($generated@@75 $generated@@31 ($generated@@50 $generated@@103) ($generated@@59 $generated@@102)))
)))
(assert (forall (($generated@@105 T@U) ) (! (< ($generated@@104 $generated@@105) ($generated@@29 ($generated@@27 $generated@@105)))
 :pattern ( ($generated@@27 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (< ($generated@@106 $generated@@107) ($generated@@29 ($generated@@50 $generated@@107)))
 :pattern ( ($generated@@50 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> (and ($generated@@62 $generated@@110) (and ($generated@@43 $generated@@108) ($generated@@54 $generated@@31 $generated@@108 ($generated@@59 $generated@@109) $generated@@110))) ($generated@@53 ($generated@@98 $generated@@108) $generated@@109 $generated@@110))
 :pattern ( ($generated@@53 ($generated@@98 $generated@@108) $generated@@109 $generated@@110))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@111 $generated@@122 $generated@@123 $generated@@124 ($generated@@118 $generated@@122 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128 $generated@@125) $generated@@127 $generated@@128) $generated@@125)
 :weight 0
)) (and (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (or (= $generated@@134 $generated@@136) (= ($generated@@111 $generated@@129 $generated@@130 $generated@@131 ($generated@@118 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@136 $generated@@137) ($generated@@111 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@136 $generated@@137)))
 :weight 0
)) (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (or (= $generated@@144 $generated@@146) (= ($generated@@111 $generated@@138 $generated@@139 $generated@@140 ($generated@@118 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@145 $generated@@146) ($generated@@111 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@145 $generated@@146)))
 :weight 0
)))) (= ($generated@@9 $generated@@112) 6)) (= ($generated@@9 $generated@@113) 7)) (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@115 $generated@@147 $generated@@148 ($generated@@119 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@149) $generated@@151) $generated@@149)
 :weight 0
))) (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@156 $generated@@157) (= ($generated@@115 $generated@@152 $generated@@153 ($generated@@119 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@154) $generated@@157) ($generated@@115 $generated@@152 $generated@@153 $generated@@155 $generated@@157)))
 :weight 0
))) (= ($generated@@9 $generated@@116) 8)) (forall (($generated@@158 T@T) ($generated@@159 T@T) ) (= ($generated@@9 ($generated@@117 $generated@@158 $generated@@159)) 9))) (forall (($generated@@160 T@T) ($generated@@161 T@T) ) (! (= ($generated@@120 ($generated@@117 $generated@@160 $generated@@161)) $generated@@160)
 :pattern ( ($generated@@117 $generated@@160 $generated@@161))
))) (forall (($generated@@162 T@T) ($generated@@163 T@T) ) (! (= ($generated@@121 ($generated@@117 $generated@@162 $generated@@163)) $generated@@163)
 :pattern ( ($generated@@117 $generated@@162 $generated@@163))
))))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 Bool) ($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@14 ($generated@@111 $generated@@112 $generated@@113 $generated@@10 ($generated@@114 $generated@@164 $generated@@165 $generated@@166 $generated@@167) $generated@@168 $generated@@169))  (=> (and (or (not (= $generated@@168 $generated@@164)) (not true)) ($generated@@14 ($generated@@30 $generated@@10 ($generated@@115 $generated@@113 $generated@@116 ($generated@@115 $generated@@112 ($generated@@117 $generated@@113 $generated@@116) $generated@@165 $generated@@168) $generated@@166)))) $generated@@167))
 :pattern ( ($generated@@111 $generated@@112 $generated@@113 $generated@@10 ($generated@@114 $generated@@164 $generated@@165 $generated@@166 $generated@@167) $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ) (! (= ($generated@@106 ($generated@@45 $generated@@31 $generated@@170)) ($generated@@29 $generated@@170))
 :pattern ( ($generated@@106 ($generated@@45 $generated@@31 $generated@@170)))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@78 $generated@@171 ($generated@@68 $generated@@172)) (and (= ($generated@@45 $generated@@66 ($generated@@30 $generated@@66 $generated@@171)) $generated@@171) ($generated@@75 $generated@@66 ($generated@@30 $generated@@66 $generated@@171) ($generated@@68 $generated@@172))))
 :pattern ( ($generated@@78 $generated@@171 ($generated@@68 $generated@@172)))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> ($generated@@78 $generated@@174 ($generated@@59 $generated@@173)) (and (= ($generated@@45 $generated@@31 ($generated@@30 $generated@@31 $generated@@174)) $generated@@174) ($generated@@75 $generated@@31 ($generated@@30 $generated@@31 $generated@@174) ($generated@@59 $generated@@173))))
 :pattern ( ($generated@@78 $generated@@174 ($generated@@59 $generated@@173)))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@75 $generated@@31 ($generated@@27 $generated@@176) ($generated@@59 $generated@@175)) ($generated@@75 $generated@@66 $generated@@176 ($generated@@68 $generated)))
 :pattern ( ($generated@@75 $generated@@31 ($generated@@27 $generated@@176) ($generated@@59 $generated@@175)))
)))
(assert (forall (($generated@@177 Int) ) (! (= ($generated@@45 $generated@@11 ($generated@@15 ($generated@@35 $generated@@177))) ($generated@@37 $generated@@116 ($generated@@45 $generated@@11 ($generated@@15 $generated@@177))))
 :pattern ( ($generated@@45 $generated@@11 ($generated@@15 ($generated@@35 $generated@@177))))
)))
(assert (forall (($generated@@178 T@U) ) (! (= ($generated@@27 ($generated@@37 $generated@@66 $generated@@178)) ($generated@@37 $generated@@31 ($generated@@27 $generated@@178)))
 :pattern ( ($generated@@27 ($generated@@37 $generated@@66 $generated@@178)))
)))
(assert (forall (($generated@@179 T@U) ) (! (= ($generated@@50 ($generated@@37 $generated@@116 $generated@@179)) ($generated@@37 $generated@@31 ($generated@@50 $generated@@179)))
 :pattern ( ($generated@@50 ($generated@@37 $generated@@116 $generated@@179)))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@T) ) (! (= ($generated@@45 $generated@@181 ($generated@@37 $generated@@181 $generated@@180)) ($generated@@37 $generated@@116 ($generated@@45 $generated@@181 $generated@@180)))
 :pattern ( ($generated@@45 $generated@@181 ($generated@@37 $generated@@181 $generated@@180)))
)))
(assert (forall (($generated@@182 T@U) ) (!  (=> (= ($generated@@28 $generated@@182) 0) (= $generated@@182 $generated@@34))
 :pattern ( ($generated@@28 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! ($generated@@54 $generated@@11 $generated@@184 $generated@@0 $generated@@183)
 :pattern ( ($generated@@54 $generated@@11 $generated@@184 $generated@@0 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! ($generated@@54 $generated@@80 $generated@@186 $generated $generated@@185)
 :pattern ( ($generated@@54 $generated@@80 $generated@@186 $generated $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@75 $generated@@66 $generated@@187 ($generated@@68 $generated@@188)) (forall (($generated@@189 Int) ) (!  (=> (and (<= 0 $generated@@189) (< $generated@@189 ($generated@@28 $generated@@187))) ($generated@@78 ($generated@@26 $generated@@187 $generated@@189) $generated@@188))
 :pattern ( ($generated@@26 $generated@@187 $generated@@189))
)))
 :pattern ( ($generated@@75 $generated@@66 $generated@@187 ($generated@@68 $generated@@188)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 Int) ) (!  (=> (and (<= 0 $generated@@191) (< $generated@@191 ($generated@@28 $generated@@190))) (< ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@190 $generated@@191))) ($generated@@104 $generated@@190)))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@190 $generated@@191))))
)))
(assert (forall (($generated@@192 T@U) ) (! ($generated@@75 $generated@@11 $generated@@192 $generated@@0)
 :pattern ( ($generated@@75 $generated@@11 $generated@@192 $generated@@0))
)))
(assert (forall (($generated@@193 T@U) ) (! ($generated@@75 $generated@@80 $generated@@193 $generated)
 :pattern ( ($generated@@75 $generated@@80 $generated@@193 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () Int)
(declare-fun $generated@@199 () Int)
(declare-fun $generated@@200 (T@U) Bool)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@203  (=> (and (and (= $generated@@194 ($generated@@114 $generated@@195 $generated@@196 $generated@@4 false)) (= $generated@@197 ($generated@@37 $generated@@31 ($generated@@50 ($generated@@45 $generated@@11 ($generated@@15 ($generated@@35 200))))))) (and (= $generated@@198 ($generated@@35 3)) (= $generated@@199 ($generated@@35 4)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@43 $generated@@197) (= ($generated@@16 ($generated@@30 $generated@@11 ($generated@@98 $generated@@197))) ($generated@@35 200)))) (=> (=> ($generated@@43 $generated@@197) (= ($generated@@16 ($generated@@30 $generated@@11 ($generated@@98 $generated@@197))) ($generated@@35 200))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= $generated@@198 ($generated@@35 3))) (=> (= $generated@@198 ($generated@@35 3)) (=> (= (ControlFlow 0 2) (- 0 1)) (= $generated@@199 ($generated@@35 4))))))))))
(let (($generated@@204  (=> (and ($generated@@62 $generated@@196) ($generated@@200 $generated@@196)) (=> (and (and ($generated@@75 $generated@@31 $generated@@201 ($generated@@59 $generated@@0)) ($generated@@54 $generated@@31 $generated@@201 ($generated@@59 $generated@@0) $generated@@196)) (and (= 1 $generated@@202) (= (ControlFlow 0 5) 2))) $generated@@203))))
$generated@@204)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)