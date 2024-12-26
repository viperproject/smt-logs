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
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@24 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@35 (T@U T@U) Bool)
(declare-fun $generated@@44 () Int)
(declare-fun $generated@@45 (Int T@U) Bool)
(declare-fun $generated@@46 (Int T@U) Bool)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@58 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@T T@T) T@T)
(declare-fun $generated@@61 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@62 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@63 (T@T) T@T)
(declare-fun $generated@@64 (T@T) T@T)
(declare-fun $generated@@113 (T@U) Bool)
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
(assert (= ($generated@@21 $generated) $generated@@1))
(assert (= ($generated@@21 $generated@@0) $generated@@2))
(assert (forall (($generated@@23 Int) ) (! (= ($generated@@22 $generated@@23) $generated@@23)
 :pattern ( ($generated@@22 $generated@@23))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@T) ) (! (= ($generated@@24 $generated@@26 $generated@@25) $generated@@25)
 :pattern ( ($generated@@24 $generated@@26 $generated@@25))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@T) ) (! (= ($generated@@28 $generated@@30 ($generated@@27 $generated@@30 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@27 $generated@@30 $generated@@29))
)))
(assert (= ($generated@@5 $generated@@32) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@36 ($generated@@33 $generated@@37)) (forall (($generated@@38 T@U) ) (!  (=> ($generated@@34 $generated@@36 $generated@@38) ($generated@@35 $generated@@38 $generated@@37))
 :pattern ( ($generated@@34 $generated@@36 $generated@@38))
)))
 :pattern ( ($generated@@31 $generated@@32 $generated@@36 ($generated@@33 $generated@@37)))
)))
(assert (forall (($generated@@39 T@U) ) (!  (=> ($generated@@35 $generated@@39 $generated@@0) (and (= ($generated@@28 $generated@@7 ($generated@@27 $generated@@7 $generated@@39)) $generated@@39) ($generated@@31 $generated@@7 ($generated@@27 $generated@@7 $generated@@39) $generated@@0)))
 :pattern ( ($generated@@35 $generated@@39 $generated@@0))
)))
(assert (forall (($generated@@40 T@U) ) (!  (=> ($generated@@35 $generated@@40 $generated) (and (= ($generated@@28 $generated@@6 ($generated@@27 $generated@@6 $generated@@40)) $generated@@40) ($generated@@31 $generated@@6 ($generated@@27 $generated@@6 $generated@@40) $generated)))
 :pattern ( ($generated@@35 $generated@@40 $generated))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@35 ($generated@@28 $generated@@43 $generated@@41) $generated@@42) ($generated@@31 $generated@@43 $generated@@41 $generated@@42))
 :pattern ( ($generated@@35 ($generated@@28 $generated@@43 $generated@@41) $generated@@42))
)))
(assert  (=> (<= 0 $generated@@44) (forall (($generated@@47 Int) ($generated@@48 T@U) ) (!  (=> (or ($generated@@46 ($generated@@22 $generated@@47) ($generated@@24 $generated@@32 $generated@@48)) (and (< 0 $generated@@44) ($generated@@31 $generated@@32 $generated@@48 ($generated@@33 $generated@@0)))) (= ($generated@@45 ($generated@@22 $generated@@47) ($generated@@24 $generated@@32 $generated@@48))  (not ($generated@@34 ($generated@@24 $generated@@32 $generated@@48) ($generated@@28 $generated@@7 ($generated@@11 ($generated@@22 $generated@@47)))))))
 :weight 3
 :pattern ( ($generated@@45 ($generated@@22 $generated@@47) ($generated@@24 $generated@@32 $generated@@48)))
))))
(assert (forall (($generated@@50 T@U) ) (! (= ($generated@@49 ($generated@@33 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@33 $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@21 ($generated@@33 $generated@@51)) $generated@@3)
 :pattern ( ($generated@@33 $generated@@51))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@27 $generated@@53 ($generated@@28 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@28 $generated@@53 $generated@@52))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (! (= ($generated@@54 $generated@@65 $generated@@66 $generated@@67 ($generated@@61 $generated@@65 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@71 $generated@@68) $generated@@70 $generated@@71) $generated@@68)
 :weight 0
)) (and (forall (($generated@@72 T@T) ($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (!  (or (= $generated@@77 $generated@@79) (= ($generated@@54 $generated@@72 $generated@@73 $generated@@74 ($generated@@61 $generated@@72 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@78 $generated@@75) $generated@@79 $generated@@80) ($generated@@54 $generated@@72 $generated@@73 $generated@@74 $generated@@76 $generated@@79 $generated@@80)))
 :weight 0
)) (forall (($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (or (= $generated@@87 $generated@@89) (= ($generated@@54 $generated@@81 $generated@@82 $generated@@83 ($generated@@61 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@87 $generated@@84) $generated@@88 $generated@@89) ($generated@@54 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@88 $generated@@89)))
 :weight 0
)))) (= ($generated@@5 $generated@@55) 4)) (= ($generated@@5 $generated@@56) 5)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@58 $generated@@90 $generated@@91 ($generated@@62 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@92) $generated@@94) $generated@@92)
 :weight 0
))) (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (= $generated@@99 $generated@@100) (= ($generated@@58 $generated@@95 $generated@@96 ($generated@@62 $generated@@95 $generated@@96 $generated@@98 $generated@@99 $generated@@97) $generated@@100) ($generated@@58 $generated@@95 $generated@@96 $generated@@98 $generated@@100)))
 :weight 0
))) (= ($generated@@5 $generated@@59) 6)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ) (= ($generated@@5 ($generated@@60 $generated@@101 $generated@@102)) 7))) (forall (($generated@@103 T@T) ($generated@@104 T@T) ) (! (= ($generated@@63 ($generated@@60 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@60 $generated@@103 $generated@@104))
))) (forall (($generated@@105 T@T) ($generated@@106 T@T) ) (! (= ($generated@@64 ($generated@@60 $generated@@105 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@60 $generated@@105 $generated@@106))
))))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 Bool) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@10 ($generated@@54 $generated@@55 $generated@@56 $generated@@6 ($generated@@57 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))  (=> (and (or (not (= $generated@@111 $generated@@107)) (not true)) ($generated@@10 ($generated@@27 $generated@@6 ($generated@@58 $generated@@56 $generated@@59 ($generated@@58 $generated@@55 ($generated@@60 $generated@@56 $generated@@59) $generated@@108 $generated@@111) $generated@@109)))) $generated@@110))
 :pattern ( ($generated@@54 $generated@@55 $generated@@56 $generated@@6 ($generated@@57 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))
)))
(assert  (=> (<= 0 $generated@@44) (forall (($generated@@114 Int) ($generated@@115 T@U) ) (!  (=> (or ($generated@@46 $generated@@114 $generated@@115) (and (< 0 $generated@@44) ($generated@@31 $generated@@32 $generated@@115 ($generated@@33 $generated@@0)))) (forall (($generated@@116 T@U) ) (! true
 :pattern ( ($generated@@113 $generated@@116))
)))
 :pattern ( ($generated@@45 $generated@@114 $generated@@115))
))))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> ($generated@@35 $generated@@117 ($generated@@33 $generated@@118)) (and (= ($generated@@28 $generated@@32 ($generated@@27 $generated@@32 $generated@@117)) $generated@@117) ($generated@@31 $generated@@32 ($generated@@27 $generated@@32 $generated@@117) ($generated@@33 $generated@@118))))
 :pattern ( ($generated@@35 $generated@@117 ($generated@@33 $generated@@118)))
)))
(assert (forall (($generated@@119 Int) ) (! (= ($generated@@28 $generated@@7 ($generated@@11 ($generated@@22 $generated@@119))) ($generated@@24 $generated@@59 ($generated@@28 $generated@@7 ($generated@@11 $generated@@119))))
 :pattern ( ($generated@@28 $generated@@7 ($generated@@11 ($generated@@22 $generated@@119))))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@28 $generated@@121 ($generated@@24 $generated@@121 $generated@@120)) ($generated@@24 $generated@@59 ($generated@@28 $generated@@121 $generated@@120)))
 :pattern ( ($generated@@28 $generated@@121 ($generated@@24 $generated@@121 $generated@@120)))
)))
(assert  (=> (<= 0 $generated@@44) (forall (($generated@@122 Int) ($generated@@123 T@U) ) (!  (=> (or ($generated@@46 $generated@@122 $generated@@123) (and (< 0 $generated@@44) ($generated@@31 $generated@@32 $generated@@123 ($generated@@33 $generated@@0)))) (= ($generated@@45 $generated@@122 $generated@@123)  (not ($generated@@34 $generated@@123 ($generated@@28 $generated@@7 ($generated@@11 $generated@@122))))))
 :pattern ( ($generated@@45 $generated@@122 $generated@@123))
))))
(assert (forall (($generated@@124 T@U) ) (! ($generated@@31 $generated@@7 $generated@@124 $generated@@0)
 :pattern ( ($generated@@31 $generated@@7 $generated@@124 $generated@@0))
)))
(assert (forall (($generated@@125 T@U) ) (! ($generated@@31 $generated@@6 $generated@@125 $generated)
 :pattern ( ($generated@@31 $generated@@6 $generated@@125 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@126 () Int)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 () T@U)
(declare-fun $generated@@129 () T@U)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 (T@U) Bool)
(declare-fun $generated@@132 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@133  (=> (= (ControlFlow 0 3) (- 0 2)) (forall (($generated@@134 T@U) ) (! true
 :pattern ( ($generated@@113 $generated@@134))
)))))
(let (($generated@@135  (=> (= ($generated@@45 $generated@@126 $generated@@127)  (not ($generated@@34 $generated@@127 ($generated@@28 $generated@@7 ($generated@@11 $generated@@126))))) (=> (and ($generated@@31 $generated@@6 ($generated@@9 ($generated@@45 $generated@@126 $generated@@127)) $generated) (= (ControlFlow 0 4) 3)) $generated@@133))))
(let (($generated@@136 true))
(let (($generated@@137  (=> (= $generated@@128 ($generated@@57 $generated@@129 $generated@@130 $generated@@4 false)) (and (=> (= (ControlFlow 0 5) 1) $generated@@136) (=> (= (ControlFlow 0 5) 4) $generated@@135)))))
(let (($generated@@138  (=> (and (and (and ($generated@@131 $generated@@130) ($generated@@132 $generated@@130)) ($generated@@31 $generated@@32 $generated@@127 ($generated@@33 $generated@@0))) (and (= 0 $generated@@44) (= (ControlFlow 0 6) 5))) $generated@@137)))
$generated@@138))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)