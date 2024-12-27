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
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@T T@U) T@U)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 (T@U) Bool)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (Int) Int)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@43 (Int) T@U)
(declare-fun $generated@@53 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@57 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 (T@T T@T) T@T)
(declare-fun $generated@@60 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@62 (T@T) T@T)
(declare-fun $generated@@63 (T@T) T@T)
(declare-fun $generated@@112 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@118 (T@U) T@U)
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
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (= ($generated@@5 $generated@@25) 3))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@32 T@U) ) (!  (=> (or ($generated@@26 ($generated@@24 $generated@@25 $generated@@32)) (and (< 1 $generated@@22) ($generated@@27 $generated@@25 $generated@@32 $generated@@28))) (and ($generated@@29 ($generated@@24 $generated@@25 $generated@@32)) (= ($generated@@23 ($generated@@24 $generated@@25 $generated@@32)) ($generated@@30 ($generated@@31 ($generated@@24 $generated@@25 $generated@@32))))))
 :weight 3
 :pattern ( ($generated@@23 ($generated@@24 $generated@@25 $generated@@32)))
))))
(assert (forall (($generated@@33 T@U) ) (!  (=> ($generated@@27 $generated@@25 $generated@@33 $generated@@28) ($generated@@29 $generated@@33))
 :pattern ( ($generated@@29 $generated@@33) ($generated@@27 $generated@@25 $generated@@33 $generated@@28))
)))
(assert (forall (($generated@@34 Int) ) (! (= ($generated@@30 $generated@@34) $generated@@34)
 :pattern ( ($generated@@30 $generated@@34))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@24 $generated@@36 $generated@@35) $generated@@35)
 :pattern ( ($generated@@24 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ) (! (= ($generated@@29 $generated@@38) (= ($generated@@37 $generated@@38) $generated@@3))
 :pattern ( ($generated@@29 $generated@@38))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 ($generated@@39 $generated@@42 $generated@@41)) $generated@@41)
 :pattern ( ($generated@@39 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@29 $generated@@44) (exists (($generated@@45 Int) ) (= $generated@@44 ($generated@@43 $generated@@45))))
 :pattern ( ($generated@@29 $generated@@44))
)))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@46 T@U) ) (!  (=> (or ($generated@@26 $generated@@46) (and (< 1 $generated@@22) ($generated@@27 $generated@@25 $generated@@46 $generated@@28))) (= ($generated@@23 $generated@@46) ($generated@@31 $generated@@46)))
 :pattern ( ($generated@@23 $generated@@46))
))))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@47 T@U) ) (!  (=> (or ($generated@@26 $generated@@47) (and (< 1 $generated@@22) ($generated@@27 $generated@@25 $generated@@47 $generated@@28))) (and ($generated@@29 $generated@@47) (= ($generated@@23 $generated@@47) ($generated@@31 $generated@@47))))
 :pattern ( ($generated@@23 $generated@@47))
))))
(assert (forall (($generated@@48 Int) ) (! (= ($generated@@37 ($generated@@43 $generated@@48)) $generated@@3)
 :pattern ( ($generated@@43 $generated@@48))
)))
(assert (forall (($generated@@49 Int) ) (! (= ($generated@@31 ($generated@@43 $generated@@49)) $generated@@49)
 :pattern ( ($generated@@43 $generated@@49))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@39 $generated@@51 ($generated@@40 $generated@@51 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@40 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@52 Int) ) (! (= ($generated@@27 $generated@@25 ($generated@@43 $generated@@52) $generated@@28) ($generated@@27 $generated@@7 ($generated@@11 $generated@@52) $generated))
 :pattern ( ($generated@@27 $generated@@25 ($generated@@43 $generated@@52) $generated@@28))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@64 T@T) ($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@53 $generated@@64 $generated@@65 $generated@@66 ($generated@@60 $generated@@64 $generated@@65 $generated@@66 $generated@@68 $generated@@69 $generated@@70 $generated@@67) $generated@@69 $generated@@70) $generated@@67)
 :weight 0
)) (and (forall (($generated@@71 T@T) ($generated@@72 T@T) ($generated@@73 T@T) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (or (= $generated@@76 $generated@@78) (= ($generated@@53 $generated@@71 $generated@@72 $generated@@73 ($generated@@60 $generated@@71 $generated@@72 $generated@@73 $generated@@75 $generated@@76 $generated@@77 $generated@@74) $generated@@78 $generated@@79) ($generated@@53 $generated@@71 $generated@@72 $generated@@73 $generated@@75 $generated@@78 $generated@@79)))
 :weight 0
)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (or (= $generated@@86 $generated@@88) (= ($generated@@53 $generated@@80 $generated@@81 $generated@@82 ($generated@@60 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@85 $generated@@86 $generated@@83) $generated@@87 $generated@@88) ($generated@@53 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@87 $generated@@88)))
 :weight 0
)))) (= ($generated@@5 $generated@@54) 4)) (= ($generated@@5 $generated@@55) 5)) (forall (($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@57 $generated@@89 $generated@@90 ($generated@@61 $generated@@89 $generated@@90 $generated@@92 $generated@@93 $generated@@91) $generated@@93) $generated@@91)
 :weight 0
))) (forall (($generated@@94 T@T) ($generated@@95 T@T) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (or (= $generated@@98 $generated@@99) (= ($generated@@57 $generated@@94 $generated@@95 ($generated@@61 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@96) $generated@@99) ($generated@@57 $generated@@94 $generated@@95 $generated@@97 $generated@@99)))
 :weight 0
))) (= ($generated@@5 $generated@@58) 6)) (forall (($generated@@100 T@T) ($generated@@101 T@T) ) (= ($generated@@5 ($generated@@59 $generated@@100 $generated@@101)) 7))) (forall (($generated@@102 T@T) ($generated@@103 T@T) ) (! (= ($generated@@62 ($generated@@59 $generated@@102 $generated@@103)) $generated@@102)
 :pattern ( ($generated@@59 $generated@@102 $generated@@103))
))) (forall (($generated@@104 T@T) ($generated@@105 T@T) ) (! (= ($generated@@63 ($generated@@59 $generated@@104 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@59 $generated@@104 $generated@@105))
))))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 Bool) ($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@10 ($generated@@53 $generated@@54 $generated@@55 $generated@@6 ($generated@@56 $generated@@106 $generated@@107 $generated@@108 $generated@@109) $generated@@110 $generated@@111))  (=> (and (or (not (= $generated@@110 $generated@@106)) (not true)) ($generated@@10 ($generated@@39 $generated@@6 ($generated@@57 $generated@@55 $generated@@58 ($generated@@57 $generated@@54 ($generated@@59 $generated@@55 $generated@@58) $generated@@107 $generated@@110) $generated@@108)))) $generated@@109))
 :pattern ( ($generated@@53 $generated@@54 $generated@@55 $generated@@6 ($generated@@56 $generated@@106 $generated@@107 $generated@@108 $generated@@109) $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (and ($generated@@113 $generated@@115) (and ($generated@@29 $generated@@114) ($generated@@112 $generated@@25 $generated@@114 $generated@@28 $generated@@115))) ($generated@@112 $generated@@7 ($generated@@11 ($generated@@31 $generated@@114)) $generated $generated@@115))
 :pattern ( ($generated@@112 $generated@@7 ($generated@@11 ($generated@@31 $generated@@114)) $generated $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and ($generated@@113 $generated@@117) ($generated@@27 $generated@@25 $generated@@116 $generated@@28)) ($generated@@112 $generated@@25 $generated@@116 $generated@@28 $generated@@117))
 :pattern ( ($generated@@112 $generated@@25 $generated@@116 $generated@@28 $generated@@117))
)))
(assert (= ($generated@@21 $generated@@28) $generated@@2))
(assert (= ($generated@@118 $generated@@28) $generated@@4))
(assert (forall (($generated@@119 Int) ) (! (= ($generated@@40 $generated@@7 ($generated@@11 ($generated@@30 $generated@@119))) ($generated@@24 $generated@@58 ($generated@@40 $generated@@7 ($generated@@11 $generated@@119))))
 :pattern ( ($generated@@40 $generated@@7 ($generated@@11 ($generated@@30 $generated@@119))))
)))
(assert (forall (($generated@@120 Int) ) (! (= ($generated@@43 ($generated@@30 $generated@@120)) ($generated@@24 $generated@@25 ($generated@@43 $generated@@120)))
 :pattern ( ($generated@@43 ($generated@@30 $generated@@120)))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@T) ) (! (= ($generated@@40 $generated@@122 ($generated@@24 $generated@@122 $generated@@121)) ($generated@@24 $generated@@58 ($generated@@40 $generated@@122 $generated@@121)))
 :pattern ( ($generated@@40 $generated@@122 ($generated@@24 $generated@@122 $generated@@121)))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! ($generated@@112 $generated@@7 $generated@@124 $generated $generated@@123)
 :pattern ( ($generated@@112 $generated@@7 $generated@@124 $generated $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ) (! ($generated@@27 $generated@@7 $generated@@125 $generated)
 :pattern ( ($generated@@27 $generated@@7 $generated@@125 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 () T@U)
(declare-fun $generated@@129 () T@U)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@132  (=> (and (forall (($generated@@133 T@U) ) (!  (=> ($generated@@27 $generated@@25 $generated@@133 $generated@@28) ($generated@@26 $generated@@133))
 :pattern ( ($generated@@23 $generated@@133))
)) (= (ControlFlow 0 4) (- 0 3))) (exists (($generated@@134 Int) ) (exists (($generated@@135 T@U) ) (!  (and ($generated@@27 $generated@@25 $generated@@135 $generated@@28) (> ($generated@@23 $generated@@135) 0))
 :pattern ( ($generated@@23 $generated@@135))
))))))
(let (($generated@@136  (=> (and (not (and ($generated@@27 $generated@@25 $generated@@126 $generated@@28) ($generated@@112 $generated@@25 $generated@@126 $generated@@28 $generated@@127))) (= (ControlFlow 0 6) 4)) $generated@@132)))
(let (($generated@@137  (=> (and (and (and ($generated@@27 $generated@@25 $generated@@126 $generated@@28) ($generated@@112 $generated@@25 $generated@@126 $generated@@28 $generated@@127)) ($generated@@112 $generated@@25 $generated@@126 $generated@@28 $generated@@127)) (and ($generated@@26 $generated@@126) (= (ControlFlow 0 5) 4))) $generated@@132)))
(let (($generated@@138  (and (=> (= (ControlFlow 0 7) 5) $generated@@137) (=> (= (ControlFlow 0 7) 6) $generated@@136))))
(let (($generated@@139 true))
(let (($generated@@140  (=> (and (forall (($generated@@141 T@U) ) (!  (=> ($generated@@27 $generated@@25 $generated@@141 $generated@@28) ($generated@@26 $generated@@141))
 :pattern ( ($generated@@23 $generated@@141))
)) (exists (($generated@@142 Int) ) (exists (($generated@@143 T@U) ) (!  (and ($generated@@27 $generated@@25 $generated@@143 $generated@@28) (> ($generated@@23 $generated@@143) 0))
 :pattern ( ($generated@@23 $generated@@143))
)))) (and (=> (= (ControlFlow 0 8) 7) $generated@@138) (=> (= (ControlFlow 0 8) 2) $generated@@139)))))
(let (($generated@@144  (=> (and (not (and ($generated@@27 $generated@@25 $generated@@128 $generated@@28) ($generated@@112 $generated@@25 $generated@@128 $generated@@28 $generated@@127))) (= (ControlFlow 0 10) 8)) $generated@@140)))
(let (($generated@@145  (=> (and (and (and ($generated@@27 $generated@@25 $generated@@128 $generated@@28) ($generated@@112 $generated@@25 $generated@@128 $generated@@28 $generated@@127)) ($generated@@112 $generated@@25 $generated@@128 $generated@@28 $generated@@127)) (and ($generated@@26 $generated@@128) (= (ControlFlow 0 9) 8))) $generated@@140)))
(let (($generated@@146  (and (=> (= (ControlFlow 0 11) 9) $generated@@145) (=> (= (ControlFlow 0 11) 10) $generated@@144))))
(let (($generated@@147 true))
(let (($generated@@148  (=> (= $generated@@129 ($generated@@56 $generated@@130 $generated@@127 $generated@@1 false)) (and (=> (= (ControlFlow 0 12) 11) $generated@@146) (=> (= (ControlFlow 0 12) 1) $generated@@147)))))
(let (($generated@@149  (=> (and (and ($generated@@113 $generated@@127) ($generated@@131 $generated@@127)) (and (= 2 $generated@@22) (= (ControlFlow 0 13) 12))) $generated@@148)))
$generated@@149)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid