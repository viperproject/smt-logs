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
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 () T@U)
(declare-fun $generated@@19 () T@U)
(declare-fun $generated@@20 () Int)
(declare-fun $generated@@21 (T@U T@U) T@U)
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@27 (Bool T@U T@U) Bool)
(declare-fun $generated@@28 (T@U T@U) Bool)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@U T@U) Bool)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@42 (Bool T@U T@U) Bool)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@53 (T@U T@U T@U) Bool)
(declare-fun $generated@@54 (T@U) Bool)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@T T@U T@U) Bool)
(declare-fun $generated@@69 () T@T)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@74 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@111 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@112 () T@T)
(declare-fun $generated@@113 () T@T)
(declare-fun $generated@@114 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@115 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@116 (T@T T@T) T@T)
(declare-fun $generated@@117 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@118 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@T) T@T)
(declare-fun $generated@@120 (T@T) T@T)
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
(assert (distinct $generated $generated@@0)
)
(assert ($generated@@17 $generated@@18))
(assert ($generated@@17 $generated@@19))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@25 T@U) ($generated@@26 T@U) ) (!  (=> (or ($generated@@22 $generated@@25 $generated@@26) (and (< 0 $generated@@20) (and ($generated@@23 $generated@@25 $generated@@19) ($generated@@23 $generated@@26 $generated@@18)))) ($generated@@23 ($generated@@21 $generated@@25 $generated@@26) $generated@@24))
 :pattern ( ($generated@@21 $generated@@25 $generated@@26))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> (or ($generated@@28 $generated@@35 $generated@@36) (and (< 2 $generated@@20) (and ($generated@@23 $generated@@35 $generated@@18) ($generated@@23 $generated@@36 $generated@@18)))) (and (and (and ($generated@@29 $generated@@35) ($generated@@29 $generated@@36)) (=> ($generated@@30 ($generated@@31 $generated@@35) ($generated@@31 $generated@@36)) (and (forall (($generated@@37 T@U) ) (!  (=> ($generated@@23 $generated@@37 $generated@@19) (and ($generated@@29 $generated@@35) (=> ($generated@@33 ($generated@@31 $generated@@35) $generated@@37) (and ($generated@@34 $generated@@37 $generated@@36) ($generated@@34 $generated@@37 $generated@@35)))))
 :pattern ( ($generated@@32 $generated@@37 $generated@@35))
 :pattern ( ($generated@@32 $generated@@37 $generated@@36))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@35) $generated@@37))
)) (=> (forall (($generated@@38 T@U) ) (!  (=> ($generated@@23 $generated@@38 $generated@@19) (=> ($generated@@33 ($generated@@31 $generated@@35) $generated@@38) (= ($generated@@32 $generated@@38 $generated@@36) ($generated@@32 $generated@@38 $generated@@35))))
 :pattern ( ($generated@@32 $generated@@38 $generated@@35))
 :pattern ( ($generated@@32 $generated@@38 $generated@@36))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@35) $generated@@38))
)) (forall (($generated@@39 T@U) ) (!  (=> ($generated@@23 $generated@@39 $generated@@19) (and ($generated@@29 $generated@@35) (=> (not ($generated@@33 ($generated@@31 $generated@@35) $generated@@39)) (and ($generated@@29 $generated@@36) (=> ($generated@@33 ($generated@@31 $generated@@36) $generated@@39) (and ($generated@@34 $generated@@39 $generated@@36) ($generated@@22 $generated@@39 $generated@@35)))))))
 :pattern ( ($generated@@21 $generated@@39 $generated@@35))
 :pattern ( ($generated@@32 $generated@@39 $generated@@36))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@36) $generated@@39))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@35) $generated@@39))
)))))) (= ($generated@@27 true $generated@@35 $generated@@36)  (and (and ($generated@@30 ($generated@@31 $generated@@35) ($generated@@31 $generated@@36)) (forall (($generated@@40 T@U) ) (!  (=> ($generated@@23 $generated@@40 $generated@@19) (=> ($generated@@33 ($generated@@31 $generated@@35) $generated@@40) (= ($generated@@32 $generated@@40 $generated@@36) ($generated@@32 $generated@@40 $generated@@35))))
 :pattern ( ($generated@@32 $generated@@40 $generated@@35))
 :pattern ( ($generated@@32 $generated@@40 $generated@@36))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@35) $generated@@40))
))) (forall (($generated@@41 T@U) ) (!  (=> ($generated@@23 $generated@@41 $generated@@19) (=> (and (not ($generated@@33 ($generated@@31 $generated@@35) $generated@@41)) ($generated@@33 ($generated@@31 $generated@@36) $generated@@41)) (= ($generated@@32 $generated@@41 $generated@@36) ($generated@@21 $generated@@41 $generated@@35))))
 :pattern ( ($generated@@21 $generated@@41 $generated@@35))
 :pattern ( ($generated@@32 $generated@@41 $generated@@36))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@36) $generated@@41))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@35) $generated@@41))
))))))
 :pattern ( ($generated@@27 true $generated@@35 $generated@@36))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (or ($generated@@43 $generated@@44 $generated@@45) (and (< 2 $generated@@20) (and ($generated@@23 $generated@@44 $generated@@18) ($generated@@23 $generated@@45 $generated@@18)))) (and (and (and ($generated@@29 $generated@@44) ($generated@@29 $generated@@45)) (=> ($generated@@30 ($generated@@31 $generated@@44) ($generated@@31 $generated@@45)) (and (forall (($generated@@46 T@U) ) (!  (=> ($generated@@23 $generated@@46 $generated@@19) (and ($generated@@29 $generated@@44) (=> ($generated@@33 ($generated@@31 $generated@@44) $generated@@46) (and ($generated@@34 $generated@@46 $generated@@45) ($generated@@34 $generated@@46 $generated@@44)))))
 :pattern ( ($generated@@32 $generated@@46 $generated@@44))
 :pattern ( ($generated@@32 $generated@@46 $generated@@45))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@44) $generated@@46))
)) (=> (forall (($generated@@47 T@U) ) (!  (=> ($generated@@23 $generated@@47 $generated@@19) (=> ($generated@@33 ($generated@@31 $generated@@44) $generated@@47) (= ($generated@@32 $generated@@47 $generated@@45) ($generated@@32 $generated@@47 $generated@@44))))
 :pattern ( ($generated@@32 $generated@@47 $generated@@44))
 :pattern ( ($generated@@32 $generated@@47 $generated@@45))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@44) $generated@@47))
)) (forall (($generated@@48 T@U) ) (!  (=> ($generated@@23 $generated@@48 $generated@@19) (and ($generated@@29 $generated@@44) (=> (not ($generated@@33 ($generated@@31 $generated@@44) $generated@@48)) (and ($generated@@29 $generated@@45) (=> ($generated@@33 ($generated@@31 $generated@@45) $generated@@48) (and ($generated@@34 $generated@@48 $generated@@45) ($generated@@22 $generated@@48 $generated@@44)))))))
 :pattern ( ($generated@@21 $generated@@48 $generated@@44))
 :pattern ( ($generated@@32 $generated@@48 $generated@@45))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@45) $generated@@48))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@44) $generated@@48))
)))))) (= ($generated@@42 true $generated@@44 $generated@@45)  (and (and ($generated@@30 ($generated@@31 $generated@@44) ($generated@@31 $generated@@45)) (forall (($generated@@49 T@U) ) (!  (=> ($generated@@23 $generated@@49 $generated@@19) (=> ($generated@@33 ($generated@@31 $generated@@44) $generated@@49) (= ($generated@@32 $generated@@49 $generated@@45) ($generated@@32 $generated@@49 $generated@@44))))
 :pattern ( ($generated@@32 $generated@@49 $generated@@44))
 :pattern ( ($generated@@32 $generated@@49 $generated@@45))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@44) $generated@@49))
))) (forall (($generated@@50 T@U) ) (!  (=> ($generated@@23 $generated@@50 $generated@@19) (=> (and (not ($generated@@33 ($generated@@31 $generated@@44) $generated@@50)) ($generated@@33 ($generated@@31 $generated@@45) $generated@@50)) (= ($generated@@32 $generated@@50 $generated@@45) ($generated@@21 $generated@@50 $generated@@44))))
 :pattern ( ($generated@@21 $generated@@50 $generated@@44))
 :pattern ( ($generated@@32 $generated@@50 $generated@@45))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@45) $generated@@50))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@44) $generated@@50))
))))))
 :pattern ( ($generated@@42 true $generated@@44 $generated@@45))
))))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> (or ($generated@@34 $generated@@51 $generated@@52) (and (< 1 $generated@@20) (and (and ($generated@@23 $generated@@51 $generated@@19) ($generated@@23 $generated@@52 $generated@@18)) ($generated@@33 ($generated@@31 $generated@@52) $generated@@51)))) ($generated@@23 ($generated@@32 $generated@@51 $generated@@52) $generated@@24))
 :pattern ( ($generated@@32 $generated@@51 $generated@@52))
))))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (and (or ($generated@@34 $generated@@56 $generated@@57) (and (< 1 $generated@@20) (and (and (and ($generated@@23 $generated@@56 $generated@@19) ($generated@@53 $generated@@56 $generated@@19 $generated@@55)) (and ($generated@@23 $generated@@57 $generated@@18) ($generated@@53 $generated@@57 $generated@@18 $generated@@55))) ($generated@@33 ($generated@@31 $generated@@57) $generated@@56)))) ($generated@@54 $generated@@55)) ($generated@@53 ($generated@@32 $generated@@56 $generated@@57) $generated@@24 $generated@@55))
 :pattern ( ($generated@@53 ($generated@@32 $generated@@56 $generated@@57) $generated@@24 $generated@@55))
))))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@58 $generated@@60 $generated@@59) $generated@@59)
 :pattern ( ($generated@@58 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@30 $generated@@61 $generated@@62) (forall (($generated@@63 T@U) ) (!  (=> ($generated@@33 $generated@@61 $generated@@63) ($generated@@33 $generated@@62 $generated@@63))
 :pattern ( ($generated@@33 $generated@@61 $generated@@63))
 :pattern ( ($generated@@33 $generated@@62 $generated@@63))
)))
 :pattern ( ($generated@@30 $generated@@61 $generated@@62))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@64 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@64 $generated@@67 $generated@@66))
)))
(assert (= ($generated@@1 $generated@@69) 3))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@68 $generated@@69 $generated@@71 ($generated@@70 $generated@@72)) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@33 $generated@@71 $generated@@73) ($generated@@23 $generated@@73 $generated@@72))
 :pattern ( ($generated@@33 $generated@@71 $generated@@73))
)))
 :pattern ( ($generated@@68 $generated@@69 $generated@@71 ($generated@@70 $generated@@72)))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@53 ($generated@@65 $generated@@78 $generated@@75) $generated@@76 $generated@@77) ($generated@@74 $generated@@78 $generated@@75 $generated@@76 $generated@@77))
 :pattern ( ($generated@@53 ($generated@@65 $generated@@78 $generated@@75) $generated@@76 $generated@@77))
)))
(assert (= ($generated@@1 $generated@@79) 4))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (or ($generated@@28 ($generated@@58 $generated@@79 $generated@@80) ($generated@@58 $generated@@79 $generated@@81)) (and (< 2 $generated@@20) (and ($generated@@23 $generated@@80 $generated@@18) ($generated@@23 $generated@@81 $generated@@18)))) (and (and (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@80)) ($generated@@29 ($generated@@58 $generated@@79 $generated@@81))) (=> ($generated@@30 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) ($generated@@31 ($generated@@58 $generated@@79 $generated@@81))) (and (forall (($generated@@82 T@U) ) (!  (=> ($generated@@23 $generated@@82 $generated@@19) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@80)) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) $generated@@82) (and ($generated@@34 $generated@@82 ($generated@@58 $generated@@79 $generated@@81)) ($generated@@34 $generated@@82 ($generated@@58 $generated@@79 $generated@@80))))))
 :pattern ( ($generated@@32 $generated@@82 $generated@@80))
 :pattern ( ($generated@@32 $generated@@82 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@82))
)) (=> (forall (($generated@@83 T@U) ) (!  (=> ($generated@@23 $generated@@83 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) $generated@@83) (= ($generated@@32 $generated@@83 ($generated@@58 $generated@@79 $generated@@81)) ($generated@@32 $generated@@83 ($generated@@58 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@32 $generated@@83 $generated@@80))
 :pattern ( ($generated@@32 $generated@@83 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@83))
)) (forall (($generated@@84 T@U) ) (!  (=> ($generated@@23 $generated@@84 $generated@@19) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@80)) (=> (not ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) $generated@@84)) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@81)) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@81)) $generated@@84) (and ($generated@@34 $generated@@84 ($generated@@58 $generated@@79 $generated@@81)) ($generated@@22 $generated@@84 ($generated@@58 $generated@@79 $generated@@80))))))))
 :pattern ( ($generated@@21 $generated@@84 $generated@@80))
 :pattern ( ($generated@@32 $generated@@84 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@81) $generated@@84))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@84))
)))))) (= ($generated@@27 true ($generated@@58 $generated@@79 $generated@@80) ($generated@@58 $generated@@79 $generated@@81))  (and (and ($generated@@30 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) ($generated@@31 ($generated@@58 $generated@@79 $generated@@81))) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@23 $generated@@85 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) $generated@@85) (= ($generated@@32 $generated@@85 ($generated@@58 $generated@@79 $generated@@81)) ($generated@@32 $generated@@85 ($generated@@58 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@32 $generated@@85 $generated@@80))
 :pattern ( ($generated@@32 $generated@@85 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@85))
))) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@23 $generated@@86 $generated@@19) (=> (and (not ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@80)) $generated@@86)) ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@81)) $generated@@86)) (= ($generated@@32 $generated@@86 ($generated@@58 $generated@@79 $generated@@81)) ($generated@@21 $generated@@86 ($generated@@58 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@21 $generated@@86 $generated@@80))
 :pattern ( ($generated@@32 $generated@@86 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@81) $generated@@86))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@86))
))))))
 :weight 3
 :pattern ( ($generated@@27 true ($generated@@58 $generated@@79 $generated@@80) ($generated@@58 $generated@@79 $generated@@81)))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (or ($generated@@43 ($generated@@58 $generated@@79 $generated@@87) ($generated@@58 $generated@@79 $generated@@88)) (and (< 2 $generated@@20) (and ($generated@@23 $generated@@87 $generated@@18) ($generated@@23 $generated@@88 $generated@@18)))) (and (and (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@87)) ($generated@@29 ($generated@@58 $generated@@79 $generated@@88))) (=> ($generated@@30 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) ($generated@@31 ($generated@@58 $generated@@79 $generated@@88))) (and (forall (($generated@@89 T@U) ) (!  (=> ($generated@@23 $generated@@89 $generated@@19) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@87)) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) $generated@@89) (and ($generated@@34 $generated@@89 ($generated@@58 $generated@@79 $generated@@88)) ($generated@@34 $generated@@89 ($generated@@58 $generated@@79 $generated@@87))))))
 :pattern ( ($generated@@32 $generated@@89 $generated@@87))
 :pattern ( ($generated@@32 $generated@@89 $generated@@88))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@87) $generated@@89))
)) (=> (forall (($generated@@90 T@U) ) (!  (=> ($generated@@23 $generated@@90 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) $generated@@90) (= ($generated@@32 $generated@@90 ($generated@@58 $generated@@79 $generated@@88)) ($generated@@32 $generated@@90 ($generated@@58 $generated@@79 $generated@@87)))))
 :pattern ( ($generated@@32 $generated@@90 $generated@@87))
 :pattern ( ($generated@@32 $generated@@90 $generated@@88))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@87) $generated@@90))
)) (forall (($generated@@91 T@U) ) (!  (=> ($generated@@23 $generated@@91 $generated@@19) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@87)) (=> (not ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) $generated@@91)) (and ($generated@@29 ($generated@@58 $generated@@79 $generated@@88)) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@88)) $generated@@91) (and ($generated@@34 $generated@@91 ($generated@@58 $generated@@79 $generated@@88)) ($generated@@22 $generated@@91 ($generated@@58 $generated@@79 $generated@@87))))))))
 :pattern ( ($generated@@21 $generated@@91 $generated@@87))
 :pattern ( ($generated@@32 $generated@@91 $generated@@88))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@88) $generated@@91))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@87) $generated@@91))
)))))) (= ($generated@@42 true ($generated@@58 $generated@@79 $generated@@87) ($generated@@58 $generated@@79 $generated@@88))  (and (and ($generated@@30 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) ($generated@@31 ($generated@@58 $generated@@79 $generated@@88))) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@23 $generated@@92 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) $generated@@92) (= ($generated@@32 $generated@@92 ($generated@@58 $generated@@79 $generated@@88)) ($generated@@32 $generated@@92 ($generated@@58 $generated@@79 $generated@@87)))))
 :pattern ( ($generated@@32 $generated@@92 $generated@@87))
 :pattern ( ($generated@@32 $generated@@92 $generated@@88))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@87) $generated@@92))
))) (forall (($generated@@93 T@U) ) (!  (=> ($generated@@23 $generated@@93 $generated@@19) (=> (and (not ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@87)) $generated@@93)) ($generated@@33 ($generated@@31 ($generated@@58 $generated@@79 $generated@@88)) $generated@@93)) (= ($generated@@32 $generated@@93 ($generated@@58 $generated@@79 $generated@@88)) ($generated@@21 $generated@@93 ($generated@@58 $generated@@79 $generated@@87)))))
 :pattern ( ($generated@@21 $generated@@93 $generated@@87))
 :pattern ( ($generated@@32 $generated@@93 $generated@@88))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@88) $generated@@93))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@87) $generated@@93))
))))))
 :weight 3
 :pattern ( ($generated@@42 true ($generated@@58 $generated@@79 $generated@@87) ($generated@@58 $generated@@79 $generated@@88)))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@23 ($generated@@65 $generated@@96 $generated@@94) $generated@@95) ($generated@@68 $generated@@96 $generated@@94 $generated@@95))
 :pattern ( ($generated@@23 ($generated@@65 $generated@@96 $generated@@94) $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@17 $generated@@97) (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> ($generated@@23 $generated@@99 $generated@@97) ($generated@@53 $generated@@99 $generated@@97 $generated@@98))
 :pattern ( ($generated@@53 $generated@@99 $generated@@97 $generated@@98))
)))
 :pattern ( ($generated@@17 $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@74 $generated@@69 $generated@@100 ($generated@@70 $generated@@101) $generated@@102) (forall (($generated@@103 T@U) ) (!  (=> ($generated@@33 $generated@@100 $generated@@103) ($generated@@53 $generated@@103 $generated@@101 $generated@@102))
 :pattern ( ($generated@@33 $generated@@100 $generated@@103))
)))
 :pattern ( ($generated@@74 $generated@@69 $generated@@100 ($generated@@70 $generated@@101) $generated@@102))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@104 ($generated@@70 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@70 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@106 ($generated@@70 $generated@@107)) $generated)
 :pattern ( ($generated@@70 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@64 $generated@@109 ($generated@@65 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@65 $generated@@109 $generated@@108))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@110 T@U) ) (!  (=> (or ($generated@@29 $generated@@110) (and (< 0 $generated@@20) ($generated@@23 $generated@@110 $generated@@18))) ($generated@@68 $generated@@69 ($generated@@31 $generated@@110) ($generated@@70 $generated@@19)))
 :pattern ( ($generated@@31 $generated@@110))
))))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@111 $generated@@121 $generated@@122 $generated@@123 ($generated@@117 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@127 $generated@@124) $generated@@126 $generated@@127) $generated@@124)
 :weight 0
)) (and (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (or (= $generated@@133 $generated@@135) (= ($generated@@111 $generated@@128 $generated@@129 $generated@@130 ($generated@@117 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@133 $generated@@134 $generated@@131) $generated@@135 $generated@@136) ($generated@@111 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@135 $generated@@136)))
 :weight 0
)) (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@143 $generated@@145) (= ($generated@@111 $generated@@137 $generated@@138 $generated@@139 ($generated@@117 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@142 $generated@@143 $generated@@140) $generated@@144 $generated@@145) ($generated@@111 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@144 $generated@@145)))
 :weight 0
)))) (= ($generated@@1 $generated@@112) 5)) (= ($generated@@1 $generated@@113) 6)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@115 $generated@@146 $generated@@147 ($generated@@118 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@148) $generated@@150) $generated@@148)
 :weight 0
))) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@155 $generated@@156) (= ($generated@@115 $generated@@151 $generated@@152 ($generated@@118 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@153) $generated@@156) ($generated@@115 $generated@@151 $generated@@152 $generated@@154 $generated@@156)))
 :weight 0
))) (forall (($generated@@157 T@T) ($generated@@158 T@T) ) (= ($generated@@1 ($generated@@116 $generated@@157 $generated@@158)) 7))) (forall (($generated@@159 T@T) ($generated@@160 T@T) ) (! (= ($generated@@119 ($generated@@116 $generated@@159 $generated@@160)) $generated@@159)
 :pattern ( ($generated@@116 $generated@@159 $generated@@160))
))) (forall (($generated@@161 T@T) ($generated@@162 T@T) ) (! (= ($generated@@120 ($generated@@116 $generated@@161 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@116 $generated@@161 $generated@@162))
))))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 Bool) ($generated@@167 T@U) ($generated@@168 T@U) ) (! (= ($generated@@6 ($generated@@111 $generated@@112 $generated@@113 $generated@@2 ($generated@@114 $generated@@163 $generated@@164 $generated@@165 $generated@@166) $generated@@167 $generated@@168))  (=> (and (or (not (= $generated@@167 $generated@@163)) (not true)) ($generated@@6 ($generated@@64 $generated@@2 ($generated@@115 $generated@@113 $generated@@79 ($generated@@115 $generated@@112 ($generated@@116 $generated@@113 $generated@@79) $generated@@164 $generated@@167) $generated@@165)))) $generated@@166))
 :pattern ( ($generated@@111 $generated@@112 $generated@@113 $generated@@2 ($generated@@114 $generated@@163 $generated@@164 $generated@@165 $generated@@166) $generated@@167 $generated@@168))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> (and (or ($generated@@22 $generated@@170 $generated@@171) (and (< 0 $generated@@20) (and (and ($generated@@23 $generated@@170 $generated@@19) ($generated@@53 $generated@@170 $generated@@19 $generated@@169)) (and ($generated@@23 $generated@@171 $generated@@18) ($generated@@53 $generated@@171 $generated@@18 $generated@@169))))) ($generated@@54 $generated@@169)) ($generated@@53 ($generated@@21 $generated@@170 $generated@@171) $generated@@24 $generated@@169))
 :pattern ( ($generated@@53 ($generated@@21 $generated@@170 $generated@@171) $generated@@24 $generated@@169))
))))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (!  (=> ($generated@@23 $generated@@172 ($generated@@70 $generated@@173)) (and (= ($generated@@65 $generated@@69 ($generated@@64 $generated@@69 $generated@@172)) $generated@@172) ($generated@@68 $generated@@69 ($generated@@64 $generated@@69 $generated@@172) ($generated@@70 $generated@@173))))
 :pattern ( ($generated@@23 $generated@@172 ($generated@@70 $generated@@173)))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@T) ) (! (= ($generated@@65 $generated@@175 ($generated@@58 $generated@@175 $generated@@174)) ($generated@@58 $generated@@79 ($generated@@65 $generated@@175 $generated@@174)))
 :pattern ( ($generated@@65 $generated@@175 ($generated@@58 $generated@@175 $generated@@174)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@176 () Bool)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 (T@U) Bool)
(declare-fun $generated@@181 () T@U)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () Bool)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@189  (and (=> (= (ControlFlow 0 7) (- 0 8)) ($generated@@42 $generated@@176 $generated@@177 $generated@@178)) (=> ($generated@@42 $generated@@176 $generated@@177 $generated@@178) (=> (and ($generated@@54 $generated@@179) ($generated@@180 $generated@@179)) (=> (and (and (and ($generated@@22 $generated@@181 $generated@@177) ($generated@@22 $generated@@181 $generated@@178)) (= ($generated@@21 $generated@@181 $generated@@177) ($generated@@21 $generated@@181 $generated@@178))) (and (= $generated@@182 $generated@@179) (= (ControlFlow 0 7) (- 0 6)))) (= ($generated@@32 $generated@@181 $generated@@183) ($generated@@21 $generated@@181 $generated@@178))))))))
(let (($generated@@190  (=> ($generated@@53 $generated@@181 $generated@@19 $generated@@182) (=> (and ($generated@@53 $generated@@183 $generated@@18 $generated@@182) (= (ControlFlow 0 5) (- 0 4))) ($generated@@33 ($generated@@31 $generated@@183) $generated@@181)))))
(let (($generated@@191  (=> (and (and ($generated@@29 $generated@@178) (=> (not ($generated@@33 ($generated@@31 $generated@@178) $generated@@181)) ($generated@@29 $generated@@183))) (and (not ($generated@@33 ($generated@@31 $generated@@178) $generated@@181)) ($generated@@33 ($generated@@31 $generated@@183) $generated@@181))) (and (=> (= (ControlFlow 0 9) 5) $generated@@190) (=> (= (ControlFlow 0 9) 7) $generated@@189)))))
(let (($generated@@192  (=> (and ($generated@@33 ($generated@@31 $generated@@178) $generated@@181) (= (ControlFlow 0 11) 9)) $generated@@191)))
(let (($generated@@193  (=> (and (and (not ($generated@@33 ($generated@@31 $generated@@178) $generated@@181)) ($generated@@53 $generated@@183 $generated@@18 $generated@@182)) (and ($generated@@29 $generated@@183) (= (ControlFlow 0 10) 9))) $generated@@191)))
(let (($generated@@194  (=> ($generated@@23 $generated@@181 $generated@@19) (=> (and ($generated@@53 $generated@@178 $generated@@18 $generated@@182) ($generated@@29 $generated@@178)) (and (=> (= (ControlFlow 0 12) 10) $generated@@193) (=> (= (ControlFlow 0 12) 11) $generated@@192))))))
(let (($generated@@195  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@27 $generated@@184 $generated@@178 $generated@@183))))
(let (($generated@@196  (=> (and (forall (($generated@@197 T@U) ) (!  (=> (and ($generated@@23 $generated@@197 $generated@@19) (and (not ($generated@@33 ($generated@@31 $generated@@178) $generated@@197)) ($generated@@33 ($generated@@31 $generated@@183) $generated@@197))) (= ($generated@@32 $generated@@197 $generated@@183) ($generated@@21 $generated@@197 $generated@@178)))
 :pattern ( ($generated@@21 $generated@@197 $generated@@178))
 :pattern ( ($generated@@32 $generated@@197 $generated@@183))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@183) $generated@@197))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@178) $generated@@197))
)) (= (ControlFlow 0 3) 2)) $generated@@195)))
(let (($generated@@198  (=> (= $generated@@185 ($generated@@114 $generated@@186 $generated@@187 $generated@@0 false)) (=> (and (and (and ($generated@@54 $generated@@188) ($generated@@180 $generated@@188)) (and (= $generated@@187 $generated@@188) $generated@@176)) (and (and ($generated@@54 $generated@@182) ($generated@@180 $generated@@182)) (and (= $generated@@188 $generated@@182) $generated@@184))) (and (=> (= (ControlFlow 0 13) 12) $generated@@194) (=> (= (ControlFlow 0 13) 3) $generated@@196))))))
(let (($generated@@199  (=> (and ($generated@@54 $generated@@187) ($generated@@180 $generated@@187)) (=> (and (and ($generated@@23 $generated@@177 $generated@@18) ($generated@@53 $generated@@177 $generated@@18 $generated@@187)) (and ($generated@@23 $generated@@178 $generated@@18) ($generated@@53 $generated@@178 $generated@@18 $generated@@187))) (=> (and (and (and ($generated@@23 $generated@@183 $generated@@18) ($generated@@53 $generated@@183 $generated@@18 $generated@@187)) (= 4 $generated@@20)) (and (and ($generated@@42 $generated@@176 $generated@@177 $generated@@178) ($generated@@27 $generated@@184 $generated@@177 $generated@@183)) (and ($generated@@30 ($generated@@31 $generated@@178) ($generated@@31 $generated@@183)) (= (ControlFlow 0 14) 13)))) $generated@@198)))))
$generated@@199)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)