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
(declare-fun $generated@@19 (T@T T@U T@U) Bool)
(declare-fun $generated@@20 () T@T)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@T T@T) T@T)
(declare-fun $generated@@34 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T) T@T)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@71 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@72 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
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
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (= ($generated@@3 $generated@@20) 3))
(assert (forall (($generated@@24 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@24 $generated@@21)  (or (= $generated@@24 $generated@@22) (= ($generated@@23 $generated@@24) $generated@@21)))
 :pattern ( ($generated@@19 $generated@@20 $generated@@24 $generated@@21))
)))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@U) ) (! (= ($generated@@25 $generated@@20 $generated@@27 $generated@@26 $generated@@28) ($generated@@25 $generated@@20 $generated@@27 $generated@@21 $generated@@28))
 :pattern ( ($generated@@25 $generated@@20 $generated@@27 $generated@@26 $generated@@28))
 :pattern ( ($generated@@25 $generated@@20 $generated@@27 $generated@@21 $generated@@28))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@30 $generated@@37 $generated@@38 ($generated@@34 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@41) $generated@@39)
 :weight 0
)) (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (or (= $generated@@46 $generated@@47) (= ($generated@@30 $generated@@42 $generated@@43 ($generated@@34 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@47) ($generated@@30 $generated@@42 $generated@@43 $generated@@45 $generated@@47)))
 :weight 0
))) (= ($generated@@3 $generated@@31) 4)) (= ($generated@@3 $generated@@32) 5)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (= ($generated@@3 ($generated@@33 $generated@@48 $generated@@49)) 6))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@35 ($generated@@33 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@33 $generated@@50 $generated@@51))
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (! (= ($generated@@36 ($generated@@33 $generated@@52 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@33 $generated@@52 $generated@@53))
))))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@25 $generated@@20 $generated@@54 $generated@@21 $generated@@55)  (or (= $generated@@54 $generated@@22) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@55 $generated@@54) $generated)))))
 :pattern ( ($generated@@25 $generated@@20 $generated@@54 $generated@@21 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> ($generated@@56 $generated@@57 $generated@@58) (forall (($generated@@59 T@U) ) (!  (=> ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@57 $generated@@59) $generated))) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@58 $generated@@59) $generated))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@58 $generated@@59) $generated))
)))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@63 $generated@@65 ($generated@@29 $generated@@65 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@29 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (!  (=> ($generated@@56 $generated@@66 $generated@@67) (=> ($generated@@25 $generated@@70 $generated@@68 $generated@@69 $generated@@66) ($generated@@25 $generated@@70 $generated@@68 $generated@@69 $generated@@67)))
 :pattern ( ($generated@@56 $generated@@66 $generated@@67) ($generated@@25 $generated@@70 $generated@@68 $generated@@69 $generated@@66))
)))
(assert  (and (forall (($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@71 $generated@@74 $generated@@75 $generated@@76 ($generated@@73 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@80 $generated@@77) $generated@@79 $generated@@80) $generated@@77)
 :weight 0
)) (and (forall (($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (or (= $generated@@86 $generated@@88) (= ($generated@@71 $generated@@81 $generated@@82 $generated@@83 ($generated@@73 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@87 $generated@@84) $generated@@88 $generated@@89) ($generated@@71 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@88 $generated@@89)))
 :weight 0
)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (or (= $generated@@96 $generated@@98) (= ($generated@@71 $generated@@90 $generated@@91 $generated@@92 ($generated@@73 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96 $generated@@93) $generated@@97 $generated@@98) ($generated@@71 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@97 $generated@@98)))
 :weight 0
)))))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@8 ($generated@@71 $generated@@20 $generated@@31 $generated@@4 ($generated@@72 $generated@@99 $generated@@100 $generated@@101 $generated@@102) $generated@@103 $generated@@104))  (=> (and (or (not (= $generated@@103 $generated@@99)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@100 $generated@@103) $generated@@101)))) (= $generated@@103 $generated@@102)))
 :pattern ( ($generated@@71 $generated@@20 $generated@@31 $generated@@4 ($generated@@72 $generated@@99 $generated@@100 $generated@@101 $generated@@102) $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@105 $generated@@26)  (and ($generated@@19 $generated@@20 $generated@@105 $generated@@21) (or (not (= $generated@@105 $generated@@22)) (not true))))
 :pattern ( ($generated@@19 $generated@@20 $generated@@105 $generated@@26))
 :pattern ( ($generated@@19 $generated@@20 $generated@@105 $generated@@21))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (or (not (= $generated@@106 $generated@@108)) (not true)) (=> (and ($generated@@56 $generated@@106 $generated@@107) ($generated@@56 $generated@@107 $generated@@108)) ($generated@@56 $generated@@106 $generated@@108)))
 :pattern ( ($generated@@56 $generated@@106 $generated@@107) ($generated@@56 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@T) ) (! (= ($generated@@29 $generated@@110 ($generated@@63 $generated@@110 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@63 $generated@@110 $generated@@109))
)))
(assert (= ($generated@@111 $generated@@26) $generated@@0))
(assert (= ($generated@@112 $generated@@26) $generated@@2))
(assert (= ($generated@@111 $generated@@21) $generated@@1))
(assert (= ($generated@@112 $generated@@21) $generated@@2))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@63 $generated@@114 ($generated@@60 $generated@@114 $generated@@113)) ($generated@@60 $generated@@32 ($generated@@63 $generated@@114 $generated@@113)))
 :pattern ( ($generated@@63 $generated@@114 ($generated@@60 $generated@@114 $generated@@113)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@115 (T@U) Bool)
(declare-fun $generated@@116 () T@U)
(declare-fun $generated@@117 () T@U)
(declare-fun $generated@@118 (T@U) Bool)
(declare-fun $generated@@119 (T@U) Bool)
(declare-fun $generated@@120 (T@U) Bool)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () T@U)
(declare-fun $generated@@124 () T@U)
(declare-fun $generated@@125 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@128  (=> (and ($generated@@8 ($generated@@60 $generated@@4 ($generated@@7 false))) (= (ControlFlow 0 10) (- 0 9))) ($generated@@115 $generated@@116))))
(let (($generated@@129 true))
(let (($generated@@130  (=> (and ($generated@@19 $generated@@20 $generated@@116 $generated@@26) ($generated@@25 $generated@@20 $generated@@116 $generated@@26 $generated@@117)) (=> (and (and ($generated@@25 $generated@@20 $generated@@116 $generated@@26 $generated@@117) ($generated@@118 $generated@@116)) (and ($generated@@118 $generated@@116) ($generated@@119 $generated@@116))) (and (=> (= (ControlFlow 0 11) 8) $generated@@129) (=> (= (ControlFlow 0 11) 10) $generated@@128))))))
(let (($generated@@131  (=> (and (forall (($generated@@132 T@U) ) (!  (=> ($generated@@19 $generated@@20 $generated@@132 $generated@@26) (and ($generated@@118 $generated@@132) (=> ($generated@@119 $generated@@132) ($generated@@120 $generated@@132))))
 :pattern ( ($generated@@115 $generated@@132))
 :pattern ( ($generated@@119 $generated@@132))
)) (= (ControlFlow 0 2) (- 0 1))) (forall (($generated@@133 T@U) ) (!  (=> (and ($generated@@19 $generated@@20 $generated@@133 $generated@@26) ($generated@@25 $generated@@20 $generated@@133 $generated@@26 $generated@@117)) (=> ($generated@@119 $generated@@133) ($generated@@115 $generated@@133)))
 :pattern ( ($generated@@115 $generated@@133))
 :pattern ( ($generated@@119 $generated@@133))
)))))
(let (($generated@@134  (=> (and (not ($generated@@119 $generated@@121)) (= (ControlFlow 0 5) 2)) $generated@@131)))
(let (($generated@@135  (=> (and (and ($generated@@119 $generated@@121) ($generated@@25 $generated@@20 $generated@@121 $generated@@26 $generated@@117)) (and ($generated@@120 $generated@@121) (= (ControlFlow 0 4) 2))) $generated@@131)))
(let (($generated@@136  (=> (and (and ($generated@@19 $generated@@20 $generated@@121 $generated@@26) ($generated@@25 $generated@@20 $generated@@121 $generated@@26 $generated@@117)) (and ($generated@@25 $generated@@20 $generated@@121 $generated@@26 $generated@@117) ($generated@@118 $generated@@121))) (and (=> (= (ControlFlow 0 6) 4) $generated@@135) (=> (= (ControlFlow 0 6) 5) $generated@@134)))))
(let (($generated@@137  (=> (and (not (and ($generated@@19 $generated@@20 $generated@@121 $generated@@26) ($generated@@25 $generated@@20 $generated@@121 $generated@@26 $generated@@117))) (= (ControlFlow 0 3) 2)) $generated@@131)))
(let (($generated@@138  (=> (forall (($generated@@139 T@U) ) (!  (=> (and (and ($generated@@19 $generated@@20 $generated@@139 $generated@@26) ($generated@@25 $generated@@20 $generated@@139 $generated@@26 $generated@@117)) ($generated@@119 $generated@@139)) ($generated@@115 $generated@@139))
 :pattern ( ($generated@@115 $generated@@139))
 :pattern ( ($generated@@119 $generated@@139))
)) (and (=> (= (ControlFlow 0 7) 6) $generated@@136) (=> (= (ControlFlow 0 7) 3) $generated@@137)))))
(let (($generated@@140  (=> (= $generated@@122 ($generated@@72 $generated@@22 $generated@@123 $generated $generated@@124)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall (($generated@@141 T@U) ($generated@@142 T@U) )  (=> (and (and (or (not (= $generated@@141 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@123 $generated@@141) $generated)))) (= $generated@@141 $generated@@124)) ($generated@@8 ($generated@@71 $generated@@20 $generated@@31 $generated@@4 $generated@@122 $generated@@141 $generated@@142))))) (=> (forall (($generated@@143 T@U) ($generated@@144 T@U) )  (=> (and (and (or (not (= $generated@@143 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@123 $generated@@143) $generated)))) (= $generated@@143 $generated@@124)) ($generated@@8 ($generated@@71 $generated@@20 $generated@@31 $generated@@4 $generated@@122 $generated@@143 $generated@@144)))) (=> (and (and ($generated@@125 $generated@@117) ($generated@@126 $generated@@117)) (and (forall (($generated@@145 T@U) ) (!  (=> (and (or (not (= $generated@@145 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@123 $generated@@145) $generated)))) (or (= ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@117 $generated@@145) ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@123 $generated@@145)) (= $generated@@145 $generated@@124)))
 :pattern ( ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@117 $generated@@145))
)) ($generated@@56 $generated@@123 $generated@@117))) (and (=> (= (ControlFlow 0 12) 11) $generated@@130) (=> (= (ControlFlow 0 12) 7) $generated@@138))))))))
(let (($generated@@146  (=> (and ($generated@@125 $generated@@123) ($generated@@126 $generated@@123)) (=> (and (and ($generated@@19 $generated@@20 $generated@@124 $generated@@26) ($generated@@25 $generated@@20 $generated@@124 $generated@@26 $generated@@123)) (and (= 2 $generated@@127) (= (ControlFlow 0 14) 12))) $generated@@140))))
$generated@@146))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid