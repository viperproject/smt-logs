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
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@U T@U) Bool)
(declare-fun $generated@@41 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@60 (T@U T@U) T@U)
(declare-fun $generated@@65 (T@U T@U) T@U)
(declare-fun $generated@@70 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@77 () Int)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@124 () T@T)
(declare-fun $generated@@125 () T@T)
(declare-fun $generated@@126 (T@T T@T) T@T)
(declare-fun $generated@@127 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@128 (T@T) T@T)
(declare-fun $generated@@129 (T@T) T@T)
(declare-fun $generated@@162 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@163 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@164 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@196 (T@U) T@U)
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
(assert (forall (($generated@@29 T@U) ) (!  (not ($generated@@27 $generated@@28 $generated@@29))
 :pattern ( ($generated@@27 $generated@@28 $generated@@29))
)))
(assert (= ($generated@@10 $generated@@31) 3))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> (and (and ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@35 $generated@@36)) (forall (($generated@@39 T@U) ) (!  (=> ($generated@@33 $generated@@39 $generated@@37) ($generated@@33 $generated@@39 $generated@@35))
 :pattern ( ($generated@@33 $generated@@39 $generated@@37))
 :pattern ( ($generated@@33 $generated@@39 $generated@@35))
))) (forall (($generated@@40 T@U) ) (!  (=> ($generated@@33 $generated@@40 $generated@@36) ($generated@@33 $generated@@40 $generated@@38))
 :pattern ( ($generated@@33 $generated@@40 $generated@@36))
 :pattern ( ($generated@@33 $generated@@40 $generated@@38))
))) ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@37 $generated@@38)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@35 $generated@@36)) ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@37 $generated@@38)))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and ($generated@@43 $generated@@47) (and ($generated@@33 $generated@@49 $generated@@45) ($generated@@30 $generated@@31 $generated@@48 ($generated@@32 $generated@@45 $generated@@46)))) (= ($generated@@44 ($generated@@41 $generated@@45 $generated@@46 $generated@@42 $generated@@48 $generated@@49) $generated@@28) ($generated@@44 ($generated@@41 $generated@@45 $generated@@46 $generated@@47 $generated@@48 $generated@@49) $generated@@28)))
 :pattern ( ($generated@@41 $generated@@45 $generated@@46 $generated@@42 $generated@@48 $generated@@49) ($generated@@43 $generated@@47))
 :pattern ( ($generated@@41 $generated@@45 $generated@@46 $generated@@47 $generated@@48 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@51 $generated@@53 ($generated@@50 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@50 $generated@@53 $generated@@52))
)))
(assert ($generated@@43 $generated@@42))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58) ($generated@@55 $generated@@59 $generated@@56 $generated@@57 $generated@@58))
 :pattern ( ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@55 $generated@@31 $generated@@63 ($generated@@60 $generated@@61 $generated@@62) $generated@@64) ($generated@@55 $generated@@31 $generated@@63 ($generated@@32 $generated@@61 $generated@@62) $generated@@64))
 :pattern ( ($generated@@55 $generated@@31 $generated@@63 ($generated@@60 $generated@@61 $generated@@62) $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@55 $generated@@31 $generated@@68 ($generated@@65 $generated@@66 $generated@@67) $generated@@69) ($generated@@55 $generated@@31 $generated@@68 ($generated@@60 $generated@@66 $generated@@67) $generated@@69))
 :pattern ( ($generated@@55 $generated@@31 $generated@@68 ($generated@@65 $generated@@66 $generated@@67) $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> (and ($generated@@43 $generated@@75) ($generated@@55 $generated@@31 $generated@@72 ($generated@@32 $generated@@73 $generated@@74) $generated@@75)) (forall (($generated@@76 T@U) ) (!  (=> (and ($generated@@54 $generated@@76 $generated@@73 $generated@@75) ($generated@@71 $generated@@73 $generated@@74 $generated@@75 $generated@@72 $generated@@76)) ($generated@@54 ($generated@@70 $generated@@73 $generated@@74 $generated@@75 $generated@@72 $generated@@76) $generated@@74 $generated@@75))
 :pattern ( ($generated@@70 $generated@@73 $generated@@74 $generated@@75 $generated@@72 $generated@@76))
)))
 :pattern ( ($generated@@55 $generated@@31 $generated@@72 ($generated@@32 $generated@@73 $generated@@74) $generated@@75))
)))
(assert  (=> (<= 0 $generated@@77) (forall (($generated@@80 T@U) ) (!  (=> (or ($generated@@79 $generated@@80) (and (< 0 $generated@@77) ($generated@@30 $generated@@31 $generated@@80 ($generated@@65 $generated@@0 $generated)))) (and (= ($generated@@78 $generated@@80) $generated@@80) ($generated@@30 $generated@@31 ($generated@@78 $generated@@80) ($generated@@65 $generated@@0 $generated))))
 :pattern ( ($generated@@78 $generated@@80))
))))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> ($generated@@44 $generated@@81 $generated@@82) (= $generated@@81 $generated@@82))
 :pattern ( ($generated@@44 $generated@@81 $generated@@82))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@83 ($generated@@32 $generated@@84 $generated@@85)) (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> (and (and ($generated@@43 $generated@@86) ($generated@@33 $generated@@87 $generated@@84)) ($generated@@71 $generated@@84 $generated@@85 $generated@@86 $generated@@83 $generated@@87)) ($generated@@33 ($generated@@70 $generated@@84 $generated@@85 $generated@@86 $generated@@83 $generated@@87) $generated@@85))
 :pattern ( ($generated@@70 $generated@@84 $generated@@85 $generated@@86 $generated@@83 $generated@@87))
)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@83 ($generated@@32 $generated@@84 $generated@@85)))
)))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@33 $generated@@88 $generated@@0) (and (= ($generated@@51 $generated@@12 ($generated@@50 $generated@@12 $generated@@88)) $generated@@88) ($generated@@30 $generated@@12 ($generated@@50 $generated@@12 $generated@@88) $generated@@0)))
 :pattern ( ($generated@@33 $generated@@88 $generated@@0))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@33 $generated@@89 $generated) (and (= ($generated@@51 $generated@@11 ($generated@@50 $generated@@11 $generated@@89)) $generated@@89) ($generated@@30 $generated@@11 ($generated@@50 $generated@@11 $generated@@89) $generated)))
 :pattern ( ($generated@@33 $generated@@89 $generated))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@33 ($generated@@51 $generated@@92 $generated@@90) $generated@@91) ($generated@@30 $generated@@92 $generated@@90 $generated@@91))
 :pattern ( ($generated@@33 ($generated@@51 $generated@@92 $generated@@90) $generated@@91))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@93 ($generated@@32 $generated@@94 $generated@@95)) $generated@@94)
 :pattern ( ($generated@@32 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@96 ($generated@@32 $generated@@97 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@32 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@99 ($generated@@60 $generated@@100 $generated@@101)) $generated@@100)
 :pattern ( ($generated@@60 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@60 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@60 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@105 ($generated@@65 $generated@@106 $generated@@107)) $generated@@106)
 :pattern ( ($generated@@65 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@108 ($generated@@65 $generated@@109 $generated@@110)) $generated@@110)
 :pattern ( ($generated@@65 $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@50 $generated@@112 ($generated@@51 $generated@@112 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@51 $generated@@112 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@115 ($generated@@65 $generated@@113 $generated@@114))  (and ($generated@@30 $generated@@31 $generated@@115 ($generated@@60 $generated@@113 $generated@@114)) (forall (($generated@@116 T@U) )  (=> ($generated@@33 $generated@@116 $generated@@113) ($generated@@71 $generated@@113 $generated@@114 $generated@@42 $generated@@115 $generated@@116)))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@115 ($generated@@65 $generated@@113 $generated@@114)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@119 ($generated@@60 $generated@@117 $generated@@118))  (and ($generated@@30 $generated@@31 $generated@@119 ($generated@@32 $generated@@117 $generated@@118)) (forall (($generated@@120 T@U) )  (=> ($generated@@33 $generated@@120 $generated@@117) ($generated@@44 ($generated@@41 $generated@@117 $generated@@118 $generated@@42 $generated@@119 $generated@@120) $generated@@28)))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@119 ($generated@@60 $generated@@117 $generated@@118)))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@10 $generated@@121) 4) (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@123 $generated@@130 $generated@@131 ($generated@@127 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@132) $generated@@134) $generated@@132)
 :weight 0
))) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (or (= $generated@@139 $generated@@140) (= ($generated@@123 $generated@@135 $generated@@136 ($generated@@127 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@137) $generated@@140) ($generated@@123 $generated@@135 $generated@@136 $generated@@138 $generated@@140)))
 :weight 0
))) (= ($generated@@10 $generated@@124) 5)) (= ($generated@@10 $generated@@125) 6)) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (= ($generated@@10 ($generated@@126 $generated@@141 $generated@@142)) 7))) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (! (= ($generated@@128 ($generated@@126 $generated@@143 $generated@@144)) $generated@@143)
 :pattern ( ($generated@@126 $generated@@143 $generated@@144))
))) (forall (($generated@@145 T@T) ($generated@@146 T@T) ) (! (= ($generated@@129 ($generated@@126 $generated@@145 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@126 $generated@@145 $generated@@146))
))))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@43 $generated@@150) (= ($generated@@55 $generated@@31 $generated@@147 ($generated@@32 $generated@@148 $generated@@149) $generated@@150) (forall (($generated@@151 T@U) ) (!  (=> (and (and ($generated@@33 $generated@@151 $generated@@148) ($generated@@54 $generated@@151 $generated@@148 $generated@@150)) ($generated@@71 $generated@@148 $generated@@149 $generated@@150 $generated@@147 $generated@@151)) (forall (($generated@@152 T@U) ) (!  (=> (and (or (not (= $generated@@152 $generated@@122)) (not true)) ($generated@@27 ($generated@@41 $generated@@148 $generated@@149 $generated@@150 $generated@@147 $generated@@151) ($generated@@51 $generated@@121 $generated@@152))) ($generated@@15 ($generated@@50 $generated@@11 ($generated@@123 $generated@@124 $generated@@125 ($generated@@123 $generated@@121 ($generated@@126 $generated@@124 $generated@@125) $generated@@150 $generated@@152) $generated@@3))))
 :pattern ( ($generated@@27 ($generated@@41 $generated@@148 $generated@@149 $generated@@150 $generated@@147 $generated@@151) ($generated@@51 $generated@@121 $generated@@152)))
)))
 :pattern ( ($generated@@70 $generated@@148 $generated@@149 $generated@@150 $generated@@147 $generated@@151))
 :pattern ( ($generated@@41 $generated@@148 $generated@@149 $generated@@150 $generated@@147 $generated@@151))
))))
 :pattern ( ($generated@@55 $generated@@31 $generated@@147 ($generated@@32 $generated@@148 $generated@@149) $generated@@150))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> ($generated@@33 $generated@@155 ($generated@@32 $generated@@153 $generated@@154)) (and (= ($generated@@51 $generated@@31 ($generated@@50 $generated@@31 $generated@@155)) $generated@@155) ($generated@@30 $generated@@31 ($generated@@50 $generated@@31 $generated@@155) ($generated@@32 $generated@@153 $generated@@154))))
 :pattern ( ($generated@@33 $generated@@155 ($generated@@32 $generated@@153 $generated@@154)))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> ($generated@@33 $generated@@158 ($generated@@60 $generated@@156 $generated@@157)) (and (= ($generated@@51 $generated@@31 ($generated@@50 $generated@@31 $generated@@158)) $generated@@158) ($generated@@30 $generated@@31 ($generated@@50 $generated@@31 $generated@@158) ($generated@@60 $generated@@156 $generated@@157))))
 :pattern ( ($generated@@33 $generated@@158 ($generated@@60 $generated@@156 $generated@@157)))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> ($generated@@33 $generated@@161 ($generated@@65 $generated@@159 $generated@@160)) (and (= ($generated@@51 $generated@@31 ($generated@@50 $generated@@31 $generated@@161)) $generated@@161) ($generated@@30 $generated@@31 ($generated@@50 $generated@@31 $generated@@161) ($generated@@65 $generated@@159 $generated@@160))))
 :pattern ( ($generated@@33 $generated@@161 ($generated@@65 $generated@@159 $generated@@160)))
)))
(assert  (and (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@162 $generated@@165 $generated@@166 $generated@@167 ($generated@@164 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@171 $generated@@168) $generated@@170 $generated@@171) $generated@@168)
 :weight 0
)) (and (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (or (= $generated@@177 $generated@@179) (= ($generated@@162 $generated@@172 $generated@@173 $generated@@174 ($generated@@164 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@178 $generated@@175) $generated@@179 $generated@@180) ($generated@@162 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@179 $generated@@180)))
 :weight 0
)) (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (or (= $generated@@187 $generated@@189) (= ($generated@@162 $generated@@181 $generated@@182 $generated@@183 ($generated@@164 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@188 $generated@@189) ($generated@@162 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@188 $generated@@189)))
 :weight 0
)))))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 Bool) ($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@15 ($generated@@162 $generated@@121 $generated@@124 $generated@@11 ($generated@@163 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))  (=> (and (or (not (= $generated@@194 $generated@@190)) (not true)) ($generated@@15 ($generated@@50 $generated@@11 ($generated@@123 $generated@@124 $generated@@125 ($generated@@123 $generated@@121 ($generated@@126 $generated@@124 $generated@@125) $generated@@191 $generated@@194) $generated@@192)))) $generated@@193))
 :pattern ( ($generated@@162 $generated@@121 $generated@@124 $generated@@11 ($generated@@163 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (!  (and (= ($generated@@26 ($generated@@32 $generated@@197 $generated@@198)) $generated@@4) (= ($generated@@196 ($generated@@32 $generated@@197 $generated@@198)) $generated@@7))
 :pattern ( ($generated@@32 $generated@@197 $generated@@198))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (!  (and (= ($generated@@26 ($generated@@60 $generated@@199 $generated@@200)) $generated@@5) (= ($generated@@196 ($generated@@60 $generated@@199 $generated@@200)) $generated@@8))
 :pattern ( ($generated@@60 $generated@@199 $generated@@200))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (!  (and (= ($generated@@26 ($generated@@65 $generated@@201 $generated@@202)) $generated@@6) (= ($generated@@196 ($generated@@65 $generated@@201 $generated@@202)) $generated@@9))
 :pattern ( ($generated@@65 $generated@@201 $generated@@202))
)))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> (and (and ($generated@@43 $generated@@205) (and ($generated@@33 $generated@@207 $generated@@203) ($generated@@30 $generated@@31 $generated@@206 ($generated@@32 $generated@@203 $generated@@204)))) ($generated@@44 ($generated@@41 $generated@@203 $generated@@204 $generated@@42 $generated@@206 $generated@@207) $generated@@28)) (= ($generated@@71 $generated@@203 $generated@@204 $generated@@42 $generated@@206 $generated@@207) ($generated@@71 $generated@@203 $generated@@204 $generated@@205 $generated@@206 $generated@@207)))
 :pattern ( ($generated@@71 $generated@@203 $generated@@204 $generated@@42 $generated@@206 $generated@@207) ($generated@@43 $generated@@205))
 :pattern ( ($generated@@71 $generated@@203 $generated@@204 $generated@@205 $generated@@206 $generated@@207))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@44 $generated@@208 $generated@@209) (forall (($generated@@210 T@U) ) (! (= ($generated@@27 $generated@@208 $generated@@210) ($generated@@27 $generated@@209 $generated@@210))
 :pattern ( ($generated@@27 $generated@@208 $generated@@210))
 :pattern ( ($generated@@27 $generated@@209 $generated@@210))
)))
 :pattern ( ($generated@@44 $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! ($generated@@55 $generated@@12 $generated@@212 $generated@@0 $generated@@211)
 :pattern ( ($generated@@55 $generated@@12 $generated@@212 $generated@@0 $generated@@211))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (! ($generated@@55 $generated@@11 $generated@@214 $generated $generated@@213)
 :pattern ( ($generated@@55 $generated@@11 $generated@@214 $generated $generated@@213))
)))
(assert (forall (($generated@@215 T@U) ) (! ($generated@@30 $generated@@12 $generated@@215 $generated@@0)
 :pattern ( ($generated@@30 $generated@@12 $generated@@215 $generated@@0))
)))
(assert (forall (($generated@@216 T@U) ) (! ($generated@@30 $generated@@11 $generated@@216 $generated)
 :pattern ( ($generated@@30 $generated@@11 $generated@@216 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@221 true))
(let (($generated@@222  (=> ($generated@@30 $generated@@31 ($generated@@78 $generated@@217) ($generated@@65 $generated@@0 $generated)) (=> (and ($generated@@55 $generated@@31 $generated@@217 ($generated@@65 $generated@@0 $generated) $generated@@218) (= (ControlFlow 0 2) (- 0 1))) (= $generated@@217 $generated@@217)))))
(let (($generated@@223  (=> (= $generated@@219 ($generated@@163 $generated@@122 $generated@@218 $generated@@3 false)) (and (=> (= (ControlFlow 0 4) 2) $generated@@222) (=> (= (ControlFlow 0 4) 3) $generated@@221)))))
(let (($generated@@224  (=> (and (and (and ($generated@@43 $generated@@218) ($generated@@220 $generated@@218)) ($generated@@30 $generated@@31 $generated@@217 ($generated@@65 $generated@@0 $generated))) (and (= 0 $generated@@77) (= (ControlFlow 0 5) 4))) $generated@@223)))
$generated@@224)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)