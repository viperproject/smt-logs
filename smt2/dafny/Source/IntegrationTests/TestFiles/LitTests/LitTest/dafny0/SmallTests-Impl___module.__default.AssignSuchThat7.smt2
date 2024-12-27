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
(declare-fun $generated@@20 (T@T T@U) T@U)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@U T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@51 (T@U) T@U)
(declare-fun $generated@@53 (T@U) T@U)
(declare-fun $generated@@57 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@61 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@62 () T@T)
(declare-fun $generated@@63 (T@T T@T) T@T)
(declare-fun $generated@@64 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@65 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@66 (T@T) T@T)
(declare-fun $generated@@67 (T@T) T@T)
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
(assert (forall (($generated@@21 T@U) ($generated@@22 T@T) ) (! (= ($generated@@20 $generated@@22 $generated@@21) $generated@@21)
 :pattern ( ($generated@@20 $generated@@22 $generated@@21))
)))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! (= ($generated@@23 $generated@@24 $generated@@25) (forall (($generated@@26 T@U) ) (!  (=> ($generated@@17 $generated@@24 $generated@@26) ($generated@@17 $generated@@25 $generated@@26))
 :pattern ( ($generated@@17 $generated@@24 $generated@@26))
 :pattern ( ($generated@@17 $generated@@25 $generated@@26))
)))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@T) ) (! (= ($generated@@28 $generated@@30 ($generated@@27 $generated@@30 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@27 $generated@@30 $generated@@29))
)))
(assert (= ($generated@@1 $generated@@32) 3))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@35 ($generated@@33 $generated@@36)) (forall (($generated@@37 T@U) ) (!  (=> ($generated@@17 $generated@@35 $generated@@37) ($generated@@34 $generated@@37 $generated@@36))
 :pattern ( ($generated@@17 $generated@@35 $generated@@37))
)))
 :pattern ( ($generated@@31 $generated@@32 $generated@@35 ($generated@@33 $generated@@36)))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@38 ($generated@@28 $generated@@43 $generated@@40) $generated@@41 $generated@@42) ($generated@@39 $generated@@43 $generated@@40 $generated@@41 $generated@@42))
 :pattern ( ($generated@@38 ($generated@@28 $generated@@43 $generated@@40) $generated@@41 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@34 ($generated@@28 $generated@@46 $generated@@44) $generated@@45) ($generated@@31 $generated@@46 $generated@@44 $generated@@45))
 :pattern ( ($generated@@34 ($generated@@28 $generated@@46 $generated@@44) $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@39 $generated@@32 $generated@@47 ($generated@@33 $generated@@48) $generated@@49) (forall (($generated@@50 T@U) ) (!  (=> ($generated@@17 $generated@@47 $generated@@50) ($generated@@38 $generated@@50 $generated@@48 $generated@@49))
 :pattern ( ($generated@@17 $generated@@47 $generated@@50))
)))
 :pattern ( ($generated@@39 $generated@@32 $generated@@47 ($generated@@33 $generated@@48) $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ) (! (= ($generated@@51 ($generated@@33 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@33 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ) (! (= ($generated@@53 ($generated@@33 $generated@@54)) $generated)
 :pattern ( ($generated@@33 $generated@@54))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@T) ) (! (= ($generated@@27 $generated@@56 ($generated@@28 $generated@@56 $generated@@55)) $generated@@55)
 :pattern ( ($generated@@28 $generated@@56 $generated@@55))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@T) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@57 $generated@@68 $generated@@69 $generated@@70 ($generated@@64 $generated@@68 $generated@@69 $generated@@70 $generated@@72 $generated@@73 $generated@@74 $generated@@71) $generated@@73 $generated@@74) $generated@@71)
 :weight 0
)) (and (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@T) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (or (= $generated@@80 $generated@@82) (= ($generated@@57 $generated@@75 $generated@@76 $generated@@77 ($generated@@64 $generated@@75 $generated@@76 $generated@@77 $generated@@79 $generated@@80 $generated@@81 $generated@@78) $generated@@82 $generated@@83) ($generated@@57 $generated@@75 $generated@@76 $generated@@77 $generated@@79 $generated@@82 $generated@@83)))
 :weight 0
)) (forall (($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (or (= $generated@@90 $generated@@92) (= ($generated@@57 $generated@@84 $generated@@85 $generated@@86 ($generated@@64 $generated@@84 $generated@@85 $generated@@86 $generated@@88 $generated@@89 $generated@@90 $generated@@87) $generated@@91 $generated@@92) ($generated@@57 $generated@@84 $generated@@85 $generated@@86 $generated@@88 $generated@@91 $generated@@92)))
 :weight 0
)))) (= ($generated@@1 $generated@@58) 4)) (= ($generated@@1 $generated@@59) 5)) (forall (($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@61 $generated@@93 $generated@@94 ($generated@@65 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@95) $generated@@97) $generated@@95)
 :weight 0
))) (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (or (= $generated@@102 $generated@@103) (= ($generated@@61 $generated@@98 $generated@@99 ($generated@@65 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@100) $generated@@103) ($generated@@61 $generated@@98 $generated@@99 $generated@@101 $generated@@103)))
 :weight 0
))) (= ($generated@@1 $generated@@62) 6)) (forall (($generated@@104 T@T) ($generated@@105 T@T) ) (= ($generated@@1 ($generated@@63 $generated@@104 $generated@@105)) 7))) (forall (($generated@@106 T@T) ($generated@@107 T@T) ) (! (= ($generated@@66 ($generated@@63 $generated@@106 $generated@@107)) $generated@@106)
 :pattern ( ($generated@@63 $generated@@106 $generated@@107))
))) (forall (($generated@@108 T@T) ($generated@@109 T@T) ) (! (= ($generated@@67 ($generated@@63 $generated@@108 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@63 $generated@@108 $generated@@109))
))))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 Bool) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@6 ($generated@@57 $generated@@58 $generated@@59 $generated@@2 ($generated@@60 $generated@@110 $generated@@111 $generated@@112 $generated@@113) $generated@@114 $generated@@115))  (=> (and (or (not (= $generated@@114 $generated@@110)) (not true)) ($generated@@6 ($generated@@27 $generated@@2 ($generated@@61 $generated@@59 $generated@@62 ($generated@@61 $generated@@58 ($generated@@63 $generated@@59 $generated@@62) $generated@@111 $generated@@114) $generated@@112)))) $generated@@113))
 :pattern ( ($generated@@57 $generated@@58 $generated@@59 $generated@@2 ($generated@@60 $generated@@110 $generated@@111 $generated@@112 $generated@@113) $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> ($generated@@34 $generated@@116 ($generated@@33 $generated@@117)) (and (= ($generated@@28 $generated@@32 ($generated@@27 $generated@@32 $generated@@116)) $generated@@116) ($generated@@31 $generated@@32 ($generated@@27 $generated@@32 $generated@@116) ($generated@@33 $generated@@117))))
 :pattern ( ($generated@@34 $generated@@116 ($generated@@33 $generated@@117)))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@28 $generated@@119 ($generated@@20 $generated@@119 $generated@@118)) ($generated@@20 $generated@@62 ($generated@@28 $generated@@119 $generated@@118)))
 :pattern ( ($generated@@28 $generated@@119 ($generated@@20 $generated@@119 $generated@@118)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@120 () T@U)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () T@U)
(declare-fun $generated@@124 () T@U)
(declare-fun $generated@@125 () T@U)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 (T@U) Bool)
(declare-fun $generated@@129 (T@U) Bool)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 () Int)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@132  (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@17 $generated@@120 $generated@@121) ($generated@@17 $generated@@122 $generated@@121)))))
(let (($generated@@133  (=> (and (not ($generated@@17 $generated@@120 $generated@@121)) (= (ControlFlow 0 4) 2)) $generated@@132)))
(let (($generated@@134  (=> (and ($generated@@17 $generated@@120 $generated@@121) (= (ControlFlow 0 3) 2)) $generated@@132)))
(let (($generated@@135  (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and ($generated@@31 $generated@@32 $generated@@122 ($generated@@33 $generated@@123)) ($generated@@23 $generated@@122 $generated@@122)) (or (and ($generated@@31 $generated@@32 ($generated@@20 $generated@@32 $generated@@18) ($generated@@33 $generated@@123)) ($generated@@23 $generated@@18 $generated@@122)) (exists (($generated@@136 T@U) )  (and ($generated@@31 $generated@@32 $generated@@136 ($generated@@33 $generated@@123)) ($generated@@23 $generated@@136 $generated@@122)))))) (=> (or (and ($generated@@31 $generated@@32 $generated@@122 ($generated@@33 $generated@@123)) ($generated@@23 $generated@@122 $generated@@122)) (or (and ($generated@@31 $generated@@32 ($generated@@20 $generated@@32 $generated@@18) ($generated@@33 $generated@@123)) ($generated@@23 $generated@@18 $generated@@122)) (exists (($generated@@137 T@U) )  (and ($generated@@31 $generated@@32 $generated@@137 ($generated@@33 $generated@@123)) ($generated@@23 $generated@@137 $generated@@122))))) (=> (and (and ($generated@@31 $generated@@32 $generated@@120 ($generated@@33 $generated@@123)) ($generated@@39 $generated@@32 $generated@@120 ($generated@@33 $generated@@123) $generated@@124)) ($generated@@23 $generated@@120 $generated@@122)) (and (=> (= (ControlFlow 0 5) 3) $generated@@134) (=> (= (ControlFlow 0 5) 4) $generated@@133)))))))
(let (($generated@@138  (=> (and (not (and ($generated@@31 $generated@@32 $generated@@125 ($generated@@33 $generated@@123)) ($generated@@39 $generated@@32 $generated@@125 ($generated@@33 $generated@@123) $generated@@124))) (= (ControlFlow 0 8) 5)) $generated@@135)))
(let (($generated@@139  (=> (and (and ($generated@@31 $generated@@32 $generated@@125 ($generated@@33 $generated@@123)) ($generated@@39 $generated@@32 $generated@@125 ($generated@@33 $generated@@123) $generated@@124)) (= (ControlFlow 0 7) 5)) $generated@@135)))
(let (($generated@@140  (=> (= $generated@@126 ($generated@@60 $generated@@127 $generated@@124 $generated@@0 false)) (and (=> (= (ControlFlow 0 9) 7) $generated@@139) (=> (= (ControlFlow 0 9) 8) $generated@@138)))))
(let (($generated@@141  (=> (and ($generated@@128 $generated@@124) ($generated@@129 $generated@@124)) (=> (and (and ($generated@@31 $generated@@32 $generated@@122 ($generated@@33 $generated@@123)) ($generated@@39 $generated@@32 $generated@@122 ($generated@@33 $generated@@123) $generated@@124)) (and ($generated@@34 $generated@@121 $generated@@123) ($generated@@38 $generated@@121 $generated@@123 $generated@@124))) (=> (and (and (and ($generated@@31 $generated@@32 $generated@@130 ($generated@@33 $generated@@123)) ($generated@@39 $generated@@32 $generated@@130 ($generated@@33 $generated@@123) $generated@@124)) true) (and (= 0 $generated@@131) (= (ControlFlow 0 10) 9))) $generated@@140)))))
$generated@@141)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)