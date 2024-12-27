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
(declare-fun $generated@@7 () T@U)
(declare-fun $generated@@8 () T@U)
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@45 (T@U T@U T@U) Bool)
(declare-fun $generated@@46 (T@U) Bool)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@59 () T@U)
(declare-fun $generated@@60 (T@U T@U) T@U)
(declare-fun $generated@@61 (T@U) Bool)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 (T@T T@T) T@T)
(declare-fun $generated@@67 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@68 (T@T) T@T)
(declare-fun $generated@@69 (T@T) T@T)
(declare-fun $generated@@93 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@98 (T@U T@U T@U T@U T@U) Int)
(declare-fun $generated@@99 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@108 () Int)
(declare-fun $generated@@109 (Int) Int)
(declare-fun $generated@@116 (T@T T@U) T@U)
(declare-fun $generated@@119 (T@T T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@158 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@159 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@160 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@194 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (= ($generated@@30 $generated) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (! ($generated@@32 $generated@@16 $generated@@34 $generated@@33 $generated@@35)
 :pattern ( ($generated@@32 $generated@@16 $generated@@34 $generated@@33 $generated@@35))
)))
(assert ($generated@@36 $generated@@37))
(assert (= ($generated@@14 $generated@@39) 3))
(assert (forall (($generated@@43 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@43 $generated@@40)  (or (= $generated@@43 $generated@@41) (= ($generated@@42 $generated@@43) $generated@@40)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@43 $generated@@40))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@44 $generated@@37)  (or (= $generated@@44 $generated@@41) (= ($generated@@42 $generated@@44) $generated@@37)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@44 $generated@@37))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and ($generated@@45 $generated@@48 $generated@@37 $generated@@49) ($generated@@46 $generated@@49)) ($generated@@45 $generated@@48 $generated@@47 $generated@@49))
 :pattern ( ($generated@@45 $generated@@48 $generated@@37 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@51 $generated@@50 $generated@@52) ($generated@@32 $generated@@39 $generated@@51 $generated@@40 $generated@@52))
 :pattern ( ($generated@@32 $generated@@39 $generated@@51 $generated@@50 $generated@@52))
 :pattern ( ($generated@@32 $generated@@39 $generated@@51 $generated@@40 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@54 $generated@@53 $generated@@55) ($generated@@32 $generated@@39 $generated@@54 $generated@@47 $generated@@55))
 :pattern ( ($generated@@32 $generated@@39 $generated@@54 $generated@@53 $generated@@55))
 :pattern ( ($generated@@32 $generated@@39 $generated@@54 $generated@@47 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@57 $generated@@56 $generated@@58) ($generated@@32 $generated@@39 $generated@@57 $generated@@37 $generated@@58))
 :pattern ( ($generated@@32 $generated@@39 $generated@@57 $generated@@56 $generated@@58))
 :pattern ( ($generated@@32 $generated@@39 $generated@@57 $generated@@37 $generated@@58))
)))
(assert (= ($generated@@30 $generated@@59) 0))
(assert (= ($generated@@60 $generated@@3 $generated@@13) $generated@@59))
(assert  (not ($generated@@61 $generated@@59)))
(assert  (and (and (and (and (and (and (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@63 $generated@@70 $generated@@71 ($generated@@67 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@72) $generated@@74) $generated@@72)
 :weight 0
)) (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (!  (or (= $generated@@79 $generated@@80) (= ($generated@@63 $generated@@75 $generated@@76 ($generated@@67 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@80) ($generated@@63 $generated@@75 $generated@@76 $generated@@78 $generated@@80)))
 :weight 0
))) (= ($generated@@14 $generated@@64) 4)) (= ($generated@@14 $generated@@65) 5)) (forall (($generated@@81 T@T) ($generated@@82 T@T) ) (= ($generated@@14 ($generated@@66 $generated@@81 $generated@@82)) 6))) (forall (($generated@@83 T@T) ($generated@@84 T@T) ) (! (= ($generated@@68 ($generated@@66 $generated@@83 $generated@@84)) $generated@@83)
 :pattern ( ($generated@@66 $generated@@83 $generated@@84))
))) (forall (($generated@@85 T@T) ($generated@@86 T@T) ) (! (= ($generated@@69 ($generated@@66 $generated@@85 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@66 $generated@@85 $generated@@86))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@87 $generated@@40 $generated@@88)  (or (= $generated@@87 $generated@@41) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@88 $generated@@87) $generated)))))
 :pattern ( ($generated@@32 $generated@@39 $generated@@87 $generated@@40 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@89 $generated@@47 $generated@@90)  (or (= $generated@@89 $generated@@41) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@90 $generated@@89) $generated)))))
 :pattern ( ($generated@@32 $generated@@39 $generated@@89 $generated@@47 $generated@@90))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@32 $generated@@39 $generated@@91 $generated@@37 $generated@@92)  (or (= $generated@@91 $generated@@41) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@92 $generated@@91) $generated)))))
 :pattern ( ($generated@@32 $generated@@39 $generated@@91 $generated@@37 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> ($generated@@93 $generated@@94 $generated@@95) (forall (($generated@@96 T@U) ) (!  (=> ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@94 $generated@@96) $generated))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@95 $generated@@96) $generated))))
 :pattern ( ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@95 $generated@@96) $generated))
)))
 :pattern ( ($generated@@93 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> (and (and (and (and ($generated@@46 $generated@@101) ($generated@@46 $generated@@102)) (and (or (not (= $generated@@103 $generated@@41)) (not true)) ($generated@@38 $generated@@39 $generated@@103 $generated@@56))) (or ($generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@105) (and ($generated@@38 $generated@@39 $generated@@104 $generated@@40) ($generated@@38 $generated@@39 $generated@@105 $generated@@50)))) (and ($generated@@97 $generated@@101) ($generated@@93 $generated@@101 $generated@@102))) (=> (forall (($generated@@106 T@U) ($generated@@107 T@U) )  (=> (and (or (not (= $generated@@106 $generated@@41)) (not true)) (= $generated@@106 $generated@@104)) (= ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@101 $generated@@106) $generated@@107) ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@102 $generated@@106) $generated@@107)))) (= ($generated@@98 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@105) ($generated@@98 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@105))))
 :pattern ( ($generated@@97 $generated@@101) ($generated@@93 $generated@@101 $generated@@102) ($generated@@98 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@105))
)))
(assert  (=> (<= 1 $generated@@108) (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> (or ($generated@@99 $generated@@110 $generated@@111 $generated@@112 $generated@@113 $generated@@114) (and (< 1 $generated@@108) (and (and (and (and (and (and ($generated@@46 $generated@@110) ($generated@@46 $generated@@111)) ($generated@@93 $generated@@110 $generated@@111)) (and (or (not (= $generated@@112 $generated@@41)) (not true)) (and ($generated@@38 $generated@@39 $generated@@112 $generated@@56) ($generated@@32 $generated@@39 $generated@@112 $generated@@56 $generated@@110)))) (and ($generated@@38 $generated@@39 $generated@@113 $generated@@40) ($generated@@32 $generated@@39 $generated@@113 $generated@@40 $generated@@110))) (and ($generated@@38 $generated@@39 $generated@@114 $generated@@50) ($generated@@32 $generated@@39 $generated@@114 $generated@@50 $generated@@111))) (=> (or (not (= $generated@@113 $generated@@41)) (not true)) (<= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@111 $generated@@113) $generated@@59))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@110 $generated@@113) $generated@@59)))))))) (and (=> (or (not (= $generated@@113 $generated@@41)) (not true)) (= ($generated@@98 $generated@@110 $generated@@111 $generated@@112 $generated@@113 $generated@@114) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@111 $generated@@113) $generated@@59))))) (<= ($generated@@109 0) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@110 $generated@@114) $generated@@59))))))
 :pattern ( ($generated@@98 $generated@@110 $generated@@111 $generated@@112 $generated@@113 $generated@@114))
))))
(assert (forall (($generated@@115 Int) ) (! (= ($generated@@109 $generated@@115) $generated@@115)
 :pattern ( ($generated@@109 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@116 $generated@@118 $generated@@117) $generated@@117)
 :pattern ( ($generated@@116 $generated@@118 $generated@@117))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@119 $generated@@121 ($generated@@62 $generated@@121 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@62 $generated@@121 $generated@@120))
)))
(assert  (=> (<= 1 $generated@@108) (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or ($generated@@99 $generated@@122 $generated@@123 $generated@@124 $generated@@125 $generated@@126) (and (< 1 $generated@@108) (and (and (and (and (and (and ($generated@@46 $generated@@122) ($generated@@46 $generated@@123)) ($generated@@93 $generated@@122 $generated@@123)) (and (or (not (= $generated@@124 $generated@@41)) (not true)) (and ($generated@@38 $generated@@39 $generated@@124 $generated@@56) ($generated@@32 $generated@@39 $generated@@124 $generated@@56 $generated@@122)))) ($generated@@38 $generated@@39 $generated@@125 $generated@@40)) ($generated@@38 $generated@@39 $generated@@126 $generated@@50)) (=> (or (not (= $generated@@125 $generated@@41)) (not true)) (<= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@123 $generated@@125) $generated@@59))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@122 $generated@@125) $generated@@59)))))))) (= ($generated@@98 $generated@@122 $generated@@123 $generated@@124 $generated@@125 $generated@@126) (ite (= $generated@@125 $generated@@41) 2 ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@123 $generated@@125) $generated@@59))))))
 :pattern ( ($generated@@98 $generated@@122 $generated@@123 $generated@@124 $generated@@125 $generated@@126) ($generated@@46 $generated@@123))
))))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@38 $generated@@16 $generated@@127 $generated@@33) (<= ($generated@@109 0) ($generated@@21 $generated@@127)))
 :pattern ( ($generated@@38 $generated@@16 $generated@@127 $generated@@33))
)))
(assert ($generated@@61 $generated))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@45 ($generated@@119 $generated@@131 $generated@@128) $generated@@129 $generated@@130) ($generated@@32 $generated@@131 $generated@@128 $generated@@129 $generated@@130))
 :pattern ( ($generated@@45 ($generated@@119 $generated@@131 $generated@@128) $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> ($generated@@93 $generated@@132 $generated@@133) (=> ($generated@@45 $generated@@134 $generated@@135 $generated@@132) ($generated@@45 $generated@@134 $generated@@135 $generated@@133)))
 :pattern ( ($generated@@93 $generated@@132 $generated@@133) ($generated@@45 $generated@@134 $generated@@135 $generated@@132))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@T) ) (!  (=> ($generated@@93 $generated@@136 $generated@@137) (=> ($generated@@32 $generated@@140 $generated@@138 $generated@@139 $generated@@136) ($generated@@32 $generated@@140 $generated@@138 $generated@@139 $generated@@137)))
 :pattern ( ($generated@@93 $generated@@136 $generated@@137) ($generated@@32 $generated@@140 $generated@@138 $generated@@139 $generated@@136))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> (and ($generated@@46 $generated@@141) (and (or (not (= $generated@@142 $generated@@41)) (not true)) (= ($generated@@42 $generated@@142) $generated@@40))) ($generated@@38 $generated@@16 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@141 $generated@@142) $generated@@59)) $generated@@33))
 :pattern ( ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@141 $generated@@142) $generated@@59)))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@143 $generated@@50)  (and ($generated@@38 $generated@@39 $generated@@143 $generated@@40) (or (not (= $generated@@143 $generated@@41)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@143 $generated@@50))
 :pattern ( ($generated@@38 $generated@@39 $generated@@143 $generated@@40))
)))
(assert (forall (($generated@@144 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@144 $generated@@53)  (and ($generated@@38 $generated@@39 $generated@@144 $generated@@47) (or (not (= $generated@@144 $generated@@41)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@144 $generated@@53))
 :pattern ( ($generated@@38 $generated@@39 $generated@@144 $generated@@47))
)))
(assert (forall (($generated@@145 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@145 $generated@@56)  (and ($generated@@38 $generated@@39 $generated@@145 $generated@@37) (or (not (= $generated@@145 $generated@@41)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@145 $generated@@56))
 :pattern ( ($generated@@38 $generated@@39 $generated@@145 $generated@@37))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (and (and ($generated@@46 $generated@@146) (and (or (not (= $generated@@147 $generated@@41)) (not true)) (= ($generated@@42 $generated@@147) $generated@@40))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@146 $generated@@147) $generated)))) ($generated@@32 $generated@@16 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@146 $generated@@147) $generated@@59)) $generated@@33 $generated@@146))
 :pattern ( ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@146 $generated@@147) $generated@@59)))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (!  (=> ($generated@@32 $generated@@39 $generated@@148 $generated@@37 $generated@@149) ($generated@@32 $generated@@39 $generated@@148 $generated@@47 $generated@@149))
 :pattern ( ($generated@@32 $generated@@39 $generated@@148 $generated@@37 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> (or (not (= $generated@@150 $generated@@152)) (not true)) (=> (and ($generated@@93 $generated@@150 $generated@@151) ($generated@@93 $generated@@151 $generated@@152)) ($generated@@93 $generated@@150 $generated@@152)))
 :pattern ( ($generated@@93 $generated@@150 $generated@@151) ($generated@@93 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (!  (and (= ($generated@@153 ($generated@@60 $generated@@154 $generated@@155)) $generated@@154) (= ($generated@@31 ($generated@@60 $generated@@154 $generated@@155)) $generated@@155))
 :pattern ( ($generated@@60 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@62 $generated@@157 ($generated@@119 $generated@@157 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@119 $generated@@157 $generated@@156))
)))
(assert  (and (forall (($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@T) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@158 $generated@@161 $generated@@162 $generated@@163 ($generated@@160 $generated@@161 $generated@@162 $generated@@163 $generated@@165 $generated@@166 $generated@@167 $generated@@164) $generated@@166 $generated@@167) $generated@@164)
 :weight 0
)) (and (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@173 $generated@@175) (= ($generated@@158 $generated@@168 $generated@@169 $generated@@170 ($generated@@160 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@158 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (!  (or (= $generated@@183 $generated@@185) (= ($generated@@158 $generated@@177 $generated@@178 $generated@@179 ($generated@@160 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@182 $generated@@183 $generated@@180) $generated@@184 $generated@@185) ($generated@@158 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@184 $generated@@185)))
 :weight 0
)))))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 Bool) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@19 ($generated@@158 $generated@@39 $generated@@64 $generated@@15 ($generated@@159 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))  (=> (and (or (not (= $generated@@190 $generated@@186)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@187 $generated@@190) $generated@@188)))) $generated@@189))
 :pattern ( ($generated@@158 $generated@@39 $generated@@64 $generated@@15 ($generated@@159 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@192 T@U) ) (!  (=> ($generated@@38 $generated@@39 $generated@@192 $generated@@37) ($generated@@38 $generated@@39 $generated@@192 $generated@@47))
 :pattern ( ($generated@@38 $generated@@39 $generated@@192 $generated@@37))
)))
(assert (= ($generated@@193 $generated@@33) $generated@@1))
(assert (= ($generated@@194 $generated@@33) $generated@@9))
(assert (= ($generated@@193 $generated@@50) $generated@@2))
(assert (= ($generated@@194 $generated@@50) $generated@@10))
(assert (= ($generated@@193 $generated@@40) $generated@@4))
(assert (= ($generated@@194 $generated@@40) $generated@@10))
(assert (= ($generated@@193 $generated@@47) $generated@@5))
(assert (= ($generated@@194 $generated@@47) $generated@@11))
(assert (= ($generated@@193 $generated@@53) $generated@@6))
(assert (= ($generated@@194 $generated@@53) $generated@@11))
(assert (= ($generated@@193 $generated@@37) $generated@@7))
(assert (= ($generated@@194 $generated@@37) $generated@@12))
(assert (= ($generated@@193 $generated@@56) $generated@@8))
(assert (= ($generated@@194 $generated@@56) $generated@@12))
(assert (forall (($generated@@195 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@195 $generated@@47)  (or (= $generated@@195 $generated@@41) ($generated@@36 ($generated@@42 $generated@@195))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@195 $generated@@47))
)))
(assert (forall (($generated@@196 Int) ) (! (= ($generated@@119 $generated@@16 ($generated@@20 ($generated@@109 $generated@@196))) ($generated@@116 $generated@@65 ($generated@@119 $generated@@16 ($generated@@20 $generated@@196))))
 :pattern ( ($generated@@119 $generated@@16 ($generated@@20 ($generated@@109 $generated@@196))))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@T) ) (! (= ($generated@@119 $generated@@198 ($generated@@116 $generated@@198 $generated@@197)) ($generated@@116 $generated@@65 ($generated@@119 $generated@@198 $generated@@197)))
 :pattern ( ($generated@@119 $generated@@198 ($generated@@116 $generated@@198 $generated@@197)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@206  (=> (= $generated@@199 ($generated@@159 $generated@@41 $generated@@200 $generated false)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $generated@@201 $generated@@41)) (not true))) (=> (or (not (= $generated@@201 $generated@@41)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $generated@@201 $generated@@41)) (not true))) (=> (or (not (= $generated@@201 $generated@@41)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@202)) (=> ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@202) (=> (and (and (<= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@200 $generated@@201) $generated@@59))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@202 $generated@@201) $generated@@59)))) ($generated@@45 ($generated@@119 $generated@@39 $generated@@203) $generated@@37 $generated@@200)) (and ($generated@@32 $generated@@39 $generated@@201 $generated@@40 $generated@@200) ($generated@@32 $generated@@39 $generated@@204 $generated@@50 $generated@@200))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($generated@@32 $generated@@39 $generated@@203 $generated@@56 $generated@@202)) (=> ($generated@@32 $generated@@39 $generated@@203 $generated@@56 $generated@@202) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@202)) (=> ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@202) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (or (not (= $generated@@201 $generated@@41)) (not true)) (<= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@200 $generated@@201) $generated@@59))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@202 $generated@@201) $generated@@59)))))) (=> (=> (or (not (= $generated@@201 $generated@@41)) (not true)) (<= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@200 $generated@@201) $generated@@59))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@202 $generated@@201) $generated@@59))))) (=> (and ($generated@@99 $generated@@202 $generated@@200 $generated@@203 $generated@@201 $generated@@204) (= (ControlFlow 0 2) (- 0 1))) (or (not (= $generated@@201 $generated@@41)) (not true)))))))))))))))))))
(let (($generated@@207  (=> (and ($generated@@46 $generated@@202) ($generated@@97 $generated@@202)) (=> (and (and (or (not (= $generated@@203 $generated@@41)) (not true)) (and ($generated@@38 $generated@@39 $generated@@203 $generated@@56) ($generated@@32 $generated@@39 $generated@@203 $generated@@56 $generated@@205))) (and ($generated@@38 $generated@@39 $generated@@201 $generated@@50) ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@205))) (=> (and (and (and ($generated@@38 $generated@@39 $generated@@204 $generated@@50) ($generated@@32 $generated@@39 $generated@@204 $generated@@50 $generated@@200)) (= 2 $generated@@108)) (and (and (= $generated@@205 $generated@@202) (and ($generated@@93 $generated@@205 $generated@@200) ($generated@@46 $generated@@200))) (and ($generated@@32 $generated@@39 $generated@@201 $generated@@50 $generated@@205) (= (ControlFlow 0 9) 2)))) $generated@@206)))))
$generated@@207)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)