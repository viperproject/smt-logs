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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 () Int)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@34 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@49 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 (T@T T@T) T@T)
(declare-fun $generated@@53 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@90 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@91 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@92 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@126 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@8 $generated@@27) 3))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@33 T@U) ) (!  (=> (or ($generated@@28 ($generated@@26 $generated@@27 $generated@@33)) (and (< 0 $generated@@24) (and (or (not (= $generated@@33 $generated@@29)) (not true)) ($generated@@30 $generated@@27 $generated@@33 $generated@@31)))) (= ($generated@@25 ($generated@@26 $generated@@27 $generated@@33)) ($generated@@32 0)))
 :weight 3
 :pattern ( ($generated@@25 ($generated@@26 $generated@@27 $generated@@33)))
))))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! ($generated@@34 $generated@@10 $generated@@36 $generated@@35 $generated@@37)
 :pattern ( ($generated@@34 $generated@@10 $generated@@36 $generated@@35 $generated@@37))
)))
(assert ($generated@@38 $generated@@39))
(assert (forall (($generated@@41 T@U) ) (! (= ($generated@@30 $generated@@27 $generated@@41 $generated@@39)  (or (= $generated@@41 $generated@@29) (= ($generated@@40 $generated@@41) $generated@@39)))
 :pattern ( ($generated@@30 $generated@@27 $generated@@41 $generated@@39))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@34 $generated@@27 $generated@@44 $generated@@42 $generated@@45) ($generated@@34 $generated@@27 $generated@@44 $generated@@43 $generated@@45))
 :pattern ( ($generated@@34 $generated@@27 $generated@@44 $generated@@42 $generated@@45))
 :pattern ( ($generated@@34 $generated@@27 $generated@@44 $generated@@43 $generated@@45))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@34 $generated@@27 $generated@@46 $generated@@31 $generated@@47) ($generated@@34 $generated@@27 $generated@@46 $generated@@39 $generated@@47))
 :pattern ( ($generated@@34 $generated@@27 $generated@@46 $generated@@31 $generated@@47))
 :pattern ( ($generated@@34 $generated@@27 $generated@@46 $generated@@39 $generated@@47))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@49 $generated@@56 $generated@@57 ($generated@@53 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@60) $generated@@58)
 :weight 0
)) (forall (($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (!  (or (= $generated@@65 $generated@@66) (= ($generated@@49 $generated@@61 $generated@@62 ($generated@@53 $generated@@61 $generated@@62 $generated@@64 $generated@@65 $generated@@63) $generated@@66) ($generated@@49 $generated@@61 $generated@@62 $generated@@64 $generated@@66)))
 :weight 0
))) (= ($generated@@8 $generated@@50) 4)) (= ($generated@@8 $generated@@51) 5)) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (= ($generated@@8 ($generated@@52 $generated@@67 $generated@@68)) 6))) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (! (= ($generated@@54 ($generated@@52 $generated@@69 $generated@@70)) $generated@@69)
 :pattern ( ($generated@@52 $generated@@69 $generated@@70))
))) (forall (($generated@@71 T@T) ($generated@@72 T@T) ) (! (= ($generated@@55 ($generated@@52 $generated@@71 $generated@@72)) $generated@@72)
 :pattern ( ($generated@@52 $generated@@71 $generated@@72))
))))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@34 $generated@@27 $generated@@73 $generated@@43 $generated@@74)  (or (= $generated@@73 $generated@@29) ($generated@@13 ($generated@@48 $generated@@9 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@27 ($generated@@52 $generated@@50 $generated@@51) $generated@@74 $generated@@73) $generated)))))
 :pattern ( ($generated@@34 $generated@@27 $generated@@73 $generated@@43 $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@34 $generated@@27 $generated@@75 $generated@@39 $generated@@76)  (or (= $generated@@75 $generated@@29) ($generated@@13 ($generated@@48 $generated@@9 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@27 ($generated@@52 $generated@@50 $generated@@51) $generated@@76 $generated@@75) $generated)))))
 :pattern ( ($generated@@34 $generated@@27 $generated@@75 $generated@@39 $generated@@76))
)))
(assert (forall (($generated@@77 Int) ) (! (= ($generated@@32 $generated@@77) $generated@@77)
 :pattern ( ($generated@@32 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@26 $generated@@79 $generated@@78) $generated@@78)
 :pattern ( ($generated@@26 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 ($generated@@48 $generated@@82 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@48 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@30 $generated@@10 $generated@@83 $generated@@35) (<= ($generated@@32 0) ($generated@@15 $generated@@83)))
 :pattern ( ($generated@@30 $generated@@10 $generated@@83 $generated@@35))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@30 $generated@@27 $generated@@84 $generated@@42)  (and ($generated@@30 $generated@@27 $generated@@84 $generated@@43) (or (not (= $generated@@84 $generated@@29)) (not true))))
 :pattern ( ($generated@@30 $generated@@27 $generated@@84 $generated@@42))
 :pattern ( ($generated@@30 $generated@@27 $generated@@84 $generated@@43))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@30 $generated@@27 $generated@@85 $generated@@31)  (and ($generated@@30 $generated@@27 $generated@@85 $generated@@39) (or (not (= $generated@@85 $generated@@29)) (not true))))
 :pattern ( ($generated@@30 $generated@@27 $generated@@85 $generated@@31))
 :pattern ( ($generated@@30 $generated@@27 $generated@@85 $generated@@39))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> ($generated@@34 $generated@@27 $generated@@86 $generated@@39 $generated@@87) ($generated@@34 $generated@@27 $generated@@86 $generated@@43 $generated@@87))
 :pattern ( ($generated@@34 $generated@@27 $generated@@86 $generated@@39 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@48 $generated@@89 ($generated@@80 $generated@@89 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@80 $generated@@89 $generated@@88))
)))
(assert  (and (forall (($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@T) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@90 $generated@@93 $generated@@94 $generated@@95 ($generated@@92 $generated@@93 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@99 $generated@@96) $generated@@98 $generated@@99) $generated@@96)
 :weight 0
)) (and (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (or (= $generated@@105 $generated@@107) (= ($generated@@90 $generated@@100 $generated@@101 $generated@@102 ($generated@@92 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@107 $generated@@108) ($generated@@90 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@107 $generated@@108)))
 :weight 0
)) (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@90 $generated@@109 $generated@@110 $generated@@111 ($generated@@92 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@114 $generated@@115 $generated@@112) $generated@@116 $generated@@117) ($generated@@90 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@116 $generated@@117)))
 :weight 0
)))))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 Bool) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@13 ($generated@@90 $generated@@27 $generated@@50 $generated@@9 ($generated@@91 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))  (=> (and (or (not (= $generated@@122 $generated@@118)) (not true)) ($generated@@13 ($generated@@48 $generated@@9 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@27 ($generated@@52 $generated@@50 $generated@@51) $generated@@119 $generated@@122) $generated@@120)))) $generated@@121))
 :pattern ( ($generated@@90 $generated@@27 $generated@@50 $generated@@9 ($generated@@91 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ) (!  (=> ($generated@@30 $generated@@27 $generated@@124 $generated@@39) ($generated@@30 $generated@@27 $generated@@124 $generated@@43))
 :pattern ( ($generated@@30 $generated@@27 $generated@@124 $generated@@39))
)))
(assert (= ($generated@@125 $generated@@35) $generated@@0))
(assert (= ($generated@@126 $generated@@35) $generated@@5))
(assert (= ($generated@@125 $generated@@43) $generated@@1))
(assert (= ($generated@@126 $generated@@43) $generated@@6))
(assert (= ($generated@@125 $generated@@42) $generated@@2))
(assert (= ($generated@@126 $generated@@42) $generated@@6))
(assert (= ($generated@@125 $generated@@39) $generated@@3))
(assert (= ($generated@@126 $generated@@39) $generated@@7))
(assert (= ($generated@@125 $generated@@31) $generated@@4))
(assert (= ($generated@@126 $generated@@31) $generated@@7))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@30 $generated@@27 $generated@@127 $generated@@43)  (or (= $generated@@127 $generated@@29) ($generated@@38 ($generated@@40 $generated@@127))))
 :pattern ( ($generated@@30 $generated@@27 $generated@@127 $generated@@43))
)))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@128 T@U) ) (!  (=> (or ($generated@@28 $generated@@128) (and (< 0 $generated@@24) (and (or (not (= $generated@@128 $generated@@29)) (not true)) ($generated@@30 $generated@@27 $generated@@128 $generated@@31)))) (= ($generated@@25 $generated@@128) ($generated@@32 0)))
 :pattern ( ($generated@@25 $generated@@128))
))))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@129 T@U) ) (!  (=> (or ($generated@@28 $generated@@129) (and (< 0 $generated@@24) (and (or (not (= $generated@@129 $generated@@29)) (not true)) ($generated@@30 $generated@@27 $generated@@129 $generated@@31)))) (<= ($generated@@32 0) ($generated@@25 $generated@@129)))
 :pattern ( ($generated@@25 $generated@@129))
))))
(assert (forall (($generated@@130 Int) ) (! (= ($generated@@80 $generated@@10 ($generated@@14 ($generated@@32 $generated@@130))) ($generated@@26 $generated@@51 ($generated@@80 $generated@@10 ($generated@@14 $generated@@130))))
 :pattern ( ($generated@@80 $generated@@10 ($generated@@14 ($generated@@32 $generated@@130))))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@T) ) (! (= ($generated@@80 $generated@@132 ($generated@@26 $generated@@132 $generated@@131)) ($generated@@26 $generated@@51 ($generated@@80 $generated@@132 $generated@@131)))
 :pattern ( ($generated@@80 $generated@@132 ($generated@@26 $generated@@132 $generated@@131)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@133 () T@U)
(declare-fun $generated@@134 () T@U)
(declare-fun $generated@@135 (T@U) Bool)
(declare-fun $generated@@136 (T@U) Bool)
(declare-fun $generated@@137 () T@U)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@138  (=> (= (ControlFlow 0 3) (- 0 2)) ($generated@@30 $generated@@10 ($generated@@14 ($generated@@32 0)) $generated@@35))))
(let (($generated@@139 true))
(let (($generated@@140  (=> (= $generated@@133 ($generated@@91 $generated@@29 $generated@@134 $generated false)) (and (=> (= (ControlFlow 0 4) 1) $generated@@139) (=> (= (ControlFlow 0 4) 3) $generated@@138)))))
(let (($generated@@141  (=> (and ($generated@@135 $generated@@134) ($generated@@136 $generated@@134)) (=> (and (and (or (not (= $generated@@137 $generated@@29)) (not true)) (and ($generated@@30 $generated@@27 $generated@@137 $generated@@31) ($generated@@34 $generated@@27 $generated@@137 $generated@@31 $generated@@134))) (and (= 0 $generated@@24) (= (ControlFlow 0 5) 4))) $generated@@140))))
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