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
(declare-fun $generated@@6 () T@U)
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 () Int)
(declare-fun $generated@@25 (T@U T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U T@U) T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@41 (T@U T@U) Int)
(declare-fun $generated@@44 (T@U Int) T@U)
(declare-fun $generated@@45 (T@U) Int)
(declare-fun $generated@@46 (T@U) Int)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@51 (T@U T@U) Int)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@60 (Int) Int)
(declare-fun $generated@@64 (T@U T@U) Bool)
(declare-fun $generated@@70 (T@U) Bool)
(declare-fun $generated@@72 (T@U) Bool)
(declare-fun $generated@@84 (T@U T@U T@U) Bool)
(declare-fun $generated@@85 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@94 (T@U) T@U)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@131 (T@U) Int)
(declare-fun $generated@@133 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@134 () T@T)
(declare-fun $generated@@135 () T@T)
(declare-fun $generated@@136 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@137 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@138 () T@T)
(declare-fun $generated@@139 (T@T T@T) T@T)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 (T@T) T@T)
(declare-fun $generated@@143 (T@T) T@T)
(declare-fun $generated@@192 (T@U) T@U)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@198 (T@U) Bool)
(declare-fun $generated@@201 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated) $generated@@0))
(assert  (and (= ($generated@@7 $generated@@29) 3) (= ($generated@@7 $generated@@36) 4)))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (!  (=> (or ($generated@@27 $generated@@43) (and (< 1 $generated@@24) ($generated@@28 $generated@@29 $generated@@43 ($generated@@30 $generated@@31)))) (and (=> ($generated@@32 $generated@@43 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))) ($generated@@39 ($generated@@37 $generated@@29 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))))) (= ($generated@@25 ($generated@@26 $generated@@42) $generated@@43) (ite ($generated@@32 $generated@@43 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))) ($generated@@41 $generated@@42 ($generated@@37 $generated@@29 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))))))) 0))))
 :pattern ( ($generated@@25 ($generated@@26 $generated@@42) $generated@@43))
))))
(assert (forall (($generated@@48 T@U) ($generated@@49 Int) ) (!  (=> (and (<= 0 $generated@@49) (< $generated@@49 ($generated@@45 $generated@@48))) (< ($generated@@46 ($generated@@47 $generated@@36 ($generated@@44 $generated@@48 $generated@@49))) ($generated@@46 ($generated@@40 $generated@@48))))
 :pattern ( ($generated@@44 $generated@@48 $generated@@49) ($generated@@40 $generated@@48))
)))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> (or ($generated@@39 $generated@@53) (and (< 1 $generated@@24) ($generated@@28 $generated@@29 $generated@@53 ($generated@@30 $generated@@31)))) (and (=> ($generated@@32 $generated@@53 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))) ($generated@@50 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))))) (= ($generated@@41 ($generated@@26 $generated@@52) $generated@@53) (ite ($generated@@32 $generated@@53 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))) ($generated@@51 $generated@@52 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))) 0))))
 :pattern ( ($generated@@41 ($generated@@26 $generated@@52) $generated@@53))
))))
(assert (= ($generated@@45 $generated@@34) 0))
(assert (= ($generated@@54 $generated@@38) $generated@@4))
(assert ($generated@@28 $generated@@36 $generated@@38 $generated@@31))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (!  (=> (or ($generated@@27 ($generated@@37 $generated@@29 $generated@@56)) (and (< 1 $generated@@24) ($generated@@28 $generated@@29 $generated@@56 ($generated@@30 $generated@@31)))) (and (=> ($generated@@32 $generated@@56 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))) ($generated@@39 ($generated@@37 $generated@@29 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))))) (= ($generated@@25 ($generated@@26 $generated@@55) ($generated@@37 $generated@@29 $generated@@56)) (ite ($generated@@32 $generated@@56 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))) ($generated@@41 ($generated@@26 $generated@@55) ($generated@@37 $generated@@29 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))))))) 0))))
 :weight 3
 :pattern ( ($generated@@25 ($generated@@26 $generated@@55) ($generated@@37 $generated@@29 $generated@@56)))
))))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@57 $generated@@58 $generated@@59) (= $generated@@58 $generated@@59))
 :pattern ( ($generated@@57 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 Int) ) (! (= ($generated@@60 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@37 $generated@@63 $generated@@62) $generated@@62)
 :pattern ( ($generated@@37 $generated@@63 $generated@@62))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> (and ($generated@@28 $generated@@29 $generated@@65 ($generated@@30 $generated@@67)) ($generated@@64 $generated@@66 $generated@@67)) ($generated@@28 $generated@@29 ($generated@@33 $generated@@65 $generated@@66) ($generated@@30 $generated@@67)))
 :pattern ( ($generated@@28 $generated@@29 ($generated@@33 $generated@@65 $generated@@66) ($generated@@30 $generated@@67)))
)))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (or ($generated@@39 ($generated@@37 $generated@@29 $generated@@69)) (and (< 1 $generated@@24) ($generated@@28 $generated@@29 $generated@@69 ($generated@@30 $generated@@31)))) (and (=> ($generated@@32 $generated@@69 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))) ($generated@@50 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))))) (= ($generated@@41 ($generated@@26 $generated@@68) ($generated@@37 $generated@@29 $generated@@69)) (ite ($generated@@32 $generated@@69 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))))) ($generated@@51 ($generated@@26 $generated@@68) ($generated@@37 $generated@@36 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))) 0))))
 :weight 3
 :pattern ( ($generated@@41 ($generated@@26 $generated@@68) ($generated@@37 $generated@@29 $generated@@69)))
))))
(assert (forall (($generated@@71 T@U) ) (! (= ($generated@@70 $generated@@71) (= ($generated@@54 $generated@@71) $generated@@4))
 :pattern ( ($generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@72 $generated@@73) (= ($generated@@54 $generated@@73) $generated@@5))
 :pattern ( ($generated@@72 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@32 $generated@@74 $generated@@75)  (and (= ($generated@@45 $generated@@74) ($generated@@45 $generated@@75)) (forall (($generated@@76 Int) ) (!  (=> (and (<= 0 $generated@@76) (< $generated@@76 ($generated@@45 $generated@@74))) (= ($generated@@44 $generated@@74 $generated@@76) ($generated@@44 $generated@@75 $generated@@76)))
 :pattern ( ($generated@@44 $generated@@74 $generated@@76))
 :pattern ( ($generated@@44 $generated@@75 $generated@@76))
))))
 :pattern ( ($generated@@32 $generated@@74 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@35 $generated@@78 ($generated@@47 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@47 $generated@@78 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@70 $generated@@79) (= $generated@@79 $generated@@38))
 :pattern ( ($generated@@70 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@72 $generated@@80) (exists (($generated@@81 T@U) ) (= $generated@@80 ($generated@@40 $generated@@81))))
 :pattern ( ($generated@@72 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@45 ($generated@@33 $generated@@82 $generated@@83)) (+ 1 ($generated@@45 $generated@@82)))
 :pattern ( ($generated@@33 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@84 ($generated@@35 $generated@@89 $generated@@86) $generated@@87 $generated@@88) ($generated@@85 $generated@@89 $generated@@86 $generated@@87 $generated@@88))
 :pattern ( ($generated@@84 ($generated@@35 $generated@@89 $generated@@86) $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@64 $generated@@90 $generated@@31) (and (= ($generated@@35 $generated@@36 ($generated@@47 $generated@@36 $generated@@90)) $generated@@90) ($generated@@28 $generated@@36 ($generated@@47 $generated@@36 $generated@@90) $generated@@31)))
 :pattern ( ($generated@@64 $generated@@90 $generated@@31))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 Int) ($generated@@93 T@U) ) (!  (and (=> (= $generated@@92 ($generated@@45 $generated@@91)) (= ($generated@@44 ($generated@@33 $generated@@91 $generated@@93) $generated@@92) $generated@@93)) (=> (or (not (= $generated@@92 ($generated@@45 $generated@@91))) (not true)) (= ($generated@@44 ($generated@@33 $generated@@91 $generated@@93) $generated@@92) ($generated@@44 $generated@@91 $generated@@92))))
 :pattern ( ($generated@@44 ($generated@@33 $generated@@91 $generated@@93) $generated@@92))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and ($generated@@72 $generated@@95) ($generated@@72 $generated@@96)) (= ($generated@@57 $generated@@95 $generated@@96) ($generated@@32 ($generated@@94 $generated@@95) ($generated@@94 $generated@@96))))
 :pattern ( ($generated@@57 $generated@@95 $generated@@96) ($generated@@72 $generated@@95))
 :pattern ( ($generated@@57 $generated@@95 $generated@@96) ($generated@@72 $generated@@96))
)))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> (or ($generated@@50 $generated@@99) (and (< 1 $generated@@24) ($generated@@28 $generated@@36 $generated@@99 $generated@@31))) (and (and ($generated@@97 $generated@@99) (=> ($generated@@57 $generated@@99 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) ($generated@@27 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))) (= ($generated@@51 ($generated@@26 $generated@@98) $generated@@99) (ite ($generated@@57 $generated@@99 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) ($generated@@25 $generated@@98 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))) 0))))
 :pattern ( ($generated@@51 ($generated@@26 $generated@@98) $generated@@99))
))))
(assert (forall (($generated@@100 T@U) ) (!  (=> ($generated@@97 $generated@@100) (or ($generated@@70 $generated@@100) ($generated@@72 $generated@@100)))
 :pattern ( ($generated@@97 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@28 $generated@@36 ($generated@@40 $generated@@101) $generated@@31) ($generated@@28 $generated@@29 $generated@@101 ($generated@@30 $generated@@31)))
 :pattern ( ($generated@@28 $generated@@36 ($generated@@40 $generated@@101) $generated@@31))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> ($generated@@32 $generated@@102 $generated@@103) (= $generated@@102 $generated@@103))
 :pattern ( ($generated@@32 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ) (!  (=> ($generated@@28 $generated@@36 $generated@@104 $generated@@31) (or ($generated@@70 $generated@@104) ($generated@@72 $generated@@104)))
 :pattern ( ($generated@@72 $generated@@104) ($generated@@28 $generated@@36 $generated@@104 $generated@@31))
 :pattern ( ($generated@@70 $generated@@104) ($generated@@28 $generated@@36 $generated@@104 $generated@@31))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@64 $generated@@105 $generated) (and (= ($generated@@35 $generated@@9 ($generated@@47 $generated@@9 $generated@@105)) $generated@@105) ($generated@@28 $generated@@9 ($generated@@47 $generated@@9 $generated@@105) $generated)))
 :pattern ( ($generated@@64 $generated@@105 $generated))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@64 ($generated@@35 $generated@@108 $generated@@106) $generated@@107) ($generated@@28 $generated@@108 $generated@@106 $generated@@107))
 :pattern ( ($generated@@64 ($generated@@35 $generated@@108 $generated@@106) $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (<= 0 ($generated@@45 $generated@@109))
 :pattern ( ($generated@@45 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (and ($generated@@70 $generated@@110) ($generated@@70 $generated@@111)) ($generated@@57 $generated@@110 $generated@@111))
 :pattern ( ($generated@@57 $generated@@110 $generated@@111) ($generated@@70 $generated@@110))
 :pattern ( ($generated@@57 $generated@@110 $generated@@111) ($generated@@70 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@85 $generated@@29 $generated@@112 ($generated@@30 $generated@@113) $generated@@114) (forall (($generated@@115 Int) ) (!  (=> (and (<= 0 $generated@@115) (< $generated@@115 ($generated@@45 $generated@@112))) ($generated@@84 ($generated@@44 $generated@@112 $generated@@115) $generated@@113 $generated@@114))
 :pattern ( ($generated@@44 $generated@@112 $generated@@115))
)))
 :pattern ( ($generated@@85 $generated@@29 $generated@@112 ($generated@@30 $generated@@113) $generated@@114))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@116 ($generated@@30 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@30 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ) (! (= ($generated@@23 ($generated@@30 $generated@@118)) $generated@@1)
 :pattern ( ($generated@@30 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@54 ($generated@@40 $generated@@119)) $generated@@5)
 :pattern ( ($generated@@40 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@94 ($generated@@40 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@40 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@T) ) (! (= ($generated@@47 $generated@@122 ($generated@@35 $generated@@122 $generated@@121)) $generated@@121)
 :pattern ( ($generated@@35 $generated@@122 $generated@@121))
)))
(assert  (=> (<= 1 $generated@@24) (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or ($generated@@50 ($generated@@37 $generated@@36 $generated@@124)) (and (< 1 $generated@@24) ($generated@@28 $generated@@36 $generated@@124 $generated@@31))) (and (and ($generated@@97 ($generated@@37 $generated@@36 $generated@@124)) (=> ($generated@@57 $generated@@124 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) ($generated@@27 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))))) (= ($generated@@51 ($generated@@26 $generated@@123) ($generated@@37 $generated@@36 $generated@@124)) (ite ($generated@@57 $generated@@124 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) ($generated@@25 ($generated@@26 $generated@@123) ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))))) 0))))
 :weight 3
 :pattern ( ($generated@@51 ($generated@@26 $generated@@123) ($generated@@37 $generated@@36 $generated@@124)))
))))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@41 ($generated@@26 $generated@@125) $generated@@126) ($generated@@41 $generated@@125 $generated@@126))
 :pattern ( ($generated@@41 ($generated@@26 $generated@@125) $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@51 ($generated@@26 $generated@@127) $generated@@128) ($generated@@51 $generated@@127 $generated@@128))
 :pattern ( ($generated@@51 ($generated@@26 $generated@@127) $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@25 ($generated@@26 $generated@@129) $generated@@130) ($generated@@25 $generated@@129 $generated@@130))
 :pattern ( ($generated@@25 ($generated@@26 $generated@@129) $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ) (! (< ($generated@@131 $generated@@132) ($generated@@46 ($generated@@40 $generated@@132)))
 :pattern ( ($generated@@40 $generated@@132))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@133 $generated@@144 $generated@@145 $generated@@146 ($generated@@140 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@149 $generated@@150 $generated@@147) $generated@@149 $generated@@150) $generated@@147)
 :weight 0
)) (and (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@156 $generated@@158) (= ($generated@@133 $generated@@151 $generated@@152 $generated@@153 ($generated@@140 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@133 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)) (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@166 $generated@@168) (= ($generated@@133 $generated@@160 $generated@@161 $generated@@162 ($generated@@140 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@167 $generated@@168) ($generated@@133 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@167 $generated@@168)))
 :weight 0
)))) (= ($generated@@7 $generated@@134) 5)) (= ($generated@@7 $generated@@135) 6)) (forall (($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@137 $generated@@169 $generated@@170 ($generated@@141 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@171) $generated@@173) $generated@@171)
 :weight 0
))) (forall (($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (!  (or (= $generated@@178 $generated@@179) (= ($generated@@137 $generated@@174 $generated@@175 ($generated@@141 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@176) $generated@@179) ($generated@@137 $generated@@174 $generated@@175 $generated@@177 $generated@@179)))
 :weight 0
))) (= ($generated@@7 $generated@@138) 7)) (forall (($generated@@180 T@T) ($generated@@181 T@T) ) (= ($generated@@7 ($generated@@139 $generated@@180 $generated@@181)) 8))) (forall (($generated@@182 T@T) ($generated@@183 T@T) ) (! (= ($generated@@142 ($generated@@139 $generated@@182 $generated@@183)) $generated@@182)
 :pattern ( ($generated@@139 $generated@@182 $generated@@183))
))) (forall (($generated@@184 T@T) ($generated@@185 T@T) ) (! (= ($generated@@143 ($generated@@139 $generated@@184 $generated@@185)) $generated@@185)
 :pattern ( ($generated@@139 $generated@@184 $generated@@185))
))))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 Bool) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@12 ($generated@@133 $generated@@134 $generated@@135 $generated@@8 ($generated@@136 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))  (=> (and (or (not (= $generated@@190 $generated@@186)) (not true)) ($generated@@12 ($generated@@47 $generated@@8 ($generated@@137 $generated@@135 $generated@@138 ($generated@@137 $generated@@134 ($generated@@139 $generated@@135 $generated@@138) $generated@@187 $generated@@190) $generated@@188)))) $generated@@189))
 :pattern ( ($generated@@133 $generated@@134 $generated@@135 $generated@@8 ($generated@@136 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (and (= ($generated@@192 ($generated@@33 $generated@@194 $generated@@195)) $generated@@194) (= ($generated@@193 ($generated@@33 $generated@@194 $generated@@195)) $generated@@195))
 :pattern ( ($generated@@33 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> ($generated@@64 $generated@@196 ($generated@@30 $generated@@197)) (and (= ($generated@@35 $generated@@29 ($generated@@47 $generated@@29 $generated@@196)) $generated@@196) ($generated@@28 $generated@@29 ($generated@@47 $generated@@29 $generated@@196) ($generated@@30 $generated@@197))))
 :pattern ( ($generated@@64 $generated@@196 ($generated@@30 $generated@@197)))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> (and ($generated@@198 $generated@@200) ($generated@@28 $generated@@36 $generated@@199 $generated@@31)) ($generated@@85 $generated@@36 $generated@@199 $generated@@31 $generated@@200))
 :pattern ( ($generated@@85 $generated@@36 $generated@@199 $generated@@31 $generated@@200))
)))
(assert (= ($generated@@23 $generated@@31) $generated@@3))
(assert (= ($generated@@201 $generated@@31) $generated@@6))
(assert (= $generated@@38 ($generated@@37 $generated@@36 $generated@@38)))
(assert (forall (($generated@@202 Int) ) (! (= ($generated@@35 $generated@@9 ($generated@@13 ($generated@@60 $generated@@202))) ($generated@@37 $generated@@138 ($generated@@35 $generated@@9 ($generated@@13 $generated@@202))))
 :pattern ( ($generated@@35 $generated@@9 ($generated@@13 ($generated@@60 $generated@@202))))
)))
(assert (forall (($generated@@203 T@U) ) (! (= ($generated@@40 ($generated@@37 $generated@@29 $generated@@203)) ($generated@@37 $generated@@36 ($generated@@40 $generated@@203)))
 :pattern ( ($generated@@40 ($generated@@37 $generated@@29 $generated@@203)))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@T) ) (! (= ($generated@@35 $generated@@205 ($generated@@37 $generated@@205 $generated@@204)) ($generated@@37 $generated@@138 ($generated@@35 $generated@@205 $generated@@204)))
 :pattern ( ($generated@@35 $generated@@205 ($generated@@37 $generated@@205 $generated@@204)))
)))
(assert (forall (($generated@@206 T@U) ) (!  (=> (= ($generated@@45 $generated@@206) 0) (= $generated@@206 $generated@@34))
 :pattern ( ($generated@@45 $generated@@206))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ) (!  (=> (and ($generated@@198 $generated@@208) (and ($generated@@72 $generated@@207) ($generated@@85 $generated@@36 $generated@@207 $generated@@31 $generated@@208))) ($generated@@85 $generated@@29 ($generated@@94 $generated@@207) ($generated@@30 $generated@@31) $generated@@208))
 :pattern ( ($generated@@85 $generated@@29 ($generated@@94 $generated@@207) ($generated@@30 $generated@@31) $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (! ($generated@@85 $generated@@9 $generated@@210 $generated $generated@@209)
 :pattern ( ($generated@@85 $generated@@9 $generated@@210 $generated $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@211 ($generated@@30 $generated@@212)) (forall (($generated@@213 Int) ) (!  (=> (and (<= 0 $generated@@213) (< $generated@@213 ($generated@@45 $generated@@211))) ($generated@@64 ($generated@@44 $generated@@211 $generated@@213) $generated@@212))
 :pattern ( ($generated@@44 $generated@@211 $generated@@213))
)))
 :pattern ( ($generated@@28 $generated@@29 $generated@@211 ($generated@@30 $generated@@212)))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 Int) ) (!  (=> (and (<= 0 $generated@@215) (< $generated@@215 ($generated@@45 $generated@@214))) (< ($generated@@46 ($generated@@47 $generated@@36 ($generated@@44 $generated@@214 $generated@@215))) ($generated@@131 $generated@@214)))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@36 ($generated@@44 $generated@@214 $generated@@215))))
)))
(assert (forall (($generated@@216 T@U) ) (! ($generated@@28 $generated@@9 $generated@@216 $generated)
 :pattern ( ($generated@@28 $generated@@9 $generated@@216 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@223 true))
(let (($generated@@224  (=> (and (and ($generated@@57 $generated@@217 ($generated@@40 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) (= $generated@@218 ($generated@@37 $generated@@29 ($generated@@33 ($generated@@33 $generated@@34 ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38))) ($generated@@35 $generated@@36 ($generated@@37 $generated@@36 $generated@@38)))))) (and ($generated@@85 $generated@@29 $generated@@218 ($generated@@30 $generated@@31) $generated@@219) (= (ControlFlow 0 3) (- 0 2)))) (< ($generated@@131 $generated@@218) ($generated@@46 $generated@@217)))))
(let (($generated@@225 true))
(let (($generated@@226  (=> (= $generated@@220 ($generated@@136 $generated@@221 $generated@@219 $generated@@2 false)) (and (and (=> (= (ControlFlow 0 5) 1) $generated@@225) (=> (= (ControlFlow 0 5) 3) $generated@@224)) (=> (= (ControlFlow 0 5) 4) $generated@@223)))))
(let (($generated@@227  (=> (and (and (and ($generated@@198 $generated@@219) ($generated@@222 $generated@@219)) ($generated@@28 $generated@@36 $generated@@217 $generated@@31)) (and (= 1 $generated@@24) (= (ControlFlow 0 6) 5))) $generated@@226)))
$generated@@227))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)