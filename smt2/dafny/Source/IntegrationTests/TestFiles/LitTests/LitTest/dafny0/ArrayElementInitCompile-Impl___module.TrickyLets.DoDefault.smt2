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
(declare-fun $generated@@13 (T@T) Int)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 (Bool) T@U)
(declare-fun $generated@@18 (T@U) Bool)
(declare-fun $generated@@19 (Int) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (Real) T@U)
(declare-fun $generated@@22 (T@U) Real)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 () T@T)
(declare-fun $generated@@54 (T@T T@T) T@T)
(declare-fun $generated@@55 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@57 (T@T) T@T)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 (T@U T@U) T@U)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@83 (T@U T@U) Bool)
(declare-fun $generated@@87 (Int) Int)
(declare-fun $generated@@89 (T@T T@U) T@U)
(declare-fun $generated@@92 (T@T T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@106 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@U) Bool)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@172 () T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@13 $generated@@14) 0) (= ($generated@@13 $generated@@15) 1)) (= ($generated@@13 $generated@@16) 2)) (forall (($generated@@23 Bool) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Int) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Real) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12)
)
(assert (= ($generated@@29 $generated@@3) 0))
(assert (= ($generated@@30 $generated) $generated@@1))
(assert (= ($generated@@30 $generated@@0) $generated@@2))
(assert (= ($generated@@31 $generated@@3) $generated@@4))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> (and (or (not (= $generated@@38 $generated@@34)) (not true)) (= ($generated@@35 $generated@@38) ($generated@@33 $generated@@37))) ($generated@@36 $generated@@15 ($generated@@19 ($generated@@32 $generated@@38)) $generated@@0))
 :pattern ( ($generated@@32 $generated@@38) ($generated@@33 $generated@@37))
)))
(assert (= ($generated@@13 $generated@@40) 3))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@43 ($generated@@41 $generated@@42) $generated@@44) ($generated@@39 $generated@@40 $generated@@43 ($generated@@33 $generated@@42) $generated@@44))
 :pattern ( ($generated@@39 $generated@@40 $generated@@43 ($generated@@41 $generated@@42) $generated@@44))
 :pattern ( ($generated@@39 $generated@@40 $generated@@43 ($generated@@33 $generated@@42) $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@36 $generated@@40 $generated@@46 $generated@@45)  (or (= $generated@@46 $generated@@34) (= ($generated@@35 $generated@@46) $generated@@45)))
 :pattern ( ($generated@@36 $generated@@40 $generated@@46 $generated@@45))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@48 $generated@@47 $generated@@49) ($generated@@39 $generated@@40 $generated@@48 $generated@@45 $generated@@49))
 :pattern ( ($generated@@39 $generated@@40 $generated@@48 $generated@@47 $generated@@49))
 :pattern ( ($generated@@39 $generated@@40 $generated@@48 $generated@@45 $generated@@49))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@51 $generated@@58 $generated@@59 ($generated@@55 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@60) $generated@@62) $generated@@60)
 :weight 0
)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (or (= $generated@@67 $generated@@68) (= ($generated@@51 $generated@@63 $generated@@64 ($generated@@55 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@68) ($generated@@51 $generated@@63 $generated@@64 $generated@@66 $generated@@68)))
 :weight 0
))) (= ($generated@@13 $generated@@52) 4)) (= ($generated@@13 $generated@@53) 5)) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (= ($generated@@13 ($generated@@54 $generated@@69 $generated@@70)) 6))) (forall (($generated@@71 T@T) ($generated@@72 T@T) ) (! (= ($generated@@56 ($generated@@54 $generated@@71 $generated@@72)) $generated@@71)
 :pattern ( ($generated@@54 $generated@@71 $generated@@72))
))) (forall (($generated@@73 T@T) ($generated@@74 T@T) ) (! (= ($generated@@57 ($generated@@54 $generated@@73 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@54 $generated@@73 $generated@@74))
))))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@76 ($generated@@33 $generated@@75) $generated@@77)  (or (= $generated@@76 $generated@@34) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@77 $generated@@76) $generated@@3)))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@76 ($generated@@33 $generated@@75) $generated@@77))
)))
(assert (= ($generated@@29 $generated@@78) 0))
(assert (= ($generated@@79 $generated@@8 $generated@@12) $generated@@78))
(assert  (not ($generated@@80 $generated@@78)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@81 $generated@@45 $generated@@82)  (or (= $generated@@81 $generated@@34) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@82 $generated@@81) $generated@@3)))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@81 $generated@@45 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@83 $generated@@84 $generated@@85) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@84 $generated@@86) $generated@@3))) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@85 $generated@@86) $generated@@3))))
 :pattern ( ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@85 $generated@@86) $generated@@3))
)))
 :pattern ( ($generated@@83 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@88 Int) ) (! (= ($generated@@87 $generated@@88) $generated@@88)
 :pattern ( ($generated@@87 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@89 $generated@@91 $generated@@90) $generated@@90)
 :pattern ( ($generated@@89 $generated@@91 $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@92 $generated@@94 ($generated@@50 $generated@@94 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@50 $generated@@94 $generated@@93))
)))
(assert ($generated@@80 $generated@@3))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@36 $generated@@40 $generated@@96 ($generated@@41 $generated@@95))  (and ($generated@@36 $generated@@40 $generated@@96 ($generated@@33 $generated@@95)) (or (not (= $generated@@96 $generated@@34)) (not true))))
 :pattern ( ($generated@@36 $generated@@40 $generated@@96 ($generated@@41 $generated@@95)))
 :pattern ( ($generated@@36 $generated@@40 $generated@@96 ($generated@@33 $generated@@95)))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (!  (=> ($generated@@83 $generated@@97 $generated@@98) (=> ($generated@@39 $generated@@101 $generated@@99 $generated@@100 $generated@@97) ($generated@@39 $generated@@101 $generated@@99 $generated@@100 $generated@@98)))
 :pattern ( ($generated@@83 $generated@@97 $generated@@98) ($generated@@39 $generated@@101 $generated@@99 $generated@@100 $generated@@97))
)))
(assert (forall (($generated@@103 T@U) ) (!  (and (= ($generated@@30 ($generated@@33 $generated@@103)) $generated@@5) (= ($generated@@102 ($generated@@33 $generated@@103)) $generated@@10))
 :pattern ( ($generated@@33 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ) (!  (and (= ($generated@@30 ($generated@@41 $generated@@104)) $generated@@6) (= ($generated@@102 ($generated@@41 $generated@@104)) $generated@@10))
 :pattern ( ($generated@@41 $generated@@104))
)))
(assert  (and (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@105 $generated@@108 $generated@@109 $generated@@110 ($generated@@107 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@113 $generated@@114) $generated@@111)
 :weight 0
)) (and (forall (($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (= $generated@@120 $generated@@122) (= ($generated@@105 $generated@@115 $generated@@116 $generated@@117 ($generated@@107 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@121 $generated@@118) $generated@@122 $generated@@123) ($generated@@105 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@122 $generated@@123)))
 :weight 0
)) (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@130 $generated@@132) (= ($generated@@105 $generated@@124 $generated@@125 $generated@@126 ($generated@@107 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@130 $generated@@127) $generated@@131 $generated@@132) ($generated@@105 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@131 $generated@@132)))
 :weight 0
)))))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@18 ($generated@@105 $generated@@40 $generated@@52 $generated@@14 ($generated@@106 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))  (=> (and (or (not (= $generated@@137 $generated@@133)) (not true)) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@134 $generated@@137) $generated@@135)))) (= $generated@@137 $generated@@136)))
 :pattern ( ($generated@@105 $generated@@40 $generated@@52 $generated@@14 ($generated@@106 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> (and (and ($generated@@139 $generated@@140) (and (or (not (= $generated@@141 $generated@@34)) (not true)) (= ($generated@@35 $generated@@141) $generated@@45))) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@140 $generated@@141) $generated@@3)))) ($generated@@39 $generated@@40 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@140 $generated@@141) $generated@@78)) ($generated@@41 $generated) $generated@@140))
 :pattern ( ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@140 $generated@@141) $generated@@78)))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@36 $generated@@40 $generated@@143 ($generated@@33 $generated@@142))  (or (= $generated@@143 $generated@@34) (= ($generated@@35 $generated@@143) ($generated@@33 $generated@@142))))
 :pattern ( ($generated@@36 $generated@@40 $generated@@143 ($generated@@33 $generated@@142)))
)))
(assert (forall (($generated@@144 T@U) ) (! (= ($generated@@36 $generated@@40 $generated@@144 $generated@@47)  (and ($generated@@36 $generated@@40 $generated@@144 $generated@@45) (or (not (= $generated@@144 $generated@@34)) (not true))))
 :pattern ( ($generated@@36 $generated@@40 $generated@@144 $generated@@47))
 :pattern ( ($generated@@36 $generated@@40 $generated@@144 $generated@@45))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (or (not (= $generated@@145 $generated@@147)) (not true)) (=> (and ($generated@@83 $generated@@145 $generated@@146) ($generated@@83 $generated@@146 $generated@@147)) ($generated@@83 $generated@@145 $generated@@147)))
 :pattern ( ($generated@@83 $generated@@145 $generated@@146) ($generated@@83 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (and (= ($generated@@148 ($generated@@79 $generated@@149 $generated@@150)) $generated@@149) (= ($generated@@31 ($generated@@79 $generated@@149 $generated@@150)) $generated@@150))
 :pattern ( ($generated@@79 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (! (<= 0 ($generated@@32 $generated@@151))
 :pattern ( ($generated@@32 $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ) (! (= ($generated@@152 ($generated@@33 $generated@@153)) $generated@@153)
 :pattern ( ($generated@@33 $generated@@153))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@154 ($generated@@41 $generated@@155)) $generated@@155)
 :pattern ( ($generated@@41 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@50 $generated@@157 ($generated@@92 $generated@@157 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@92 $generated@@157 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> (and (and ($generated@@139 $generated@@159) (and (or (not (= $generated@@160 $generated@@34)) (not true)) (= ($generated@@35 $generated@@160) ($generated@@33 $generated@@158)))) ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@159 $generated@@160) $generated@@3)))) ($generated@@39 $generated@@15 ($generated@@19 ($generated@@32 $generated@@160)) $generated@@0 $generated@@159))
 :pattern ( ($generated@@32 $generated@@160) ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@159 $generated@@160) $generated@@3)) ($generated@@33 $generated@@158))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (and ($generated@@139 $generated@@161) (and (or (not (= $generated@@162 $generated@@34)) (not true)) (= ($generated@@35 $generated@@162) $generated@@45))) ($generated@@36 $generated@@40 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@161 $generated@@162) $generated@@78)) ($generated@@41 $generated)))
 :pattern ( ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@161 $generated@@162) $generated@@78)))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@139 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164) $generated@@165 $generated@@166))) ($generated@@83 $generated@@163 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164) $generated@@165 $generated@@166))))
 :pattern ( ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@163 $generated@@164) $generated@@165 $generated@@166)))
)))
(assert (= ($generated@@30 $generated@@47) $generated@@7))
(assert (= ($generated@@102 $generated@@47) $generated@@11))
(assert (= ($generated@@30 $generated@@45) $generated@@9))
(assert (= ($generated@@102 $generated@@45) $generated@@11))
(assert (forall (($generated@@167 Int) ) (! (= ($generated@@92 $generated@@15 ($generated@@19 ($generated@@87 $generated@@167))) ($generated@@89 $generated@@53 ($generated@@92 $generated@@15 ($generated@@19 $generated@@167))))
 :pattern ( ($generated@@92 $generated@@15 ($generated@@19 ($generated@@87 $generated@@167))))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@T) ) (! (= ($generated@@92 $generated@@169 ($generated@@89 $generated@@169 $generated@@168)) ($generated@@89 $generated@@53 ($generated@@92 $generated@@169 $generated@@168)))
 :pattern ( ($generated@@92 $generated@@169 ($generated@@89 $generated@@169 $generated@@168)))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! ($generated@@39 $generated@@15 $generated@@171 $generated@@0 $generated@@170)
 :pattern ( ($generated@@39 $generated@@15 $generated@@171 $generated@@0 $generated@@170))
)))
(assert (= ($generated@@13 $generated@@172) 7))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! ($generated@@39 $generated@@172 $generated@@174 $generated $generated@@173)
 :pattern ( ($generated@@39 $generated@@172 $generated@@174 $generated $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ) (! ($generated@@36 $generated@@15 $generated@@175 $generated@@0)
 :pattern ( ($generated@@36 $generated@@15 $generated@@175 $generated@@0))
)))
(assert (forall (($generated@@176 T@U) ) (! ($generated@@36 $generated@@172 $generated@@176 $generated)
 :pattern ( ($generated@@36 $generated@@172 $generated@@176 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 () T@U)
(declare-fun $generated@@182 (T@U) Bool)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () Int)
(declare-fun $generated@@187 () Int)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Int)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@192  (=> (= $generated@@177 ($generated@@106 $generated@@34 $generated@@178 $generated@@3 $generated@@179)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($generated@@18 ($generated@@105 $generated@@40 $generated@@52 $generated@@14 $generated@@177 $generated@@179 $generated@@78))) (=> ($generated@@18 ($generated@@105 $generated@@40 $generated@@52 $generated@@14 $generated@@177 $generated@@179 $generated@@78)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= 0 ($generated@@87 4))) (=> (<= 0 ($generated@@87 4)) (=> (and (and (and (and (or (not (= $generated@@180 $generated@@34)) (not true)) ($generated@@36 $generated@@40 $generated@@180 ($generated@@33 $generated))) (not ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@178 $generated@@180) $generated@@3))))) (and (= ($generated@@32 $generated@@180) ($generated@@87 4)) (= $generated@@181 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@178 $generated@@180 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@178 $generated@@180) $generated@@3 ($generated@@92 $generated@@14 ($generated@@17 true))))))) (and (and ($generated@@139 $generated@@181) ($generated@@182 $generated@@181)) (and (= $generated@@183 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@181 $generated@@179 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@181 $generated@@179) $generated@@78 ($generated@@92 $generated@@40 $generated@@180)))) ($generated@@139 $generated@@183)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@179) $generated@@78)) $generated@@34)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= ($generated@@32 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@179) $generated@@78))) ($generated@@87 4))) (=> (= ($generated@@32 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@179) $generated@@78))) ($generated@@87 4)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@179) $generated@@78)) $generated@@34)) (not true))) (=> (= $generated@@184 $generated@@179) (=> (and ($generated@@36 $generated@@40 $generated@@184 $generated@@47) (= $generated@@185 $generated@@184)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= (let (($generated@@193 $generated@@179))
$generated@@193) $generated@@34)) (not true))) (=> (or (not (= (let (($generated@@194 $generated@@179))
$generated@@194) $generated@@34)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@18 ($generated@@105 $generated@@40 $generated@@52 $generated@@14 $generated@@177 (let (($generated@@195 $generated@@179))
$generated@@195) $generated@@78))) (=> ($generated@@18 ($generated@@105 $generated@@40 $generated@@52 $generated@@14 $generated@@177 (let (($generated@@196 $generated@@179))
$generated@@196) $generated@@78)) (=> (= $generated@@186 ($generated@@87 3)) (=> (and ($generated@@36 $generated@@15 ($generated@@19 $generated@@186) $generated@@0) (= $generated@@187 $generated@@186)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= 0 (let (($generated@@197 ($generated@@87 3)))
$generated@@197))) (=> (<= 0 (let (($generated@@198 ($generated@@87 3)))
$generated@@198)) (=> (and (and (and (and (or (not (= $generated@@188 $generated@@34)) (not true)) ($generated@@36 $generated@@40 $generated@@188 ($generated@@33 $generated))) (not ($generated@@18 ($generated@@50 $generated@@14 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@188) $generated@@3))))) (and (= ($generated@@32 $generated@@188) (let (($generated@@199 ($generated@@87 3)))
$generated@@199)) (= $generated@@189 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@188 ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@183 $generated@@188) $generated@@3 ($generated@@92 $generated@@14 ($generated@@17 true))))))) (and (and ($generated@@139 $generated@@189) ($generated@@182 $generated@@189)) (and (= $generated@@190 ($generated@@55 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@189 (let (($generated@@200 $generated@@179))
$generated@@200) ($generated@@55 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@189 (let (($generated@@201 $generated@@179))
$generated@@201)) $generated@@78 ($generated@@92 $generated@@40 $generated@@188)))) ($generated@@139 $generated@@190)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@190 $generated@@179) $generated@@78)) $generated@@34)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ($generated@@32 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@190 $generated@@179) $generated@@78))) ($generated@@87 3))) (=> (= ($generated@@32 ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@190 $generated@@179) $generated@@78))) ($generated@@87 3)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= ($generated@@50 $generated@@40 ($generated@@51 $generated@@52 $generated@@53 ($generated@@51 $generated@@40 ($generated@@54 $generated@@52 $generated@@53) $generated@@190 $generated@@179) $generated@@78)) $generated@@34)) (not true)))))))))))))))))))))))))))))
(let (($generated@@202  (=> (and ($generated@@139 $generated@@178) ($generated@@182 $generated@@178)) (=> (and (and (or (not (= $generated@@179 $generated@@34)) (not true)) (and ($generated@@36 $generated@@40 $generated@@179 $generated@@47) ($generated@@39 $generated@@40 $generated@@179 $generated@@47 $generated@@178))) (and (= 0 $generated@@191) (= (ControlFlow 0 13) 2))) $generated@@192))))
$generated@@202)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)