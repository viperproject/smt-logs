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
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 () T@U)
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (T@T T@U T@U) Bool)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@U Int) T@U)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@48 (T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@63 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@67 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@68 () T@T)
(declare-fun $generated@@69 (T@T T@T) T@T)
(declare-fun $generated@@70 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@72 (T@T) T@T)
(declare-fun $generated@@73 (T@T) T@T)
(declare-fun $generated@@124 (T@U) Bool)
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
(assert (= ($generated@@17 $generated@@18) 0))
(assert (= ($generated@@1 $generated@@23) 3))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@25 T@U) ) (!  (=> (or ($generated@@21 $generated@@25) (< 0 $generated@@19)) ($generated@@22 $generated@@23 ($generated@@20 $generated@@25) ($generated@@24 $generated@@25)))
 :pattern ( ($generated@@20 $generated@@25))
))))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@T) ) (! (= ($generated@@26 $generated@@28 $generated@@27) $generated@@27)
 :pattern ( ($generated@@26 $generated@@28 $generated@@27))
)))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@29 $generated@@31 $generated@@32)  (and (= ($generated@@17 $generated@@31) ($generated@@17 $generated@@32)) (forall (($generated@@33 Int) ) (!  (=> (and (<= 0 $generated@@33) (< $generated@@33 ($generated@@17 $generated@@31))) (= ($generated@@30 $generated@@31 $generated@@33) ($generated@@30 $generated@@32 $generated@@33)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@33))
 :pattern ( ($generated@@30 $generated@@32 $generated@@33))
))))
 :pattern ( ($generated@@29 $generated@@31 $generated@@32))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 ($generated@@34 $generated@@37 $generated@@36)) $generated@@36)
 :pattern ( ($generated@@34 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@38 ($generated@@35 $generated@@43 $generated@@40) $generated@@41 $generated@@42) ($generated@@39 $generated@@43 $generated@@40 $generated@@41 $generated@@42))
 :pattern ( ($generated@@38 ($generated@@35 $generated@@43 $generated@@40) $generated@@41 $generated@@42))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@44 T@U) ) (!  (=> (or ($generated@@21 $generated@@44) (< 0 $generated@@19)) (= ($generated@@20 $generated@@44) ($generated@@26 $generated@@23 $generated@@18)))
 :pattern ( ($generated@@20 $generated@@44))
))))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@45 T@U) ) (!  (=> (or ($generated@@21 $generated@@45) (< 0 $generated@@19)) (= ($generated@@20 $generated@@45) ($generated@@26 $generated@@23 $generated@@18)))
 :weight 3
 :pattern ( ($generated@@20 $generated@@45))
))))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> ($generated@@29 $generated@@46 $generated@@47) (= $generated@@46 $generated@@47))
 :pattern ( ($generated@@29 $generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@48 ($generated@@35 $generated@@51 $generated@@49) $generated@@50) ($generated@@22 $generated@@51 $generated@@49 $generated@@50))
 :pattern ( ($generated@@48 ($generated@@35 $generated@@51 $generated@@49) $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ) (! (<= 0 ($generated@@17 $generated@@52))
 :pattern ( ($generated@@17 $generated@@52))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@39 $generated@@23 $generated@@53 ($generated@@24 $generated@@54) $generated@@55) (forall (($generated@@56 Int) ) (!  (=> (and (<= 0 $generated@@56) (< $generated@@56 ($generated@@17 $generated@@53))) ($generated@@38 ($generated@@30 $generated@@53 $generated@@56) $generated@@54 $generated@@55))
 :pattern ( ($generated@@30 $generated@@53 $generated@@56))
)))
 :pattern ( ($generated@@39 $generated@@23 $generated@@53 ($generated@@24 $generated@@54) $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ) (! (= ($generated@@57 ($generated@@24 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@24 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ) (! (= ($generated@@59 ($generated@@24 $generated@@60)) $generated)
 :pattern ( ($generated@@24 $generated@@60))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@34 $generated@@62 ($generated@@35 $generated@@62 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@35 $generated@@62 $generated@@61))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@63 $generated@@74 $generated@@75 $generated@@76 ($generated@@70 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@80 $generated@@77) $generated@@79 $generated@@80) $generated@@77)
 :weight 0
)) (and (forall (($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (or (= $generated@@86 $generated@@88) (= ($generated@@63 $generated@@81 $generated@@82 $generated@@83 ($generated@@70 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@87 $generated@@84) $generated@@88 $generated@@89) ($generated@@63 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@88 $generated@@89)))
 :weight 0
)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (or (= $generated@@96 $generated@@98) (= ($generated@@63 $generated@@90 $generated@@91 $generated@@92 ($generated@@70 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96 $generated@@93) $generated@@97 $generated@@98) ($generated@@63 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@97 $generated@@98)))
 :weight 0
)))) (= ($generated@@1 $generated@@64) 4)) (= ($generated@@1 $generated@@65) 5)) (forall (($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@67 $generated@@99 $generated@@100 ($generated@@71 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@101) $generated@@103) $generated@@101)
 :weight 0
))) (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (or (= $generated@@108 $generated@@109) (= ($generated@@67 $generated@@104 $generated@@105 ($generated@@71 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@106) $generated@@109) ($generated@@67 $generated@@104 $generated@@105 $generated@@107 $generated@@109)))
 :weight 0
))) (= ($generated@@1 $generated@@68) 6)) (forall (($generated@@110 T@T) ($generated@@111 T@T) ) (= ($generated@@1 ($generated@@69 $generated@@110 $generated@@111)) 7))) (forall (($generated@@112 T@T) ($generated@@113 T@T) ) (! (= ($generated@@72 ($generated@@69 $generated@@112 $generated@@113)) $generated@@112)
 :pattern ( ($generated@@69 $generated@@112 $generated@@113))
))) (forall (($generated@@114 T@T) ($generated@@115 T@T) ) (! (= ($generated@@73 ($generated@@69 $generated@@114 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@69 $generated@@114 $generated@@115))
))))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 Bool) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@6 ($generated@@63 $generated@@64 $generated@@65 $generated@@2 ($generated@@66 $generated@@116 $generated@@117 $generated@@118 $generated@@119) $generated@@120 $generated@@121))  (=> (and (or (not (= $generated@@120 $generated@@116)) (not true)) ($generated@@6 ($generated@@34 $generated@@2 ($generated@@67 $generated@@65 $generated@@68 ($generated@@67 $generated@@64 ($generated@@69 $generated@@65 $generated@@68) $generated@@117 $generated@@120) $generated@@118)))) $generated@@119))
 :pattern ( ($generated@@63 $generated@@64 $generated@@65 $generated@@2 ($generated@@66 $generated@@116 $generated@@117 $generated@@118 $generated@@119) $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> ($generated@@48 $generated@@122 ($generated@@24 $generated@@123)) (and (= ($generated@@35 $generated@@23 ($generated@@34 $generated@@23 $generated@@122)) $generated@@122) ($generated@@22 $generated@@23 ($generated@@34 $generated@@23 $generated@@122) ($generated@@24 $generated@@123))))
 :pattern ( ($generated@@48 $generated@@122 ($generated@@24 $generated@@123)))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and (or ($generated@@21 $generated@@126) (< 0 $generated@@19)) ($generated@@124 $generated@@125)) ($generated@@39 $generated@@23 ($generated@@20 $generated@@126) ($generated@@24 $generated@@126) $generated@@125))
 :pattern ( ($generated@@39 $generated@@23 ($generated@@20 $generated@@126) ($generated@@24 $generated@@126) $generated@@125))
))))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@35 $generated@@128 ($generated@@26 $generated@@128 $generated@@127)) ($generated@@26 $generated@@68 ($generated@@35 $generated@@128 $generated@@127)))
 :pattern ( ($generated@@35 $generated@@128 ($generated@@26 $generated@@128 $generated@@127)))
)))
(assert (forall (($generated@@129 T@U) ) (!  (=> (= ($generated@@17 $generated@@129) 0) (= $generated@@129 $generated@@18))
 :pattern ( ($generated@@17 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@22 $generated@@23 $generated@@130 ($generated@@24 $generated@@131)) (forall (($generated@@132 Int) ) (!  (=> (and (<= 0 $generated@@132) (< $generated@@132 ($generated@@17 $generated@@130))) ($generated@@48 ($generated@@30 $generated@@130 $generated@@132) $generated@@131))
 :pattern ( ($generated@@30 $generated@@130 $generated@@132))
)))
 :pattern ( ($generated@@22 $generated@@23 $generated@@130 ($generated@@24 $generated@@131)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@133 () T@U)
(declare-fun $generated@@134 () T@U)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@138  (=> (and ($generated@@21 $generated@@133) (= (ControlFlow 0 3) (- 0 2))) ($generated@@29 $generated@@18 ($generated@@20 $generated@@133)))))
(let (($generated@@139 true))
(let (($generated@@140  (=> (= $generated@@134 ($generated@@66 $generated@@135 $generated@@136 $generated@@0 false)) (and (=> (= (ControlFlow 0 4) 1) $generated@@139) (=> (= (ControlFlow 0 4) 3) $generated@@138)))))
(let (($generated@@141  (=> (and (and ($generated@@124 $generated@@136) ($generated@@137 $generated@@136)) (and (= 1 $generated@@19) (= (ControlFlow 0 5) 4))) $generated@@140)))
$generated@@141)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)