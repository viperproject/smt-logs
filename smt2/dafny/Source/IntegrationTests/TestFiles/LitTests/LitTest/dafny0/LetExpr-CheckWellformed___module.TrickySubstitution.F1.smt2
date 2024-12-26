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
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U Int) Int)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@U Int) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 (Int) Bool)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T T@T) T@T)
(declare-fun $generated@@51 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@73 (Int) Int)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@87 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@97 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@98 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@136 (T@U) T@U)
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
(assert (= ($generated@@5 $generated@@28) 3))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 Int) ) (!  (=> (or ($generated@@25 $generated@@34 $generated@@35) (and (< 0 $generated@@22) (and ($generated@@24 $generated@@33) (and (or (not (= $generated@@34 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@34 $generated@@29) ($generated@@30 $generated@@28 $generated@@34 $generated@@29 $generated@@33)))))) (and (let (($generated@@36 $generated@@35))
($generated@@31 $generated@@36)) (= ($generated@@23 $generated@@34 $generated@@35) (let (($generated@@37 $generated@@35))
(let (($generated@@38 ($generated@@32 $generated@@37)))
$generated@@38)))))
 :pattern ( ($generated@@23 $generated@@34 $generated@@35) ($generated@@24 $generated@@33))
))))
(assert (forall (($generated@@41 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@41 $generated@@39)  (or (= $generated@@41 $generated@@26) (= ($generated@@40 $generated@@41) $generated@@39)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@41 $generated@@39))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@30 $generated@@28 $generated@@42 $generated@@29 $generated@@43) ($generated@@30 $generated@@28 $generated@@42 $generated@@39 $generated@@43))
 :pattern ( ($generated@@30 $generated@@28 $generated@@42 $generated@@29 $generated@@43))
 :pattern ( ($generated@@30 $generated@@28 $generated@@42 $generated@@39 $generated@@43))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@44 T@U) ($generated@@45 Int) ) (!  (=> (or ($generated@@25 $generated@@44 $generated@@45) (and (< 0 $generated@@22) (and (or (not (= $generated@@44 $generated@@26)) (not true)) ($generated@@27 $generated@@28 $generated@@44 $generated@@29)))) (= ($generated@@23 $generated@@44 $generated@@45) $generated@@45))
 :pattern ( ($generated@@23 $generated@@44 $generated@@45))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@47 $generated@@54 $generated@@55 ($generated@@51 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@58) $generated@@56)
 :weight 0
)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@63 $generated@@64) (= ($generated@@47 $generated@@59 $generated@@60 ($generated@@51 $generated@@59 $generated@@60 $generated@@62 $generated@@63 $generated@@61) $generated@@64) ($generated@@47 $generated@@59 $generated@@60 $generated@@62 $generated@@64)))
 :weight 0
))) (= ($generated@@5 $generated@@48) 4)) (= ($generated@@5 $generated@@49) 5)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (= ($generated@@5 ($generated@@50 $generated@@65 $generated@@66)) 6))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@52 ($generated@@50 $generated@@67 $generated@@68)) $generated@@67)
 :pattern ( ($generated@@50 $generated@@67 $generated@@68))
))) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (! (= ($generated@@53 ($generated@@50 $generated@@69 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@50 $generated@@69 $generated@@70))
))))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@30 $generated@@28 $generated@@71 $generated@@39 $generated@@72)  (or (= $generated@@71 $generated@@26) ($generated@@10 ($generated@@46 $generated@@6 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@28 ($generated@@50 $generated@@48 $generated@@49) $generated@@72 $generated@@71) $generated@@1)))))
 :pattern ( ($generated@@30 $generated@@28 $generated@@71 $generated@@39 $generated@@72))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@73 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 ($generated@@46 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@46 $generated@@80 $generated@@79))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 Int) ) (!  (=> (or ($generated@@25 $generated@@82 ($generated@@73 $generated@@83)) (and (< 0 $generated@@22) (and ($generated@@24 $generated@@81) (and (or (not (= $generated@@82 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@82 $generated@@29) ($generated@@30 $generated@@28 $generated@@82 $generated@@29 $generated@@81)))))) (and (let (($generated@@84 ($generated@@73 $generated@@83)))
($generated@@31 $generated@@84)) (= ($generated@@23 $generated@@82 ($generated@@73 $generated@@83)) (let (($generated@@85 ($generated@@73 $generated@@83)))
(let (($generated@@86 ($generated@@32 $generated@@85)))
$generated@@86)))))
 :weight 3
 :pattern ( ($generated@@23 $generated@@82 ($generated@@73 $generated@@83)) ($generated@@24 $generated@@81))
))))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@87 ($generated@@78 $generated@@91 $generated@@88) $generated@@89 $generated@@90) ($generated@@30 $generated@@91 $generated@@88 $generated@@89 $generated@@90))
 :pattern ( ($generated@@87 ($generated@@78 $generated@@91 $generated@@88) $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@92 $generated@@29)  (and ($generated@@27 $generated@@28 $generated@@92 $generated@@39) (or (not (= $generated@@92 $generated@@26)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@92 $generated@@29))
 :pattern ( ($generated@@27 $generated@@28 $generated@@92 $generated@@39))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@46 $generated@@94 ($generated@@78 $generated@@94 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@78 $generated@@94 $generated@@93))
)))
(assert (forall (($generated@@95 Int) ) (!  (=> ($generated@@31 $generated@@95) (= $generated@@95 ($generated@@32 $generated@@95)))
 :pattern ( ($generated@@32 $generated@@95))
)))
(assert  (and (forall (($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@96 $generated@@99 $generated@@100 $generated@@101 ($generated@@98 $generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@105 $generated@@102) $generated@@104 $generated@@105) $generated@@102)
 :weight 0
)) (and (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (or (= $generated@@111 $generated@@113) (= ($generated@@96 $generated@@106 $generated@@107 $generated@@108 ($generated@@98 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@111 $generated@@112 $generated@@109) $generated@@113 $generated@@114) ($generated@@96 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@113 $generated@@114)))
 :weight 0
)) (forall (($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (= $generated@@121 $generated@@123) (= ($generated@@96 $generated@@115 $generated@@116 $generated@@117 ($generated@@98 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@121 $generated@@118) $generated@@122 $generated@@123) ($generated@@96 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@122 $generated@@123)))
 :weight 0
)))))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 Bool) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@10 ($generated@@96 $generated@@28 $generated@@48 $generated@@6 ($generated@@97 $generated@@124 $generated@@125 $generated@@126 $generated@@127) $generated@@128 $generated@@129))  (=> (and (or (not (= $generated@@128 $generated@@124)) (not true)) ($generated@@10 ($generated@@46 $generated@@6 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@28 ($generated@@50 $generated@@48 $generated@@49) $generated@@125 $generated@@128) $generated@@126)))) $generated@@127))
 :pattern ( ($generated@@96 $generated@@28 $generated@@48 $generated@@6 ($generated@@97 $generated@@124 $generated@@125 $generated@@126 $generated@@127) $generated@@128 $generated@@129))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 Int) ) (!  (=> (or ($generated@@25 ($generated@@75 $generated@@28 $generated@@131) ($generated@@73 $generated@@132)) (and (< 0 $generated@@22) (and ($generated@@24 $generated@@130) (and (or (not (= $generated@@131 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@131 $generated@@29) ($generated@@30 $generated@@28 $generated@@131 $generated@@29 $generated@@130)))))) (and (let (($generated@@133 ($generated@@73 $generated@@132)))
($generated@@31 $generated@@133)) (= ($generated@@23 ($generated@@75 $generated@@28 $generated@@131) ($generated@@73 $generated@@132)) (let (($generated@@134 ($generated@@73 $generated@@132)))
(let (($generated@@135 ($generated@@32 $generated@@134)))
$generated@@135)))))
 :weight 3
 :pattern ( ($generated@@23 ($generated@@75 $generated@@28 $generated@@131) ($generated@@73 $generated@@132)) ($generated@@24 $generated@@130))
))))
(assert (= ($generated@@21 $generated@@39) $generated@@2))
(assert (= ($generated@@136 $generated@@39) $generated@@4))
(assert (= ($generated@@21 $generated@@29) $generated@@3))
(assert (= ($generated@@136 $generated@@29) $generated@@4))
(assert (forall (($generated@@137 Int) ) (! (= ($generated@@78 $generated@@7 ($generated@@11 ($generated@@73 $generated@@137))) ($generated@@75 $generated@@49 ($generated@@78 $generated@@7 ($generated@@11 $generated@@137))))
 :pattern ( ($generated@@78 $generated@@7 ($generated@@11 ($generated@@73 $generated@@137))))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@T) ) (! (= ($generated@@78 $generated@@139 ($generated@@75 $generated@@139 $generated@@138)) ($generated@@75 $generated@@49 ($generated@@78 $generated@@139 $generated@@138)))
 :pattern ( ($generated@@78 $generated@@139 ($generated@@75 $generated@@139 $generated@@138)))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (! ($generated@@30 $generated@@7 $generated@@141 $generated $generated@@140)
 :pattern ( ($generated@@30 $generated@@7 $generated@@141 $generated $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ) (! ($generated@@27 $generated@@7 $generated@@142 $generated)
 :pattern ( ($generated@@27 $generated@@7 $generated@@142 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () Int)
(declare-fun $generated@@146 () Int)
(declare-fun $generated@@147 () Int)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@151  (=> (= (ControlFlow 0 6) (- 0 5)) (= ($generated@@23 $generated@@143 $generated@@144) $generated@@144))))
(let (($generated@@152  (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (and ($generated@@27 $generated@@7 ($generated@@11 $generated@@145) $generated) (= $generated@@145 $generated@@145)) (or (and ($generated@@27 $generated@@7 ($generated@@11 ($generated@@73 0)) $generated) (= $generated@@145 ($generated@@73 0))) (exists (($generated@@153 Int) ) (= $generated@@145 $generated@@153))))) (=> (or (and ($generated@@27 $generated@@7 ($generated@@11 $generated@@145) $generated) (= $generated@@145 $generated@@145)) (or (and ($generated@@27 $generated@@7 ($generated@@11 ($generated@@73 0)) $generated) (= $generated@@145 ($generated@@73 0))) (exists (($generated@@154 Int) ) (= $generated@@145 $generated@@154)))) (=> (= $generated@@145 $generated@@146) (=> (and (and ($generated@@31 $generated@@145) (= ($generated@@23 $generated@@143 $generated@@144) $generated@@146)) (and ($generated@@27 $generated@@7 ($generated@@11 ($generated@@23 $generated@@143 $generated@@144)) $generated) (= (ControlFlow 0 7) 6))) $generated@@151))))))
(let (($generated@@155 true))
(let (($generated@@156  (=> (= $generated@@147 $generated@@144) (=> (and ($generated@@27 $generated@@7 ($generated@@11 $generated@@147) $generated) (= $generated@@145 $generated@@147)) (and (=> (= (ControlFlow 0 9) 7) $generated@@152) (=> (= (ControlFlow 0 9) 4) $generated@@155))))))
(let (($generated@@157  (=> (and ($generated@@87 ($generated@@78 $generated@@28 $generated@@143) $generated@@39 $generated@@148) ($generated@@30 $generated@@7 ($generated@@11 $generated@@144) $generated $generated@@148)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (<= 0 $generated@@144) (= $generated@@144 $generated@@144))) (=> (or (<= 0 $generated@@144) (= $generated@@144 $generated@@144)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= $generated@@143 $generated@@143) (= $generated@@144 $generated@@144)) (< $generated@@144 $generated@@144))))))))
(let (($generated@@158  (=> (= $generated@@149 ($generated@@97 $generated@@26 $generated@@148 $generated@@1 false)) (and (=> (= (ControlFlow 0 10) 2) $generated@@157) (=> (= (ControlFlow 0 10) 9) $generated@@156)))))
(let (($generated@@159  (=> (and ($generated@@24 $generated@@148) ($generated@@150 $generated@@148)) (=> (and (and (or (not (= $generated@@143 $generated@@26)) (not true)) (and ($generated@@27 $generated@@28 $generated@@143 $generated@@29) ($generated@@30 $generated@@28 $generated@@143 $generated@@29 $generated@@148))) (and (= 0 $generated@@22) (= (ControlFlow 0 11) 10))) $generated@@158))))
$generated@@159))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)