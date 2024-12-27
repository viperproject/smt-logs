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
(declare-fun $generated@@26 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@U T@U) T@U)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 (T@T T@T) T@T)
(declare-fun $generated@@47 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@73 (Int) Int)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@86 (T@U) Bool)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@100 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
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
(assert (= ($generated@@24 $generated) 0))
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (! ($generated@@26 $generated@@10 $generated@@28 $generated@@27 $generated@@29)
 :pattern ( ($generated@@26 $generated@@10 $generated@@28 $generated@@27 $generated@@29))
)))
(assert (= ($generated@@8 $generated@@31) 3))
(assert (forall (($generated@@35 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@35 $generated@@32)  (or (= $generated@@35 $generated@@33) (= ($generated@@34 $generated@@35) $generated@@32)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@35 $generated@@32))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@26 $generated@@31 $generated@@37 $generated@@36 $generated@@38) ($generated@@26 $generated@@31 $generated@@37 $generated@@32 $generated@@38))
 :pattern ( ($generated@@26 $generated@@31 $generated@@37 $generated@@36 $generated@@38))
 :pattern ( ($generated@@26 $generated@@31 $generated@@37 $generated@@32 $generated@@38))
)))
(assert (= ($generated@@24 $generated@@39) 0))
(assert (= ($generated@@40 $generated@@3 $generated@@7) $generated@@39))
(assert  (not ($generated@@41 $generated@@39)))
(assert  (and (and (and (and (and (and (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@43 $generated@@50 $generated@@51 ($generated@@47 $generated@@50 $generated@@51 $generated@@53 $generated@@54 $generated@@52) $generated@@54) $generated@@52)
 :weight 0
)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (or (= $generated@@59 $generated@@60) (= ($generated@@43 $generated@@55 $generated@@56 ($generated@@47 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@60) ($generated@@43 $generated@@55 $generated@@56 $generated@@58 $generated@@60)))
 :weight 0
))) (= ($generated@@8 $generated@@44) 4)) (= ($generated@@8 $generated@@45) 5)) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (= ($generated@@8 ($generated@@46 $generated@@61 $generated@@62)) 6))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@48 ($generated@@46 $generated@@63 $generated@@64)) $generated@@63)
 :pattern ( ($generated@@46 $generated@@63 $generated@@64))
))) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (! (= ($generated@@49 ($generated@@46 $generated@@65 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@46 $generated@@65 $generated@@66))
))))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@26 $generated@@31 $generated@@67 $generated@@32 $generated@@68)  (or (= $generated@@67 $generated@@33) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@68 $generated@@67) $generated)))))
 :pattern ( ($generated@@26 $generated@@31 $generated@@67 $generated@@32 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@69 $generated@@70 $generated@@71) (forall (($generated@@72 T@U) ) (!  (=> ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@70 $generated@@72) $generated))) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@71 $generated@@72) $generated))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@71 $generated@@72) $generated))
)))
 :pattern ( ($generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@73 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 ($generated@@42 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@42 $generated@@80 $generated@@79))
)))
(assert ($generated@@41 $generated))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@T) ) (!  (=> ($generated@@69 $generated@@81 $generated@@82) (=> ($generated@@26 $generated@@85 $generated@@83 $generated@@84 $generated@@81) ($generated@@26 $generated@@85 $generated@@83 $generated@@84 $generated@@82)))
 :pattern ( ($generated@@69 $generated@@81 $generated@@82) ($generated@@26 $generated@@85 $generated@@83 $generated@@84 $generated@@81))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (and ($generated@@86 $generated@@87) (and (or (not (= $generated@@88 $generated@@33)) (not true)) (= ($generated@@34 $generated@@88) $generated@@32))) ($generated@@30 $generated@@10 ($generated@@42 $generated@@10 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@87 $generated@@88) $generated@@39)) $generated@@27))
 :pattern ( ($generated@@42 $generated@@10 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@87 $generated@@88) $generated@@39)))
)))
(assert (forall (($generated@@89 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@89 $generated@@36)  (and ($generated@@30 $generated@@31 $generated@@89 $generated@@32) (or (not (= $generated@@89 $generated@@33)) (not true))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@89 $generated@@36))
 :pattern ( ($generated@@30 $generated@@31 $generated@@89 $generated@@32))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (and (and ($generated@@86 $generated@@90) (and (or (not (= $generated@@91 $generated@@33)) (not true)) (= ($generated@@34 $generated@@91) $generated@@32))) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@90 $generated@@91) $generated)))) ($generated@@26 $generated@@10 ($generated@@42 $generated@@10 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@90 $generated@@91) $generated@@39)) $generated@@27 $generated@@90))
 :pattern ( ($generated@@42 $generated@@10 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@90 $generated@@91) $generated@@39)))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (or (not (= $generated@@92 $generated@@94)) (not true)) (=> (and ($generated@@69 $generated@@92 $generated@@93) ($generated@@69 $generated@@93 $generated@@94)) ($generated@@69 $generated@@92 $generated@@94)))
 :pattern ( ($generated@@69 $generated@@92 $generated@@93) ($generated@@69 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (and (= ($generated@@95 ($generated@@40 $generated@@96 $generated@@97)) $generated@@96) (= ($generated@@25 ($generated@@40 $generated@@96 $generated@@97)) $generated@@97))
 :pattern ( ($generated@@40 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@42 $generated@@99 ($generated@@78 $generated@@99 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@78 $generated@@99 $generated@@98))
)))
(assert  (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@100 $generated@@103 $generated@@104 $generated@@105 ($generated@@102 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@100 $generated@@110 $generated@@111 $generated@@112 ($generated@@102 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@100 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@100 $generated@@119 $generated@@120 $generated@@121 ($generated@@102 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@100 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 Bool) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))  (=> (and (or (not (= $generated@@132 $generated@@128)) (not true)) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@129 $generated@@132) $generated@@130)))) $generated@@131))
 :pattern ( ($generated@@100 $generated@@31 $generated@@44 $generated@@9 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@86 ($generated@@47 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135 ($generated@@47 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135) $generated@@136 $generated@@137))) ($generated@@69 $generated@@134 ($generated@@47 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135 ($generated@@47 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135) $generated@@136 $generated@@137))))
 :pattern ( ($generated@@47 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135 ($generated@@47 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@134 $generated@@135) $generated@@136 $generated@@137)))
)))
(assert (= ($generated@@138 $generated@@36) $generated@@1))
(assert (= ($generated@@139 $generated@@36) $generated@@5))
(assert (= ($generated@@138 $generated@@27) $generated@@2))
(assert (= ($generated@@139 $generated@@27) $generated@@6))
(assert (= ($generated@@138 $generated@@32) $generated@@4))
(assert (= ($generated@@139 $generated@@32) $generated@@5))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@30 $generated@@10 $generated@@140 $generated@@27)  (and (<= ($generated@@73 0) ($generated@@15 $generated@@140)) (< ($generated@@15 $generated@@140) 256)))
 :pattern ( ($generated@@30 $generated@@10 $generated@@140 $generated@@27))
)))
(assert (forall (($generated@@141 Int) ) (! (= ($generated@@78 $generated@@10 ($generated@@14 ($generated@@73 $generated@@141))) ($generated@@75 $generated@@45 ($generated@@78 $generated@@10 ($generated@@14 $generated@@141))))
 :pattern ( ($generated@@78 $generated@@10 ($generated@@14 ($generated@@73 $generated@@141))))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@T) ) (! (= ($generated@@78 $generated@@143 ($generated@@75 $generated@@143 $generated@@142)) ($generated@@75 $generated@@45 ($generated@@78 $generated@@143 $generated@@142)))
 :pattern ( ($generated@@78 $generated@@143 ($generated@@75 $generated@@143 $generated@@142)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 (T@U) Bool)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 () Int)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () Int)
(declare-fun $generated@@156 () Int)
(declare-fun $generated@@157 () Int)
(declare-fun $generated@@158 () Bool)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () Bool)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () Int)
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
 (=> (= (ControlFlow 0 0) 22) (let (($generated@@163  (=> (and (or (not (= ($generated@@15 ($generated@@42 $generated@@10 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@144 $generated@@145) $generated@@39))) ($generated@@73 1))) (not true)) (= (ControlFlow 0 3) (- 0 2))) ($generated@@13 ($generated@@75 $generated@@9 ($generated@@12 false))))))
(let (($generated@@164 true))
(let (($generated@@165  (=> (= $generated@@146 ($generated@@101 $generated@@33 $generated@@147 $generated false)) (=> (and (and (or (not (= $generated@@148 $generated@@33)) (not true)) (and ($generated@@30 $generated@@31 $generated@@148 $generated@@36) ($generated@@26 $generated@@31 $generated@@148 $generated@@36 $generated@@147))) (and ($generated@@86 $generated@@149) ($generated@@150 $generated@@149))) (=> (and (and (and (or (not (= $generated@@145 $generated@@33)) (not true)) (and ($generated@@30 $generated@@31 $generated@@145 $generated@@36) ($generated@@26 $generated@@31 $generated@@145 $generated@@36 $generated@@149))) (not ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@147 $generated@@145) $generated))))) (and (forall (($generated@@166 T@U) ) (!  (=> (and (or (not (= $generated@@166 $generated@@33)) (not true)) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@147 $generated@@166) $generated)))) (= ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@166) ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@147 $generated@@166)))
 :pattern ( ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@166))
)) ($generated@@69 $generated@@147 $generated@@149))) (and (=> (= (ControlFlow 0 4) (- 0 21)) true) (and (=> (= (ControlFlow 0 4) (- 0 20)) (or (not (= $generated@@145 $generated@@33)) (not true))) (=> (or (not (= $generated@@145 $generated@@33)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 19)) true) (and (=> (= (ControlFlow 0 4) (- 0 18)) (forall (($generated@@167 T@U) ($generated@@168 T@U) )  (=> (and (and (or (not (= $generated@@167 $generated@@33)) (not true)) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@167) $generated)))) (or (= $generated@@167 $generated@@145) (= $generated@@167 $generated@@145))) ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@167 $generated@@168))))) (=> (forall (($generated@@169 T@U) ($generated@@170 T@U) )  (=> (and (and (or (not (= $generated@@169 $generated@@33)) (not true)) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@169) $generated)))) (or (= $generated@@169 $generated@@145) (= $generated@@169 $generated@@145))) ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@169 $generated@@170)))) (and (=> (= (ControlFlow 0 4) (- 0 17)) (= $generated@@145 $generated@@145)) (=> (= $generated@@145 $generated@@145) (=> (and (and ($generated@@86 $generated@@151) ($generated@@150 $generated@@151)) (and (forall (($generated@@171 T@U) ) (!  (=> (and (or (not (= $generated@@171 $generated@@33)) (not true)) ($generated@@13 ($generated@@42 $generated@@9 ($generated@@43 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@171) $generated)))) (or (= ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@151 $generated@@171) ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@149 $generated@@171)) (or (= $generated@@171 $generated@@145) (= $generated@@171 $generated@@145))))
 :pattern ( ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@151 $generated@@171))
)) ($generated@@69 $generated@@149 $generated@@151))) (and (=> (= (ControlFlow 0 4) (- 0 16)) true) (and (=> (= (ControlFlow 0 4) (- 0 15)) true) (and (=> (= (ControlFlow 0 4) (- 0 14)) (or (not (= $generated@@145 $generated@@33)) (not true))) (=> (or (not (= $generated@@145 $generated@@33)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 13)) ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@145 $generated@@39))) (=> ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@145 $generated@@39)) (=> (= $generated@@152 ($generated@@73 0)) (and (=> (= (ControlFlow 0 4) (- 0 12)) (and (<= ($generated@@73 0) $generated@@152) (< $generated@@152 256))) (=> (and (<= ($generated@@73 0) $generated@@152) (< $generated@@152 256)) (=> (= $generated@@153 ($generated@@73 0)) (=> (and (= $generated@@154 ($generated@@47 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@151 $generated@@145 ($generated@@47 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@151 $generated@@145) $generated@@39 ($generated@@78 $generated@@10 ($generated@@14 $generated@@153))))) ($generated@@86 $generated@@154)) (and (=> (= (ControlFlow 0 4) (- 0 11)) true) (and (=> (= (ControlFlow 0 4) (- 0 10)) (or (not (= $generated@@145 $generated@@33)) (not true))) (=> (or (not (= $generated@@145 $generated@@33)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 9)) ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@145 $generated@@39))) (=> ($generated@@13 ($generated@@100 $generated@@31 $generated@@44 $generated@@9 $generated@@146 $generated@@145 $generated@@39)) (=> (= $generated@@155 ($generated@@73 1)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (and (<= ($generated@@73 0) $generated@@155) (< $generated@@155 256))) (=> (and (<= ($generated@@73 0) $generated@@155) (< $generated@@155 256)) (=> (= $generated@@156 ($generated@@73 1)) (=> (and (= $generated@@144 ($generated@@47 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@154 $generated@@145 ($generated@@47 $generated@@44 $generated@@45 ($generated@@43 $generated@@31 ($generated@@46 $generated@@44 $generated@@45) $generated@@154 $generated@@145) $generated@@39 ($generated@@78 $generated@@10 ($generated@@14 $generated@@156))))) ($generated@@86 $generated@@144)) (and (=> (= (ControlFlow 0 4) (- 0 7)) true) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= $generated@@145 $generated@@33)) (not true))) (=> (or (not (= $generated@@145 $generated@@33)) (not true)) (=> (= $generated@@157 ($generated@@73 1)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= ($generated@@73 0) $generated@@157) (< $generated@@157 256))) (=> (and (<= ($generated@@73 0) $generated@@157) (< $generated@@157 256)) (and (=> (= (ControlFlow 0 4) 1) $generated@@164) (=> (= (ControlFlow 0 4) 3) $generated@@163)))))))))))))))))))))))))))))))))))))))))))
(let (($generated@@172  (=> (and (and (and ($generated@@86 $generated@@147) ($generated@@150 $generated@@147)) (and (=> $generated@@158 (and ($generated@@30 $generated@@31 $generated@@159 $generated@@36) ($generated@@26 $generated@@31 $generated@@159 $generated@@36 $generated@@147))) true)) (and (and (=> $generated@@160 (and ($generated@@30 $generated@@31 $generated@@161 $generated@@36) ($generated@@26 $generated@@31 $generated@@161 $generated@@36 $generated@@147))) true) (and (= 2 $generated@@162) (= (ControlFlow 0 22) 4)))) $generated@@165)))
$generated@@172)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)