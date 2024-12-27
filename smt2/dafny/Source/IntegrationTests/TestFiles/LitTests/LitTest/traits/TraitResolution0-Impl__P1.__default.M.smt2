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
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 (T@T) Int)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 (Bool) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (Real) T@U)
(declare-fun $generated@@25 (T@U) Real)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) Bool)
(declare-fun $generated@@53 (T@U T@U) T@U)
(declare-fun $generated@@55 () T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@T T@T) T@T)
(declare-fun $generated@@61 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@62 (T@T) T@T)
(declare-fun $generated@@63 (T@T) T@T)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@91 (T@U T@U) T@U)
(declare-fun $generated@@92 (T@U) Bool)
(declare-fun $generated@@93 (T@T T@U T@U) Bool)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@103 (T@T T@U) T@U)
(declare-fun $generated@@106 (T@U) Bool)
(declare-fun $generated@@107 (T@U T@U T@U) Bool)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@156 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@161 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@169 (T@U) T@U)
(declare-fun $generated@@173 () T@T)
(declare-fun $generated@@177 (T@U T@U) Bool)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@183 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@184 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@16 $generated@@17) 0) (= ($generated@@16 $generated@@18) 1)) (= ($generated@@16 $generated@@19) 2)) (forall (($generated@@26 Bool) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Int) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Real) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15)
)
(assert (= ($generated@@32 $generated@@1) 0))
(assert (= ($generated@@33 $generated) $generated@@0))
(assert (= ($generated@@34 $generated@@1) $generated@@2))
(assert (= ($generated@@16 $generated@@36) 3))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@40 ($generated@@37 $generated@@39) $generated@@41) ($generated@@35 $generated@@36 $generated@@40 ($generated@@38 $generated@@39) $generated@@41))
 :pattern ( ($generated@@35 $generated@@36 $generated@@40 ($generated@@37 $generated@@39) $generated@@41))
 :pattern ( ($generated@@35 $generated@@36 $generated@@40 ($generated@@38 $generated@@39) $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@45 ($generated@@42 $generated@@44) $generated@@46) ($generated@@35 $generated@@36 $generated@@45 ($generated@@43 $generated@@44) $generated@@46))
 :pattern ( ($generated@@35 $generated@@36 $generated@@45 ($generated@@42 $generated@@44) $generated@@46))
 :pattern ( ($generated@@35 $generated@@36 $generated@@45 ($generated@@43 $generated@@44) $generated@@46))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@50 ($generated@@47 $generated@@49) $generated@@51) ($generated@@35 $generated@@36 $generated@@50 ($generated@@48 $generated@@49) $generated@@51))
 :pattern ( ($generated@@35 $generated@@36 $generated@@50 ($generated@@47 $generated@@49) $generated@@51))
 :pattern ( ($generated@@35 $generated@@36 $generated@@50 ($generated@@48 $generated@@49) $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ) ($generated@@52 ($generated@@48 $generated@@54) ($generated@@53 $generated@@54 $generated@@54))))
(assert  (and (and (and (and (and (and (forall (($generated@@64 T@T) ($generated@@65 T@T) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@57 $generated@@64 $generated@@65 ($generated@@61 $generated@@64 $generated@@65 $generated@@67 $generated@@68 $generated@@66) $generated@@68) $generated@@66)
 :weight 0
)) (forall (($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (or (= $generated@@73 $generated@@74) (= ($generated@@57 $generated@@69 $generated@@70 ($generated@@61 $generated@@69 $generated@@70 $generated@@72 $generated@@73 $generated@@71) $generated@@74) ($generated@@57 $generated@@69 $generated@@70 $generated@@72 $generated@@74)))
 :weight 0
))) (= ($generated@@16 $generated@@58) 4)) (= ($generated@@16 $generated@@59) 5)) (forall (($generated@@75 T@T) ($generated@@76 T@T) ) (= ($generated@@16 ($generated@@60 $generated@@75 $generated@@76)) 6))) (forall (($generated@@77 T@T) ($generated@@78 T@T) ) (! (= ($generated@@62 ($generated@@60 $generated@@77 $generated@@78)) $generated@@77)
 :pattern ( ($generated@@60 $generated@@77 $generated@@78))
))) (forall (($generated@@79 T@T) ($generated@@80 T@T) ) (! (= ($generated@@63 ($generated@@60 $generated@@79 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@60 $generated@@79 $generated@@80))
))))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@82 ($generated@@38 $generated@@81) $generated@@83)  (or (= $generated@@82 $generated@@55) ($generated@@21 ($generated@@56 $generated@@17 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@83 $generated@@82) $generated@@1)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@82 ($generated@@38 $generated@@81) $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@85 ($generated@@43 $generated@@84) $generated@@86)  (or (= $generated@@85 $generated@@55) ($generated@@21 ($generated@@56 $generated@@17 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@86 $generated@@85) $generated@@1)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@85 ($generated@@43 $generated@@84) $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@88 ($generated@@48 $generated@@87) $generated@@89)  (or (= $generated@@88 $generated@@55) ($generated@@21 ($generated@@56 $generated@@17 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@89 $generated@@88) $generated@@1)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@88 ($generated@@48 $generated@@87) $generated@@89))
)))
(assert (= ($generated@@32 $generated@@90) 0))
(assert (= ($generated@@91 $generated@@5 $generated@@15) $generated@@90))
(assert  (not ($generated@@92 $generated@@90)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> ($generated@@93 $generated@@36 $generated@@95 ($generated@@43 $generated@@94)) ($generated@@93 $generated@@36 $generated@@95 ($generated@@38 $generated@@94)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@95 ($generated@@43 $generated@@94)))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> ($generated@@96 $generated@@98 ($generated@@43 $generated@@97)) ($generated@@96 $generated@@98 ($generated@@38 $generated@@97)))
 :pattern ( ($generated@@96 $generated@@98 ($generated@@43 $generated@@97)))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> ($generated@@93 $generated@@36 $generated@@100 ($generated@@48 $generated@@99)) ($generated@@93 $generated@@36 $generated@@100 ($generated@@43 ($generated@@53 $generated@@99 $generated@@99))))
 :pattern ( ($generated@@93 $generated@@36 $generated@@100 ($generated@@48 $generated@@99)))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> ($generated@@96 $generated@@102 ($generated@@48 $generated@@101)) ($generated@@96 $generated@@102 ($generated@@43 ($generated@@53 $generated@@101 $generated@@101))))
 :pattern ( ($generated@@96 $generated@@102 ($generated@@48 $generated@@101)))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@103 $generated@@105 ($generated@@56 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@56 $generated@@105 $generated@@104))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> (and (and ($generated@@106 $generated@@109) (and (or (not (= $generated@@110 $generated@@55)) (not true)) ($generated@@93 $generated@@36 $generated@@110 ($generated@@38 $generated@@108)))) ($generated@@21 ($generated@@56 $generated@@17 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@109 $generated@@110) $generated@@1)))) ($generated@@107 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@109 $generated@@110) $generated@@90) $generated@@108 $generated@@109))
 :pattern ( ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@109 $generated@@110) $generated@@90) ($generated@@38 $generated@@108))
)))
(assert ($generated@@92 $generated@@1))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@112 ($generated@@37 $generated@@111))  (and ($generated@@93 $generated@@36 $generated@@112 ($generated@@38 $generated@@111)) (or (not (= $generated@@112 $generated@@55)) (not true))))
 :pattern ( ($generated@@93 $generated@@36 $generated@@112 ($generated@@37 $generated@@111)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@112 ($generated@@38 $generated@@111)))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@114 ($generated@@42 $generated@@113))  (and ($generated@@93 $generated@@36 $generated@@114 ($generated@@43 $generated@@113)) (or (not (= $generated@@114 $generated@@55)) (not true))))
 :pattern ( ($generated@@93 $generated@@36 $generated@@114 ($generated@@42 $generated@@113)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@114 ($generated@@43 $generated@@113)))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@116 ($generated@@47 $generated@@115))  (and ($generated@@93 $generated@@36 $generated@@116 ($generated@@48 $generated@@115)) (or (not (= $generated@@116 $generated@@55)) (not true))))
 :pattern ( ($generated@@93 $generated@@36 $generated@@116 ($generated@@47 $generated@@115)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@116 ($generated@@48 $generated@@115)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@T) ) (! (= ($generated@@107 ($generated@@103 $generated@@120 $generated@@117) $generated@@118 $generated@@119) ($generated@@35 $generated@@120 $generated@@117 $generated@@118 $generated@@119))
 :pattern ( ($generated@@107 ($generated@@103 $generated@@120 $generated@@117) $generated@@118 $generated@@119))
)))
(assert (forall (($generated@@122 T@U) ) (!  (and (= ($generated@@33 ($generated@@47 $generated@@122)) $generated@@4) (= ($generated@@121 ($generated@@47 $generated@@122)) $generated@@12))
 :pattern ( ($generated@@47 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (!  (and (= ($generated@@33 ($generated@@38 $generated@@123)) $generated@@6) (= ($generated@@121 ($generated@@38 $generated@@123)) $generated@@13))
 :pattern ( ($generated@@38 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ) (!  (and (= ($generated@@33 ($generated@@37 $generated@@124)) $generated@@7) (= ($generated@@121 ($generated@@37 $generated@@124)) $generated@@13))
 :pattern ( ($generated@@37 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ) (!  (and (= ($generated@@33 ($generated@@43 $generated@@125)) $generated@@8) (= ($generated@@121 ($generated@@43 $generated@@125)) $generated@@14))
 :pattern ( ($generated@@43 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ) (!  (and (= ($generated@@33 ($generated@@42 $generated@@126)) $generated@@9) (= ($generated@@121 ($generated@@42 $generated@@126)) $generated@@14))
 :pattern ( ($generated@@42 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ) (!  (and (= ($generated@@33 ($generated@@48 $generated@@127)) $generated@@10) (= ($generated@@121 ($generated@@48 $generated@@127)) $generated@@12))
 :pattern ( ($generated@@48 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (and ($generated@@106 $generated@@129) (and (or (not (= $generated@@130 $generated@@55)) (not true)) ($generated@@93 $generated@@36 $generated@@130 ($generated@@38 $generated@@128)))) ($generated@@96 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@129 $generated@@130) $generated@@90) $generated@@128))
 :pattern ( ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@129 $generated@@130) $generated@@90) ($generated@@38 $generated@@128))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@133 ($generated@@48 $generated@@132))  (or (= $generated@@133 $generated@@55) (= ($generated@@131 $generated@@133) ($generated@@48 $generated@@132))))
 :pattern ( ($generated@@93 $generated@@36 $generated@@133 ($generated@@48 $generated@@132)))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and ($generated@@107 $generated@@135 ($generated@@43 $generated@@134) $generated@@136) ($generated@@106 $generated@@136)) ($generated@@107 $generated@@135 ($generated@@38 $generated@@134) $generated@@136))
 :pattern ( ($generated@@107 $generated@@135 ($generated@@43 $generated@@134) $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> ($generated@@35 $generated@@36 $generated@@138 ($generated@@43 $generated@@137) $generated@@139) ($generated@@35 $generated@@36 $generated@@138 ($generated@@38 $generated@@137) $generated@@139))
 :pattern ( ($generated@@35 $generated@@36 $generated@@138 ($generated@@43 $generated@@137) $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> (and ($generated@@107 $generated@@141 ($generated@@48 $generated@@140) $generated@@142) ($generated@@106 $generated@@142)) ($generated@@107 $generated@@141 ($generated@@43 ($generated@@53 $generated@@140 $generated@@140)) $generated@@142))
 :pattern ( ($generated@@107 $generated@@141 ($generated@@48 $generated@@140) $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> ($generated@@35 $generated@@36 $generated@@144 ($generated@@48 $generated@@143) $generated@@145) ($generated@@35 $generated@@36 $generated@@144 ($generated@@43 ($generated@@53 $generated@@143 $generated@@143)) $generated@@145))
 :pattern ( ($generated@@35 $generated@@36 $generated@@144 ($generated@@48 $generated@@143) $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (and (= ($generated@@146 ($generated@@91 $generated@@147 $generated@@148)) $generated@@147) (= ($generated@@34 ($generated@@91 $generated@@147 $generated@@148)) $generated@@148))
 :pattern ( ($generated@@91 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (!  (=> ($generated@@96 $generated@@149 $generated) (and (= ($generated@@103 $generated@@18 ($generated@@56 $generated@@18 $generated@@149)) $generated@@149) ($generated@@93 $generated@@18 ($generated@@56 $generated@@18 $generated@@149) $generated)))
 :pattern ( ($generated@@96 $generated@@149 $generated))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@T) ) (! (= ($generated@@96 ($generated@@103 $generated@@152 $generated@@150) $generated@@151) ($generated@@93 $generated@@152 $generated@@150 $generated@@151))
 :pattern ( ($generated@@96 ($generated@@103 $generated@@152 $generated@@150) $generated@@151))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@153 ($generated@@53 $generated@@154 $generated@@155)) $generated@@154)
 :pattern ( ($generated@@53 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@156 ($generated@@53 $generated@@157 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@53 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ) (! (= ($generated@@159 ($generated@@47 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@47 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! (= ($generated@@161 ($generated@@38 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@38 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ) (! (= ($generated@@163 ($generated@@37 $generated@@164)) $generated@@164)
 :pattern ( ($generated@@37 $generated@@164))
)))
(assert (forall (($generated@@166 T@U) ) (! (= ($generated@@165 ($generated@@43 $generated@@166)) $generated@@166)
 :pattern ( ($generated@@43 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@167 ($generated@@42 $generated@@168)) $generated@@168)
 :pattern ( ($generated@@42 $generated@@168))
)))
(assert (forall (($generated@@170 T@U) ) (! (= ($generated@@169 ($generated@@48 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@48 $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@T) ) (! (= ($generated@@56 $generated@@172 ($generated@@103 $generated@@172 $generated@@171)) $generated@@171)
 :pattern ( ($generated@@103 $generated@@172 $generated@@171))
)))
(assert (= ($generated@@16 $generated@@173) 7))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> ($generated@@96 $generated@@176 ($generated@@53 $generated@@174 $generated@@175)) (and (= ($generated@@103 $generated@@173 ($generated@@56 $generated@@173 $generated@@176)) $generated@@176) ($generated@@93 $generated@@173 ($generated@@56 $generated@@173 $generated@@176) ($generated@@53 $generated@@174 $generated@@175))))
 :pattern ( ($generated@@96 $generated@@176 ($generated@@53 $generated@@174 $generated@@175)))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@179 ($generated@@38 $generated@@178))  (or (= $generated@@179 $generated@@55) ($generated@@177 ($generated@@131 $generated@@179) $generated@@178)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@179 ($generated@@38 $generated@@178)))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@93 $generated@@36 $generated@@181 ($generated@@43 $generated@@180))  (or (= $generated@@181 $generated@@55) ($generated@@52 ($generated@@131 $generated@@181) $generated@@180)))
 :pattern ( ($generated@@93 $generated@@36 $generated@@181 ($generated@@43 $generated@@180)))
)))
(assert  (and (forall (($generated@@185 T@T) ($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@182 $generated@@185 $generated@@186 $generated@@187 ($generated@@184 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@190 $generated@@191 $generated@@188) $generated@@190 $generated@@191) $generated@@188)
 :weight 0
)) (and (forall (($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@T) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (or (= $generated@@197 $generated@@199) (= ($generated@@182 $generated@@192 $generated@@193 $generated@@194 ($generated@@184 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@197 $generated@@198 $generated@@195) $generated@@199 $generated@@200) ($generated@@182 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@199 $generated@@200)))
 :weight 0
)) (forall (($generated@@201 T@T) ($generated@@202 T@T) ($generated@@203 T@T) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (!  (or (= $generated@@207 $generated@@209) (= ($generated@@182 $generated@@201 $generated@@202 $generated@@203 ($generated@@184 $generated@@201 $generated@@202 $generated@@203 $generated@@205 $generated@@206 $generated@@207 $generated@@204) $generated@@208 $generated@@209) ($generated@@182 $generated@@201 $generated@@202 $generated@@203 $generated@@205 $generated@@208 $generated@@209)))
 :weight 0
)))))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 Bool) ($generated@@214 T@U) ($generated@@215 T@U) ) (! (= ($generated@@21 ($generated@@182 $generated@@36 $generated@@58 $generated@@17 ($generated@@183 $generated@@210 $generated@@211 $generated@@212 $generated@@213) $generated@@214 $generated@@215))  (=> (and (or (not (= $generated@@214 $generated@@210)) (not true)) ($generated@@21 ($generated@@56 $generated@@17 ($generated@@57 $generated@@58 $generated@@59 ($generated@@57 $generated@@36 ($generated@@60 $generated@@58 $generated@@59) $generated@@211 $generated@@214) $generated@@212)))) $generated@@213))
 :pattern ( ($generated@@182 $generated@@36 $generated@@58 $generated@@17 ($generated@@183 $generated@@210 $generated@@211 $generated@@212 $generated@@213) $generated@@214 $generated@@215))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ) (!  (and (= ($generated@@33 ($generated@@53 $generated@@216 $generated@@217)) $generated@@3) (= ($generated@@121 ($generated@@53 $generated@@216 $generated@@217)) $generated@@11))
 :pattern ( ($generated@@53 $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ) (!  (=> ($generated@@96 $generated@@219 ($generated@@47 $generated@@218)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@219)) $generated@@219) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@219) ($generated@@47 $generated@@218))))
 :pattern ( ($generated@@96 $generated@@219 ($generated@@47 $generated@@218)))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> ($generated@@96 $generated@@221 ($generated@@38 $generated@@220)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@221)) $generated@@221) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@221) ($generated@@38 $generated@@220))))
 :pattern ( ($generated@@96 $generated@@221 ($generated@@38 $generated@@220)))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (!  (=> ($generated@@96 $generated@@223 ($generated@@37 $generated@@222)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@223)) $generated@@223) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@223) ($generated@@37 $generated@@222))))
 :pattern ( ($generated@@96 $generated@@223 ($generated@@37 $generated@@222)))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> ($generated@@96 $generated@@225 ($generated@@43 $generated@@224)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@225)) $generated@@225) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@225) ($generated@@43 $generated@@224))))
 :pattern ( ($generated@@96 $generated@@225 ($generated@@43 $generated@@224)))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@U) ) (!  (=> ($generated@@96 $generated@@227 ($generated@@42 $generated@@226)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@227)) $generated@@227) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@227) ($generated@@42 $generated@@226))))
 :pattern ( ($generated@@96 $generated@@227 ($generated@@42 $generated@@226)))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (!  (=> ($generated@@96 $generated@@229 ($generated@@48 $generated@@228)) (and (= ($generated@@103 $generated@@36 ($generated@@56 $generated@@36 $generated@@229)) $generated@@229) ($generated@@93 $generated@@36 ($generated@@56 $generated@@36 $generated@@229) ($generated@@48 $generated@@228))))
 :pattern ( ($generated@@96 $generated@@229 ($generated@@48 $generated@@228)))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ) (! ($generated@@35 $generated@@18 $generated@@231 $generated $generated@@230)
 :pattern ( ($generated@@35 $generated@@18 $generated@@231 $generated $generated@@230))
)))
(assert (forall (($generated@@232 T@U) ) (! ($generated@@93 $generated@@18 $generated@@232 $generated)
 :pattern ( ($generated@@93 $generated@@18 $generated@@232 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@233 () T@U)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 (T@U) Bool)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@239  (=> (and (= $generated@@233 ($generated@@183 $generated@@55 $generated@@234 $generated@@1 false)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= $generated@@235 $generated@@55)) (not true)))))
(let (($generated@@240  (=> (and (and ($generated@@106 $generated@@234) ($generated@@236 $generated@@234)) (and ($generated@@93 $generated@@36 $generated@@235 ($generated@@47 $generated)) ($generated@@35 $generated@@36 $generated@@235 ($generated@@47 $generated) $generated@@234))) (=> (and (and (and ($generated@@93 $generated@@173 $generated@@237 ($generated@@53 $generated $generated)) ($generated@@35 $generated@@173 $generated@@237 ($generated@@53 $generated $generated) $generated@@234)) true) (and (= 1 $generated@@238) (= (ControlFlow 0 3) 2))) $generated@@239))))
$generated@@240)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)