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
(declare-fun $generated@@17 () Int)
(declare-fun $generated@@18 (T@U T@U T@U Int Int T@U) Int)
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@T T@U) T@U)
(declare-fun $generated@@21 () T@T)
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@23 (T@U T@U Int Int T@U) Bool)
(declare-fun $generated@@24 (T@T T@U T@U) Bool)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U T@U) Bool)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U Int) T@U)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@50 (T@U T@U T@U) Bool)
(declare-fun $generated@@51 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@76 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@77 () T@T)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@80 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@81 (T@T T@T) T@T)
(declare-fun $generated@@82 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@83 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@84 (T@T) T@T)
(declare-fun $generated@@85 (T@T) T@T)
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
(assert (= ($generated@@1 $generated@@21) 3))
(assert  (=> (<= 0 $generated@@17) (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 Int) ($generated@@33 Int) ($generated@@34 T@U) ) (!  (=> (or ($generated@@23 $generated@@29 ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 $generated@@32) ($generated@@22 $generated@@33) $generated@@34) (and (< 0 $generated@@17) (and (and ($generated@@24 $generated@@21 $generated@@31 ($generated@@25 $generated@@29)) ($generated@@26 $generated@@34 $generated@@29)) (and (and (<= ($generated@@22 0) ($generated@@22 $generated@@32)) (<= ($generated@@22 $generated@@32) ($generated@@22 $generated@@33))) (<= ($generated@@22 $generated@@33) ($generated@@27 ($generated@@20 $generated@@21 $generated@@31))))))) (and (=> (or (not (= ($generated@@22 $generated@@32) ($generated@@22 $generated@@33))) (not true)) ($generated@@23 $generated@@29 ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 $generated@@32) ($generated@@22 (- $generated@@33 1)) $generated@@34)) (= ($generated@@18 $generated@@29 ($generated@@19 $generated@@30) ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 $generated@@32) ($generated@@22 $generated@@33) $generated@@34) (ite (= ($generated@@22 $generated@@32) ($generated@@22 $generated@@33)) 0 (+ ($generated@@18 $generated@@29 ($generated@@19 $generated@@30) ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 $generated@@32) ($generated@@22 (- $generated@@33 1)) $generated@@34) (ite (= ($generated@@28 ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 (- $generated@@33 1))) $generated@@34) 1 0))))))
 :weight 3
 :pattern ( ($generated@@18 $generated@@29 ($generated@@19 $generated@@30) ($generated@@20 $generated@@21 $generated@@31) ($generated@@22 $generated@@32) ($generated@@22 $generated@@33) $generated@@34))
))))
(assert (= ($generated@@27 $generated@@35) 0))
(assert (forall (($generated@@36 Int) ) (! (= ($generated@@22 $generated@@36) $generated@@36)
 :pattern ( ($generated@@22 $generated@@36))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@20 $generated@@38 $generated@@37) $generated@@37)
 :pattern ( ($generated@@20 $generated@@38 $generated@@37))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 ($generated@@39 $generated@@42 $generated@@41)) $generated@@41)
 :pattern ( ($generated@@39 $generated@@42 $generated@@41))
)))
(assert (= ($generated@@1 $generated@@43) 4))
(assert  (=> (<= 0 $generated@@17) (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 Int) ($generated@@48 Int) ($generated@@49 T@U) ) (!  (=> (or ($generated@@23 $generated@@44 ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 $generated@@47) ($generated@@22 $generated@@48) ($generated@@20 $generated@@43 $generated@@49)) (and (< 0 $generated@@17) (and (and ($generated@@24 $generated@@21 $generated@@46 ($generated@@25 $generated@@44)) ($generated@@26 $generated@@49 $generated@@44)) (and (and (<= ($generated@@22 0) ($generated@@22 $generated@@47)) (<= ($generated@@22 $generated@@47) ($generated@@22 $generated@@48))) (<= ($generated@@22 $generated@@48) ($generated@@27 ($generated@@20 $generated@@21 $generated@@46))))))) (and (=> (or (not (= ($generated@@22 $generated@@47) ($generated@@22 $generated@@48))) (not true)) ($generated@@23 $generated@@44 ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 $generated@@47) ($generated@@22 (- $generated@@48 1)) ($generated@@20 $generated@@43 $generated@@49))) (= ($generated@@18 $generated@@44 ($generated@@19 $generated@@45) ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 $generated@@47) ($generated@@22 $generated@@48) ($generated@@20 $generated@@43 $generated@@49)) (ite (= ($generated@@22 $generated@@47) ($generated@@22 $generated@@48)) 0 (+ ($generated@@18 $generated@@44 ($generated@@19 $generated@@45) ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 $generated@@47) ($generated@@22 (- $generated@@48 1)) ($generated@@20 $generated@@43 $generated@@49)) (ite (= ($generated@@28 ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 (- $generated@@48 1))) ($generated@@20 $generated@@43 $generated@@49)) 1 0))))))
 :weight 3
 :pattern ( ($generated@@18 $generated@@44 ($generated@@19 $generated@@45) ($generated@@20 $generated@@21 $generated@@46) ($generated@@22 $generated@@47) ($generated@@22 $generated@@48) ($generated@@20 $generated@@43 $generated@@49)))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@50 ($generated@@40 $generated@@55 $generated@@52) $generated@@53 $generated@@54) ($generated@@51 $generated@@55 $generated@@52 $generated@@53 $generated@@54))
 :pattern ( ($generated@@50 ($generated@@40 $generated@@55 $generated@@52) $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 Int) ($generated@@60 Int) ($generated@@61 T@U) ) (! (= ($generated@@18 $generated@@56 ($generated@@19 $generated@@57) $generated@@58 $generated@@59 $generated@@60 $generated@@61) ($generated@@18 $generated@@56 $generated@@57 $generated@@58 $generated@@59 $generated@@60 $generated@@61))
 :pattern ( ($generated@@18 $generated@@56 ($generated@@19 $generated@@57) $generated@@58 $generated@@59 $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@26 ($generated@@40 $generated@@64 $generated@@62) $generated@@63) ($generated@@24 $generated@@64 $generated@@62 $generated@@63))
 :pattern ( ($generated@@26 ($generated@@40 $generated@@64 $generated@@62) $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ) (! (<= 0 ($generated@@27 $generated@@65))
 :pattern ( ($generated@@27 $generated@@65))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@51 $generated@@21 $generated@@66 ($generated@@25 $generated@@67) $generated@@68) (forall (($generated@@69 Int) ) (!  (=> (and (<= 0 $generated@@69) (< $generated@@69 ($generated@@27 $generated@@66))) ($generated@@50 ($generated@@28 $generated@@66 $generated@@69) $generated@@67 $generated@@68))
 :pattern ( ($generated@@28 $generated@@66 $generated@@69))
)))
 :pattern ( ($generated@@51 $generated@@21 $generated@@66 ($generated@@25 $generated@@67) $generated@@68))
)))
(assert (forall (($generated@@71 T@U) ) (! (= ($generated@@70 ($generated@@25 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@25 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@72 ($generated@@25 $generated@@73)) $generated)
 :pattern ( ($generated@@25 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@39 $generated@@75 ($generated@@40 $generated@@75 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@40 $generated@@75 $generated@@74))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@T) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@76 $generated@@86 $generated@@87 $generated@@88 ($generated@@82 $generated@@86 $generated@@87 $generated@@88 $generated@@90 $generated@@91 $generated@@92 $generated@@89) $generated@@91 $generated@@92) $generated@@89)
 :weight 0
)) (and (forall (($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@T) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (or (= $generated@@98 $generated@@100) (= ($generated@@76 $generated@@93 $generated@@94 $generated@@95 ($generated@@82 $generated@@93 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@99 $generated@@96) $generated@@100 $generated@@101) ($generated@@76 $generated@@93 $generated@@94 $generated@@95 $generated@@97 $generated@@100 $generated@@101)))
 :weight 0
)) (forall (($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (or (= $generated@@108 $generated@@110) (= ($generated@@76 $generated@@102 $generated@@103 $generated@@104 ($generated@@82 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@108 $generated@@105) $generated@@109 $generated@@110) ($generated@@76 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@109 $generated@@110)))
 :weight 0
)))) (= ($generated@@1 $generated@@77) 5)) (= ($generated@@1 $generated@@78) 6)) (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@80 $generated@@111 $generated@@112 ($generated@@83 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@113) $generated@@115) $generated@@113)
 :weight 0
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@120 $generated@@121) (= ($generated@@80 $generated@@116 $generated@@117 ($generated@@83 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@118) $generated@@121) ($generated@@80 $generated@@116 $generated@@117 $generated@@119 $generated@@121)))
 :weight 0
))) (forall (($generated@@122 T@T) ($generated@@123 T@T) ) (= ($generated@@1 ($generated@@81 $generated@@122 $generated@@123)) 7))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (! (= ($generated@@84 ($generated@@81 $generated@@124 $generated@@125)) $generated@@124)
 :pattern ( ($generated@@81 $generated@@124 $generated@@125))
))) (forall (($generated@@126 T@T) ($generated@@127 T@T) ) (! (= ($generated@@85 ($generated@@81 $generated@@126 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@81 $generated@@126 $generated@@127))
))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 Bool) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@6 ($generated@@76 $generated@@77 $generated@@78 $generated@@2 ($generated@@79 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))  (=> (and (or (not (= $generated@@132 $generated@@128)) (not true)) ($generated@@6 ($generated@@39 $generated@@2 ($generated@@80 $generated@@78 $generated@@43 ($generated@@80 $generated@@77 ($generated@@81 $generated@@78 $generated@@43) $generated@@129 $generated@@132) $generated@@130)))) $generated@@131))
 :pattern ( ($generated@@76 $generated@@77 $generated@@78 $generated@@2 ($generated@@79 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))
)))
(assert  (=> (<= 0 $generated@@17) (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 Int) ($generated@@138 Int) ($generated@@139 T@U) ) (!  (=> (or ($generated@@23 $generated@@134 $generated@@136 $generated@@137 $generated@@138 $generated@@139) (and (< 0 $generated@@17) (and (and ($generated@@24 $generated@@21 $generated@@136 ($generated@@25 $generated@@134)) ($generated@@26 $generated@@139 $generated@@134)) (and (and (<= ($generated@@22 0) $generated@@137) (<= $generated@@137 $generated@@138)) (<= $generated@@138 ($generated@@27 $generated@@136)))))) (and (=> (or (not (= $generated@@137 $generated@@138)) (not true)) ($generated@@23 $generated@@134 $generated@@136 $generated@@137 (- $generated@@138 1) $generated@@139)) (= ($generated@@18 $generated@@134 ($generated@@19 $generated@@135) $generated@@136 $generated@@137 $generated@@138 $generated@@139) (ite (= $generated@@137 $generated@@138) 0 (+ ($generated@@18 $generated@@134 $generated@@135 $generated@@136 $generated@@137 (- $generated@@138 1) $generated@@139) (ite (= ($generated@@28 $generated@@136 (- $generated@@138 1)) $generated@@139) 1 0))))))
 :pattern ( ($generated@@18 $generated@@134 ($generated@@19 $generated@@135) $generated@@136 $generated@@137 $generated@@138 $generated@@139))
))))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> ($generated@@26 $generated@@140 ($generated@@25 $generated@@141)) (and (= ($generated@@40 $generated@@21 ($generated@@39 $generated@@21 $generated@@140)) $generated@@140) ($generated@@24 $generated@@21 ($generated@@39 $generated@@21 $generated@@140) ($generated@@25 $generated@@141))))
 :pattern ( ($generated@@26 $generated@@140 ($generated@@25 $generated@@141)))
)))
(assert (forall (($generated@@142 Int) ) (! (= ($generated@@40 $generated@@3 ($generated@@7 ($generated@@22 $generated@@142))) ($generated@@20 $generated@@43 ($generated@@40 $generated@@3 ($generated@@7 $generated@@142))))
 :pattern ( ($generated@@40 $generated@@3 ($generated@@7 ($generated@@22 $generated@@142))))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@T) ) (! (= ($generated@@40 $generated@@144 ($generated@@20 $generated@@144 $generated@@143)) ($generated@@20 $generated@@43 ($generated@@40 $generated@@144 $generated@@143)))
 :pattern ( ($generated@@40 $generated@@144 ($generated@@20 $generated@@144 $generated@@143)))
)))
(assert (forall (($generated@@145 T@U) ) (!  (=> (= ($generated@@27 $generated@@145) 0) (= $generated@@145 $generated@@35))
 :pattern ( ($generated@@27 $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@24 $generated@@21 $generated@@146 ($generated@@25 $generated@@147)) (forall (($generated@@148 Int) ) (!  (=> (and (<= 0 $generated@@148) (< $generated@@148 ($generated@@27 $generated@@146))) ($generated@@26 ($generated@@28 $generated@@146 $generated@@148) $generated@@147))
 :pattern ( ($generated@@28 $generated@@146 $generated@@148))
)))
 :pattern ( ($generated@@24 $generated@@21 $generated@@146 ($generated@@25 $generated@@147)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 (T@U) Bool)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 (T@U) Bool)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 (T@U) Int)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@163  (=> (= $generated@@149 ($generated@@79 $generated@@150 $generated@@151 $generated@@0 false)) (=> (and (and (and ($generated@@152 $generated@@153) ($generated@@154 $generated@@153)) (= $generated@@151 $generated@@153)) (and (forall (($generated@@164 T@U) ($generated@@165 Int) ($generated@@166 Int) ($generated@@167 Int) ) (!  (=> (and (and ($generated@@24 $generated@@21 $generated@@164 ($generated@@25 $generated@@155)) (and (and (and (<= ($generated@@22 0) $generated@@165) (<= $generated@@165 $generated@@166)) (<= $generated@@166 $generated@@167)) (<= $generated@@167 ($generated@@27 $generated@@164)))) (or (< ($generated@@158 $generated@@164) ($generated@@158 $generated@@159)) (and (= ($generated@@158 $generated@@164) ($generated@@158 $generated@@159)) (or (and (<= 0 $generated@@165) (< $generated@@165 $generated@@160)) (and (= $generated@@165 $generated@@160) (or (and (<= 0 $generated@@166) (< $generated@@166 $generated@@161)) (and (= $generated@@166 $generated@@161) (and (<= 0 $generated@@167) (< $generated@@167 $generated@@162))))))))) (= (+ ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@165 $generated@@166 $generated@@157) ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@166 $generated@@167 $generated@@157)) ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@165 $generated@@167 $generated@@157)))
 :pattern ( ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@165 $generated@@167 $generated@@157) ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@166 $generated@@167 $generated@@157))
 :pattern ( ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@166 $generated@@167 $generated@@157) ($generated@@18 $generated@@155 ($generated@@19 $generated@@156) $generated@@164 $generated@@165 $generated@@166 $generated@@157))
)) (= (ControlFlow 0 2) (- 0 1)))) (= (+ ($generated@@18 $generated@@155 ($generated@@19 ($generated@@19 $generated@@156)) $generated@@159 $generated@@160 $generated@@161 $generated@@157) ($generated@@18 $generated@@155 ($generated@@19 ($generated@@19 $generated@@156)) $generated@@159 $generated@@161 $generated@@162 $generated@@157)) ($generated@@18 $generated@@155 ($generated@@19 ($generated@@19 $generated@@156)) $generated@@159 $generated@@160 $generated@@162 $generated@@157))))))
(let (($generated@@168  (=> (and (and ($generated@@152 $generated@@151) ($generated@@154 $generated@@151)) (and ($generated@@24 $generated@@21 $generated@@159 ($generated@@25 $generated@@155)) ($generated@@51 $generated@@21 $generated@@159 ($generated@@25 $generated@@155) $generated@@151))) (=> (and (and (and ($generated@@26 $generated@@157 $generated@@155) ($generated@@50 $generated@@157 $generated@@155 $generated@@151)) (and (= 1 $generated@@17) (<= ($generated@@22 0) $generated@@160))) (and (and (<= $generated@@160 $generated@@161) (<= $generated@@161 $generated@@162)) (and (<= $generated@@162 ($generated@@27 $generated@@159)) (= (ControlFlow 0 3) 2)))) $generated@@163))))
$generated@@168)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)