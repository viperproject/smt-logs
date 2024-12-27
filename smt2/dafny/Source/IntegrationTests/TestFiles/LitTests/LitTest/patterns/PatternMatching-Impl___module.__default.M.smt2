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
(declare-fun $generated@@22 (T@U) Bool)
(declare-fun $generated@@23 (T@U) Bool)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@29 (Int Int) T@U)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U) Int)
(declare-fun $generated@@51 (T@U) Int)
(declare-fun $generated@@56 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@60 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@T T@T) T@T)
(declare-fun $generated@@63 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@64 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@65 (T@T) T@T)
(declare-fun $generated@@66 (T@T) T@T)
(declare-fun $generated@@115 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@116 (T@U) Bool)
(declare-fun $generated@@123 (T@U) T@U)
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
(assert (forall (($generated@@24 T@U) ) (!  (=> ($generated@@22 $generated@@24) ($generated@@23 $generated@@24))
 :pattern ( ($generated@@22 $generated@@24))
)))
(assert (= ($generated@@5 $generated@@26) 3))
(assert (forall (($generated@@28 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@28 $generated@@27) ($generated@@23 $generated@@28))
 :pattern ( ($generated@@23 $generated@@28) ($generated@@25 $generated@@26 $generated@@28 $generated@@27))
)))
(assert (forall (($generated@@30 Int) ($generated@@31 Int) ) (! (= ($generated@@25 $generated@@26 ($generated@@29 $generated@@30 $generated@@31) $generated@@27)  (and ($generated@@25 $generated@@7 ($generated@@11 $generated@@30) $generated) ($generated@@25 $generated@@7 ($generated@@11 $generated@@31) $generated)))
 :pattern ( ($generated@@25 $generated@@26 ($generated@@29 $generated@@30 $generated@@31) $generated@@27))
)))
(assert (forall (($generated@@33 Int) ) (! (= ($generated@@32 $generated@@33) $generated@@33)
 :pattern ( ($generated@@32 $generated@@33))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@34 $generated@@36 $generated@@35) $generated@@35)
 :pattern ( ($generated@@34 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ) (! (= ($generated@@23 $generated@@38) (= ($generated@@37 $generated@@38) $generated@@3))
 :pattern ( ($generated@@23 $generated@@38))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 ($generated@@39 $generated@@42 $generated@@41)) $generated@@41)
 :pattern ( ($generated@@39 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@43 T@U) ) (!  (=> ($generated@@23 $generated@@43) (exists (($generated@@44 Int) ($generated@@45 Int) ) (= $generated@@43 ($generated@@29 $generated@@44 $generated@@45))))
 :pattern ( ($generated@@23 $generated@@43))
)))
(assert (forall (($generated@@46 Int) ($generated@@47 Int) ) (! (= ($generated@@37 ($generated@@29 $generated@@46 $generated@@47)) $generated@@3)
 :pattern ( ($generated@@29 $generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 Int) ($generated@@50 Int) ) (! (= ($generated@@48 ($generated@@29 $generated@@49 $generated@@50)) $generated@@49)
 :pattern ( ($generated@@29 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@52 Int) ($generated@@53 Int) ) (! (= ($generated@@51 ($generated@@29 $generated@@52 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@29 $generated@@52 $generated@@53))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@39 $generated@@55 ($generated@@40 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@40 $generated@@55 $generated@@54))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@67 T@T) ($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@56 $generated@@67 $generated@@68 $generated@@69 ($generated@@63 $generated@@67 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@73 $generated@@70) $generated@@72 $generated@@73) $generated@@70)
 :weight 0
)) (and (forall (($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (or (= $generated@@79 $generated@@81) (= ($generated@@56 $generated@@74 $generated@@75 $generated@@76 ($generated@@63 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@80 $generated@@77) $generated@@81 $generated@@82) ($generated@@56 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@81 $generated@@82)))
 :weight 0
)) (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (or (= $generated@@89 $generated@@91) (= ($generated@@56 $generated@@83 $generated@@84 $generated@@85 ($generated@@63 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88 $generated@@89 $generated@@86) $generated@@90 $generated@@91) ($generated@@56 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@90 $generated@@91)))
 :weight 0
)))) (= ($generated@@5 $generated@@57) 4)) (= ($generated@@5 $generated@@58) 5)) (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@60 $generated@@92 $generated@@93 ($generated@@64 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@94) $generated@@96) $generated@@94)
 :weight 0
))) (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (or (= $generated@@101 $generated@@102) (= ($generated@@60 $generated@@97 $generated@@98 ($generated@@64 $generated@@97 $generated@@98 $generated@@100 $generated@@101 $generated@@99) $generated@@102) ($generated@@60 $generated@@97 $generated@@98 $generated@@100 $generated@@102)))
 :weight 0
))) (= ($generated@@5 $generated@@61) 6)) (forall (($generated@@103 T@T) ($generated@@104 T@T) ) (= ($generated@@5 ($generated@@62 $generated@@103 $generated@@104)) 7))) (forall (($generated@@105 T@T) ($generated@@106 T@T) ) (! (= ($generated@@65 ($generated@@62 $generated@@105 $generated@@106)) $generated@@105)
 :pattern ( ($generated@@62 $generated@@105 $generated@@106))
))) (forall (($generated@@107 T@T) ($generated@@108 T@T) ) (! (= ($generated@@66 ($generated@@62 $generated@@107 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@62 $generated@@107 $generated@@108))
))))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 Bool) ($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@10 ($generated@@56 $generated@@57 $generated@@58 $generated@@6 ($generated@@59 $generated@@109 $generated@@110 $generated@@111 $generated@@112) $generated@@113 $generated@@114))  (=> (and (or (not (= $generated@@113 $generated@@109)) (not true)) ($generated@@10 ($generated@@39 $generated@@6 ($generated@@60 $generated@@58 $generated@@61 ($generated@@60 $generated@@57 ($generated@@62 $generated@@58 $generated@@61) $generated@@110 $generated@@113) $generated@@111)))) $generated@@112))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58 $generated@@6 ($generated@@59 $generated@@109 $generated@@110 $generated@@111 $generated@@112) $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and ($generated@@116 $generated@@118) (and ($generated@@23 $generated@@117) ($generated@@115 $generated@@26 $generated@@117 $generated@@27 $generated@@118))) ($generated@@115 $generated@@7 ($generated@@11 ($generated@@48 $generated@@117)) $generated $generated@@118))
 :pattern ( ($generated@@115 $generated@@7 ($generated@@11 ($generated@@48 $generated@@117)) $generated $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (!  (=> (and ($generated@@116 $generated@@120) (and ($generated@@23 $generated@@119) ($generated@@115 $generated@@26 $generated@@119 $generated@@27 $generated@@120))) ($generated@@115 $generated@@7 ($generated@@11 ($generated@@51 $generated@@119)) $generated $generated@@120))
 :pattern ( ($generated@@115 $generated@@7 ($generated@@11 ($generated@@51 $generated@@119)) $generated $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> (and ($generated@@116 $generated@@122) ($generated@@25 $generated@@26 $generated@@121 $generated@@27)) ($generated@@115 $generated@@26 $generated@@121 $generated@@27 $generated@@122))
 :pattern ( ($generated@@115 $generated@@26 $generated@@121 $generated@@27 $generated@@122))
)))
(assert (= ($generated@@21 $generated@@27) $generated@@2))
(assert (= ($generated@@123 $generated@@27) $generated@@4))
(assert (forall (($generated@@124 Int) ($generated@@125 Int) ) (! (= ($generated@@29 ($generated@@32 $generated@@124) ($generated@@32 $generated@@125)) ($generated@@34 $generated@@26 ($generated@@29 $generated@@124 $generated@@125)))
 :pattern ( ($generated@@29 ($generated@@32 $generated@@124) ($generated@@32 $generated@@125)))
)))
(assert (forall (($generated@@126 Int) ) (! (= ($generated@@40 $generated@@7 ($generated@@11 ($generated@@32 $generated@@126))) ($generated@@34 $generated@@61 ($generated@@40 $generated@@7 ($generated@@11 $generated@@126))))
 :pattern ( ($generated@@40 $generated@@7 ($generated@@11 ($generated@@32 $generated@@126))))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@40 $generated@@128 ($generated@@34 $generated@@128 $generated@@127)) ($generated@@34 $generated@@61 ($generated@@40 $generated@@128 $generated@@127)))
 :pattern ( ($generated@@40 $generated@@128 ($generated@@34 $generated@@128 $generated@@127)))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! ($generated@@115 $generated@@7 $generated@@130 $generated $generated@@129)
 :pattern ( ($generated@@115 $generated@@7 $generated@@130 $generated $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ) (! ($generated@@25 $generated@@7 $generated@@131 $generated)
 :pattern ( ($generated@@25 $generated@@7 $generated@@131 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@132 () T@U)
(declare-fun $generated@@133 () Int)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () Int)
(declare-fun $generated@@136 () Int)
(declare-fun $generated@@137 () Int)
(declare-fun $generated@@138 () Int)
(declare-fun $generated@@139 () Int)
(declare-fun $generated@@140 () Int)
(declare-fun $generated@@141 () Int)
(declare-fun $generated@@142 () Int)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 (T@U) Bool)
(declare-fun $generated@@147 () Int)
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
 (=> (= (ControlFlow 0 0) 18) (let (($generated@@148  (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> (and (= ($generated@@48 $generated@@132) ($generated@@32 11)) (= ($generated@@51 $generated@@132) ($generated@@32 10))) (= $generated@@133 ($generated@@32 0)))) (=> (=> (and (= ($generated@@48 $generated@@132) ($generated@@32 11)) (= ($generated@@51 $generated@@132) ($generated@@32 10))) (= $generated@@133 ($generated@@32 0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (and (= ($generated@@48 $generated@@132) ($generated@@32 11)) (or (not (= ($generated@@51 $generated@@132) 10)) (not true))) (= $generated@@133 ($generated@@32 1)))) (=> (=> (and (= ($generated@@48 $generated@@132) ($generated@@32 11)) (or (not (= ($generated@@51 $generated@@132) 10)) (not true))) (= $generated@@133 ($generated@@32 1))) (=> (= (ControlFlow 0 3) (- 0 2)) (or (or (= ($generated@@48 $generated@@132) ($generated@@32 11)) (= ($generated@@51 $generated@@132) ($generated@@32 11))) (= $generated@@133 ($generated@@32 3))))))))))
(let (($generated@@149  (=> (or (not (= $generated@@134 ($generated@@32 10))) (not true)) (=> (and (= $generated@@135 $generated@@134) ($generated@@25 $generated@@7 ($generated@@11 $generated@@135) $generated)) (=> (and (and (= $generated@@136 $generated@@135) (= $generated@@137 ($generated@@32 1))) (and (= $generated@@133 $generated@@137) (= (ControlFlow 0 14) 3))) $generated@@148)))))
(let (($generated@@150  (=> (= $generated@@134 ($generated@@32 10)) (=> (and ($generated@@23 $generated@@132) ($generated@@23 $generated@@132)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= ($generated@@48 $generated@@132) 10)) (not true))) (=> (or (not (= ($generated@@48 $generated@@132) 10)) (not true)) (=> (= $generated@@138 ($generated@@32 0)) (=> (and (= $generated@@133 $generated@@138) (= (ControlFlow 0 12) 3)) $generated@@148))))))))
(let (($generated@@151  (=> (= $generated@@139 ($generated@@32 11)) (and (=> (= (ControlFlow 0 15) 12) $generated@@150) (=> (= (ControlFlow 0 15) 14) $generated@@149)))))
(let (($generated@@152  (=> (and (and (or (not (= $generated@@134 ($generated@@32 11))) (not true)) (= $generated@@140 ($generated@@32 3))) (and (= $generated@@133 $generated@@140) (= (ControlFlow 0 9) 3))) $generated@@148)))
(let (($generated@@153  (=> (= $generated@@134 ($generated@@32 11)) (=> (and ($generated@@23 $generated@@132) ($generated@@23 $generated@@132)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= ($generated@@51 $generated@@132) ($generated@@32 11))) (=> (= ($generated@@51 $generated@@132) ($generated@@32 11)) (=> (= $generated@@141 ($generated@@32 2)) (=> (and (= $generated@@133 $generated@@141) (= (ControlFlow 0 7) 3)) $generated@@148))))))))
(let (($generated@@154  (=> (= $generated@@139 ($generated@@32 10)) (and (=> (= (ControlFlow 0 10) 7) $generated@@153) (=> (= (ControlFlow 0 10) 9) $generated@@152)))))
(let (($generated@@155  (=> (and (and (or (not (= $generated@@139 ($generated@@32 10))) (not true)) (= $generated@@142 ($generated@@32 3))) (and (= $generated@@133 $generated@@142) (= (ControlFlow 0 6) 3))) $generated@@148)))
(let (($generated@@156  (=> (or (not (= $generated@@139 ($generated@@32 11))) (not true)) (and (=> (= (ControlFlow 0 11) 10) $generated@@154) (=> (= (ControlFlow 0 11) 6) $generated@@155)))))
(let (($generated@@157  (=> (= $generated@@132 ($generated@@29 $generated@@139 $generated@@134)) (and (=> (= (ControlFlow 0 16) 15) $generated@@151) (=> (= (ControlFlow 0 16) 11) $generated@@156)))))
(let (($generated@@158 true))
(let (($generated@@159  (=> (= $generated@@143 ($generated@@59 $generated@@144 $generated@@145 $generated@@1 false)) (and (=> (= (ControlFlow 0 17) 16) $generated@@157) (=> (= (ControlFlow 0 17) 1) $generated@@158)))))
(let (($generated@@160  (=> (and ($generated@@116 $generated@@145) ($generated@@146 $generated@@145)) (=> (and (and (and ($generated@@25 $generated@@26 $generated@@132 $generated@@27) ($generated@@115 $generated@@26 $generated@@132 $generated@@27 $generated@@145)) ($generated@@22 $generated@@132)) (and (= 1 $generated@@147) (= (ControlFlow 0 18) 17))) $generated@@159))))
$generated@@160))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)