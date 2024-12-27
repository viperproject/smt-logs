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
(declare-fun $generated (T@U T@U) Bool)
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
(declare-fun $generated@@18 (T@T T@U) T@U)
(declare-fun $generated@@21 (T@T T@U) T@U)
(declare-fun $generated@@22 (T@T T@U) T@U)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@30 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@34 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@35 (T@T T@T) T@T)
(declare-fun $generated@@36 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@38 (T@T) T@T)
(declare-fun $generated@@39 (T@T) T@T)
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
(assert (forall (($generated@@17 T@U) ) (!  (not ($generated $generated@@0 $generated@@17))
 :pattern ( ($generated $generated@@0 $generated@@17))
)))
(assert (forall (($generated@@19 T@U) ($generated@@20 T@T) ) (! (= ($generated@@18 $generated@@20 $generated@@19) $generated@@19)
 :pattern ( ($generated@@18 $generated@@20 $generated@@19))
)))
(assert (forall (($generated@@23 T@U) ($generated@@24 T@T) ) (! (= ($generated@@22 $generated@@24 ($generated@@21 $generated@@24 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@21 $generated@@24 $generated@@23))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@T) ) (! (= ($generated@@21 $generated@@26 ($generated@@22 $generated@@26 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@22 $generated@@26 $generated@@25))
)))
(assert (= ($generated@@1 $generated@@27) 3))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@T) ) (! (= ($generated@@22 $generated@@29 ($generated@@18 $generated@@29 $generated@@28)) ($generated@@18 $generated@@27 ($generated@@22 $generated@@29 $generated@@28)))
 :pattern ( ($generated@@22 $generated@@29 ($generated@@18 $generated@@29 $generated@@28)))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@T) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@30 $generated@@40 $generated@@41 $generated@@42 ($generated@@36 $generated@@40 $generated@@41 $generated@@42 $generated@@44 $generated@@45 $generated@@46 $generated@@43) $generated@@45 $generated@@46) $generated@@43)
 :weight 0
)) (and (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (or (= $generated@@52 $generated@@54) (= ($generated@@30 $generated@@47 $generated@@48 $generated@@49 ($generated@@36 $generated@@47 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@53 $generated@@50) $generated@@54 $generated@@55) ($generated@@30 $generated@@47 $generated@@48 $generated@@49 $generated@@51 $generated@@54 $generated@@55)))
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@62 $generated@@64) (= ($generated@@30 $generated@@56 $generated@@57 $generated@@58 ($generated@@36 $generated@@56 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@62 $generated@@59) $generated@@63 $generated@@64) ($generated@@30 $generated@@56 $generated@@57 $generated@@58 $generated@@60 $generated@@63 $generated@@64)))
 :weight 0
)))) (= ($generated@@1 $generated@@31) 4)) (= ($generated@@1 $generated@@32) 5)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@34 $generated@@65 $generated@@66 ($generated@@37 $generated@@65 $generated@@66 $generated@@68 $generated@@69 $generated@@67) $generated@@69) $generated@@67)
 :weight 0
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (!  (or (= $generated@@74 $generated@@75) (= ($generated@@34 $generated@@70 $generated@@71 ($generated@@37 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@72) $generated@@75) ($generated@@34 $generated@@70 $generated@@71 $generated@@73 $generated@@75)))
 :weight 0
))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (= ($generated@@1 ($generated@@35 $generated@@76 $generated@@77)) 6))) (forall (($generated@@78 T@T) ($generated@@79 T@T) ) (! (= ($generated@@38 ($generated@@35 $generated@@78 $generated@@79)) $generated@@78)
 :pattern ( ($generated@@35 $generated@@78 $generated@@79))
))) (forall (($generated@@80 T@T) ($generated@@81 T@T) ) (! (= ($generated@@39 ($generated@@35 $generated@@80 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@35 $generated@@80 $generated@@81))
))))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@6 ($generated@@30 $generated@@31 $generated@@32 $generated@@2 ($generated@@33 $generated@@82 $generated@@83 $generated@@84 $generated@@85) $generated@@86 $generated@@87))  (=> (and (or (not (= $generated@@86 $generated@@82)) (not true)) ($generated@@6 ($generated@@21 $generated@@2 ($generated@@34 $generated@@32 $generated@@27 ($generated@@34 $generated@@31 ($generated@@35 $generated@@32 $generated@@27) $generated@@83 $generated@@86) $generated@@84)))) ($generated $generated@@85 ($generated@@22 $generated@@31 $generated@@86))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 $generated@@2 ($generated@@33 $generated@@82 $generated@@83 $generated@@84 $generated@@85) $generated@@86 $generated@@87))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@88 () T@U)
(declare-fun $generated@@89 () T@U)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@91 () T@U)
(declare-fun $generated@@92 () T@T)
(declare-fun $generated@@93 (T@U) Bool)
(declare-fun $generated@@94 (T@U) Bool)
(declare-fun $generated@@95 () Int)
(assert (= ($generated@@1 $generated@@92) 7))
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@96  (=> (and (and (= $generated@@88 ($generated@@33 $generated@@89 $generated@@90 $generated@@91 ($generated@@18 $generated@@92 $generated@@0))) (= (ControlFlow 0 2) (- 0 1))) ($generated@@6 ($generated@@18 $generated@@2 ($generated@@5 false)))) ($generated@@6 ($generated@@18 $generated@@2 ($generated@@5 true))))))
(let (($generated@@97  (=> (and (and (and ($generated@@93 $generated@@90) ($generated@@94 $generated@@90)) (= 0 $generated@@95)) (and (=> ($generated@@6 ($generated@@18 $generated@@2 ($generated@@5 false))) ($generated@@6 ($generated@@18 $generated@@2 ($generated@@5 true)))) (= (ControlFlow 0 3) 2))) $generated@@96)))
$generated@@97)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)