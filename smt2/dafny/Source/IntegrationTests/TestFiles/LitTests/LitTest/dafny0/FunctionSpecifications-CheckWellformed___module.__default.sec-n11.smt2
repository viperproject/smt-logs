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
(declare-fun $generated@@18 (T@U) T@U)
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (Bool Int Int) Int)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@22 (Int Int) Bool)
(declare-fun $generated@@26 (T@T T@U) T@U)
(declare-fun $generated@@29 () Bool)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 (T@T T@U) T@U)
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
(declare-fun $generated@@103 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@106 (T@T T@U T@U) Bool)
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
(assert (= ($generated@@18 $generated) $generated@@0))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@23 Int) ($generated@@24 Int) ) (!  (=> (or ($generated@@22 ($generated@@21 $generated@@23) ($generated@@21 $generated@@24)) (and (< 0 $generated@@19) (and (and (<= ($generated@@21 0) ($generated@@21 $generated@@23)) (< $generated@@23 5)) (and (<= ($generated@@21 0) ($generated@@21 $generated@@24)) (< $generated@@24 5))))) (= ($generated@@20 true ($generated@@21 $generated@@23) ($generated@@21 $generated@@24)) ($generated@@21 (+ $generated@@23 $generated@@24))))
 :weight 3
 :pattern ( ($generated@@20 true ($generated@@21 $generated@@23) ($generated@@21 $generated@@24)))
))))
(assert (forall (($generated@@25 Int) ) (! (= ($generated@@21 $generated@@25) $generated@@25)
 :pattern ( ($generated@@21 $generated@@25))
)))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@T) ) (! (= ($generated@@26 $generated@@28 $generated@@27) $generated@@27)
 :pattern ( ($generated@@26 $generated@@28 $generated@@27))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@30 Bool) ($generated@@31 Int) ($generated@@32 Int) ) (!  (=> (or ($generated@@22 $generated@@31 $generated@@32) (and (< 0 $generated@@19) (and (and (<= ($generated@@21 0) $generated@@31) (< $generated@@31 5)) (and (<= ($generated@@21 0) $generated@@32) (< $generated@@32 5))))) (< ($generated@@20 $generated@@29 $generated@@31 $generated@@32) 10))
 :pattern ( ($generated@@20 $generated@@30 $generated@@31 $generated@@32))
))))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@34 $generated@@36 ($generated@@33 $generated@@36 $generated@@35)) $generated@@35)
 :pattern ( ($generated@@33 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@33 $generated@@38 ($generated@@34 $generated@@38 $generated@@37)) $generated@@37)
 :pattern ( ($generated@@34 $generated@@38 $generated@@37))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@39 $generated@@50 $generated@@51 $generated@@52 ($generated@@46 $generated@@50 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@56 $generated@@53) $generated@@55 $generated@@56) $generated@@53)
 :weight 0
)) (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@62 $generated@@64) (= ($generated@@39 $generated@@57 $generated@@58 $generated@@59 ($generated@@46 $generated@@57 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@63 $generated@@60) $generated@@64 $generated@@65) ($generated@@39 $generated@@57 $generated@@58 $generated@@59 $generated@@61 $generated@@64 $generated@@65)))
 :weight 0
)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@T) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (or (= $generated@@72 $generated@@74) (= ($generated@@39 $generated@@66 $generated@@67 $generated@@68 ($generated@@46 $generated@@66 $generated@@67 $generated@@68 $generated@@70 $generated@@71 $generated@@72 $generated@@69) $generated@@73 $generated@@74) ($generated@@39 $generated@@66 $generated@@67 $generated@@68 $generated@@70 $generated@@73 $generated@@74)))
 :weight 0
)))) (= ($generated@@2 $generated@@40) 3)) (= ($generated@@2 $generated@@41) 4)) (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@43 $generated@@75 $generated@@76 ($generated@@47 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@79) $generated@@77)
 :weight 0
))) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@84 $generated@@85) (= ($generated@@43 $generated@@80 $generated@@81 ($generated@@47 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@85) ($generated@@43 $generated@@80 $generated@@81 $generated@@83 $generated@@85)))
 :weight 0
))) (= ($generated@@2 $generated@@44) 5)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (= ($generated@@2 ($generated@@45 $generated@@86 $generated@@87)) 6))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@45 $generated@@88 $generated@@89))
))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@49 ($generated@@45 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@45 $generated@@90 $generated@@91))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 Bool) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@7 ($generated@@39 $generated@@40 $generated@@41 $generated@@3 ($generated@@42 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))  (=> (and (or (not (= $generated@@96 $generated@@92)) (not true)) ($generated@@7 ($generated@@33 $generated@@3 ($generated@@43 $generated@@41 $generated@@44 ($generated@@43 $generated@@40 ($generated@@45 $generated@@41 $generated@@44) $generated@@93 $generated@@96) $generated@@94)))) $generated@@95))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 $generated@@3 ($generated@@42 $generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96 $generated@@97))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@98 Int) ($generated@@99 Int) ) (!  (=> (or ($generated@@22 $generated@@98 $generated@@99) (and (< 0 $generated@@19) (and (and (<= ($generated@@21 0) $generated@@98) (< $generated@@98 5)) (and (<= ($generated@@21 0) $generated@@99) (< $generated@@99 5))))) (= ($generated@@20 true $generated@@98 $generated@@99) (+ $generated@@98 $generated@@99)))
 :pattern ( ($generated@@20 true $generated@@98 $generated@@99))
))))
(assert (forall (($generated@@100 Int) ) (! (= ($generated@@34 $generated@@4 ($generated@@8 ($generated@@21 $generated@@100))) ($generated@@26 $generated@@44 ($generated@@34 $generated@@4 ($generated@@8 $generated@@100))))
 :pattern ( ($generated@@34 $generated@@4 ($generated@@8 ($generated@@21 $generated@@100))))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@34 $generated@@102 ($generated@@26 $generated@@102 $generated@@101)) ($generated@@26 $generated@@44 ($generated@@34 $generated@@102 $generated@@101)))
 :pattern ( ($generated@@34 $generated@@102 ($generated@@26 $generated@@102 $generated@@101)))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! ($generated@@103 $generated@@4 $generated@@105 $generated $generated@@104)
 :pattern ( ($generated@@103 $generated@@4 $generated@@105 $generated $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ) (! ($generated@@106 $generated@@4 $generated@@107 $generated)
 :pattern ( ($generated@@106 $generated@@4 $generated@@107 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@108 () Int)
(declare-fun $generated@@109 () Int)
(declare-fun $generated@@110 () T@U)
(declare-fun $generated@@111 () T@U)
(declare-fun $generated@@112 () T@U)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@114 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 19) (let (($generated@@115  (=> (= (ControlFlow 0 10) (- 0 9)) (< ($generated@@20 $generated@@29 $generated@@108 $generated@@109) 10))))
(let (($generated@@116  (=> (= ($generated@@20 $generated@@29 $generated@@108 $generated@@109) (+ $generated@@108 $generated@@109)) (=> (and ($generated@@106 $generated@@4 ($generated@@8 ($generated@@20 $generated@@29 $generated@@108 $generated@@109)) $generated) (= (ControlFlow 0 11) 10)) $generated@@115))))
(let (($generated@@117  (=> (and ($generated@@103 $generated@@4 ($generated@@8 $generated@@108) $generated $generated@@110) ($generated@@103 $generated@@4 ($generated@@8 $generated@@109) $generated $generated@@110)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= ($generated@@21 0) $generated@@108)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< $generated@@108 5)) (=> (and (<= ($generated@@21 0) $generated@@108) (< $generated@@108 5)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= ($generated@@21 0) $generated@@109)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< $generated@@109 5)) (=> (and (<= ($generated@@21 0) $generated@@109) (< $generated@@109 5)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (<= 0 $generated@@108) (= $generated@@108 $generated@@108))) (=> (or (<= 0 $generated@@108) (= $generated@@108 $generated@@108)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (or (<= 0 $generated@@109) (< $generated@@108 $generated@@108)) (= $generated@@109 $generated@@109))) (=> (or (or (<= 0 $generated@@109) (< $generated@@108 $generated@@108)) (= $generated@@109 $generated@@109)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= $generated@@108 $generated@@108) (= $generated@@109 $generated@@109)) (or (< $generated@@108 $generated@@108) (and (= $generated@@108 $generated@@108) (< $generated@@109 $generated@@109))))))))))))))))))
(let (($generated@@118  (=> (and (<= ($generated@@21 0) $generated@@109) (< $generated@@109 5)) (and (=> (= (ControlFlow 0 12) 2) $generated@@117) (=> (= (ControlFlow 0 12) 11) $generated@@116)))))
(let (($generated@@119  (=> (and (< $generated@@109 ($generated@@21 0)) (= (ControlFlow 0 14) 12)) $generated@@118)))
(let (($generated@@120  (=> (and (<= ($generated@@21 0) $generated@@109) (= (ControlFlow 0 13) 12)) $generated@@118)))
(let (($generated@@121  (=> (and (<= ($generated@@21 0) $generated@@108) (< $generated@@108 5)) (and (=> (= (ControlFlow 0 15) 13) $generated@@120) (=> (= (ControlFlow 0 15) 14) $generated@@119)))))
(let (($generated@@122  (=> (and (< $generated@@108 ($generated@@21 0)) (= (ControlFlow 0 17) 15)) $generated@@121)))
(let (($generated@@123  (=> (and (<= ($generated@@21 0) $generated@@108) (= (ControlFlow 0 16) 15)) $generated@@121)))
(let (($generated@@124  (=> (= $generated@@111 ($generated@@42 $generated@@112 $generated@@110 $generated@@1 false)) (and (=> (= (ControlFlow 0 18) 16) $generated@@123) (=> (= (ControlFlow 0 18) 17) $generated@@122)))))
(let (($generated@@125  (=> (and (and ($generated@@113 $generated@@110) ($generated@@114 $generated@@110)) (and (= 0 $generated@@19) (= (ControlFlow 0 19) 18))) $generated@@124)))
$generated@@125))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)