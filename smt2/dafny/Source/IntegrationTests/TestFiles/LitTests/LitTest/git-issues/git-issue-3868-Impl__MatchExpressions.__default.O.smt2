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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (Int) Int)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U) Bool)
(declare-fun $generated@@50 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@T T@T) T@T)
(declare-fun $generated@@57 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@58 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@T) T@T)
(declare-fun $generated@@110 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@111 (T@U) Bool)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated@@22) $generated@@1))
(assert (= ($generated@@21 $generated@@23) $generated@@2))
(assert (= ($generated@@21 $generated@@24) $generated@@3))
(assert (= ($generated@@5 $generated@@26) 3))
(assert ($generated@@25 $generated@@26 $generated@@22 $generated@@27))
(assert ($generated@@25 $generated@@26 $generated@@23 $generated@@27))
(assert ($generated@@25 $generated@@26 $generated@@24 $generated@@27))
(assert (forall (($generated@@29 Int) ) (! (= ($generated@@28 $generated@@29) $generated@@29)
 :pattern ( ($generated@@28 $generated@@29))
)))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@T) ) (! (= ($generated@@30 $generated@@32 $generated@@31) $generated@@31)
 :pattern ( ($generated@@30 $generated@@32 $generated@@31))
)))
(assert (forall (($generated@@34 T@U) ) (! (= ($generated@@33 $generated@@34) (= ($generated@@21 $generated@@34) $generated@@1))
 :pattern ( ($generated@@33 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ) (! (= ($generated@@35 $generated@@36) (= ($generated@@21 $generated@@36) $generated@@2))
 :pattern ( ($generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ) (! (= ($generated@@37 $generated@@38) (= ($generated@@21 $generated@@38) $generated@@3))
 :pattern ( ($generated@@37 $generated@@38))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 ($generated@@39 $generated@@42 $generated@@41)) $generated@@41)
 :pattern ( ($generated@@39 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@43 T@U) ) (!  (=> ($generated@@33 $generated@@43) (= $generated@@43 $generated@@22))
 :pattern ( ($generated@@33 $generated@@43))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@35 $generated@@44) (= $generated@@44 $generated@@23))
 :pattern ( ($generated@@35 $generated@@44))
)))
(assert (forall (($generated@@45 T@U) ) (!  (=> ($generated@@37 $generated@@45) (= $generated@@45 $generated@@24))
 :pattern ( ($generated@@37 $generated@@45))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@39 $generated@@47 ($generated@@40 $generated@@47 $generated@@46)) $generated@@46)
 :pattern ( ($generated@@40 $generated@@47 $generated@@46))
)))
(assert (forall (($generated@@49 T@U) ) (!  (=> ($generated@@48 $generated@@49) (or (or ($generated@@33 $generated@@49) ($generated@@35 $generated@@49)) ($generated@@37 $generated@@49)))
 :pattern ( ($generated@@48 $generated@@49))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@50 $generated@@61 $generated@@62 $generated@@63 ($generated@@57 $generated@@61 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@67 $generated@@64) $generated@@66 $generated@@67) $generated@@64)
 :weight 0
)) (and (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (or (= $generated@@73 $generated@@75) (= ($generated@@50 $generated@@68 $generated@@69 $generated@@70 ($generated@@57 $generated@@68 $generated@@69 $generated@@70 $generated@@72 $generated@@73 $generated@@74 $generated@@71) $generated@@75 $generated@@76) ($generated@@50 $generated@@68 $generated@@69 $generated@@70 $generated@@72 $generated@@75 $generated@@76)))
 :weight 0
)) (forall (($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@83 $generated@@85) (= ($generated@@50 $generated@@77 $generated@@78 $generated@@79 ($generated@@57 $generated@@77 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@83 $generated@@80) $generated@@84 $generated@@85) ($generated@@50 $generated@@77 $generated@@78 $generated@@79 $generated@@81 $generated@@84 $generated@@85)))
 :weight 0
)))) (= ($generated@@5 $generated@@51) 4)) (= ($generated@@5 $generated@@52) 5)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@54 $generated@@86 $generated@@87 ($generated@@58 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@88) $generated@@90) $generated@@88)
 :weight 0
))) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (or (= $generated@@95 $generated@@96) (= ($generated@@54 $generated@@91 $generated@@92 ($generated@@58 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@93) $generated@@96) ($generated@@54 $generated@@91 $generated@@92 $generated@@94 $generated@@96)))
 :weight 0
))) (= ($generated@@5 $generated@@55) 6)) (forall (($generated@@97 T@T) ($generated@@98 T@T) ) (= ($generated@@5 ($generated@@56 $generated@@97 $generated@@98)) 7))) (forall (($generated@@99 T@T) ($generated@@100 T@T) ) (! (= ($generated@@59 ($generated@@56 $generated@@99 $generated@@100)) $generated@@99)
 :pattern ( ($generated@@56 $generated@@99 $generated@@100))
))) (forall (($generated@@101 T@T) ($generated@@102 T@T) ) (! (= ($generated@@60 ($generated@@56 $generated@@101 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@56 $generated@@101 $generated@@102))
))))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 Bool) ($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@10 ($generated@@50 $generated@@51 $generated@@52 $generated@@6 ($generated@@53 $generated@@103 $generated@@104 $generated@@105 $generated@@106) $generated@@107 $generated@@108))  (=> (and (or (not (= $generated@@107 $generated@@103)) (not true)) ($generated@@10 ($generated@@39 $generated@@6 ($generated@@54 $generated@@52 $generated@@55 ($generated@@54 $generated@@51 ($generated@@56 $generated@@52 $generated@@55) $generated@@104 $generated@@107) $generated@@105)))) $generated@@106))
 :pattern ( ($generated@@50 $generated@@51 $generated@@52 $generated@@6 ($generated@@53 $generated@@103 $generated@@104 $generated@@105 $generated@@106) $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@109 $generated@@27) (or (or ($generated@@33 $generated@@109) ($generated@@35 $generated@@109)) ($generated@@37 $generated@@109)))
 :pattern ( ($generated@@37 $generated@@109) ($generated@@25 $generated@@26 $generated@@109 $generated@@27))
 :pattern ( ($generated@@35 $generated@@109) ($generated@@25 $generated@@26 $generated@@109 $generated@@27))
 :pattern ( ($generated@@33 $generated@@109) ($generated@@25 $generated@@26 $generated@@109 $generated@@27))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> (and ($generated@@111 $generated@@113) ($generated@@25 $generated@@26 $generated@@112 $generated@@27)) ($generated@@110 $generated@@26 $generated@@112 $generated@@27 $generated@@113))
 :pattern ( ($generated@@110 $generated@@26 $generated@@112 $generated@@27 $generated@@113))
)))
(assert (= ($generated@@114 $generated@@27) $generated@@0))
(assert (= ($generated@@115 $generated@@27) $generated@@4))
(assert (= $generated@@22 ($generated@@30 $generated@@26 $generated@@22)))
(assert (= $generated@@23 ($generated@@30 $generated@@26 $generated@@23)))
(assert (= $generated@@24 ($generated@@30 $generated@@26 $generated@@24)))
(assert (forall (($generated@@116 Int) ) (! (= ($generated@@40 $generated@@7 ($generated@@11 ($generated@@28 $generated@@116))) ($generated@@30 $generated@@55 ($generated@@40 $generated@@7 ($generated@@11 $generated@@116))))
 :pattern ( ($generated@@40 $generated@@7 ($generated@@11 ($generated@@28 $generated@@116))))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@40 $generated@@118 ($generated@@30 $generated@@118 $generated@@117)) ($generated@@30 $generated@@55 ($generated@@40 $generated@@118 $generated@@117)))
 :pattern ( ($generated@@40 $generated@@118 ($generated@@30 $generated@@118 $generated@@117)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@119 () T@U)
(declare-fun $generated@@120 () Int)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () T@U)
(declare-fun $generated@@124 (T@U) Bool)
(declare-fun $generated@@125 () Int)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@126 true))
(let (($generated@@127  (=> (and (= $generated@@119 $generated@@22) (= (ControlFlow 0 7) (- 0 6))) false)))
(let (($generated@@128  (=> (or (not (= $generated@@119 $generated@@23)) (not true)) (and (=> (= (ControlFlow 0 9) 7) $generated@@127) (=> (= (ControlFlow 0 9) 8) $generated@@126)))))
(let (($generated@@129  (=> (and (= $generated@@119 $generated@@23) (= (ControlFlow 0 5) (- 0 4))) false)))
(let (($generated@@130  (=> (or (not (= $generated@@119 $generated@@24)) (not true)) (and (=> (= (ControlFlow 0 10) 5) $generated@@129) (=> (= (ControlFlow 0 10) 9) $generated@@128)))))
(let (($generated@@131  (=> (and (= $generated@@119 $generated@@24) (= (ControlFlow 0 3) (- 0 2))) false)))
(let (($generated@@132  (=> (< $generated@@120 0) (and (=> (= (ControlFlow 0 11) 3) $generated@@131) (=> (= (ControlFlow 0 11) 10) $generated@@130)))))
(let (($generated@@133 true))
(let (($generated@@134  (=> (= $generated@@121 ($generated@@53 $generated@@122 $generated@@123 $generated false)) (and (=> (= (ControlFlow 0 12) 11) $generated@@132) (=> (= (ControlFlow 0 12) 1) $generated@@133)))))
(let (($generated@@135  (=> (and ($generated@@111 $generated@@123) ($generated@@124 $generated@@123)) (=> (and (and (and (and ($generated@@25 $generated@@26 $generated@@119 $generated@@27) ($generated@@110 $generated@@26 $generated@@119 $generated@@27 $generated@@123)) ($generated@@48 $generated@@119)) (= 1 $generated@@125)) (and (<= ($generated@@28 0) $generated@@120) (= (ControlFlow 0 13) 12))) $generated@@134))))
$generated@@135)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)