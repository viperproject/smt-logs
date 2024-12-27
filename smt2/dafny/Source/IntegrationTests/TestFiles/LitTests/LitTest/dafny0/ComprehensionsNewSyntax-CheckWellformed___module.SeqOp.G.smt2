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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@33 (T@U T@U Int) Real)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@53 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@T T@T) T@T)
(declare-fun $generated@@57 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@58 (T@T) T@T)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@79 (Int) Int)
(declare-fun $generated@@81 (Real) Real)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@89 (T@U) Bool)
(declare-fun $generated@@92 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@93 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@94 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 (T@U T@U Int) Bool)
(declare-fun $generated@@142 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated@@1) 0))
(assert (= ($generated@@27 $generated) $generated@@0))
(assert (= ($generated@@28 $generated@@1) $generated@@2))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (! ($generated@@29 $generated@@12 $generated@@31 $generated@@30 $generated@@32)
 :pattern ( ($generated@@29 $generated@@12 $generated@@31 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 Int) ) (! (= ($generated@@33 $generated@@39 $generated@@38 $generated@@40) ($generated@@19 ($generated@@34 $generated@@13 ($generated@@35 $generated@@30 $generated $generated@@39 ($generated@@36 $generated@@38) ($generated@@37 $generated@@12 ($generated@@16 $generated@@40))))))
 :pattern ( ($generated@@33 $generated@@39 $generated@@38 $generated@@40))
)))
(assert (= ($generated@@10 $generated@@42) 3))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@46 $generated@@43)  (or (= $generated@@46 $generated@@44) (= ($generated@@45 $generated@@46) $generated@@43)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@46 $generated@@43))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@29 $generated@@42 $generated@@48 $generated@@47 $generated@@49) ($generated@@29 $generated@@42 $generated@@48 $generated@@43 $generated@@49))
 :pattern ( ($generated@@29 $generated@@42 $generated@@48 $generated@@47 $generated@@49))
 :pattern ( ($generated@@29 $generated@@42 $generated@@48 $generated@@43 $generated@@49))
)))
(assert (= ($generated@@26 $generated@@50) 0))
(assert (= ($generated@@51 $generated@@4 $generated@@9) $generated@@50))
(assert  (not ($generated@@52 $generated@@50)))
(assert  (and (and (and (and (and (and (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@53 $generated@@60 $generated@@61 ($generated@@57 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@64) $generated@@62)
 :weight 0
)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (or (= $generated@@69 $generated@@70) (= ($generated@@53 $generated@@65 $generated@@66 ($generated@@57 $generated@@65 $generated@@66 $generated@@68 $generated@@69 $generated@@67) $generated@@70) ($generated@@53 $generated@@65 $generated@@66 $generated@@68 $generated@@70)))
 :weight 0
))) (= ($generated@@10 $generated@@54) 4)) (= ($generated@@10 $generated@@55) 5)) (forall (($generated@@71 T@T) ($generated@@72 T@T) ) (= ($generated@@10 ($generated@@56 $generated@@71 $generated@@72)) 6))) (forall (($generated@@73 T@T) ($generated@@74 T@T) ) (! (= ($generated@@58 ($generated@@56 $generated@@73 $generated@@74)) $generated@@73)
 :pattern ( ($generated@@56 $generated@@73 $generated@@74))
))) (forall (($generated@@75 T@T) ($generated@@76 T@T) ) (! (= ($generated@@59 ($generated@@56 $generated@@75 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@56 $generated@@75 $generated@@76))
))))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@29 $generated@@42 $generated@@77 $generated@@43 $generated@@78)  (or (= $generated@@77 $generated@@44) ($generated@@15 ($generated@@34 $generated@@11 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@78 $generated@@77) $generated@@1)))))
 :pattern ( ($generated@@29 $generated@@42 $generated@@77 $generated@@43 $generated@@78))
)))
(assert (forall (($generated@@80 Int) ) (! (= ($generated@@79 $generated@@80) $generated@@80)
 :pattern ( ($generated@@79 $generated@@80))
)))
(assert (forall (($generated@@82 Real) ) (! (= ($generated@@81 $generated@@82) $generated@@82)
 :pattern ( ($generated@@81 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 $generated@@84) $generated@@84)
 :pattern ( ($generated@@83 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@37 $generated@@87 ($generated@@34 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@34 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (! (= ($generated@@41 $generated@@12 $generated@@88 $generated@@30) (<= ($generated@@79 0) ($generated@@17 $generated@@88)))
 :pattern ( ($generated@@41 $generated@@12 $generated@@88 $generated@@30))
)))
(assert ($generated@@52 $generated@@1))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (and (and ($generated@@89 $generated@@90) (and (or (not (= $generated@@91 $generated@@44)) (not true)) (= ($generated@@45 $generated@@91) $generated@@43))) ($generated@@15 ($generated@@34 $generated@@11 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@90 $generated@@91) $generated@@1)))) ($generated@@29 $generated@@13 ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@90 $generated@@91) $generated@@50)) $generated $generated@@90))
 :pattern ( ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@90 $generated@@91) $generated@@50)))
)))
(assert  (and (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@92 $generated@@95 $generated@@96 $generated@@97 ($generated@@94 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@101 $generated@@98) $generated@@100 $generated@@101) $generated@@98)
 :weight 0
)) (and (forall (($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (or (= $generated@@107 $generated@@109) (= ($generated@@92 $generated@@102 $generated@@103 $generated@@104 ($generated@@94 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@108 $generated@@105) $generated@@109 $generated@@110) ($generated@@92 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@109 $generated@@110)))
 :weight 0
)) (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (or (= $generated@@117 $generated@@119) (= ($generated@@92 $generated@@111 $generated@@112 $generated@@113 ($generated@@94 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@116 $generated@@117 $generated@@114) $generated@@118 $generated@@119) ($generated@@92 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@118 $generated@@119)))
 :weight 0
)))))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@15 ($generated@@92 $generated@@42 $generated@@54 $generated@@11 ($generated@@93 $generated@@120 $generated@@121 $generated@@122 $generated@@123) $generated@@124 $generated@@125))  (=> (and (or (not (= $generated@@124 $generated@@120)) (not true)) ($generated@@15 ($generated@@34 $generated@@11 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@121 $generated@@124) $generated@@122)))) (= $generated@@124 $generated@@123)))
 :pattern ( ($generated@@92 $generated@@42 $generated@@54 $generated@@11 ($generated@@93 $generated@@120 $generated@@121 $generated@@122 $generated@@123) $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@126 $generated@@47)  (and ($generated@@41 $generated@@42 $generated@@126 $generated@@43) (or (not (= $generated@@126 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@126 $generated@@47))
 :pattern ( ($generated@@41 $generated@@42 $generated@@126 $generated@@43))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (and (= ($generated@@127 ($generated@@51 $generated@@128 $generated@@129)) $generated@@128) (= ($generated@@28 ($generated@@51 $generated@@128 $generated@@129)) $generated@@129))
 :pattern ( ($generated@@51 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@34 $generated@@131 ($generated@@37 $generated@@131 $generated@@130)) $generated@@130)
 :pattern ( ($generated@@37 $generated@@131 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> (and ($generated@@89 $generated@@132) (and (or (not (= $generated@@133 $generated@@44)) (not true)) (= ($generated@@45 $generated@@133) $generated@@43))) ($generated@@41 $generated@@13 ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@132 $generated@@133) $generated@@50)) $generated))
 :pattern ( ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@132 $generated@@133) $generated@@50)))
)))
(assert  (=> (<= 0 $generated@@134) (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 Int) ) (!  (=> (or ($generated@@135 $generated@@136 $generated@@137 $generated@@138) (and (< 0 $generated@@134) (and (and ($generated@@89 $generated@@136) (and (or (not (= $generated@@137 $generated@@44)) (not true)) (and ($generated@@41 $generated@@42 $generated@@137 $generated@@47) ($generated@@29 $generated@@42 $generated@@137 $generated@@47 $generated@@136)))) (<= ($generated@@79 0) $generated@@138)))) (= ($generated@@33 $generated@@136 $generated@@137 $generated@@138) (ite (< $generated@@138 20) 2.5 ($generated@@19 ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@136 $generated@@137) $generated@@50))))))
 :pattern ( ($generated@@33 $generated@@136 $generated@@137 $generated@@138) ($generated@@89 $generated@@136))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@35 $generated@@30 $generated $generated@@140 ($generated@@36 $generated@@139) $generated@@141) ($generated@@37 $generated@@13 ($generated@@18 ($generated@@33 $generated@@140 $generated@@139 ($generated@@17 ($generated@@34 $generated@@12 $generated@@141))))))
 :pattern ( ($generated@@35 $generated@@30 $generated $generated@@140 ($generated@@36 $generated@@139) $generated@@141))
)))
(assert (= ($generated@@27 $generated@@30) $generated@@3))
(assert (= ($generated@@142 $generated@@30) $generated@@7))
(assert (= ($generated@@27 $generated@@43) $generated@@5))
(assert (= ($generated@@142 $generated@@43) $generated@@8))
(assert (= ($generated@@27 $generated@@47) $generated@@6))
(assert (= ($generated@@142 $generated@@47) $generated@@8))
(assert (forall (($generated@@143 Int) ) (! (= ($generated@@37 $generated@@12 ($generated@@16 ($generated@@79 $generated@@143))) ($generated@@83 $generated@@55 ($generated@@37 $generated@@12 ($generated@@16 $generated@@143))))
 :pattern ( ($generated@@37 $generated@@12 ($generated@@16 ($generated@@79 $generated@@143))))
)))
(assert (forall (($generated@@144 Real) ) (! (= ($generated@@37 $generated@@13 ($generated@@18 ($generated@@81 $generated@@144))) ($generated@@83 $generated@@55 ($generated@@37 $generated@@13 ($generated@@18 $generated@@144))))
 :pattern ( ($generated@@37 $generated@@13 ($generated@@18 ($generated@@81 $generated@@144))))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@T) ) (! (= ($generated@@37 $generated@@146 ($generated@@83 $generated@@146 $generated@@145)) ($generated@@83 $generated@@55 ($generated@@37 $generated@@146 $generated@@145)))
 :pattern ( ($generated@@37 $generated@@146 ($generated@@83 $generated@@146 $generated@@145)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (! ($generated@@29 $generated@@13 $generated@@148 $generated $generated@@147)
 :pattern ( ($generated@@29 $generated@@13 $generated@@148 $generated $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ) (! ($generated@@41 $generated@@13 $generated@@149 $generated)
 :pattern ( ($generated@@41 $generated@@13 $generated@@149 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@150 () Int)
(declare-fun $generated@@151 () Bool)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@156  (=> (<= 20 $generated@@150) (=> (and (and (= $generated@@151 ($generated@@15 ($generated@@92 $generated@@42 $generated@@54 $generated@@11 $generated@@152 $generated@@153 $generated@@50))) (= ($generated@@33 $generated@@154 $generated@@153 $generated@@150) ($generated@@19 ($generated@@34 $generated@@13 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@42 ($generated@@56 $generated@@54 $generated@@55) $generated@@154 $generated@@153) $generated@@50))))) (and ($generated@@41 $generated@@13 ($generated@@18 ($generated@@33 $generated@@154 $generated@@153 $generated@@150)) $generated) (= (ControlFlow 0 4) (- 0 3)))) $generated@@151))))
(let (($generated@@157 true))
(let (($generated@@158 true))
(let (($generated@@159  (=> (= $generated@@152 ($generated@@93 $generated@@44 $generated@@154 $generated@@1 $generated@@153)) (and (and (=> (= (ControlFlow 0 5) 1) $generated@@158) (=> (= (ControlFlow 0 5) 2) $generated@@157)) (=> (= (ControlFlow 0 5) 4) $generated@@156)))))
(let (($generated@@160  (=> (and ($generated@@89 $generated@@154) ($generated@@155 $generated@@154)) (=> (and (and (and (or (not (= $generated@@153 $generated@@44)) (not true)) (and ($generated@@41 $generated@@42 $generated@@153 $generated@@47) ($generated@@29 $generated@@42 $generated@@153 $generated@@47 $generated@@154))) (<= ($generated@@79 0) $generated@@150)) (and (= 0 $generated@@134) (= (ControlFlow 0 6) 5))) $generated@@159))))
$generated@@160))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)