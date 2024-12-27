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
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U T@U) T@U)
(declare-fun $generated@@21 (T@U T@U) Bool)
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@28 (T@U T@U) Bool)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@33 (T@U T@U T@U) Bool)
(declare-fun $generated@@34 (T@U) Bool)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@42 (T@U) Bool)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@T T@U T@U) Bool)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@66 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@88 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@89 () T@T)
(declare-fun $generated@@90 () T@T)
(declare-fun $generated@@91 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@92 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@93 (T@T T@T) T@T)
(declare-fun $generated@@94 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@95 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@96 (T@T) T@T)
(declare-fun $generated@@97 (T@T) T@T)
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
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@25 T@U) ($generated@@26 T@U) ) (!  (=> (or ($generated@@21 $generated@@25 $generated@@26) (and (< 0 $generated@@19) (and ($generated@@22 $generated@@25 $generated@@18) ($generated@@22 $generated@@26 $generated@@23)))) ($generated@@22 ($generated@@20 $generated@@25 $generated@@26) $generated@@24))
 :pattern ( ($generated@@20 $generated@@25 $generated@@26))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> (or ($generated@@28 $generated@@31 $generated@@32) (and (< 1 $generated@@19) (and (and ($generated@@22 $generated@@31 $generated@@18) ($generated@@22 $generated@@32 $generated@@23)) ($generated@@29 ($generated@@30 $generated@@32) $generated@@31)))) ($generated@@22 ($generated@@27 $generated@@31 $generated@@32) $generated@@24))
 :pattern ( ($generated@@27 $generated@@31 $generated@@32))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> (and (or ($generated@@28 $generated@@36 $generated@@37) (and (< 1 $generated@@19) (and (and (and ($generated@@22 $generated@@36 $generated@@18) ($generated@@33 $generated@@36 $generated@@18 $generated@@35)) (and ($generated@@22 $generated@@37 $generated@@23) ($generated@@33 $generated@@37 $generated@@23 $generated@@35))) ($generated@@29 ($generated@@30 $generated@@37) $generated@@36)))) ($generated@@34 $generated@@35)) ($generated@@33 ($generated@@27 $generated@@36 $generated@@37) $generated@@24 $generated@@35))
 :pattern ( ($generated@@33 ($generated@@27 $generated@@36 $generated@@37) $generated@@24 $generated@@35))
))))
(assert (= ($generated@@1 $generated@@40) 3))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (or ($generated@@41 ($generated@@39 $generated@@40 $generated@@44) ($generated@@39 $generated@@40 $generated@@45)) (and (< 2 $generated@@19) (and ($generated@@22 $generated@@44 $generated@@23) ($generated@@22 $generated@@45 $generated@@23)))) (and (and (and ($generated@@42 ($generated@@39 $generated@@40 $generated@@44)) ($generated@@42 ($generated@@39 $generated@@40 $generated@@45))) (=> ($generated@@43 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) ($generated@@30 ($generated@@39 $generated@@40 $generated@@45))) (and (forall (($generated@@46 T@U) ) (!  (=> ($generated@@22 $generated@@46 $generated@@18) (and ($generated@@42 ($generated@@39 $generated@@40 $generated@@44)) (=> ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) $generated@@46) (and ($generated@@28 $generated@@46 ($generated@@39 $generated@@40 $generated@@45)) ($generated@@28 $generated@@46 ($generated@@39 $generated@@40 $generated@@44))))))
 :pattern ( ($generated@@27 $generated@@46 $generated@@44))
 :pattern ( ($generated@@27 $generated@@46 $generated@@45))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@44) $generated@@46))
)) (=> (forall (($generated@@47 T@U) ) (!  (=> ($generated@@22 $generated@@47 $generated@@18) (=> ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) $generated@@47) (= ($generated@@27 $generated@@47 ($generated@@39 $generated@@40 $generated@@45)) ($generated@@27 $generated@@47 ($generated@@39 $generated@@40 $generated@@44)))))
 :pattern ( ($generated@@27 $generated@@47 $generated@@44))
 :pattern ( ($generated@@27 $generated@@47 $generated@@45))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@44) $generated@@47))
)) (forall (($generated@@48 T@U) ) (!  (=> ($generated@@22 $generated@@48 $generated@@18) (and ($generated@@42 ($generated@@39 $generated@@40 $generated@@44)) (=> (not ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) $generated@@48)) (and ($generated@@42 ($generated@@39 $generated@@40 $generated@@45)) (=> ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@45)) $generated@@48) (and ($generated@@28 $generated@@48 ($generated@@39 $generated@@40 $generated@@45)) ($generated@@21 $generated@@48 ($generated@@39 $generated@@40 $generated@@44))))))))
 :pattern ( ($generated@@20 $generated@@48 $generated@@44))
 :pattern ( ($generated@@27 $generated@@48 $generated@@45))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@45) $generated@@48))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@44) $generated@@48))
)))))) (= ($generated@@38 ($generated@@39 $generated@@40 $generated@@44) ($generated@@39 $generated@@40 $generated@@45))  (and (and ($generated@@43 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) ($generated@@30 ($generated@@39 $generated@@40 $generated@@45))) (forall (($generated@@49 T@U) ) (!  (=> ($generated@@22 $generated@@49 $generated@@18) (=> ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) $generated@@49) (= ($generated@@27 $generated@@49 ($generated@@39 $generated@@40 $generated@@45)) ($generated@@27 $generated@@49 ($generated@@39 $generated@@40 $generated@@44)))))
 :pattern ( ($generated@@27 $generated@@49 $generated@@44))
 :pattern ( ($generated@@27 $generated@@49 $generated@@45))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@44) $generated@@49))
))) (forall (($generated@@50 T@U) ) (!  (=> ($generated@@22 $generated@@50 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@44)) $generated@@50)) ($generated@@29 ($generated@@30 ($generated@@39 $generated@@40 $generated@@45)) $generated@@50)) (= ($generated@@27 $generated@@50 ($generated@@39 $generated@@40 $generated@@45)) ($generated@@20 $generated@@50 ($generated@@39 $generated@@40 $generated@@44)))))
 :pattern ( ($generated@@20 $generated@@50 $generated@@44))
 :pattern ( ($generated@@27 $generated@@50 $generated@@45))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@45) $generated@@50))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@44) $generated@@50))
))))))
 :weight 3
 :pattern ( ($generated@@38 ($generated@@39 $generated@@40 $generated@@44) ($generated@@39 $generated@@40 $generated@@45)))
))))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@T) ) (! (= ($generated@@39 $generated@@52 $generated@@51) $generated@@51)
 :pattern ( ($generated@@39 $generated@@52 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@43 $generated@@53 $generated@@54) (forall (($generated@@55 T@U) ) (!  (=> ($generated@@29 $generated@@53 $generated@@55) ($generated@@29 $generated@@54 $generated@@55))
 :pattern ( ($generated@@29 $generated@@53 $generated@@55))
 :pattern ( ($generated@@29 $generated@@54 $generated@@55))
)))
 :pattern ( ($generated@@43 $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 ($generated@@56 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@56 $generated@@59 $generated@@58))
)))
(assert (= ($generated@@1 $generated@@61) 4))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@60 $generated@@61 $generated@@63 ($generated@@62 $generated@@64)) (forall (($generated@@65 T@U) ) (!  (=> ($generated@@29 $generated@@63 $generated@@65) ($generated@@22 $generated@@65 $generated@@64))
 :pattern ( ($generated@@29 $generated@@63 $generated@@65))
)))
 :pattern ( ($generated@@60 $generated@@61 $generated@@63 ($generated@@62 $generated@@64)))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@33 ($generated@@57 $generated@@70 $generated@@67) $generated@@68 $generated@@69) ($generated@@66 $generated@@70 $generated@@67 $generated@@68 $generated@@69))
 :pattern ( ($generated@@33 ($generated@@57 $generated@@70 $generated@@67) $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@22 ($generated@@57 $generated@@73 $generated@@71) $generated@@72) ($generated@@60 $generated@@73 $generated@@71 $generated@@72))
 :pattern ( ($generated@@22 ($generated@@57 $generated@@73 $generated@@71) $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@17 $generated@@74) (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> ($generated@@22 $generated@@76 $generated@@74) ($generated@@33 $generated@@76 $generated@@74 $generated@@75))
 :pattern ( ($generated@@33 $generated@@76 $generated@@74 $generated@@75))
)))
 :pattern ( ($generated@@17 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@66 $generated@@61 $generated@@77 ($generated@@62 $generated@@78) $generated@@79) (forall (($generated@@80 T@U) ) (!  (=> ($generated@@29 $generated@@77 $generated@@80) ($generated@@33 $generated@@80 $generated@@78 $generated@@79))
 :pattern ( ($generated@@29 $generated@@77 $generated@@80))
)))
 :pattern ( ($generated@@66 $generated@@61 $generated@@77 ($generated@@62 $generated@@78) $generated@@79))
)))
(assert (forall (($generated@@82 T@U) ) (! (= ($generated@@81 ($generated@@62 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@62 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@83 ($generated@@62 $generated@@84)) $generated)
 :pattern ( ($generated@@62 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@56 $generated@@86 ($generated@@57 $generated@@86 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@57 $generated@@86 $generated@@85))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@87 T@U) ) (!  (=> (or ($generated@@42 $generated@@87) (and (< 0 $generated@@19) ($generated@@22 $generated@@87 $generated@@23))) ($generated@@60 $generated@@61 ($generated@@30 $generated@@87) ($generated@@62 $generated@@18)))
 :pattern ( ($generated@@30 $generated@@87))
))))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@88 $generated@@98 $generated@@99 $generated@@100 ($generated@@94 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@103 $generated@@104) $generated@@101)
 :weight 0
)) (and (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@88 $generated@@105 $generated@@106 $generated@@107 ($generated@@94 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@111 $generated@@108) $generated@@112 $generated@@113) ($generated@@88 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@112 $generated@@113)))
 :weight 0
)) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@120 $generated@@122) (= ($generated@@88 $generated@@114 $generated@@115 $generated@@116 ($generated@@94 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@88 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)))) (= ($generated@@1 $generated@@89) 5)) (= ($generated@@1 $generated@@90) 6)) (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@92 $generated@@123 $generated@@124 ($generated@@95 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@125) $generated@@127) $generated@@125)
 :weight 0
))) (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (or (= $generated@@132 $generated@@133) (= ($generated@@92 $generated@@128 $generated@@129 ($generated@@95 $generated@@128 $generated@@129 $generated@@131 $generated@@132 $generated@@130) $generated@@133) ($generated@@92 $generated@@128 $generated@@129 $generated@@131 $generated@@133)))
 :weight 0
))) (forall (($generated@@134 T@T) ($generated@@135 T@T) ) (= ($generated@@1 ($generated@@93 $generated@@134 $generated@@135)) 7))) (forall (($generated@@136 T@T) ($generated@@137 T@T) ) (! (= ($generated@@96 ($generated@@93 $generated@@136 $generated@@137)) $generated@@136)
 :pattern ( ($generated@@93 $generated@@136 $generated@@137))
))) (forall (($generated@@138 T@T) ($generated@@139 T@T) ) (! (= ($generated@@97 ($generated@@93 $generated@@138 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@93 $generated@@138 $generated@@139))
))))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 Bool) ($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@6 ($generated@@88 $generated@@89 $generated@@90 $generated@@2 ($generated@@91 $generated@@140 $generated@@141 $generated@@142 $generated@@143) $generated@@144 $generated@@145))  (=> (and (or (not (= $generated@@144 $generated@@140)) (not true)) ($generated@@6 ($generated@@56 $generated@@2 ($generated@@92 $generated@@90 $generated@@40 ($generated@@92 $generated@@89 ($generated@@93 $generated@@90 $generated@@40) $generated@@141 $generated@@144) $generated@@142)))) $generated@@143))
 :pattern ( ($generated@@88 $generated@@89 $generated@@90 $generated@@2 ($generated@@91 $generated@@140 $generated@@141 $generated@@142 $generated@@143) $generated@@144 $generated@@145))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> (and (or ($generated@@21 $generated@@147 $generated@@148) (and (< 0 $generated@@19) (and (and ($generated@@22 $generated@@147 $generated@@18) ($generated@@33 $generated@@147 $generated@@18 $generated@@146)) (and ($generated@@22 $generated@@148 $generated@@23) ($generated@@33 $generated@@148 $generated@@23 $generated@@146))))) ($generated@@34 $generated@@146)) ($generated@@33 ($generated@@20 $generated@@147 $generated@@148) $generated@@24 $generated@@146))
 :pattern ( ($generated@@33 ($generated@@20 $generated@@147 $generated@@148) $generated@@24 $generated@@146))
))))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@22 $generated@@149 ($generated@@62 $generated@@150)) (and (= ($generated@@57 $generated@@61 ($generated@@56 $generated@@61 $generated@@149)) $generated@@149) ($generated@@60 $generated@@61 ($generated@@56 $generated@@61 $generated@@149) ($generated@@62 $generated@@150))))
 :pattern ( ($generated@@22 $generated@@149 ($generated@@62 $generated@@150)))
)))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> (or ($generated@@41 $generated@@151 $generated@@152) (and (< 2 $generated@@19) (and ($generated@@22 $generated@@151 $generated@@23) ($generated@@22 $generated@@152 $generated@@23)))) (and (and (and ($generated@@42 $generated@@151) ($generated@@42 $generated@@152)) (=> ($generated@@43 ($generated@@30 $generated@@151) ($generated@@30 $generated@@152)) (and (forall (($generated@@153 T@U) ) (!  (=> ($generated@@22 $generated@@153 $generated@@18) (and ($generated@@42 $generated@@151) (=> ($generated@@29 ($generated@@30 $generated@@151) $generated@@153) (and ($generated@@28 $generated@@153 $generated@@152) ($generated@@28 $generated@@153 $generated@@151)))))
 :pattern ( ($generated@@27 $generated@@153 $generated@@151))
 :pattern ( ($generated@@27 $generated@@153 $generated@@152))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@151) $generated@@153))
)) (=> (forall (($generated@@154 T@U) ) (!  (=> ($generated@@22 $generated@@154 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@151) $generated@@154) (= ($generated@@27 $generated@@154 $generated@@152) ($generated@@27 $generated@@154 $generated@@151))))
 :pattern ( ($generated@@27 $generated@@154 $generated@@151))
 :pattern ( ($generated@@27 $generated@@154 $generated@@152))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@151) $generated@@154))
)) (forall (($generated@@155 T@U) ) (!  (=> ($generated@@22 $generated@@155 $generated@@18) (and ($generated@@42 $generated@@151) (=> (not ($generated@@29 ($generated@@30 $generated@@151) $generated@@155)) (and ($generated@@42 $generated@@152) (=> ($generated@@29 ($generated@@30 $generated@@152) $generated@@155) (and ($generated@@28 $generated@@155 $generated@@152) ($generated@@21 $generated@@155 $generated@@151)))))))
 :pattern ( ($generated@@20 $generated@@155 $generated@@151))
 :pattern ( ($generated@@27 $generated@@155 $generated@@152))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@152) $generated@@155))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@151) $generated@@155))
)))))) (= ($generated@@38 $generated@@151 $generated@@152)  (and (and ($generated@@43 ($generated@@30 $generated@@151) ($generated@@30 $generated@@152)) (forall (($generated@@156 T@U) ) (!  (=> ($generated@@22 $generated@@156 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@151) $generated@@156) (= ($generated@@27 $generated@@156 $generated@@152) ($generated@@27 $generated@@156 $generated@@151))))
 :pattern ( ($generated@@27 $generated@@156 $generated@@151))
 :pattern ( ($generated@@27 $generated@@156 $generated@@152))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@151) $generated@@156))
))) (forall (($generated@@157 T@U) ) (!  (=> ($generated@@22 $generated@@157 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 $generated@@151) $generated@@157)) ($generated@@29 ($generated@@30 $generated@@152) $generated@@157)) (= ($generated@@27 $generated@@157 $generated@@152) ($generated@@20 $generated@@157 $generated@@151))))
 :pattern ( ($generated@@20 $generated@@157 $generated@@151))
 :pattern ( ($generated@@27 $generated@@157 $generated@@152))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@152) $generated@@157))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@151) $generated@@157))
))))))
 :pattern ( ($generated@@38 $generated@@151 $generated@@152))
))))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@T) ) (! (= ($generated@@57 $generated@@159 ($generated@@39 $generated@@159 $generated@@158)) ($generated@@39 $generated@@40 ($generated@@57 $generated@@159 $generated@@158)))
 :pattern ( ($generated@@57 $generated@@159 ($generated@@39 $generated@@159 $generated@@158)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 (T@U) Bool)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () T@U)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@169  (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> ($generated@@41 $generated@@160 $generated@@161) (or ($generated@@38 $generated@@160 $generated@@161) ($generated@@43 ($generated@@30 $generated@@160) ($generated@@30 $generated@@161))))) (=> (=> ($generated@@41 $generated@@160 $generated@@161) (or ($generated@@38 $generated@@160 $generated@@161) ($generated@@43 ($generated@@30 $generated@@160) ($generated@@30 $generated@@161)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> ($generated@@41 $generated@@160 $generated@@161) (or ($generated@@38 $generated@@160 $generated@@161) (forall (($generated@@170 T@U) ) (!  (=> ($generated@@22 $generated@@170 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@160) $generated@@170) (= ($generated@@27 $generated@@170 $generated@@161) ($generated@@27 $generated@@170 $generated@@160))))
 :pattern ( ($generated@@27 $generated@@170 $generated@@160))
 :pattern ( ($generated@@27 $generated@@170 $generated@@161))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@170))
))))) (=> (=> ($generated@@41 $generated@@160 $generated@@161) (or ($generated@@38 $generated@@160 $generated@@161) (forall (($generated@@171 T@U) ) (!  (=> ($generated@@22 $generated@@171 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@160) $generated@@171) (= ($generated@@27 $generated@@171 $generated@@161) ($generated@@27 $generated@@171 $generated@@160))))
 :pattern ( ($generated@@27 $generated@@171 $generated@@160))
 :pattern ( ($generated@@27 $generated@@171 $generated@@161))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@171))
)))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> ($generated@@41 $generated@@160 $generated@@161) (or ($generated@@38 $generated@@160 $generated@@161) (forall (($generated@@172 T@U) ) (!  (=> ($generated@@22 $generated@@172 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 $generated@@160) $generated@@172)) ($generated@@29 ($generated@@30 $generated@@161) $generated@@172)) (= ($generated@@27 $generated@@172 $generated@@161) ($generated@@20 $generated@@172 $generated@@160))))
 :pattern ( ($generated@@20 $generated@@172 $generated@@160))
 :pattern ( ($generated@@27 $generated@@172 $generated@@161))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@161) $generated@@172))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@172))
)))))))))))
(let (($generated@@173  (=> (and (and (and ($generated@@34 $generated@@162) ($generated@@163 $generated@@162)) (= $generated@@164 $generated@@162)) (and (forall (($generated@@174 T@U) ) (!  (=> (and ($generated@@22 $generated@@174 $generated@@18) ($generated@@6 ($generated@@39 $generated@@2 ($generated@@5 true)))) (= ($generated@@20 $generated@@174 $generated@@160) ($generated@@20 $generated@@174 $generated@@165)))
 :pattern ( ($generated@@20 $generated@@174 $generated@@165))
 :pattern ( ($generated@@20 $generated@@174 $generated@@160))
)) (= (ControlFlow 0 9) 6))) $generated@@169)))
(let (($generated@@175  (=> ($generated@@22 $generated@@166 $generated@@18) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@41 $generated@@160 $generated@@165) (or ($generated@@38 $generated@@160 $generated@@165) ($generated@@43 ($generated@@30 $generated@@160) ($generated@@30 $generated@@165))))) (=> (=> ($generated@@41 $generated@@160 $generated@@165) (or ($generated@@38 $generated@@160 $generated@@165) ($generated@@43 ($generated@@30 $generated@@160) ($generated@@30 $generated@@165)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@41 $generated@@160 $generated@@165) (or ($generated@@38 $generated@@160 $generated@@165) (forall (($generated@@176 T@U) ) (!  (=> ($generated@@22 $generated@@176 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@160) $generated@@176) (= ($generated@@27 $generated@@176 $generated@@165) ($generated@@27 $generated@@176 $generated@@160))))
 :pattern ( ($generated@@27 $generated@@176 $generated@@160))
 :pattern ( ($generated@@27 $generated@@176 $generated@@165))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@176))
))))) (=> (=> ($generated@@41 $generated@@160 $generated@@165) (or ($generated@@38 $generated@@160 $generated@@165) (forall (($generated@@177 T@U) ) (!  (=> ($generated@@22 $generated@@177 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@160) $generated@@177) (= ($generated@@27 $generated@@177 $generated@@165) ($generated@@27 $generated@@177 $generated@@160))))
 :pattern ( ($generated@@27 $generated@@177 $generated@@160))
 :pattern ( ($generated@@27 $generated@@177 $generated@@165))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@177))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@41 $generated@@160 $generated@@165) (or ($generated@@38 $generated@@160 $generated@@165) (forall (($generated@@178 T@U) ) (!  (=> ($generated@@22 $generated@@178 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 $generated@@160) $generated@@178)) ($generated@@29 ($generated@@30 $generated@@165) $generated@@178)) (= ($generated@@27 $generated@@178 $generated@@165) ($generated@@20 $generated@@178 $generated@@160))))
 :pattern ( ($generated@@20 $generated@@178 $generated@@160))
 :pattern ( ($generated@@27 $generated@@178 $generated@@165))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@165) $generated@@178))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@178))
))))))))))))
(let (($generated@@179  (=> (= $generated@@167 ($generated@@91 $generated@@168 $generated@@164 $generated@@0 false)) (and (=> (= (ControlFlow 0 10) 2) $generated@@175) (=> (= (ControlFlow 0 10) 9) $generated@@173)))))
(let (($generated@@180  (=> (and ($generated@@34 $generated@@164) ($generated@@163 $generated@@164)) (=> (and (and ($generated@@22 $generated@@160 $generated@@23) ($generated@@33 $generated@@160 $generated@@23 $generated@@164)) (and ($generated@@22 $generated@@165 $generated@@23) ($generated@@33 $generated@@165 $generated@@23 $generated@@164))) (=> (and (and (and (and ($generated@@22 $generated@@161 $generated@@23) ($generated@@33 $generated@@161 $generated@@23 $generated@@164)) (= 4 $generated@@19)) (and ($generated@@41 $generated@@160 $generated@@165) (and ($generated@@38 $generated@@160 $generated@@165) (and (and ($generated@@43 ($generated@@30 $generated@@160) ($generated@@30 $generated@@165)) (forall (($generated@@181 T@U) ) (!  (=> ($generated@@22 $generated@@181 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@160) $generated@@181) (= ($generated@@27 $generated@@181 $generated@@165) ($generated@@27 $generated@@181 $generated@@160))))
 :pattern ( ($generated@@27 $generated@@181 $generated@@160))
 :pattern ( ($generated@@27 $generated@@181 $generated@@165))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@181))
))) (forall (($generated@@182 T@U) ) (!  (=> ($generated@@22 $generated@@182 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 $generated@@160) $generated@@182)) ($generated@@29 ($generated@@30 $generated@@165) $generated@@182)) (= ($generated@@27 $generated@@182 $generated@@165) ($generated@@20 $generated@@182 $generated@@160))))
 :pattern ( ($generated@@20 $generated@@182 $generated@@160))
 :pattern ( ($generated@@27 $generated@@182 $generated@@165))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@165) $generated@@182))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@160) $generated@@182))
)))))) (and (and ($generated@@41 $generated@@165 $generated@@161) (and ($generated@@38 $generated@@165 $generated@@161) (and (and ($generated@@43 ($generated@@30 $generated@@165) ($generated@@30 $generated@@161)) (forall (($generated@@183 T@U) ) (!  (=> ($generated@@22 $generated@@183 $generated@@18) (=> ($generated@@29 ($generated@@30 $generated@@165) $generated@@183) (= ($generated@@27 $generated@@183 $generated@@161) ($generated@@27 $generated@@183 $generated@@165))))
 :pattern ( ($generated@@27 $generated@@183 $generated@@165))
 :pattern ( ($generated@@27 $generated@@183 $generated@@161))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@165) $generated@@183))
))) (forall (($generated@@184 T@U) ) (!  (=> ($generated@@22 $generated@@184 $generated@@18) (=> (and (not ($generated@@29 ($generated@@30 $generated@@165) $generated@@184)) ($generated@@29 ($generated@@30 $generated@@161) $generated@@184)) (= ($generated@@27 $generated@@184 $generated@@161) ($generated@@20 $generated@@184 $generated@@165))))
 :pattern ( ($generated@@20 $generated@@184 $generated@@165))
 :pattern ( ($generated@@27 $generated@@184 $generated@@161))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@161) $generated@@184))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@165) $generated@@184))
))))) (= (ControlFlow 0 11) 10))) $generated@@179)))))
$generated@@180))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)