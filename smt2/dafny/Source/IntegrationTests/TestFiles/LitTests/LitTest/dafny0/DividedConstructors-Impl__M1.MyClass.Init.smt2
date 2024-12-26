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
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 (T@T) Int)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 (Bool) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (Real) T@U)
(declare-fun $generated@@25 (T@U) Real)
(declare-fun $generated@@32 () Int)
(declare-fun $generated@@33 (T@U) Int)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 (T@T T@T) T@T)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@67 (T@U) Int)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@73 (T@T T@U T@U) Bool)
(declare-fun $generated@@75 () T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 (T@U T@U) T@U)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@81 () T@U)
(declare-fun $generated@@82 () T@U)
(declare-fun $generated@@85 (T@U T@U) Bool)
(declare-fun $generated@@89 (Int) Int)
(declare-fun $generated@@91 (Real) Real)
(declare-fun $generated@@93 (T@T T@U) T@U)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@102 () T@T)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@129 (Int) T@U)
(declare-fun $generated@@130 (T@U) Int)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@134 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@171 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@16 $generated@@17) 0) (= ($generated@@16 $generated@@18) 1)) (= ($generated@@16 $generated@@19) 2)) (forall (($generated@@26 Bool) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Int) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Real) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15)
)
(assert  (and (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@35 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@35 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@35 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@16 $generated@@36) 3)) (= ($generated@@16 $generated@@37) 4)) (= ($generated@@16 $generated@@38) 5)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@16 ($generated@@39 $generated@@59 $generated@@60)) 6))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@39 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@39 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@39 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@39 $generated@@63 $generated@@64))
))))
(assert  (=> (< 0 $generated@@32) (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@65) (and (or (not (= $generated@@66 $generated@@41)) (not true)) (= ($generated@@42 $generated@@66) $generated@@43))) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@65 $generated@@66) $generated@@5)))) ($generated@@44 $generated@@18 ($generated@@22 ($generated@@33 $generated@@66)) $generated@@0 $generated@@65))
 :pattern ( ($generated@@33 $generated@@66) ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@65 $generated@@66) $generated@@5)))
))))
(assert (= ($generated@@67 $generated@@5) 0))
(assert (= ($generated@@68 $generated) $generated@@2))
(assert (= ($generated@@68 $generated@@0) $generated@@3))
(assert (= ($generated@@68 $generated@@1) $generated@@4))
(assert (= ($generated@@69 $generated@@5) $generated@@6))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! ($generated@@44 $generated@@18 $generated@@71 $generated@@70 $generated@@72)
 :pattern ( ($generated@@44 $generated@@18 $generated@@71 $generated@@70 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ) (! (= ($generated@@73 $generated@@38 $generated@@74 $generated@@43)  (or (= $generated@@74 $generated@@41) (= ($generated@@42 $generated@@74) $generated@@43)))
 :pattern ( ($generated@@73 $generated@@38 $generated@@74 $generated@@43))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@44 $generated@@38 $generated@@76 $generated@@75 $generated@@77) ($generated@@44 $generated@@38 $generated@@76 $generated@@43 $generated@@77))
 :pattern ( ($generated@@44 $generated@@38 $generated@@76 $generated@@75 $generated@@77))
 :pattern ( ($generated@@44 $generated@@38 $generated@@76 $generated@@43 $generated@@77))
)))
(assert (= ($generated@@67 $generated@@78) 0))
(assert (= ($generated@@79 $generated@@8 $generated@@13) $generated@@78))
(assert  (not ($generated@@80 $generated@@78)))
(assert (= ($generated@@67 $generated@@81) 0))
(assert (= ($generated@@79 $generated@@8 $generated@@14) $generated@@81))
(assert  (not ($generated@@80 $generated@@81)))
(assert (= ($generated@@67 $generated@@82) 0))
(assert (= ($generated@@79 $generated@@8 $generated@@15) $generated@@82))
(assert  (not ($generated@@80 $generated@@82)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (! (= ($generated@@44 $generated@@38 $generated@@83 $generated@@43 $generated@@84)  (or (= $generated@@83 $generated@@41) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@84 $generated@@83) $generated@@5)))))
 :pattern ( ($generated@@44 $generated@@38 $generated@@83 $generated@@43 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> ($generated@@85 $generated@@86 $generated@@87) (forall (($generated@@88 T@U) ) (!  (=> ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@86 $generated@@88) $generated@@5))) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@87 $generated@@88) $generated@@5))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@87 $generated@@88) $generated@@5))
)))
 :pattern ( ($generated@@85 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@90 Int) ) (! (= ($generated@@89 $generated@@90) $generated@@90)
 :pattern ( ($generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 Real) ) (! (= ($generated@@91 $generated@@92) $generated@@92)
 :pattern ( ($generated@@91 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@93 $generated@@95 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@95 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@96 $generated@@98 ($generated@@34 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@34 $generated@@98 $generated@@97))
)))
(assert  (=> (< 0 $generated@@32) (forall (($generated@@99 T@U) ) (!  (=> (and (or (not (= $generated@@99 $generated@@41)) (not true)) (= ($generated@@42 $generated@@99) $generated@@43)) ($generated@@73 $generated@@18 ($generated@@22 ($generated@@33 $generated@@99)) $generated@@0))
 :pattern ( ($generated@@33 $generated@@99))
))))
(assert (forall (($generated@@100 T@U) ) (! (= ($generated@@33 $generated@@100) ($generated@@89 17))
 :pattern ( ($generated@@33 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@73 $generated@@18 $generated@@101 $generated@@70) (<= ($generated@@89 0) ($generated@@23 $generated@@101)))
 :pattern ( ($generated@@73 $generated@@18 $generated@@101 $generated@@70))
)))
(assert ($generated@@80 $generated@@5))
(assert (= ($generated@@16 $generated@@102) 7))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@103) (and (or (not (= $generated@@104 $generated@@41)) (not true)) (= ($generated@@42 $generated@@104) $generated@@43))) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@103 $generated@@104) $generated@@5)))) ($generated@@44 $generated@@102 ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@103 $generated@@104) $generated@@78)) $generated $generated@@103))
 :pattern ( ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@103 $generated@@104) $generated@@78)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@105) (and (or (not (= $generated@@106 $generated@@41)) (not true)) (= ($generated@@42 $generated@@106) $generated@@43))) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@105 $generated@@106) $generated@@5)))) ($generated@@44 $generated@@19 ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@105 $generated@@106) $generated@@82)) $generated@@1 $generated@@105))
 :pattern ( ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@105 $generated@@106) $generated@@82)))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@T) ) (!  (=> ($generated@@85 $generated@@107 $generated@@108) (=> ($generated@@44 $generated@@111 $generated@@109 $generated@@110 $generated@@107) ($generated@@44 $generated@@111 $generated@@109 $generated@@110 $generated@@108)))
 :pattern ( ($generated@@85 $generated@@107 $generated@@108) ($generated@@44 $generated@@111 $generated@@109 $generated@@110 $generated@@107))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> (and ($generated@@40 $generated@@112) (and (or (not (= $generated@@113 $generated@@41)) (not true)) (= ($generated@@42 $generated@@113) $generated@@43))) ($generated@@73 $generated@@18 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@112 $generated@@113) $generated@@81)) $generated@@70))
 :pattern ( ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@112 $generated@@113) $generated@@81)))
)))
(assert (forall (($generated@@114 T@U) ) (! (= ($generated@@73 $generated@@38 $generated@@114 $generated@@75)  (and ($generated@@73 $generated@@38 $generated@@114 $generated@@43) (or (not (= $generated@@114 $generated@@41)) (not true))))
 :pattern ( ($generated@@73 $generated@@38 $generated@@114 $generated@@75))
 :pattern ( ($generated@@73 $generated@@38 $generated@@114 $generated@@43))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@115) (and (or (not (= $generated@@116 $generated@@41)) (not true)) (= ($generated@@42 $generated@@116) $generated@@43))) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@115 $generated@@116) $generated@@5)))) ($generated@@44 $generated@@18 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@115 $generated@@116) $generated@@81)) $generated@@70 $generated@@115))
 :pattern ( ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@115 $generated@@116) $generated@@81)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (!  (=> (or (not (= $generated@@117 $generated@@119)) (not true)) (=> (and ($generated@@85 $generated@@117 $generated@@118) ($generated@@85 $generated@@118 $generated@@119)) ($generated@@85 $generated@@117 $generated@@119)))
 :pattern ( ($generated@@85 $generated@@117 $generated@@118) ($generated@@85 $generated@@118 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (!  (and (= ($generated@@120 ($generated@@79 $generated@@121 $generated@@122)) $generated@@121) (= ($generated@@69 ($generated@@79 $generated@@121 $generated@@122)) $generated@@122))
 :pattern ( ($generated@@79 $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@T) ) (! (= ($generated@@34 $generated@@124 ($generated@@96 $generated@@124 $generated@@123)) $generated@@123)
 :pattern ( ($generated@@96 $generated@@124 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and ($generated@@40 $generated@@125) (and (or (not (= $generated@@126 $generated@@41)) (not true)) (= ($generated@@42 $generated@@126) $generated@@43))) ($generated@@73 $generated@@102 ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@125 $generated@@126) $generated@@78)) $generated))
 :pattern ( ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@125 $generated@@126) $generated@@78)))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> (and ($generated@@40 $generated@@127) (and (or (not (= $generated@@128 $generated@@41)) (not true)) (= ($generated@@42 $generated@@128) $generated@@43))) ($generated@@73 $generated@@19 ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@127 $generated@@128) $generated@@82)) $generated@@1))
 :pattern ( ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@127 $generated@@128) $generated@@82)))
)))
(assert (forall (($generated@@131 Int) ) (!  (=> (or (and (<= 0 $generated@@131) (< $generated@@131 55296)) (and (<= 57344 $generated@@131) (< $generated@@131 1114112))) (= ($generated@@130 ($generated@@129 $generated@@131)) $generated@@131))
 :pattern ( ($generated@@129 $generated@@131))
)))
(assert  (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@132 $generated@@135 $generated@@136 $generated@@137 ($generated@@134 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@140 $generated@@141) $generated@@138)
 :weight 0
)) (and (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (or (= $generated@@147 $generated@@149) (= ($generated@@132 $generated@@142 $generated@@143 $generated@@144 ($generated@@134 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@149 $generated@@150) ($generated@@132 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@149 $generated@@150)))
 :weight 0
)) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@157 $generated@@159) (= ($generated@@132 $generated@@151 $generated@@152 $generated@@153 ($generated@@134 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@132 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)))))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 Bool) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@21 ($generated@@132 $generated@@38 $generated@@36 $generated@@17 ($generated@@133 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))  (=> (and (or (not (= $generated@@164 $generated@@160)) (not true)) ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@161 $generated@@164) $generated@@162)))) $generated@@163))
 :pattern ( ($generated@@132 $generated@@38 $generated@@36 $generated@@17 ($generated@@133 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (!  (and (= ($generated@@129 ($generated@@130 $generated@@166)) $generated@@166) (or (and (<= 0 ($generated@@130 $generated@@166)) (< ($generated@@130 $generated@@166) 55296)) (and (<= 57344 ($generated@@130 $generated@@166)) (< ($generated@@130 $generated@@166) 1114112))))
 :pattern ( ($generated@@130 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> ($generated@@40 ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168) $generated@@169 $generated@@170))) ($generated@@85 $generated@@167 ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168) $generated@@169 $generated@@170))))
 :pattern ( ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@167 $generated@@168) $generated@@169 $generated@@170)))
)))
(assert (= ($generated@@68 $generated@@70) $generated@@7))
(assert (= ($generated@@171 $generated@@70) $generated@@11))
(assert (= ($generated@@68 $generated@@43) $generated@@9))
(assert (= ($generated@@171 $generated@@43) $generated@@12))
(assert (= ($generated@@68 $generated@@75) $generated@@10))
(assert (= ($generated@@171 $generated@@75) $generated@@12))
(assert (forall (($generated@@172 Int) ) (! (= ($generated@@96 $generated@@18 ($generated@@22 ($generated@@89 $generated@@172))) ($generated@@93 $generated@@37 ($generated@@96 $generated@@18 ($generated@@22 $generated@@172))))
 :pattern ( ($generated@@96 $generated@@18 ($generated@@22 ($generated@@89 $generated@@172))))
)))
(assert (forall (($generated@@173 Real) ) (! (= ($generated@@96 $generated@@19 ($generated@@24 ($generated@@91 $generated@@173))) ($generated@@93 $generated@@37 ($generated@@96 $generated@@19 ($generated@@24 $generated@@173))))
 :pattern ( ($generated@@96 $generated@@19 ($generated@@24 ($generated@@91 $generated@@173))))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@T) ) (! (= ($generated@@96 $generated@@175 ($generated@@93 $generated@@175 $generated@@174)) ($generated@@93 $generated@@37 ($generated@@96 $generated@@175 $generated@@174)))
 :pattern ( ($generated@@96 $generated@@175 ($generated@@93 $generated@@175 $generated@@174)))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! ($generated@@44 $generated@@18 $generated@@177 $generated@@0 $generated@@176)
 :pattern ( ($generated@@44 $generated@@18 $generated@@177 $generated@@0 $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! ($generated@@44 $generated@@19 $generated@@179 $generated@@1 $generated@@178)
 :pattern ( ($generated@@44 $generated@@19 $generated@@179 $generated@@1 $generated@@178))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! ($generated@@44 $generated@@102 $generated@@181 $generated $generated@@180)
 :pattern ( ($generated@@44 $generated@@102 $generated@@181 $generated $generated@@180))
)))
(assert (forall (($generated@@182 T@U) ) (! ($generated@@73 $generated@@18 $generated@@182 $generated@@0)
 :pattern ( ($generated@@73 $generated@@18 $generated@@182 $generated@@0))
)))
(assert (forall (($generated@@183 T@U) ) (! ($generated@@73 $generated@@19 $generated@@183 $generated@@1)
 :pattern ( ($generated@@73 $generated@@19 $generated@@183 $generated@@1))
)))
(assert (forall (($generated@@184 T@U) ) (! ($generated@@73 $generated@@102 $generated@@184 $generated)
 :pattern ( ($generated@@73 $generated@@102 $generated@@184 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () Real)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () Int)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 (T@U) Bool)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () Int)
(declare-fun $generated@@196 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@197  (=> (= $generated@@185 ($generated@@133 $generated@@41 $generated@@186 $generated@@5 false)) (=> (and (= $generated@@187 ($generated@@93 $generated@@102 ($generated@@129 101))) (= $generated@@188 ($generated@@91 3.14))) (=> (and (and (and (and (or (not (= $generated@@189 $generated@@41)) (not true)) ($generated@@73 $generated@@38 $generated@@189 $generated@@43)) (not ($generated@@21 ($generated@@34 $generated@@17 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189) $generated@@5))))) (and (= ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189) $generated@@78)) $generated@@187) (= ($generated@@23 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189) $generated@@81))) $generated@@190))) (and (and (= ($generated@@25 ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189) $generated@@82))) $generated@@188) (= $generated@@191 ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@186 $generated@@189) $generated@@5 ($generated@@96 $generated@@17 ($generated@@20 true)))))) (and ($generated@@40 $generated@@191) ($generated@@192 $generated@@191)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@21 ($generated@@132 $generated@@38 $generated@@36 $generated@@17 $generated@@185 $generated@@189 $generated@@78))) (=> ($generated@@21 ($generated@@132 $generated@@38 $generated@@36 $generated@@17 $generated@@185 $generated@@189 $generated@@78)) (=> (= $generated@@193 ($generated@@93 $generated@@102 ($generated@@129 120))) (=> (and (= $generated@@194 ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@191 $generated@@189 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@191 $generated@@189) $generated@@78 ($generated@@96 $generated@@102 $generated@@193)))) ($generated@@40 $generated@@194)) (=> (and (and (and ($generated@@21 ($generated@@132 $generated@@38 $generated@@36 $generated@@17 $generated@@185 $generated@@189 $generated@@81)) ($generated@@73 $generated@@18 ($generated@@22 (+ ($generated@@23 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@194 $generated@@189) $generated@@81))) ($generated@@33 $generated@@189))) $generated@@70)) (and (= $generated@@195 (+ ($generated@@23 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@194 $generated@@189) $generated@@81))) ($generated@@33 $generated@@189))) (= $generated@@196 ($generated@@45 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@194 $generated@@189 ($generated@@45 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@194 $generated@@189) $generated@@81 ($generated@@96 $generated@@18 ($generated@@22 $generated@@195))))))) (and (and ($generated@@40 $generated@@196) (= ($generated@@25 ($generated@@34 $generated@@19 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@196 $generated@@189) $generated@@82))) ($generated@@91 3.14))) (and (= ($generated@@23 ($generated@@34 $generated@@18 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@196 $generated@@189) $generated@@81))) (+ 17 $generated@@190)) (= (ControlFlow 0 2) (- 0 1))))) (= ($generated@@34 $generated@@102 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@196 $generated@@189) $generated@@78)) ($generated@@93 $generated@@102 ($generated@@129 120)))))))))))))
(let (($generated@@198  (=> (and (and (and ($generated@@40 $generated@@186) ($generated@@192 $generated@@186)) (<= ($generated@@89 0) $generated@@190)) (and (= 1 $generated@@32) (= (ControlFlow 0 4) 2))) $generated@@197)))
$generated@@198)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)