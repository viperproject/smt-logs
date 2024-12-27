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
(declare-fun $generated (T@T T@U) T@U)
(declare-fun $generated@@0 (T@T T@U) T@U)
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
(declare-fun $generated@@21 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@22 () T@T)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@25 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@T T@T) T@T)
(declare-fun $generated@@28 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@29 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@30 (T@T) T@T)
(declare-fun $generated@@31 (T@T) T@T)
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
(assert (forall (($generated@@17 T@U) ($generated@@18 T@T) ) (! (= ($generated@@0 $generated@@18 ($generated $generated@@18 $generated@@17)) $generated@@17)
 :pattern ( ($generated $generated@@18 $generated@@17))
)))
(assert (forall (($generated@@19 T@U) ($generated@@20 T@T) ) (! (= ($generated $generated@@20 ($generated@@0 $generated@@20 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@0 $generated@@20 $generated@@19))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@32 T@T) ($generated@@33 T@T) ($generated@@34 T@T) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@21 $generated@@32 $generated@@33 $generated@@34 ($generated@@28 $generated@@32 $generated@@33 $generated@@34 $generated@@36 $generated@@37 $generated@@38 $generated@@35) $generated@@37 $generated@@38) $generated@@35)
 :weight 0
)) (and (forall (($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (or (= $generated@@44 $generated@@46) (= ($generated@@21 $generated@@39 $generated@@40 $generated@@41 ($generated@@28 $generated@@39 $generated@@40 $generated@@41 $generated@@43 $generated@@44 $generated@@45 $generated@@42) $generated@@46 $generated@@47) ($generated@@21 $generated@@39 $generated@@40 $generated@@41 $generated@@43 $generated@@46 $generated@@47)))
 :weight 0
)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (or (= $generated@@54 $generated@@56) (= ($generated@@21 $generated@@48 $generated@@49 $generated@@50 ($generated@@28 $generated@@48 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@54 $generated@@51) $generated@@55 $generated@@56) ($generated@@21 $generated@@48 $generated@@49 $generated@@50 $generated@@52 $generated@@55 $generated@@56)))
 :weight 0
)))) (= ($generated@@1 $generated@@22) 3)) (= ($generated@@1 $generated@@23) 4)) (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@25 $generated@@57 $generated@@58 ($generated@@29 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@25 $generated@@62 $generated@@63 ($generated@@29 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@25 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@1 $generated@@26) 5)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (= ($generated@@1 ($generated@@27 $generated@@68 $generated@@69)) 6))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@30 ($generated@@27 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@27 $generated@@70 $generated@@71))
))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@31 ($generated@@27 $generated@@72 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@27 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 Bool) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@6 ($generated@@21 $generated@@22 $generated@@23 $generated@@2 ($generated@@24 $generated@@74 $generated@@75 $generated@@76 $generated@@77) $generated@@78 $generated@@79))  (=> (and (or (not (= $generated@@78 $generated@@74)) (not true)) ($generated@@6 ($generated $generated@@2 ($generated@@25 $generated@@23 $generated@@26 ($generated@@25 $generated@@22 ($generated@@27 $generated@@23 $generated@@26) $generated@@75 $generated@@78) $generated@@76)))) $generated@@77))
 :pattern ( ($generated@@21 $generated@@22 $generated@@23 $generated@@2 ($generated@@24 $generated@@74 $generated@@75 $generated@@76 $generated@@77) $generated@@78 $generated@@79))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@80 () Bool)
(declare-fun $generated@@81 () Bool)
(declare-fun $generated@@82 () Bool)
(declare-fun $generated@@83 () Bool)
(declare-fun $generated@@84 () Bool)
(declare-fun $generated@@85 () Bool)
(declare-fun $generated@@86 () Bool)
(declare-fun $generated@@87 () Bool)
(declare-fun $generated@@88 () Bool)
(declare-fun $generated@@89 () Bool)
(declare-fun $generated@@90 () Bool)
(declare-fun $generated@@91 () T@U)
(declare-fun $generated@@92 () T@U)
(declare-fun $generated@@93 () T@U)
(declare-fun $generated@@94 () T@U)
(declare-fun $generated@@95 (T@U) Bool)
(declare-fun $generated@@96 (T@U) Bool)
(declare-fun $generated@@97 () Int)
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
 (=> (= (ControlFlow 0 0) 45) (let (($generated@@98  (=> (= $generated@@80  (=> (=> $generated@@81 $generated@@82) $generated@@83)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= $generated@@84 $generated@@85)) (=> (= $generated@@84 $generated@@85) (=> (= (ControlFlow 0 20) (- 0 19)) (= $generated@@84 $generated@@80)))))))
(let (($generated@@99  (=> (and (not (=> $generated@@81 $generated@@82)) (= (ControlFlow 0 23) 20)) $generated@@98)))
(let (($generated@@100  (=> (and (=> $generated@@81 $generated@@82) (= (ControlFlow 0 22) 20)) $generated@@98)))
(let (($generated@@101  (=> (not $generated@@81) (and (=> (= (ControlFlow 0 25) 22) $generated@@100) (=> (= (ControlFlow 0 25) 23) $generated@@99)))))
(let (($generated@@102  (=> $generated@@81 (and (=> (= (ControlFlow 0 24) 22) $generated@@100) (=> (= (ControlFlow 0 24) 23) $generated@@99)))))
(let (($generated@@103  (=> (= $generated@@85  (=> $generated@@81 (=> $generated@@82 $generated@@83))) (and (=> (= (ControlFlow 0 26) 24) $generated@@102) (=> (= (ControlFlow 0 26) 25) $generated@@101)))))
(let (($generated@@104  (=> (and (not $generated@@82) (= (ControlFlow 0 29) 26)) $generated@@103)))
(let (($generated@@105  (=> (and $generated@@82 (= (ControlFlow 0 28) 26)) $generated@@103)))
(let (($generated@@106  (=> $generated@@81 (and (=> (= (ControlFlow 0 30) 28) $generated@@105) (=> (= (ControlFlow 0 30) 29) $generated@@104)))))
(let (($generated@@107  (=> (and (not $generated@@81) (= (ControlFlow 0 27) 26)) $generated@@103)))
(let (($generated@@108  (=> (= $generated@@84  (=> $generated@@81 (=> $generated@@82 $generated@@83))) (and (=> (= (ControlFlow 0 31) 30) $generated@@106) (=> (= (ControlFlow 0 31) 27) $generated@@107)))))
(let (($generated@@109  (=> (and (not $generated@@82) (= (ControlFlow 0 34) 31)) $generated@@108)))
(let (($generated@@110  (=> (and $generated@@82 (= (ControlFlow 0 33) 31)) $generated@@108)))
(let (($generated@@111  (=> $generated@@81 (and (=> (= (ControlFlow 0 35) 33) $generated@@110) (=> (= (ControlFlow 0 35) 34) $generated@@109)))))
(let (($generated@@112  (=> (and (not $generated@@81) (= (ControlFlow 0 32) 31)) $generated@@108)))
(let (($generated@@113  (and (=> (= (ControlFlow 0 36) 35) $generated@@111) (=> (= (ControlFlow 0 36) 32) $generated@@112))))
(let (($generated@@114  (=> (= $generated@@86  (=> (=> $generated@@81 $generated@@82) $generated@@83)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= $generated@@87 $generated@@88)) (=> (= $generated@@87 $generated@@88) (=> (= (ControlFlow 0 2) (- 0 1)) (= $generated@@87 $generated@@86)))))))
(let (($generated@@115  (=> (and (not (=> $generated@@81 $generated@@82)) (= (ControlFlow 0 5) 2)) $generated@@114)))
(let (($generated@@116  (=> (and (=> $generated@@81 $generated@@82) (= (ControlFlow 0 4) 2)) $generated@@114)))
(let (($generated@@117  (=> (not $generated@@81) (and (=> (= (ControlFlow 0 7) 4) $generated@@116) (=> (= (ControlFlow 0 7) 5) $generated@@115)))))
(let (($generated@@118  (=> $generated@@81 (and (=> (= (ControlFlow 0 6) 4) $generated@@116) (=> (= (ControlFlow 0 6) 5) $generated@@115)))))
(let (($generated@@119  (=> (= $generated@@88  (=> $generated@@81 (=> $generated@@82 $generated@@83))) (and (=> (= (ControlFlow 0 8) 6) $generated@@118) (=> (= (ControlFlow 0 8) 7) $generated@@117)))))
(let (($generated@@120  (=> (and (not $generated@@82) (= (ControlFlow 0 11) 8)) $generated@@119)))
(let (($generated@@121  (=> (and $generated@@82 (= (ControlFlow 0 10) 8)) $generated@@119)))
(let (($generated@@122  (=> $generated@@81 (and (=> (= (ControlFlow 0 12) 10) $generated@@121) (=> (= (ControlFlow 0 12) 11) $generated@@120)))))
(let (($generated@@123  (=> (and (not $generated@@81) (= (ControlFlow 0 9) 8)) $generated@@119)))
(let (($generated@@124  (=> (= $generated@@87  (=> $generated@@81 (=> $generated@@82 $generated@@83))) (and (=> (= (ControlFlow 0 13) 12) $generated@@122) (=> (= (ControlFlow 0 13) 9) $generated@@123)))))
(let (($generated@@125  (=> (and (not $generated@@82) (= (ControlFlow 0 16) 13)) $generated@@124)))
(let (($generated@@126  (=> (and $generated@@82 (= (ControlFlow 0 15) 13)) $generated@@124)))
(let (($generated@@127  (=> $generated@@81 (and (=> (= (ControlFlow 0 17) 15) $generated@@126) (=> (= (ControlFlow 0 17) 16) $generated@@125)))))
(let (($generated@@128  (=> (and (not $generated@@81) (= (ControlFlow 0 14) 13)) $generated@@124)))
(let (($generated@@129  (and (=> (= (ControlFlow 0 18) 17) $generated@@127) (=> (= (ControlFlow 0 18) 14) $generated@@128))))
(let (($generated@@130  (=> (= $generated@@89  (=> $generated@@81 $generated@@82)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= $generated@@90 $generated@@89)) (=> (= $generated@@90 $generated@@89) (and (=> (= (ControlFlow 0 37) 36) $generated@@113) (=> (= (ControlFlow 0 37) 18) $generated@@129)))))))
(let (($generated@@131  (=> (and (not $generated@@81) (= (ControlFlow 0 40) 37)) $generated@@130)))
(let (($generated@@132  (=> (and $generated@@81 (= (ControlFlow 0 39) 37)) $generated@@130)))
(let (($generated@@133  (=> (= $generated@@90  (=> $generated@@81 $generated@@82)) (and (=> (= (ControlFlow 0 41) 39) $generated@@132) (=> (= (ControlFlow 0 41) 40) $generated@@131)))))
(let (($generated@@134  (=> (and (not $generated@@81) (= (ControlFlow 0 43) 41)) $generated@@133)))
(let (($generated@@135  (=> (and $generated@@81 (= (ControlFlow 0 42) 41)) $generated@@133)))
(let (($generated@@136  (=> (= $generated@@91 ($generated@@24 $generated@@92 $generated@@93 $generated@@94 false)) (and (=> (= (ControlFlow 0 44) 42) $generated@@135) (=> (= (ControlFlow 0 44) 43) $generated@@134)))))
(let (($generated@@137  (=> (and (and ($generated@@95 $generated@@93) ($generated@@96 $generated@@93)) (and (= 0 $generated@@97) (= (ControlFlow 0 45) 44))) $generated@@136)))
$generated@@137)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 19))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)