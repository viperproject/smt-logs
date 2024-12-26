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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 () Int)
(declare-fun $generated@@27 (Int) T@U)
(declare-fun $generated@@28 (Int) Bool)
(declare-fun $generated@@29 (Int) Int)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 (Int) T@U)
(declare-fun $generated@@36 (Int) Bool)
(declare-fun $generated@@38 (T@U T@U T@U) Bool)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@42 () Bool)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@T T@U) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@T T@U T@U) Bool)
(declare-fun $generated@@77 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@80 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@81 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 (T@T T@T) T@T)
(declare-fun $generated@@84 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@85 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@86 (T@T) T@T)
(declare-fun $generated@@87 (T@T) T@T)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (forall (($generated@@22 T@U) ($generated@@23 T@U) ) (! ($generated@@20 $generated@@6 $generated@@22 $generated@@21 $generated@@23)
 :pattern ( ($generated@@20 $generated@@6 $generated@@22 $generated@@21 $generated@@23))
)))
(assert ($generated@@24 $generated@@25))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@33 Int) ) (!  (=> (or ($generated@@28 $generated@@33) (and (< 2 $generated@@26) (and (<= ($generated@@29 0) $generated@@33) (exists (($generated@@34 T@U) ) (!  (and ($generated@@31 $generated@@34 $generated@@25) ($generated@@30 $generated@@34))
 :pattern ( ($generated@@30 $generated@@34))
))))) ($generated@@31 ($generated@@27 $generated@@33) $generated@@32))
 :pattern ( ($generated@@27 $generated@@33))
))))
(assert  (=> (<= 3 $generated@@26) (forall (($generated@@37 Int) ) (!  (=> (or ($generated@@36 $generated@@37) (and (< 3 $generated@@26) (<= ($generated@@29 0) $generated@@37))) ($generated@@31 ($generated@@35 $generated@@37) $generated@@32))
 :pattern ( ($generated@@35 $generated@@37))
))))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@32 $generated@@40) ($generated@@38 $generated@@39 $generated@@25 $generated@@40))
 :pattern ( ($generated@@38 $generated@@39 $generated@@32 $generated@@40))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@44 T@U) ($generated@@45 Int) ) (!  (=> (or ($generated@@28 $generated@@45) (and (< 2 $generated@@26) (and (and ($generated@@41 $generated@@44) (<= ($generated@@29 0) $generated@@45)) (exists (($generated@@46 T@U) ) (!  (and ($generated@@31 $generated@@46 $generated@@25) ($generated@@30 $generated@@46))
 :pattern ( ($generated@@30 $generated@@46))
))))) (and $generated@@42 (= ($generated@@27 $generated@@45) (let (($generated@@47 $generated@@43))
$generated@@47))))
 :pattern ( ($generated@@27 $generated@@45) ($generated@@41 $generated@@44))
))))
(assert (forall (($generated@@48 Int) ) (! (= ($generated@@29 $generated@@48) $generated@@48)
 :pattern ( ($generated@@29 $generated@@48))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@49 $generated@@51 $generated@@50) $generated@@50)
 :pattern ( ($generated@@49 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 ($generated@@52 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@52 $generated@@55 $generated@@54))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@56 T@U) ($generated@@57 Int) ) (!  (=> (or ($generated@@28 ($generated@@29 $generated@@57)) (and (< 2 $generated@@26) (and (and ($generated@@41 $generated@@56) (<= ($generated@@29 0) $generated@@57)) (exists (($generated@@58 T@U) ) (!  (and ($generated@@31 $generated@@58 $generated@@25) ($generated@@30 $generated@@58))
 :pattern ( ($generated@@30 $generated@@58))
))))) (and $generated@@42 (= ($generated@@27 ($generated@@29 $generated@@57)) (let (($generated@@59 $generated@@43))
$generated@@59))))
 :weight 3
 :pattern ( ($generated@@27 ($generated@@29 $generated@@57)) ($generated@@41 $generated@@56))
))))
(assert (forall (($generated@@61 T@U) ) (! (= ($generated@@60 $generated@@6 $generated@@61 $generated@@21) (<= ($generated@@29 0) ($generated@@11 $generated@@61)))
 :pattern ( ($generated@@60 $generated@@6 $generated@@61 $generated@@21))
)))
(assert  (=> $generated@@42 (and ($generated@@31 $generated@@43 $generated@@25) ($generated@@30 $generated@@43))))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@38 ($generated@@53 $generated@@65 $generated@@62) $generated@@63 $generated@@64) ($generated@@20 $generated@@65 $generated@@62 $generated@@63 $generated@@64))
 :pattern ( ($generated@@38 ($generated@@53 $generated@@65 $generated@@62) $generated@@63 $generated@@64))
)))
(assert  (=> (<= 3 $generated@@26) (forall (($generated@@66 Int) ) (!  (=> (or ($generated@@36 $generated@@66) (and (< 3 $generated@@26) (<= ($generated@@29 0) $generated@@66))) (and ($generated@@28 $generated@@66) (= ($generated@@35 $generated@@66) (let (($generated@@67 ($generated@@27 $generated@@66)))
$generated@@67))))
 :pattern ( ($generated@@35 $generated@@66))
))))
(assert (forall (($generated@@68 T@U) ) (!  (=> ($generated@@31 $generated@@68 $generated@@21) (and (= ($generated@@53 $generated@@6 ($generated@@52 $generated@@6 $generated@@68)) $generated@@68) ($generated@@60 $generated@@6 ($generated@@52 $generated@@6 $generated@@68) $generated@@21)))
 :pattern ( ($generated@@31 $generated@@68 $generated@@21))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@31 ($generated@@53 $generated@@71 $generated@@69) $generated@@70) ($generated@@60 $generated@@71 $generated@@69 $generated@@70))
 :pattern ( ($generated@@31 ($generated@@53 $generated@@71 $generated@@69) $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ) (!  (=> ($generated@@24 $generated@@72) (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (!  (=> ($generated@@31 $generated@@74 $generated@@72) ($generated@@38 $generated@@74 $generated@@72 $generated@@73))
 :pattern ( ($generated@@38 $generated@@74 $generated@@72 $generated@@73))
)))
 :pattern ( ($generated@@24 $generated@@72))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@52 $generated@@76 ($generated@@53 $generated@@76 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@53 $generated@@76 $generated@@75))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@88 T@T) ($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@77 $generated@@88 $generated@@89 $generated@@90 ($generated@@84 $generated@@88 $generated@@89 $generated@@90 $generated@@92 $generated@@93 $generated@@94 $generated@@91) $generated@@93 $generated@@94) $generated@@91)
 :weight 0
)) (and (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (or (= $generated@@100 $generated@@102) (= ($generated@@77 $generated@@95 $generated@@96 $generated@@97 ($generated@@84 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@101 $generated@@98) $generated@@102 $generated@@103) ($generated@@77 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@102 $generated@@103)))
 :weight 0
)) (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@77 $generated@@104 $generated@@105 $generated@@106 ($generated@@84 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@77 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)))) (= ($generated@@4 $generated@@78) 3)) (= ($generated@@4 $generated@@79) 4)) (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@81 $generated@@113 $generated@@114 ($generated@@85 $generated@@113 $generated@@114 $generated@@116 $generated@@117 $generated@@115) $generated@@117) $generated@@115)
 :weight 0
))) (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (= $generated@@122 $generated@@123) (= ($generated@@81 $generated@@118 $generated@@119 ($generated@@85 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@120) $generated@@123) ($generated@@81 $generated@@118 $generated@@119 $generated@@121 $generated@@123)))
 :weight 0
))) (= ($generated@@4 $generated@@82) 5)) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (= ($generated@@4 ($generated@@83 $generated@@124 $generated@@125)) 6))) (forall (($generated@@126 T@T) ($generated@@127 T@T) ) (! (= ($generated@@86 ($generated@@83 $generated@@126 $generated@@127)) $generated@@126)
 :pattern ( ($generated@@83 $generated@@126 $generated@@127))
))) (forall (($generated@@128 T@T) ($generated@@129 T@T) ) (! (= ($generated@@87 ($generated@@83 $generated@@128 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@83 $generated@@128 $generated@@129))
))))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 Bool) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@9 ($generated@@77 $generated@@78 $generated@@79 $generated@@5 ($generated@@80 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))  (=> (and (or (not (= $generated@@134 $generated@@130)) (not true)) ($generated@@9 ($generated@@52 $generated@@5 ($generated@@81 $generated@@79 $generated@@82 ($generated@@81 $generated@@78 ($generated@@83 $generated@@79 $generated@@82) $generated@@131 $generated@@134) $generated@@132)))) $generated@@133))
 :pattern ( ($generated@@77 $generated@@78 $generated@@79 $generated@@5 ($generated@@80 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))
)))
(assert  (=> (<= 3 $generated@@26) (forall (($generated@@136 Int) ) (!  (=> (or ($generated@@36 ($generated@@29 $generated@@136)) (and (< 3 $generated@@26) (<= ($generated@@29 0) $generated@@136))) (and ($generated@@28 ($generated@@29 $generated@@136)) (= ($generated@@35 ($generated@@29 $generated@@136)) (let (($generated@@137 ($generated@@49 $generated@@82 ($generated@@27 ($generated@@29 $generated@@136)))))
$generated@@137))))
 :weight 3
 :pattern ( ($generated@@35 ($generated@@29 $generated@@136)))
))))
(assert (= ($generated@@138 $generated@@21) $generated@@0))
(assert (= ($generated@@139 $generated@@21) $generated@@2))
(assert (= ($generated@@138 $generated@@32) $generated@@1))
(assert (= ($generated@@139 $generated@@32) $generated@@3))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@31 $generated@@140 $generated@@32)  (and ($generated@@31 $generated@@140 $generated@@25) ($generated@@30 $generated@@140)))
 :pattern ( ($generated@@31 $generated@@140 $generated@@32))
)))
(assert (forall (($generated@@141 Int) ) (! (= ($generated@@53 $generated@@6 ($generated@@10 ($generated@@29 $generated@@141))) ($generated@@49 $generated@@82 ($generated@@53 $generated@@6 ($generated@@10 $generated@@141))))
 :pattern ( ($generated@@53 $generated@@6 ($generated@@10 ($generated@@29 $generated@@141))))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@T) ) (! (= ($generated@@53 $generated@@143 ($generated@@49 $generated@@143 $generated@@142)) ($generated@@49 $generated@@82 ($generated@@53 $generated@@143 $generated@@142)))
 :pattern ( ($generated@@53 $generated@@143 ($generated@@49 $generated@@143 $generated@@142)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@149  (=> (and ($generated@@20 $generated@@6 ($generated@@10 $generated@@144) $generated@@21 $generated@@145) (= (ControlFlow 0 3) (- 0 2))) (exists (($generated@@150 T@U) ) (!  (and ($generated@@31 $generated@@150 $generated@@25) ($generated@@30 $generated@@150))
 :pattern ( ($generated@@30 $generated@@150))
)))))
(let (($generated@@151 true))
(let (($generated@@152  (=> (= $generated@@146 ($generated@@80 $generated@@147 $generated@@145 $generated false)) (and (=> (= (ControlFlow 0 4) 1) $generated@@151) (=> (= (ControlFlow 0 4) 3) $generated@@149)))))
(let (($generated@@153  (=> (and (and (and ($generated@@41 $generated@@145) ($generated@@148 $generated@@145)) (<= ($generated@@29 0) $generated@@144)) (and (= 3 $generated@@26) (= (ControlFlow 0 5) 4))) $generated@@152)))
$generated@@153)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)