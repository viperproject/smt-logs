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
(declare-fun $generated () Int)
(declare-fun $generated@@0 (T@U Int Int) Int)
(declare-fun $generated@@1 (Int Int) Bool)
(declare-fun $generated@@2 (Int) Int)
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@23 (T@T T@U) T@U)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@46 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@50 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@51 (T@T) T@T)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@101 (Int Int) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert  (=> (<= 0 $generated) (forall (($generated@@19 T@U) ($generated@@20 Int) ($generated@@21 Int) ) (!  (=> (or ($generated@@1 $generated@@20 $generated@@21) (and (< 0 $generated) (and (<= ($generated@@2 0) $generated@@20) (<= ($generated@@2 0) $generated@@21)))) (<= ($generated@@2 0) ($generated@@0 $generated@@19 $generated@@20 $generated@@21)))
 :pattern ( ($generated@@0 $generated@@19 $generated@@20 $generated@@21))
))))
(assert (forall (($generated@@22 Int) ) (! (= ($generated@@2 $generated@@22) $generated@@22)
 :pattern ( ($generated@@2 $generated@@22))
)))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@T) ) (! (= ($generated@@23 $generated@@25 $generated@@24) $generated@@24)
 :pattern ( ($generated@@23 $generated@@25 $generated@@24))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@T) ) (! (= ($generated@@27 $generated@@29 ($generated@@26 $generated@@29 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@26 $generated@@29 $generated@@28))
)))
(assert  (=> (<= 0 $generated) (forall (($generated@@31 T@U) ($generated@@32 Int) ($generated@@33 Int) ) (!  (=> (or ($generated@@1 ($generated@@2 $generated@@32) ($generated@@2 $generated@@33)) (and (< 0 $generated) (and (<= ($generated@@2 0) $generated@@32) (<= ($generated@@2 0) $generated@@33)))) (and (=> (or (not (= ($generated@@2 $generated@@32) ($generated@@2 0))) (not true)) (and (=> ($generated@@8 ($generated@@23 $generated@@4 ($generated@@7  (or (not (= $generated@@33 0)) (not true))))) ($generated@@1 ($generated@@2 $generated@@32) ($generated@@2 (- $generated@@33 1)))) (=> (not ($generated@@8 ($generated@@23 $generated@@4 ($generated@@7  (or (not (= $generated@@33 0)) (not true)))))) ($generated@@1 ($generated@@2 (- $generated@@32 1)) ($generated@@2 60))))) (= ($generated@@0 ($generated@@30 $generated@@31) ($generated@@2 $generated@@32) ($generated@@2 $generated@@33)) (ite (= ($generated@@2 $generated@@32) ($generated@@2 0)) 0 (ite  (or (not (= $generated@@33 0)) (not true)) ($generated@@0 ($generated@@30 $generated@@31) ($generated@@2 $generated@@32) ($generated@@2 (- $generated@@33 1))) (+ ($generated@@0 ($generated@@30 $generated@@31) ($generated@@2 (- $generated@@32 1)) ($generated@@2 60)) 13))))))
 :weight 3
 :pattern ( ($generated@@0 ($generated@@30 $generated@@31) ($generated@@2 $generated@@32) ($generated@@2 $generated@@33)))
))))
(assert (forall (($generated@@34 T@U) ($generated@@35 Int) ($generated@@36 Int) ) (! (= ($generated@@0 ($generated@@30 $generated@@34) $generated@@35 $generated@@36) ($generated@@0 $generated@@34 $generated@@35 $generated@@36))
 :pattern ( ($generated@@0 ($generated@@30 $generated@@34) $generated@@35 $generated@@36))
)))
(assert  (=> (<= 0 $generated) (forall (($generated@@37 T@U) ($generated@@38 Int) ($generated@@39 Int) ) (!  (=> (or ($generated@@1 $generated@@38 $generated@@39) (and (< 0 $generated) (and (<= ($generated@@2 0) $generated@@38) (<= ($generated@@2 0) $generated@@39)))) (and (=> (or (not (= $generated@@38 ($generated@@2 0))) (not true)) (and (=> (or (not (= $generated@@39 0)) (not true)) ($generated@@1 $generated@@38 (- $generated@@39 1))) (=> (= $generated@@39 0) ($generated@@1 (- $generated@@38 1) ($generated@@2 60))))) (= ($generated@@0 ($generated@@30 $generated@@37) $generated@@38 $generated@@39) (ite (= $generated@@38 ($generated@@2 0)) 0 (ite  (or (not (= $generated@@39 0)) (not true)) ($generated@@0 $generated@@37 $generated@@38 (- $generated@@39 1)) (+ ($generated@@0 $generated@@37 (- $generated@@38 1) ($generated@@2 60)) 13))))))
 :pattern ( ($generated@@0 ($generated@@30 $generated@@37) $generated@@38 $generated@@39))
))))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@26 $generated@@41 ($generated@@27 $generated@@41 $generated@@40)) $generated@@40)
 :pattern ( ($generated@@27 $generated@@41 $generated@@40))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@42 $generated@@53 $generated@@54 $generated@@55 ($generated@@49 $generated@@53 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@59 $generated@@56) $generated@@58 $generated@@59) $generated@@56)
 :weight 0
)) (and (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (or (= $generated@@65 $generated@@67) (= ($generated@@42 $generated@@60 $generated@@61 $generated@@62 ($generated@@49 $generated@@60 $generated@@61 $generated@@62 $generated@@64 $generated@@65 $generated@@66 $generated@@63) $generated@@67 $generated@@68) ($generated@@42 $generated@@60 $generated@@61 $generated@@62 $generated@@64 $generated@@67 $generated@@68)))
 :weight 0
)) (forall (($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (or (= $generated@@75 $generated@@77) (= ($generated@@42 $generated@@69 $generated@@70 $generated@@71 ($generated@@49 $generated@@69 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@75 $generated@@72) $generated@@76 $generated@@77) ($generated@@42 $generated@@69 $generated@@70 $generated@@71 $generated@@73 $generated@@76 $generated@@77)))
 :weight 0
)))) (= ($generated@@3 $generated@@43) 3)) (= ($generated@@3 $generated@@44) 4)) (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@46 $generated@@78 $generated@@79 ($generated@@50 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@82) $generated@@80)
 :weight 0
))) (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (or (= $generated@@87 $generated@@88) (= ($generated@@46 $generated@@83 $generated@@84 ($generated@@50 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@85) $generated@@88) ($generated@@46 $generated@@83 $generated@@84 $generated@@86 $generated@@88)))
 :weight 0
))) (= ($generated@@3 $generated@@47) 5)) (forall (($generated@@89 T@T) ($generated@@90 T@T) ) (= ($generated@@3 ($generated@@48 $generated@@89 $generated@@90)) 6))) (forall (($generated@@91 T@T) ($generated@@92 T@T) ) (! (= ($generated@@51 ($generated@@48 $generated@@91 $generated@@92)) $generated@@91)
 :pattern ( ($generated@@48 $generated@@91 $generated@@92))
))) (forall (($generated@@93 T@T) ($generated@@94 T@T) ) (! (= ($generated@@52 ($generated@@48 $generated@@93 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@48 $generated@@93 $generated@@94))
))))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 Bool) ($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@8 ($generated@@42 $generated@@43 $generated@@44 $generated@@4 ($generated@@45 $generated@@95 $generated@@96 $generated@@97 $generated@@98) $generated@@99 $generated@@100))  (=> (and (or (not (= $generated@@99 $generated@@95)) (not true)) ($generated@@8 ($generated@@26 $generated@@4 ($generated@@46 $generated@@44 $generated@@47 ($generated@@46 $generated@@43 ($generated@@48 $generated@@44 $generated@@47) $generated@@96 $generated@@99) $generated@@97)))) $generated@@98))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 $generated@@4 ($generated@@45 $generated@@95 $generated@@96 $generated@@97 $generated@@98) $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@102 Int) ($generated@@103 Int) ) (! (= ($generated@@101 $generated@@102 $generated@@103) (* $generated@@102 $generated@@103))
 :pattern ( ($generated@@101 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@104 Int) ) (! (= ($generated@@27 $generated@@5 ($generated@@9 ($generated@@2 $generated@@104))) ($generated@@23 $generated@@47 ($generated@@27 $generated@@5 ($generated@@9 $generated@@104))))
 :pattern ( ($generated@@27 $generated@@5 ($generated@@9 ($generated@@2 $generated@@104))))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@27 $generated@@106 ($generated@@23 $generated@@106 $generated@@105)) ($generated@@23 $generated@@47 ($generated@@27 $generated@@106 $generated@@105)))
 :pattern ( ($generated@@27 $generated@@106 ($generated@@23 $generated@@106 $generated@@105)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@107 () T@U)
(declare-fun $generated@@108 () T@U)
(declare-fun $generated@@109 () T@U)
(declare-fun $generated@@110 () T@U)
(declare-fun $generated@@111 (T@U) Bool)
(declare-fun $generated@@112 () T@U)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@114 () T@U)
(declare-fun $generated@@115 () Int)
(declare-fun $generated@@116 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@117  (=> (= $generated@@107 ($generated@@45 $generated@@108 $generated@@109 $generated@@110 false)) (=> (and (and (and ($generated@@111 $generated@@112) ($generated@@113 $generated@@112)) (= $generated@@109 $generated@@112)) (and (forall (($generated@@118 Int) ($generated@@119 Int) ) (!  (=> (and (and (and (<= ($generated@@2 0) $generated@@118) (<= ($generated@@2 0) $generated@@119)) ($generated@@8 ($generated@@23 $generated@@4 ($generated@@7 true)))) (or (and (<= 0 $generated@@118) (< $generated@@118 $generated@@115)) (and (= $generated@@118 $generated@@115) (and (<= 0 $generated@@119) (< $generated@@119 $generated@@116))))) (= ($generated@@0 ($generated@@30 $generated@@114) $generated@@118 $generated@@119) ($generated@@101 ($generated@@2 13) $generated@@118)))
 :pattern ( ($generated@@0 ($generated@@30 $generated@@114) $generated@@118 $generated@@119))
)) (= (ControlFlow 0 2) (- 0 1)))) (= ($generated@@0 ($generated@@30 ($generated@@30 $generated@@114)) $generated@@115 $generated@@116) ($generated@@101 ($generated@@2 13) $generated@@115))))))
(let (($generated@@120  (=> (and ($generated@@111 $generated@@109) ($generated@@113 $generated@@109)) (=> (and (and (<= ($generated@@2 0) $generated@@115) (<= ($generated@@2 0) $generated@@116)) (and (= 1 $generated) (= (ControlFlow 0 3) 2))) $generated@@117))))
$generated@@120)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)