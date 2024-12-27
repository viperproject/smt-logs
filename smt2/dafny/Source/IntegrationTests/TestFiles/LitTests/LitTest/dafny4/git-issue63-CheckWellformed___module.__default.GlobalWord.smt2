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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () Int)
(declare-fun $generated@@28 (T@U T@U) Int)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 (T@U T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (Bool T@U) Bool)
(declare-fun $generated@@37 () Bool)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@U Int) T@U)
(declare-fun $generated@@41 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (Int) Int)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@60 (T@U) Bool)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@U T@U) T@U)
(declare-fun $generated@@66 (T@U) Int)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@68 (T@U T@U) T@U)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@79 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@81 (T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@U) T@U)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@100 (T@U) Bool)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@102 (T@U) Bool)
(declare-fun $generated@@114 () T@T)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@143 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@163 (T@U) Int)
(declare-fun $generated@@164 (T@U) Int)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@177 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@178 () T@T)
(declare-fun $generated@@179 () T@T)
(declare-fun $generated@@180 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@181 (T@T T@T) T@T)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@183 (T@T) T@T)
(declare-fun $generated@@184 (T@T) T@T)
(declare-fun $generated@@222 (T@U) T@U)
(declare-fun $generated@@227 (T@U) T@U)
(declare-fun $generated@@230 (T@U) T@U)
(declare-fun $generated@@269 (T@U) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated) $generated@@1))
(assert (= ($generated@@26 $generated@@0) $generated@@2))
(assert  (and (and (and (and (= ($generated@@10 $generated@@30) 3) (= ($generated@@10 $generated@@31) 4)) (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@41 $generated@@47 $generated@@48 ($generated@@46 $generated@@47 $generated@@48 $generated@@50 $generated@@51 $generated@@49) $generated@@51) $generated@@49)
 :weight 0
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (or (= $generated@@56 $generated@@57) (= ($generated@@41 $generated@@52 $generated@@53 ($generated@@46 $generated@@52 $generated@@53 $generated@@55 $generated@@56 $generated@@54) $generated@@57) ($generated@@41 $generated@@52 $generated@@53 $generated@@55 $generated@@57)))
 :weight 0
))) (= ($generated@@10 $generated@@42) 5)))
(assert  (=> (<= 2 $generated@@27) (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (!  (=> (or ($generated@@32 ($generated@@29 $generated@@30 $generated@@58) ($generated@@29 $generated@@31 $generated@@59)) (and (< 2 $generated@@27) (and (and ($generated@@33 $generated@@30 $generated@@58 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0))) ($generated@@33 $generated@@31 $generated@@59 ($generated@@35 $generated))) (and ($generated@@36 $generated@@37 ($generated@@29 $generated@@30 $generated@@58)) ($generated@@38 ($generated@@29 $generated@@31 $generated@@59)))))) (= ($generated@@28 ($generated@@29 $generated@@30 $generated@@58) ($generated@@29 $generated@@31 $generated@@59)) ($generated@@17 ($generated@@39 $generated@@12 ($generated@@40 ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 ($generated@@29 $generated@@30 $generated@@58)) ($generated@@44 $generated@@31 ($generated@@29 $generated@@31 $generated@@59)))) ($generated@@45 0))))))
 :weight 3
 :pattern ( ($generated@@28 ($generated@@29 $generated@@30 $generated@@58) ($generated@@29 $generated@@31 $generated@@59)))
))))
(assert (= ($generated@@10 $generated@@61) 6))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (=> ($generated@@33 $generated@@61 $generated@@65 ($generated@@62 $generated@@63 $generated@@64)) ($generated@@60 $generated@@65))
 :pattern ( ($generated@@60 $generated@@65) ($generated@@33 $generated@@61 $generated@@65 ($generated@@62 $generated@@63 $generated@@64)))
)))
(assert (= ($generated@@66 $generated@@67) 0))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@33 $generated@@61 ($generated@@68 $generated@@72 $generated@@73) ($generated@@62 $generated@@70 $generated@@71))  (and ($generated@@69 $generated@@72 $generated@@70) ($generated@@69 $generated@@73 $generated@@71)))
 :pattern ( ($generated@@33 $generated@@61 ($generated@@68 $generated@@72 $generated@@73) ($generated@@62 $generated@@70 $generated@@71)))
)))
(assert  (=> (<= 2 $generated@@27) (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> (or ($generated@@32 $generated@@74 $generated@@75) (and (< 2 $generated@@27) (and (and ($generated@@33 $generated@@30 $generated@@74 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0))) ($generated@@33 $generated@@31 $generated@@75 ($generated@@35 $generated))) (and ($generated@@36 $generated@@37 $generated@@74) ($generated@@38 $generated@@75))))) (= ($generated@@28 $generated@@74 $generated@@75) ($generated@@17 ($generated@@39 $generated@@12 ($generated@@40 ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@74) ($generated@@44 $generated@@31 $generated@@75))) ($generated@@45 0))))))
 :pattern ( ($generated@@28 $generated@@74 $generated@@75))
))))
(assert (forall (($generated@@76 Int) ) (! (= ($generated@@45 $generated@@76) $generated@@76)
 :pattern ( ($generated@@45 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@29 $generated@@78 $generated@@77) $generated@@77)
 :pattern ( ($generated@@29 $generated@@78 $generated@@77))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> ($generated@@80 $generated@@86) (= ($generated@@79 $generated@@61 ($generated@@68 $generated@@84 $generated@@85) ($generated@@62 $generated@@82 $generated@@83) $generated@@86)  (and ($generated@@81 $generated@@84 $generated@@82 $generated@@86) ($generated@@81 $generated@@85 $generated@@83 $generated@@86))))
 :pattern ( ($generated@@79 $generated@@61 ($generated@@68 $generated@@84 $generated@@85) ($generated@@62 $generated@@82 $generated@@83) $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (! (= ($generated@@60 $generated@@88) (= ($generated@@87 $generated@@88) $generated@@7))
 :pattern ( ($generated@@60 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@44 $generated@@90 ($generated@@39 $generated@@90 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@39 $generated@@90 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ) (!  (=> ($generated@@60 $generated@@91) (exists (($generated@@92 T@U) ($generated@@93 T@U) ) (= $generated@@91 ($generated@@68 $generated@@92 $generated@@93))))
 :pattern ( ($generated@@60 $generated@@91))
)))
(assert (= ($generated@@10 $generated@@94) 7))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@33 $generated@@94 $generated@@97 ($generated@@95 $generated@@98)) (forall (($generated@@99 T@U) ) (!  (=> ($generated@@96 $generated@@97 $generated@@99) ($generated@@69 $generated@@99 $generated@@98))
 :pattern ( ($generated@@96 $generated@@97 $generated@@99))
)))
 :pattern ( ($generated@@33 $generated@@94 $generated@@97 ($generated@@95 $generated@@98)))
)))
(assert  (=> (<= 1 $generated@@27) (forall (($generated@@103 T@U) ) (!  (=> (or ($generated@@100 $generated@@103) (and (< 1 $generated@@27) ($generated@@33 $generated@@30 $generated@@103 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0))))) (and (forall (($generated@@104 T@U) ) (!  (=> ($generated@@33 $generated@@31 $generated@@104 ($generated@@35 $generated)) ($generated@@102 $generated@@104))
 :pattern ( ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@103) ($generated@@44 $generated@@31 $generated@@104))))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@103) ($generated@@44 $generated@@31 $generated@@104)))
 :pattern ( ($generated@@38 $generated@@104))
)) (= ($generated@@36 true $generated@@103) (forall (($generated@@105 T@U) ) (!  (=> ($generated@@33 $generated@@31 $generated@@105 ($generated@@35 $generated)) (= ($generated@@38 $generated@@105)  (and ($generated@@96 ($generated@@101 $generated@@103) ($generated@@44 $generated@@31 $generated@@105)) (= ($generated@@66 ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@103) ($generated@@44 $generated@@31 $generated@@105)))) ($generated@@45 1)))))
 :pattern ( ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@103) ($generated@@44 $generated@@31 $generated@@105))))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@103) ($generated@@44 $generated@@31 $generated@@105)))
 :pattern ( ($generated@@38 $generated@@105))
)))))
 :pattern ( ($generated@@36 true $generated@@103))
))))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@81 ($generated@@44 $generated@@109 $generated@@106) $generated@@107 $generated@@108) ($generated@@79 $generated@@109 $generated@@106 $generated@@107 $generated@@108))
 :pattern ( ($generated@@81 ($generated@@44 $generated@@109 $generated@@106) $generated@@107 $generated@@108))
)))
(assert  (=> (<= 1 $generated@@27) (forall (($generated@@110 T@U) ) (!  (=> (or ($generated@@100 ($generated@@29 $generated@@30 $generated@@110)) (and (< 1 $generated@@27) ($generated@@33 $generated@@30 $generated@@110 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0))))) (and (forall (($generated@@111 T@U) ) (!  (=> ($generated@@33 $generated@@31 $generated@@111 ($generated@@35 $generated)) ($generated@@102 $generated@@111))
 :pattern ( ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@110) ($generated@@44 $generated@@31 $generated@@111))))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@110) ($generated@@44 $generated@@31 $generated@@111)))
 :pattern ( ($generated@@38 $generated@@111))
)) (= ($generated@@36 true ($generated@@29 $generated@@30 $generated@@110)) (forall (($generated@@112 T@U) ) (!  (=> ($generated@@33 $generated@@31 $generated@@112 ($generated@@35 $generated)) (= ($generated@@38 $generated@@112)  (and ($generated@@96 ($generated@@101 $generated@@110) ($generated@@44 $generated@@31 $generated@@112)) (= ($generated@@66 ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 ($generated@@29 $generated@@30 $generated@@110)) ($generated@@44 $generated@@31 $generated@@112)))) ($generated@@45 1)))))
 :pattern ( ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@110) ($generated@@44 $generated@@31 $generated@@112))))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@110) ($generated@@44 $generated@@31 $generated@@112)))
 :pattern ( ($generated@@38 $generated@@112))
)))))
 :weight 3
 :pattern ( ($generated@@36 true ($generated@@29 $generated@@30 $generated@@110)))
))))
(assert (forall (($generated@@113 T@U) ) (!  (=> ($generated@@69 $generated@@113 $generated@@0) (and (= ($generated@@44 $generated@@12 ($generated@@39 $generated@@12 $generated@@113)) $generated@@113) ($generated@@33 $generated@@12 ($generated@@39 $generated@@12 $generated@@113) $generated@@0)))
 :pattern ( ($generated@@69 $generated@@113 $generated@@0))
)))
(assert (= ($generated@@10 $generated@@114) 8))
(assert (forall (($generated@@115 T@U) ) (!  (=> ($generated@@69 $generated@@115 $generated) (and (= ($generated@@44 $generated@@114 ($generated@@39 $generated@@114 $generated@@115)) $generated@@115) ($generated@@33 $generated@@114 ($generated@@39 $generated@@114 $generated@@115) $generated)))
 :pattern ( ($generated@@69 $generated@@115 $generated))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@69 ($generated@@44 $generated@@118 $generated@@116) $generated@@117) ($generated@@33 $generated@@118 $generated@@116 $generated@@117))
 :pattern ( ($generated@@69 ($generated@@44 $generated@@118 $generated@@116) $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (<= 0 ($generated@@66 $generated@@119))
 :pattern ( ($generated@@66 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@79 $generated@@94 $generated@@120 ($generated@@95 $generated@@121) $generated@@122) (forall (($generated@@123 T@U) ) (!  (=> ($generated@@96 $generated@@120 $generated@@123) ($generated@@81 $generated@@123 $generated@@121 $generated@@122))
 :pattern ( ($generated@@96 $generated@@120 $generated@@123))
)))
 :pattern ( ($generated@@79 $generated@@94 $generated@@120 ($generated@@95 $generated@@121) $generated@@122))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@124 ($generated@@34 $generated@@125 $generated@@126)) $generated@@125)
 :pattern ( ($generated@@34 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@127 ($generated@@34 $generated@@128 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@34 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@26 ($generated@@34 $generated@@130 $generated@@131)) $generated@@5)
 :pattern ( ($generated@@34 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@87 ($generated@@68 $generated@@132 $generated@@133)) $generated@@7)
 :pattern ( ($generated@@68 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@134 ($generated@@62 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@62 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@137 ($generated@@62 $generated@@138 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@62 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@140 ($generated@@68 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@68 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@143 ($generated@@68 $generated@@144 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@68 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@79 $generated@@31 $generated@@146 ($generated@@35 $generated@@147) $generated@@148) (forall (($generated@@149 Int) ) (!  (=> (and (<= 0 $generated@@149) (< $generated@@149 ($generated@@66 $generated@@146))) ($generated@@81 ($generated@@40 $generated@@146 $generated@@149) $generated@@147 $generated@@148))
 :pattern ( ($generated@@40 $generated@@146 $generated@@149))
)))
 :pattern ( ($generated@@79 $generated@@31 $generated@@146 ($generated@@35 $generated@@147) $generated@@148))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@150 ($generated@@95 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@95 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ) (! (= ($generated@@26 ($generated@@95 $generated@@152)) $generated@@3)
 :pattern ( ($generated@@95 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@153 ($generated@@35 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@35 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@26 ($generated@@35 $generated@@155)) $generated@@4)
 :pattern ( ($generated@@35 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@39 $generated@@157 ($generated@@44 $generated@@157 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@44 $generated@@157 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@79 $generated@@30 $generated@@158 ($generated@@34 $generated@@159 $generated@@160) $generated@@161) (forall (($generated@@162 T@U) ) (!  (=> ($generated@@96 ($generated@@101 $generated@@158) $generated@@162) (and ($generated@@81 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@158) $generated@@162) $generated@@160 $generated@@161) ($generated@@81 $generated@@162 $generated@@159 $generated@@161)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@158) $generated@@162))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@158) $generated@@162))
)))
 :pattern ( ($generated@@79 $generated@@30 $generated@@158 ($generated@@34 $generated@@159 $generated@@160) $generated@@161))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (< ($generated@@163 $generated@@165) ($generated@@164 ($generated@@68 $generated@@165 $generated@@166)))
 :pattern ( ($generated@@68 $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (! (< ($generated@@163 $generated@@168) ($generated@@164 ($generated@@68 $generated@@167 $generated@@168)))
 :pattern ( ($generated@@68 $generated@@167 $generated@@168))
)))
(assert (forall (($generated@@170 T@U) ) (!  (not ($generated@@96 ($generated@@101 $generated@@169) $generated@@170))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@169) $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (!  (=> ($generated@@69 $generated@@171 ($generated@@34 $generated@@172 $generated@@173)) (and (= ($generated@@44 $generated@@30 ($generated@@39 $generated@@30 $generated@@171)) $generated@@171) ($generated@@33 $generated@@30 ($generated@@39 $generated@@30 $generated@@171) ($generated@@34 $generated@@172 $generated@@173))))
 :pattern ( ($generated@@69 $generated@@171 ($generated@@34 $generated@@172 $generated@@173)))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> ($generated@@69 $generated@@176 ($generated@@62 $generated@@174 $generated@@175)) (and (= ($generated@@44 $generated@@61 ($generated@@39 $generated@@61 $generated@@176)) $generated@@176) ($generated@@33 $generated@@61 ($generated@@39 $generated@@61 $generated@@176) ($generated@@62 $generated@@174 $generated@@175))))
 :pattern ( ($generated@@69 $generated@@176 ($generated@@62 $generated@@174 $generated@@175)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@185 T@T) ($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@177 $generated@@185 $generated@@186 $generated@@187 ($generated@@182 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@190 $generated@@191 $generated@@188) $generated@@190 $generated@@191) $generated@@188)
 :weight 0
)) (and (forall (($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@T) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (or (= $generated@@197 $generated@@199) (= ($generated@@177 $generated@@192 $generated@@193 $generated@@194 ($generated@@182 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@197 $generated@@198 $generated@@195) $generated@@199 $generated@@200) ($generated@@177 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@199 $generated@@200)))
 :weight 0
)) (forall (($generated@@201 T@T) ($generated@@202 T@T) ($generated@@203 T@T) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (!  (or (= $generated@@207 $generated@@209) (= ($generated@@177 $generated@@201 $generated@@202 $generated@@203 ($generated@@182 $generated@@201 $generated@@202 $generated@@203 $generated@@205 $generated@@206 $generated@@207 $generated@@204) $generated@@208 $generated@@209) ($generated@@177 $generated@@201 $generated@@202 $generated@@203 $generated@@205 $generated@@208 $generated@@209)))
 :weight 0
)))) (= ($generated@@10 $generated@@178) 9)) (= ($generated@@10 $generated@@179) 10)) (forall (($generated@@210 T@T) ($generated@@211 T@T) ) (= ($generated@@10 ($generated@@181 $generated@@210 $generated@@211)) 11))) (forall (($generated@@212 T@T) ($generated@@213 T@T) ) (! (= ($generated@@183 ($generated@@181 $generated@@212 $generated@@213)) $generated@@212)
 :pattern ( ($generated@@181 $generated@@212 $generated@@213))
))) (forall (($generated@@214 T@T) ($generated@@215 T@T) ) (! (= ($generated@@184 ($generated@@181 $generated@@214 $generated@@215)) $generated@@215)
 :pattern ( ($generated@@181 $generated@@214 $generated@@215))
))))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 Bool) ($generated@@220 T@U) ($generated@@221 T@U) ) (! (= ($generated@@15 ($generated@@177 $generated@@178 $generated@@179 $generated@@11 ($generated@@180 $generated@@216 $generated@@217 $generated@@218 $generated@@219) $generated@@220 $generated@@221))  (=> (and (or (not (= $generated@@220 $generated@@216)) (not true)) ($generated@@15 ($generated@@39 $generated@@11 ($generated@@41 $generated@@179 $generated@@42 ($generated@@41 $generated@@178 ($generated@@181 $generated@@179 $generated@@42) $generated@@217 $generated@@220) $generated@@218)))) $generated@@219))
 :pattern ( ($generated@@177 $generated@@178 $generated@@179 $generated@@11 ($generated@@180 $generated@@216 $generated@@217 $generated@@218 $generated@@219) $generated@@220 $generated@@221))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (!  (and (= ($generated@@26 ($generated@@62 $generated@@223 $generated@@224)) $generated@@8) (= ($generated@@222 ($generated@@62 $generated@@223 $generated@@224)) $generated@@9))
 :pattern ( ($generated@@62 $generated@@223 $generated@@224))
)))
(assert (forall (($generated@@225 T@U) ) (!  (or (= $generated@@225 $generated@@169) (exists (($generated@@226 T@U) ) ($generated@@96 ($generated@@101 $generated@@225) $generated@@226)))
 :pattern ( ($generated@@101 $generated@@225))
)))
(assert (forall (($generated@@228 T@U) ) (!  (or (= $generated@@228 $generated@@169) (exists (($generated@@229 T@U) ) ($generated@@96 ($generated@@227 $generated@@228) $generated@@229)))
 :pattern ( ($generated@@227 $generated@@228))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (! (= ($generated@@96 ($generated@@230 $generated@@231) $generated@@232)  (and ($generated@@96 ($generated@@101 $generated@@231) ($generated@@140 ($generated@@39 $generated@@61 $generated@@232))) (= ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@231) ($generated@@140 ($generated@@39 $generated@@61 $generated@@232))) ($generated@@143 ($generated@@39 $generated@@61 $generated@@232)))))
 :pattern ( ($generated@@96 ($generated@@230 $generated@@231) $generated@@232))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ) (! (= ($generated@@96 ($generated@@227 $generated@@233) $generated@@234) (exists (($generated@@235 T@U) ) (!  (and ($generated@@96 ($generated@@101 $generated@@233) $generated@@235) (= $generated@@234 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@233) $generated@@235)))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@233) $generated@@235))
 :pattern ( ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@233) $generated@@235))
)))
 :pattern ( ($generated@@96 ($generated@@227 $generated@@233) $generated@@234))
)))
(assert (forall (($generated@@236 T@U) ) (! (= ($generated@@163 ($generated@@44 $generated@@61 $generated@@236)) ($generated@@164 $generated@@236))
 :pattern ( ($generated@@163 ($generated@@44 $generated@@61 $generated@@236)))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ) (!  (=> ($generated@@69 $generated@@237 ($generated@@95 $generated@@238)) (and (= ($generated@@44 $generated@@94 ($generated@@39 $generated@@94 $generated@@237)) $generated@@237) ($generated@@33 $generated@@94 ($generated@@39 $generated@@94 $generated@@237) ($generated@@95 $generated@@238))))
 :pattern ( ($generated@@69 $generated@@237 ($generated@@95 $generated@@238)))
)))
(assert (forall (($generated@@239 T@U) ($generated@@240 T@U) ) (!  (=> ($generated@@69 $generated@@239 ($generated@@35 $generated@@240)) (and (= ($generated@@44 $generated@@31 ($generated@@39 $generated@@31 $generated@@239)) $generated@@239) ($generated@@33 $generated@@31 ($generated@@39 $generated@@31 $generated@@239) ($generated@@35 $generated@@240))))
 :pattern ( ($generated@@69 $generated@@239 ($generated@@35 $generated@@240)))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (! (= ($generated@@33 $generated@@30 $generated@@241 ($generated@@34 $generated@@242 $generated@@243)) (forall (($generated@@244 T@U) ) (!  (=> ($generated@@96 ($generated@@101 $generated@@241) $generated@@244) (and ($generated@@69 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@241) $generated@@244) $generated@@243) ($generated@@69 $generated@@244 $generated@@242)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@241) $generated@@244))
 :pattern ( ($generated@@96 ($generated@@101 $generated@@241) $generated@@244))
)))
 :pattern ( ($generated@@33 $generated@@30 $generated@@241 ($generated@@34 $generated@@242 $generated@@243)))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (!  (=> (and ($generated@@80 $generated@@247) (and ($generated@@60 $generated@@245) (exists (($generated@@248 T@U) ) (! ($generated@@79 $generated@@61 $generated@@245 ($generated@@62 $generated@@246 $generated@@248) $generated@@247)
 :pattern ( ($generated@@79 $generated@@61 $generated@@245 ($generated@@62 $generated@@246 $generated@@248) $generated@@247))
)))) ($generated@@81 ($generated@@140 $generated@@245) $generated@@246 $generated@@247))
 :pattern ( ($generated@@81 ($generated@@140 $generated@@245) $generated@@246 $generated@@247))
)))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ) (!  (=> (and ($generated@@80 $generated@@251) (and ($generated@@60 $generated@@249) (exists (($generated@@252 T@U) ) (! ($generated@@79 $generated@@61 $generated@@249 ($generated@@62 $generated@@252 $generated@@250) $generated@@251)
 :pattern ( ($generated@@79 $generated@@61 $generated@@249 ($generated@@62 $generated@@252 $generated@@250) $generated@@251))
)))) ($generated@@81 ($generated@@143 $generated@@249) $generated@@250 $generated@@251))
 :pattern ( ($generated@@81 ($generated@@143 $generated@@249) $generated@@250 $generated@@251))
)))
(assert (forall (($generated@@253 T@U) ($generated@@254 T@U) ) (! (= ($generated@@68 ($generated@@29 $generated@@42 $generated@@253) ($generated@@29 $generated@@42 $generated@@254)) ($generated@@29 $generated@@61 ($generated@@68 $generated@@253 $generated@@254)))
 :pattern ( ($generated@@68 ($generated@@29 $generated@@42 $generated@@253) ($generated@@29 $generated@@42 $generated@@254)))
)))
(assert (forall (($generated@@255 Int) ) (! (= ($generated@@44 $generated@@12 ($generated@@16 ($generated@@45 $generated@@255))) ($generated@@29 $generated@@42 ($generated@@44 $generated@@12 ($generated@@16 $generated@@255))))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@16 ($generated@@45 $generated@@255))))
)))
(assert (forall (($generated@@256 T@U) ($generated@@257 T@T) ) (! (= ($generated@@44 $generated@@257 ($generated@@29 $generated@@257 $generated@@256)) ($generated@@29 $generated@@42 ($generated@@44 $generated@@257 $generated@@256)))
 :pattern ( ($generated@@44 $generated@@257 ($generated@@29 $generated@@257 $generated@@256)))
)))
(assert (forall (($generated@@258 T@U) ) (!  (=> (= ($generated@@66 $generated@@258) 0) (= $generated@@258 $generated@@67))
 :pattern ( ($generated@@66 $generated@@258))
)))
(assert (forall (($generated@@259 T@U) ($generated@@260 T@U) ) (! ($generated@@79 $generated@@12 $generated@@260 $generated@@0 $generated@@259)
 :pattern ( ($generated@@79 $generated@@12 $generated@@260 $generated@@0 $generated@@259))
)))
(assert (forall (($generated@@261 T@U) ($generated@@262 T@U) ) (! ($generated@@79 $generated@@114 $generated@@262 $generated $generated@@261)
 :pattern ( ($generated@@79 $generated@@114 $generated@@262 $generated $generated@@261))
)))
(assert (forall (($generated@@263 T@U) ($generated@@264 T@U) ) (! (= ($generated@@33 $generated@@31 $generated@@263 ($generated@@35 $generated@@264)) (forall (($generated@@265 Int) ) (!  (=> (and (<= 0 $generated@@265) (< $generated@@265 ($generated@@66 $generated@@263))) ($generated@@69 ($generated@@40 $generated@@263 $generated@@265) $generated@@264))
 :pattern ( ($generated@@40 $generated@@263 $generated@@265))
)))
 :pattern ( ($generated@@33 $generated@@31 $generated@@263 ($generated@@35 $generated@@264)))
)))
(assert (forall (($generated@@266 T@U) ) (!  (or (= $generated@@266 $generated@@169) (exists (($generated@@267 T@U) ($generated@@268 T@U) ) ($generated@@96 ($generated@@230 $generated@@266) ($generated@@44 $generated@@61 ($generated@@68 $generated@@267 $generated@@268)))))
 :pattern ( ($generated@@230 $generated@@266))
)))
(assert (forall (($generated@@270 T@U) ($generated@@271 Int) ) (!  (=> (and (<= 0 $generated@@271) (< $generated@@271 ($generated@@66 $generated@@270))) (< ($generated@@164 ($generated@@39 $generated@@61 ($generated@@40 $generated@@270 $generated@@271))) ($generated@@269 $generated@@270)))
 :pattern ( ($generated@@164 ($generated@@39 $generated@@61 ($generated@@40 $generated@@270 $generated@@271))))
)))
(assert (forall (($generated@@272 T@U) ($generated@@273 T@U) ($generated@@274 T@U) ) (!  (=> ($generated@@33 $generated@@30 $generated@@272 ($generated@@34 $generated@@273 $generated@@274)) (and (and ($generated@@33 $generated@@94 ($generated@@101 $generated@@272) ($generated@@95 $generated@@273)) ($generated@@33 $generated@@94 ($generated@@227 $generated@@272) ($generated@@95 $generated@@274))) ($generated@@33 $generated@@94 ($generated@@230 $generated@@272) ($generated@@95 ($generated@@62 $generated@@273 $generated@@274)))))
 :pattern ( ($generated@@33 $generated@@30 $generated@@272 ($generated@@34 $generated@@273 $generated@@274)))
)))
(assert (forall (($generated@@275 T@U) ) (! ($generated@@33 $generated@@12 $generated@@275 $generated@@0)
 :pattern ( ($generated@@33 $generated@@12 $generated@@275 $generated@@0))
)))
(assert (forall (($generated@@276 T@U) ) (! ($generated@@33 $generated@@114 $generated@@276 $generated)
 :pattern ( ($generated@@33 $generated@@114 $generated@@276 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@277 () T@U)
(declare-fun $generated@@278 (T@U) Bool)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () T@U)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 () T@U)
(declare-fun $generated@@283 () T@U)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@284  (=> (and (and ($generated@@80 $generated@@277) ($generated@@278 $generated@@277)) (and (= $generated@@279 $generated@@277) $generated@@37)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@96 ($generated@@101 $generated@@280) ($generated@@44 $generated@@31 $generated@@281))) (=> ($generated@@96 ($generated@@101 $generated@@280) ($generated@@44 $generated@@31 $generated@@281)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (<= 0 ($generated@@45 0)) (< ($generated@@45 0) ($generated@@66 ($generated@@39 $generated@@31 ($generated@@41 $generated@@42 $generated@@42 ($generated@@43 $generated@@280) ($generated@@44 $generated@@31 $generated@@281))))))))))))
(let (($generated@@285 true))
(let (($generated@@286  (=> (= $generated@@282 ($generated@@180 $generated@@283 $generated@@279 $generated@@6 false)) (=> (and ($generated@@79 $generated@@30 $generated@@280 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0)) $generated@@279) ($generated@@100 $generated@@280)) (=> (and (and ($generated@@36 $generated@@37 $generated@@280) ($generated@@79 $generated@@31 $generated@@281 ($generated@@35 $generated) $generated@@279)) (and ($generated@@102 $generated@@281) ($generated@@38 $generated@@281))) (and (=> (= (ControlFlow 0 5) 1) $generated@@285) (=> (= (ControlFlow 0 5) 3) $generated@@284)))))))
(let (($generated@@287  (=> (and ($generated@@80 $generated@@279) ($generated@@278 $generated@@279)) (=> (and (and ($generated@@33 $generated@@30 $generated@@280 ($generated@@34 ($generated@@35 $generated) ($generated@@35 $generated@@0))) ($generated@@33 $generated@@31 $generated@@281 ($generated@@35 $generated))) (and (= 2 $generated@@27) (= (ControlFlow 0 6) 5))) $generated@@286))))
$generated@@287)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)