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
(declare-fun $generated@@2 (T@T) Int)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 (Bool) T@U)
(declare-fun $generated@@7 (T@U) Bool)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun $generated@@9 (T@U) Int)
(declare-fun $generated@@10 (Real) T@U)
(declare-fun $generated@@11 (T@U) Real)
(declare-fun $generated@@18 () Int)
(declare-fun $generated@@19 (T@U Int) Int)
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@22 (Int) Bool)
(declare-fun $generated@@23 (Int Int) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (Int) Int)
(declare-fun $generated@@28 (Int) Bool)
(declare-fun $generated@@30 (Int) Bool)
(declare-fun $generated@@31 (Int) Bool)
(declare-fun $generated@@32 (Int Int) Int)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 () T@T)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@56 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 (T@T T@T) T@T)
(declare-fun $generated@@59 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@60 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@T) T@T)
(declare-fun $generated@@62 (T@T) T@T)
(declare-fun $generated@@117 (T@T T@U T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@2 $generated@@3) 0) (= ($generated@@2 $generated@@4) 1)) (= ($generated@@2 $generated@@5) 2)) (forall (($generated@@12 Bool) ) (! (= ($generated@@7 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 T@U) ) (! (= ($generated@@6 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 Int) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Real) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))))
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@24 T@U) ($generated@@25 Int) ) (!  (=> (or ($generated@@22 ($generated@@21 $generated@@25)) (and (< 0 $generated@@18) (<= ($generated@@21 0) ($generated@@21 $generated@@25)))) (and (=> (or (not (= ($generated@@21 $generated@@25) ($generated@@21 0))) (not true)) ($generated@@22 ($generated@@21 (- $generated@@25 1)))) (= ($generated@@19 ($generated@@20 $generated@@24) ($generated@@21 $generated@@25)) (ite (= ($generated@@21 $generated@@25) ($generated@@21 0)) 1 ($generated@@23 ($generated@@21 2) ($generated@@21 ($generated@@19 ($generated@@20 $generated@@24) ($generated@@21 (- $generated@@25 1)))))))))
 :weight 3
 :pattern ( ($generated@@19 ($generated@@20 $generated@@24) ($generated@@21 $generated@@25)))
))))
(assert (= ($generated@@26 $generated) $generated@@0))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@29 Int) ) (!  (=> (or ($generated@@28 ($generated@@21 $generated@@29)) (< 0 $generated@@18)) (= ($generated@@27 ($generated@@21 $generated@@29)) ($generated@@21 ($generated@@23 ($generated@@21 $generated@@29) ($generated@@21 $generated@@29)))))
 :weight 3
 :pattern ( ($generated@@27 ($generated@@21 $generated@@29)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@33 Int) ) (!  (=> (or ($generated@@31 $generated@@33) (and (< 0 $generated@@18) (<= ($generated@@21 0) $generated@@33))) (= ($generated@@30 $generated@@33) (= ($generated@@23 ($generated@@32 $generated@@33 ($generated@@21 2)) ($generated@@21 2)) $generated@@33)))
 :pattern ( ($generated@@30 $generated@@33))
))))
(assert (forall (($generated@@34 Int) ) (! (= ($generated@@21 $generated@@34) $generated@@34)
 :pattern ( ($generated@@21 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@39 $generated@@41 ($generated@@38 $generated@@41 $generated@@40)) $generated@@40)
 :pattern ( ($generated@@38 $generated@@41 $generated@@40))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@42 Int) ) (!  (=> (or ($generated@@31 ($generated@@21 $generated@@42)) (and (< 0 $generated@@18) (<= ($generated@@21 0) ($generated@@21 $generated@@42)))) (= ($generated@@30 ($generated@@21 $generated@@42)) (= ($generated@@21 ($generated@@23 ($generated@@21 ($generated@@32 $generated@@42 ($generated@@21 2))) ($generated@@21 2))) ($generated@@21 $generated@@42))))
 :weight 3
 :pattern ( ($generated@@30 ($generated@@21 $generated@@42)))
))))
(assert (forall (($generated@@43 Int) ($generated@@44 Int) ) (! (= ($generated@@32 $generated@@43 $generated@@44) (div $generated@@43 $generated@@44))
 :pattern ( ($generated@@32 $generated@@43 $generated@@44))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@45 T@U) ($generated@@46 Int) ) (!  (=> (or ($generated@@22 $generated@@46) (and (< 0 $generated@@18) (<= ($generated@@21 0) $generated@@46))) (and (=> (or (not (= $generated@@46 ($generated@@21 0))) (not true)) ($generated@@22 (- $generated@@46 1))) (= ($generated@@19 ($generated@@20 $generated@@45) $generated@@46) (ite (= $generated@@46 ($generated@@21 0)) 1 ($generated@@23 ($generated@@21 2) ($generated@@19 $generated@@45 (- $generated@@46 1)))))))
 :pattern ( ($generated@@19 ($generated@@20 $generated@@45) $generated@@46))
))))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@T) ) (! (= ($generated@@38 $generated@@48 ($generated@@39 $generated@@48 $generated@@47)) $generated@@47)
 :pattern ( ($generated@@39 $generated@@48 $generated@@47))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@49 Int) ) (!  (=> (or ($generated@@28 $generated@@49) (< 0 $generated@@18)) (= ($generated@@27 $generated@@49) ($generated@@23 $generated@@49 $generated@@49)))
 :pattern ( ($generated@@27 $generated@@49))
))))
(assert (forall (($generated@@50 T@U) ($generated@@51 Int) ) (! (= ($generated@@19 ($generated@@20 $generated@@50) $generated@@51) ($generated@@19 $generated@@50 $generated@@51))
 :pattern ( ($generated@@19 ($generated@@20 $generated@@50) $generated@@51))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@T) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@52 $generated@@63 $generated@@64 $generated@@65 ($generated@@59 $generated@@63 $generated@@64 $generated@@65 $generated@@67 $generated@@68 $generated@@69 $generated@@66) $generated@@68 $generated@@69) $generated@@66)
 :weight 0
)) (and (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@T) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (or (= $generated@@75 $generated@@77) (= ($generated@@52 $generated@@70 $generated@@71 $generated@@72 ($generated@@59 $generated@@70 $generated@@71 $generated@@72 $generated@@74 $generated@@75 $generated@@76 $generated@@73) $generated@@77 $generated@@78) ($generated@@52 $generated@@70 $generated@@71 $generated@@72 $generated@@74 $generated@@77 $generated@@78)))
 :weight 0
)) (forall (($generated@@79 T@T) ($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (or (= $generated@@85 $generated@@87) (= ($generated@@52 $generated@@79 $generated@@80 $generated@@81 ($generated@@59 $generated@@79 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@85 $generated@@82) $generated@@86 $generated@@87) ($generated@@52 $generated@@79 $generated@@80 $generated@@81 $generated@@83 $generated@@86 $generated@@87)))
 :weight 0
)))) (= ($generated@@2 $generated@@53) 3)) (= ($generated@@2 $generated@@54) 4)) (forall (($generated@@88 T@T) ($generated@@89 T@T) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@56 $generated@@88 $generated@@89 ($generated@@60 $generated@@88 $generated@@89 $generated@@91 $generated@@92 $generated@@90) $generated@@92) $generated@@90)
 :weight 0
))) (forall (($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (or (= $generated@@97 $generated@@98) (= ($generated@@56 $generated@@93 $generated@@94 ($generated@@60 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@95) $generated@@98) ($generated@@56 $generated@@93 $generated@@94 $generated@@96 $generated@@98)))
 :weight 0
))) (= ($generated@@2 $generated@@57) 5)) (forall (($generated@@99 T@T) ($generated@@100 T@T) ) (= ($generated@@2 ($generated@@58 $generated@@99 $generated@@100)) 6))) (forall (($generated@@101 T@T) ($generated@@102 T@T) ) (! (= ($generated@@61 ($generated@@58 $generated@@101 $generated@@102)) $generated@@101)
 :pattern ( ($generated@@58 $generated@@101 $generated@@102))
))) (forall (($generated@@103 T@T) ($generated@@104 T@T) ) (! (= ($generated@@62 ($generated@@58 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@58 $generated@@103 $generated@@104))
))))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 Bool) ($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@7 ($generated@@52 $generated@@53 $generated@@54 $generated@@3 ($generated@@55 $generated@@105 $generated@@106 $generated@@107 $generated@@108) $generated@@109 $generated@@110))  (=> (and (or (not (= $generated@@109 $generated@@105)) (not true)) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@56 $generated@@54 $generated@@57 ($generated@@56 $generated@@53 ($generated@@58 $generated@@54 $generated@@57) $generated@@106 $generated@@109) $generated@@107)))) $generated@@108))
 :pattern ( ($generated@@52 $generated@@53 $generated@@54 $generated@@3 ($generated@@55 $generated@@105 $generated@@106 $generated@@107 $generated@@108) $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@111 Int) ($generated@@112 Int) ) (! (= ($generated@@23 $generated@@111 $generated@@112) (* $generated@@111 $generated@@112))
 :pattern ( ($generated@@23 $generated@@111 $generated@@112))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@113 Int) ) (!  (=> (or ($generated@@31 $generated@@113) (and (< 0 $generated@@18) (<= ($generated@@21 0) $generated@@113))) (=> ($generated@@30 $generated@@113) (= $generated@@113 (+ ($generated@@32 $generated@@113 ($generated@@21 2)) ($generated@@32 $generated@@113 ($generated@@21 2))))))
 :pattern ( ($generated@@30 $generated@@113))
))))
(assert (forall (($generated@@114 Int) ) (! (= ($generated@@39 $generated@@4 ($generated@@8 ($generated@@21 $generated@@114))) ($generated@@35 $generated@@57 ($generated@@39 $generated@@4 ($generated@@8 $generated@@114))))
 :pattern ( ($generated@@39 $generated@@4 ($generated@@8 ($generated@@21 $generated@@114))))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@T) ) (! (= ($generated@@39 $generated@@116 ($generated@@35 $generated@@116 $generated@@115)) ($generated@@35 $generated@@57 ($generated@@39 $generated@@116 $generated@@115)))
 :pattern ( ($generated@@39 $generated@@116 ($generated@@35 $generated@@116 $generated@@115)))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (! ($generated@@117 $generated@@4 $generated@@119 $generated $generated@@118)
 :pattern ( ($generated@@117 $generated@@4 $generated@@119 $generated $generated@@118))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@120 () T@U)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () Int)
(declare-fun $generated@@124 (T@U) Bool)
(declare-fun $generated@@125 () T@U)
(declare-fun $generated@@126 (T@U) Bool)
(declare-fun $generated@@127 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@128  (=> (= $generated@@120 ($generated@@55 $generated@@121 $generated@@122 $generated@@1 false)) (=> (and (<= ($generated@@21 0) $generated@@123) ($generated@@117 $generated@@4 ($generated@@8 $generated@@123) $generated $generated@@122)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= ($generated@@21 0) $generated@@123)) (=> (<= ($generated@@21 0) $generated@@123) (=> (and ($generated@@31 $generated@@123) ($generated@@30 $generated@@123)) (=> (and (and ($generated@@124 $generated@@125) ($generated@@126 $generated@@125)) (and (= $generated@@122 $generated@@125) ($generated@@117 $generated@@4 ($generated@@8 $generated@@123) $generated $generated@@125))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= ($generated@@21 0) $generated@@123)) (=> (and (<= ($generated@@21 0) $generated@@123) ($generated@@22 $generated@@123)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= ($generated@@21 2) 0)) (not true))) (=> (or (not (= ($generated@@21 2) 0)) (not true)) (=> (= $generated@@127 ($generated@@32 $generated@@123 ($generated@@21 2))) (=> (and ($generated@@117 $generated@@4 ($generated@@8 $generated@@127) $generated $generated@@125) (= (ControlFlow 0 2) (- 0 1))) (<= ($generated@@21 0) $generated@@127)))))))))))))))
(let (($generated@@129  (=> (and (and ($generated@@124 $generated@@122) ($generated@@126 $generated@@122)) (and (= 1 $generated@@18) (= (ControlFlow 0 6) 2))) $generated@@128)))
$generated@@129)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)