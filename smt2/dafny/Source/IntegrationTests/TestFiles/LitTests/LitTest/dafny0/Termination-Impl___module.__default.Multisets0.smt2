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
(declare-fun $generated@@1 (T@T) Int)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 (Bool) T@U)
(declare-fun $generated@@6 (T@U) Bool)
(declare-fun $generated@@7 (Int) T@U)
(declare-fun $generated@@8 (T@U) Int)
(declare-fun $generated@@9 (Real) T@U)
(declare-fun $generated@@10 (T@U) Real)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (T@U T@U) T@U)
(declare-fun $generated@@19 (T@U T@U) T@U)
(declare-fun $generated@@20 (T@U T@U) T@U)
(declare-fun $generated@@23 (Int Int) Int)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@32 (T@U T@U) Int)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@T T@T) T@T)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@68 (Int) Int)
(declare-fun $generated@@73 (T@T T@U) T@U)
(declare-fun $generated@@76 (T@U T@U) T@U)
(declare-fun $generated@@82 (T@U T@U T@U) Bool)
(declare-fun $generated@@83 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@99 (T@U T@U) Bool)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@115 () T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@134 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@185 (T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@1 $generated@@2) 0) (= ($generated@@1 $generated@@3) 1)) (= ($generated@@1 $generated@@4) 2)) (forall (($generated@@11 Bool) ) (! (= ($generated@@6 ($generated@@5 $generated@@11)) $generated@@11)
 :pattern ( ($generated@@5 $generated@@11))
))) (forall (($generated@@12 T@U) ) (! (= ($generated@@5 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 Int) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Real) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))))
(assert (distinct $generated $generated@@0)
)
(assert (forall (($generated@@21 T@U) ($generated@@22 T@U) ) (!  (and (= (+ (+ ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)) ($generated@@17 ($generated@@18 $generated@@22 $generated@@21))) (* 2 ($generated@@17 ($generated@@19 $generated@@21 $generated@@22)))) ($generated@@17 ($generated@@20 $generated@@21 $generated@@22))) (= ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)) (- ($generated@@17 $generated@@21) ($generated@@17 ($generated@@19 $generated@@21 $generated@@22)))))
 :pattern ( ($generated@@17 ($generated@@18 $generated@@21 $generated@@22)))
)))
(assert (forall (($generated@@24 Int) ($generated@@25 Int) ) (!  (or (= ($generated@@23 $generated@@24 $generated@@25) $generated@@24) (= ($generated@@23 $generated@@24 $generated@@25) $generated@@25))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25))
)))
(assert (= ($generated@@1 $generated@@27) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)) ($generated@@29 $generated@@30))
 :pattern ( ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (<= ($generated@@32 $generated@@33 $generated@@35) ($generated@@32 $generated@@34 $generated@@35)) (= ($generated@@32 ($generated@@18 $generated@@33 $generated@@34) $generated@@35) 0))
 :pattern ( ($generated@@18 $generated@@33 $generated@@34) ($generated@@32 $generated@@34 $generated@@35) ($generated@@32 $generated@@33 $generated@@35))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@19 ($generated@@19 $generated@@36 $generated@@37) $generated@@37) ($generated@@19 $generated@@36 $generated@@37))
 :pattern ( ($generated@@19 ($generated@@19 $generated@@36 $generated@@37) $generated@@37))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@39 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@39 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@39 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@1 $generated@@40) 4)) (= ($generated@@1 $generated@@41) 5)) (= ($generated@@1 $generated@@42) 6)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@1 ($generated@@43 $generated@@59 $generated@@60)) 7))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@43 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@43 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@43 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@43 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@38 $generated@@65 $generated@@66) (forall (($generated@@67 T@U) ) (!  (=> ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@65 $generated@@67) $generated@@0))) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@66 $generated@@67) $generated@@0))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@66 $generated@@67) $generated@@0))
)))
 :pattern ( ($generated@@38 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@69 Int) ) (!  (=> (<= 0 $generated@@69) (= ($generated@@68 $generated@@69) $generated@@69))
 :pattern ( ($generated@@68 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@32 ($generated@@19 $generated@@70 $generated@@71) $generated@@72) ($generated@@23 ($generated@@32 $generated@@70 $generated@@72) ($generated@@32 $generated@@71 $generated@@72)))
 :pattern ( ($generated@@32 ($generated@@19 $generated@@70 $generated@@71) $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@73 $generated@@75 ($generated@@44 $generated@@75 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@44 $generated@@75 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (or (not (= $generated@@78 $generated@@79)) (not true)) (= ($generated@@32 $generated@@77 $generated@@79) ($generated@@32 ($generated@@76 $generated@@77 $generated@@78) $generated@@79)))
 :pattern ( ($generated@@76 $generated@@77 $generated@@78) ($generated@@32 $generated@@77 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@17 ($generated@@76 $generated@@80 $generated@@81)) (+ ($generated@@17 $generated@@80) 1))
 :pattern ( ($generated@@17 ($generated@@76 $generated@@80 $generated@@81)))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@82 ($generated@@73 $generated@@87 $generated@@84) $generated@@85 $generated@@86) ($generated@@83 $generated@@87 $generated@@84 $generated@@85 $generated@@86))
 :pattern ( ($generated@@82 ($generated@@73 $generated@@87 $generated@@84) $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@38 $generated@@88 $generated@@89) (=> ($generated@@82 $generated@@90 $generated@@91 $generated@@88) ($generated@@82 $generated@@90 $generated@@91 $generated@@89)))
 :pattern ( ($generated@@38 $generated@@88 $generated@@89) ($generated@@82 $generated@@90 $generated@@91 $generated@@88))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (!  (=> ($generated@@38 $generated@@92 $generated@@93) (=> ($generated@@83 $generated@@96 $generated@@94 $generated@@95 $generated@@92) ($generated@@83 $generated@@96 $generated@@94 $generated@@95 $generated@@93)))
 :pattern ( ($generated@@38 $generated@@92 $generated@@93) ($generated@@83 $generated@@96 $generated@@94 $generated@@95 $generated@@92))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@17 ($generated@@20 $generated@@97 $generated@@98)) (+ ($generated@@17 $generated@@97) ($generated@@17 $generated@@98)))
 :pattern ( ($generated@@17 ($generated@@20 $generated@@97 $generated@@98)))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@99 $generated@@100 $generated@@101) (= $generated@@100 $generated@@101))
 :pattern ( ($generated@@99 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@103 ($generated@@28 $generated@@104)) (forall (($generated@@105 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@103 $generated@@105)) ($generated@@102 $generated@@105 $generated@@104))
 :pattern ( ($generated@@32 $generated@@103 $generated@@105))
)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@103 ($generated@@28 $generated@@104)))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (or (not (= $generated@@106 $generated@@108)) (not true)) (=> (and ($generated@@38 $generated@@106 $generated@@107) ($generated@@38 $generated@@107 $generated@@108)) ($generated@@38 $generated@@106 $generated@@108)))
 :pattern ( ($generated@@38 $generated@@106 $generated@@107) ($generated@@38 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@T) ) (! (= ($generated@@102 ($generated@@73 $generated@@111 $generated@@109) $generated@@110) ($generated@@26 $generated@@111 $generated@@109 $generated@@110))
 :pattern ( ($generated@@102 ($generated@@73 $generated@@111 $generated@@109) $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ) (! (= ($generated@@29 $generated@@112) (forall (($generated@@113 T@U) ) (!  (and (<= 0 ($generated@@32 $generated@@112 $generated@@113)) (<= ($generated@@32 $generated@@112 $generated@@113) ($generated@@17 $generated@@112)))
 :pattern ( ($generated@@32 $generated@@112 $generated@@113))
)))
 :pattern ( ($generated@@29 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ) (! (<= 0 ($generated@@17 $generated@@114))
 :pattern ( ($generated@@17 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@32 $generated@@115 $generated@@116) 0)
 :pattern ( ($generated@@32 $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@32 ($generated@@76 $generated@@117 $generated@@118) $generated@@118) (+ ($generated@@32 $generated@@117 $generated@@118) 1))
 :pattern ( ($generated@@76 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@119 ($generated@@28 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@28 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@28 $generated@@122)) $generated)
 :pattern ( ($generated@@28 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@T) ) (! (= ($generated@@44 $generated@@124 ($generated@@73 $generated@@124 $generated@@123)) $generated@@123)
 :pattern ( ($generated@@73 $generated@@124 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@19 $generated@@125 ($generated@@19 $generated@@125 $generated@@126)) ($generated@@19 $generated@@125 $generated@@126))
 :pattern ( ($generated@@19 $generated@@125 ($generated@@19 $generated@@125 $generated@@126)))
)))
(assert (forall (($generated@@127 T@U) ) (!  (and (= (= ($generated@@17 $generated@@127) 0) (= $generated@@127 $generated@@115)) (=> (or (not (= ($generated@@17 $generated@@127) 0)) (not true)) (exists (($generated@@128 T@U) ) (! (< 0 ($generated@@32 $generated@@127 $generated@@128))
 :pattern ( ($generated@@32 $generated@@127 $generated@@128))
))))
 :pattern ( ($generated@@17 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@32 ($generated@@20 $generated@@129 $generated@@130) $generated@@131) (+ ($generated@@32 $generated@@129 $generated@@131) ($generated@@32 $generated@@130 $generated@@131)))
 :pattern ( ($generated@@32 ($generated@@20 $generated@@129 $generated@@130) $generated@@131))
)))
(assert  (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@132 $generated@@135 $generated@@136 $generated@@137 ($generated@@134 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@140 $generated@@141) $generated@@138)
 :weight 0
)) (and (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (or (= $generated@@147 $generated@@149) (= ($generated@@132 $generated@@142 $generated@@143 $generated@@144 ($generated@@134 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@149 $generated@@150) ($generated@@132 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@149 $generated@@150)))
 :weight 0
)) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@157 $generated@@159) (= ($generated@@132 $generated@@151 $generated@@152 $generated@@153 ($generated@@134 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@132 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)))))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 Bool) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@6 ($generated@@132 $generated@@42 $generated@@40 $generated@@2 ($generated@@133 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))  (=> (and (or (not (= $generated@@164 $generated@@160)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@161 $generated@@164) $generated@@162)))) $generated@@163))
 :pattern ( ($generated@@132 $generated@@42 $generated@@40 $generated@@2 ($generated@@133 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 Int) ($generated@@167 Int) ) (! (= (<= $generated@@166 $generated@@167) (= ($generated@@23 $generated@@166 $generated@@167) $generated@@166))
 :pattern ( ($generated@@23 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 Int) ($generated@@169 Int) ) (! (= (<= $generated@@169 $generated@@168) (= ($generated@@23 $generated@@168 $generated@@169) $generated@@169))
 :pattern ( ($generated@@23 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> ($generated@@102 $generated@@170 ($generated@@28 $generated@@171)) (and (= ($generated@@73 $generated@@27 ($generated@@44 $generated@@27 $generated@@170)) $generated@@170) ($generated@@26 $generated@@27 ($generated@@44 $generated@@27 $generated@@170) ($generated@@28 $generated@@171))))
 :pattern ( ($generated@@102 $generated@@170 ($generated@@28 $generated@@171)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@32 ($generated@@18 $generated@@172 $generated@@173) $generated@@174) ($generated@@68 (- ($generated@@32 $generated@@172 $generated@@174) ($generated@@32 $generated@@173 $generated@@174))))
 :pattern ( ($generated@@32 ($generated@@18 $generated@@172 $generated@@173) $generated@@174))
)))
(assert (forall (($generated@@175 Int) ) (!  (=> (< $generated@@175 0) (= ($generated@@68 $generated@@175) 0))
 :pattern ( ($generated@@68 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@176 $generated@@178)) (< 0 ($generated@@32 ($generated@@76 $generated@@176 $generated@@177) $generated@@178)))
 :pattern ( ($generated@@76 $generated@@176 $generated@@177) ($generated@@32 $generated@@176 $generated@@178))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= (< 0 ($generated@@32 ($generated@@76 $generated@@179 $generated@@180) $generated@@181))  (or (= $generated@@181 $generated@@180) (< 0 ($generated@@32 $generated@@179 $generated@@181))))
 :pattern ( ($generated@@32 ($generated@@76 $generated@@179 $generated@@180) $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (! (= ($generated@@99 $generated@@182 $generated@@183) (forall (($generated@@184 T@U) ) (! (= ($generated@@32 $generated@@182 $generated@@184) ($generated@@32 $generated@@183 $generated@@184))
 :pattern ( ($generated@@32 $generated@@182 $generated@@184))
 :pattern ( ($generated@@32 $generated@@183 $generated@@184))
)))
 :pattern ( ($generated@@99 $generated@@182 $generated@@183))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@185 $generated@@186 $generated@@187) (forall (($generated@@188 T@U) ) (! (<= ($generated@@32 $generated@@186 $generated@@188) ($generated@@32 $generated@@187 $generated@@188))
 :pattern ( ($generated@@32 $generated@@186 $generated@@188))
 :pattern ( ($generated@@32 $generated@@187 $generated@@188))
)))
 :pattern ( ($generated@@185 $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@83 $generated@@27 $generated@@189 ($generated@@28 $generated@@190) $generated@@191) (forall (($generated@@192 T@U) ) (!  (=> (< 0 ($generated@@32 $generated@@189 $generated@@192)) ($generated@@82 $generated@@192 $generated@@190 $generated@@191))
 :pattern ( ($generated@@32 $generated@@189 $generated@@192))
)))
 :pattern ( ($generated@@83 $generated@@27 $generated@@189 ($generated@@28 $generated@@190) $generated@@191))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () Bool)
(declare-fun $generated@@200 () Bool)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 (T@U) Bool)
(declare-fun $generated@@206 (T@U) Bool)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () Bool)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () Int)
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
 (=> (= (ControlFlow 0 0) 15) (let (($generated@@211  (and (=> (= (ControlFlow 0 5) (- 0 7)) (exists (($generated@@212 T@U) )  (and ($generated@@102 $generated@@212 $generated@@193) (> ($generated@@32 $generated@@194 $generated@@212) 0)))) (=> (exists (($generated@@213 T@U) )  (and ($generated@@102 $generated@@213 $generated@@193) (> ($generated@@32 $generated@@194 $generated@@213) 0))) (=> (and (=> true (and ($generated@@102 $generated@@195 $generated@@193) ($generated@@82 $generated@@195 $generated@@193 $generated@@196))) (> ($generated@@32 $generated@@194 $generated@@195) 0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) true) (=> (and (= $generated@@197 ($generated@@18 $generated@@194 ($generated@@76 $generated@@115 $generated@@195))) (= (ControlFlow 0 5) (- 0 4))) (and ($generated@@185 $generated@@197 $generated@@194) (not ($generated@@99 $generated@@197 $generated@@194))))))))))
(let (($generated@@214  (=> (and (not (and ($generated@@102 $generated@@198 $generated@@193) ($generated@@82 $generated@@198 $generated@@193 $generated@@196))) (= (ControlFlow 0 9) 5)) $generated@@211)))
(let (($generated@@215  (=> (and (and ($generated@@102 $generated@@198 $generated@@193) ($generated@@82 $generated@@198 $generated@@193 $generated@@196)) (= (ControlFlow 0 8) 5)) $generated@@211)))
(let (($generated@@216  (=> (not ($generated@@99 $generated@@194 $generated@@115)) (and (=> (= (ControlFlow 0 10) 8) $generated@@215) (=> (= (ControlFlow 0 10) 9) $generated@@214)))))
(let (($generated@@217 true))
(let (($generated@@218  (=> $generated@@199 (and (=> (= (ControlFlow 0 11) 3) $generated@@217) (=> (= (ControlFlow 0 11) 10) $generated@@216)))))
(let (($generated@@219 true))
(let (($generated@@220  (and (=> (= (ControlFlow 0 12) 2) $generated@@219) (=> (= (ControlFlow 0 12) 11) $generated@@218))))
(let (($generated@@221 true))
(let (($generated@@222  (=> (=> $generated@@200 (and ($generated@@102 $generated@@201 $generated@@193) ($generated@@82 $generated@@201 $generated@@193 $generated@@196))) (=> (and (and (and ($generated@@26 $generated@@27 $generated@@194 ($generated@@28 $generated@@193)) ($generated@@83 $generated@@27 $generated@@194 ($generated@@28 $generated@@193) $generated@@196)) (not false)) (and (and (forall (($generated@@223 T@U) ) (!  (=> (and (or (not (= $generated@@223 $generated@@202)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@223) $generated@@0)))) (= ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@223) ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@223)))
 :pattern ( ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@223))
)) ($generated@@38 $generated@@196 $generated@@196)) (and (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and (or (not (= $generated@@224 $generated@@202)) (not true)) ($generated@@6 ($generated@@44 $generated@@2 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@224) $generated@@0)))) (or (= ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@224) $generated@@225) ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@224) $generated@@225)) ($generated@@6 ($generated@@132 $generated@@42 $generated@@40 $generated@@2 $generated@@203 $generated@@224 $generated@@225))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@42 ($generated@@43 $generated@@40 $generated@@41) $generated@@196 $generated@@224) $generated@@225))
)) ($generated@@185 $generated@@194 $generated@@204)))) (and (=> (= (ControlFlow 0 13) 1) $generated@@221) (=> (= (ControlFlow 0 13) 12) $generated@@220))))))
(let (($generated@@226  (=> (and (= $generated@@203 ($generated@@133 $generated@@202 $generated@@196 $generated@@0 false)) (= (ControlFlow 0 14) 13)) $generated@@222)))
(let (($generated@@227  (=> (and (and ($generated@@205 $generated@@196) ($generated@@206 $generated@@196)) (and ($generated@@26 $generated@@27 $generated@@204 ($generated@@28 $generated@@193)) ($generated@@83 $generated@@27 $generated@@204 ($generated@@28 $generated@@193) $generated@@196))) (=> (and (and (and ($generated@@26 $generated@@27 $generated@@207 ($generated@@28 $generated@@193)) ($generated@@83 $generated@@27 $generated@@207 ($generated@@28 $generated@@193) $generated@@196)) true) (and (and (=> $generated@@208 (and ($generated@@102 $generated@@209 $generated@@193) ($generated@@82 $generated@@209 $generated@@193 $generated@@196))) true) (and (= 0 $generated@@210) (= (ControlFlow 0 15) 14)))) $generated@@226))))
$generated@@227)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)