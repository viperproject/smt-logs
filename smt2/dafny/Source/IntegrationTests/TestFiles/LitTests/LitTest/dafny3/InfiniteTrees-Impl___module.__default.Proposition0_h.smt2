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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@28 (Int) T@U)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 () Int)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 () Bool)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@43 (Int) Int)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@50 (T@U T@U T@U) Bool)
(declare-fun $generated@@51 (T@U) Bool)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@62 (T@U T@U) T@U)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@68 (T@U) Bool)
(declare-fun $generated@@70 (T@T T@U) T@U)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@81 (T@U) Bool)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@125 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@126 () T@T)
(declare-fun $generated@@127 () T@T)
(declare-fun $generated@@128 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@129 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@130 (T@T T@T) T@T)
(declare-fun $generated@@131 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@132 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 (T@T) T@T)
(declare-fun $generated@@134 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 T@U) ) (!  (=> (and ($generated@@23 $generated@@24 $generated@@25) ($generated@@23 $generated@@25 $generated@@26)) ($generated@@23 $generated@@24 $generated@@26))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25) ($generated@@23 $generated@@25 $generated@@26))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25) ($generated@@23 $generated@@24 $generated@@26))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 Int) ($generated@@32 Int) ) (!  (=> (and (and (<= 0 $generated@@31) (<= 0 $generated@@32)) (<= (+ $generated@@31 $generated@@32) ($generated@@29 $generated@@30))) (= ($generated@@27 ($generated@@27 $generated@@30 ($generated@@28 $generated@@31)) ($generated@@28 $generated@@32)) ($generated@@27 $generated@@30 ($generated@@28 (+ $generated@@31 $generated@@32)))))
 :pattern ( ($generated@@27 ($generated@@27 $generated@@30 ($generated@@28 $generated@@31)) ($generated@@28 $generated@@32)))
)))
(assert (= ($generated@@33 $generated@@34) $generated@@3))
(assert (= ($generated@@6 $generated@@39) 3))
(assert  (=> (<= 1 $generated@@35) (forall (($generated@@41 T@U) ) (!  (=> (or $generated@@37 (< 1 $generated@@35)) ($generated@@38 $generated@@39 ($generated@@36 $generated@@41) ($generated@@40 $generated)))
 :pattern ( ($generated@@36 $generated@@41))
))))
(assert (forall (($generated@@42 T@U) ) (! ($generated@@38 $generated@@39 $generated@@34 ($generated@@40 $generated@@42))
 :pattern ( ($generated@@38 $generated@@39 $generated@@34 ($generated@@40 $generated@@42)))
)))
(assert (forall (($generated@@44 Int) ) (! (= ($generated@@43 $generated@@44) $generated@@44)
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@45 $generated@@47 $generated@@46) $generated@@46)
 :pattern ( ($generated@@45 $generated@@47 $generated@@46))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (=> (or ($generated@@50 $generated@@53 $generated@@55 $generated@@56) (and (< 2 $generated@@35) ($generated@@38 $generated@@39 $generated@@56 ($generated@@40 $generated@@53)))) (and (and (=> (< 0 ($generated@@29 $generated@@55)) (=> (not ($generated@@51 $generated@@56)) (let (($generated@@57 ($generated@@52 $generated@@56)))
($generated@@50 $generated@@53 ($generated@@27 $generated@@55 ($generated@@28 1)) $generated@@57)))) (=> (=> (< 0 ($generated@@29 $generated@@55)) (ite ($generated@@51 $generated@@56) false (let (($generated@@58 ($generated@@52 $generated@@56)))
($generated@@48 $generated@@53 $generated@@54 ($generated@@27 $generated@@55 ($generated@@28 1)) $generated@@58)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@55)) (forall (($generated@@59 T@U) ) (!  (=> ($generated@@23 $generated@@59 $generated@@55) ($generated@@50 $generated@@53 $generated@@59 $generated@@56))
 :pattern ( ($generated@@48 $generated@@53 $generated@@54 $generated@@59 $generated@@56))
))))) (= ($generated@@48 $generated@@53 ($generated@@49 $generated@@54) $generated@@55 $generated@@56)  (and (=> (< 0 ($generated@@29 $generated@@55)) (ite ($generated@@51 $generated@@56) false (let (($generated@@60 ($generated@@52 $generated@@56)))
($generated@@48 $generated@@53 $generated@@54 ($generated@@27 $generated@@55 ($generated@@28 1)) $generated@@60)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@55)) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@23 $generated@@61 $generated@@55) ($generated@@48 $generated@@53 $generated@@54 $generated@@61 $generated@@56))
 :pattern ( ($generated@@48 $generated@@53 $generated@@54 $generated@@61 $generated@@56))
)))))))
 :pattern ( ($generated@@48 $generated@@53 ($generated@@49 $generated@@54) $generated@@55 $generated@@56))
))))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@38 $generated@@39 ($generated@@62 $generated@@65 $generated@@66) ($generated@@40 $generated@@64))  (and ($generated@@63 $generated@@65 $generated@@64) ($generated@@38 $generated@@39 $generated@@66 ($generated@@40 $generated@@64))))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@62 $generated@@65 $generated@@66) ($generated@@40 $generated@@64)))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@51 $generated@@67) (= ($generated@@33 $generated@@67) $generated@@3))
 :pattern ( ($generated@@51 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (! (= ($generated@@68 $generated@@69) (= ($generated@@33 $generated@@69) $generated@@4))
 :pattern ( ($generated@@68 $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@71 $generated@@73 ($generated@@70 $generated@@73 $generated@@72)) $generated@@72)
 :pattern ( ($generated@@70 $generated@@73 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@68 $generated@@74) (exists (($generated@@75 T@U) ($generated@@76 T@U) ) (= $generated@@74 ($generated@@62 $generated@@75 $generated@@76))))
 :pattern ( ($generated@@68 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ) (!  (=> ($generated@@51 $generated@@77) (= $generated@@77 $generated@@34))
 :pattern ( ($generated@@51 $generated@@77))
)))
(assert  (=> (<= 1 $generated@@35) (forall (($generated@@78 T@U) ) (!  (=> (or $generated@@37 (< 1 $generated@@35)) (and $generated@@37 (= ($generated@@36 ($generated@@49 $generated@@78)) ($generated@@45 $generated@@39 ($generated@@62 ($generated@@71 $generated@@8 ($generated@@12 ($generated@@43 0))) ($generated@@45 $generated@@39 ($generated@@36 $generated@@78)))))))
 :pattern ( ($generated@@36 ($generated@@49 $generated@@78)))
))))
(assert (forall (($generated@@80 T@U) ) (!  (and (= ($generated@@22 ($generated@@40 $generated@@80)) $generated@@2) (= ($generated@@79 ($generated@@40 $generated@@80)) $generated@@5))
 :pattern ( ($generated@@40 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> (and ($generated@@81 $generated@@83) (<= ($generated@@29 $generated@@83) ($generated@@29 $generated@@82))) (and (= ($generated@@81 ($generated@@27 $generated@@82 $generated@@83)) ($generated@@81 $generated@@82)) (= ($generated@@29 ($generated@@27 $generated@@82 $generated@@83)) (- ($generated@@29 $generated@@82) ($generated@@29 $generated@@83)))))
 :pattern ( ($generated@@27 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@84 Int) ) (!  (=> (<= 0 $generated@@84) (and ($generated@@81 ($generated@@28 $generated@@84)) (= ($generated@@29 ($generated@@28 $generated@@84)) $generated@@84)))
 :pattern ( ($generated@@28 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (or (or ($generated@@23 $generated@@85 $generated@@86) (= $generated@@85 $generated@@86)) ($generated@@23 $generated@@86 $generated@@85))
 :pattern ( ($generated@@23 $generated@@85 $generated@@86) ($generated@@23 $generated@@86 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> ($generated@@38 $generated@@39 $generated@@88 ($generated@@40 $generated@@87)) (or ($generated@@51 $generated@@88) ($generated@@68 $generated@@88)))
 :pattern ( ($generated@@68 $generated@@88) ($generated@@38 $generated@@39 $generated@@88 ($generated@@40 $generated@@87)))
 :pattern ( ($generated@@51 $generated@@88) ($generated@@38 $generated@@39 $generated@@88 ($generated@@40 $generated@@87)))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@63 $generated@@89 $generated) (and (= ($generated@@71 $generated@@8 ($generated@@70 $generated@@8 $generated@@89)) $generated@@89) ($generated@@38 $generated@@8 ($generated@@70 $generated@@8 $generated@@89) $generated)))
 :pattern ( ($generated@@63 $generated@@89 $generated))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@63 ($generated@@71 $generated@@92 $generated@@90) $generated@@91) ($generated@@38 $generated@@92 $generated@@90 $generated@@91))
 :pattern ( ($generated@@63 ($generated@@71 $generated@@92 $generated@@90) $generated@@91))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and ($generated@@38 $generated@@39 $generated@@95 ($generated@@40 $generated@@93)) (= $generated@@96 ($generated@@28 0))) ($generated@@48 $generated@@93 $generated@@94 $generated@@96 $generated@@95))
 :pattern ( ($generated@@48 $generated@@93 $generated@@94 $generated@@96 $generated@@95))
))))
(assert (forall (($generated@@97 T@U) ) (! (<= 0 ($generated@@29 $generated@@97))
 :pattern ( ($generated@@29 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@33 ($generated@@62 $generated@@98 $generated@@99)) $generated@@4)
 :pattern ( ($generated@@62 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@100 ($generated@@62 $generated@@101 $generated@@102)) $generated@@101)
 :pattern ( ($generated@@62 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@52 ($generated@@62 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@62 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@105 ($generated@@40 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@40 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@70 $generated@@108 ($generated@@71 $generated@@108 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@71 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (!  (and (and (and (=> ($generated@@23 $generated@@109 $generated@@110) (or (not (= $generated@@109 $generated@@110)) (not true))) (=> (and ($generated@@81 $generated@@109) (not ($generated@@81 $generated@@110))) ($generated@@23 $generated@@109 $generated@@110))) (=> (and ($generated@@81 $generated@@109) ($generated@@81 $generated@@110)) (= ($generated@@23 $generated@@109 $generated@@110) (< ($generated@@29 $generated@@109) ($generated@@29 $generated@@110))))) (=> (and ($generated@@23 $generated@@109 $generated@@110) ($generated@@81 $generated@@110)) ($generated@@81 $generated@@109)))
 :pattern ( ($generated@@23 $generated@@109 $generated@@110))
)))
(assert (= ($generated@@6 $generated@@111) 4))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (or ($generated@@50 $generated@@112 ($generated@@45 $generated@@111 $generated@@114) $generated@@115) (and (< 2 $generated@@35) ($generated@@38 $generated@@39 $generated@@115 ($generated@@40 $generated@@112)))) (and (and (=> (< 0 ($generated@@29 $generated@@114)) (=> (not ($generated@@51 $generated@@115)) (let (($generated@@116 ($generated@@52 $generated@@115)))
($generated@@50 $generated@@112 ($generated@@27 $generated@@114 ($generated@@28 1)) $generated@@116)))) (=> (=> (< 0 ($generated@@29 $generated@@114)) (ite ($generated@@51 $generated@@115) false (let (($generated@@117 ($generated@@52 $generated@@115)))
($generated@@48 $generated@@112 ($generated@@49 $generated@@113) ($generated@@27 $generated@@114 ($generated@@28 1)) $generated@@117)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@114)) (forall (($generated@@118 T@U) ) (!  (=> ($generated@@23 $generated@@118 $generated@@114) ($generated@@50 $generated@@112 $generated@@118 $generated@@115))
 :pattern ( ($generated@@48 $generated@@112 ($generated@@49 $generated@@113) $generated@@118 $generated@@115))
))))) (= ($generated@@48 $generated@@112 ($generated@@49 $generated@@113) ($generated@@45 $generated@@111 $generated@@114) $generated@@115)  (and (=> (< 0 ($generated@@29 $generated@@114)) (ite ($generated@@51 $generated@@115) false (let (($generated@@119 ($generated@@52 $generated@@115)))
($generated@@48 $generated@@112 ($generated@@49 $generated@@113) ($generated@@27 $generated@@114 ($generated@@28 1)) $generated@@119)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@114)) (forall (($generated@@120 T@U) ) (!  (=> ($generated@@23 $generated@@120 $generated@@114) ($generated@@48 $generated@@112 ($generated@@49 $generated@@113) $generated@@120 $generated@@115))
 :pattern ( ($generated@@48 $generated@@112 ($generated@@49 $generated@@113) $generated@@120 $generated@@115))
)))))))
 :weight 3
 :pattern ( ($generated@@48 $generated@@112 ($generated@@49 $generated@@113) ($generated@@45 $generated@@111 $generated@@114) $generated@@115))
))))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@48 $generated@@121 ($generated@@49 $generated@@122) $generated@@123 $generated@@124) ($generated@@48 $generated@@121 $generated@@122 $generated@@123 $generated@@124))
 :pattern ( ($generated@@48 $generated@@121 ($generated@@49 $generated@@122) $generated@@123 $generated@@124))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@125 $generated@@135 $generated@@136 $generated@@137 ($generated@@131 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@140 $generated@@141) $generated@@138)
 :weight 0
)) (and (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (or (= $generated@@147 $generated@@149) (= ($generated@@125 $generated@@142 $generated@@143 $generated@@144 ($generated@@131 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@149 $generated@@150) ($generated@@125 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@149 $generated@@150)))
 :weight 0
)) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@157 $generated@@159) (= ($generated@@125 $generated@@151 $generated@@152 $generated@@153 ($generated@@131 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@125 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)))) (= ($generated@@6 $generated@@126) 5)) (= ($generated@@6 $generated@@127) 6)) (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@129 $generated@@160 $generated@@161 ($generated@@132 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@162) $generated@@164) $generated@@162)
 :weight 0
))) (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (or (= $generated@@169 $generated@@170) (= ($generated@@129 $generated@@165 $generated@@166 ($generated@@132 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@167) $generated@@170) ($generated@@129 $generated@@165 $generated@@166 $generated@@168 $generated@@170)))
 :weight 0
))) (forall (($generated@@171 T@T) ($generated@@172 T@T) ) (= ($generated@@6 ($generated@@130 $generated@@171 $generated@@172)) 7))) (forall (($generated@@173 T@T) ($generated@@174 T@T) ) (! (= ($generated@@133 ($generated@@130 $generated@@173 $generated@@174)) $generated@@173)
 :pattern ( ($generated@@130 $generated@@173 $generated@@174))
))) (forall (($generated@@175 T@T) ($generated@@176 T@T) ) (! (= ($generated@@134 ($generated@@130 $generated@@175 $generated@@176)) $generated@@176)
 :pattern ( ($generated@@130 $generated@@175 $generated@@176))
))))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 Bool) ($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@11 ($generated@@125 $generated@@126 $generated@@127 $generated@@7 ($generated@@128 $generated@@177 $generated@@178 $generated@@179 $generated@@180) $generated@@181 $generated@@182))  (=> (and (or (not (= $generated@@181 $generated@@177)) (not true)) ($generated@@11 ($generated@@70 $generated@@7 ($generated@@129 $generated@@127 $generated@@111 ($generated@@129 $generated@@126 ($generated@@130 $generated@@127 $generated@@111) $generated@@178 $generated@@181) $generated@@179)))) $generated@@180))
 :pattern ( ($generated@@125 $generated@@126 $generated@@127 $generated@@7 ($generated@@128 $generated@@177 $generated@@178 $generated@@179 $generated@@180) $generated@@181 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ) (! (= ($generated@@36 ($generated@@49 $generated@@183)) ($generated@@36 $generated@@183))
 :pattern ( ($generated@@36 ($generated@@49 $generated@@183)))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (=> (or ($generated@@50 $generated@@184 ($generated@@45 $generated@@111 $generated@@186) ($generated@@45 $generated@@39 $generated@@187)) (and (< 2 $generated@@35) ($generated@@38 $generated@@39 $generated@@187 ($generated@@40 $generated@@184)))) (and (and (=> (< 0 ($generated@@29 $generated@@186)) (=> (not ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 ($generated@@51 ($generated@@45 $generated@@39 $generated@@187)))))) (let (($generated@@188 ($generated@@45 $generated@@39 ($generated@@52 ($generated@@45 $generated@@39 $generated@@187)))))
($generated@@50 $generated@@184 ($generated@@27 $generated@@186 ($generated@@28 1)) $generated@@188)))) (=> (=> (< 0 ($generated@@29 $generated@@186)) (ite ($generated@@51 ($generated@@45 $generated@@39 $generated@@187)) false (let (($generated@@189 ($generated@@45 $generated@@39 ($generated@@52 ($generated@@45 $generated@@39 $generated@@187)))))
($generated@@48 $generated@@184 ($generated@@49 $generated@@185) ($generated@@27 $generated@@186 ($generated@@28 1)) $generated@@189)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@186)) (forall (($generated@@190 T@U) ) (!  (=> ($generated@@23 $generated@@190 $generated@@186) ($generated@@50 $generated@@184 $generated@@190 $generated@@187))
 :pattern ( ($generated@@48 $generated@@184 ($generated@@49 $generated@@185) $generated@@190 $generated@@187))
))))) (= ($generated@@48 $generated@@184 ($generated@@49 $generated@@185) ($generated@@45 $generated@@111 $generated@@186) ($generated@@45 $generated@@39 $generated@@187))  (and (=> (< 0 ($generated@@29 $generated@@186)) (ite ($generated@@51 ($generated@@45 $generated@@39 $generated@@187)) false (let (($generated@@191 ($generated@@45 $generated@@39 ($generated@@52 ($generated@@45 $generated@@39 $generated@@187)))))
($generated@@48 $generated@@184 ($generated@@49 $generated@@185) ($generated@@27 $generated@@186 ($generated@@28 1)) $generated@@191)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@186)) (forall (($generated@@192 T@U) ) (!  (=> ($generated@@23 $generated@@192 $generated@@186) ($generated@@48 $generated@@184 ($generated@@49 $generated@@185) $generated@@192 $generated@@187))
 :pattern ( ($generated@@48 $generated@@184 ($generated@@49 $generated@@185) $generated@@192 $generated@@187))
)))))))
 :weight 3
 :pattern ( ($generated@@48 $generated@@184 ($generated@@49 $generated@@185) ($generated@@45 $generated@@111 $generated@@186) ($generated@@45 $generated@@39 $generated@@187)))
))))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (!  (=> ($generated@@63 $generated@@194 ($generated@@40 $generated@@193)) (and (= ($generated@@71 $generated@@39 ($generated@@70 $generated@@39 $generated@@194)) $generated@@194) ($generated@@38 $generated@@39 ($generated@@70 $generated@@39 $generated@@194) ($generated@@40 $generated@@193))))
 :pattern ( ($generated@@63 $generated@@194 ($generated@@40 $generated@@193)))
)))
(assert (forall (($generated@@195 T@U) ) (!  (=> ($generated@@81 $generated@@195) (= $generated@@195 ($generated@@28 ($generated@@29 $generated@@195))))
 :pattern ( ($generated@@29 $generated@@195))
 :pattern ( ($generated@@81 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> (and ($generated@@81 $generated@@197) (<= ($generated@@29 $generated@@197) ($generated@@29 $generated@@196))) (or (and (= $generated@@197 ($generated@@28 0)) (= ($generated@@27 $generated@@196 $generated@@197) $generated@@196)) (and (or (not (= $generated@@197 ($generated@@28 0))) (not true)) ($generated@@23 ($generated@@27 $generated@@196 $generated@@197) $generated@@196))))
 :pattern ( ($generated@@27 $generated@@196 $generated@@197))
)))
(assert (forall (($generated@@198 Int) ) (! (= ($generated@@71 $generated@@8 ($generated@@12 ($generated@@43 $generated@@198))) ($generated@@45 $generated@@111 ($generated@@71 $generated@@8 ($generated@@12 $generated@@198))))
 :pattern ( ($generated@@71 $generated@@8 ($generated@@12 ($generated@@43 $generated@@198))))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@T) ) (! (= ($generated@@71 $generated@@200 ($generated@@45 $generated@@200 $generated@@199)) ($generated@@45 $generated@@111 ($generated@@71 $generated@@200 $generated@@199)))
 :pattern ( ($generated@@71 $generated@@200 ($generated@@45 $generated@@200 $generated@@199)))
)))
(assert (forall (($generated@@201 T@U) ) (! ($generated@@38 $generated@@8 $generated@@201 $generated)
 :pattern ( ($generated@@38 $generated@@8 $generated@@201 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 (T@U) Bool)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 (T@U) Bool)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@211  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@50 $generated $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (or ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (=> (< 0 ($generated@@29 $generated@@202)) (=> ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 ($generated@@51 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203))))))) ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 false)))))))) (=> (=> ($generated@@50 $generated $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (or ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (=> (< 0 ($generated@@29 $generated@@202)) (=> ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 ($generated@@51 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203))))))) ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 false))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@50 $generated $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (or ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (=> (< 0 ($generated@@29 $generated@@202)) (=> (not ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 ($generated@@51 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))))))) (let (($generated@@212 ($generated@@45 $generated@@39 ($generated@@52 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 ($generated@@49 $generated@@203))))))))
($generated@@48 $generated ($generated@@49 ($generated@@49 $generated@@203)) ($generated@@27 $generated@@202 ($generated@@28 1)) $generated@@212))))))) (=> (=> ($generated@@50 $generated $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (or ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (=> (< 0 ($generated@@29 $generated@@202)) (=> (not ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 ($generated@@51 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))))))) (let (($generated@@213 ($generated@@45 $generated@@39 ($generated@@52 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 ($generated@@49 $generated@@203))))))))
($generated@@48 $generated ($generated@@49 ($generated@@49 $generated@@203)) ($generated@@27 $generated@@202 ($generated@@28 1)) $generated@@213)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@50 $generated $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (or ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@202 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))) (=> (= ($generated@@43 0) ($generated@@29 $generated@@202)) (forall (($generated@@214 T@U) ) (!  (=> ($generated@@23 $generated@@214 $generated@@202) ($generated@@48 $generated ($generated@@49 ($generated@@49 $generated@@203)) $generated@@214 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 ($generated@@49 $generated@@203))))))
 :pattern ( ($generated@@48 $generated ($generated@@49 ($generated@@49 $generated@@203)) $generated@@214 ($generated@@36 ($generated@@49 ($generated@@49 $generated@@203)))))
))))))))))))
(let (($generated@@215  (=> (<= ($generated@@29 $generated@@202) 0) (=> (and (and (and ($generated@@204 $generated@@205) ($generated@@206 $generated@@205)) (= $generated@@207 $generated@@205)) (and (forall (($generated@@216 T@U) ) (!  (=> ($generated@@23 $generated@@216 $generated@@202) ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@216 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))))
 :pattern ( ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@216 ($generated@@36 ($generated@@49 $generated@@203))))
 :pattern ( ($generated@@23 $generated@@216 $generated@@202))
)) (= (ControlFlow 0 6) 2))) $generated@@211))))
(let (($generated@@217  (=> (and (< 0 ($generated@@29 $generated@@202)) (= (ControlFlow 0 5) 2)) $generated@@211)))
(let (($generated@@218  (=> (= $generated@@208 ($generated@@128 $generated@@209 $generated@@210 $generated@@1 false)) (=> (and (and ($generated@@204 $generated@@207) ($generated@@206 $generated@@207)) (and (= $generated@@210 $generated@@207) (forall (($generated@@219 T@U) ) (!  (=> (and ($generated@@11 ($generated@@45 $generated@@7 ($generated@@10 true))) ($generated@@23 $generated@@219 $generated@@202)) ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@219 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))))
 :pattern ( ($generated@@48 $generated ($generated@@49 $generated@@203) $generated@@219 ($generated@@45 $generated@@39 ($generated@@36 ($generated@@49 $generated@@203)))))
)))) (and (=> (= (ControlFlow 0 7) 5) $generated@@217) (=> (= (ControlFlow 0 7) 6) $generated@@215))))))
(let (($generated@@220  (=> (and (and ($generated@@204 $generated@@210) ($generated@@206 $generated@@210)) (and (= 3 $generated@@35) (= (ControlFlow 0 8) 7))) $generated@@218)))
$generated@@220))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)