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
(declare-fun $generated@@11 (T@T) Int)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 (Bool) T@U)
(declare-fun $generated@@16 (T@U) Bool)
(declare-fun $generated@@17 (Int) T@U)
(declare-fun $generated@@18 (T@U) Int)
(declare-fun $generated@@19 (Real) T@U)
(declare-fun $generated@@20 (T@U) Real)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 (T@U T@U T@U) Bool)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@T T@T) T@T)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@72 (T@U T@U T@U) Bool)
(declare-fun $generated@@79 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@84 () Int)
(declare-fun $generated@@85 (T@U T@U T@U) Bool)
(declare-fun $generated@@89 () T@U)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@93 (T@U T@U) T@U)
(declare-fun $generated@@94 (T@U) Bool)
(declare-fun $generated@@95 () T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@107 (T@U T@U) Bool)
(declare-fun $generated@@113 (T@U T@U T@U) Bool)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@146 (T@U T@U) Bool)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(declare-fun $generated@@168 (T@U) T@U)
(declare-fun $generated@@184 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@185 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@186 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@218 (T@U T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@11 $generated@@12) 0) (= ($generated@@11 $generated@@13) 1)) (= ($generated@@11 $generated@@14) 2)) (forall (($generated@@21 Bool) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Int) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Real) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10)
)
(assert (= ($generated@@27 $generated@@0) 0))
(assert (= ($generated@@28 $generated@@0) $generated@@1))
(assert  (and (and (and (and (and (and (and (and (= ($generated@@11 $generated@@35) 3) (= ($generated@@11 $generated@@39) 4)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@40 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
))) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@40 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@40 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@11 $generated@@41) 5)) (= ($generated@@11 $generated@@42) 6)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@11 ($generated@@43 $generated@@60 $generated@@61)) 7))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@43 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@43 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@43 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@43 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (and (and (and ($generated@@32 $generated@@67) ($generated@@32 $generated@@68)) (and (or (not (= $generated@@69 $generated@@33)) (not true)) ($generated@@34 $generated@@35 $generated@@69 ($generated@@36 $generated@@66)))) (and ($generated@@29 $generated@@67) ($generated@@30 $generated@@67 $generated@@68))) (=> (forall (($generated@@70 T@U) ($generated@@71 T@U) )  (=> (and (or (not (= $generated@@70 $generated@@33)) (not true)) (or (= $generated@@70 $generated@@69) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@67 $generated@@69) $generated@@44)) ($generated@@45 $generated@@35 $generated@@70)))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@67 $generated@@70) $generated@@71) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@68 $generated@@70) $generated@@71)))) (= ($generated@@31 $generated@@66 $generated@@67 $generated@@69) ($generated@@31 $generated@@66 $generated@@68 $generated@@69))))
 :pattern ( ($generated@@29 $generated@@67) ($generated@@30 $generated@@67 $generated@@68) ($generated@@31 $generated@@66 $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> (and (and (and ($generated@@32 $generated@@74) ($generated@@32 $generated@@75)) (and (or (not (= $generated@@76 $generated@@33)) (not true)) ($generated@@34 $generated@@35 $generated@@76 ($generated@@36 $generated@@73)))) (and ($generated@@29 $generated@@74) ($generated@@30 $generated@@74 $generated@@75))) (=> (forall (($generated@@77 T@U) ($generated@@78 T@U) )  (=> (and (or (not (= $generated@@77 $generated@@33)) (not true)) (or (= $generated@@77 $generated@@76) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@74 $generated@@76) $generated@@44)) ($generated@@45 $generated@@35 $generated@@77)))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@74 $generated@@77) $generated@@78) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@75 $generated@@77) $generated@@78)))) (= ($generated@@72 $generated@@73 $generated@@74 $generated@@76) ($generated@@72 $generated@@73 $generated@@75 $generated@@76))))
 :pattern ( ($generated@@29 $generated@@74) ($generated@@30 $generated@@74 $generated@@75) ($generated@@72 $generated@@73 $generated@@75 $generated@@76))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@79 $generated@@35 $generated@@82 ($generated@@36 $generated@@81) $generated@@83) ($generated@@79 $generated@@35 $generated@@82 ($generated@@80 $generated@@81) $generated@@83))
 :pattern ( ($generated@@79 $generated@@35 $generated@@82 ($generated@@36 $generated@@81) $generated@@83))
 :pattern ( ($generated@@79 $generated@@35 $generated@@82 ($generated@@80 $generated@@81) $generated@@83))
)))
(assert  (=> (<= 1 $generated@@84) (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (or ($generated@@85 $generated@@86 $generated@@87 $generated@@88) (and (< 1 $generated@@84) (and ($generated@@32 $generated@@87) (and (or (not (= $generated@@88 $generated@@33)) (not true)) (and ($generated@@34 $generated@@35 $generated@@88 ($generated@@36 $generated@@86)) ($generated@@79 $generated@@35 $generated@@88 ($generated@@36 $generated@@86) $generated@@87)))))) (=> ($generated@@31 $generated@@86 $generated@@87 $generated@@88) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@87 $generated@@88) $generated@@44)) ($generated@@45 $generated@@35 $generated@@88))))
 :pattern ( ($generated@@31 $generated@@86 $generated@@87 $generated@@88))
))))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@79 $generated@@35 $generated@@91 $generated@@89 $generated@@92) ($generated@@79 $generated@@35 $generated@@91 $generated@@90 $generated@@92))
 :pattern ( ($generated@@79 $generated@@35 $generated@@91 $generated@@89 $generated@@92))
 :pattern ( ($generated@@79 $generated@@35 $generated@@91 $generated@@90 $generated@@92))
)))
(assert (= ($generated@@27 $generated@@44) 0))
(assert (= ($generated@@93 $generated@@4 $generated@@9) $generated@@44))
(assert ($generated@@94 $generated@@44))
(assert (= ($generated@@27 $generated@@95) 0))
(assert (= ($generated@@93 $generated@@4 $generated@@10) $generated@@95))
(assert ($generated@@94 $generated@@95))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@79 $generated@@35 $generated@@97 ($generated@@80 $generated@@96) $generated@@98)  (or (= $generated@@97 $generated@@33) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@98 $generated@@97) $generated@@0)))))
 :pattern ( ($generated@@79 $generated@@35 $generated@@97 ($generated@@80 $generated@@96) $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@79 $generated@@35 $generated@@99 $generated@@90 $generated@@100)  (or (= $generated@@99 $generated@@33) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@100 $generated@@99) $generated@@0)))))
 :pattern ( ($generated@@79 $generated@@35 $generated@@99 $generated@@90 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> ($generated@@30 $generated@@101 $generated@@102) (forall (($generated@@103 T@U) ) (!  (=> ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@101 $generated@@103) $generated@@0))) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@102 $generated@@103) $generated@@0))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@102 $generated@@103) $generated@@0))
)))
 :pattern ( ($generated@@30 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@45 $generated@@105 ($generated@@38 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@38 $generated@@105 $generated@@104))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@34 $generated@@39 $generated@@108 ($generated@@106 $generated@@109)) (forall (($generated@@110 T@U) ) (!  (=> ($generated@@37 $generated@@108 $generated@@110) ($generated@@107 $generated@@110 $generated@@109))
 :pattern ( ($generated@@37 $generated@@108 $generated@@110))
)))
 :pattern ( ($generated@@34 $generated@@39 $generated@@108 ($generated@@106 $generated@@109)))
)))
(assert ($generated@@94 $generated@@0))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@112 ($generated@@36 $generated@@111))  (and ($generated@@34 $generated@@35 $generated@@112 ($generated@@80 $generated@@111)) (or (not (= $generated@@112 $generated@@33)) (not true))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@112 ($generated@@36 $generated@@111)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@112 ($generated@@80 $generated@@111)))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@113 ($generated@@45 $generated@@117 $generated@@114) $generated@@115 $generated@@116) ($generated@@79 $generated@@117 $generated@@114 $generated@@115 $generated@@116))
 :pattern ( ($generated@@113 ($generated@@45 $generated@@117 $generated@@114) $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> ($generated@@30 $generated@@118 $generated@@119) (=> ($generated@@113 $generated@@120 $generated@@121 $generated@@118) ($generated@@113 $generated@@120 $generated@@121 $generated@@119)))
 :pattern ( ($generated@@30 $generated@@118 $generated@@119) ($generated@@113 $generated@@120 $generated@@121 $generated@@118))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@T) ) (!  (=> ($generated@@30 $generated@@122 $generated@@123) (=> ($generated@@79 $generated@@126 $generated@@124 $generated@@125 $generated@@122) ($generated@@79 $generated@@126 $generated@@124 $generated@@125 $generated@@123)))
 :pattern ( ($generated@@30 $generated@@122 $generated@@123) ($generated@@79 $generated@@126 $generated@@124 $generated@@125 $generated@@122))
)))
(assert (forall (($generated@@129 T@U) ) (!  (and (= ($generated@@127 ($generated@@80 $generated@@129)) $generated@@5) (= ($generated@@128 ($generated@@80 $generated@@129)) $generated@@8))
 :pattern ( ($generated@@80 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ) (!  (and (= ($generated@@127 ($generated@@36 $generated@@130)) $generated@@6) (= ($generated@@128 ($generated@@36 $generated@@130)) $generated@@8))
 :pattern ( ($generated@@36 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@133) (and (or (not (= $generated@@134 $generated@@33)) (not true)) (= ($generated@@131 $generated@@134) ($generated@@80 $generated@@132)))) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@133 $generated@@134) $generated@@0)))) ($generated@@79 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@133 $generated@@134) $generated@@95)) ($generated@@106 $generated@@132) $generated@@133))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@133 $generated@@134) $generated@@95)) ($generated@@80 $generated@@132))
)))
(assert (forall (($generated@@135 T@U) ) (!  (=> ($generated@@107 $generated@@135 $generated@@90) (and (= ($generated@@45 $generated@@35 ($generated@@38 $generated@@35 $generated@@135)) $generated@@135) ($generated@@34 $generated@@35 ($generated@@38 $generated@@35 $generated@@135) $generated@@90)))
 :pattern ( ($generated@@107 $generated@@135 $generated@@90))
)))
(assert (forall (($generated@@136 T@U) ) (!  (=> ($generated@@107 $generated@@136 $generated@@89) (and (= ($generated@@45 $generated@@35 ($generated@@38 $generated@@35 $generated@@136)) $generated@@136) ($generated@@34 $generated@@35 ($generated@@38 $generated@@35 $generated@@136) $generated@@89)))
 :pattern ( ($generated@@107 $generated@@136 $generated@@89))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@138 ($generated@@80 $generated@@137))  (or (= $generated@@138 $generated@@33) (= ($generated@@131 $generated@@138) ($generated@@80 $generated@@137))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@138 ($generated@@80 $generated@@137)))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@139 $generated@@89)  (and ($generated@@34 $generated@@35 $generated@@139 $generated@@90) (or (not (= $generated@@139 $generated@@33)) (not true))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@139 $generated@@89))
 :pattern ( ($generated@@34 $generated@@35 $generated@@139 $generated@@90))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> (and ($generated@@32 $generated@@141) (and (or (not (= $generated@@142 $generated@@33)) (not true)) (= ($generated@@131 $generated@@142) ($generated@@80 $generated@@140)))) ($generated@@34 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@141 $generated@@142) $generated@@44)) ($generated@@106 $generated@@90)))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@141 $generated@@142) $generated@@44)) ($generated@@80 $generated@@140))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@144) (and (or (not (= $generated@@145 $generated@@33)) (not true)) (= ($generated@@131 $generated@@145) ($generated@@80 $generated@@143)))) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@144 $generated@@145) $generated@@0)))) ($generated@@79 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@144 $generated@@145) $generated@@44)) ($generated@@106 $generated@@90) $generated@@144))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@144 $generated@@145) $generated@@44)) ($generated@@80 $generated@@143))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@146 $generated@@147 $generated@@148) (= $generated@@147 $generated@@148))
 :pattern ( ($generated@@146 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (or (not (= $generated@@149 $generated@@151)) (not true)) (=> (and ($generated@@30 $generated@@149 $generated@@150) ($generated@@30 $generated@@150 $generated@@151)) ($generated@@30 $generated@@149 $generated@@151)))
 :pattern ( ($generated@@30 $generated@@149 $generated@@150) ($generated@@30 $generated@@150 $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (!  (and (= ($generated@@152 ($generated@@93 $generated@@153 $generated@@154)) $generated@@153) (= ($generated@@28 ($generated@@93 $generated@@153 $generated@@154)) $generated@@154))
 :pattern ( ($generated@@93 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@107 ($generated@@45 $generated@@157 $generated@@155) $generated@@156) ($generated@@34 $generated@@157 $generated@@155 $generated@@156))
 :pattern ( ($generated@@107 ($generated@@45 $generated@@157 $generated@@155) $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@79 $generated@@39 $generated@@158 ($generated@@106 $generated@@159) $generated@@160) (forall (($generated@@161 T@U) ) (!  (=> ($generated@@37 $generated@@158 $generated@@161) ($generated@@113 $generated@@161 $generated@@159 $generated@@160))
 :pattern ( ($generated@@37 $generated@@158 $generated@@161))
)))
 :pattern ( ($generated@@79 $generated@@39 $generated@@158 ($generated@@106 $generated@@159) $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! ($generated@@34 $generated@@35 $generated@@162 $generated@@90)
 :pattern ( ($generated@@34 $generated@@35 $generated@@162 $generated@@90))
)))
(assert (forall (($generated@@164 T@U) ) (! (= ($generated@@163 ($generated@@106 $generated@@164)) $generated@@164)
 :pattern ( ($generated@@106 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ) (! (= ($generated@@127 ($generated@@106 $generated@@165)) $generated)
 :pattern ( ($generated@@106 $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@166 ($generated@@80 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@80 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@168 ($generated@@36 $generated@@169)) $generated@@169)
 :pattern ( ($generated@@36 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@38 $generated@@171 ($generated@@45 $generated@@171 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@45 $generated@@171 $generated@@170))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> (and ($generated@@32 $generated@@173) (and (or (not (= $generated@@174 $generated@@33)) (not true)) (= ($generated@@131 $generated@@174) ($generated@@80 $generated@@172)))) ($generated@@34 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@173 $generated@@174) $generated@@95)) ($generated@@106 $generated@@172)))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@173 $generated@@174) $generated@@95)) ($generated@@80 $generated@@172))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> ($generated@@107 $generated@@175 ($generated@@106 $generated@@176)) (and (= ($generated@@45 $generated@@39 ($generated@@38 $generated@@39 $generated@@175)) $generated@@175) ($generated@@34 $generated@@39 ($generated@@38 $generated@@39 $generated@@175) ($generated@@106 $generated@@176))))
 :pattern ( ($generated@@107 $generated@@175 ($generated@@106 $generated@@176)))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> ($generated@@107 $generated@@178 ($generated@@80 $generated@@177)) (and (= ($generated@@45 $generated@@35 ($generated@@38 $generated@@35 $generated@@178)) $generated@@178) ($generated@@34 $generated@@35 ($generated@@38 $generated@@35 $generated@@178) ($generated@@80 $generated@@177))))
 :pattern ( ($generated@@107 $generated@@178 ($generated@@80 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@107 $generated@@180 ($generated@@36 $generated@@179)) (and (= ($generated@@45 $generated@@35 ($generated@@38 $generated@@35 $generated@@180)) $generated@@180) ($generated@@34 $generated@@35 ($generated@@38 $generated@@35 $generated@@180) ($generated@@36 $generated@@179))))
 :pattern ( ($generated@@107 $generated@@180 ($generated@@36 $generated@@179)))
)))
(assert (= ($generated@@127 $generated@@90) $generated@@2))
(assert (= ($generated@@128 $generated@@90) $generated@@7))
(assert (= ($generated@@127 $generated@@89) $generated@@3))
(assert (= ($generated@@128 $generated@@89) $generated@@7))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@146 $generated@@181 $generated@@182) (forall (($generated@@183 T@U) ) (! (= ($generated@@37 $generated@@181 $generated@@183) ($generated@@37 $generated@@182 $generated@@183))
 :pattern ( ($generated@@37 $generated@@181 $generated@@183))
 :pattern ( ($generated@@37 $generated@@182 $generated@@183))
)))
 :pattern ( ($generated@@146 $generated@@181 $generated@@182))
)))
(assert  (and (forall (($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@184 $generated@@187 $generated@@188 $generated@@189 ($generated@@186 $generated@@187 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@193 $generated@@190) $generated@@192 $generated@@193) $generated@@190)
 :weight 0
)) (and (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@199 $generated@@201) (= ($generated@@184 $generated@@194 $generated@@195 $generated@@196 ($generated@@186 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@184 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)) (forall (($generated@@203 T@T) ($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (or (= $generated@@209 $generated@@211) (= ($generated@@184 $generated@@203 $generated@@204 $generated@@205 ($generated@@186 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@208 $generated@@209 $generated@@206) $generated@@210 $generated@@211) ($generated@@184 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@210 $generated@@211)))
 :weight 0
)))))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@16 ($generated@@184 $generated@@35 $generated@@41 $generated@@12 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@213 $generated@@216) $generated@@214)))) ($generated@@37 $generated@@215 ($generated@@45 $generated@@35 $generated@@216))))
 :pattern ( ($generated@@184 $generated@@35 $generated@@41 $generated@@12 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert  (=> (<= 1 $generated@@84) (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (or ($generated@@85 $generated@@219 $generated@@220 $generated@@221) (and (< 1 $generated@@84) (and ($generated@@32 $generated@@220) (and (or (not (= $generated@@221 $generated@@33)) (not true)) (and ($generated@@34 $generated@@35 $generated@@221 ($generated@@36 $generated@@219)) ($generated@@79 $generated@@35 $generated@@221 ($generated@@36 $generated@@219) $generated@@220)))))) (and (=> ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@220 $generated@@221) $generated@@44)) ($generated@@45 $generated@@35 $generated@@221)) (=> (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@220 $generated@@221) $generated@@44)) ($generated@@45 $generated@@35 $generated@@33))) ($generated@@218 $generated@@219 $generated@@220 $generated@@221))) (= ($generated@@31 $generated@@219 $generated@@220 $generated@@221)  (and (and ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@220 $generated@@221) $generated@@44)) ($generated@@45 $generated@@35 $generated@@221)) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@220 $generated@@221) $generated@@44)) ($generated@@45 $generated@@35 $generated@@33)))) ($generated@@72 $generated@@219 $generated@@220 $generated@@221)))))
 :pattern ( ($generated@@31 $generated@@219 $generated@@220 $generated@@221) ($generated@@32 $generated@@220))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@228  (=> (and (and (= $generated@@222 ($generated@@185 $generated@@33 $generated@@223 $generated@@0 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@224) $generated@@44)))) ($generated@@113 ($generated@@45 $generated@@35 $generated@@224) ($generated@@80 $generated@@225) $generated@@223)) (and ($generated@@85 $generated@@225 $generated@@223 $generated@@224) ($generated@@31 $generated@@225 $generated@@223 $generated@@224))) (=> (and (and (and ($generated@@32 $generated@@226) ($generated@@29 $generated@@226)) (forall (($generated@@229 T@U) ) (!  (=> (and (or (not (= $generated@@229 $generated@@33)) (not true)) ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@229) $generated@@0)))) (or (= ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@226 $generated@@229) ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@229)) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@224) $generated@@44)) ($generated@@45 $generated@@35 $generated@@229))))
 :pattern ( ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@226 $generated@@229))
))) (and (and ($generated@@30 $generated@@223 $generated@@226) ($generated@@113 ($generated@@45 $generated@@35 $generated@@224) ($generated@@80 $generated@@225) $generated@@226)) (and ($generated@@85 $generated@@225 $generated@@226 $generated@@224) ($generated@@31 $generated@@225 $generated@@226 $generated@@224)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@79 $generated@@35 $generated@@224 ($generated@@36 $generated@@225) $generated@@223)) (=> ($generated@@79 $generated@@35 $generated@@224 ($generated@@36 $generated@@225) $generated@@223) (=> (and (and (forall (($generated@@230 T@U) ) (!  (=> (and ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@226 $generated@@224) $generated@@44)) ($generated@@45 $generated@@35 $generated@@230)) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@224) $generated@@44)) ($generated@@45 $generated@@35 $generated@@230)))) (or (not (= $generated@@230 $generated@@33)) (not true)))
 :pattern (  (or (not (= $generated@@230 $generated@@33)) (not true)))
)) (forall (($generated@@231 T@U) ) (!  (=> (and ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@226 $generated@@224) $generated@@44)) ($generated@@45 $generated@@35 $generated@@231)) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@224) $generated@@44)) ($generated@@45 $generated@@35 $generated@@231)))) (not ($generated@@16 ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@231) $generated@@0)))))
 :pattern ( ($generated@@38 $generated@@12 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@35 ($generated@@43 $generated@@41 $generated@@42) $generated@@223 $generated@@231) $generated@@0)))
))) (= (ControlFlow 0 2) (- 0 1))) ($generated@@79 $generated@@35 $generated@@224 ($generated@@36 $generated@@225) $generated@@223))))))))
(let (($generated@@232  (=> (and (and (and ($generated@@32 $generated@@223) ($generated@@29 $generated@@223)) (and (or (not (= $generated@@224 $generated@@33)) (not true)) (and ($generated@@34 $generated@@35 $generated@@224 ($generated@@36 $generated@@225)) ($generated@@79 $generated@@35 $generated@@224 ($generated@@36 $generated@@225) $generated@@223)))) (and (and ($generated@@107 $generated@@227 $generated@@225) ($generated@@113 $generated@@227 $generated@@225 $generated@@223)) (and (= 2 $generated@@84) (= (ControlFlow 0 4) 2)))) $generated@@228)))
$generated@@232)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)