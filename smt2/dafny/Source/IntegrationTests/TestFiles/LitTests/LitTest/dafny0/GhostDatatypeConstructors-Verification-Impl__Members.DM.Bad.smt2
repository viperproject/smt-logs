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
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (T@T T@U T@U) Bool)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 (Int Int) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@30 (Int Int) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@50 (Int) T@U)
(declare-fun $generated@@55 (T@U) Int)
(declare-fun $generated@@58 (T@U) Int)
(declare-fun $generated@@65 (T@U) Int)
(declare-fun $generated@@73 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 () T@T)
(declare-fun $generated@@76 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@77 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@T T@T) T@T)
(declare-fun $generated@@80 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@81 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@82 (T@T) T@T)
(declare-fun $generated@@83 (T@T) T@T)
(declare-fun $generated@@132 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@133 (T@U) Bool)
(declare-fun $generated@@147 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated) $generated@@0))
(assert (= ($generated@@7 $generated@@25) 3))
(assert (forall (($generated@@28 Int) ($generated@@29 Int) ) (! (= ($generated@@24 $generated@@25 ($generated@@26 $generated@@28 $generated@@29) $generated@@27)  (and ($generated@@24 $generated@@9 ($generated@@13 $generated@@28) $generated) ($generated@@24 $generated@@9 ($generated@@13 $generated@@29) $generated)))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@26 $generated@@28 $generated@@29) $generated@@27))
)))
(assert (forall (($generated@@31 Int) ($generated@@32 Int) ) (! (= ($generated@@24 $generated@@25 ($generated@@30 $generated@@31 $generated@@32) $generated@@27)  (and ($generated@@24 $generated@@9 ($generated@@13 $generated@@31) $generated) ($generated@@24 $generated@@9 ($generated@@13 $generated@@32) $generated)))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@30 $generated@@31 $generated@@32) $generated@@27))
)))
(assert (forall (($generated@@35 T@U) ) (! (= ($generated@@33 $generated@@35) (= ($generated@@34 $generated@@35) $generated@@2))
 :pattern ( ($generated@@33 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ) (! (= ($generated@@36 $generated@@37) (= ($generated@@34 $generated@@37) $generated@@4))
 :pattern ( ($generated@@36 $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ) (! (= ($generated@@38 $generated@@39) (= ($generated@@34 $generated@@39) $generated@@5))
 :pattern ( ($generated@@38 $generated@@39))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@41 $generated@@43 ($generated@@40 $generated@@43 $generated@@42)) $generated@@42)
 :pattern ( ($generated@@40 $generated@@43 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@36 $generated@@44) (exists (($generated@@45 Int) ($generated@@46 Int) ) (= $generated@@44 ($generated@@26 $generated@@45 $generated@@46))))
 :pattern ( ($generated@@36 $generated@@44))
)))
(assert (forall (($generated@@47 T@U) ) (!  (=> ($generated@@38 $generated@@47) (exists (($generated@@48 Int) ($generated@@49 Int) ) (= $generated@@47 ($generated@@30 $generated@@48 $generated@@49))))
 :pattern ( ($generated@@38 $generated@@47))
)))
(assert (forall (($generated@@51 T@U) ) (!  (=> ($generated@@33 $generated@@51) (exists (($generated@@52 Int) ) (= $generated@@51 ($generated@@50 $generated@@52))))
 :pattern ( ($generated@@33 $generated@@51))
)))
(assert (forall (($generated@@53 Int) ($generated@@54 Int) ) (! (= ($generated@@34 ($generated@@26 $generated@@53 $generated@@54)) $generated@@4)
 :pattern ( ($generated@@26 $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 Int) ($generated@@57 Int) ) (! (= ($generated@@55 ($generated@@26 $generated@@56 $generated@@57)) $generated@@56)
 :pattern ( ($generated@@26 $generated@@56 $generated@@57))
)))
(assert (forall (($generated@@59 Int) ($generated@@60 Int) ) (! (= ($generated@@58 ($generated@@26 $generated@@59 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@26 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@61 Int) ($generated@@62 Int) ) (! (= ($generated@@34 ($generated@@30 $generated@@61 $generated@@62)) $generated@@5)
 :pattern ( ($generated@@30 $generated@@61 $generated@@62))
)))
(assert (forall (($generated@@63 Int) ($generated@@64 Int) ) (! (= ($generated@@58 ($generated@@30 $generated@@63 $generated@@64)) $generated@@63)
 :pattern ( ($generated@@30 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@66 Int) ($generated@@67 Int) ) (! (= ($generated@@65 ($generated@@30 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@30 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@68 Int) ) (! (= ($generated@@34 ($generated@@50 $generated@@68)) $generated@@2)
 :pattern ( ($generated@@50 $generated@@68))
)))
(assert (forall (($generated@@69 Int) ) (! (= ($generated@@55 ($generated@@50 $generated@@69)) $generated@@69)
 :pattern ( ($generated@@50 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@40 $generated@@71 ($generated@@41 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@41 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@72 Int) ) (! (= ($generated@@24 $generated@@25 ($generated@@50 $generated@@72) $generated@@27) ($generated@@24 $generated@@9 ($generated@@13 $generated@@72) $generated))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@50 $generated@@72) $generated@@27))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@73 $generated@@84 $generated@@85 $generated@@86 ($generated@@80 $generated@@84 $generated@@85 $generated@@86 $generated@@88 $generated@@89 $generated@@90 $generated@@87) $generated@@89 $generated@@90) $generated@@87)
 :weight 0
)) (and (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (or (= $generated@@96 $generated@@98) (= ($generated@@73 $generated@@91 $generated@@92 $generated@@93 ($generated@@80 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@98 $generated@@99) ($generated@@73 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@98 $generated@@99)))
 :weight 0
)) (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (or (= $generated@@106 $generated@@108) (= ($generated@@73 $generated@@100 $generated@@101 $generated@@102 ($generated@@80 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@107 $generated@@108) ($generated@@73 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@107 $generated@@108)))
 :weight 0
)))) (= ($generated@@7 $generated@@74) 4)) (= ($generated@@7 $generated@@75) 5)) (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@77 $generated@@109 $generated@@110 ($generated@@81 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@111) $generated@@113) $generated@@111)
 :weight 0
))) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (or (= $generated@@118 $generated@@119) (= ($generated@@77 $generated@@114 $generated@@115 ($generated@@81 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@116) $generated@@119) ($generated@@77 $generated@@114 $generated@@115 $generated@@117 $generated@@119)))
 :weight 0
))) (= ($generated@@7 $generated@@78) 6)) (forall (($generated@@120 T@T) ($generated@@121 T@T) ) (= ($generated@@7 ($generated@@79 $generated@@120 $generated@@121)) 7))) (forall (($generated@@122 T@T) ($generated@@123 T@T) ) (! (= ($generated@@82 ($generated@@79 $generated@@122 $generated@@123)) $generated@@122)
 :pattern ( ($generated@@79 $generated@@122 $generated@@123))
))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (! (= ($generated@@83 ($generated@@79 $generated@@124 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@79 $generated@@124 $generated@@125))
))))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 Bool) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@12 ($generated@@73 $generated@@74 $generated@@75 $generated@@8 ($generated@@76 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))  (=> (and (or (not (= $generated@@130 $generated@@126)) (not true)) ($generated@@12 ($generated@@40 $generated@@8 ($generated@@77 $generated@@75 $generated@@78 ($generated@@77 $generated@@74 ($generated@@79 $generated@@75 $generated@@78) $generated@@127 $generated@@130) $generated@@128)))) $generated@@129))
 :pattern ( ($generated@@73 $generated@@74 $generated@@75 $generated@@8 ($generated@@76 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (and ($generated@@133 $generated@@135) (and ($generated@@33 $generated@@134) ($generated@@132 $generated@@25 $generated@@134 $generated@@27 $generated@@135))) ($generated@@132 $generated@@9 ($generated@@13 ($generated@@55 $generated@@134)) $generated $generated@@135))
 :pattern ( ($generated@@132 $generated@@9 ($generated@@13 ($generated@@55 $generated@@134)) $generated $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and ($generated@@133 $generated@@137) (and ($generated@@36 $generated@@136) ($generated@@132 $generated@@25 $generated@@136 $generated@@27 $generated@@137))) ($generated@@132 $generated@@9 ($generated@@13 ($generated@@55 $generated@@136)) $generated $generated@@137))
 :pattern ( ($generated@@132 $generated@@9 ($generated@@13 ($generated@@55 $generated@@136)) $generated $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> (and ($generated@@133 $generated@@139) (and ($generated@@36 $generated@@138) ($generated@@132 $generated@@25 $generated@@138 $generated@@27 $generated@@139))) ($generated@@132 $generated@@9 ($generated@@13 ($generated@@58 $generated@@138)) $generated $generated@@139))
 :pattern ( ($generated@@132 $generated@@9 ($generated@@13 ($generated@@58 $generated@@138)) $generated $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> (and ($generated@@133 $generated@@141) (and ($generated@@38 $generated@@140) ($generated@@132 $generated@@25 $generated@@140 $generated@@27 $generated@@141))) ($generated@@132 $generated@@9 ($generated@@13 ($generated@@58 $generated@@140)) $generated $generated@@141))
 :pattern ( ($generated@@132 $generated@@9 ($generated@@13 ($generated@@58 $generated@@140)) $generated $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (and ($generated@@133 $generated@@143) (and ($generated@@38 $generated@@142) ($generated@@132 $generated@@25 $generated@@142 $generated@@27 $generated@@143))) ($generated@@132 $generated@@9 ($generated@@13 ($generated@@65 $generated@@142)) $generated $generated@@143))
 :pattern ( ($generated@@132 $generated@@9 ($generated@@13 ($generated@@65 $generated@@142)) $generated $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ) (!  (=> ($generated@@24 $generated@@25 $generated@@144 $generated@@27) (or (or ($generated@@33 $generated@@144) ($generated@@36 $generated@@144)) ($generated@@38 $generated@@144)))
 :pattern ( ($generated@@38 $generated@@144) ($generated@@24 $generated@@25 $generated@@144 $generated@@27))
 :pattern ( ($generated@@36 $generated@@144) ($generated@@24 $generated@@25 $generated@@144 $generated@@27))
 :pattern ( ($generated@@33 $generated@@144) ($generated@@24 $generated@@25 $generated@@144 $generated@@27))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (and ($generated@@133 $generated@@146) ($generated@@24 $generated@@25 $generated@@145 $generated@@27)) ($generated@@132 $generated@@25 $generated@@145 $generated@@27 $generated@@146))
 :pattern ( ($generated@@132 $generated@@25 $generated@@145 $generated@@27 $generated@@146))
)))
(assert (= ($generated@@23 $generated@@27) $generated@@3))
(assert (= ($generated@@147 $generated@@27) $generated@@6))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! ($generated@@132 $generated@@9 $generated@@149 $generated $generated@@148)
 :pattern ( ($generated@@132 $generated@@9 $generated@@149 $generated $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ) (! ($generated@@24 $generated@@9 $generated@@150 $generated)
 :pattern ( ($generated@@24 $generated@@9 $generated@@150 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 (T@U) Bool)
(declare-fun $generated@@156 () Int)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@157  (=> (not ($generated@@38 $generated@@151)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or ($generated@@33 $generated@@151) ($generated@@36 $generated@@151))) (=> (or ($generated@@33 $generated@@151) ($generated@@36 $generated@@151)) (=> (= (ControlFlow 0 4) (- 0 3)) (not ($generated@@33 $generated@@151))))))))
(let (($generated@@158  (=> (and ($generated@@38 $generated@@151) (= (ControlFlow 0 2) (- 0 1))) ($generated@@38 $generated@@151))))
(let (($generated@@159  (=> (= $generated@@152 ($generated@@76 $generated@@153 $generated@@154 $generated@@1 false)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not ($generated@@33 $generated@@151))) (=> (not ($generated@@33 $generated@@151)) (and (=> (= (ControlFlow 0 6) 2) $generated@@158) (=> (= (ControlFlow 0 6) 4) $generated@@157)))))))
(let (($generated@@160  (=> (and ($generated@@133 $generated@@154) ($generated@@155 $generated@@154)) (=> (and (and ($generated@@24 $generated@@25 $generated@@151 $generated@@27) ($generated@@132 $generated@@25 $generated@@151 $generated@@27 $generated@@154)) (and (= 0 $generated@@156) (= (ControlFlow 0 8) 6))) $generated@@159))))
$generated@@160)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)