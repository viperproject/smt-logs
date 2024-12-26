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
(declare-fun $generated@@11 (T@T) Int)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 (Bool) T@U)
(declare-fun $generated@@16 (T@U) Bool)
(declare-fun $generated@@17 (Int) T@U)
(declare-fun $generated@@18 (T@U) Int)
(declare-fun $generated@@19 (Real) T@U)
(declare-fun $generated@@20 (T@U) Real)
(declare-fun $generated@@27 () Int)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@T T@T) T@T)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@40 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@41 (T@T) T@T)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@64 (T@T T@U T@U) Bool)
(declare-fun $generated@@66 () T@U)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@71 () T@U)
(declare-fun $generated@@74 () T@U)
(declare-fun $generated@@83 (Int) Int)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@88 (T@T T@U) T@U)
(declare-fun $generated@@92 (T@U) Int)
(declare-fun $generated@@108 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@109 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@110 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@144 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@11 $generated@@12) 0) (= ($generated@@11 $generated@@13) 1)) (= ($generated@@11 $generated@@14) 2)) (forall (($generated@@21 Bool) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Int) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Real) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10)
)
(assert  (and (and (and (and (and (and (and (forall (($generated@@43 T@T) ($generated@@44 T@T) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@30 $generated@@43 $generated@@44 ($generated@@40 $generated@@43 $generated@@44 $generated@@46 $generated@@47 $generated@@45) $generated@@47) $generated@@45)
 :weight 0
)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (or (= $generated@@52 $generated@@53) (= ($generated@@30 $generated@@48 $generated@@49 ($generated@@40 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@53) ($generated@@30 $generated@@48 $generated@@49 $generated@@51 $generated@@53)))
 :weight 0
))) (= ($generated@@11 $generated@@31) 3)) (= ($generated@@11 $generated@@32) 4)) (= ($generated@@11 $generated@@33) 5)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ) (= ($generated@@11 ($generated@@34 $generated@@54 $generated@@55)) 6))) (forall (($generated@@56 T@T) ($generated@@57 T@T) ) (! (= ($generated@@41 ($generated@@34 $generated@@56 $generated@@57)) $generated@@56)
 :pattern ( ($generated@@34 $generated@@56 $generated@@57))
))) (forall (($generated@@58 T@T) ($generated@@59 T@T) ) (! (= ($generated@@42 ($generated@@34 $generated@@58 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@34 $generated@@58 $generated@@59))
))))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> (and (and ($generated@@35 $generated@@60) (and (or (not (= $generated@@61 $generated@@36)) (not true)) (= ($generated@@37 $generated@@61) $generated@@38))) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@60 $generated@@61) $generated@@1)))) ($generated@@39 $generated@@13 ($generated@@17 ($generated@@28 $generated@@61)) $generated $generated@@60))
 :pattern ( ($generated@@28 $generated@@61) ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@60 $generated@@61) $generated@@1)))
))))
(assert (= ($generated@@62 $generated) $generated@@0))
(assert ($generated@@63 $generated@@38))
(assert (forall (($generated@@65 T@U) ) (! (= ($generated@@64 $generated@@33 $generated@@65 $generated@@38)  (or (= $generated@@65 $generated@@36) (= ($generated@@37 $generated@@65) $generated@@38)))
 :pattern ( ($generated@@64 $generated@@33 $generated@@65 $generated@@38))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@68 $generated@@66 $generated@@69) ($generated@@39 $generated@@33 $generated@@68 $generated@@67 $generated@@69))
 :pattern ( ($generated@@39 $generated@@33 $generated@@68 $generated@@66 $generated@@69))
 :pattern ( ($generated@@39 $generated@@33 $generated@@68 $generated@@67 $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@72 $generated@@70 $generated@@73) ($generated@@39 $generated@@33 $generated@@72 $generated@@71 $generated@@73))
 :pattern ( ($generated@@39 $generated@@33 $generated@@72 $generated@@70 $generated@@73))
 :pattern ( ($generated@@39 $generated@@33 $generated@@72 $generated@@71 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@75 $generated@@74 $generated@@76) ($generated@@39 $generated@@33 $generated@@75 $generated@@38 $generated@@76))
 :pattern ( ($generated@@39 $generated@@33 $generated@@75 $generated@@74 $generated@@76))
 :pattern ( ($generated@@39 $generated@@33 $generated@@75 $generated@@38 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@77 $generated@@67 $generated@@78)  (or (= $generated@@77 $generated@@36) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@78 $generated@@77) $generated@@1)))))
 :pattern ( ($generated@@39 $generated@@33 $generated@@77 $generated@@67 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@79 $generated@@71 $generated@@80)  (or (= $generated@@79 $generated@@36) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@80 $generated@@79) $generated@@1)))))
 :pattern ( ($generated@@39 $generated@@33 $generated@@79 $generated@@71 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@39 $generated@@33 $generated@@81 $generated@@38 $generated@@82)  (or (= $generated@@81 $generated@@36) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@82 $generated@@81) $generated@@1)))))
 :pattern ( ($generated@@39 $generated@@33 $generated@@81 $generated@@38 $generated@@82))
)))
(assert (forall (($generated@@84 Int) ) (! (= ($generated@@83 $generated@@84) $generated@@84)
 :pattern ( ($generated@@83 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 $generated@@86) $generated@@86)
 :pattern ( ($generated@@85 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@88 $generated@@90 ($generated@@29 $generated@@90 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@29 $generated@@90 $generated@@89))
)))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@91 T@U) ) (!  (=> (and (or (not (= $generated@@91 $generated@@36)) (not true)) (= ($generated@@37 $generated@@91) $generated@@38)) ($generated@@64 $generated@@13 ($generated@@17 ($generated@@28 $generated@@91)) $generated))
 :pattern ( ($generated@@28 $generated@@91))
))))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (and (and ($generated@@35 $generated@@93) (and (or (not (= $generated@@94 $generated@@36)) (not true)) ($generated@@64 $generated@@33 $generated@@94 $generated@@71))) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@93 $generated@@94) $generated@@1)))) ($generated@@39 $generated@@13 ($generated@@17 ($generated@@92 $generated@@94)) $generated $generated@@93))
 :pattern ( ($generated@@92 $generated@@94) ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@93 $generated@@94) $generated@@1)))
))))
(assert (forall (($generated@@95 T@U) ) (! (= ($generated@@92 $generated@@95) ($generated@@83 18))
 :pattern ( ($generated@@92 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ) (! (= ($generated@@28 $generated@@96) ($generated@@83 20))
 :pattern ( ($generated@@28 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@64 $generated@@33 $generated@@97 $generated@@66)  (and ($generated@@64 $generated@@33 $generated@@97 $generated@@67) (or (not (= $generated@@97 $generated@@36)) (not true))))
 :pattern ( ($generated@@64 $generated@@33 $generated@@97 $generated@@66))
 :pattern ( ($generated@@64 $generated@@33 $generated@@97 $generated@@67))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@64 $generated@@33 $generated@@98 $generated@@70)  (and ($generated@@64 $generated@@33 $generated@@98 $generated@@71) (or (not (= $generated@@98 $generated@@36)) (not true))))
 :pattern ( ($generated@@64 $generated@@33 $generated@@98 $generated@@70))
 :pattern ( ($generated@@64 $generated@@33 $generated@@98 $generated@@71))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@64 $generated@@33 $generated@@99 $generated@@74)  (and ($generated@@64 $generated@@33 $generated@@99 $generated@@38) (or (not (= $generated@@99 $generated@@36)) (not true))))
 :pattern ( ($generated@@64 $generated@@33 $generated@@99 $generated@@74))
 :pattern ( ($generated@@64 $generated@@33 $generated@@99 $generated@@38))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@39 $generated@@33 $generated@@100 $generated@@71 $generated@@101) ($generated@@39 $generated@@33 $generated@@100 $generated@@67 $generated@@101))
 :pattern ( ($generated@@39 $generated@@33 $generated@@100 $generated@@71 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> ($generated@@39 $generated@@33 $generated@@102 $generated@@38 $generated@@103) ($generated@@39 $generated@@33 $generated@@102 $generated@@71 $generated@@103))
 :pattern ( ($generated@@39 $generated@@33 $generated@@102 $generated@@38 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ) (! ($generated@@64 $generated@@33 $generated@@104 $generated@@67)
 :pattern ( ($generated@@64 $generated@@33 $generated@@104 $generated@@67))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@29 $generated@@106 ($generated@@88 $generated@@106 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@88 $generated@@106 $generated@@105))
)))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@107 T@U) ) (!  (=> (and (or (not (= $generated@@107 $generated@@36)) (not true)) ($generated@@64 $generated@@33 $generated@@107 $generated@@71)) ($generated@@64 $generated@@13 ($generated@@17 ($generated@@92 $generated@@107)) $generated))
 :pattern ( ($generated@@92 $generated@@107))
))))
(assert  (and (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@108 $generated@@111 $generated@@112 $generated@@113 ($generated@@110 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@116 $generated@@117 $generated@@114) $generated@@116 $generated@@117) $generated@@114)
 :weight 0
)) (and (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (or (= $generated@@123 $generated@@125) (= ($generated@@108 $generated@@118 $generated@@119 $generated@@120 ($generated@@110 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@124 $generated@@121) $generated@@125 $generated@@126) ($generated@@108 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@125 $generated@@126)))
 :weight 0
)) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (or (= $generated@@133 $generated@@135) (= ($generated@@108 $generated@@127 $generated@@128 $generated@@129 ($generated@@110 $generated@@127 $generated@@128 $generated@@129 $generated@@131 $generated@@132 $generated@@133 $generated@@130) $generated@@134 $generated@@135) ($generated@@108 $generated@@127 $generated@@128 $generated@@129 $generated@@131 $generated@@134 $generated@@135)))
 :weight 0
)))))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 Bool) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@16 ($generated@@108 $generated@@33 $generated@@31 $generated@@12 ($generated@@109 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))  (=> (and (or (not (= $generated@@140 $generated@@136)) (not true)) ($generated@@16 ($generated@@29 $generated@@12 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@33 ($generated@@34 $generated@@31 $generated@@32) $generated@@137 $generated@@140) $generated@@138)))) $generated@@139))
 :pattern ( ($generated@@108 $generated@@33 $generated@@31 $generated@@12 ($generated@@109 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ) (!  (=> ($generated@@64 $generated@@33 $generated@@142 $generated@@71) ($generated@@64 $generated@@33 $generated@@142 $generated@@67))
 :pattern ( ($generated@@64 $generated@@33 $generated@@142 $generated@@71))
)))
(assert (forall (($generated@@143 T@U) ) (!  (=> ($generated@@64 $generated@@33 $generated@@143 $generated@@38) ($generated@@64 $generated@@33 $generated@@143 $generated@@71))
 :pattern ( ($generated@@64 $generated@@33 $generated@@143 $generated@@38))
)))
(assert (= ($generated@@62 $generated@@67) $generated@@2))
(assert (= ($generated@@144 $generated@@67) $generated@@8))
(assert (= ($generated@@62 $generated@@66) $generated@@3))
(assert (= ($generated@@144 $generated@@66) $generated@@8))
(assert (= ($generated@@62 $generated@@71) $generated@@4))
(assert (= ($generated@@144 $generated@@71) $generated@@9))
(assert (= ($generated@@62 $generated@@38) $generated@@5))
(assert (= ($generated@@144 $generated@@38) $generated@@10))
(assert (= ($generated@@62 $generated@@70) $generated@@6))
(assert (= ($generated@@144 $generated@@70) $generated@@9))
(assert (= ($generated@@62 $generated@@74) $generated@@7))
(assert (= ($generated@@144 $generated@@74) $generated@@10))
(assert (forall (($generated@@145 T@U) ) (! (= ($generated@@64 $generated@@33 $generated@@145 $generated@@71)  (or (= $generated@@145 $generated@@36) ($generated@@63 ($generated@@37 $generated@@145))))
 :pattern ( ($generated@@64 $generated@@33 $generated@@145 $generated@@71))
)))
(assert (forall (($generated@@146 Int) ) (! (= ($generated@@88 $generated@@13 ($generated@@17 ($generated@@83 $generated@@146))) ($generated@@85 $generated@@32 ($generated@@88 $generated@@13 ($generated@@17 $generated@@146))))
 :pattern ( ($generated@@88 $generated@@13 ($generated@@17 ($generated@@83 $generated@@146))))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@88 $generated@@148 ($generated@@85 $generated@@148 $generated@@147)) ($generated@@85 $generated@@32 ($generated@@88 $generated@@148 $generated@@147)))
 :pattern ( ($generated@@88 $generated@@148 ($generated@@85 $generated@@148 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (! ($generated@@39 $generated@@13 $generated@@150 $generated $generated@@149)
 :pattern ( ($generated@@39 $generated@@13 $generated@@150 $generated $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ) (! ($generated@@64 $generated@@13 $generated@@151 $generated)
 :pattern ( ($generated@@64 $generated@@13 $generated@@151 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@157  (=> (= $generated@@152 ($generated@@109 $generated@@36 $generated@@153 $generated@@1 false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $generated@@154 $generated@@36)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= ($generated@@92 $generated@@154) ($generated@@83 18))) (=> (= ($generated@@92 $generated@@154) ($generated@@83 18)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $generated@@155 $generated@@36)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= ($generated@@92 $generated@@155) ($generated@@83 18))) (=> (= ($generated@@92 $generated@@155) ($generated@@83 18)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@155 $generated@@36)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@28 $generated@@155) ($generated@@83 20)))))))))))))
(let (($generated@@158  (=> (and ($generated@@35 $generated@@153) ($generated@@156 $generated@@153)) (=> (and (and (and ($generated@@64 $generated@@33 $generated@@154 $generated@@71) ($generated@@39 $generated@@33 $generated@@154 $generated@@71 $generated@@153)) (and ($generated@@64 $generated@@33 $generated@@155 $generated@@38) ($generated@@39 $generated@@33 $generated@@155 $generated@@38 $generated@@153))) (and (and (= 1 $generated@@27) (or (not (= $generated@@154 $generated@@36)) (not true))) (and (or (not (= $generated@@155 $generated@@36)) (not true)) (= (ControlFlow 0 8) 2)))) $generated@@157))))
$generated@@158)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)