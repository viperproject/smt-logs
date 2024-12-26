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
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 () Int)
(declare-fun $generated@@26 (T@U Bool) Bool)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (Bool T@U Bool) Bool)
(declare-fun $generated@@31 () Bool)
(declare-fun $generated@@32 (T@U Bool) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@36 (T@U T@U T@U) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@53 () T@T)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 (T@T T@T) T@T)
(declare-fun $generated@@56 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@57 (T@T) T@T)
(declare-fun $generated@@58 (T@T) T@T)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@100 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@101 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@135 (T@U) Bool)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@138 (T@U) Bool)
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
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (= ($generated@@8 $generated@@28) 3))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@34 T@U) ($generated@@35 Bool) ) (!  (=> (or ($generated@@32 $generated@@34 $generated@@35) (and (< 0 $generated@@25) (and (or (not (= $generated@@34 $generated@@33)) (not true)) ($generated@@27 $generated@@28 $generated@@34 $generated@@29)))) (= ($generated@@26 $generated@@34 $generated@@35) ($generated@@30 $generated@@31 $generated@@34 $generated@@35)))
 :pattern ( ($generated@@26 $generated@@34 $generated@@35) ($generated@@27 $generated@@28 $generated@@34 $generated@@29))
 :pattern ( ($generated@@26 $generated@@34 $generated@@35) ($generated@@30 $generated@@31 $generated@@34 $generated@@35))
))))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ) (!  (=> (and ($generated@@36 $generated@@40 $generated@@37 $generated@@41) ($generated@@38 $generated@@41)) ($generated@@36 $generated@@40 $generated@@39 $generated@@41))
 :pattern ( ($generated@@36 $generated@@40 $generated@@37 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@42 $generated@@28 $generated@@44 $generated@@43 $generated@@45) ($generated@@42 $generated@@28 $generated@@44 $generated@@39 $generated@@45))
 :pattern ( ($generated@@42 $generated@@28 $generated@@44 $generated@@43 $generated@@45))
 :pattern ( ($generated@@42 $generated@@28 $generated@@44 $generated@@39 $generated@@45))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@42 $generated@@28 $generated@@46 $generated@@29 $generated@@47) ($generated@@42 $generated@@28 $generated@@46 $generated@@37 $generated@@47))
 :pattern ( ($generated@@42 $generated@@28 $generated@@46 $generated@@29 $generated@@47))
 :pattern ( ($generated@@42 $generated@@28 $generated@@46 $generated@@37 $generated@@47))
)))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> (or ($generated@@32 ($generated@@48 $generated@@28 $generated@@49) ($generated@@13 ($generated@@48 $generated@@9 $generated@@50))) (and (< 0 $generated@@25) (and (or (not (= $generated@@49 $generated@@33)) (not true)) ($generated@@27 $generated@@28 $generated@@49 $generated@@29)))) (= ($generated@@30 true ($generated@@48 $generated@@28 $generated@@49) ($generated@@13 ($generated@@48 $generated@@9 $generated@@50))) ($generated@@13 ($generated@@48 $generated@@9 $generated@@50))))
 :weight 3
 :pattern ( ($generated@@30 true ($generated@@48 $generated@@28 $generated@@49) ($generated@@13 ($generated@@48 $generated@@9 $generated@@50))))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@59 T@T) ($generated@@60 T@T) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@52 $generated@@59 $generated@@60 ($generated@@56 $generated@@59 $generated@@60 $generated@@62 $generated@@63 $generated@@61) $generated@@63) $generated@@61)
 :weight 0
)) (forall (($generated@@64 T@T) ($generated@@65 T@T) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (or (= $generated@@68 $generated@@69) (= ($generated@@52 $generated@@64 $generated@@65 ($generated@@56 $generated@@64 $generated@@65 $generated@@67 $generated@@68 $generated@@66) $generated@@69) ($generated@@52 $generated@@64 $generated@@65 $generated@@67 $generated@@69)))
 :weight 0
))) (= ($generated@@8 $generated@@53) 4)) (= ($generated@@8 $generated@@54) 5)) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (= ($generated@@8 ($generated@@55 $generated@@70 $generated@@71)) 6))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@57 ($generated@@55 $generated@@72 $generated@@73)) $generated@@72)
 :pattern ( ($generated@@55 $generated@@72 $generated@@73))
))) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (! (= ($generated@@58 ($generated@@55 $generated@@74 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@55 $generated@@74 $generated@@75))
))))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@42 $generated@@28 $generated@@76 $generated@@39 $generated@@77)  (or (= $generated@@76 $generated@@33) ($generated@@13 ($generated@@51 $generated@@9 ($generated@@52 $generated@@53 $generated@@54 ($generated@@52 $generated@@28 ($generated@@55 $generated@@53 $generated@@54) $generated@@77 $generated@@76) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@28 $generated@@76 $generated@@39 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@42 $generated@@28 $generated@@78 $generated@@37 $generated@@79)  (or (= $generated@@78 $generated@@33) ($generated@@13 ($generated@@51 $generated@@9 ($generated@@52 $generated@@53 $generated@@54 ($generated@@52 $generated@@28 ($generated@@55 $generated@@53 $generated@@54) $generated@@79 $generated@@78) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@28 $generated@@78 $generated@@37 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@48 $generated@@81 $generated@@80) $generated@@80)
 :pattern ( ($generated@@48 $generated@@81 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@82 $generated@@84 ($generated@@51 $generated@@84 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@51 $generated@@84 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@36 ($generated@@82 $generated@@88 $generated@@85) $generated@@86 $generated@@87) ($generated@@42 $generated@@88 $generated@@85 $generated@@86 $generated@@87))
 :pattern ( ($generated@@36 ($generated@@82 $generated@@88 $generated@@85) $generated@@86 $generated@@87))
)))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@89 T@U) ($generated@@90 Bool) ) (!  (=> (or ($generated@@32 $generated@@89 $generated@@90) (and (< 0 $generated@@25) (and (or (not (= $generated@@89 $generated@@33)) (not true)) ($generated@@27 $generated@@28 $generated@@89 $generated@@29)))) (= ($generated@@30 true $generated@@89 $generated@@90) $generated@@90))
 :pattern ( ($generated@@30 true $generated@@89 $generated@@90))
))))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@91 $generated@@43)  (and ($generated@@27 $generated@@28 $generated@@91 $generated@@39) (or (not (= $generated@@91 $generated@@33)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@91 $generated@@43))
 :pattern ( ($generated@@27 $generated@@28 $generated@@91 $generated@@39))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@92 $generated@@29)  (and ($generated@@27 $generated@@28 $generated@@92 $generated@@37) (or (not (= $generated@@92 $generated@@33)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@92 $generated@@29))
 :pattern ( ($generated@@27 $generated@@28 $generated@@92 $generated@@37))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> ($generated@@42 $generated@@28 $generated@@93 $generated@@37 $generated@@94) ($generated@@42 $generated@@28 $generated@@93 $generated@@39 $generated@@94))
 :pattern ( ($generated@@42 $generated@@28 $generated@@93 $generated@@37 $generated@@94))
)))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (or ($generated@@32 $generated@@95 ($generated@@13 ($generated@@48 $generated@@9 $generated@@96))) (and (< 0 $generated@@25) (and (or (not (= $generated@@95 $generated@@33)) (not true)) ($generated@@27 $generated@@28 $generated@@95 $generated@@29)))) (= ($generated@@30 true $generated@@95 ($generated@@13 ($generated@@48 $generated@@9 $generated@@96))) ($generated@@13 ($generated@@48 $generated@@9 $generated@@96))))
 :weight 3
 :pattern ( ($generated@@30 true $generated@@95 ($generated@@13 ($generated@@48 $generated@@9 $generated@@96))))
))))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@51 $generated@@98 ($generated@@82 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@82 $generated@@98 $generated@@97))
)))
(assert  (and (forall (($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@99 $generated@@102 $generated@@103 $generated@@104 ($generated@@101 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@108 $generated@@105) $generated@@107 $generated@@108) $generated@@105)
 :weight 0
)) (and (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (or (= $generated@@114 $generated@@116) (= ($generated@@99 $generated@@109 $generated@@110 $generated@@111 ($generated@@101 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@114 $generated@@115 $generated@@112) $generated@@116 $generated@@117) ($generated@@99 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@116 $generated@@117)))
 :weight 0
)) (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (or (= $generated@@124 $generated@@126) (= ($generated@@99 $generated@@118 $generated@@119 $generated@@120 ($generated@@101 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@124 $generated@@121) $generated@@125 $generated@@126) ($generated@@99 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@125 $generated@@126)))
 :weight 0
)))))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 Bool) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@13 ($generated@@99 $generated@@28 $generated@@53 $generated@@9 ($generated@@100 $generated@@127 $generated@@128 $generated@@129 $generated@@130) $generated@@131 $generated@@132))  (=> (and (or (not (= $generated@@131 $generated@@127)) (not true)) ($generated@@13 ($generated@@51 $generated@@9 ($generated@@52 $generated@@53 $generated@@54 ($generated@@52 $generated@@28 ($generated@@55 $generated@@53 $generated@@54) $generated@@128 $generated@@131) $generated@@129)))) $generated@@130))
 :pattern ( ($generated@@99 $generated@@28 $generated@@53 $generated@@9 ($generated@@100 $generated@@127 $generated@@128 $generated@@129 $generated@@130) $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@133 T@U) ) (!  (=> ($generated@@27 $generated@@28 $generated@@133 $generated@@37) ($generated@@27 $generated@@28 $generated@@133 $generated@@39))
 :pattern ( ($generated@@27 $generated@@28 $generated@@133 $generated@@37))
)))
(assert (= ($generated@@24 $generated@@29) $generated@@2))
(assert (= ($generated@@134 $generated@@29) $generated@@6))
(assert (= ($generated@@24 $generated@@37) $generated@@3))
(assert (= ($generated@@134 $generated@@37) $generated@@6))
(assert (= ($generated@@24 $generated@@43) $generated@@4))
(assert (= ($generated@@134 $generated@@43) $generated@@7))
(assert (= ($generated@@24 $generated@@39) $generated@@5))
(assert (= ($generated@@134 $generated@@39) $generated@@7))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@137 $generated@@39)  (or (= $generated@@137 $generated@@33) ($generated@@135 ($generated@@136 $generated@@137))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@137 $generated@@39))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@139 $generated@@37)  (or (= $generated@@139 $generated@@33) ($generated@@138 ($generated@@136 $generated@@139))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@139 $generated@@37))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@T) ) (! (= ($generated@@82 $generated@@141 ($generated@@48 $generated@@141 $generated@@140)) ($generated@@48 $generated@@54 ($generated@@82 $generated@@141 $generated@@140)))
 :pattern ( ($generated@@82 $generated@@141 ($generated@@48 $generated@@141 $generated@@140)))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! ($generated@@42 $generated@@9 $generated@@143 $generated $generated@@142)
 :pattern ( ($generated@@42 $generated@@9 $generated@@143 $generated $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ) (! ($generated@@27 $generated@@9 $generated@@144 $generated)
 :pattern ( ($generated@@27 $generated@@9 $generated@@144 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () Bool)
(declare-fun $generated@@149 (T@U Bool) Bool)
(declare-fun $generated@@150 (T@U) Bool)
(declare-fun $generated@@151 () Bool)
(declare-fun $generated@@152 () T@U)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@153  (=> (= $generated@@145 ($generated@@100 $generated@@33 $generated@@146 $generated@@1 false)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@147 $generated@@33)) (not true))) (=> ($generated@@36 ($generated@@82 $generated@@28 $generated@@147) $generated@@39 $generated@@146) (=> (and (and ($generated@@42 $generated@@9 ($generated@@12 $generated@@148) $generated $generated@@146) ($generated@@149 $generated@@147 $generated@@148)) (and ($generated@@149 $generated@@147 $generated@@148) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@26 $generated@@147 $generated@@148))))))))
(let (($generated@@154  (=> (and (and ($generated@@38 $generated@@146) ($generated@@150 $generated@@146)) (and ($generated@@27 $generated@@28 $generated@@147 $generated@@29) ($generated@@42 $generated@@28 $generated@@147 $generated@@29 $generated@@146))) (=> (and (and (and (=> $generated@@151 (and ($generated@@27 $generated@@28 $generated@@152 $generated@@43) ($generated@@42 $generated@@28 $generated@@152 $generated@@43 $generated@@146))) true) (= 2 $generated@@25)) (and ($generated@@30 $generated@@31 $generated@@147 $generated@@148) (= (ControlFlow 0 5) 2))) $generated@@153))))
$generated@@154)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)