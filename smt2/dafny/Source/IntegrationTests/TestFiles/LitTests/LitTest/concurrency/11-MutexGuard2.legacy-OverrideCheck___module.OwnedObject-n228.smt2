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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T) T@T)
(declare-fun $generated@@41 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@43 (T@T) T@T)
(declare-fun $generated@@65 (T@U T@U) Bool)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@80 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@81 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@T T@U T@U) Bool)
(declare-fun $generated@@130 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@132 (T@U) Bool)
(declare-fun $generated@@133 (T@U) T@U)
(declare-fun $generated@@135 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (forall (($generated@@24 T@U) ) (!  (not ($generated@@22 $generated@@23 $generated@@24))
 :pattern ( ($generated@@22 $generated@@23 $generated@@24))
)))
(assert (= ($generated@@6 $generated@@26) 3))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@29 $generated@@27 $generated@@30) ($generated@@25 $generated@@26 $generated@@29 $generated@@28 $generated@@30))
 :pattern ( ($generated@@25 $generated@@26 $generated@@29 $generated@@27 $generated@@30))
 :pattern ( ($generated@@25 $generated@@26 $generated@@29 $generated@@28 $generated@@30))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@33 $generated@@31 $generated@@34) ($generated@@25 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
 :pattern ( ($generated@@25 $generated@@26 $generated@@33 $generated@@31 $generated@@34))
 :pattern ( ($generated@@25 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@37 $generated@@44 $generated@@45 ($generated@@41 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@48) $generated@@46)
 :weight 0
)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (!  (or (= $generated@@53 $generated@@54) (= ($generated@@37 $generated@@49 $generated@@50 ($generated@@41 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@54) ($generated@@37 $generated@@49 $generated@@50 $generated@@52 $generated@@54)))
 :weight 0
))) (= ($generated@@6 $generated@@38) 4)) (= ($generated@@6 $generated@@39) 5)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (= ($generated@@6 ($generated@@40 $generated@@55 $generated@@56)) 6))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@42 ($generated@@40 $generated@@57 $generated@@58)) $generated@@57)
 :pattern ( ($generated@@40 $generated@@57 $generated@@58))
))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@43 ($generated@@40 $generated@@59 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@40 $generated@@59 $generated@@60))
))))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@61 $generated@@28 $generated@@62)  (or (= $generated@@61 $generated@@35) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@62 $generated@@61) $generated)))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@61 $generated@@28 $generated@@62))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@63 $generated@@32 $generated@@64)  (or (= $generated@@63 $generated@@35) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@64 $generated@@63) $generated)))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@63 $generated@@32 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> ($generated@@65 $generated@@66 $generated@@67) (forall (($generated@@68 T@U) ) (!  (=> ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@66 $generated@@68) $generated))) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@67 $generated@@68) $generated))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@67 $generated@@68) $generated))
)))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 $generated@@70) $generated@@70)
 :pattern ( ($generated@@69 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@72 $generated@@73 $generated@@74) (forall (($generated@@75 T@U) ) (!  (=> ($generated@@22 $generated@@73 $generated@@75) ($generated@@22 $generated@@74 $generated@@75))
 :pattern ( ($generated@@22 $generated@@73 $generated@@75))
 :pattern ( ($generated@@22 $generated@@74 $generated@@75))
)))
 :pattern ( ($generated@@72 $generated@@73 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@76 $generated@@78 ($generated@@36 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@36 $generated@@78 $generated@@77))
)))
(assert  (and (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@79 $generated@@82 $generated@@83 $generated@@84 ($generated@@81 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88 $generated@@85) $generated@@87 $generated@@88) $generated@@85)
 :weight 0
)) (and (forall (($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (or (= $generated@@94 $generated@@96) (= ($generated@@79 $generated@@89 $generated@@90 $generated@@91 ($generated@@81 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@95 $generated@@92) $generated@@96 $generated@@97) ($generated@@79 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@96 $generated@@97)))
 :weight 0
)) (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@104 $generated@@106) (= ($generated@@79 $generated@@98 $generated@@99 $generated@@100 ($generated@@81 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@105 $generated@@106) ($generated@@79 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@105 $generated@@106)))
 :weight 0
)))))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@11 ($generated@@79 $generated@@26 $generated@@38 $generated@@7 ($generated@@80 $generated@@107 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112 $generated@@113))  (=> (and (or (not (= $generated@@112 $generated@@107)) (not true)) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@108 $generated@@112) $generated@@109)))) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@110 $generated@@112) $generated@@111)))))
 :pattern ( ($generated@@79 $generated@@26 $generated@@38 $generated@@7 ($generated@@80 $generated@@107 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@T) ) (!  (=> ($generated@@65 $generated@@114 $generated@@115) (=> ($generated@@25 $generated@@118 $generated@@116 $generated@@117 $generated@@114) ($generated@@25 $generated@@118 $generated@@116 $generated@@117 $generated@@115)))
 :pattern ( ($generated@@65 $generated@@114 $generated@@115) ($generated@@25 $generated@@118 $generated@@116 $generated@@117 $generated@@114))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@119 $generated@@26 $generated@@120 $generated@@27)  (and ($generated@@119 $generated@@26 $generated@@120 $generated@@28) (or (not (= $generated@@120 $generated@@35)) (not true))))
 :pattern ( ($generated@@119 $generated@@26 $generated@@120 $generated@@27))
 :pattern ( ($generated@@119 $generated@@26 $generated@@120 $generated@@28))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@119 $generated@@26 $generated@@121 $generated@@31)  (and ($generated@@119 $generated@@26 $generated@@121 $generated@@32) (or (not (= $generated@@121 $generated@@35)) (not true))))
 :pattern ( ($generated@@119 $generated@@26 $generated@@121 $generated@@31))
 :pattern ( ($generated@@119 $generated@@26 $generated@@121 $generated@@32))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@122 $generated@@32 $generated@@123) ($generated@@25 $generated@@26 $generated@@122 $generated@@28 $generated@@123))
 :pattern ( ($generated@@25 $generated@@26 $generated@@122 $generated@@32 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or (not (= $generated@@124 $generated@@126)) (not true)) (=> (and ($generated@@65 $generated@@124 $generated@@125) ($generated@@65 $generated@@125 $generated@@126)) ($generated@@65 $generated@@124 $generated@@126)))
 :pattern ( ($generated@@65 $generated@@124 $generated@@125) ($generated@@65 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@36 $generated@@128 ($generated@@76 $generated@@128 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@76 $generated@@128 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ) (!  (=> ($generated@@119 $generated@@26 $generated@@129 $generated@@32) ($generated@@119 $generated@@26 $generated@@129 $generated@@28))
 :pattern ( ($generated@@119 $generated@@26 $generated@@129 $generated@@32))
)))
(assert (= ($generated@@130 $generated@@27) $generated@@0))
(assert (= ($generated@@131 $generated@@27) $generated@@4))
(assert (= ($generated@@130 $generated@@28) $generated@@1))
(assert (= ($generated@@131 $generated@@28) $generated@@4))
(assert (= ($generated@@130 $generated@@31) $generated@@2))
(assert (= ($generated@@131 $generated@@31) $generated@@5))
(assert (= ($generated@@130 $generated@@32) $generated@@3))
(assert (= ($generated@@131 $generated@@32) $generated@@5))
(assert (forall (($generated@@134 T@U) ) (! (= ($generated@@119 $generated@@26 $generated@@134 $generated@@28)  (or (= $generated@@134 $generated@@35) ($generated@@132 ($generated@@133 $generated@@134))))
 :pattern ( ($generated@@119 $generated@@26 $generated@@134 $generated@@28))
)))
(assert (forall (($generated@@136 T@U) ) (! (= ($generated@@119 $generated@@26 $generated@@136 $generated@@32)  (or (= $generated@@136 $generated@@35) ($generated@@135 ($generated@@133 $generated@@136))))
 :pattern ( ($generated@@119 $generated@@26 $generated@@136 $generated@@32))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@T) ) (! (= ($generated@@76 $generated@@138 ($generated@@69 $generated@@138 $generated@@137)) ($generated@@69 $generated@@39 ($generated@@76 $generated@@138 $generated@@137)))
 :pattern ( ($generated@@76 $generated@@138 ($generated@@69 $generated@@138 $generated@@137)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@139 () T@T)
(declare-fun $generated@@140 () T@U)
(declare-fun $generated@@141 () T@U)
(declare-fun $generated@@142 (T@U) Bool)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 (T@U) Bool)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () Int)
(declare-fun $generated@@148 () T@U)
(assert (= ($generated@@6 $generated@@139) 7))
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@149  (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@72 ($generated@@69 $generated@@139 $generated@@23) ($generated@@69 $generated@@139 $generated@@23))) (=> ($generated@@72 ($generated@@69 $generated@@139 $generated@@23) ($generated@@69 $generated@@139 $generated@@23)) (=> (and (= $generated@@140 ($generated@@80 $generated@@35 $generated@@141 $generated $generated@@141 $generated)) (= (ControlFlow 0 2) (- 0 1))) (forall (($generated@@150 T@U) ($generated@@151 T@U) )  (=> (and (and (or (not (= $generated@@150 $generated@@35)) (not true)) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@141 $generated@@150) $generated)))) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@141 $generated@@150) $generated)))) ($generated@@11 ($generated@@36 $generated@@7 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@26 ($generated@@40 $generated@@38 $generated@@39) $generated@@141 $generated@@150) $generated))))))))))
(let (($generated@@152  (=> (and ($generated@@142 $generated@@143) ($generated@@144 $generated@@143)) (=> (and (and (and (or (not (= $generated@@145 $generated@@35)) (not true)) (and ($generated@@119 $generated@@26 $generated@@145 $generated@@31) ($generated@@25 $generated@@26 $generated@@145 $generated@@31 $generated@@146))) (= 2 $generated@@147)) (and (and (= $generated@@148 $generated@@143) (and ($generated@@65 $generated@@148 $generated@@146) ($generated@@142 $generated@@146))) (= (ControlFlow 0 4) 2))) $generated@@149))))
$generated@@152)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)