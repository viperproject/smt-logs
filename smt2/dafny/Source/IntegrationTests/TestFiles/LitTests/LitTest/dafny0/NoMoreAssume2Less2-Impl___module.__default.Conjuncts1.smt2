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
(declare-fun $generated@@1 () Bool)
(declare-fun $generated@@2 (T@U) Bool)
(declare-fun $generated@@3 (T@T T@U) T@U)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 (Bool) T@U)
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 () Bool)
(declare-fun $generated@@20 () Bool)
(declare-fun $generated@@21 (T@U T@U) Bool)
(declare-fun $generated@@22 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 (T@T T@T) T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@30 (T@T) T@T)
(declare-fun $generated@@31 (T@T) T@T)
(declare-fun $generated@@52 (Int) Int)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@65 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@66 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@4) 0) (= ($generated@@6 $generated@@7) 1)) (= ($generated@@6 $generated@@8) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@2 ($generated@@5 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@5 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@5 ($generated@@2 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@2 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert  (=> (<= 0 $generated) (=> (or $generated@@0 (< 0 $generated)) (= $generated@@1 ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))))
(assert  (=> (<= 0 $generated) (=> (or $generated@@0 (< 0 $generated)) (= $generated@@1 ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))))
(assert  (=> (<= 0 $generated) (=> (or $generated@@19 (< 0 $generated)) (= $generated@@20 ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))))
(assert  (=> (<= 0 $generated) (=> (or $generated@@19 (< 0 $generated)) (= $generated@@20 ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))))
(assert  (and (and (and (and (and (and (and (forall (($generated@@32 T@T) ($generated@@33 T@T) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@22 $generated@@32 $generated@@33 ($generated@@29 $generated@@32 $generated@@33 $generated@@35 $generated@@36 $generated@@34) $generated@@36) $generated@@34)
 :weight 0
)) (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (!  (or (= $generated@@41 $generated@@42) (= ($generated@@22 $generated@@37 $generated@@38 ($generated@@29 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@42) ($generated@@22 $generated@@37 $generated@@38 $generated@@40 $generated@@42)))
 :weight 0
))) (= ($generated@@6 $generated@@23) 3)) (= ($generated@@6 $generated@@24) 4)) (= ($generated@@6 $generated@@25) 5)) (forall (($generated@@43 T@T) ($generated@@44 T@T) ) (= ($generated@@6 ($generated@@26 $generated@@43 $generated@@44)) 6))) (forall (($generated@@45 T@T) ($generated@@46 T@T) ) (! (= ($generated@@30 ($generated@@26 $generated@@45 $generated@@46)) $generated@@45)
 :pattern ( ($generated@@26 $generated@@45 $generated@@46))
))) (forall (($generated@@47 T@T) ($generated@@48 T@T) ) (! (= ($generated@@31 ($generated@@26 $generated@@47 $generated@@48)) $generated@@48)
 :pattern ( ($generated@@26 $generated@@47 $generated@@48))
))))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> ($generated@@21 $generated@@49 $generated@@50) (forall (($generated@@51 T@U) ) (!  (=> ($generated@@2 ($generated@@28 $generated@@4 ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@49 $generated@@51) $generated@@27))) ($generated@@2 ($generated@@28 $generated@@4 ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@50 $generated@@51) $generated@@27))))
 :pattern ( ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@50 $generated@@51) $generated@@27))
)))
 :pattern ( ($generated@@21 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@52 $generated@@53) $generated@@53)
 :pattern ( ($generated@@52 $generated@@53))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@3 $generated@@55 $generated@@54) $generated@@54)
 :pattern ( ($generated@@3 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 ($generated@@28 $generated@@58 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@28 $generated@@58 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> (or (not (= $generated@@59 $generated@@61)) (not true)) (=> (and ($generated@@21 $generated@@59 $generated@@60) ($generated@@21 $generated@@60 $generated@@61)) ($generated@@21 $generated@@59 $generated@@61)))
 :pattern ( ($generated@@21 $generated@@59 $generated@@60) ($generated@@21 $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@28 $generated@@63 ($generated@@56 $generated@@63 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@56 $generated@@63 $generated@@62))
)))
(assert  (and (forall (($generated@@67 T@T) ($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@64 $generated@@67 $generated@@68 $generated@@69 ($generated@@66 $generated@@67 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@73 $generated@@70) $generated@@72 $generated@@73) $generated@@70)
 :weight 0
)) (and (forall (($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (or (= $generated@@79 $generated@@81) (= ($generated@@64 $generated@@74 $generated@@75 $generated@@76 ($generated@@66 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@80 $generated@@77) $generated@@81 $generated@@82) ($generated@@64 $generated@@74 $generated@@75 $generated@@76 $generated@@78 $generated@@81 $generated@@82)))
 :weight 0
)) (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (or (= $generated@@89 $generated@@91) (= ($generated@@64 $generated@@83 $generated@@84 $generated@@85 ($generated@@66 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88 $generated@@89 $generated@@86) $generated@@90 $generated@@91) ($generated@@64 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@90 $generated@@91)))
 :weight 0
)))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 Bool) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@2 ($generated@@64 $generated@@25 $generated@@23 $generated@@4 ($generated@@65 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))  (=> (and (or (not (= $generated@@96 $generated@@92)) (not true)) ($generated@@2 ($generated@@28 $generated@@4 ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@93 $generated@@96) $generated@@94)))) $generated@@95))
 :pattern ( ($generated@@64 $generated@@25 $generated@@23 $generated@@4 ($generated@@65 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 Int) ) (! (= ($generated@@56 $generated@@7 ($generated@@9 ($generated@@52 $generated@@98))) ($generated@@3 $generated@@24 ($generated@@56 $generated@@7 ($generated@@9 $generated@@98))))
 :pattern ( ($generated@@56 $generated@@7 ($generated@@9 ($generated@@52 $generated@@98))))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@56 $generated@@100 ($generated@@3 $generated@@100 $generated@@99)) ($generated@@3 $generated@@24 ($generated@@56 $generated@@100 $generated@@99)))
 :pattern ( ($generated@@56 $generated@@100 ($generated@@3 $generated@@100 $generated@@99)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@101 () Int)
(declare-fun $generated@@102 () Int)
(declare-fun $generated@@103 () Int)
(declare-fun $generated@@104 () Int)
(declare-fun $generated@@105 () Bool)
(declare-fun $generated@@106 () T@U)
(declare-fun $generated@@107 () T@U)
(declare-fun $generated@@108 () T@U)
(declare-fun $generated@@109 () Int)
(declare-fun $generated@@110 () Int)
(declare-fun $generated@@111 (T@U) Bool)
(declare-fun $generated@@112 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 20) (let (($generated@@113  (=> (and $generated@@0 (=> ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 $generated@@1))) (=> ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 false))) $generated@@19))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> $generated@@0 (or ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 $generated@@1))) ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 false)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> $generated@@19 (or ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 $generated@@20))) ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 true)))))) (=> (and ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5  (and (and $generated@@1 false) $generated@@20)))) (= $generated@@101 (+ $generated@@102 1))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (<= 0 $generated@@103) (= (- $generated@@104 $generated@@101) $generated@@103))) (=> (or (<= 0 $generated@@103) (= (- $generated@@104 $generated@@101) $generated@@103)) (=> (= (ControlFlow 0 6) (- 0 5)) (< (- $generated@@104 $generated@@101) $generated@@103)))))))))))
(let (($generated@@114  (=> (and (not ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5  (and $generated@@1 false))))) (= (ControlFlow 0 12) 6)) $generated@@113)))
(let (($generated@@115  (=> ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5  (and $generated@@1 false)))) (=> (and $generated@@19 (= (ControlFlow 0 11) 6)) $generated@@113))))
(let (($generated@@116  (=> (not ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 $generated@@1)))) (and (=> (= (ControlFlow 0 14) 11) $generated@@115) (=> (= (ControlFlow 0 14) 12) $generated@@114)))))
(let (($generated@@117  (=> ($generated@@2 ($generated@@3 $generated@@4 ($generated@@5 $generated@@1))) (and (=> (= (ControlFlow 0 13) 11) $generated@@115) (=> (= (ControlFlow 0 13) 12) $generated@@114)))))
(let (($generated@@118  (=> (< $generated@@102 $generated@@104) (=> (and (= $generated@@103 (- $generated@@104 $generated@@102)) $generated@@0) (and (=> (= (ControlFlow 0 15) 13) $generated@@117) (=> (= (ControlFlow 0 15) 14) $generated@@116))))))
(let (($generated@@119  (=> (and (<= $generated@@104 $generated@@102) (= (ControlFlow 0 4) (- 0 3))) (= $generated@@104 ($generated@@52 0)))))
(let (($generated@@120  (=> $generated@@105 (and (=> (= (ControlFlow 0 16) 4) $generated@@119) (=> (= (ControlFlow 0 16) 15) $generated@@118)))))
(let (($generated@@121 true))
(let (($generated@@122  (and (=> (= (ControlFlow 0 17) 2) $generated@@121) (=> (= (ControlFlow 0 17) 16) $generated@@120))))
(let (($generated@@123 true))
(let (($generated@@124  (=> (and (not false) (<= 0 $generated@@102)) (=> (and (and (forall (($generated@@125 T@U) ) (!  (=> (and (or (not (= $generated@@125 $generated@@107)) (not true)) ($generated@@2 ($generated@@28 $generated@@4 ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@125) $generated@@27)))) (= ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@125) ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@125)))
 :pattern ( ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@125))
)) ($generated@@21 $generated@@106 $generated@@106)) (and (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> (and (or (not (= $generated@@126 $generated@@107)) (not true)) ($generated@@2 ($generated@@28 $generated@@4 ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@126) $generated@@27)))) (or (= ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@126) $generated@@127) ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@126) $generated@@127)) ($generated@@2 ($generated@@64 $generated@@25 $generated@@23 $generated@@4 $generated@@108 $generated@@126 $generated@@127))))
 :pattern ( ($generated@@22 $generated@@23 $generated@@24 ($generated@@22 $generated@@25 ($generated@@26 $generated@@23 $generated@@24) $generated@@106 $generated@@126) $generated@@127))
)) (<= (- $generated@@104 $generated@@102) $generated@@109))) (and (=> (= (ControlFlow 0 18) 1) $generated@@123) (=> (= (ControlFlow 0 18) 17) $generated@@122))))))
(let (($generated@@128  (=> (and (and (= $generated@@108 ($generated@@65 $generated@@107 $generated@@106 $generated@@27 false)) (= $generated@@110 ($generated@@52 0))) (and (= $generated@@109 (- $generated@@104 $generated@@110)) (= (ControlFlow 0 19) 18))) $generated@@124)))
(let (($generated@@129  (=> (and (and (and ($generated@@111 $generated@@106) ($generated@@112 $generated@@106)) (<= ($generated@@52 0) $generated@@104)) (and (= 1 $generated) (= (ControlFlow 0 20) 19))) $generated@@128)))
$generated@@129)))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 9))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)