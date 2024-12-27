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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@32 (Real) Real)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@U T@U) T@U)
(declare-fun $generated@@42 (T@U T@U) Int)
(declare-fun $generated@@46 (T@U) Int)
(declare-fun $generated@@49 (T@U T@U T@U) Bool)
(declare-fun $generated@@54 (T@U T@U) T@U)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@84 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@85 () T@T)
(declare-fun $generated@@86 () T@T)
(declare-fun $generated@@87 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@88 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@89 () T@T)
(declare-fun $generated@@90 (T@T T@T) T@T)
(declare-fun $generated@@91 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@92 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@93 (T@T) T@T)
(declare-fun $generated@@94 (T@T) T@T)
(declare-fun $generated@@145 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! ($generated@@22 $generated@@8 $generated@@24 $generated@@23 $generated@@25)
 :pattern ( ($generated@@22 $generated@@8 $generated@@24 $generated@@23 $generated@@25))
)))
(assert (= ($generated@@5 $generated@@27) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)) ($generated@@29 $generated@@30))
 :pattern ( ($generated@@26 $generated@@27 $generated@@30 ($generated@@28 $generated@@31)))
)))
(assert (forall (($generated@@33 Real) ) (! (= ($generated@@32 $generated@@33) $generated@@33)
 :pattern ( ($generated@@32 $generated@@33))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@34 $generated@@36 $generated@@35) $generated@@35)
 :pattern ( ($generated@@34 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@T) ) (! (= ($generated@@38 $generated@@40 ($generated@@37 $generated@@40 $generated@@39)) $generated@@39)
 :pattern ( ($generated@@37 $generated@@40 $generated@@39))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (or (not (= $generated@@44 $generated@@45)) (not true)) (= ($generated@@42 $generated@@43 $generated@@45) ($generated@@42 ($generated@@41 $generated@@43 $generated@@44) $generated@@45)))
 :pattern ( ($generated@@41 $generated@@43 $generated@@44) ($generated@@42 $generated@@43 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@46 ($generated@@41 $generated@@47 $generated@@48)) (+ ($generated@@46 $generated@@47) 1))
 :pattern ( ($generated@@46 ($generated@@41 $generated@@47 $generated@@48)))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@49 ($generated@@38 $generated@@53 $generated@@50) $generated@@51 $generated@@52) ($generated@@22 $generated@@53 $generated@@50 $generated@@51 $generated@@52))
 :pattern ( ($generated@@49 ($generated@@38 $generated@@53 $generated@@50) $generated@@51 $generated@@52))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@46 ($generated@@54 $generated@@55 $generated@@56)) (+ ($generated@@46 $generated@@55) ($generated@@46 $generated@@56)))
 :pattern ( ($generated@@46 ($generated@@54 $generated@@55 $generated@@56)))
)))
(assert (forall (($generated@@58 T@U) ) (!  (=> ($generated@@57 $generated@@58 $generated@@23) (and (= ($generated@@38 $generated@@8 ($generated@@37 $generated@@8 $generated@@58)) $generated@@58) ($generated@@26 $generated@@8 ($generated@@37 $generated@@8 $generated@@58) $generated@@23)))
 :pattern ( ($generated@@57 $generated@@58 $generated@@23))
)))
(assert (forall (($generated@@59 T@U) ) (! (= ($generated@@26 $generated@@8 $generated@@59 $generated@@23)  (or (= ($generated@@14 $generated@@59) ($generated@@32 3.14)) (= ($generated@@14 $generated@@59) ($generated@@32 1.618))))
 :pattern ( ($generated@@26 $generated@@8 $generated@@59 $generated@@23))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@60 ($generated@@28 $generated@@61)) (forall (($generated@@62 T@U) ) (!  (=> (< 0 ($generated@@42 $generated@@60 $generated@@62)) ($generated@@57 $generated@@62 $generated@@61))
 :pattern ( ($generated@@42 $generated@@60 $generated@@62))
)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@60 ($generated@@28 $generated@@61)))
)))
(assert (forall (($generated@@63 T@U) ) (!  (=> ($generated@@57 $generated@@63 $generated) (and (= ($generated@@38 $generated@@8 ($generated@@37 $generated@@8 $generated@@63)) $generated@@63) ($generated@@26 $generated@@8 ($generated@@37 $generated@@8 $generated@@63) $generated)))
 :pattern ( ($generated@@57 $generated@@63 $generated))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@57 ($generated@@38 $generated@@66 $generated@@64) $generated@@65) ($generated@@26 $generated@@66 $generated@@64 $generated@@65))
 :pattern ( ($generated@@57 ($generated@@38 $generated@@66 $generated@@64) $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@29 $generated@@67) (forall (($generated@@68 T@U) ) (!  (and (<= 0 ($generated@@42 $generated@@67 $generated@@68)) (<= ($generated@@42 $generated@@67 $generated@@68) ($generated@@46 $generated@@67)))
 :pattern ( ($generated@@42 $generated@@67 $generated@@68))
)))
 :pattern ( ($generated@@29 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (! (<= 0 ($generated@@46 $generated@@69))
 :pattern ( ($generated@@46 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ) (! (= ($generated@@42 $generated@@70 $generated@@71) 0)
 :pattern ( ($generated@@42 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@42 ($generated@@41 $generated@@72 $generated@@73) $generated@@73) (+ ($generated@@42 $generated@@72 $generated@@73) 1))
 :pattern ( ($generated@@41 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ) (! (= ($generated@@74 ($generated@@28 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@28 $generated@@75))
)))
(assert (forall (($generated@@76 T@U) ) (! (= ($generated@@21 ($generated@@28 $generated@@76)) $generated@@1)
 :pattern ( ($generated@@28 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@37 $generated@@78 ($generated@@38 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@38 $generated@@78 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ) (!  (and (= (= ($generated@@46 $generated@@79) 0) (= $generated@@79 $generated@@70)) (=> (or (not (= ($generated@@46 $generated@@79) 0)) (not true)) (exists (($generated@@80 T@U) ) (! (< 0 ($generated@@42 $generated@@79 $generated@@80))
 :pattern ( ($generated@@42 $generated@@79 $generated@@80))
))))
 :pattern ( ($generated@@46 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@42 ($generated@@54 $generated@@81 $generated@@82) $generated@@83) (+ ($generated@@42 $generated@@81 $generated@@83) ($generated@@42 $generated@@82 $generated@@83)))
 :pattern ( ($generated@@42 ($generated@@54 $generated@@81 $generated@@82) $generated@@83))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@84 $generated@@95 $generated@@96 $generated@@97 ($generated@@91 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@101 $generated@@98) $generated@@100 $generated@@101) $generated@@98)
 :weight 0
)) (and (forall (($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (or (= $generated@@107 $generated@@109) (= ($generated@@84 $generated@@102 $generated@@103 $generated@@104 ($generated@@91 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@108 $generated@@105) $generated@@109 $generated@@110) ($generated@@84 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@109 $generated@@110)))
 :weight 0
)) (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (or (= $generated@@117 $generated@@119) (= ($generated@@84 $generated@@111 $generated@@112 $generated@@113 ($generated@@91 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@116 $generated@@117 $generated@@114) $generated@@118 $generated@@119) ($generated@@84 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@118 $generated@@119)))
 :weight 0
)))) (= ($generated@@5 $generated@@85) 4)) (= ($generated@@5 $generated@@86) 5)) (forall (($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@88 $generated@@120 $generated@@121 ($generated@@92 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@122) $generated@@124) $generated@@122)
 :weight 0
))) (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (or (= $generated@@129 $generated@@130) (= ($generated@@88 $generated@@125 $generated@@126 ($generated@@92 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@127) $generated@@130) ($generated@@88 $generated@@125 $generated@@126 $generated@@128 $generated@@130)))
 :weight 0
))) (= ($generated@@5 $generated@@89) 6)) (forall (($generated@@131 T@T) ($generated@@132 T@T) ) (= ($generated@@5 ($generated@@90 $generated@@131 $generated@@132)) 7))) (forall (($generated@@133 T@T) ($generated@@134 T@T) ) (! (= ($generated@@93 ($generated@@90 $generated@@133 $generated@@134)) $generated@@133)
 :pattern ( ($generated@@90 $generated@@133 $generated@@134))
))) (forall (($generated@@135 T@T) ($generated@@136 T@T) ) (! (= ($generated@@94 ($generated@@90 $generated@@135 $generated@@136)) $generated@@136)
 :pattern ( ($generated@@90 $generated@@135 $generated@@136))
))))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 Bool) ($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@10 ($generated@@84 $generated@@85 $generated@@86 $generated@@6 ($generated@@87 $generated@@137 $generated@@138 $generated@@139 $generated@@140) $generated@@141 $generated@@142))  (=> (and (or (not (= $generated@@141 $generated@@137)) (not true)) ($generated@@10 ($generated@@37 $generated@@6 ($generated@@88 $generated@@86 $generated@@89 ($generated@@88 $generated@@85 ($generated@@90 $generated@@86 $generated@@89) $generated@@138 $generated@@141) $generated@@139)))) $generated@@140))
 :pattern ( ($generated@@84 $generated@@85 $generated@@86 $generated@@6 ($generated@@87 $generated@@137 $generated@@138 $generated@@139 $generated@@140) $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@57 $generated@@143 ($generated@@28 $generated@@144)) (and (= ($generated@@38 $generated@@27 ($generated@@37 $generated@@27 $generated@@143)) $generated@@143) ($generated@@26 $generated@@27 ($generated@@37 $generated@@27 $generated@@143) ($generated@@28 $generated@@144))))
 :pattern ( ($generated@@57 $generated@@143 ($generated@@28 $generated@@144)))
)))
(assert (= ($generated@@21 $generated@@23) $generated@@3))
(assert (= ($generated@@145 $generated@@23) $generated@@4))
(assert (forall (($generated@@146 Real) ) (! (= ($generated@@38 $generated@@8 ($generated@@13 ($generated@@32 $generated@@146))) ($generated@@34 $generated@@89 ($generated@@38 $generated@@8 ($generated@@13 $generated@@146))))
 :pattern ( ($generated@@38 $generated@@8 ($generated@@13 ($generated@@32 $generated@@146))))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@38 $generated@@148 ($generated@@34 $generated@@148 $generated@@147)) ($generated@@34 $generated@@89 ($generated@@38 $generated@@148 $generated@@147)))
 :pattern ( ($generated@@38 $generated@@148 ($generated@@34 $generated@@148 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (< 0 ($generated@@42 $generated@@149 $generated@@151)) (< 0 ($generated@@42 ($generated@@41 $generated@@149 $generated@@150) $generated@@151)))
 :pattern ( ($generated@@41 $generated@@149 $generated@@150) ($generated@@42 $generated@@149 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= (< 0 ($generated@@42 ($generated@@41 $generated@@152 $generated@@153) $generated@@154))  (or (= $generated@@154 $generated@@153) (< 0 ($generated@@42 $generated@@152 $generated@@154))))
 :pattern ( ($generated@@42 ($generated@@41 $generated@@152 $generated@@153) $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@22 $generated@@27 $generated@@155 ($generated@@28 $generated@@156) $generated@@157) (forall (($generated@@158 T@U) ) (!  (=> (< 0 ($generated@@42 $generated@@155 $generated@@158)) ($generated@@49 $generated@@158 $generated@@156 $generated@@157))
 :pattern ( ($generated@@42 $generated@@155 $generated@@158))
)))
 :pattern ( ($generated@@22 $generated@@27 $generated@@155 ($generated@@28 $generated@@156) $generated@@157))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (! ($generated@@22 $generated@@8 $generated@@160 $generated $generated@@159)
 :pattern ( ($generated@@22 $generated@@8 $generated@@160 $generated $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ) (! ($generated@@26 $generated@@8 $generated@@161 $generated)
 :pattern ( ($generated@@26 $generated@@8 $generated@@161 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () Real)
(declare-fun $generated@@168 () Real)
(declare-fun $generated@@169 (T@U) Bool)
(declare-fun $generated@@170 (T@U) Bool)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () Int)
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
 (=> (= (ControlFlow 0 0) 12) (let (($generated@@180  (=> (and (and (and (and (and (and (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true)))) (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true))))) (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true))))) (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true))))) (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true))))) (not ($generated@@10 ($generated@@34 $generated@@6 ($generated@@9 true))))) (= (ControlFlow 0 10) (- 0 9))) false)))
(let (($generated@@181 true))
(let (($generated@@182 true))
(let (($generated@@183  (=> (= (ControlFlow 0 6) (- 0 5)) ($generated@@26 $generated@@27 ($generated@@54 $generated@@162 $generated@@163) ($generated@@28 $generated@@23)))))
(let (($generated@@184  (=> (= (ControlFlow 0 4) (- 0 3)) ($generated@@26 $generated@@27 ($generated@@54 $generated@@163 $generated@@162) ($generated@@28 $generated@@23)))))
(let (($generated@@185 true))
(let (($generated@@186 true))
(let (($generated@@187  (=> (= $generated@@164 ($generated@@87 $generated@@165 $generated@@166 $generated@@2 false)) (=> (and (= $generated@@163 ($generated@@41 $generated@@70 ($generated@@38 $generated@@8 ($generated@@13 $generated@@167)))) (= $generated@@162 ($generated@@41 $generated@@70 ($generated@@38 $generated@@8 ($generated@@13 $generated@@168))))) (and (and (and (and (and (and (=> (= (ControlFlow 0 11) 1) $generated@@186) (=> (= (ControlFlow 0 11) 2) $generated@@185)) (=> (= (ControlFlow 0 11) 4) $generated@@184)) (=> (= (ControlFlow 0 11) 6) $generated@@183)) (=> (= (ControlFlow 0 11) 7) $generated@@182)) (=> (= (ControlFlow 0 11) 8) $generated@@181)) (=> (= (ControlFlow 0 11) 10) $generated@@180))))))
(let (($generated@@188  (=> (and (and (and ($generated@@169 $generated@@166) ($generated@@170 $generated@@166)) (or (= $generated@@168 ($generated@@32 3.14)) (= $generated@@168 ($generated@@32 1.618)))) (and (and ($generated@@26 $generated@@27 $generated@@171 ($generated@@28 $generated)) ($generated@@22 $generated@@27 $generated@@171 ($generated@@28 $generated) $generated@@166)) true)) (=> (and (and (and (and (and ($generated@@26 $generated@@27 $generated@@172 ($generated@@28 $generated@@23)) ($generated@@22 $generated@@27 $generated@@172 ($generated@@28 $generated@@23) $generated@@166)) true) (and (and ($generated@@26 $generated@@27 $generated@@173 ($generated@@28 $generated)) ($generated@@22 $generated@@27 $generated@@173 ($generated@@28 $generated) $generated@@166)) true)) (and (and (and ($generated@@26 $generated@@27 $generated@@174 ($generated@@28 $generated)) ($generated@@22 $generated@@27 $generated@@174 ($generated@@28 $generated) $generated@@166)) true) (and (and ($generated@@26 $generated@@27 $generated@@175 ($generated@@28 $generated@@23)) ($generated@@22 $generated@@27 $generated@@175 ($generated@@28 $generated@@23) $generated@@166)) true))) (and (and (and (and ($generated@@26 $generated@@27 $generated@@176 ($generated@@28 $generated@@23)) ($generated@@22 $generated@@27 $generated@@176 ($generated@@28 $generated@@23) $generated@@166)) true) (and (and ($generated@@26 $generated@@27 $generated@@177 ($generated@@28 $generated)) ($generated@@22 $generated@@27 $generated@@177 ($generated@@28 $generated) $generated@@166)) true)) (and (and (and ($generated@@26 $generated@@27 $generated@@178 ($generated@@28 $generated)) ($generated@@22 $generated@@27 $generated@@178 ($generated@@28 $generated) $generated@@166)) true) (and (= 1 $generated@@179) (= (ControlFlow 0 12) 11))))) $generated@@187))))
$generated@@188))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
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