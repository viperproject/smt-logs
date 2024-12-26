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
(declare-fun $generated@@17 (T@U T@U) Bool)
(declare-fun $generated@@18 () T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@23 (T@T T@U) T@U)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@U T@U T@U) Bool)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@36 (T@U Int) T@U)
(declare-fun $generated@@40 (T@U T@U) Bool)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@58 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@62 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@63 () T@T)
(declare-fun $generated@@64 (T@T T@T) T@T)
(declare-fun $generated@@65 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@66 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@67 (T@T) T@T)
(declare-fun $generated@@68 (T@T) T@T)
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
(assert (forall (($generated@@19 T@U) ) (!  (not ($generated@@17 $generated@@18 $generated@@19))
 :pattern ( ($generated@@17 $generated@@18 $generated@@19))
)))
(assert (= ($generated@@20 $generated@@18) 0))
(assert (forall (($generated@@22 Int) ) (! (= ($generated@@21 $generated@@22) $generated@@22)
 :pattern ( ($generated@@21 $generated@@22))
)))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@T) ) (! (= ($generated@@23 $generated@@25 $generated@@24) $generated@@24)
 :pattern ( ($generated@@23 $generated@@25 $generated@@24))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@T) ) (! (= ($generated@@27 $generated@@29 ($generated@@26 $generated@@29 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@26 $generated@@29 $generated@@28))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@T) ) (! (= ($generated@@30 ($generated@@27 $generated@@35 $generated@@32) $generated@@33 $generated@@34) ($generated@@31 $generated@@35 $generated@@32 $generated@@33 $generated@@34))
 :pattern ( ($generated@@30 ($generated@@27 $generated@@35 $generated@@32) $generated@@33 $generated@@34))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@17 $generated@@37 $generated@@38) (exists (($generated@@39 Int) ) (!  (and (and (<= 0 $generated@@39) (< $generated@@39 ($generated@@20 $generated@@37))) (= ($generated@@36 $generated@@37 $generated@@39) $generated@@38))
 :pattern ( ($generated@@36 $generated@@37 $generated@@39))
)))
 :pattern ( ($generated@@17 $generated@@37 $generated@@38))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@T) ) (! (= ($generated@@40 ($generated@@27 $generated@@44 $generated@@42) $generated@@43) ($generated@@41 $generated@@44 $generated@@42 $generated@@43))
 :pattern ( ($generated@@40 ($generated@@27 $generated@@44 $generated@@42) $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ) (! (<= 0 ($generated@@20 $generated@@45))
 :pattern ( ($generated@@20 $generated@@45))
)))
(assert (= ($generated@@1 $generated@@46) 3))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@31 $generated@@46 $generated@@48 ($generated@@47 $generated@@49) $generated@@50) (forall (($generated@@51 Int) ) (!  (=> (and (<= 0 $generated@@51) (< $generated@@51 ($generated@@20 $generated@@48))) ($generated@@30 ($generated@@36 $generated@@48 $generated@@51) $generated@@49 $generated@@50))
 :pattern ( ($generated@@36 $generated@@48 $generated@@51))
)))
 :pattern ( ($generated@@31 $generated@@46 $generated@@48 ($generated@@47 $generated@@49) $generated@@50))
)))
(assert (forall (($generated@@53 T@U) ) (! (= ($generated@@52 ($generated@@47 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@47 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ) (! (= ($generated@@54 ($generated@@47 $generated@@55)) $generated)
 :pattern ( ($generated@@47 $generated@@55))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@26 $generated@@57 ($generated@@27 $generated@@57 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@27 $generated@@57 $generated@@56))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@58 $generated@@69 $generated@@70 $generated@@71 ($generated@@65 $generated@@69 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@75 $generated@@72) $generated@@74 $generated@@75) $generated@@72)
 :weight 0
)) (and (forall (($generated@@76 T@T) ($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (or (= $generated@@81 $generated@@83) (= ($generated@@58 $generated@@76 $generated@@77 $generated@@78 ($generated@@65 $generated@@76 $generated@@77 $generated@@78 $generated@@80 $generated@@81 $generated@@82 $generated@@79) $generated@@83 $generated@@84) ($generated@@58 $generated@@76 $generated@@77 $generated@@78 $generated@@80 $generated@@83 $generated@@84)))
 :weight 0
)) (forall (($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (!  (or (= $generated@@91 $generated@@93) (= ($generated@@58 $generated@@85 $generated@@86 $generated@@87 ($generated@@65 $generated@@85 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@91 $generated@@88) $generated@@92 $generated@@93) ($generated@@58 $generated@@85 $generated@@86 $generated@@87 $generated@@89 $generated@@92 $generated@@93)))
 :weight 0
)))) (= ($generated@@1 $generated@@59) 4)) (= ($generated@@1 $generated@@60) 5)) (forall (($generated@@94 T@T) ($generated@@95 T@T) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@62 $generated@@94 $generated@@95 ($generated@@66 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@96) $generated@@98) $generated@@96)
 :weight 0
))) (forall (($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (!  (or (= $generated@@103 $generated@@104) (= ($generated@@62 $generated@@99 $generated@@100 ($generated@@66 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@101) $generated@@104) ($generated@@62 $generated@@99 $generated@@100 $generated@@102 $generated@@104)))
 :weight 0
))) (= ($generated@@1 $generated@@63) 6)) (forall (($generated@@105 T@T) ($generated@@106 T@T) ) (= ($generated@@1 ($generated@@64 $generated@@105 $generated@@106)) 7))) (forall (($generated@@107 T@T) ($generated@@108 T@T) ) (! (= ($generated@@67 ($generated@@64 $generated@@107 $generated@@108)) $generated@@107)
 :pattern ( ($generated@@64 $generated@@107 $generated@@108))
))) (forall (($generated@@109 T@T) ($generated@@110 T@T) ) (! (= ($generated@@68 ($generated@@64 $generated@@109 $generated@@110)) $generated@@110)
 :pattern ( ($generated@@64 $generated@@109 $generated@@110))
))))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 Bool) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@6 ($generated@@58 $generated@@59 $generated@@60 $generated@@2 ($generated@@61 $generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@115 $generated@@116))  (=> (and (or (not (= $generated@@115 $generated@@111)) (not true)) ($generated@@6 ($generated@@26 $generated@@2 ($generated@@62 $generated@@60 $generated@@63 ($generated@@62 $generated@@59 ($generated@@64 $generated@@60 $generated@@63) $generated@@112 $generated@@115) $generated@@113)))) $generated@@114))
 :pattern ( ($generated@@58 $generated@@59 $generated@@60 $generated@@2 ($generated@@61 $generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> ($generated@@40 $generated@@117 ($generated@@47 $generated@@118)) (and (= ($generated@@27 $generated@@46 ($generated@@26 $generated@@46 $generated@@117)) $generated@@117) ($generated@@41 $generated@@46 ($generated@@26 $generated@@46 $generated@@117) ($generated@@47 $generated@@118))))
 :pattern ( ($generated@@40 $generated@@117 ($generated@@47 $generated@@118)))
)))
(assert (forall (($generated@@119 Int) ) (! (= ($generated@@27 $generated@@3 ($generated@@7 ($generated@@21 $generated@@119))) ($generated@@23 $generated@@63 ($generated@@27 $generated@@3 ($generated@@7 $generated@@119))))
 :pattern ( ($generated@@27 $generated@@3 ($generated@@7 ($generated@@21 $generated@@119))))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@27 $generated@@121 ($generated@@23 $generated@@121 $generated@@120)) ($generated@@23 $generated@@63 ($generated@@27 $generated@@121 $generated@@120)))
 :pattern ( ($generated@@27 $generated@@121 ($generated@@23 $generated@@121 $generated@@120)))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> (= ($generated@@20 $generated@@122) 0) (= $generated@@122 $generated@@18))
 :pattern ( ($generated@@20 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@41 $generated@@46 $generated@@123 ($generated@@47 $generated@@124)) (forall (($generated@@125 Int) ) (!  (=> (and (<= 0 $generated@@125) (< $generated@@125 ($generated@@20 $generated@@123))) ($generated@@40 ($generated@@36 $generated@@123 $generated@@125) $generated@@124))
 :pattern ( ($generated@@36 $generated@@123 $generated@@125))
)))
 :pattern ( ($generated@@41 $generated@@46 $generated@@123 ($generated@@47 $generated@@124)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 () T@U)
(declare-fun $generated@@129 () T@U)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 (T@U) Bool)
(declare-fun $generated@@132 (T@U) Bool)
(declare-fun $generated@@133 () T@U)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@136  (=> (and (= $generated@@126 ($generated@@61 $generated@@127 $generated@@128 $generated@@0 false)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@17 $generated@@129 $generated@@130))))
(let (($generated@@137  (=> (and (and ($generated@@131 $generated@@128) ($generated@@132 $generated@@128)) (and ($generated@@40 $generated@@130 $generated@@133) ($generated@@30 $generated@@130 $generated@@133 $generated@@128))) (=> (and (and (and ($generated@@41 $generated@@46 $generated@@129 ($generated@@47 $generated@@133)) ($generated@@31 $generated@@46 $generated@@129 ($generated@@47 $generated@@133) $generated@@128)) (<= ($generated@@21 0) $generated@@134)) (and (and (= 0 $generated@@135) (< $generated@@134 ($generated@@20 $generated@@129))) (and (= $generated@@130 ($generated@@36 $generated@@129 $generated@@134)) (= (ControlFlow 0 3) 2)))) $generated@@136))))
$generated@@137)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)