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
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@27 (Int) Int)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@32 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@42 () Int)
(declare-fun $generated@@43 (T@U) Int)
(declare-fun $generated@@44 (T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@64 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@68 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@69 () T@T)
(declare-fun $generated@@70 (T@T T@T) T@T)
(declare-fun $generated@@71 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@72 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T) T@T)
(declare-fun $generated@@74 (T@T) T@T)
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
(assert (= ($generated@@19 $generated) $generated@@0))
(assert (forall (($generated@@22 T@U) ) (!  (not ($generated@@20 $generated@@21 $generated@@22))
 :pattern ( ($generated@@20 $generated@@21 $generated@@22))
)))
(assert (forall (($generated@@26 T@U) ) (!  (=> ($generated@@24 $generated@@26) ($generated@@20 $generated@@26 ($generated@@25 $generated@@5 ($generated@@9 ($generated@@23 $generated@@26)))))
 :pattern ( ($generated@@23 $generated@@26))
)))
(assert (forall (($generated@@28 Int) ) (! (= ($generated@@27 $generated@@28) $generated@@28)
 :pattern ( ($generated@@27 $generated@@28))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@T) ) (! (= ($generated@@29 $generated@@31 $generated@@30) $generated@@30)
 :pattern ( ($generated@@29 $generated@@31 $generated@@30))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@T) ) (! (= ($generated@@25 $generated@@34 ($generated@@32 $generated@@34 $generated@@33)) $generated@@33)
 :pattern ( ($generated@@32 $generated@@34 $generated@@33))
)))
(assert (= ($generated@@3 $generated@@36) 3))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@40)) (forall (($generated@@41 T@U) ) (!  (=> ($generated@@20 $generated@@39 $generated@@41) ($generated@@38 $generated@@41 $generated@@40))
 :pattern ( ($generated@@20 $generated@@39 $generated@@41))
)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@40)))
)))
(assert  (=> (<= 0 $generated@@42) (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (!  (=> (or ($generated@@45 $generated@@48) (and (< 0 $generated@@42) (and (and ($generated@@44 $generated@@47) ($generated@@35 $generated@@36 $generated@@48 ($generated@@37 $generated))) (not ($generated@@46 $generated@@48 $generated@@21))))) (and ($generated@@24 $generated@@48) (= ($generated@@43 $generated@@48) (let (($generated@@49 ($generated@@23 $generated@@48)))
$generated@@49))))
 :pattern ( ($generated@@43 $generated@@48) ($generated@@44 $generated@@47))
))))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> ($generated@@46 $generated@@50 $generated@@51) (= $generated@@50 $generated@@51))
 :pattern ( ($generated@@46 $generated@@50 $generated@@51))
)))
(assert  (=> (<= 0 $generated@@42) (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> (or ($generated@@45 ($generated@@29 $generated@@36 $generated@@53)) (and (< 0 $generated@@42) (and (and ($generated@@44 $generated@@52) ($generated@@35 $generated@@36 $generated@@53 ($generated@@37 $generated))) (not ($generated@@46 $generated@@53 $generated@@21))))) (and ($generated@@24 ($generated@@29 $generated@@36 $generated@@53)) (= ($generated@@43 ($generated@@29 $generated@@36 $generated@@53)) (let (($generated@@54 ($generated@@23 ($generated@@29 $generated@@36 $generated@@53))))
$generated@@54))))
 :weight 3
 :pattern ( ($generated@@43 ($generated@@29 $generated@@36 $generated@@53)) ($generated@@44 $generated@@52))
))))
(assert (forall (($generated@@55 T@U) ) (!  (=> ($generated@@38 $generated@@55 $generated) (and (= ($generated@@25 $generated@@5 ($generated@@32 $generated@@5 $generated@@55)) $generated@@55) ($generated@@35 $generated@@5 ($generated@@32 $generated@@5 $generated@@55) $generated)))
 :pattern ( ($generated@@38 $generated@@55 $generated))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@38 ($generated@@25 $generated@@58 $generated@@56) $generated@@57) ($generated@@35 $generated@@58 $generated@@56 $generated@@57))
 :pattern ( ($generated@@38 ($generated@@25 $generated@@58 $generated@@56) $generated@@57))
)))
(assert (forall (($generated@@60 T@U) ) (! (= ($generated@@59 ($generated@@37 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@37 $generated@@60))
)))
(assert (forall (($generated@@61 T@U) ) (! (= ($generated@@19 ($generated@@37 $generated@@61)) $generated@@1)
 :pattern ( ($generated@@37 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@32 $generated@@63 ($generated@@25 $generated@@63 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@25 $generated@@63 $generated@@62))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@T) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@64 $generated@@75 $generated@@76 $generated@@77 ($generated@@71 $generated@@75 $generated@@76 $generated@@77 $generated@@79 $generated@@80 $generated@@81 $generated@@78) $generated@@80 $generated@@81) $generated@@78)
 :weight 0
)) (and (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (or (= $generated@@87 $generated@@89) (= ($generated@@64 $generated@@82 $generated@@83 $generated@@84 ($generated@@71 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88 $generated@@85) $generated@@89 $generated@@90) ($generated@@64 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@89 $generated@@90)))
 :weight 0
)) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (or (= $generated@@97 $generated@@99) (= ($generated@@64 $generated@@91 $generated@@92 $generated@@93 ($generated@@71 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@98 $generated@@99) ($generated@@64 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@98 $generated@@99)))
 :weight 0
)))) (= ($generated@@3 $generated@@65) 4)) (= ($generated@@3 $generated@@66) 5)) (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@68 $generated@@100 $generated@@101 ($generated@@72 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@102) $generated@@104) $generated@@102)
 :weight 0
))) (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (or (= $generated@@109 $generated@@110) (= ($generated@@68 $generated@@105 $generated@@106 ($generated@@72 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@107) $generated@@110) ($generated@@68 $generated@@105 $generated@@106 $generated@@108 $generated@@110)))
 :weight 0
))) (= ($generated@@3 $generated@@69) 6)) (forall (($generated@@111 T@T) ($generated@@112 T@T) ) (= ($generated@@3 ($generated@@70 $generated@@111 $generated@@112)) 7))) (forall (($generated@@113 T@T) ($generated@@114 T@T) ) (! (= ($generated@@73 ($generated@@70 $generated@@113 $generated@@114)) $generated@@113)
 :pattern ( ($generated@@70 $generated@@113 $generated@@114))
))) (forall (($generated@@115 T@T) ($generated@@116 T@T) ) (! (= ($generated@@74 ($generated@@70 $generated@@115 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@70 $generated@@115 $generated@@116))
))))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 Bool) ($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@8 ($generated@@64 $generated@@65 $generated@@66 $generated@@4 ($generated@@67 $generated@@117 $generated@@118 $generated@@119 $generated@@120) $generated@@121 $generated@@122))  (=> (and (or (not (= $generated@@121 $generated@@117)) (not true)) ($generated@@8 ($generated@@32 $generated@@4 ($generated@@68 $generated@@66 $generated@@69 ($generated@@68 $generated@@65 ($generated@@70 $generated@@66 $generated@@69) $generated@@118 $generated@@121) $generated@@119)))) $generated@@120))
 :pattern ( ($generated@@64 $generated@@65 $generated@@66 $generated@@4 ($generated@@67 $generated@@117 $generated@@118 $generated@@119 $generated@@120) $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> ($generated@@38 $generated@@123 ($generated@@37 $generated@@124)) (and (= ($generated@@25 $generated@@36 ($generated@@32 $generated@@36 $generated@@123)) $generated@@123) ($generated@@35 $generated@@36 ($generated@@32 $generated@@36 $generated@@123) ($generated@@37 $generated@@124))))
 :pattern ( ($generated@@38 $generated@@123 ($generated@@37 $generated@@124)))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@46 $generated@@125 $generated@@126) (forall (($generated@@127 T@U) ) (! (= ($generated@@20 $generated@@125 $generated@@127) ($generated@@20 $generated@@126 $generated@@127))
 :pattern ( ($generated@@20 $generated@@125 $generated@@127))
 :pattern ( ($generated@@20 $generated@@126 $generated@@127))
)))
 :pattern ( ($generated@@46 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 Int) ) (! (= ($generated@@25 $generated@@5 ($generated@@9 ($generated@@27 $generated@@128))) ($generated@@29 $generated@@69 ($generated@@25 $generated@@5 ($generated@@9 $generated@@128))))
 :pattern ( ($generated@@25 $generated@@5 ($generated@@9 ($generated@@27 $generated@@128))))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@T) ) (! (= ($generated@@25 $generated@@130 ($generated@@29 $generated@@130 $generated@@129)) ($generated@@29 $generated@@69 ($generated@@25 $generated@@130 $generated@@129)))
 :pattern ( ($generated@@25 $generated@@130 ($generated@@29 $generated@@130 $generated@@129)))
)))
(assert (forall (($generated@@131 T@U) ) (! ($generated@@35 $generated@@5 $generated@@131 $generated)
 :pattern ( ($generated@@35 $generated@@5 $generated@@131 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@132 () T@U)
(declare-fun $generated@@133 () Int)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@138 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@139 true))
(let (($generated@@140  (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (and ($generated@@35 $generated@@5 ($generated@@9 ($generated@@27 0)) $generated) ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 ($generated@@9 ($generated@@27 0))))) (exists (($generated@@141 T@U) ) ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 $generated@@141))))) (=> (or (and ($generated@@35 $generated@@5 ($generated@@9 ($generated@@27 0)) $generated) ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 ($generated@@9 ($generated@@27 0))))) (exists (($generated@@142 Int) ) ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 ($generated@@9 $generated@@142))))) (=> ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 ($generated@@9 $generated@@133))) (=> (and ($generated@@20 $generated@@132 ($generated@@25 $generated@@5 ($generated@@9 $generated@@134))) (= (ControlFlow 0 3) (- 0 2))) (= $generated@@133 $generated@@134)))))))
(let (($generated@@143 true))
(let (($generated@@144  (=> (and (= $generated@@135 ($generated@@67 $generated@@136 $generated@@137 $generated@@2 false)) (not ($generated@@46 $generated@@132 $generated@@21))) (and (and (=> (= (ControlFlow 0 6) 1) $generated@@143) (=> (= (ControlFlow 0 6) 3) $generated@@140)) (=> (= (ControlFlow 0 6) 5) $generated@@139)))))
(let (($generated@@145  (=> (and (and (and ($generated@@44 $generated@@137) ($generated@@138 $generated@@137)) ($generated@@35 $generated@@36 $generated@@132 ($generated@@37 $generated))) (and (= 0 $generated@@42) (= (ControlFlow 0 7) 6))) $generated@@144)))
$generated@@145))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)