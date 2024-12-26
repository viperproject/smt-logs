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
(declare-fun $generated@@0 () Bool)
(declare-fun $generated@@1 () Int)
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
(declare-fun $generated@@18 (T@T T@U) T@U)
(declare-fun $generated@@21 (T@T T@U) T@U)
(declare-fun $generated@@22 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@31 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@T T@T) T@T)
(declare-fun $generated@@34 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@37 (T@T) T@T)
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
(assert  (=> (<= 0 $generated) (=> (or $generated@@0 (< 0 $generated)) (> $generated@@1 0))))
(assert (forall (($generated@@19 T@U) ($generated@@20 T@T) ) (! (= ($generated@@18 $generated@@20 $generated@@19) $generated@@19)
 :pattern ( ($generated@@18 $generated@@20 $generated@@19))
)))
(assert (forall (($generated@@23 T@U) ($generated@@24 T@T) ) (! (= ($generated@@22 $generated@@24 ($generated@@21 $generated@@24 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@21 $generated@@24 $generated@@23))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@T) ) (! (= ($generated@@21 $generated@@26 ($generated@@22 $generated@@26 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@22 $generated@@26 $generated@@25))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@38 T@T) ($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@27 $generated@@38 $generated@@39 $generated@@40 ($generated@@34 $generated@@38 $generated@@39 $generated@@40 $generated@@42 $generated@@43 $generated@@44 $generated@@41) $generated@@43 $generated@@44) $generated@@41)
 :weight 0
)) (and (forall (($generated@@45 T@T) ($generated@@46 T@T) ($generated@@47 T@T) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (or (= $generated@@50 $generated@@52) (= ($generated@@27 $generated@@45 $generated@@46 $generated@@47 ($generated@@34 $generated@@45 $generated@@46 $generated@@47 $generated@@49 $generated@@50 $generated@@51 $generated@@48) $generated@@52 $generated@@53) ($generated@@27 $generated@@45 $generated@@46 $generated@@47 $generated@@49 $generated@@52 $generated@@53)))
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (!  (or (= $generated@@60 $generated@@62) (= ($generated@@27 $generated@@54 $generated@@55 $generated@@56 ($generated@@34 $generated@@54 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@60 $generated@@57) $generated@@61 $generated@@62) ($generated@@27 $generated@@54 $generated@@55 $generated@@56 $generated@@58 $generated@@61 $generated@@62)))
 :weight 0
)))) (= ($generated@@2 $generated@@28) 3)) (= ($generated@@2 $generated@@29) 4)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@31 $generated@@63 $generated@@64 ($generated@@35 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@67) $generated@@65)
 :weight 0
))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (or (= $generated@@72 $generated@@73) (= ($generated@@31 $generated@@68 $generated@@69 ($generated@@35 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@70) $generated@@73) ($generated@@31 $generated@@68 $generated@@69 $generated@@71 $generated@@73)))
 :weight 0
))) (= ($generated@@2 $generated@@32) 5)) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (= ($generated@@2 ($generated@@33 $generated@@74 $generated@@75)) 6))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@36 ($generated@@33 $generated@@76 $generated@@77)) $generated@@76)
 :pattern ( ($generated@@33 $generated@@76 $generated@@77))
))) (forall (($generated@@78 T@T) ($generated@@79 T@T) ) (! (= ($generated@@37 ($generated@@33 $generated@@78 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@33 $generated@@78 $generated@@79))
))))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 Bool) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@7 ($generated@@27 $generated@@28 $generated@@29 $generated@@3 ($generated@@30 $generated@@80 $generated@@81 $generated@@82 $generated@@83) $generated@@84 $generated@@85))  (=> (and (or (not (= $generated@@84 $generated@@80)) (not true)) ($generated@@7 ($generated@@21 $generated@@3 ($generated@@31 $generated@@29 $generated@@32 ($generated@@31 $generated@@28 ($generated@@33 $generated@@29 $generated@@32) $generated@@81 $generated@@84) $generated@@82)))) $generated@@83))
 :pattern ( ($generated@@27 $generated@@28 $generated@@29 $generated@@3 ($generated@@30 $generated@@80 $generated@@81 $generated@@82 $generated@@83) $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@22 $generated@@87 ($generated@@18 $generated@@87 $generated@@86)) ($generated@@18 $generated@@32 ($generated@@22 $generated@@87 $generated@@86)))
 :pattern ( ($generated@@22 $generated@@87 ($generated@@18 $generated@@87 $generated@@86)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@88 () T@U)
(declare-fun $generated@@89 () T@U)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@91 () T@U)
(declare-fun $generated@@92 (T@U) Bool)
(declare-fun $generated@@93 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@94 true))
(let (($generated@@95  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@7 ($generated@@18 $generated@@3 ($generated@@6 true))))))
(let (($generated@@96  (=> (= $generated@@88 ($generated@@30 $generated@@89 $generated@@90 $generated@@91 false)) (and (=> (= (ControlFlow 0 4) 2) $generated@@95) (=> (= (ControlFlow 0 4) 3) $generated@@94)))))
(let (($generated@@97  (=> (and (and ($generated@@92 $generated@@90) ($generated@@93 $generated@@90)) (and (= 0 $generated) (= (ControlFlow 0 5) 4))) $generated@@96)))
$generated@@97)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)