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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U T@U T@U) T@U)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@36 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 (T@U Int) T@U)
(declare-fun $generated@@41 (Int) Int)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) T@U)
(declare-fun $generated@@47 (T@U T@U) Bool)
(declare-fun $generated@@53 (T@U) Bool)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U Int) T@U)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@70 () Int)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@77 (T@U) Int)
(declare-fun $generated@@80 (T@U T@U T@U) Bool)
(declare-fun $generated@@88 (T@U) T@U)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@122 (T@U) Int)
(declare-fun $generated@@123 (T@U) Int)
(declare-fun $generated@@137 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@138 () T@T)
(declare-fun $generated@@139 () T@T)
(declare-fun $generated@@140 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@141 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 (T@T T@T) T@T)
(declare-fun $generated@@144 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@145 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@146 (T@T) T@T)
(declare-fun $generated@@147 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ($generated@@25 T@U) ) (! (= ($generated@@21 $generated@@23 ($generated@@22 $generated@@24) $generated@@25) ($generated@@21 $generated@@23 $generated@@24 $generated@@25))
 :pattern ( ($generated@@21 $generated@@23 ($generated@@22 $generated@@24) $generated@@25))
)))
(assert (= ($generated@@26 $generated@@27) 0))
(assert (= ($generated@@28 $generated@@29) $generated@@2))
(assert (= ($generated@@5 $generated@@31) 3))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> ($generated@@33 $generated@@35) ($generated@@30 $generated@@31 $generated@@29 ($generated@@32 $generated@@34) $generated@@35))
 :pattern ( ($generated@@30 $generated@@31 $generated@@29 ($generated@@32 $generated@@34) $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ) (! ($generated@@36 $generated@@31 $generated@@29 ($generated@@32 $generated@@37))
 :pattern ( ($generated@@36 $generated@@31 $generated@@29 ($generated@@32 $generated@@37)))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 Int) ) (!  (=> (= $generated@@40 0) (= ($generated@@38 $generated@@39 $generated@@40) $generated@@39))
 :pattern ( ($generated@@38 $generated@@39 $generated@@40))
)))
(assert (forall (($generated@@42 Int) ) (! (= ($generated@@41 $generated@@42) $generated@@42)
 :pattern ( ($generated@@41 $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@T) ) (! (= ($generated@@43 $generated@@45 $generated@@44) $generated@@44)
 :pattern ( ($generated@@43 $generated@@45 $generated@@44))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@36 $generated@@31 ($generated@@46 $generated@@49 $generated@@50) ($generated@@32 $generated@@48))  (and ($generated@@47 $generated@@49 $generated@@48) ($generated@@36 $generated@@31 $generated@@50 ($generated@@32 $generated@@48))))
 :pattern ( ($generated@@36 $generated@@31 ($generated@@46 $generated@@49 $generated@@50) ($generated@@32 $generated@@48)))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 Int) ) (!  (=> (and (<= 0 $generated@@52) (<= $generated@@52 ($generated@@26 $generated@@51))) (= ($generated@@26 ($generated@@38 $generated@@51 $generated@@52)) (- ($generated@@26 $generated@@51) $generated@@52)))
 :pattern ( ($generated@@26 ($generated@@38 $generated@@51 $generated@@52)))
)))
(assert (forall (($generated@@54 T@U) ) (! (= ($generated@@53 $generated@@54) (= ($generated@@28 $generated@@54) $generated@@2))
 :pattern ( ($generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ) (! (= ($generated@@55 $generated@@56) (= ($generated@@28 $generated@@56) $generated@@3))
 :pattern ( ($generated@@55 $generated@@56))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@57 $generated@@59 $generated@@60)  (and (= ($generated@@26 $generated@@59) ($generated@@26 $generated@@60)) (forall (($generated@@61 Int) ) (!  (=> (and (<= 0 $generated@@61) (< $generated@@61 ($generated@@26 $generated@@59))) (= ($generated@@58 $generated@@59 $generated@@61) ($generated@@58 $generated@@60 $generated@@61)))
 :pattern ( ($generated@@58 $generated@@59 $generated@@61))
 :pattern ( ($generated@@58 $generated@@60 $generated@@61))
))))
 :pattern ( ($generated@@57 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@63 $generated@@65 ($generated@@62 $generated@@65 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@62 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ) (!  (=> ($generated@@55 $generated@@66) (exists (($generated@@67 T@U) ($generated@@68 T@U) ) (= $generated@@66 ($generated@@46 $generated@@67 $generated@@68))))
 :pattern ( ($generated@@55 $generated@@66))
)))
(assert (forall (($generated@@69 T@U) ) (!  (=> ($generated@@53 $generated@@69) (= $generated@@69 $generated@@29))
 :pattern ( ($generated@@53 $generated@@69))
)))
(assert (= ($generated@@5 $generated@@71) 4))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> (or ($generated@@72 $generated@@74 ($generated@@43 $generated@@71 $generated@@76)) (and (< 1 $generated@@70) ($generated@@36 $generated@@71 $generated@@76 ($generated@@73 $generated@@74)))) (and (=> (not ($generated@@57 $generated@@76 $generated@@27)) ($generated@@72 $generated@@74 ($generated@@43 $generated@@71 ($generated@@38 ($generated@@43 $generated@@71 $generated@@76) ($generated@@41 1))))) (= ($generated@@21 $generated@@74 ($generated@@22 $generated@@75) ($generated@@43 $generated@@71 $generated@@76)) (ite ($generated@@57 $generated@@76 $generated@@27) $generated@@29 ($generated@@46 ($generated@@58 ($generated@@43 $generated@@71 $generated@@76) ($generated@@41 0)) ($generated@@43 $generated@@31 ($generated@@21 $generated@@74 ($generated@@22 $generated@@75) ($generated@@43 $generated@@71 ($generated@@38 ($generated@@43 $generated@@71 $generated@@76) ($generated@@41 1))))))))))
 :weight 3
 :pattern ( ($generated@@21 $generated@@74 ($generated@@22 $generated@@75) ($generated@@43 $generated@@71 $generated@@76)))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 Int) ) (!  (=> (and (< 0 $generated@@79) (<= $generated@@79 ($generated@@26 $generated@@78))) (< ($generated@@77 ($generated@@38 $generated@@78 $generated@@79)) ($generated@@77 $generated@@78)))
 :pattern ( ($generated@@77 ($generated@@38 $generated@@78 $generated@@79)))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@80 ($generated@@63 $generated@@84 $generated@@81) $generated@@82 $generated@@83) ($generated@@30 $generated@@84 $generated@@81 $generated@@82 $generated@@83))
 :pattern ( ($generated@@80 ($generated@@63 $generated@@84 $generated@@81) $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 Int) ($generated@@87 Int) ) (!  (=> (and (and (<= 0 $generated@@86) (<= 0 $generated@@87)) (< $generated@@87 (- ($generated@@26 $generated@@85) $generated@@86))) (= ($generated@@58 ($generated@@38 $generated@@85 $generated@@86) $generated@@87) ($generated@@58 $generated@@85 (+ $generated@@87 $generated@@86))))
 :weight 25
 :pattern ( ($generated@@58 ($generated@@38 $generated@@85 $generated@@86) $generated@@87))
)))
(assert (forall (($generated@@90 T@U) ) (!  (and (= ($generated@@88 ($generated@@32 $generated@@90)) $generated@@1) (= ($generated@@89 ($generated@@32 $generated@@90)) $generated@@4))
 :pattern ( ($generated@@32 $generated@@90))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> ($generated@@36 $generated@@31 $generated@@92 ($generated@@32 $generated@@91)) (or ($generated@@53 $generated@@92) ($generated@@55 $generated@@92)))
 :pattern ( ($generated@@55 $generated@@92) ($generated@@36 $generated@@31 $generated@@92 ($generated@@32 $generated@@91)))
 :pattern ( ($generated@@53 $generated@@92) ($generated@@36 $generated@@31 $generated@@92 ($generated@@32 $generated@@91)))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> ($generated@@57 $generated@@93 $generated@@94) (= $generated@@93 $generated@@94))
 :pattern ( ($generated@@57 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@47 ($generated@@63 $generated@@97 $generated@@95) $generated@@96) ($generated@@36 $generated@@97 $generated@@95 $generated@@96))
 :pattern ( ($generated@@47 ($generated@@63 $generated@@97 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ) (! (<= 0 ($generated@@26 $generated@@98))
 :pattern ( ($generated@@26 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@28 ($generated@@46 $generated@@99 $generated@@100)) $generated@@3)
 :pattern ( ($generated@@46 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@101 ($generated@@46 $generated@@102 $generated@@103)) $generated@@102)
 :pattern ( ($generated@@46 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@104 ($generated@@46 $generated@@105 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@46 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@30 $generated@@71 $generated@@107 ($generated@@73 $generated@@108) $generated@@109) (forall (($generated@@110 Int) ) (!  (=> (and (<= 0 $generated@@110) (< $generated@@110 ($generated@@26 $generated@@107))) ($generated@@80 ($generated@@58 $generated@@107 $generated@@110) $generated@@108 $generated@@109))
 :pattern ( ($generated@@58 $generated@@107 $generated@@110))
)))
 :pattern ( ($generated@@30 $generated@@71 $generated@@107 ($generated@@73 $generated@@108) $generated@@109))
)))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> (and (or ($generated@@72 $generated@@112 $generated@@114) (and (< 1 $generated@@70) (and ($generated@@36 $generated@@71 $generated@@114 ($generated@@73 $generated@@112)) ($generated@@30 $generated@@71 $generated@@114 ($generated@@73 $generated@@112) $generated@@111)))) ($generated@@33 $generated@@111)) ($generated@@30 $generated@@31 ($generated@@21 $generated@@112 $generated@@113 $generated@@114) ($generated@@32 $generated@@112) $generated@@111))
 :pattern ( ($generated@@30 $generated@@31 ($generated@@21 $generated@@112 $generated@@113 $generated@@114) ($generated@@32 $generated@@112) $generated@@111))
))))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@115 ($generated@@73 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@73 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@88 ($generated@@73 $generated@@117)) $generated)
 :pattern ( ($generated@@73 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@32 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@32 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@62 $generated@@121 ($generated@@63 $generated@@121 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@63 $generated@@121 $generated@@120))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (! (< ($generated@@122 $generated@@124) ($generated@@123 ($generated@@46 $generated@@124 $generated@@125)))
 :pattern ( ($generated@@46 $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (< ($generated@@123 $generated@@127) ($generated@@123 ($generated@@46 $generated@@126 $generated@@127)))
 :pattern ( ($generated@@46 $generated@@126 $generated@@127))
)))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (or ($generated@@72 $generated@@128 $generated@@130) (and (< 1 $generated@@70) ($generated@@36 $generated@@71 $generated@@130 ($generated@@73 $generated@@128)))) ($generated@@36 $generated@@31 ($generated@@21 $generated@@128 $generated@@129 $generated@@130) ($generated@@32 $generated@@128)))
 :pattern ( ($generated@@21 $generated@@128 $generated@@129 $generated@@130))
))))
(assert  (=> (<= 1 $generated@@70) (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> (or ($generated@@72 $generated@@131 $generated@@133) (and (< 1 $generated@@70) ($generated@@36 $generated@@71 $generated@@133 ($generated@@73 $generated@@131)))) (and (=> (not ($generated@@57 $generated@@133 $generated@@27)) ($generated@@72 $generated@@131 ($generated@@38 $generated@@133 ($generated@@41 1)))) (= ($generated@@21 $generated@@131 ($generated@@22 $generated@@132) $generated@@133) (ite ($generated@@57 $generated@@133 $generated@@27) $generated@@29 ($generated@@46 ($generated@@58 $generated@@133 ($generated@@41 0)) ($generated@@21 $generated@@131 $generated@@132 ($generated@@38 $generated@@133 ($generated@@41 1))))))))
 :pattern ( ($generated@@21 $generated@@131 ($generated@@22 $generated@@132) $generated@@133))
))))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and ($generated@@33 $generated@@136) (and ($generated@@55 $generated@@134) ($generated@@30 $generated@@31 $generated@@134 ($generated@@32 $generated@@135) $generated@@136))) ($generated@@80 ($generated@@101 $generated@@134) $generated@@135 $generated@@136))
 :pattern ( ($generated@@80 ($generated@@101 $generated@@134) $generated@@135 $generated@@136))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@137 $generated@@148 $generated@@149 $generated@@150 ($generated@@144 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@153 $generated@@154) $generated@@151)
 :weight 0
)) (and (forall (($generated@@155 T@T) ($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (!  (or (= $generated@@160 $generated@@162) (= ($generated@@137 $generated@@155 $generated@@156 $generated@@157 ($generated@@144 $generated@@155 $generated@@156 $generated@@157 $generated@@159 $generated@@160 $generated@@161 $generated@@158) $generated@@162 $generated@@163) ($generated@@137 $generated@@155 $generated@@156 $generated@@157 $generated@@159 $generated@@162 $generated@@163)))
 :weight 0
)) (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@170 $generated@@172) (= ($generated@@137 $generated@@164 $generated@@165 $generated@@166 ($generated@@144 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@137 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)))) (= ($generated@@5 $generated@@138) 5)) (= ($generated@@5 $generated@@139) 6)) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@141 $generated@@173 $generated@@174 ($generated@@145 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@175) $generated@@177) $generated@@175)
 :weight 0
))) (forall (($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ) (!  (or (= $generated@@182 $generated@@183) (= ($generated@@141 $generated@@178 $generated@@179 ($generated@@145 $generated@@178 $generated@@179 $generated@@181 $generated@@182 $generated@@180) $generated@@183) ($generated@@141 $generated@@178 $generated@@179 $generated@@181 $generated@@183)))
 :weight 0
))) (= ($generated@@5 $generated@@142) 7)) (forall (($generated@@184 T@T) ($generated@@185 T@T) ) (= ($generated@@5 ($generated@@143 $generated@@184 $generated@@185)) 8))) (forall (($generated@@186 T@T) ($generated@@187 T@T) ) (! (= ($generated@@146 ($generated@@143 $generated@@186 $generated@@187)) $generated@@186)
 :pattern ( ($generated@@143 $generated@@186 $generated@@187))
))) (forall (($generated@@188 T@T) ($generated@@189 T@T) ) (! (= ($generated@@147 ($generated@@143 $generated@@188 $generated@@189)) $generated@@189)
 :pattern ( ($generated@@143 $generated@@188 $generated@@189))
))))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 Bool) ($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@10 ($generated@@137 $generated@@138 $generated@@139 $generated@@6 ($generated@@140 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))  (=> (and (or (not (= $generated@@194 $generated@@190)) (not true)) ($generated@@10 ($generated@@62 $generated@@6 ($generated@@141 $generated@@139 $generated@@142 ($generated@@141 $generated@@138 ($generated@@143 $generated@@139 $generated@@142) $generated@@191 $generated@@194) $generated@@192)))) $generated@@193))
 :pattern ( ($generated@@137 $generated@@138 $generated@@139 $generated@@6 ($generated@@140 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ) (! (= ($generated@@122 ($generated@@63 $generated@@31 $generated@@196)) ($generated@@123 $generated@@196))
 :pattern ( ($generated@@122 ($generated@@63 $generated@@31 $generated@@196)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> ($generated@@47 $generated@@197 ($generated@@73 $generated@@198)) (and (= ($generated@@63 $generated@@71 ($generated@@62 $generated@@71 $generated@@197)) $generated@@197) ($generated@@36 $generated@@71 ($generated@@62 $generated@@71 $generated@@197) ($generated@@73 $generated@@198))))
 :pattern ( ($generated@@47 $generated@@197 ($generated@@73 $generated@@198)))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> ($generated@@47 $generated@@200 ($generated@@32 $generated@@199)) (and (= ($generated@@63 $generated@@31 ($generated@@62 $generated@@31 $generated@@200)) $generated@@200) ($generated@@36 $generated@@31 ($generated@@62 $generated@@31 $generated@@200) ($generated@@32 $generated@@199))))
 :pattern ( ($generated@@47 $generated@@200 ($generated@@32 $generated@@199)))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ) (!  (=> (and ($generated@@33 $generated@@203) (and ($generated@@55 $generated@@201) ($generated@@30 $generated@@31 $generated@@201 ($generated@@32 $generated@@202) $generated@@203))) ($generated@@30 $generated@@31 ($generated@@104 $generated@@201) ($generated@@32 $generated@@202) $generated@@203))
 :pattern ( ($generated@@30 $generated@@31 ($generated@@104 $generated@@201) ($generated@@32 $generated@@202) $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 Int) ($generated@@206 Int) ) (!  (=> (and (and (<= 0 $generated@@205) (<= $generated@@205 $generated@@206)) (< $generated@@206 ($generated@@26 $generated@@204))) (= ($generated@@58 ($generated@@38 $generated@@204 $generated@@205) (- $generated@@206 $generated@@205)) ($generated@@58 $generated@@204 $generated@@206)))
 :weight 25
 :pattern ( ($generated@@58 $generated@@204 $generated@@206) ($generated@@38 $generated@@204 $generated@@205))
)))
(assert (= $generated@@29 ($generated@@43 $generated@@31 $generated@@29)))
(assert (forall (($generated@@207 T@U) ($generated@@208 Int) ($generated@@209 Int) ) (!  (=> (and (and (<= 0 $generated@@208) (<= 0 $generated@@209)) (<= (+ $generated@@208 $generated@@209) ($generated@@26 $generated@@207))) (= ($generated@@38 ($generated@@38 $generated@@207 $generated@@208) $generated@@209) ($generated@@38 $generated@@207 (+ $generated@@208 $generated@@209))))
 :pattern ( ($generated@@38 ($generated@@38 $generated@@207 $generated@@208) $generated@@209))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ) (! (= ($generated@@46 ($generated@@43 $generated@@142 $generated@@210) ($generated@@43 $generated@@31 $generated@@211)) ($generated@@43 $generated@@31 ($generated@@46 $generated@@210 $generated@@211)))
 :pattern ( ($generated@@46 ($generated@@43 $generated@@142 $generated@@210) ($generated@@43 $generated@@31 $generated@@211)))
)))
(assert (forall (($generated@@212 Int) ) (! (= ($generated@@63 $generated@@7 ($generated@@11 ($generated@@41 $generated@@212))) ($generated@@43 $generated@@142 ($generated@@63 $generated@@7 ($generated@@11 $generated@@212))))
 :pattern ( ($generated@@63 $generated@@7 ($generated@@11 ($generated@@41 $generated@@212))))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@T) ) (! (= ($generated@@63 $generated@@214 ($generated@@43 $generated@@214 $generated@@213)) ($generated@@43 $generated@@142 ($generated@@63 $generated@@214 $generated@@213)))
 :pattern ( ($generated@@63 $generated@@214 ($generated@@43 $generated@@214 $generated@@213)))
)))
(assert (forall (($generated@@215 T@U) ) (!  (=> (= ($generated@@26 $generated@@215) 0) (= $generated@@215 $generated@@27))
 :pattern ( ($generated@@26 $generated@@215))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ) (!  (=> ($generated@@33 $generated@@219) (= ($generated@@30 $generated@@31 ($generated@@46 $generated@@217 $generated@@218) ($generated@@32 $generated@@216) $generated@@219)  (and ($generated@@80 $generated@@217 $generated@@216 $generated@@219) ($generated@@30 $generated@@31 $generated@@218 ($generated@@32 $generated@@216) $generated@@219))))
 :pattern ( ($generated@@30 $generated@@31 ($generated@@46 $generated@@217 $generated@@218) ($generated@@32 $generated@@216) $generated@@219))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (! (= ($generated@@36 $generated@@71 $generated@@220 ($generated@@73 $generated@@221)) (forall (($generated@@222 Int) ) (!  (=> (and (<= 0 $generated@@222) (< $generated@@222 ($generated@@26 $generated@@220))) ($generated@@47 ($generated@@58 $generated@@220 $generated@@222) $generated@@221))
 :pattern ( ($generated@@58 $generated@@220 $generated@@222))
)))
 :pattern ( ($generated@@36 $generated@@71 $generated@@220 ($generated@@73 $generated@@221)))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 Int) ) (!  (=> (and (<= 0 $generated@@224) (< $generated@@224 ($generated@@26 $generated@@223))) (< ($generated@@123 ($generated@@62 $generated@@31 ($generated@@58 $generated@@223 $generated@@224))) ($generated@@77 $generated@@223)))
 :pattern ( ($generated@@123 ($generated@@62 $generated@@31 ($generated@@58 $generated@@223 $generated@@224))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@232  (=> (not ($generated@@57 $generated@@225 $generated@@27)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= 0 ($generated@@41 0)) (< ($generated@@41 0) ($generated@@26 $generated@@225)))) (=> (and (<= 0 ($generated@@41 0)) (< ($generated@@41 0) ($generated@@26 $generated@@225))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 ($generated@@41 1)) (<= ($generated@@41 1) ($generated@@26 $generated@@225)))) (=> (and (<= 0 ($generated@@41 1)) (<= ($generated@@41 1) ($generated@@26 $generated@@225))) (=> (= $generated@@226 ($generated@@38 $generated@@225 ($generated@@41 1))) (=> (and ($generated@@30 $generated@@71 $generated@@226 ($generated@@73 $generated@@227) $generated@@228) (= (ControlFlow 0 4) (- 0 3))) (< ($generated@@77 $generated@@226) ($generated@@77 $generated@@225)))))))))))
(let (($generated@@233 true))
(let (($generated@@234 true))
(let (($generated@@235  (=> (= $generated@@229 ($generated@@140 $generated@@230 $generated@@228 $generated@@0 false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@234) (=> (= (ControlFlow 0 7) 2) $generated@@233)) (=> (= (ControlFlow 0 7) 4) $generated@@232)))))
(let (($generated@@236  (=> (and (and (and ($generated@@33 $generated@@228) ($generated@@231 $generated@@228)) ($generated@@36 $generated@@71 $generated@@225 ($generated@@73 $generated@@227))) (and (= 1 $generated@@70) (= (ControlFlow 0 8) 7))) $generated@@235)))
$generated@@236))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)