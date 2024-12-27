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
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@36 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 (T@U T@U) T@U)
(declare-fun $generated@@42 (T@U) Bool)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@T T@T) T@T)
(declare-fun $generated@@48 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@70 (T@U T@U) Bool)
(declare-fun $generated@@74 (Int) Int)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 () T@T)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@101 (T@U T@U) Bool)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@117 (T@U Int) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@127 (Int) T@U)
(declare-fun $generated@@128 (T@U) Int)
(declare-fun $generated@@130 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@131 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@169 (T@U) T@U)
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
(assert (= ($generated@@25 $generated@@2) 0))
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (= ($generated@@27 $generated@@2) $generated@@3))
(assert (= ($generated@@28 $generated@@29) 0))
(assert (= ($generated@@9 $generated@@31) 3))
(assert (forall (($generated@@35 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@35 $generated@@32)  (or (= $generated@@35 $generated@@33) (= ($generated@@34 $generated@@35) $generated@@32)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@35 $generated@@32))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@36 $generated@@31 $generated@@38 $generated@@37 $generated@@39) ($generated@@36 $generated@@31 $generated@@38 $generated@@32 $generated@@39))
 :pattern ( ($generated@@36 $generated@@31 $generated@@38 $generated@@37 $generated@@39))
 :pattern ( ($generated@@36 $generated@@31 $generated@@38 $generated@@32 $generated@@39))
)))
(assert (= ($generated@@25 $generated@@40) 0))
(assert (= ($generated@@41 $generated@@4 $generated@@8) $generated@@40))
(assert  (not ($generated@@42 $generated@@40)))
(assert  (and (and (and (and (and (and (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@44 $generated@@51 $generated@@52 ($generated@@48 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@55) $generated@@53)
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (or (= $generated@@60 $generated@@61) (= ($generated@@44 $generated@@56 $generated@@57 ($generated@@48 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@61) ($generated@@44 $generated@@56 $generated@@57 $generated@@59 $generated@@61)))
 :weight 0
))) (= ($generated@@9 $generated@@45) 4)) (= ($generated@@9 $generated@@46) 5)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (= ($generated@@9 ($generated@@47 $generated@@62 $generated@@63)) 6))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@49 ($generated@@47 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@47 $generated@@64 $generated@@65))
))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@50 ($generated@@47 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@47 $generated@@66 $generated@@67))
))))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@36 $generated@@31 $generated@@68 $generated@@32 $generated@@69)  (or (= $generated@@68 $generated@@33) ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@69 $generated@@68) $generated@@2)))))
 :pattern ( ($generated@@36 $generated@@31 $generated@@68 $generated@@32 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (!  (=> ($generated@@70 $generated@@71 $generated@@72) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@71 $generated@@73) $generated@@2))) ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@72 $generated@@73) $generated@@2))))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@72 $generated@@73) $generated@@2))
)))
 :pattern ( ($generated@@70 $generated@@71 $generated@@72))
)))
(assert (forall (($generated@@75 Int) ) (! (= ($generated@@74 $generated@@75) $generated@@75)
 :pattern ( ($generated@@74 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@76 $generated@@78 $generated@@77) $generated@@77)
 :pattern ( ($generated@@76 $generated@@78 $generated@@77))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@79 $generated@@81 ($generated@@43 $generated@@81 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@43 $generated@@81 $generated@@80))
)))
(assert ($generated@@42 $generated@@2))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@82 ($generated@@79 $generated@@86 $generated@@83) $generated@@84 $generated@@85) ($generated@@36 $generated@@86 $generated@@83 $generated@@84 $generated@@85))
 :pattern ( ($generated@@82 ($generated@@79 $generated@@86 $generated@@83) $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (=> ($generated@@70 $generated@@87 $generated@@88) (=> ($generated@@82 $generated@@89 $generated@@90 $generated@@87) ($generated@@82 $generated@@89 $generated@@90 $generated@@88)))
 :pattern ( ($generated@@70 $generated@@87 $generated@@88) ($generated@@82 $generated@@89 $generated@@90 $generated@@87))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@T) ) (!  (=> ($generated@@70 $generated@@91 $generated@@92) (=> ($generated@@36 $generated@@95 $generated@@93 $generated@@94 $generated@@91) ($generated@@36 $generated@@95 $generated@@93 $generated@@94 $generated@@92)))
 :pattern ( ($generated@@70 $generated@@91 $generated@@92) ($generated@@36 $generated@@95 $generated@@93 $generated@@94 $generated@@91))
)))
(assert (= ($generated@@9 $generated@@96) 7))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> (and (and ($generated@@97 $generated@@99) (and (or (not (= $generated@@100 $generated@@33)) (not true)) (= ($generated@@34 $generated@@100) $generated@@32))) ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@99 $generated@@100) $generated@@2)))) ($generated@@36 $generated@@96 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@99 $generated@@100) $generated@@40)) ($generated@@98 $generated) $generated@@99))
 :pattern ( ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@99 $generated@@100) $generated@@40)))
)))
(assert (forall (($generated@@102 T@U) ) (!  (=> ($generated@@101 $generated@@102 $generated@@32) (and (= ($generated@@79 $generated@@31 ($generated@@43 $generated@@31 $generated@@102)) $generated@@102) ($generated@@30 $generated@@31 ($generated@@43 $generated@@31 $generated@@102) $generated@@32)))
 :pattern ( ($generated@@101 $generated@@102 $generated@@32))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@101 $generated@@103 $generated@@37) (and (= ($generated@@79 $generated@@31 ($generated@@43 $generated@@31 $generated@@103)) $generated@@103) ($generated@@30 $generated@@31 ($generated@@43 $generated@@31 $generated@@103) $generated@@37)))
 :pattern ( ($generated@@101 $generated@@103 $generated@@37))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@104 $generated@@37)  (and ($generated@@30 $generated@@31 $generated@@104 $generated@@32) (or (not (= $generated@@104 $generated@@33)) (not true))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@104 $generated@@37))
 :pattern ( ($generated@@30 $generated@@31 $generated@@104 $generated@@32))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> (or (not (= $generated@@105 $generated@@107)) (not true)) (=> (and ($generated@@70 $generated@@105 $generated@@106) ($generated@@70 $generated@@106 $generated@@107)) ($generated@@70 $generated@@105 $generated@@107)))
 :pattern ( ($generated@@70 $generated@@105 $generated@@106) ($generated@@70 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (!  (and (= ($generated@@108 ($generated@@41 $generated@@109 $generated@@110)) $generated@@109) (= ($generated@@27 ($generated@@41 $generated@@109 $generated@@110)) $generated@@110))
 :pattern ( ($generated@@41 $generated@@109 $generated@@110))
)))
(assert (= ($generated@@9 $generated@@111) 8))
(assert (forall (($generated@@112 T@U) ) (!  (=> ($generated@@101 $generated@@112 $generated) (and (= ($generated@@79 $generated@@111 ($generated@@43 $generated@@111 $generated@@112)) $generated@@112) ($generated@@30 $generated@@111 ($generated@@43 $generated@@111 $generated@@112) $generated)))
 :pattern ( ($generated@@101 $generated@@112 $generated))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@T) ) (! (= ($generated@@101 ($generated@@79 $generated@@115 $generated@@113) $generated@@114) ($generated@@30 $generated@@115 $generated@@113 $generated@@114))
 :pattern ( ($generated@@101 ($generated@@79 $generated@@115 $generated@@113) $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ) (! (<= 0 ($generated@@28 $generated@@116))
 :pattern ( ($generated@@28 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@36 $generated@@96 $generated@@118 ($generated@@98 $generated@@119) $generated@@120) (forall (($generated@@121 Int) ) (!  (=> (and (<= 0 $generated@@121) (< $generated@@121 ($generated@@28 $generated@@118))) ($generated@@82 ($generated@@117 $generated@@118 $generated@@121) $generated@@119 $generated@@120))
 :pattern ( ($generated@@117 $generated@@118 $generated@@121))
)))
 :pattern ( ($generated@@36 $generated@@96 $generated@@118 ($generated@@98 $generated@@119) $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@122 ($generated@@98 $generated@@123)) $generated@@123)
 :pattern ( ($generated@@98 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@26 ($generated@@98 $generated@@124)) $generated@@1)
 :pattern ( ($generated@@98 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@43 $generated@@126 ($generated@@79 $generated@@126 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@79 $generated@@126 $generated@@125))
)))
(assert (forall (($generated@@129 Int) ) (!  (=> (or (and (<= 0 $generated@@129) (< $generated@@129 55296)) (and (<= 57344 $generated@@129) (< $generated@@129 1114112))) (= ($generated@@128 ($generated@@127 $generated@@129)) $generated@@129))
 :pattern ( ($generated@@127 $generated@@129))
)))
(assert  (and (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@130 $generated@@133 $generated@@134 $generated@@135 ($generated@@132 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@138 $generated@@139) $generated@@136)
 :weight 0
)) (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@130 $generated@@140 $generated@@141 $generated@@142 ($generated@@132 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@147 $generated@@148) ($generated@@130 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@147 $generated@@148)))
 :weight 0
)) (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@130 $generated@@149 $generated@@150 $generated@@151 ($generated@@132 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@130 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)))))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 Bool) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@14 ($generated@@130 $generated@@31 $generated@@45 $generated@@10 ($generated@@131 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))  (=> (and (or (not (= $generated@@162 $generated@@158)) (not true)) ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@159 $generated@@162) $generated@@160)))) $generated@@161))
 :pattern ( ($generated@@130 $generated@@31 $generated@@45 $generated@@10 ($generated@@131 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> ($generated@@101 $generated@@164 ($generated@@98 $generated@@165)) (and (= ($generated@@79 $generated@@96 ($generated@@43 $generated@@96 $generated@@164)) $generated@@164) ($generated@@30 $generated@@96 ($generated@@43 $generated@@96 $generated@@164) ($generated@@98 $generated@@165))))
 :pattern ( ($generated@@101 $generated@@164 ($generated@@98 $generated@@165)))
)))
(assert (forall (($generated@@166 T@U) ) (!  (and (= ($generated@@127 ($generated@@128 $generated@@166)) $generated@@166) (or (and (<= 0 ($generated@@128 $generated@@166)) (< ($generated@@128 $generated@@166) 55296)) (and (<= 57344 ($generated@@128 $generated@@166)) (< ($generated@@128 $generated@@166) 1114112))))
 :pattern ( ($generated@@128 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> (and ($generated@@97 $generated@@167) (and (or (not (= $generated@@168 $generated@@33)) (not true)) (= ($generated@@34 $generated@@168) $generated@@32))) ($generated@@30 $generated@@96 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@167 $generated@@168) $generated@@40)) ($generated@@98 $generated)))
 :pattern ( ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@167 $generated@@168) $generated@@40)))
)))
(assert (= ($generated@@26 $generated@@32) $generated@@5))
(assert (= ($generated@@169 $generated@@32) $generated@@7))
(assert (= ($generated@@26 $generated@@37) $generated@@6))
(assert (= ($generated@@169 $generated@@37) $generated@@7))
(assert (forall (($generated@@170 Int) ) (! (= ($generated@@79 $generated@@11 ($generated@@15 ($generated@@74 $generated@@170))) ($generated@@76 $generated@@46 ($generated@@79 $generated@@11 ($generated@@15 $generated@@170))))
 :pattern ( ($generated@@79 $generated@@11 ($generated@@15 ($generated@@74 $generated@@170))))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@T) ) (! (= ($generated@@79 $generated@@172 ($generated@@76 $generated@@172 $generated@@171)) ($generated@@76 $generated@@46 ($generated@@79 $generated@@172 $generated@@171)))
 :pattern ( ($generated@@79 $generated@@172 ($generated@@76 $generated@@172 $generated@@171)))
)))
(assert (forall (($generated@@173 T@U) ) (!  (=> (= ($generated@@28 $generated@@173) 0) (= $generated@@173 $generated@@29))
 :pattern ( ($generated@@28 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (! ($generated@@36 $generated@@111 $generated@@175 $generated $generated@@174)
 :pattern ( ($generated@@36 $generated@@111 $generated@@175 $generated $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@30 $generated@@96 $generated@@176 ($generated@@98 $generated@@177)) (forall (($generated@@178 Int) ) (!  (=> (and (<= 0 $generated@@178) (< $generated@@178 ($generated@@28 $generated@@176))) ($generated@@101 ($generated@@117 $generated@@176 $generated@@178) $generated@@177))
 :pattern ( ($generated@@117 $generated@@176 $generated@@178))
)))
 :pattern ( ($generated@@30 $generated@@96 $generated@@176 ($generated@@98 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ) (! ($generated@@30 $generated@@111 $generated@@179 $generated)
 :pattern ( ($generated@@30 $generated@@111 $generated@@179 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 () Int)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 (T@U) Bool)
(declare-fun $generated@@187 () Int)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@188 true))
(let (($generated@@189  (=> (and (= ($generated@@43 $generated@@111 ($generated@@117 $generated@@180 $generated@@181)) ($generated@@43 $generated@@111 ($generated@@117 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40)) $generated@@181))) (= (ControlFlow 0 6) 2)) $generated@@188)))
(let (($generated@@190  (=> (or (not (= ($generated@@43 $generated@@111 ($generated@@117 $generated@@180 $generated@@181)) ($generated@@43 $generated@@111 ($generated@@117 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40)) $generated@@181)))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40)))))) (=> (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40))))) (=> (= (ControlFlow 0 4) 2) $generated@@188))))))
(let (($generated@@191  (=> (and (<= ($generated@@74 0) $generated@@181) (< $generated@@181 ($generated@@28 $generated@@180))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 $generated@@180)))) (=> (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 $generated@@180))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40)))))) (=> (and (<= 0 $generated@@181) (< $generated@@181 ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@183) $generated@@40))))) (and (=> (= (ControlFlow 0 7) 4) $generated@@190) (=> (= (ControlFlow 0 7) 6) $generated@@189)))))))))
(let (($generated@@192  (=> (and (not (and (<= ($generated@@74 0) $generated@@181) (< $generated@@181 ($generated@@28 $generated@@180)))) (= (ControlFlow 0 3) 2)) $generated@@188)))
(let (($generated@@193  (=> (< $generated@@181 ($generated@@74 0)) (and (=> (= (ControlFlow 0 11) 7) $generated@@191) (=> (= (ControlFlow 0 11) 3) $generated@@192)))))
(let (($generated@@194  (=> (<= ($generated@@74 0) $generated@@181) (and (=> (= (ControlFlow 0 10) 7) $generated@@191) (=> (= (ControlFlow 0 10) 3) $generated@@192)))))
(let (($generated@@195  (and (=> (= (ControlFlow 0 12) 10) $generated@@194) (=> (= (ControlFlow 0 12) 11) $generated@@193))))
(let (($generated@@196 true))
(let (($generated@@197  (=> (= $generated@@184 ($generated@@131 $generated@@33 $generated@@185 $generated@@2 false)) (=> (and (= ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@185 $generated@@183) $generated@@40))) ($generated@@74 1)) (= ($generated@@28 ($generated@@43 $generated@@96 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@185 $generated@@183) $generated@@40))) ($generated@@28 $generated@@180))) (=> (and (and ($generated@@97 $generated@@182) ($generated@@186 $generated@@182)) (and (forall (($generated@@198 T@U) ) (!  (=> (and (or (not (= $generated@@198 $generated@@33)) (not true)) ($generated@@14 ($generated@@43 $generated@@10 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@185 $generated@@198) $generated@@2)))) (= ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@198) ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@185 $generated@@198)))
 :pattern ( ($generated@@44 $generated@@31 ($generated@@47 $generated@@45 $generated@@46) $generated@@182 $generated@@198))
)) ($generated@@70 $generated@@185 $generated@@182))) (and (=> (= (ControlFlow 0 13) 12) $generated@@195) (=> (= (ControlFlow 0 13) 1) $generated@@196)))))))
(let (($generated@@199  (=> (and (and (and ($generated@@97 $generated@@185) ($generated@@186 $generated@@185)) (and (or (not (= $generated@@183 $generated@@33)) (not true)) (and ($generated@@30 $generated@@31 $generated@@183 $generated@@37) ($generated@@36 $generated@@31 $generated@@183 $generated@@37 $generated@@185)))) (and (and ($generated@@30 $generated@@96 $generated@@180 ($generated@@98 $generated)) ($generated@@36 $generated@@96 $generated@@180 ($generated@@98 $generated) $generated@@185)) (and (= 0 $generated@@187) (= (ControlFlow 0 14) 13)))) $generated@@197)))
$generated@@199))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)