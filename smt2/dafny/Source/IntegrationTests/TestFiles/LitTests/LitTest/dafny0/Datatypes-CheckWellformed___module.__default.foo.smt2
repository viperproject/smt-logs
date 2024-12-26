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
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 () Int)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@34 (Int) Int)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@46 (Int T@U) T@U)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@62 (T@U) Int)
(declare-fun $generated@@65 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@69 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@T T@T) T@T)
(declare-fun $generated@@72 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@74 (T@T) T@T)
(declare-fun $generated@@75 (T@T) T@T)
(declare-fun $generated@@124 (T@U) T@U)
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
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (= ($generated@@23 $generated@@24) $generated@@3))
(assert (= ($generated@@6 $generated@@29) 3))
(assert  (=> (<= 1 $generated@@25) (forall (($generated@@33 T@U) ) (!  (=> (or ($generated@@27 $generated@@33) (and (< 1 $generated@@25) ($generated@@28 $generated@@29 $generated@@33 $generated@@30))) (= ($generated@@26 $generated@@33) (ite ($generated@@31 $generated@@33) 0 ($generated@@32 $generated@@33))))
 :pattern ( ($generated@@26 $generated@@33))
))))
(assert ($generated@@28 $generated@@29 $generated@@24 $generated@@30))
(assert (forall (($generated@@35 Int) ) (! (= ($generated@@34 $generated@@35) $generated@@35)
 :pattern ( ($generated@@34 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@36 $generated@@38 $generated@@37) $generated@@37)
 :pattern ( ($generated@@36 $generated@@38 $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ) (! (= ($generated@@31 $generated@@39) (= ($generated@@23 $generated@@39) $generated@@3))
 :pattern ( ($generated@@31 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ) (! (= ($generated@@40 $generated@@41) (= ($generated@@23 $generated@@41) $generated@@4))
 :pattern ( ($generated@@40 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@T) ) (! (= ($generated@@43 $generated@@45 ($generated@@42 $generated@@45 $generated@@44)) $generated@@44)
 :pattern ( ($generated@@42 $generated@@45 $generated@@44))
)))
(assert (forall (($generated@@47 T@U) ) (!  (=> ($generated@@40 $generated@@47) (exists (($generated@@48 Int) ($generated@@49 T@U) ) (= $generated@@47 ($generated@@46 $generated@@48 $generated@@49))))
 :pattern ( ($generated@@40 $generated@@47))
)))
(assert (forall (($generated@@50 T@U) ) (!  (=> ($generated@@31 $generated@@50) (= $generated@@50 $generated@@24))
 :pattern ( ($generated@@31 $generated@@50))
)))
(assert  (=> (<= 1 $generated@@25) (forall (($generated@@51 T@U) ) (!  (=> (or ($generated@@27 ($generated@@36 $generated@@29 $generated@@51)) (and (< 1 $generated@@25) ($generated@@28 $generated@@29 $generated@@51 $generated@@30))) (= ($generated@@26 ($generated@@36 $generated@@29 $generated@@51)) (ite ($generated@@31 ($generated@@36 $generated@@29 $generated@@51)) 0 ($generated@@32 ($generated@@36 $generated@@29 $generated@@51)))))
 :weight 3
 :pattern ( ($generated@@26 ($generated@@36 $generated@@29 $generated@@51)))
))))
(assert (forall (($generated@@52 T@U) ) (!  (=> ($generated@@28 $generated@@29 $generated@@52 $generated@@30) (or ($generated@@31 $generated@@52) ($generated@@40 $generated@@52)))
 :pattern ( ($generated@@40 $generated@@52) ($generated@@28 $generated@@29 $generated@@52 $generated@@30))
 :pattern ( ($generated@@31 $generated@@52) ($generated@@28 $generated@@29 $generated@@52 $generated@@30))
)))
(assert (forall (($generated@@53 Int) ($generated@@54 T@U) ) (! (= ($generated@@23 ($generated@@46 $generated@@53 $generated@@54)) $generated@@4)
 :pattern ( ($generated@@46 $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@55 Int) ($generated@@56 T@U) ) (! (= ($generated@@32 ($generated@@46 $generated@@55 $generated@@56)) $generated@@55)
 :pattern ( ($generated@@46 $generated@@55 $generated@@56))
)))
(assert (forall (($generated@@58 Int) ($generated@@59 T@U) ) (! (= ($generated@@57 ($generated@@46 $generated@@58 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@46 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@42 $generated@@61 ($generated@@43 $generated@@61 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@43 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@63 Int) ($generated@@64 T@U) ) (! (< ($generated@@62 $generated@@64) ($generated@@62 ($generated@@46 $generated@@63 $generated@@64)))
 :pattern ( ($generated@@46 $generated@@63 $generated@@64))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@76 T@T) ($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@65 $generated@@76 $generated@@77 $generated@@78 ($generated@@72 $generated@@76 $generated@@77 $generated@@78 $generated@@80 $generated@@81 $generated@@82 $generated@@79) $generated@@81 $generated@@82) $generated@@79)
 :weight 0
)) (and (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (or (= $generated@@88 $generated@@90) (= ($generated@@65 $generated@@83 $generated@@84 $generated@@85 ($generated@@72 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88 $generated@@89 $generated@@86) $generated@@90 $generated@@91) ($generated@@65 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@90 $generated@@91)))
 :weight 0
)) (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (= $generated@@98 $generated@@100) (= ($generated@@65 $generated@@92 $generated@@93 $generated@@94 ($generated@@72 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@98 $generated@@95) $generated@@99 $generated@@100) ($generated@@65 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@99 $generated@@100)))
 :weight 0
)))) (= ($generated@@6 $generated@@66) 4)) (= ($generated@@6 $generated@@67) 5)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@69 $generated@@101 $generated@@102 ($generated@@73 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@103) $generated@@105) $generated@@103)
 :weight 0
))) (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (!  (or (= $generated@@110 $generated@@111) (= ($generated@@69 $generated@@106 $generated@@107 ($generated@@73 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@108) $generated@@111) ($generated@@69 $generated@@106 $generated@@107 $generated@@109 $generated@@111)))
 :weight 0
))) (= ($generated@@6 $generated@@70) 6)) (forall (($generated@@112 T@T) ($generated@@113 T@T) ) (= ($generated@@6 ($generated@@71 $generated@@112 $generated@@113)) 7))) (forall (($generated@@114 T@T) ($generated@@115 T@T) ) (! (= ($generated@@74 ($generated@@71 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@71 $generated@@114 $generated@@115))
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ) (! (= ($generated@@75 ($generated@@71 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@71 $generated@@116 $generated@@117))
))))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 Bool) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@11 ($generated@@65 $generated@@66 $generated@@67 $generated@@7 ($generated@@68 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))  (=> (and (or (not (= $generated@@122 $generated@@118)) (not true)) ($generated@@11 ($generated@@42 $generated@@7 ($generated@@69 $generated@@67 $generated@@70 ($generated@@69 $generated@@66 ($generated@@71 $generated@@67 $generated@@70) $generated@@119 $generated@@122) $generated@@120)))) $generated@@121))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67 $generated@@7 ($generated@@68 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))
)))
(assert (= ($generated@@22 $generated@@30) $generated@@2))
(assert (= ($generated@@124 $generated@@30) $generated@@5))
(assert (= $generated@@24 ($generated@@36 $generated@@29 $generated@@24)))
(assert (forall (($generated@@125 Int) ($generated@@126 T@U) ) (! (= ($generated@@46 ($generated@@34 $generated@@125) ($generated@@36 $generated@@29 $generated@@126)) ($generated@@36 $generated@@29 ($generated@@46 $generated@@125 $generated@@126)))
 :pattern ( ($generated@@46 ($generated@@34 $generated@@125) ($generated@@36 $generated@@29 $generated@@126)))
)))
(assert (forall (($generated@@127 Int) ) (! (= ($generated@@43 $generated@@8 ($generated@@12 ($generated@@34 $generated@@127))) ($generated@@36 $generated@@70 ($generated@@43 $generated@@8 ($generated@@12 $generated@@127))))
 :pattern ( ($generated@@43 $generated@@8 ($generated@@12 ($generated@@34 $generated@@127))))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@43 $generated@@129 ($generated@@36 $generated@@129 $generated@@128)) ($generated@@36 $generated@@70 ($generated@@43 $generated@@129 $generated@@128)))
 :pattern ( ($generated@@43 $generated@@129 ($generated@@36 $generated@@129 $generated@@128)))
)))
(assert (forall (($generated@@130 Int) ($generated@@131 T@U) ) (! (= ($generated@@28 $generated@@29 ($generated@@46 $generated@@130 $generated@@131) $generated@@30)  (and ($generated@@28 $generated@@8 ($generated@@12 $generated@@130) $generated) ($generated@@28 $generated@@29 $generated@@131 $generated@@30)))
 :pattern ( ($generated@@28 $generated@@29 ($generated@@46 $generated@@130 $generated@@131) $generated@@30))
)))
(assert (forall (($generated@@132 T@U) ) (! ($generated@@28 $generated@@8 $generated@@132 $generated)
 :pattern ( ($generated@@28 $generated@@8 $generated@@132 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@133 () T@U)
(declare-fun $generated@@134 () T@U)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@139  (=> (and (not ($generated@@31 $generated@@133)) (= (ControlFlow 0 4) (- 0 3))) ($generated@@40 $generated@@133))))
(let (($generated@@140 true))
(let (($generated@@141 true))
(let (($generated@@142  (=> (= $generated@@134 ($generated@@68 $generated@@135 $generated@@136 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 5) 1) $generated@@141) (=> (= (ControlFlow 0 5) 2) $generated@@140)) (=> (= (ControlFlow 0 5) 4) $generated@@139)))))
(let (($generated@@143  (=> (and (and (and ($generated@@137 $generated@@136) ($generated@@138 $generated@@136)) ($generated@@28 $generated@@29 $generated@@133 $generated@@30)) (and (= 1 $generated@@25) (= (ControlFlow 0 6) 5))) $generated@@142)))
$generated@@143))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)