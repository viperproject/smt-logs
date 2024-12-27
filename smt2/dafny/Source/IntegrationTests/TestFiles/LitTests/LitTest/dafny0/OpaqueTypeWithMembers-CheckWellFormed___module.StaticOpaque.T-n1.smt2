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
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T) T@T)
(declare-fun $generated@@41 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@43 (T@T) T@T)
(declare-fun $generated@@64 (T@U T@U) Bool)
(declare-fun $generated@@68 (Int) Int)
(declare-fun $generated@@70 (T@T T@U) T@U)
(declare-fun $generated@@73 (Int) T@U)
(declare-fun $generated@@74 (T@U) Bool)
(declare-fun $generated@@75 (T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@83 () Int)
(declare-fun $generated@@84 () Int)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@109 (T@U T@U) Bool)
(declare-fun $generated@@116 (T@U) Int)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@131 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@132 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@133 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@21 $generated@@1) 0))
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (!  (=> (and (or (not (= $generated@@29 $generated@@25)) (not true)) (= ($generated@@26 $generated@@29) ($generated@@24 $generated@@28))) ($generated@@27 $generated@@7 ($generated@@11 ($generated@@23 $generated@@29)) $generated))
 :pattern ( ($generated@@23 $generated@@29) ($generated@@24 $generated@@28))
)))
(assert (= ($generated@@5 $generated@@31) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@33) $generated@@35) ($generated@@30 $generated@@31 $generated@@34 ($generated@@24 $generated@@33) $generated@@35))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@33) $generated@@35))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 ($generated@@24 $generated@@33) $generated@@35))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@37 $generated@@44 $generated@@45 ($generated@@41 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@48) $generated@@46)
 :weight 0
)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (!  (or (= $generated@@53 $generated@@54) (= ($generated@@37 $generated@@49 $generated@@50 ($generated@@41 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@54) ($generated@@37 $generated@@49 $generated@@50 $generated@@52 $generated@@54)))
 :weight 0
))) (= ($generated@@5 $generated@@38) 4)) (= ($generated@@5 $generated@@39) 5)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (= ($generated@@5 ($generated@@40 $generated@@55 $generated@@56)) 6))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@42 ($generated@@40 $generated@@57 $generated@@58)) $generated@@57)
 :pattern ( ($generated@@40 $generated@@57 $generated@@58))
))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@43 ($generated@@40 $generated@@59 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@40 $generated@@59 $generated@@60))
))))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@62 ($generated@@24 $generated@@61) $generated@@63)  (or (= $generated@@62 $generated@@25) ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@63 $generated@@62) $generated@@1)))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@62 ($generated@@24 $generated@@61) $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@64 $generated@@65 $generated@@66) (forall (($generated@@67 T@U) ) (!  (=> ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@65 $generated@@67) $generated@@1))) ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@66 $generated@@67) $generated@@1))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@66 $generated@@67) $generated@@1))
)))
 :pattern ( ($generated@@64 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@69 Int) ) (! (= ($generated@@68 $generated@@69) $generated@@69)
 :pattern ( ($generated@@68 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@T) ) (! (= ($generated@@70 $generated@@72 $generated@@71) $generated@@71)
 :pattern ( ($generated@@70 $generated@@72 $generated@@71))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 Int) ) (!  (=> (and (and (and ($generated@@74 $generated@@77) (and (or (not (= $generated@@78 $generated@@25)) (not true)) (= ($generated@@26 $generated@@78) ($generated@@24 $generated@@76)))) (and (<= 0 $generated@@79) (< $generated@@79 ($generated@@23 $generated@@78)))) ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@77 $generated@@78) $generated@@1)))) ($generated@@75 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@77 $generated@@78) ($generated@@73 $generated@@79)) $generated@@76 $generated@@77))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@77 $generated@@78) ($generated@@73 $generated@@79)) ($generated@@24 $generated@@76))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 ($generated@@36 $generated@@82 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@36 $generated@@82 $generated@@81))
)))
(assert  (=> (< 0 $generated@@83) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@74 $generated@@85) ($generated@@30 $generated@@7 ($generated@@11 $generated@@84) $generated $generated@@85))
 :pattern ( ($generated@@30 $generated@@7 ($generated@@11 $generated@@84) $generated $generated@@85))
))))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@27 $generated@@31 $generated@@87 ($generated@@32 $generated@@86))  (and ($generated@@27 $generated@@31 $generated@@87 ($generated@@24 $generated@@86)) (or (not (= $generated@@87 $generated@@25)) (not true))))
 :pattern ( ($generated@@27 $generated@@31 $generated@@87 ($generated@@32 $generated@@86)))
 :pattern ( ($generated@@27 $generated@@31 $generated@@87 ($generated@@24 $generated@@86)))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@75 ($generated@@80 $generated@@91 $generated@@88) $generated@@89 $generated@@90) ($generated@@30 $generated@@91 $generated@@88 $generated@@89 $generated@@90))
 :pattern ( ($generated@@75 ($generated@@80 $generated@@91 $generated@@88) $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> ($generated@@64 $generated@@92 $generated@@93) (=> ($generated@@75 $generated@@94 $generated@@95 $generated@@92) ($generated@@75 $generated@@94 $generated@@95 $generated@@93)))
 :pattern ( ($generated@@64 $generated@@92 $generated@@93) ($generated@@75 $generated@@94 $generated@@95 $generated@@92))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@T) ) (!  (=> ($generated@@64 $generated@@96 $generated@@97) (=> ($generated@@30 $generated@@100 $generated@@98 $generated@@99 $generated@@96) ($generated@@30 $generated@@100 $generated@@98 $generated@@99 $generated@@97)))
 :pattern ( ($generated@@64 $generated@@96 $generated@@97) ($generated@@30 $generated@@100 $generated@@98 $generated@@99 $generated@@96))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@22 ($generated@@24 $generated@@102)) $generated@@2) (= ($generated@@101 ($generated@@24 $generated@@102)) $generated@@4))
 :pattern ( ($generated@@24 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (!  (and (= ($generated@@22 ($generated@@32 $generated@@103)) $generated@@3) (= ($generated@@101 ($generated@@32 $generated@@103)) $generated@@4))
 :pattern ( ($generated@@32 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@27 $generated@@31 $generated@@105 ($generated@@24 $generated@@104))  (or (= $generated@@105 $generated@@25) (= ($generated@@26 $generated@@105) ($generated@@24 $generated@@104))))
 :pattern ( ($generated@@27 $generated@@31 $generated@@105 ($generated@@24 $generated@@104)))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (or (not (= $generated@@106 $generated@@108)) (not true)) (=> (and ($generated@@64 $generated@@106 $generated@@107) ($generated@@64 $generated@@107 $generated@@108)) ($generated@@64 $generated@@106 $generated@@108)))
 :pattern ( ($generated@@64 $generated@@106 $generated@@107) ($generated@@64 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@109 $generated@@110 $generated) (and (= ($generated@@80 $generated@@7 ($generated@@36 $generated@@7 $generated@@110)) $generated@@110) ($generated@@27 $generated@@7 ($generated@@36 $generated@@7 $generated@@110) $generated)))
 :pattern ( ($generated@@109 $generated@@110 $generated))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@109 ($generated@@80 $generated@@113 $generated@@111) $generated@@112) ($generated@@27 $generated@@113 $generated@@111 $generated@@112))
 :pattern ( ($generated@@109 ($generated@@80 $generated@@113 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ) (! (<= 0 ($generated@@23 $generated@@114))
 :pattern ( ($generated@@23 $generated@@114))
)))
(assert  (=> (< 0 $generated@@83) ($generated@@27 $generated@@7 ($generated@@11 $generated@@84) $generated)))
(assert (forall (($generated@@115 Int) ) (! (= ($generated@@21 ($generated@@73 $generated@@115)) 1)
 :pattern ( ($generated@@73 $generated@@115))
)))
(assert (forall (($generated@@117 Int) ) (! (= ($generated@@116 ($generated@@73 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@73 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@24 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@24 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@120 ($generated@@32 $generated@@121)) $generated@@121)
 :pattern ( ($generated@@32 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@T) ) (! (= ($generated@@36 $generated@@123 ($generated@@80 $generated@@123 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@80 $generated@@123 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and (and ($generated@@74 $generated@@125) (and (or (not (= $generated@@126 $generated@@25)) (not true)) (= ($generated@@26 $generated@@126) ($generated@@24 $generated@@124)))) ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@125 $generated@@126) $generated@@1)))) ($generated@@30 $generated@@7 ($generated@@11 ($generated@@23 $generated@@126)) $generated $generated@@125))
 :pattern ( ($generated@@23 $generated@@126) ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@125 $generated@@126) $generated@@1)) ($generated@@24 $generated@@124))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 Int) ) (!  (=> (and (and ($generated@@74 $generated@@128) (and (or (not (= $generated@@129 $generated@@25)) (not true)) (= ($generated@@26 $generated@@129) ($generated@@24 $generated@@127)))) (and (<= 0 $generated@@130) (< $generated@@130 ($generated@@23 $generated@@129)))) ($generated@@109 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@128 $generated@@129) ($generated@@73 $generated@@130)) $generated@@127))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@128 $generated@@129) ($generated@@73 $generated@@130)) ($generated@@24 $generated@@127))
)))
(assert  (and (forall (($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@131 $generated@@134 $generated@@135 $generated@@136 ($generated@@133 $generated@@134 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@140 $generated@@137) $generated@@139 $generated@@140) $generated@@137)
 :weight 0
)) (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (or (= $generated@@146 $generated@@148) (= ($generated@@131 $generated@@141 $generated@@142 $generated@@143 ($generated@@133 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@148 $generated@@149) ($generated@@131 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@148 $generated@@149)))
 :weight 0
)) (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@156 $generated@@158) (= ($generated@@131 $generated@@150 $generated@@151 $generated@@152 ($generated@@133 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@131 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)))))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 Bool) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@10 ($generated@@131 $generated@@31 $generated@@38 $generated@@6 ($generated@@132 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))  (=> (and (or (not (= $generated@@163 $generated@@159)) (not true)) ($generated@@10 ($generated@@36 $generated@@6 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@160 $generated@@163) $generated@@161)))) $generated@@162))
 :pattern ( ($generated@@131 $generated@@31 $generated@@38 $generated@@6 ($generated@@132 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@109 $generated@@166 ($generated@@24 $generated@@165)) (and (= ($generated@@80 $generated@@31 ($generated@@36 $generated@@31 $generated@@166)) $generated@@166) ($generated@@27 $generated@@31 ($generated@@36 $generated@@31 $generated@@166) ($generated@@24 $generated@@165))))
 :pattern ( ($generated@@109 $generated@@166 ($generated@@24 $generated@@165)))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> ($generated@@109 $generated@@168 ($generated@@32 $generated@@167)) (and (= ($generated@@80 $generated@@31 ($generated@@36 $generated@@31 $generated@@168)) $generated@@168) ($generated@@27 $generated@@31 ($generated@@36 $generated@@31 $generated@@168) ($generated@@32 $generated@@167))))
 :pattern ( ($generated@@109 $generated@@168 ($generated@@32 $generated@@167)))
)))
(assert (forall (($generated@@169 Int) ) (! (= ($generated@@80 $generated@@7 ($generated@@11 ($generated@@68 $generated@@169))) ($generated@@70 $generated@@39 ($generated@@80 $generated@@7 ($generated@@11 $generated@@169))))
 :pattern ( ($generated@@80 $generated@@7 ($generated@@11 ($generated@@68 $generated@@169))))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@80 $generated@@171 ($generated@@70 $generated@@171 $generated@@170)) ($generated@@70 $generated@@39 ($generated@@80 $generated@@171 $generated@@170)))
 :pattern ( ($generated@@80 $generated@@171 ($generated@@70 $generated@@171 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (! ($generated@@30 $generated@@7 $generated@@173 $generated $generated@@172)
 :pattern ( ($generated@@30 $generated@@7 $generated@@173 $generated $generated@@172))
)))
(assert (forall (($generated@@174 T@U) ) (! ($generated@@27 $generated@@7 $generated@@174 $generated)
 :pattern ( ($generated@@27 $generated@@7 $generated@@174 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 (T@U) Bool)
(declare-fun $generated@@180 () T@U)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@181  (=> (= $generated@@175 ($generated@@132 $generated@@25 $generated@@176 $generated@@1 false)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $generated@@177 $generated@@25)) (not true))) (=> (or (not (= $generated@@177 $generated@@25)) (not true)) (=> (= ($generated@@23 $generated@@177) ($generated@@68 100)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $generated@@177 $generated@@25)) (not true))) (=> (or (not (= $generated@@177 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@30 $generated@@31 $generated@@177 ($generated@@24 $generated) $generated@@178)) (=> ($generated@@30 $generated@@31 $generated@@177 ($generated@@24 $generated) $generated@@178) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 ($generated@@68 3)) (< ($generated@@68 3) ($generated@@23 $generated@@177)))) (=> (and (<= 0 ($generated@@68 3)) (< ($generated@@68 3) ($generated@@23 $generated@@177))) (=> (= (+ $generated@@84 ($generated@@12 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@31 ($generated@@40 $generated@@38 $generated@@39) $generated@@178 $generated@@177) ($generated@@73 ($generated@@68 3)))))) $generated@@84) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@177 $generated@@25)) (not true))) (=> (or (not (= $generated@@177 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@30 $generated@@31 $generated@@177 ($generated@@24 $generated) $generated@@178)) (=> ($generated@@30 $generated@@31 $generated@@177 ($generated@@24 $generated) $generated@@178) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 ($generated@@68 3)) (< ($generated@@68 3) ($generated@@23 $generated@@177)))))))))))))))))))))
(let (($generated@@182  (=> (and ($generated@@74 $generated@@178) ($generated@@179 $generated@@178)) (=> (and (and (and ($generated@@27 $generated@@31 $generated@@177 ($generated@@32 $generated)) ($generated@@30 $generated@@31 $generated@@177 ($generated@@32 $generated) $generated@@180)) (= 2 $generated@@83)) (and (and (= $generated@@180 $generated@@178) (and ($generated@@64 $generated@@180 $generated@@176) ($generated@@74 $generated@@176))) (and ($generated@@30 $generated@@31 $generated@@177 ($generated@@32 $generated) $generated@@180) (= (ControlFlow 0 9) 2)))) $generated@@181))))
$generated@@182)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)