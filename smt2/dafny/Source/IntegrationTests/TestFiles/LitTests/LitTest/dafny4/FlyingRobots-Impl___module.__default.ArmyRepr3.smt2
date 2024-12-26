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
(declare-fun $generated@@27 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 (T@T T@U) T@U)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@T T@T) T@T)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@40 (T@T) T@T)
(declare-fun $generated@@41 (T@T) T@T)
(declare-fun $generated@@69 (T@U) Int)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@71 () Int)
(declare-fun $generated@@72 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@73 (T@U T@U) T@U)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@75 () T@U)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@U) Bool)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@83 (T@U T@U) T@U)
(declare-fun $generated@@90 (T@U T@U) T@U)
(declare-fun $generated@@94 () T@U)
(declare-fun $generated@@96 (T@U) Int)
(declare-fun $generated@@97 () T@U)
(declare-fun $generated@@98 () T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@106 () T@U)
(declare-fun $generated@@111 () T@U)
(declare-fun $generated@@112 (T@U T@U) T@U)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@118 (Int) Int)
(declare-fun $generated@@120 (T@T T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@130 (T@U T@U) Bool)
(declare-fun $generated@@136 (T@U T@U) Bool)
(declare-fun $generated@@140 (T@U T@U T@U) Bool)
(declare-fun $generated@@156 (T@U Int) T@U)
(declare-fun $generated@@164 (T@U T@U) Bool)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@183 (T@U) T@U)
(declare-fun $generated@@185 (T@U) T@U)
(declare-fun $generated@@187 (T@U) T@U)
(declare-fun $generated@@194 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@195 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@196 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@232 (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@27 $generated@@42 $generated@@43 ($generated@@39 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@46) $generated@@44)
 :weight 0
)) (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (!  (or (= $generated@@51 $generated@@52) (= ($generated@@27 $generated@@47 $generated@@48 ($generated@@39 $generated@@47 $generated@@48 $generated@@50 $generated@@51 $generated@@49) $generated@@52) ($generated@@27 $generated@@47 $generated@@48 $generated@@50 $generated@@52)))
 :weight 0
))) (= ($generated@@11 $generated@@28) 3)) (= ($generated@@11 $generated@@32) 4)) (= ($generated@@11 $generated@@33) 5)) (= ($generated@@11 $generated@@34) 6)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ) (= ($generated@@11 ($generated@@35 $generated@@53 $generated@@54)) 7))) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (! (= ($generated@@40 ($generated@@35 $generated@@55 $generated@@56)) $generated@@55)
 :pattern ( ($generated@@35 $generated@@55 $generated@@56))
))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@41 ($generated@@35 $generated@@57 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@35 $generated@@57 $generated@@58))
))))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@16 ($generated@@27 $generated@@28 $generated@@12 ($generated@@29 $generated@@59 $generated@@60 $generated@@61 $generated@@62 $generated@@63 $generated@@64 $generated@@65) $generated@@66)) (exists (($generated@@67 T@U) ($generated@@68 T@U) ) (!  (and (and (and ($generated@@37 $generated@@34 $generated@@67 $generated@@59) ($generated@@37 $generated@@34 $generated@@68 $generated@@60)) (and ($generated@@38 $generated@@61 ($generated@@36 $generated@@34 $generated@@67)) ($generated@@30 ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@62 $generated@@67) $generated@@63)) ($generated@@36 $generated@@34 $generated@@68)))) (= $generated@@66 ($generated@@36 $generated@@34 $generated@@68)))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@64 $generated@@67) $generated@@65)) ($generated@@36 $generated@@34 $generated@@68)))
)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@12 ($generated@@29 $generated@@59 $generated@@60 $generated@@61 $generated@@62 $generated@@63 $generated@@64 $generated@@65) $generated@@66))
)))
(assert (= ($generated@@69 $generated@@1) 0))
(assert (= ($generated@@70 $generated@@1) $generated@@2))
(assert (= ($generated@@11 $generated@@78) 8))
(assert  (=> (<= 1 $generated@@71) (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> (or ($generated@@76 $generated@@81 $generated@@82) (and (< 1 $generated@@71) (and ($generated@@77 $generated@@81) (and ($generated@@37 $generated@@78 $generated@@82 ($generated@@79 $generated@@80)) ($generated@@72 $generated@@78 $generated@@82 ($generated@@79 $generated@@80) $generated@@81))))) ($generated@@72 $generated@@32 ($generated@@73 $generated@@81 $generated@@82) ($generated@@74 $generated@@75) $generated@@81))
 :pattern ( ($generated@@72 $generated@@32 ($generated@@73 $generated@@81 $generated@@82) ($generated@@74 $generated@@75) $generated@@81))
))))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> ($generated@@30 $generated@@84 $generated@@86) ($generated@@30 ($generated@@83 $generated@@84 $generated@@85) $generated@@86))
 :pattern ( ($generated@@83 $generated@@84 $generated@@85) ($generated@@30 $generated@@84 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> ($generated@@30 $generated@@88 $generated@@89) ($generated@@30 ($generated@@83 $generated@@87 $generated@@88) $generated@@89))
 :pattern ( ($generated@@83 $generated@@87 $generated@@88) ($generated@@30 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (!  (=> ($generated@@30 $generated@@92 $generated@@93) (not ($generated@@30 ($generated@@90 $generated@@91 $generated@@92) $generated@@93)))
 :pattern ( ($generated@@90 $generated@@91 $generated@@92) ($generated@@30 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ) (!  (not ($generated@@38 $generated@@94 $generated@@95))
 :pattern ( ($generated@@38 $generated@@94 $generated@@95))
)))
(assert (= ($generated@@96 $generated@@94) 0))
(assert (forall (($generated@@100 T@U) ) (! (= ($generated@@37 $generated@@34 $generated@@100 $generated@@97)  (or (= $generated@@100 $generated@@98) (= ($generated@@99 $generated@@100) $generated@@97)))
 :pattern ( ($generated@@37 $generated@@34 $generated@@100 $generated@@97))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@83 ($generated@@83 $generated@@101 $generated@@102) $generated@@102) ($generated@@83 $generated@@101 $generated@@102))
 :pattern ( ($generated@@83 ($generated@@83 $generated@@101 $generated@@102) $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@30 ($generated@@90 $generated@@103 $generated@@104) $generated@@105)  (and ($generated@@30 $generated@@103 $generated@@105) (not ($generated@@30 $generated@@104 $generated@@105))))
 :pattern ( ($generated@@30 ($generated@@90 $generated@@103 $generated@@104) $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@72 $generated@@34 $generated@@107 $generated@@75 $generated@@108) ($generated@@72 $generated@@34 $generated@@107 $generated@@106 $generated@@108))
 :pattern ( ($generated@@72 $generated@@34 $generated@@107 $generated@@75 $generated@@108))
 :pattern ( ($generated@@72 $generated@@34 $generated@@107 $generated@@106 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@72 $generated@@34 $generated@@109 $generated@@80 $generated@@110) ($generated@@72 $generated@@34 $generated@@109 $generated@@97 $generated@@110))
 :pattern ( ($generated@@72 $generated@@34 $generated@@109 $generated@@80 $generated@@110))
 :pattern ( ($generated@@72 $generated@@34 $generated@@109 $generated@@97 $generated@@110))
)))
(assert (= ($generated@@69 $generated@@111) 0))
(assert (= ($generated@@112 $generated@@7 $generated@@10) $generated@@111))
(assert ($generated@@113 $generated@@111))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@72 $generated@@34 $generated@@114 $generated@@106 $generated@@115)  (or (= $generated@@114 $generated@@98) ($generated@@16 ($generated@@31 $generated@@12 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@115 $generated@@114) $generated@@1)))))
 :pattern ( ($generated@@72 $generated@@34 $generated@@114 $generated@@106 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@72 $generated@@34 $generated@@116 $generated@@97 $generated@@117)  (or (= $generated@@116 $generated@@98) ($generated@@16 ($generated@@31 $generated@@12 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@117 $generated@@116) $generated@@1)))))
 :pattern ( ($generated@@72 $generated@@34 $generated@@116 $generated@@97 $generated@@117))
)))
(assert (forall (($generated@@119 Int) ) (! (= ($generated@@118 $generated@@119) $generated@@119)
 :pattern ( ($generated@@118 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@T) ) (! (= ($generated@@120 $generated@@122 $generated@@121) $generated@@121)
 :pattern ( ($generated@@120 $generated@@122 $generated@@121))
)))
(assert  (=> (<= 1 $generated@@71) (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or ($generated@@76 $generated@@123 $generated@@124) (and (< 1 $generated@@71) (and ($generated@@77 $generated@@123) (and ($generated@@37 $generated@@78 $generated@@124 ($generated@@79 $generated@@80)) ($generated@@72 $generated@@78 $generated@@124 ($generated@@79 $generated@@80) $generated@@123))))) ($generated@@37 $generated@@32 ($generated@@73 $generated@@123 $generated@@124) ($generated@@74 $generated@@75)))
 :pattern ( ($generated@@73 $generated@@123 $generated@@124))
))))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@36 $generated@@126 ($generated@@31 $generated@@126 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@31 $generated@@126 $generated@@125))
)))
(assert  (=> (<= 1 $generated@@71) (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> (or ($generated@@76 $generated@@128 $generated@@129) (and (< 1 $generated@@71) (and ($generated@@77 $generated@@128) ($generated@@37 $generated@@78 $generated@@129 ($generated@@79 $generated@@80))))) (= ($generated@@73 $generated@@128 $generated@@129) ($generated@@127 ($generated@@29 $generated@@80 $generated@@75 $generated@@129 $generated@@128 $generated@@111 $generated@@128 $generated@@111))))
 :pattern ( ($generated@@73 $generated@@128 $generated@@129) ($generated@@77 $generated@@128))
))))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@130 $generated@@131 $generated@@132) (forall (($generated@@133 T@U) ) (!  (or (not ($generated@@30 $generated@@131 $generated@@133)) (not ($generated@@30 $generated@@132 $generated@@133)))
 :pattern ( ($generated@@30 $generated@@131 $generated@@133))
 :pattern ( ($generated@@30 $generated@@132 $generated@@133))
)))
 :pattern ( ($generated@@130 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@30 ($generated@@127 $generated@@134) $generated@@135) ($generated@@16 ($generated@@27 $generated@@28 $generated@@12 $generated@@134 $generated@@135)))
 :pattern ( ($generated@@30 ($generated@@127 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@37 $generated@@32 $generated@@137 ($generated@@74 $generated@@138)) (forall (($generated@@139 T@U) ) (!  (=> ($generated@@30 $generated@@137 $generated@@139) ($generated@@136 $generated@@139 $generated@@138))
 :pattern ( ($generated@@30 $generated@@137 $generated@@139))
)))
 :pattern ( ($generated@@37 $generated@@32 $generated@@137 ($generated@@74 $generated@@138)))
)))
(assert ($generated@@113 $generated@@1))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@T) ) (! (= ($generated@@140 ($generated@@36 $generated@@144 $generated@@141) $generated@@142 $generated@@143) ($generated@@72 $generated@@144 $generated@@141 $generated@@142 $generated@@143))
 :pattern ( ($generated@@140 ($generated@@36 $generated@@144 $generated@@141) $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@145 T@U) ) (!  (=> ($generated@@136 $generated@@145 $generated@@106) (and (= ($generated@@36 $generated@@34 ($generated@@31 $generated@@34 $generated@@145)) $generated@@145) ($generated@@37 $generated@@34 ($generated@@31 $generated@@34 $generated@@145) $generated@@106)))
 :pattern ( ($generated@@136 $generated@@145 $generated@@106))
)))
(assert (forall (($generated@@146 T@U) ) (!  (=> ($generated@@136 $generated@@146 $generated@@75) (and (= ($generated@@36 $generated@@34 ($generated@@31 $generated@@34 $generated@@146)) $generated@@146) ($generated@@37 $generated@@34 ($generated@@31 $generated@@34 $generated@@146) $generated@@75)))
 :pattern ( ($generated@@136 $generated@@146 $generated@@75))
)))
(assert (forall (($generated@@147 T@U) ) (!  (=> ($generated@@136 $generated@@147 $generated@@80) (and (= ($generated@@36 $generated@@34 ($generated@@31 $generated@@34 $generated@@147)) $generated@@147) ($generated@@37 $generated@@34 ($generated@@31 $generated@@34 $generated@@147) $generated@@80)))
 :pattern ( ($generated@@136 $generated@@147 $generated@@80))
)))
(assert (forall (($generated@@148 T@U) ) (!  (=> ($generated@@136 $generated@@148 $generated@@97) (and (= ($generated@@36 $generated@@34 ($generated@@31 $generated@@34 $generated@@148)) $generated@@148) ($generated@@37 $generated@@34 ($generated@@31 $generated@@34 $generated@@148) $generated@@97)))
 :pattern ( ($generated@@136 $generated@@148 $generated@@97))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@37 $generated@@34 $generated@@149 $generated@@75)  (and ($generated@@37 $generated@@34 $generated@@149 $generated@@106) (or (not (= $generated@@149 $generated@@98)) (not true))))
 :pattern ( ($generated@@37 $generated@@34 $generated@@149 $generated@@75))
 :pattern ( ($generated@@37 $generated@@34 $generated@@149 $generated@@106))
)))
(assert (forall (($generated@@150 T@U) ) (! (= ($generated@@37 $generated@@34 $generated@@150 $generated@@80)  (and ($generated@@37 $generated@@34 $generated@@150 $generated@@97) (or (not (= $generated@@150 $generated@@98)) (not true))))
 :pattern ( ($generated@@37 $generated@@34 $generated@@150 $generated@@80))
 :pattern ( ($generated@@37 $generated@@34 $generated@@150 $generated@@97))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@30 ($generated@@83 $generated@@151 $generated@@152) $generated@@153)  (or ($generated@@30 $generated@@151 $generated@@153) ($generated@@30 $generated@@152 $generated@@153)))
 :pattern ( ($generated@@30 ($generated@@83 $generated@@151 $generated@@152) $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> ($generated@@130 $generated@@154 $generated@@155) (and (= ($generated@@90 ($generated@@83 $generated@@154 $generated@@155) $generated@@154) $generated@@155) (= ($generated@@90 ($generated@@83 $generated@@154 $generated@@155) $generated@@155) $generated@@154)))
 :pattern ( ($generated@@83 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@38 $generated@@157 $generated@@158) (exists (($generated@@159 Int) ) (!  (and (and (<= 0 $generated@@159) (< $generated@@159 ($generated@@96 $generated@@157))) (= ($generated@@156 $generated@@157 $generated@@159) $generated@@158))
 :pattern ( ($generated@@156 $generated@@157 $generated@@159))
)))
 :pattern ( ($generated@@38 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> (and ($generated@@77 $generated@@160) (and (or (not (= $generated@@161 $generated@@98)) (not true)) (= ($generated@@99 $generated@@161) $generated@@97))) ($generated@@37 $generated@@32 ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@160 $generated@@161) $generated@@111)) ($generated@@74 $generated@@75)))
 :pattern ( ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@160 $generated@@161) $generated@@111)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> (and (and ($generated@@77 $generated@@162) (and (or (not (= $generated@@163 $generated@@98)) (not true)) (= ($generated@@99 $generated@@163) $generated@@97))) ($generated@@16 ($generated@@31 $generated@@12 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@162 $generated@@163) $generated@@1)))) ($generated@@72 $generated@@32 ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@162 $generated@@163) $generated@@111)) ($generated@@74 $generated@@75) $generated@@162))
 :pattern ( ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@162 $generated@@163) $generated@@111)))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@164 $generated@@165 $generated@@166) (= $generated@@165 $generated@@166))
 :pattern ( ($generated@@164 $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (and (= ($generated@@167 ($generated@@112 $generated@@168 $generated@@169)) $generated@@168) (= ($generated@@70 ($generated@@112 $generated@@168 $generated@@169)) $generated@@169))
 :pattern ( ($generated@@112 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@T) ) (! (= ($generated@@136 ($generated@@36 $generated@@172 $generated@@170) $generated@@171) ($generated@@37 $generated@@172 $generated@@170 $generated@@171))
 :pattern ( ($generated@@136 ($generated@@36 $generated@@172 $generated@@170) $generated@@171))
)))
(assert (forall (($generated@@173 T@U) ) (! (<= 0 ($generated@@96 $generated@@173))
 :pattern ( ($generated@@96 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@72 $generated@@32 $generated@@174 ($generated@@74 $generated@@175) $generated@@176) (forall (($generated@@177 T@U) ) (!  (=> ($generated@@30 $generated@@174 $generated@@177) ($generated@@140 $generated@@177 $generated@@175 $generated@@176))
 :pattern ( ($generated@@30 $generated@@174 $generated@@177))
)))
 :pattern ( ($generated@@72 $generated@@32 $generated@@174 ($generated@@74 $generated@@175) $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ) (! ($generated@@37 $generated@@34 $generated@@178 $generated@@106)
 :pattern ( ($generated@@37 $generated@@34 $generated@@178 $generated@@106))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@72 $generated@@78 $generated@@179 ($generated@@79 $generated@@180) $generated@@181) (forall (($generated@@182 Int) ) (!  (=> (and (<= 0 $generated@@182) (< $generated@@182 ($generated@@96 $generated@@179))) ($generated@@140 ($generated@@156 $generated@@179 $generated@@182) $generated@@180 $generated@@181))
 :pattern ( ($generated@@156 $generated@@179 $generated@@182))
)))
 :pattern ( ($generated@@72 $generated@@78 $generated@@179 ($generated@@79 $generated@@180) $generated@@181))
)))
(assert (forall (($generated@@184 T@U) ) (! (= ($generated@@183 ($generated@@74 $generated@@184)) $generated@@184)
 :pattern ( ($generated@@74 $generated@@184))
)))
(assert (forall (($generated@@186 T@U) ) (! (= ($generated@@185 ($generated@@74 $generated@@186)) $generated)
 :pattern ( ($generated@@74 $generated@@186))
)))
(assert (forall (($generated@@188 T@U) ) (! (= ($generated@@187 ($generated@@79 $generated@@188)) $generated@@188)
 :pattern ( ($generated@@79 $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ) (! (= ($generated@@185 ($generated@@79 $generated@@189)) $generated@@0)
 :pattern ( ($generated@@79 $generated@@189))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@T) ) (! (= ($generated@@31 $generated@@191 ($generated@@36 $generated@@191 $generated@@190)) $generated@@190)
 :pattern ( ($generated@@36 $generated@@191 $generated@@190))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@83 $generated@@192 ($generated@@83 $generated@@192 $generated@@193)) ($generated@@83 $generated@@192 $generated@@193))
 :pattern ( ($generated@@83 $generated@@192 ($generated@@83 $generated@@192 $generated@@193)))
)))
(assert  (and (forall (($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@194 $generated@@197 $generated@@198 $generated@@199 ($generated@@196 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@202 $generated@@203 $generated@@200) $generated@@202 $generated@@203) $generated@@200)
 :weight 0
)) (and (forall (($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@T) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (or (= $generated@@209 $generated@@211) (= ($generated@@194 $generated@@204 $generated@@205 $generated@@206 ($generated@@196 $generated@@204 $generated@@205 $generated@@206 $generated@@208 $generated@@209 $generated@@210 $generated@@207) $generated@@211 $generated@@212) ($generated@@194 $generated@@204 $generated@@205 $generated@@206 $generated@@208 $generated@@211 $generated@@212)))
 :weight 0
)) (forall (($generated@@213 T@T) ($generated@@214 T@T) ($generated@@215 T@T) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (or (= $generated@@219 $generated@@221) (= ($generated@@194 $generated@@213 $generated@@214 $generated@@215 ($generated@@196 $generated@@213 $generated@@214 $generated@@215 $generated@@217 $generated@@218 $generated@@219 $generated@@216) $generated@@220 $generated@@221) ($generated@@194 $generated@@213 $generated@@214 $generated@@215 $generated@@217 $generated@@220 $generated@@221)))
 :weight 0
)))))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 Bool) ($generated@@226 T@U) ($generated@@227 T@U) ) (! (= ($generated@@16 ($generated@@194 $generated@@34 $generated@@33 $generated@@12 ($generated@@195 $generated@@222 $generated@@223 $generated@@224 $generated@@225) $generated@@226 $generated@@227))  (=> (and (or (not (= $generated@@226 $generated@@222)) (not true)) ($generated@@16 ($generated@@31 $generated@@12 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@223 $generated@@226) $generated@@224)))) $generated@@225))
 :pattern ( ($generated@@194 $generated@@34 $generated@@33 $generated@@12 ($generated@@195 $generated@@222 $generated@@223 $generated@@224 $generated@@225) $generated@@226 $generated@@227))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (!  (=> ($generated@@136 $generated@@228 ($generated@@74 $generated@@229)) (and (= ($generated@@36 $generated@@32 ($generated@@31 $generated@@32 $generated@@228)) $generated@@228) ($generated@@37 $generated@@32 ($generated@@31 $generated@@32 $generated@@228) ($generated@@74 $generated@@229))))
 :pattern ( ($generated@@136 $generated@@228 ($generated@@74 $generated@@229)))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ) (!  (=> ($generated@@136 $generated@@230 ($generated@@79 $generated@@231)) (and (= ($generated@@36 $generated@@78 ($generated@@31 $generated@@78 $generated@@230)) $generated@@230) ($generated@@37 $generated@@78 ($generated@@31 $generated@@78 $generated@@230) ($generated@@79 $generated@@231))))
 :pattern ( ($generated@@136 $generated@@230 ($generated@@79 $generated@@231)))
)))
(assert (= ($generated@@185 $generated@@106) $generated@@3))
(assert (= ($generated@@232 $generated@@106) $generated@@8))
(assert (= ($generated@@185 $generated@@75) $generated@@4))
(assert (= ($generated@@232 $generated@@75) $generated@@8))
(assert (= ($generated@@185 $generated@@80) $generated@@5))
(assert (= ($generated@@232 $generated@@80) $generated@@9))
(assert (= ($generated@@185 $generated@@97) $generated@@6))
(assert (= ($generated@@232 $generated@@97) $generated@@9))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ) (! (= ($generated@@164 $generated@@233 $generated@@234) (forall (($generated@@235 T@U) ) (! (= ($generated@@30 $generated@@233 $generated@@235) ($generated@@30 $generated@@234 $generated@@235))
 :pattern ( ($generated@@30 $generated@@233 $generated@@235))
 :pattern ( ($generated@@30 $generated@@234 $generated@@235))
)))
 :pattern ( ($generated@@164 $generated@@233 $generated@@234))
)))
(assert (forall (($generated@@236 Int) ) (! (= ($generated@@36 $generated@@13 ($generated@@17 ($generated@@118 $generated@@236))) ($generated@@120 $generated@@28 ($generated@@36 $generated@@13 ($generated@@17 $generated@@236))))
 :pattern ( ($generated@@36 $generated@@13 ($generated@@17 ($generated@@118 $generated@@236))))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@T) ) (! (= ($generated@@36 $generated@@238 ($generated@@120 $generated@@238 $generated@@237)) ($generated@@120 $generated@@28 ($generated@@36 $generated@@238 $generated@@237)))
 :pattern ( ($generated@@36 $generated@@238 ($generated@@120 $generated@@238 $generated@@237)))
)))
(assert (forall (($generated@@239 T@U) ) (!  (=> (= ($generated@@96 $generated@@239) 0) (= $generated@@239 $generated@@94))
 :pattern ( ($generated@@96 $generated@@239))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@37 $generated@@78 $generated@@240 ($generated@@79 $generated@@241)) (forall (($generated@@242 Int) ) (!  (=> (and (<= 0 $generated@@242) (< $generated@@242 ($generated@@96 $generated@@240))) ($generated@@136 ($generated@@156 $generated@@240 $generated@@242) $generated@@241))
 :pattern ( ($generated@@156 $generated@@240 $generated@@242))
)))
 :pattern ( ($generated@@37 $generated@@78 $generated@@240 ($generated@@79 $generated@@241)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@247  (=> (and (= $generated@@243 ($generated@@195 $generated@@98 $generated@@244 $generated@@1 false)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@164 ($generated@@73 $generated@@244 $generated@@245) ($generated@@83 ($generated@@83 ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@244 ($generated@@31 $generated@@34 ($generated@@156 $generated@@245 ($generated@@118 0)))) $generated@@111)) ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@244 ($generated@@31 $generated@@34 ($generated@@156 $generated@@245 ($generated@@118 1)))) $generated@@111))) ($generated@@31 $generated@@32 ($generated@@27 $generated@@33 $generated@@28 ($generated@@27 $generated@@34 ($generated@@35 $generated@@33 $generated@@28) $generated@@244 ($generated@@31 $generated@@34 ($generated@@156 $generated@@245 ($generated@@118 2)))) $generated@@111)))))))
(let (($generated@@248  (=> (and ($generated@@77 $generated@@244) ($generated@@246 $generated@@244)) (=> (and (and (and ($generated@@37 $generated@@78 $generated@@245 ($generated@@79 $generated@@80)) ($generated@@72 $generated@@78 $generated@@245 ($generated@@79 $generated@@80) $generated@@244)) (= 2 $generated@@71)) (and (= ($generated@@96 $generated@@245) ($generated@@118 3)) (= (ControlFlow 0 3) 2))) $generated@@247))))
$generated@@248)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)