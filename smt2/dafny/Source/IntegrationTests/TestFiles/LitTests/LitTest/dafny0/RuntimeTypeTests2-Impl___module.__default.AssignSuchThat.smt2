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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@23 (Real) Real)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@32 () Int)
(declare-fun $generated@@33 (Real) Bool)
(declare-fun $generated@@34 (Real) Bool)
(declare-fun $generated@@39 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@43 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@98 (Int Int) Int)
(declare-fun $generated@@105 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@110 (T@T T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (= ($generated@@20 $generated) $generated@@1))
(assert (= ($generated@@20 $generated@@0) $generated@@2))
(assert (forall (($generated@@22 Int) ) (! (= ($generated@@21 $generated@@22) $generated@@22)
 :pattern ( ($generated@@21 $generated@@22))
)))
(assert (forall (($generated@@24 Real) ) (! (= ($generated@@23 $generated@@24) $generated@@24)
 :pattern ( ($generated@@23 $generated@@24))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@T) ) (! (= ($generated@@25 $generated@@27 $generated@@26) $generated@@26)
 :pattern ( ($generated@@25 $generated@@27 $generated@@26))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@T) ) (! (= ($generated@@29 $generated@@31 ($generated@@28 $generated@@31 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@28 $generated@@31 $generated@@30))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@35 Real) ) (!  (=> (or ($generated@@34 $generated@@35) (< 0 $generated@@32)) (= ($generated@@33 $generated@@35) (= $generated@@35 ($generated@@23 44.1985))))
 :pattern ( ($generated@@33 $generated@@35))
))))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@36 Real) ) (!  (=> (or ($generated@@34 ($generated@@23 $generated@@36)) (< 0 $generated@@32)) (= ($generated@@33 ($generated@@23 $generated@@36)) (= ($generated@@23 $generated@@36) ($generated@@23 44.1985))))
 :weight 3
 :pattern ( ($generated@@33 ($generated@@23 $generated@@36)))
))))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@28 $generated@@38 ($generated@@29 $generated@@38 $generated@@37)) $generated@@37)
 :pattern ( ($generated@@29 $generated@@38 $generated@@37))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@39 $generated@@50 $generated@@51 $generated@@52 ($generated@@46 $generated@@50 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@56 $generated@@53) $generated@@55 $generated@@56) $generated@@53)
 :weight 0
)) (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@62 $generated@@64) (= ($generated@@39 $generated@@57 $generated@@58 $generated@@59 ($generated@@46 $generated@@57 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@63 $generated@@60) $generated@@64 $generated@@65) ($generated@@39 $generated@@57 $generated@@58 $generated@@59 $generated@@61 $generated@@64 $generated@@65)))
 :weight 0
)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@T) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (or (= $generated@@72 $generated@@74) (= ($generated@@39 $generated@@66 $generated@@67 $generated@@68 ($generated@@46 $generated@@66 $generated@@67 $generated@@68 $generated@@70 $generated@@71 $generated@@72 $generated@@69) $generated@@73 $generated@@74) ($generated@@39 $generated@@66 $generated@@67 $generated@@68 $generated@@70 $generated@@73 $generated@@74)))
 :weight 0
)))) (= ($generated@@4 $generated@@40) 3)) (= ($generated@@4 $generated@@41) 4)) (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@43 $generated@@75 $generated@@76 ($generated@@47 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@79) $generated@@77)
 :weight 0
))) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@84 $generated@@85) (= ($generated@@43 $generated@@80 $generated@@81 ($generated@@47 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@85) ($generated@@43 $generated@@80 $generated@@81 $generated@@83 $generated@@85)))
 :weight 0
))) (= ($generated@@4 $generated@@44) 5)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (= ($generated@@4 ($generated@@45 $generated@@86 $generated@@87)) 6))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@45 $generated@@88 $generated@@89))
))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@49 ($generated@@45 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@45 $generated@@90 $generated@@91))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 Bool) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@9 ($generated@@39 $generated@@40 $generated@@41 $generated@@5 ($generated@@42 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))  (=> (and (or (not (= $generated@@96 $generated@@92)) (not true)) ($generated@@9 ($generated@@28 $generated@@5 ($generated@@43 $generated@@41 $generated@@44 ($generated@@43 $generated@@40 ($generated@@45 $generated@@41 $generated@@44) $generated@@93 $generated@@96) $generated@@94)))) $generated@@95))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 $generated@@5 ($generated@@42 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@99 Int) ($generated@@100 Int) ) (! (= ($generated@@98 $generated@@99 $generated@@100) (mod $generated@@99 $generated@@100))
 :pattern ( ($generated@@98 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 Int) ) (! (= ($generated@@29 $generated@@6 ($generated@@10 ($generated@@21 $generated@@101))) ($generated@@25 $generated@@44 ($generated@@29 $generated@@6 ($generated@@10 $generated@@101))))
 :pattern ( ($generated@@29 $generated@@6 ($generated@@10 ($generated@@21 $generated@@101))))
)))
(assert (forall (($generated@@102 Real) ) (! (= ($generated@@29 $generated@@7 ($generated@@12 ($generated@@23 $generated@@102))) ($generated@@25 $generated@@44 ($generated@@29 $generated@@7 ($generated@@12 $generated@@102))))
 :pattern ( ($generated@@29 $generated@@7 ($generated@@12 ($generated@@23 $generated@@102))))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@29 $generated@@104 ($generated@@25 $generated@@104 $generated@@103)) ($generated@@25 $generated@@44 ($generated@@29 $generated@@104 $generated@@103)))
 :pattern ( ($generated@@29 $generated@@104 ($generated@@25 $generated@@104 $generated@@103)))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! ($generated@@105 $generated@@6 $generated@@107 $generated $generated@@106)
 :pattern ( ($generated@@105 $generated@@6 $generated@@107 $generated $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! ($generated@@105 $generated@@7 $generated@@109 $generated@@0 $generated@@108)
 :pattern ( ($generated@@105 $generated@@7 $generated@@109 $generated@@0 $generated@@108))
)))
(assert (forall (($generated@@111 T@U) ) (! ($generated@@110 $generated@@6 $generated@@111 $generated)
 :pattern ( ($generated@@110 $generated@@6 $generated@@111 $generated))
)))
(assert (forall (($generated@@112 T@U) ) (! ($generated@@110 $generated@@7 $generated@@112 $generated@@0)
 :pattern ( ($generated@@110 $generated@@7 $generated@@112 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@113 () Real)
(declare-fun $generated@@114 () T@U)
(declare-fun $generated@@115 () Int)
(declare-fun $generated@@116 () Real)
(declare-fun $generated@@117 () Int)
(declare-fun $generated@@118 () T@U)
(declare-fun $generated@@119 () T@U)
(declare-fun $generated@@120 (T@U) Bool)
(declare-fun $generated@@121 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@122 true))
(let (($generated@@123  (=> (and (and ($generated@@105 $generated@@7 ($generated@@12 $generated@@113) $generated@@0 $generated@@114) ($generated@@34 $generated@@113)) (and ($generated@@34 $generated@@113) (= (ControlFlow 0 3) (- 0 2)))) (or (and ($generated@@110 $generated@@7 ($generated@@12 ($generated@@23 0.0)) $generated@@0) ($generated@@9 ($generated@@25 $generated@@5 ($generated@@8 ($generated@@33 ($generated@@23 0.0)))))) (exists (($generated@@124 Real) ) ($generated@@33 $generated@@124))))))
(let (($generated@@125  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (and ($generated@@110 $generated@@6 ($generated@@10 ($generated@@21 0)) $generated) (and (= ($generated@@21 ($generated@@98 0 ($generated@@21 5))) ($generated@@21 0)) (= ($generated@@21 ($generated@@98 0 ($generated@@21 7))) ($generated@@21 0)))) (exists (($generated@@126 Int) )  (and (= ($generated@@98 $generated@@126 ($generated@@21 5)) ($generated@@21 0)) (= ($generated@@98 $generated@@126 ($generated@@21 7)) ($generated@@21 0)))))) (=> (or (and ($generated@@110 $generated@@6 ($generated@@10 ($generated@@21 0)) $generated) (and (= ($generated@@21 ($generated@@98 0 ($generated@@21 5))) ($generated@@21 0)) (= ($generated@@21 ($generated@@98 0 ($generated@@21 7))) ($generated@@21 0)))) (exists (($generated@@127 Int) )  (and (= ($generated@@98 $generated@@127 ($generated@@21 5)) ($generated@@21 0)) (= ($generated@@98 $generated@@127 ($generated@@21 7)) ($generated@@21 0))))) (=> (and (= ($generated@@98 $generated@@115 ($generated@@21 5)) ($generated@@21 0)) (= ($generated@@98 $generated@@115 ($generated@@21 7)) ($generated@@21 0))) (=> (and (and (= $generated@@116 ($generated@@23 44.1985)) ($generated@@105 $generated@@7 ($generated@@12 $generated@@116) $generated@@0 $generated@@114)) (and ($generated@@34 ($generated@@23 44.1985)) ($generated@@34 ($generated@@23 44.1985)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> ($generated@@34 ($generated@@23 44.1985)) (or ($generated@@9 ($generated@@25 $generated@@5 ($generated@@8 ($generated@@33 ($generated@@23 44.1985))))) (= ($generated@@23 44.1985) ($generated@@23 44.1985))))) (=> ($generated@@9 ($generated@@25 $generated@@5 ($generated@@8 ($generated@@33 ($generated@@23 44.1985))))) (and (=> (= (ControlFlow 0 5) 3) $generated@@123) (=> (= (ControlFlow 0 5) 4) $generated@@122))))))))))
(let (($generated@@128  (=> (and (or (not (= ($generated@@98 $generated@@117 ($generated@@21 5)) ($generated@@21 0))) (not true)) (= (ControlFlow 0 10) 5)) $generated@@125)))
(let (($generated@@129  (=> (= ($generated@@98 $generated@@117 ($generated@@21 5)) ($generated@@21 0)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= ($generated@@21 7) 0)) (not true))) (=> (= (ControlFlow 0 8) 5) $generated@@125)))))
(let (($generated@@130  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= ($generated@@21 5) 0)) (not true))) (and (=> (= (ControlFlow 0 11) 8) $generated@@129) (=> (= (ControlFlow 0 11) 10) $generated@@128)))))
(let (($generated@@131 true))
(let (($generated@@132  (=> (= $generated@@118 ($generated@@42 $generated@@119 $generated@@114 $generated@@3 false)) (and (=> (= (ControlFlow 0 13) 11) $generated@@130) (=> (= (ControlFlow 0 13) 1) $generated@@131)))))
(let (($generated@@133  (=> (and (and ($generated@@120 $generated@@114) ($generated@@121 $generated@@114)) (and (= 1 $generated@@32) (= (ControlFlow 0 14) 13))) $generated@@132)))
$generated@@133))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)