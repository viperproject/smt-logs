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
(declare-fun $generated@@15 (T@T) Int)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 (Bool) T@U)
(declare-fun $generated@@20 (T@U) Bool)
(declare-fun $generated@@21 (Int) T@U)
(declare-fun $generated@@22 (T@U) Int)
(declare-fun $generated@@23 (Real) T@U)
(declare-fun $generated@@24 (T@U) Real)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@U T@U) T@U)
(declare-fun $generated@@47 (T@U) Bool)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 (T@T T@T) T@T)
(declare-fun $generated@@54 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@77 () T@U)
(declare-fun $generated@@80 () Int)
(declare-fun $generated@@81 (T@U T@U T@U) Bool)
(declare-fun $generated@@82 (T@U) Bool)
(declare-fun $generated@@83 (T@U T@U T@U) Bool)
(declare-fun $generated@@84 (T@T T@U T@U) Bool)
(declare-fun $generated@@85 (T@U T@U) Bool)
(declare-fun $generated@@86 () T@T)
(declare-fun $generated@@87 (T@T T@U) T@U)
(declare-fun $generated@@88 (Int) Int)
(declare-fun $generated@@93 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@99 (T@U T@U) Bool)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@144 (T@U T@U T@U) Bool)
(declare-fun $generated@@149 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@179 (T@U) T@U)
(declare-fun $generated@@182 (T@U) T@U)
(declare-fun $generated@@184 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@15 $generated@@16) 0) (= ($generated@@15 $generated@@17) 1)) (= ($generated@@15 $generated@@18) 2)) (forall (($generated@@25 Bool) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Int) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 Real) ) (! (= ($generated@@24 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 T@U) ) (! (= ($generated@@23 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14)
)
(assert (= ($generated@@31 $generated@@4) 0))
(assert (= ($generated@@32 $generated) $generated@@1))
(assert (= ($generated@@32 $generated@@0) $generated@@2))
(assert (= ($generated@@33 $generated@@4) $generated@@5))
(assert (= ($generated@@15 $generated@@35) 3))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@38) $generated@@40) ($generated@@34 $generated@@35 $generated@@39 ($generated@@37 $generated@@38) $generated@@40))
 :pattern ( ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@38) $generated@@40))
 :pattern ( ($generated@@34 $generated@@35 $generated@@39 ($generated@@37 $generated@@38) $generated@@40))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@43 $generated@@41 $generated@@44) ($generated@@34 $generated@@35 $generated@@43 $generated@@42 $generated@@44))
 :pattern ( ($generated@@34 $generated@@35 $generated@@43 $generated@@41 $generated@@44))
 :pattern ( ($generated@@34 $generated@@35 $generated@@43 $generated@@42 $generated@@44))
)))
(assert (= ($generated@@31 $generated@@45) 0))
(assert (= ($generated@@46 $generated@@10 $generated@@13) $generated@@45))
(assert ($generated@@47 $generated@@45))
(assert  (and (and (and (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@50 $generated@@57 $generated@@58 ($generated@@54 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@50 $generated@@62 $generated@@63 ($generated@@54 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@50 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@15 $generated@@51) 4)) (= ($generated@@15 $generated@@52) 5)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (= ($generated@@15 ($generated@@53 $generated@@68 $generated@@69)) 6))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@55 ($generated@@53 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@53 $generated@@70 $generated@@71))
))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@56 ($generated@@53 $generated@@72 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@53 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@75 ($generated@@37 $generated@@74) $generated@@76)  (or (= $generated@@75 $generated@@48) ($generated@@20 ($generated@@49 $generated@@16 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@76 $generated@@75) $generated@@4)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@75 ($generated@@37 $generated@@74) $generated@@76))
)))
(assert (= ($generated@@31 $generated@@77) 0))
(assert (= ($generated@@46 $generated@@10 $generated@@14) $generated@@77))
(assert  (not ($generated@@47 $generated@@77)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@78 $generated@@42 $generated@@79)  (or (= $generated@@78 $generated@@48) ($generated@@20 ($generated@@49 $generated@@16 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@79 $generated@@78) $generated@@4)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@78 $generated@@42 $generated@@79))
)))
(assert (= ($generated@@15 $generated@@86) 7))
(assert  (=> (<= 0 $generated@@80) (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (or ($generated@@83 $generated@@89 $generated@@90 $generated@@91) (and (< 0 $generated@@80) (and ($generated@@82 $generated@@90) (and (or (not (= $generated@@91 $generated@@48)) (not true)) (and ($generated@@84 $generated@@35 $generated@@91 ($generated@@36 $generated@@89)) ($generated@@34 $generated@@35 $generated@@91 ($generated@@36 $generated@@89) $generated@@90)))))) (= ($generated@@81 $generated@@89 $generated@@90 $generated@@91)  (and ($generated@@85 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@90 $generated@@91) $generated@@45)) ($generated@@87 $generated@@35 $generated@@91)) (<= ($generated@@88 (- 0 1)) ($generated@@22 ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@90 $generated@@91) $generated@@77)))))))
 :pattern ( ($generated@@81 $generated@@89 $generated@@90 $generated@@91) ($generated@@82 $generated@@90))
))))
(assert (forall (($generated@@92 Int) ) (! (= ($generated@@88 $generated@@92) $generated@@92)
 :pattern ( ($generated@@88 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@93 $generated@@95 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@95 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@87 $generated@@97 ($generated@@49 $generated@@97 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@49 $generated@@97 $generated@@96))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@84 $generated@@86 $generated@@100 ($generated@@98 $generated@@101)) (forall (($generated@@102 T@U) ) (!  (=> ($generated@@85 $generated@@100 $generated@@102) ($generated@@99 $generated@@102 $generated@@101))
 :pattern ( ($generated@@85 $generated@@100 $generated@@102))
)))
 :pattern ( ($generated@@84 $generated@@86 $generated@@100 ($generated@@98 $generated@@101)))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (and (and ($generated@@82 $generated@@105) (and (or (not (= $generated@@106 $generated@@48)) (not true)) (= ($generated@@103 $generated@@106) ($generated@@37 $generated@@104)))) ($generated@@20 ($generated@@49 $generated@@16 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@105 $generated@@106) $generated@@4)))) ($generated@@34 $generated@@17 ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@105 $generated@@106) $generated@@77)) $generated@@0 $generated@@105))
 :pattern ( ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@105 $generated@@106) $generated@@77)) ($generated@@37 $generated@@104))
)))
(assert  (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@107 $generated@@110 $generated@@111 $generated@@112 ($generated@@109 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@107 $generated@@117 $generated@@118 $generated@@119 ($generated@@109 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@107 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@107 $generated@@126 $generated@@127 $generated@@128 ($generated@@109 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@107 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@20 ($generated@@107 $generated@@35 $generated@@51 $generated@@16 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))  (=> (and (or (not (= $generated@@140 $generated@@135)) (not true)) ($generated@@20 ($generated@@49 $generated@@16 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@136 $generated@@140) $generated@@137)))) (or (= $generated@@140 $generated@@138) ($generated@@85 $generated@@139 ($generated@@87 $generated@@35 $generated@@140)))))
 :pattern ( ($generated@@107 $generated@@35 $generated@@51 $generated@@16 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))
)))
(assert ($generated@@47 $generated@@4))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@84 $generated@@35 $generated@@143 ($generated@@36 $generated@@142))  (and ($generated@@84 $generated@@35 $generated@@143 ($generated@@37 $generated@@142)) (or (not (= $generated@@143 $generated@@48)) (not true))))
 :pattern ( ($generated@@84 $generated@@35 $generated@@143 ($generated@@36 $generated@@142)))
 :pattern ( ($generated@@84 $generated@@35 $generated@@143 ($generated@@37 $generated@@142)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@144 ($generated@@87 $generated@@148 $generated@@145) $generated@@146 $generated@@147) ($generated@@34 $generated@@148 $generated@@145 $generated@@146 $generated@@147))
 :pattern ( ($generated@@144 ($generated@@87 $generated@@148 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@150 T@U) ) (!  (and (= ($generated@@32 ($generated@@36 $generated@@150)) $generated@@8) (= ($generated@@149 ($generated@@36 $generated@@150)) $generated@@12))
 :pattern ( ($generated@@36 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (!  (and (= ($generated@@32 ($generated@@37 $generated@@151)) $generated@@9) (= ($generated@@149 ($generated@@37 $generated@@151)) $generated@@12))
 :pattern ( ($generated@@37 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ) (!  (=> ($generated@@99 $generated@@152 $generated@@42) (and (= ($generated@@87 $generated@@35 ($generated@@49 $generated@@35 $generated@@152)) $generated@@152) ($generated@@84 $generated@@35 ($generated@@49 $generated@@35 $generated@@152) $generated@@42)))
 :pattern ( ($generated@@99 $generated@@152 $generated@@42))
)))
(assert (forall (($generated@@153 T@U) ) (!  (=> ($generated@@99 $generated@@153 $generated@@41) (and (= ($generated@@87 $generated@@35 ($generated@@49 $generated@@35 $generated@@153)) $generated@@153) ($generated@@84 $generated@@35 ($generated@@49 $generated@@35 $generated@@153) $generated@@41)))
 :pattern ( ($generated@@99 $generated@@153 $generated@@41))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@84 $generated@@35 $generated@@155 ($generated@@37 $generated@@154))  (or (= $generated@@155 $generated@@48) (= ($generated@@103 $generated@@155) ($generated@@37 $generated@@154))))
 :pattern ( ($generated@@84 $generated@@35 $generated@@155 ($generated@@37 $generated@@154)))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@84 $generated@@35 $generated@@156 $generated@@41)  (and ($generated@@84 $generated@@35 $generated@@156 $generated@@42) (or (not (= $generated@@156 $generated@@48)) (not true))))
 :pattern ( ($generated@@84 $generated@@35 $generated@@156 $generated@@41))
 :pattern ( ($generated@@84 $generated@@35 $generated@@156 $generated@@42))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (=> (and ($generated@@82 $generated@@158) (and (or (not (= $generated@@159 $generated@@48)) (not true)) (= ($generated@@103 $generated@@159) ($generated@@37 $generated@@157)))) ($generated@@84 $generated@@86 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@158 $generated@@159) $generated@@45)) ($generated@@98 $generated@@41)))
 :pattern ( ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@158 $generated@@159) $generated@@45)) ($generated@@37 $generated@@157))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (and (and ($generated@@82 $generated@@161) (and (or (not (= $generated@@162 $generated@@48)) (not true)) (= ($generated@@103 $generated@@162) ($generated@@37 $generated@@160)))) ($generated@@20 ($generated@@49 $generated@@16 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@161 $generated@@162) $generated@@4)))) ($generated@@34 $generated@@86 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@161 $generated@@162) $generated@@45)) ($generated@@98 $generated@@41) $generated@@161))
 :pattern ( ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@161 $generated@@162) $generated@@45)) ($generated@@37 $generated@@160))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (and (= ($generated@@163 ($generated@@46 $generated@@164 $generated@@165)) $generated@@164) (= ($generated@@33 ($generated@@46 $generated@@164 $generated@@165)) $generated@@165))
 :pattern ( ($generated@@46 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (!  (=> ($generated@@99 $generated@@166 $generated@@0) (and (= ($generated@@87 $generated@@17 ($generated@@49 $generated@@17 $generated@@166)) $generated@@166) ($generated@@84 $generated@@17 ($generated@@49 $generated@@17 $generated@@166) $generated@@0)))
 :pattern ( ($generated@@99 $generated@@166 $generated@@0))
)))
(assert (forall (($generated@@167 T@U) ) (!  (=> ($generated@@99 $generated@@167 $generated) (and (= ($generated@@87 $generated@@16 ($generated@@49 $generated@@16 $generated@@167)) $generated@@167) ($generated@@84 $generated@@16 ($generated@@49 $generated@@16 $generated@@167) $generated)))
 :pattern ( ($generated@@99 $generated@@167 $generated))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@T) ) (! (= ($generated@@99 ($generated@@87 $generated@@170 $generated@@168) $generated@@169) ($generated@@84 $generated@@170 $generated@@168 $generated@@169))
 :pattern ( ($generated@@99 ($generated@@87 $generated@@170 $generated@@168) $generated@@169))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@34 $generated@@86 $generated@@171 ($generated@@98 $generated@@172) $generated@@173) (forall (($generated@@174 T@U) ) (!  (=> ($generated@@85 $generated@@171 $generated@@174) ($generated@@144 $generated@@174 $generated@@172 $generated@@173))
 :pattern ( ($generated@@85 $generated@@171 $generated@@174))
)))
 :pattern ( ($generated@@34 $generated@@86 $generated@@171 ($generated@@98 $generated@@172) $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ) (! ($generated@@84 $generated@@35 $generated@@175 $generated@@42)
 :pattern ( ($generated@@84 $generated@@35 $generated@@175 $generated@@42))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and ($generated@@82 $generated@@177) (and (or (not (= $generated@@178 $generated@@48)) (not true)) (= ($generated@@103 $generated@@178) ($generated@@37 $generated@@176)))) ($generated@@84 $generated@@17 ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@177 $generated@@178) $generated@@77)) $generated@@0))
 :pattern ( ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@177 $generated@@178) $generated@@77)) ($generated@@37 $generated@@176))
)))
(assert (forall (($generated@@180 T@U) ) (! (= ($generated@@179 ($generated@@98 $generated@@180)) $generated@@180)
 :pattern ( ($generated@@98 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ) (! (= ($generated@@32 ($generated@@98 $generated@@181)) $generated@@3)
 :pattern ( ($generated@@98 $generated@@181))
)))
(assert (forall (($generated@@183 T@U) ) (! (= ($generated@@182 ($generated@@36 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@36 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ) (! (= ($generated@@184 ($generated@@37 $generated@@185)) $generated@@185)
 :pattern ( ($generated@@37 $generated@@185))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@T) ) (! (= ($generated@@49 $generated@@187 ($generated@@87 $generated@@187 $generated@@186)) $generated@@186)
 :pattern ( ($generated@@87 $generated@@187 $generated@@186))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> ($generated@@99 $generated@@188 ($generated@@98 $generated@@189)) (and (= ($generated@@87 $generated@@86 ($generated@@49 $generated@@86 $generated@@188)) $generated@@188) ($generated@@84 $generated@@86 ($generated@@49 $generated@@86 $generated@@188) ($generated@@98 $generated@@189))))
 :pattern ( ($generated@@99 $generated@@188 ($generated@@98 $generated@@189)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (!  (=> ($generated@@99 $generated@@191 ($generated@@36 $generated@@190)) (and (= ($generated@@87 $generated@@35 ($generated@@49 $generated@@35 $generated@@191)) $generated@@191) ($generated@@84 $generated@@35 ($generated@@49 $generated@@35 $generated@@191) ($generated@@36 $generated@@190))))
 :pattern ( ($generated@@99 $generated@@191 ($generated@@36 $generated@@190)))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> ($generated@@99 $generated@@193 ($generated@@37 $generated@@192)) (and (= ($generated@@87 $generated@@35 ($generated@@49 $generated@@35 $generated@@193)) $generated@@193) ($generated@@84 $generated@@35 ($generated@@49 $generated@@35 $generated@@193) ($generated@@37 $generated@@192))))
 :pattern ( ($generated@@99 $generated@@193 ($generated@@37 $generated@@192)))
)))
(assert (= ($generated@@32 $generated@@42) $generated@@6))
(assert (= ($generated@@149 $generated@@42) $generated@@11))
(assert (= ($generated@@32 $generated@@41) $generated@@7))
(assert (= ($generated@@149 $generated@@41) $generated@@11))
(assert (forall (($generated@@194 Int) ) (! (= ($generated@@87 $generated@@17 ($generated@@21 ($generated@@88 $generated@@194))) ($generated@@93 $generated@@52 ($generated@@87 $generated@@17 ($generated@@21 $generated@@194))))
 :pattern ( ($generated@@87 $generated@@17 ($generated@@21 ($generated@@88 $generated@@194))))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@T) ) (! (= ($generated@@87 $generated@@196 ($generated@@93 $generated@@196 $generated@@195)) ($generated@@93 $generated@@52 ($generated@@87 $generated@@196 $generated@@195)))
 :pattern ( ($generated@@87 $generated@@196 ($generated@@93 $generated@@196 $generated@@195)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! ($generated@@34 $generated@@17 $generated@@198 $generated@@0 $generated@@197)
 :pattern ( ($generated@@34 $generated@@17 $generated@@198 $generated@@0 $generated@@197))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (! ($generated@@34 $generated@@16 $generated@@200 $generated $generated@@199)
 :pattern ( ($generated@@34 $generated@@16 $generated@@200 $generated $generated@@199))
)))
(assert (forall (($generated@@201 T@U) ) (! ($generated@@84 $generated@@17 $generated@@201 $generated@@0)
 :pattern ( ($generated@@84 $generated@@17 $generated@@201 $generated@@0))
)))
(assert (forall (($generated@@202 T@U) ) (! ($generated@@84 $generated@@16 $generated@@202 $generated)
 :pattern ( ($generated@@84 $generated@@16 $generated@@202 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () Bool)
(declare-fun $generated@@207 () Bool)
(declare-fun $generated@@208 () Bool)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () Bool)
(declare-fun $generated@@211 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@212  (=> (and (= ($generated@@81 $generated@@203 $generated@@204 $generated@@205)  (and ($generated@@85 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@204 $generated@@205) $generated@@45)) ($generated@@87 $generated@@35 $generated@@205)) (<= ($generated@@88 (- 0 1)) ($generated@@22 ($generated@@49 $generated@@17 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@204 $generated@@205) $generated@@77)))))) ($generated@@84 $generated@@16 ($generated@@19 ($generated@@81 $generated@@203 $generated@@204 $generated@@205)) $generated)) (and (=> (= (ControlFlow 0 3) (- 0 4)) $generated@@206) (=> $generated@@206 (=> (= (ControlFlow 0 3) (- 0 2)) $generated@@207))))))
(let (($generated@@213  (=> (not ($generated@@85 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@204 $generated@@205) $generated@@45)) ($generated@@87 $generated@@35 $generated@@205))) (=> (and (= $generated@@207 true) (= (ControlFlow 0 6) 3)) $generated@@212))))
(let (($generated@@214  (=> (and (and ($generated@@85 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@204 $generated@@205) $generated@@45)) ($generated@@87 $generated@@35 $generated@@205)) (= $generated@@208 ($generated@@20 ($generated@@107 $generated@@35 $generated@@51 $generated@@16 $generated@@209 $generated@@205 $generated@@77)))) (and (= $generated@@207 $generated@@208) (= (ControlFlow 0 5) 3))) $generated@@212)))
(let (($generated@@215  (=> (= $generated@@206 ($generated@@20 ($generated@@107 $generated@@35 $generated@@51 $generated@@16 $generated@@209 $generated@@205 $generated@@45))) (and (=> (= (ControlFlow 0 7) 5) $generated@@214) (=> (= (ControlFlow 0 7) 6) $generated@@213)))))
(let (($generated@@216 true))
(let (($generated@@217  (=> (and (= $generated@@209 ($generated@@108 $generated@@48 $generated@@204 $generated@@4 $generated@@205 ($generated@@49 $generated@@86 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@35 ($generated@@53 $generated@@51 $generated@@52) $generated@@204 $generated@@205) $generated@@45)))) (= $generated@@210 ($generated@@20 ($generated@@107 $generated@@35 $generated@@51 $generated@@16 $generated@@209 $generated@@205 $generated@@45)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) $generated@@210) (=> $generated@@210 (and (=> (= (ControlFlow 0 8) 1) $generated@@216) (=> (= (ControlFlow 0 8) 7) $generated@@215)))))))
(let (($generated@@218  (=> (and ($generated@@82 $generated@@204) ($generated@@211 $generated@@204)) (=> (and (and (or (not (= $generated@@205 $generated@@48)) (not true)) (and ($generated@@84 $generated@@35 $generated@@205 ($generated@@36 $generated@@203)) ($generated@@34 $generated@@35 $generated@@205 ($generated@@36 $generated@@203) $generated@@204))) (and (= 0 $generated@@80) (= (ControlFlow 0 10) 8))) $generated@@217))))
$generated@@218))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)