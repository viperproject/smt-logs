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
(declare-fun $generated@@24 (T@U) Int)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@42 (T@U T@U Int) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@T T@T) T@T)
(declare-fun $generated@@48 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@80 (Int) Int)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@85 () Int)
(declare-fun $generated@@86 (T@U T@U Int) Bool)
(declare-fun $generated@@90 (T@T T@U) T@U)
(declare-fun $generated@@93 (T@U T@U T@U) Bool)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@120 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@121 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@122 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
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
(assert (= ($generated@@24 $generated@@1) 0))
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (= ($generated@@26 $generated@@1) $generated@@2))
(assert (= ($generated@@8 $generated@@28) 3))
(assert (forall (($generated@@32 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@32 $generated@@29)  (or (= $generated@@32 $generated@@30) (= ($generated@@31 $generated@@32) $generated@@29)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@32 $generated@@29))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@33 $generated@@28 $generated@@35 $generated@@34 $generated@@36) ($generated@@33 $generated@@28 $generated@@35 $generated@@29 $generated@@36))
 :pattern ( ($generated@@33 $generated@@28 $generated@@35 $generated@@34 $generated@@36))
 :pattern ( ($generated@@33 $generated@@28 $generated@@35 $generated@@29 $generated@@36))
)))
(assert (= ($generated@@24 $generated@@37) 0))
(assert (= ($generated@@38 $generated@@3 $generated@@7) $generated@@37))
(assert  (not ($generated@@39 $generated@@37)))
(assert  (and (and (and (and (and (and (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@44 $generated@@51 $generated@@52 ($generated@@48 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@55) $generated@@53)
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (or (= $generated@@60 $generated@@61) (= ($generated@@44 $generated@@56 $generated@@57 ($generated@@48 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@61) ($generated@@44 $generated@@56 $generated@@57 $generated@@59 $generated@@61)))
 :weight 0
))) (= ($generated@@8 $generated@@45) 4)) (= ($generated@@8 $generated@@46) 5)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (= ($generated@@8 ($generated@@47 $generated@@62 $generated@@63)) 6))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@49 ($generated@@47 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@47 $generated@@64 $generated@@65))
))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@50 ($generated@@47 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@47 $generated@@66 $generated@@67))
))))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 Int) ) (!  (=> (and (and (and ($generated@@43 $generated@@68) ($generated@@43 $generated@@69)) (and (or (not (= $generated@@70 $generated@@30)) (not true)) ($generated@@27 $generated@@28 $generated@@70 $generated@@34))) (and ($generated@@40 $generated@@68) ($generated@@41 $generated@@68 $generated@@69))) (=> (forall (($generated@@72 T@U) ($generated@@73 T@U) )  (=> (and (or (not (= $generated@@72 $generated@@30)) (not true)) (= $generated@@72 $generated@@70)) (= ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@68 $generated@@72) $generated@@73) ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@69 $generated@@72) $generated@@73)))) (= ($generated@@42 $generated@@68 $generated@@70 $generated@@71) ($generated@@42 $generated@@69 $generated@@70 $generated@@71))))
 :pattern ( ($generated@@40 $generated@@68) ($generated@@41 $generated@@68 $generated@@69) ($generated@@42 $generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@33 $generated@@28 $generated@@75 $generated@@29 $generated@@76)  (or (= $generated@@75 $generated@@30) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@76 $generated@@75) $generated@@1)))))
 :pattern ( ($generated@@33 $generated@@28 $generated@@75 $generated@@29 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> ($generated@@41 $generated@@77 $generated@@78) (forall (($generated@@79 T@U) ) (!  (=> ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@77 $generated@@79) $generated@@1))) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@78 $generated@@79) $generated@@1))))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@78 $generated@@79) $generated@@1))
)))
 :pattern ( ($generated@@41 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@81 Int) ) (! (= ($generated@@80 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@82 $generated@@84 $generated@@83) $generated@@83)
 :pattern ( ($generated@@82 $generated@@84 $generated@@83))
)))
(assert  (=> (<= 0 $generated@@85) (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 Int) ) (!  (=> (or ($generated@@86 $generated@@87 $generated@@88 $generated@@89) (and (< 0 $generated@@85) (and (and (and ($generated@@43 $generated@@87) (or (not (= $generated@@88 $generated@@30)) (not true))) ($generated@@33 $generated@@28 $generated@@88 $generated@@34 $generated@@87)) (<= ($generated@@80 0) $generated@@89)))) ($generated@@33 $generated@@28 ($generated@@42 $generated@@87 $generated@@88 $generated@@89) $generated@@29 $generated@@87))
 :pattern ( ($generated@@33 $generated@@28 ($generated@@42 $generated@@87 $generated@@88 $generated@@89) $generated@@29 $generated@@87))
))))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@90 $generated@@92 ($generated@@74 $generated@@92 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@74 $generated@@92 $generated@@91))
)))
(assert ($generated@@39 $generated@@1))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@93 ($generated@@90 $generated@@97 $generated@@94) $generated@@95 $generated@@96) ($generated@@33 $generated@@97 $generated@@94 $generated@@95 $generated@@96))
 :pattern ( ($generated@@93 ($generated@@90 $generated@@97 $generated@@94) $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@41 $generated@@98 $generated@@99) (=> ($generated@@93 $generated@@100 $generated@@101 $generated@@98) ($generated@@93 $generated@@100 $generated@@101 $generated@@99)))
 :pattern ( ($generated@@41 $generated@@98 $generated@@99) ($generated@@93 $generated@@100 $generated@@101 $generated@@98))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@T) ) (!  (=> ($generated@@41 $generated@@102 $generated@@103) (=> ($generated@@33 $generated@@106 $generated@@104 $generated@@105 $generated@@102) ($generated@@33 $generated@@106 $generated@@104 $generated@@105 $generated@@103)))
 :pattern ( ($generated@@41 $generated@@102 $generated@@103) ($generated@@33 $generated@@106 $generated@@104 $generated@@105 $generated@@102))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (and ($generated@@43 $generated@@107) (and (or (not (= $generated@@108 $generated@@30)) (not true)) (= ($generated@@31 $generated@@108) $generated@@29))) ($generated@@27 $generated@@28 ($generated@@74 $generated@@28 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@107 $generated@@108) $generated@@37)) $generated@@29))
 :pattern ( ($generated@@74 $generated@@28 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@107 $generated@@108) $generated@@37)))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@109 $generated@@34)  (and ($generated@@27 $generated@@28 $generated@@109 $generated@@29) (or (not (= $generated@@109 $generated@@30)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@109 $generated@@34))
 :pattern ( ($generated@@27 $generated@@28 $generated@@109 $generated@@29))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (and (and ($generated@@43 $generated@@110) (and (or (not (= $generated@@111 $generated@@30)) (not true)) (= ($generated@@31 $generated@@111) $generated@@29))) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@110 $generated@@111) $generated@@1)))) ($generated@@33 $generated@@28 ($generated@@74 $generated@@28 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@110 $generated@@111) $generated@@37)) $generated@@29 $generated@@110))
 :pattern ( ($generated@@74 $generated@@28 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@110 $generated@@111) $generated@@37)))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> (or (not (= $generated@@112 $generated@@114)) (not true)) (=> (and ($generated@@41 $generated@@112 $generated@@113) ($generated@@41 $generated@@113 $generated@@114)) ($generated@@41 $generated@@112 $generated@@114)))
 :pattern ( ($generated@@41 $generated@@112 $generated@@113) ($generated@@41 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (and (= ($generated@@115 ($generated@@38 $generated@@116 $generated@@117)) $generated@@116) (= ($generated@@26 ($generated@@38 $generated@@116 $generated@@117)) $generated@@117))
 :pattern ( ($generated@@38 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@74 $generated@@119 ($generated@@90 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@90 $generated@@119 $generated@@118))
)))
(assert  (and (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@120 $generated@@123 $generated@@124 $generated@@125 ($generated@@122 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@128 $generated@@129) $generated@@126)
 :weight 0
)) (and (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@135 $generated@@137) (= ($generated@@120 $generated@@130 $generated@@131 $generated@@132 ($generated@@122 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@137 $generated@@138) ($generated@@120 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@137 $generated@@138)))
 :weight 0
)) (forall (($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@120 $generated@@139 $generated@@140 $generated@@141 ($generated@@122 $generated@@139 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@145 $generated@@142) $generated@@146 $generated@@147) ($generated@@120 $generated@@139 $generated@@140 $generated@@141 $generated@@143 $generated@@146 $generated@@147)))
 :weight 0
)))))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 Bool) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@13 ($generated@@120 $generated@@28 $generated@@45 $generated@@9 ($generated@@121 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))  (=> (and (or (not (= $generated@@152 $generated@@148)) (not true)) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@149 $generated@@152) $generated@@150)))) $generated@@151))
 :pattern ( ($generated@@120 $generated@@28 $generated@@45 $generated@@9 ($generated@@121 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))
)))
(assert (= ($generated@@25 $generated@@29) $generated@@4))
(assert (= ($generated@@154 $generated@@29) $generated@@6))
(assert (= ($generated@@25 $generated@@34) $generated@@5))
(assert (= ($generated@@154 $generated@@34) $generated@@6))
(assert  (=> (<= 0 $generated@@85) (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 Int) ) (!  (=> (or ($generated@@86 $generated@@155 $generated@@156 $generated@@157) (and (< 0 $generated@@85) (and (and ($generated@@43 $generated@@155) (and (or (not (= $generated@@156 $generated@@30)) (not true)) (and ($generated@@27 $generated@@28 $generated@@156 $generated@@34) ($generated@@33 $generated@@28 $generated@@156 $generated@@34 $generated@@155)))) (<= ($generated@@80 0) $generated@@157)))) ($generated@@27 $generated@@28 ($generated@@42 $generated@@155 $generated@@156 $generated@@157) $generated@@29))
 :pattern ( ($generated@@42 $generated@@155 $generated@@156 $generated@@157))
))))
(assert (forall (($generated@@158 Int) ) (! (= ($generated@@90 $generated@@10 ($generated@@14 ($generated@@80 $generated@@158))) ($generated@@82 $generated@@46 ($generated@@90 $generated@@10 ($generated@@14 $generated@@158))))
 :pattern ( ($generated@@90 $generated@@10 ($generated@@14 ($generated@@80 $generated@@158))))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@T) ) (! (= ($generated@@90 $generated@@160 ($generated@@82 $generated@@160 $generated@@159)) ($generated@@82 $generated@@46 ($generated@@90 $generated@@160 $generated@@159)))
 :pattern ( ($generated@@90 $generated@@160 ($generated@@82 $generated@@160 $generated@@159)))
)))
(assert  (=> (<= 0 $generated@@85) (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 Int) ) (!  (=> (or ($generated@@86 $generated@@161 $generated@@162 $generated@@163) (and (< 0 $generated@@85) (and (and ($generated@@43 $generated@@161) (and (or (not (= $generated@@162 $generated@@30)) (not true)) (and ($generated@@27 $generated@@28 $generated@@162 $generated@@34) ($generated@@33 $generated@@28 $generated@@162 $generated@@34 $generated@@161)))) (<= ($generated@@80 0) $generated@@163)))) (= ($generated@@42 $generated@@161 $generated@@162 $generated@@163) ($generated@@74 $generated@@28 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@161 $generated@@162) $generated@@37))))
 :pattern ( ($generated@@42 $generated@@161 $generated@@162 $generated@@163) ($generated@@43 $generated@@161))
))))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! ($generated@@33 $generated@@10 $generated@@165 $generated $generated@@164)
 :pattern ( ($generated@@33 $generated@@10 $generated@@165 $generated $generated@@164))
)))
(assert (forall (($generated@@166 T@U) ) (! ($generated@@27 $generated@@10 $generated@@166 $generated)
 :pattern ( ($generated@@27 $generated@@10 $generated@@166 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@167 () Int)
(declare-fun $generated@@168 () Int)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () Bool)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () Int)
(declare-fun $generated@@173 () Int)
(declare-fun $generated@@174 () Int)
(declare-fun $generated@@175 () Int)
(declare-fun $generated@@176 () Int)
(declare-fun $generated@@177 () Bool)
(declare-fun $generated@@178 () Int)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () Int)
(declare-fun $generated@@181 () Int)
(declare-fun $generated@@182 () Int)
(declare-fun $generated@@183 () Int)
(declare-fun $generated@@184 () Int)
(declare-fun $generated@@185 () Int)
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
 (=> (= (ControlFlow 0 0) 34) (let (($generated@@186  (=> (= $generated@@167 (ite (= $generated@@168 ($generated@@80 77)) (- 0 3) $generated@@168)) (=> (and ($generated@@33 $generated@@10 ($generated@@14 $generated@@167) $generated $generated@@169) (= (ControlFlow 0 20) (- 0 19))) (<= ($generated@@80 0) $generated@@167)))))
(let (($generated@@187  (=> (and (or (not (= $generated@@168 ($generated@@80 77))) (not true)) (= (ControlFlow 0 22) 20)) $generated@@186)))
(let (($generated@@188  (=> (and (= $generated@@168 ($generated@@80 77)) (= (ControlFlow 0 21) 20)) $generated@@186)))
(let (($generated@@189  (=> (and (not $generated@@170) ($generated@@93 ($generated@@90 $generated@@28 $generated@@171) $generated@@29 $generated@@169)) (and (=> (= (ControlFlow 0 23) 21) $generated@@188) (=> (= (ControlFlow 0 23) 22) $generated@@187)))))
(let (($generated@@190  (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (<= 0 $generated@@172) (= (- 100 $generated@@173) $generated@@172))) (=> (or (<= 0 $generated@@172) (= (- 100 $generated@@173) $generated@@172)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (< (- 100 $generated@@173) $generated@@172)) (=> (< (- 100 $generated@@173) $generated@@172) (=> (and (and ($generated@@86 $generated@@169 $generated@@171 (ite (= $generated@@173 ($generated@@80 77)) (- 0 3) $generated@@173)) (= (ControlFlow 0 12) (- 0 11))) $generated@@170) (= ($generated@@42 $generated@@169 $generated@@171 (ite (= $generated@@173 ($generated@@80 77)) (- 0 3) $generated@@173)) $generated@@171))))))))
(let (($generated@@191  (=> (or (not (= $generated@@174 ($generated@@80 77))) (not true)) (=> (and (= $generated@@173 $generated@@174) (= (ControlFlow 0 16) 12)) $generated@@190))))
(let (($generated@@192  (=> (and (and (= $generated@@174 ($generated@@80 77)) (= $generated@@175 (+ $generated@@174 1))) (and (= $generated@@173 $generated@@175) (= (ControlFlow 0 15) 12))) $generated@@190)))
(let (($generated@@193  (=> (< $generated@@168 100) (=> (and (= $generated@@172 (- 100 $generated@@168)) (= $generated@@174 (+ $generated@@168 1))) (and (=> (= (ControlFlow 0 17) 15) $generated@@192) (=> (= (ControlFlow 0 17) 16) $generated@@191))))))
(let (($generated@@194 true))
(let (($generated@@195  (=> $generated@@170 (and (=> (= (ControlFlow 0 18) 10) $generated@@194) (=> (= (ControlFlow 0 18) 17) $generated@@193)))))
(let (($generated@@196  (and (=> (= (ControlFlow 0 24) 23) $generated@@189) (=> (= (ControlFlow 0 24) 18) $generated@@195))))
(let (($generated@@197 true))
(let (($generated@@198  (=> (and (and (and (and (and (and (not false) (and (<= 0 $generated@@168) (< $generated@@168 101))) (= $generated@@176 100)) $generated@@177) (= $generated@@178 100)) (and (=> $generated@@170 ($generated@@86 $generated@@169 $generated@@171 (ite (= $generated@@168 ($generated@@80 77)) (- 0 3) $generated@@168))) (=> $generated@@170 (= ($generated@@42 $generated@@169 $generated@@171 (ite (= $generated@@168 ($generated@@80 77)) (- 0 3) $generated@@168)) $generated@@171)))) (and (and (forall (($generated@@199 T@U) ) (!  (=> (and (or (not (= $generated@@199 $generated@@30)) (not true)) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@199) $generated@@1)))) (= ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@199) ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@199)))
 :pattern ( ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@199))
)) ($generated@@41 $generated@@169 $generated@@169)) (and (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> (and (or (not (= $generated@@200 $generated@@30)) (not true)) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@200) $generated@@1)))) (or (= ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@200) $generated@@201) ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@200) $generated@@201)) ($generated@@13 ($generated@@120 $generated@@28 $generated@@45 $generated@@9 $generated@@179 $generated@@200 $generated@@201))))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@200) $generated@@201))
)) (<= (- 100 $generated@@168) $generated@@178)))) (and (=> (= (ControlFlow 0 25) 9) $generated@@197) (=> (= (ControlFlow 0 25) 24) $generated@@196)))))
(let (($generated@@202  (=> (<= 100 $generated@@180) (=> (and (= $generated@@181 ($generated@@80 0)) (= $generated@@178 (- 100 $generated@@181))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (=> $generated@@170 (= ($generated@@42 $generated@@169 $generated@@171 (ite (= $generated@@181 ($generated@@80 77)) (- 0 3) $generated@@181)) $generated@@171))) (=> (=> $generated@@170 (= ($generated@@42 $generated@@169 $generated@@171 (ite (= $generated@@181 ($generated@@80 77)) (- 0 3) $generated@@181)) $generated@@171)) (=> (= (ControlFlow 0 26) 25) $generated@@198)))))))
(let (($generated@@203  (=> (< $generated@@180 100) (=> (and (= $generated@@182 (- 100 $generated@@180)) (= $generated@@183 (+ $generated@@180 1))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (<= 0 $generated@@182) (= (- 100 $generated@@183) $generated@@182))) (=> (or (<= 0 $generated@@182) (= (- 100 $generated@@183) $generated@@182)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (< (- 100 $generated@@183) $generated@@182)) (=> (< (- 100 $generated@@183) $generated@@182) (=> (=> (<= $generated@@183 ($generated@@80 100)) ($generated@@86 $generated@@169 $generated@@171 (- 123 $generated@@183))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> $generated@@177 (<= $generated@@183 ($generated@@80 100)))) (=> (=> $generated@@177 (<= $generated@@183 ($generated@@80 100))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> $generated@@177 (= ($generated@@42 $generated@@169 $generated@@171 (- 123 $generated@@183)) $generated@@171))))))))))))))
(let (($generated@@204  (=> $generated@@177 (and (=> (= (ControlFlow 0 28) 26) $generated@@202) (=> (= (ControlFlow 0 28) 5) $generated@@203)))))
(let (($generated@@205  (=> (and (not $generated@@177) (<= $generated@@180 ($generated@@80 100))) (=> (and (and ($generated@@93 ($generated@@90 $generated@@28 $generated@@171) $generated@@29 $generated@@169) (= $generated@@184 (- 123 $generated@@180))) (and ($generated@@33 $generated@@10 ($generated@@14 $generated@@184) $generated $generated@@169) (= (ControlFlow 0 3) (- 0 2)))) (<= ($generated@@80 0) $generated@@184)))))
(let (($generated@@206  (and (=> (= (ControlFlow 0 29) 3) $generated@@205) (=> (= (ControlFlow 0 29) 28) $generated@@204))))
(let (($generated@@207 true))
(let (($generated@@208  (=> (and (and (and (and (and (not false) (and (<= 0 $generated@@180) (< $generated@@180 101))) (= $generated@@176 100)) (=> $generated@@177 (<= $generated@@180 ($generated@@80 100)))) (and (=> $generated@@177 ($generated@@86 $generated@@169 $generated@@171 (- 123 $generated@@180))) (=> $generated@@177 (= ($generated@@42 $generated@@169 $generated@@171 (- 123 $generated@@180)) $generated@@171)))) (and (and (forall (($generated@@209 T@U) ) (!  (=> (and (or (not (= $generated@@209 $generated@@30)) (not true)) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@209) $generated@@1)))) (= ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@209) ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@209)))
 :pattern ( ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@209))
)) ($generated@@41 $generated@@169 $generated@@169)) (and (forall (($generated@@210 T@U) ($generated@@211 T@U) ) (!  (=> (and (or (not (= $generated@@210 $generated@@30)) (not true)) ($generated@@13 ($generated@@74 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@210) $generated@@1)))) (or (= ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@210) $generated@@211) ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@210) $generated@@211)) ($generated@@13 ($generated@@120 $generated@@28 $generated@@45 $generated@@9 $generated@@179 $generated@@210 $generated@@211))))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@28 ($generated@@47 $generated@@45 $generated@@46) $generated@@169 $generated@@210) $generated@@211))
)) (<= (- 100 $generated@@180) $generated@@176)))) (and (=> (= (ControlFlow 0 30) 1) $generated@@207) (=> (= (ControlFlow 0 30) 29) $generated@@206)))))
(let (($generated@@212  (=> (= $generated@@179 ($generated@@121 $generated@@30 $generated@@169 $generated@@1 false)) (=> (and (= $generated@@185 ($generated@@80 0)) (= $generated@@176 (- 100 $generated@@185))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (=> $generated@@177 (<= $generated@@185 ($generated@@80 100)))) (=> (=> $generated@@177 (<= $generated@@185 ($generated@@80 100))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> $generated@@177 (= ($generated@@42 $generated@@169 $generated@@171 (- 123 $generated@@185)) $generated@@171))) (=> (=> $generated@@177 (= ($generated@@42 $generated@@169 $generated@@171 (- 123 $generated@@185)) $generated@@171)) (=> (= (ControlFlow 0 31) 30) $generated@@208)))))))))
(let (($generated@@213  (=> (and ($generated@@43 $generated@@169) ($generated@@40 $generated@@169)) (=> (and (and (or (not (= $generated@@171 $generated@@30)) (not true)) (and ($generated@@27 $generated@@28 $generated@@171 $generated@@34) ($generated@@33 $generated@@28 $generated@@171 $generated@@34 $generated@@169))) (and (= 1 $generated@@85) (= (ControlFlow 0 34) 31))) $generated@@212))))
$generated@@213)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 31) (- 32))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 19))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)