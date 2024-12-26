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
(declare-fun $generated@@18 () Int)
(declare-fun $generated@@19 (T@U Int) Int)
(declare-fun $generated@@20 (Int) Bool)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@24 (T@U Int) Int)
(declare-fun $generated@@25 (Int) Bool)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 () Bool)
(declare-fun $generated@@35 () Bool)
(declare-fun $generated@@36 (T@U) Int)
(declare-fun $generated@@38 (T@U) Int)
(declare-fun $generated@@39 () Bool)
(declare-fun $generated@@41 (T@U) Int)
(declare-fun $generated@@42 () Bool)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@U T@U) Bool)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@59 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@63 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 (T@T T@T) T@T)
(declare-fun $generated@@66 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@67 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@68 (T@T) T@T)
(declare-fun $generated@@69 (T@T) T@T)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
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
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@22 T@U) ($generated@@23 Int) ) (!  (=> (or ($generated@@20 $generated@@23) (and (< 0 $generated@@18) (<= ($generated@@21 0) $generated@@23))) (<= ($generated@@21 0) ($generated@@19 $generated@@22 $generated@@23)))
 :pattern ( ($generated@@19 $generated@@22 $generated@@23))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@26 T@U) ($generated@@27 Int) ) (!  (=> (or ($generated@@25 $generated@@27) (and (< 0 $generated@@18) (<= ($generated@@21 0) $generated@@27))) (<= ($generated@@21 0) ($generated@@24 $generated@@26 $generated@@27)))
 :pattern ( ($generated@@24 $generated@@26 $generated@@27))
))))
(assert (forall (($generated@@28 Int) ) (! (= ($generated@@21 $generated@@28) $generated@@28)
 :pattern ( ($generated@@21 $generated@@28))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@T) ) (! (= ($generated@@29 $generated@@31 $generated@@30) $generated@@30)
 :pattern ( ($generated@@29 $generated@@31 $generated@@30))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@37 T@U) ) (!  (=> (or $generated@@34 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 ($generated@@33 $generated@@37))))) ($generated@@20 ($generated@@24 ($generated@@33 $generated@@37) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@37)))))) (= ($generated@@32 ($generated@@33 $generated@@37)) ($generated@@19 ($generated@@33 $generated@@37) ($generated@@24 ($generated@@33 $generated@@37) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@37))))))))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@33 $generated@@37)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@40 T@U) ) (!  (=> (or $generated@@39 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 ($generated@@33 $generated@@40))))) ($generated@@20 ($generated@@24 ($generated@@33 $generated@@40) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@40)))))) (= ($generated@@38 ($generated@@33 $generated@@40)) ($generated@@19 ($generated@@33 $generated@@40) ($generated@@24 ($generated@@33 $generated@@40) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@40))))))))
 :weight 3
 :pattern ( ($generated@@38 ($generated@@33 $generated@@40)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@43 T@U) ) (!  (=> (or $generated@@42 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 ($generated@@33 $generated@@43))))) ($generated@@20 ($generated@@24 ($generated@@33 $generated@@43) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@43)))))) (= ($generated@@41 ($generated@@33 $generated@@43)) ($generated@@19 ($generated@@33 $generated@@43) ($generated@@24 ($generated@@33 $generated@@43) ($generated@@21 ($generated@@36 ($generated@@33 $generated@@43))))))))
 :weight 3
 :pattern ( ($generated@@41 ($generated@@33 $generated@@43)))
))))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@45 $generated@@47 ($generated@@44 $generated@@47 $generated@@46)) $generated@@46)
 :pattern ( ($generated@@44 $generated@@47 $generated@@46))
)))
(assert (forall (($generated@@50 T@U) ) (! (= ($generated@@48 $generated@@4 $generated@@50 $generated@@49) (<= ($generated@@21 0) ($generated@@9 $generated@@50)))
 :pattern ( ($generated@@48 $generated@@4 $generated@@50 $generated@@49))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@51 T@U) ) (!  (=> (or $generated@@35 (< 0 $generated@@18)) (and (and (and $generated@@34 $generated@@39) $generated@@42) (= ($generated@@36 ($generated@@33 $generated@@51)) ($generated@@21 (+ (+ ($generated@@32 $generated@@51) ($generated@@38 $generated@@51)) ($generated@@41 $generated@@51))))))
 :pattern ( ($generated@@36 ($generated@@33 $generated@@51)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@52 T@U) ) (!  (=> (or $generated@@35 (< 0 $generated@@18)) (and (and (and $generated@@34 $generated@@39) $generated@@42) (= ($generated@@36 ($generated@@33 $generated@@52)) ($generated@@21 (+ (+ ($generated@@32 ($generated@@33 $generated@@52)) ($generated@@38 ($generated@@33 $generated@@52))) ($generated@@41 ($generated@@33 $generated@@52)))))))
 :weight 3
 :pattern ( ($generated@@36 ($generated@@33 $generated@@52)))
))))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@T) ) (! (= ($generated@@44 $generated@@54 ($generated@@45 $generated@@54 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@45 $generated@@54 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 Int) ) (! (= ($generated@@19 ($generated@@33 $generated@@55) $generated@@56) ($generated@@19 $generated@@55 $generated@@56))
 :pattern ( ($generated@@19 ($generated@@33 $generated@@55) $generated@@56))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 Int) ) (! (= ($generated@@24 ($generated@@33 $generated@@57) $generated@@58) ($generated@@24 $generated@@57 $generated@@58))
 :pattern ( ($generated@@24 ($generated@@33 $generated@@57) $generated@@58))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@T) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@59 $generated@@70 $generated@@71 $generated@@72 ($generated@@66 $generated@@70 $generated@@71 $generated@@72 $generated@@74 $generated@@75 $generated@@76 $generated@@73) $generated@@75 $generated@@76) $generated@@73)
 :weight 0
)) (and (forall (($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@82 $generated@@84) (= ($generated@@59 $generated@@77 $generated@@78 $generated@@79 ($generated@@66 $generated@@77 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@83 $generated@@80) $generated@@84 $generated@@85) ($generated@@59 $generated@@77 $generated@@78 $generated@@79 $generated@@81 $generated@@84 $generated@@85)))
 :weight 0
)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@T) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (!  (or (= $generated@@92 $generated@@94) (= ($generated@@59 $generated@@86 $generated@@87 $generated@@88 ($generated@@66 $generated@@86 $generated@@87 $generated@@88 $generated@@90 $generated@@91 $generated@@92 $generated@@89) $generated@@93 $generated@@94) ($generated@@59 $generated@@86 $generated@@87 $generated@@88 $generated@@90 $generated@@93 $generated@@94)))
 :weight 0
)))) (= ($generated@@2 $generated@@60) 3)) (= ($generated@@2 $generated@@61) 4)) (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@63 $generated@@95 $generated@@96 ($generated@@67 $generated@@95 $generated@@96 $generated@@98 $generated@@99 $generated@@97) $generated@@99) $generated@@97)
 :weight 0
))) (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (or (= $generated@@104 $generated@@105) (= ($generated@@63 $generated@@100 $generated@@101 ($generated@@67 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@102) $generated@@105) ($generated@@63 $generated@@100 $generated@@101 $generated@@103 $generated@@105)))
 :weight 0
))) (= ($generated@@2 $generated@@64) 5)) (forall (($generated@@106 T@T) ($generated@@107 T@T) ) (= ($generated@@2 ($generated@@65 $generated@@106 $generated@@107)) 6))) (forall (($generated@@108 T@T) ($generated@@109 T@T) ) (! (= ($generated@@68 ($generated@@65 $generated@@108 $generated@@109)) $generated@@108)
 :pattern ( ($generated@@65 $generated@@108 $generated@@109))
))) (forall (($generated@@110 T@T) ($generated@@111 T@T) ) (! (= ($generated@@69 ($generated@@65 $generated@@110 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@65 $generated@@110 $generated@@111))
))))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 Bool) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@7 ($generated@@59 $generated@@60 $generated@@61 $generated@@3 ($generated@@62 $generated@@112 $generated@@113 $generated@@114 $generated@@115) $generated@@116 $generated@@117))  (=> (and (or (not (= $generated@@116 $generated@@112)) (not true)) ($generated@@7 ($generated@@44 $generated@@3 ($generated@@63 $generated@@61 $generated@@64 ($generated@@63 $generated@@60 ($generated@@65 $generated@@61 $generated@@64) $generated@@113 $generated@@116) $generated@@114)))) $generated@@115))
 :pattern ( ($generated@@59 $generated@@60 $generated@@61 $generated@@3 ($generated@@62 $generated@@112 $generated@@113 $generated@@114 $generated@@115) $generated@@116 $generated@@117))
)))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@118 T@U) ) (!  (=> (or $generated@@35 (< 0 $generated@@18)) (<= ($generated@@21 0) ($generated@@36 $generated@@118)))
 :pattern ( ($generated@@36 $generated@@118))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@119 T@U) ) (!  (=> (or $generated@@34 (< 0 $generated@@18)) (<= ($generated@@21 0) ($generated@@32 $generated@@119)))
 :pattern ( ($generated@@32 $generated@@119))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@120 T@U) ) (!  (=> (or $generated@@39 (< 0 $generated@@18)) (<= ($generated@@21 0) ($generated@@38 $generated@@120)))
 :pattern ( ($generated@@38 $generated@@120))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@121 T@U) ) (!  (=> (or $generated@@42 (< 0 $generated@@18)) (<= ($generated@@21 0) ($generated@@41 $generated@@121)))
 :pattern ( ($generated@@41 $generated@@121))
))))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@36 ($generated@@33 $generated@@122)) ($generated@@36 $generated@@122))
 :pattern ( ($generated@@36 ($generated@@33 $generated@@122)))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@32 ($generated@@33 $generated@@123)) ($generated@@32 $generated@@123))
 :pattern ( ($generated@@32 ($generated@@33 $generated@@123)))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@38 ($generated@@33 $generated@@124)) ($generated@@38 $generated@@124))
 :pattern ( ($generated@@38 ($generated@@33 $generated@@124)))
)))
(assert (forall (($generated@@125 T@U) ) (! (= ($generated@@41 ($generated@@33 $generated@@125)) ($generated@@41 $generated@@125))
 :pattern ( ($generated@@41 ($generated@@33 $generated@@125)))
)))
(assert (= ($generated@@126 $generated@@49) $generated@@0))
(assert (= ($generated@@127 $generated@@49) $generated@@1))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@128 T@U) ) (!  (=> (or $generated@@34 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 $generated@@128)))) ($generated@@20 ($generated@@24 $generated@@128 ($generated@@21 ($generated@@36 $generated@@128))))) (= ($generated@@32 ($generated@@33 $generated@@128)) ($generated@@19 $generated@@128 ($generated@@24 $generated@@128 ($generated@@21 ($generated@@36 $generated@@128)))))))
 :pattern ( ($generated@@32 ($generated@@33 $generated@@128)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@129 T@U) ) (!  (=> (or $generated@@39 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 $generated@@129)))) ($generated@@20 ($generated@@24 $generated@@129 ($generated@@21 ($generated@@36 $generated@@129))))) (= ($generated@@38 ($generated@@33 $generated@@129)) ($generated@@19 $generated@@129 ($generated@@24 $generated@@129 ($generated@@21 ($generated@@36 $generated@@129)))))))
 :pattern ( ($generated@@38 ($generated@@33 $generated@@129)))
))))
(assert  (=> (<= 0 $generated@@18) (forall (($generated@@130 T@U) ) (!  (=> (or $generated@@42 (< 0 $generated@@18)) (and (and (and $generated@@35 ($generated@@25 ($generated@@21 ($generated@@36 $generated@@130)))) ($generated@@20 ($generated@@24 $generated@@130 ($generated@@21 ($generated@@36 $generated@@130))))) (= ($generated@@41 ($generated@@33 $generated@@130)) ($generated@@19 $generated@@130 ($generated@@24 $generated@@130 ($generated@@21 ($generated@@36 $generated@@130)))))))
 :pattern ( ($generated@@41 ($generated@@33 $generated@@130)))
))))
(assert (forall (($generated@@131 Int) ) (! (= ($generated@@45 $generated@@4 ($generated@@8 ($generated@@21 $generated@@131))) ($generated@@29 $generated@@64 ($generated@@45 $generated@@4 ($generated@@8 $generated@@131))))
 :pattern ( ($generated@@45 $generated@@4 ($generated@@8 ($generated@@21 $generated@@131))))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@T) ) (! (= ($generated@@45 $generated@@133 ($generated@@29 $generated@@133 $generated@@132)) ($generated@@29 $generated@@64 ($generated@@45 $generated@@133 $generated@@132)))
 :pattern ( ($generated@@45 $generated@@133 ($generated@@29 $generated@@133 $generated@@132)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@134 () T@U)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@138 (T@U) Bool)
(declare-fun $generated@@139 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@140  (and (=> (= (ControlFlow 0 3) (- 0 9)) (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7)))) (=> (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (< ($generated@@21 6) ($generated@@21 7))) (=> (< ($generated@@21 6) ($generated@@21 7)) (=> $generated@@34 (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7)))) (=> (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (< ($generated@@21 6) ($generated@@21 7))) (=> (< ($generated@@21 6) ($generated@@21 7)) (=> $generated@@39 (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7)))) (=> (or (<= 0 ($generated@@21 7)) (= ($generated@@21 6) ($generated@@21 7))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< ($generated@@21 6) ($generated@@21 7))) (=> (< ($generated@@21 6) ($generated@@21 7)) (=> (and $generated@@42 (= (ControlFlow 0 3) (- 0 2))) ($generated@@48 $generated@@4 ($generated@@8 ($generated@@21 (+ (+ ($generated@@32 ($generated@@33 $generated@@134)) ($generated@@38 ($generated@@33 $generated@@134))) ($generated@@41 ($generated@@33 $generated@@134))))) $generated@@49))))))))))))))))))
(let (($generated@@141 true))
(let (($generated@@142  (=> (= $generated@@135 ($generated@@62 $generated@@136 $generated@@137 $generated false)) (and (=> (= (ControlFlow 0 10) 1) $generated@@141) (=> (= (ControlFlow 0 10) 3) $generated@@140)))))
(let (($generated@@143  (=> (and (and ($generated@@138 $generated@@137) ($generated@@139 $generated@@137)) (and (= 0 $generated@@18) (= (ControlFlow 0 11) 10))) $generated@@142)))
$generated@@143)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)