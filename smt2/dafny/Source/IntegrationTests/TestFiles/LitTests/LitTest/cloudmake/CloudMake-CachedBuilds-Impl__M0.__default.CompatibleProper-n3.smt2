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
(declare-fun $generated@@44 (T@U T@U T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@59 (T@T T@U T@U) Bool)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@74 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@106 () T@T)
(declare-fun $generated@@107 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@108 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@109 (T@T T@T) T@T)
(declare-fun $generated@@110 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@111 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@112 (T@T) T@T)
(declare-fun $generated@@113 (T@T) T@T)
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
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (!  (=> (or ($generated@@34 $generated@@42 $generated@@43) (and (< 1 $generated@@20) (and (and ($generated@@23 $generated@@42 $generated@@19) ($generated@@23 $generated@@43 $generated@@18)) ($generated@@33 ($generated@@31 $generated@@43) $generated@@42)))) ($generated@@23 ($generated@@32 $generated@@42 $generated@@43) $generated@@24))
 :pattern ( ($generated@@32 $generated@@42 $generated@@43))
))))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (!  (=> (and (or ($generated@@34 $generated@@47 $generated@@48) (and (< 1 $generated@@20) (and (and (and ($generated@@23 $generated@@47 $generated@@19) ($generated@@44 $generated@@47 $generated@@19 $generated@@46)) (and ($generated@@23 $generated@@48 $generated@@18) ($generated@@44 $generated@@48 $generated@@18 $generated@@46))) ($generated@@33 ($generated@@31 $generated@@48) $generated@@47)))) ($generated@@45 $generated@@46)) ($generated@@44 ($generated@@32 $generated@@47 $generated@@48) $generated@@24 $generated@@46))
 :pattern ( ($generated@@44 ($generated@@32 $generated@@47 $generated@@48) $generated@@24 $generated@@46))
))))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@49 $generated@@51 $generated@@50) $generated@@50)
 :pattern ( ($generated@@49 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@30 $generated@@52 $generated@@53) (forall (($generated@@54 T@U) ) (!  (=> ($generated@@33 $generated@@52 $generated@@54) ($generated@@33 $generated@@53 $generated@@54))
 :pattern ( ($generated@@33 $generated@@52 $generated@@54))
 :pattern ( ($generated@@33 $generated@@53 $generated@@54))
)))
 :pattern ( ($generated@@30 $generated@@52 $generated@@53))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 ($generated@@55 $generated@@58 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@55 $generated@@58 $generated@@57))
)))
(assert (= ($generated@@1 $generated@@60) 3))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@59 $generated@@60 $generated@@62 ($generated@@61 $generated@@63)) (forall (($generated@@64 T@U) ) (!  (=> ($generated@@33 $generated@@62 $generated@@64) ($generated@@23 $generated@@64 $generated@@63))
 :pattern ( ($generated@@33 $generated@@62 $generated@@64))
)))
 :pattern ( ($generated@@59 $generated@@60 $generated@@62 ($generated@@61 $generated@@63)))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@67 T@U) ) (!  (=> (or ($generated@@66 $generated@@67) (and (< 2 $generated@@20) ($generated@@59 $generated@@60 $generated@@67 ($generated@@61 $generated@@18)))) (and (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (and ($generated@@23 $generated@@68 $generated@@18) ($generated@@23 $generated@@69 $generated@@18)) (=> ($generated@@33 $generated@@67 $generated@@68) (=> ($generated@@33 $generated@@67 $generated@@69) (forall (($generated@@70 T@U) ) (!  (=> ($generated@@23 $generated@@70 $generated@@19) (and ($generated@@29 $generated@@68) (=> ($generated@@33 ($generated@@31 $generated@@68) $generated@@70) (and ($generated@@29 $generated@@69) (=> ($generated@@33 ($generated@@31 $generated@@69) $generated@@70) (and ($generated@@34 $generated@@70 $generated@@68) ($generated@@34 $generated@@70 $generated@@69)))))))
 :pattern ( ($generated@@32 $generated@@70 $generated@@69))
 :pattern ( ($generated@@32 $generated@@70 $generated@@68))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@69) $generated@@70))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@68) $generated@@70))
)))))
 :pattern ( ($generated@@31 $generated@@69) ($generated@@31 $generated@@68))
 :pattern ( ($generated@@31 $generated@@69) ($generated@@33 $generated@@67 $generated@@68))
 :pattern ( ($generated@@31 $generated@@68) ($generated@@33 $generated@@67 $generated@@69))
 :pattern ( ($generated@@33 $generated@@67 $generated@@69) ($generated@@33 $generated@@67 $generated@@68))
)) (= ($generated@@65 $generated@@67) (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (!  (=> (and ($generated@@23 $generated@@71 $generated@@18) ($generated@@23 $generated@@72 $generated@@18)) (=> (and ($generated@@33 $generated@@67 $generated@@71) ($generated@@33 $generated@@67 $generated@@72)) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@23 $generated@@73 $generated@@19) (=> (and ($generated@@33 ($generated@@31 $generated@@71) $generated@@73) ($generated@@33 ($generated@@31 $generated@@72) $generated@@73)) (= ($generated@@32 $generated@@73 $generated@@71) ($generated@@32 $generated@@73 $generated@@72))))
 :pattern ( ($generated@@32 $generated@@73 $generated@@72))
 :pattern ( ($generated@@32 $generated@@73 $generated@@71))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@72) $generated@@73))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@71) $generated@@73))
))))
 :pattern ( ($generated@@31 $generated@@72) ($generated@@31 $generated@@71))
 :pattern ( ($generated@@31 $generated@@72) ($generated@@33 $generated@@67 $generated@@71))
 :pattern ( ($generated@@31 $generated@@71) ($generated@@33 $generated@@67 $generated@@72))
 :pattern ( ($generated@@33 $generated@@67 $generated@@72) ($generated@@33 $generated@@67 $generated@@71))
)))))
 :pattern ( ($generated@@65 $generated@@67))
))))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@44 ($generated@@56 $generated@@78 $generated@@75) $generated@@76 $generated@@77) ($generated@@74 $generated@@78 $generated@@75 $generated@@76 $generated@@77))
 :pattern ( ($generated@@44 ($generated@@56 $generated@@78 $generated@@75) $generated@@76 $generated@@77))
)))
(assert (= ($generated@@1 $generated@@79) 4))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (or ($generated@@28 ($generated@@49 $generated@@79 $generated@@80) ($generated@@49 $generated@@79 $generated@@81)) (and (< 2 $generated@@20) (and ($generated@@23 $generated@@80 $generated@@18) ($generated@@23 $generated@@81 $generated@@18)))) (and (and (and ($generated@@29 ($generated@@49 $generated@@79 $generated@@80)) ($generated@@29 ($generated@@49 $generated@@79 $generated@@81))) (=> ($generated@@30 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) ($generated@@31 ($generated@@49 $generated@@79 $generated@@81))) (and (forall (($generated@@82 T@U) ) (!  (=> ($generated@@23 $generated@@82 $generated@@19) (and ($generated@@29 ($generated@@49 $generated@@79 $generated@@80)) (=> ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) $generated@@82) (and ($generated@@34 $generated@@82 ($generated@@49 $generated@@79 $generated@@81)) ($generated@@34 $generated@@82 ($generated@@49 $generated@@79 $generated@@80))))))
 :pattern ( ($generated@@32 $generated@@82 $generated@@80))
 :pattern ( ($generated@@32 $generated@@82 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@82))
)) (=> (forall (($generated@@83 T@U) ) (!  (=> ($generated@@23 $generated@@83 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) $generated@@83) (= ($generated@@32 $generated@@83 ($generated@@49 $generated@@79 $generated@@81)) ($generated@@32 $generated@@83 ($generated@@49 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@32 $generated@@83 $generated@@80))
 :pattern ( ($generated@@32 $generated@@83 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@83))
)) (forall (($generated@@84 T@U) ) (!  (=> ($generated@@23 $generated@@84 $generated@@19) (and ($generated@@29 ($generated@@49 $generated@@79 $generated@@80)) (=> (not ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) $generated@@84)) (and ($generated@@29 ($generated@@49 $generated@@79 $generated@@81)) (=> ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@81)) $generated@@84) (and ($generated@@34 $generated@@84 ($generated@@49 $generated@@79 $generated@@81)) ($generated@@22 $generated@@84 ($generated@@49 $generated@@79 $generated@@80))))))))
 :pattern ( ($generated@@21 $generated@@84 $generated@@80))
 :pattern ( ($generated@@32 $generated@@84 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@81) $generated@@84))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@84))
)))))) (= ($generated@@27 true ($generated@@49 $generated@@79 $generated@@80) ($generated@@49 $generated@@79 $generated@@81))  (and (and ($generated@@30 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) ($generated@@31 ($generated@@49 $generated@@79 $generated@@81))) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@23 $generated@@85 $generated@@19) (=> ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) $generated@@85) (= ($generated@@32 $generated@@85 ($generated@@49 $generated@@79 $generated@@81)) ($generated@@32 $generated@@85 ($generated@@49 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@32 $generated@@85 $generated@@80))
 :pattern ( ($generated@@32 $generated@@85 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@85))
))) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@23 $generated@@86 $generated@@19) (=> (and (not ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@80)) $generated@@86)) ($generated@@33 ($generated@@31 ($generated@@49 $generated@@79 $generated@@81)) $generated@@86)) (= ($generated@@32 $generated@@86 ($generated@@49 $generated@@79 $generated@@81)) ($generated@@21 $generated@@86 ($generated@@49 $generated@@79 $generated@@80)))))
 :pattern ( ($generated@@21 $generated@@86 $generated@@80))
 :pattern ( ($generated@@32 $generated@@86 $generated@@81))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@81) $generated@@86))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@80) $generated@@86))
))))))
 :weight 3
 :pattern ( ($generated@@27 true ($generated@@49 $generated@@79 $generated@@80) ($generated@@49 $generated@@79 $generated@@81)))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@23 ($generated@@56 $generated@@89 $generated@@87) $generated@@88) ($generated@@59 $generated@@89 $generated@@87 $generated@@88))
 :pattern ( ($generated@@23 ($generated@@56 $generated@@89 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@17 $generated@@90) (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> ($generated@@23 $generated@@92 $generated@@90) ($generated@@44 $generated@@92 $generated@@90 $generated@@91))
 :pattern ( ($generated@@44 $generated@@92 $generated@@90 $generated@@91))
)))
 :pattern ( ($generated@@17 $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@74 $generated@@60 $generated@@93 ($generated@@61 $generated@@94) $generated@@95) (forall (($generated@@96 T@U) ) (!  (=> ($generated@@33 $generated@@93 $generated@@96) ($generated@@44 $generated@@96 $generated@@94 $generated@@95))
 :pattern ( ($generated@@33 $generated@@93 $generated@@96))
)))
 :pattern ( ($generated@@74 $generated@@60 $generated@@93 ($generated@@61 $generated@@94) $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@97 ($generated@@61 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@61 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ) (! (= ($generated@@99 ($generated@@61 $generated@@100)) $generated)
 :pattern ( ($generated@@61 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@55 $generated@@102 ($generated@@56 $generated@@102 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@56 $generated@@102 $generated@@101))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@103 T@U) ) (!  (=> (or ($generated@@29 $generated@@103) (and (< 0 $generated@@20) ($generated@@23 $generated@@103 $generated@@18))) ($generated@@59 $generated@@60 ($generated@@31 $generated@@103) ($generated@@61 $generated@@19)))
 :pattern ( ($generated@@31 $generated@@103))
))))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@104 $generated@@114 $generated@@115 $generated@@116 ($generated@@110 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@119 $generated@@120) $generated@@117)
 :weight 0
)) (and (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (or (= $generated@@126 $generated@@128) (= ($generated@@104 $generated@@121 $generated@@122 $generated@@123 ($generated@@110 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@127 $generated@@124) $generated@@128 $generated@@129) ($generated@@104 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@128 $generated@@129)))
 :weight 0
)) (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@136 $generated@@138) (= ($generated@@104 $generated@@130 $generated@@131 $generated@@132 ($generated@@110 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@137 $generated@@138) ($generated@@104 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@137 $generated@@138)))
 :weight 0
)))) (= ($generated@@1 $generated@@105) 5)) (= ($generated@@1 $generated@@106) 6)) (forall (($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@108 $generated@@139 $generated@@140 ($generated@@111 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@141) $generated@@143) $generated@@141)
 :weight 0
))) (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (or (= $generated@@148 $generated@@149) (= ($generated@@108 $generated@@144 $generated@@145 ($generated@@111 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@146) $generated@@149) ($generated@@108 $generated@@144 $generated@@145 $generated@@147 $generated@@149)))
 :weight 0
))) (forall (($generated@@150 T@T) ($generated@@151 T@T) ) (= ($generated@@1 ($generated@@109 $generated@@150 $generated@@151)) 7))) (forall (($generated@@152 T@T) ($generated@@153 T@T) ) (! (= ($generated@@112 ($generated@@109 $generated@@152 $generated@@153)) $generated@@152)
 :pattern ( ($generated@@109 $generated@@152 $generated@@153))
))) (forall (($generated@@154 T@T) ($generated@@155 T@T) ) (! (= ($generated@@113 ($generated@@109 $generated@@154 $generated@@155)) $generated@@155)
 :pattern ( ($generated@@109 $generated@@154 $generated@@155))
))))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 Bool) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@6 ($generated@@104 $generated@@105 $generated@@106 $generated@@2 ($generated@@107 $generated@@156 $generated@@157 $generated@@158 $generated@@159) $generated@@160 $generated@@161))  (=> (and (or (not (= $generated@@160 $generated@@156)) (not true)) ($generated@@6 ($generated@@55 $generated@@2 ($generated@@108 $generated@@106 $generated@@79 ($generated@@108 $generated@@105 ($generated@@109 $generated@@106 $generated@@79) $generated@@157 $generated@@160) $generated@@158)))) $generated@@159))
 :pattern ( ($generated@@104 $generated@@105 $generated@@106 $generated@@2 ($generated@@107 $generated@@156 $generated@@157 $generated@@158 $generated@@159) $generated@@160 $generated@@161))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> (and (or ($generated@@22 $generated@@163 $generated@@164) (and (< 0 $generated@@20) (and (and ($generated@@23 $generated@@163 $generated@@19) ($generated@@44 $generated@@163 $generated@@19 $generated@@162)) (and ($generated@@23 $generated@@164 $generated@@18) ($generated@@44 $generated@@164 $generated@@18 $generated@@162))))) ($generated@@45 $generated@@162)) ($generated@@44 ($generated@@21 $generated@@163 $generated@@164) $generated@@24 $generated@@162))
 :pattern ( ($generated@@44 ($generated@@21 $generated@@163 $generated@@164) $generated@@24 $generated@@162))
))))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@23 $generated@@165 ($generated@@61 $generated@@166)) (and (= ($generated@@56 $generated@@60 ($generated@@55 $generated@@60 $generated@@165)) $generated@@165) ($generated@@59 $generated@@60 ($generated@@55 $generated@@60 $generated@@165) ($generated@@61 $generated@@166))))
 :pattern ( ($generated@@23 $generated@@165 ($generated@@61 $generated@@166)))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@167 T@U) ) (!  (=> (or ($generated@@66 ($generated@@49 $generated@@60 $generated@@167)) (and (< 2 $generated@@20) ($generated@@59 $generated@@60 $generated@@167 ($generated@@61 $generated@@18)))) (and (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> (and ($generated@@23 $generated@@168 $generated@@18) ($generated@@23 $generated@@169 $generated@@18)) (=> ($generated@@33 ($generated@@49 $generated@@60 $generated@@167) $generated@@168) (=> ($generated@@33 ($generated@@49 $generated@@60 $generated@@167) $generated@@169) (forall (($generated@@170 T@U) ) (!  (=> ($generated@@23 $generated@@170 $generated@@19) (and ($generated@@29 $generated@@168) (=> ($generated@@33 ($generated@@31 $generated@@168) $generated@@170) (and ($generated@@29 $generated@@169) (=> ($generated@@33 ($generated@@31 $generated@@169) $generated@@170) (and ($generated@@34 $generated@@170 $generated@@168) ($generated@@34 $generated@@170 $generated@@169)))))))
 :pattern ( ($generated@@32 $generated@@170 $generated@@169))
 :pattern ( ($generated@@32 $generated@@170 $generated@@168))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@169) $generated@@170))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@168) $generated@@170))
)))))
 :pattern ( ($generated@@31 $generated@@169) ($generated@@31 $generated@@168))
 :pattern ( ($generated@@31 $generated@@169) ($generated@@33 $generated@@167 $generated@@168))
 :pattern ( ($generated@@31 $generated@@168) ($generated@@33 $generated@@167 $generated@@169))
 :pattern ( ($generated@@33 $generated@@167 $generated@@169) ($generated@@33 $generated@@167 $generated@@168))
)) (= ($generated@@65 ($generated@@49 $generated@@60 $generated@@167)) (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@23 $generated@@171 $generated@@18) ($generated@@23 $generated@@172 $generated@@18)) (=> (and ($generated@@33 ($generated@@49 $generated@@60 $generated@@167) $generated@@171) ($generated@@33 ($generated@@49 $generated@@60 $generated@@167) $generated@@172)) (forall (($generated@@173 T@U) ) (!  (=> ($generated@@23 $generated@@173 $generated@@19) (=> (and ($generated@@33 ($generated@@31 $generated@@171) $generated@@173) ($generated@@33 ($generated@@31 $generated@@172) $generated@@173)) (= ($generated@@32 $generated@@173 $generated@@171) ($generated@@32 $generated@@173 $generated@@172))))
 :pattern ( ($generated@@32 $generated@@173 $generated@@172))
 :pattern ( ($generated@@32 $generated@@173 $generated@@171))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@172) $generated@@173))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@171) $generated@@173))
))))
 :pattern ( ($generated@@31 $generated@@172) ($generated@@31 $generated@@171))
 :pattern ( ($generated@@31 $generated@@172) ($generated@@33 $generated@@167 $generated@@171))
 :pattern ( ($generated@@31 $generated@@171) ($generated@@33 $generated@@167 $generated@@172))
 :pattern ( ($generated@@33 $generated@@167 $generated@@172) ($generated@@33 $generated@@167 $generated@@171))
)))))
 :weight 3
 :pattern ( ($generated@@65 ($generated@@49 $generated@@60 $generated@@167)))
))))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@T) ) (! (= ($generated@@56 $generated@@175 ($generated@@49 $generated@@175 $generated@@174)) ($generated@@49 $generated@@79 ($generated@@56 $generated@@175 $generated@@174)))
 :pattern ( ($generated@@56 $generated@@175 ($generated@@49 $generated@@175 $generated@@174)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 (T@U) Bool)
(declare-fun $generated@@181 () Bool)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@184  (=> (= $generated@@176 ($generated@@107 $generated@@177 $generated@@178 $generated@@0 false)) (=> (and (and (and ($generated@@45 $generated@@179) ($generated@@180 $generated@@179)) (= $generated@@178 $generated@@179)) (and (and $generated@@181 (= (ControlFlow 0 2) (- 0 1))) ($generated@@66 $generated@@182))) (or ($generated@@65 $generated@@182) (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (and ($generated@@23 $generated@@185 $generated@@18) ($generated@@23 $generated@@186 $generated@@18)) (=> (and ($generated@@33 $generated@@182 $generated@@185) ($generated@@33 $generated@@182 $generated@@186)) (forall (($generated@@187 T@U) ) (!  (=> ($generated@@23 $generated@@187 $generated@@19) (=> (and ($generated@@33 ($generated@@31 $generated@@185) $generated@@187) ($generated@@33 ($generated@@31 $generated@@186) $generated@@187)) (= ($generated@@32 $generated@@187 $generated@@185) ($generated@@32 $generated@@187 $generated@@186))))
 :pattern ( ($generated@@32 $generated@@187 $generated@@186))
 :pattern ( ($generated@@32 $generated@@187 $generated@@185))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@186) $generated@@187))
 :pattern ( ($generated@@33 ($generated@@31 $generated@@185) $generated@@187))
))))
 :pattern ( ($generated@@31 $generated@@186) ($generated@@31 $generated@@185))
 :pattern ( ($generated@@31 $generated@@186) ($generated@@33 $generated@@182 $generated@@185))
 :pattern ( ($generated@@31 $generated@@185) ($generated@@33 $generated@@182 $generated@@186))
 :pattern ( ($generated@@33 $generated@@182 $generated@@186) ($generated@@33 $generated@@182 $generated@@185))
)))))))
(let (($generated@@188  (=> (and (and ($generated@@45 $generated@@178) ($generated@@180 $generated@@178)) (and ($generated@@23 $generated@@183 $generated@@18) ($generated@@44 $generated@@183 $generated@@18 $generated@@178))) (=> (and (and (and ($generated@@59 $generated@@60 $generated@@182 ($generated@@61 $generated@@18)) ($generated@@74 $generated@@60 $generated@@182 ($generated@@61 $generated@@18) $generated@@178)) (= 3 $generated@@20)) (and (forall (($generated@@189 T@U) ) (!  (=> ($generated@@23 $generated@@189 $generated@@18) (=> ($generated@@33 $generated@@182 $generated@@189) ($generated@@27 $generated@@181 $generated@@183 $generated@@189)))
 :pattern ( ($generated@@27 $generated@@181 $generated@@183 $generated@@189))
 :pattern ( ($generated@@33 $generated@@182 $generated@@189))
)) (= (ControlFlow 0 3) 2))) $generated@@184))))
$generated@@188)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)