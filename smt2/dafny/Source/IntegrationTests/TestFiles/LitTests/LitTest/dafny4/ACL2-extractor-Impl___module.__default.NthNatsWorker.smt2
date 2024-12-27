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
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U Int) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (Int) Bool)
(declare-fun $generated@@26 (Int) Int)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U T@U T@U) Int)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) Bool)
(declare-fun $generated@@37 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@50 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@51 (T@U) Bool)
(declare-fun $generated@@55 (T@U T@U Int T@U) T@U)
(declare-fun $generated@@56 (T@U Int T@U) Bool)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@58 (T@U) T@U)
(declare-fun $generated@@66 (T@U T@U) Bool)
(declare-fun $generated@@71 (T@U) Bool)
(declare-fun $generated@@73 (T@T T@U) T@U)
(declare-fun $generated@@91 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@116 (T@U) Int)
(declare-fun $generated@@117 (T@U) Int)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 () T@T)
(declare-fun $generated@@134 () T@T)
(declare-fun $generated@@135 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@136 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@137 () T@T)
(declare-fun $generated@@138 (T@T T@T) T@T)
(declare-fun $generated@@139 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@140 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@T) T@T)
(declare-fun $generated@@142 (T@T) T@T)
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
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (or ($generated@@25 $generated@@31) (and (< 1 $generated@@22) (<= ($generated@@26 0) $generated@@31))) (and (=> (or (not (= $generated@@31 ($generated@@26 0))) (not true)) ($generated@@25 (- $generated@@31 1))) (= ($generated@@23 ($generated@@24 $generated@@30) $generated@@31) (ite (= $generated@@31 ($generated@@26 0)) $generated@@27 ($generated@@28 ($generated@@29 $generated@@8 ($generated@@12 (- $generated@@31 1))) ($generated@@23 $generated@@30 (- $generated@@31 1)))))))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@30) $generated@@31))
))))
(assert (= ($generated@@32 $generated) $generated@@0))
(assert (= ($generated@@6 $generated@@35) 3))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (!  (=> (or ($generated@@36 $generated@@41 ($generated@@34 $generated@@35 $generated@@43)) (and (< 1 $generated@@22) ($generated@@37 $generated@@35 $generated@@43 ($generated@@38 $generated@@41)))) (and (=> (not ($generated@@11 ($generated@@34 $generated@@7 ($generated@@10 ($generated@@39 ($generated@@34 $generated@@35 $generated@@43)))))) (let (($generated@@44 ($generated@@34 $generated@@35 ($generated@@40 ($generated@@34 $generated@@35 $generated@@43)))))
($generated@@36 $generated@@41 $generated@@44))) (= ($generated@@33 $generated@@41 ($generated@@24 $generated@@42) ($generated@@34 $generated@@35 $generated@@43)) (ite ($generated@@39 ($generated@@34 $generated@@35 $generated@@43)) 0 (let (($generated@@45 ($generated@@34 $generated@@35 ($generated@@40 ($generated@@34 $generated@@35 $generated@@43)))))
($generated@@26 (+ 1 ($generated@@33 $generated@@41 ($generated@@24 $generated@@42) $generated@@45))))))))
 :weight 3
 :pattern ( ($generated@@33 $generated@@41 ($generated@@24 $generated@@42) ($generated@@34 $generated@@35 $generated@@43)))
))))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@33 $generated@@46 ($generated@@24 $generated@@47) $generated@@48) ($generated@@33 $generated@@46 $generated@@47 $generated@@48))
 :pattern ( ($generated@@33 $generated@@46 ($generated@@24 $generated@@47) $generated@@48))
)))
(assert (= ($generated@@49 $generated@@27) $generated@@3))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> ($generated@@51 $generated@@53) ($generated@@50 $generated@@35 $generated@@27 ($generated@@38 $generated@@52) $generated@@53))
 :pattern ( ($generated@@50 $generated@@35 $generated@@27 ($generated@@38 $generated@@52) $generated@@53))
)))
(assert (forall (($generated@@54 T@U) ) (! ($generated@@37 $generated@@35 $generated@@27 ($generated@@38 $generated@@54))
 :pattern ( ($generated@@37 $generated@@35 $generated@@27 ($generated@@38 $generated@@54)))
)))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 Int) ($generated@@62 T@U) ) (!  (=> (or ($generated@@56 $generated@@59 $generated@@61 $generated@@62) (and (< 2 $generated@@22) (and ($generated@@37 $generated@@35 $generated@@62 ($generated@@38 $generated@@59)) (and (<= ($generated@@26 0) $generated@@61) (< $generated@@61 ($generated@@33 $generated@@59 ($generated@@24 $generated@@57) $generated@@62)))))) (and (=> (or (not (= $generated@@61 ($generated@@26 0))) (not true)) ($generated@@56 $generated@@59 (- $generated@@61 1) ($generated@@40 $generated@@62))) (= ($generated@@55 $generated@@59 ($generated@@24 $generated@@60) $generated@@61 $generated@@62) (ite (= $generated@@61 ($generated@@26 0)) ($generated@@58 $generated@@62) ($generated@@55 $generated@@59 $generated@@60 (- $generated@@61 1) ($generated@@40 $generated@@62))))))
 :pattern ( ($generated@@55 $generated@@59 ($generated@@24 $generated@@60) $generated@@61 $generated@@62))
))))
(assert (forall (($generated@@63 Int) ) (! (= ($generated@@26 $generated@@63) $generated@@63)
 :pattern ( ($generated@@26 $generated@@63))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@34 $generated@@65 $generated@@64) $generated@@64)
 :pattern ( ($generated@@34 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@37 $generated@@35 ($generated@@28 $generated@@68 $generated@@69) ($generated@@38 $generated@@67))  (and ($generated@@66 $generated@@68 $generated@@67) ($generated@@37 $generated@@35 $generated@@69 ($generated@@38 $generated@@67))))
 :pattern ( ($generated@@37 $generated@@35 ($generated@@28 $generated@@68 $generated@@69) ($generated@@38 $generated@@67)))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@39 $generated@@70) (= ($generated@@49 $generated@@70) $generated@@3))
 :pattern ( ($generated@@39 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ) (! (= ($generated@@71 $generated@@72) (= ($generated@@49 $generated@@72) $generated@@4))
 :pattern ( ($generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@29 $generated@@75 ($generated@@73 $generated@@75 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@73 $generated@@75 $generated@@74))
)))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 Int) ($generated@@79 T@U) ) (!  (=> (or ($generated@@56 $generated@@76 ($generated@@26 $generated@@78) ($generated@@34 $generated@@35 $generated@@79)) (and (< 2 $generated@@22) (and ($generated@@37 $generated@@35 $generated@@79 ($generated@@38 $generated@@76)) (and (<= ($generated@@26 0) ($generated@@26 $generated@@78)) (< $generated@@78 ($generated@@33 $generated@@76 ($generated@@24 $generated@@57) ($generated@@34 $generated@@35 $generated@@79))))))) (and (=> (or (not (= ($generated@@26 $generated@@78) ($generated@@26 0))) (not true)) ($generated@@56 $generated@@76 ($generated@@26 (- $generated@@78 1)) ($generated@@34 $generated@@35 ($generated@@40 ($generated@@34 $generated@@35 $generated@@79))))) (= ($generated@@55 $generated@@76 ($generated@@24 $generated@@77) ($generated@@26 $generated@@78) ($generated@@34 $generated@@35 $generated@@79)) (ite (= ($generated@@26 $generated@@78) ($generated@@26 0)) ($generated@@58 ($generated@@34 $generated@@35 $generated@@79)) ($generated@@55 $generated@@76 ($generated@@24 $generated@@77) ($generated@@26 (- $generated@@78 1)) ($generated@@34 $generated@@35 ($generated@@40 ($generated@@34 $generated@@35 $generated@@79))))))))
 :weight 3
 :pattern ( ($generated@@55 $generated@@76 ($generated@@24 $generated@@77) ($generated@@26 $generated@@78) ($generated@@34 $generated@@35 $generated@@79)))
))))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@71 $generated@@80) (exists (($generated@@81 T@U) ($generated@@82 T@U) ) (= $generated@@80 ($generated@@28 $generated@@81 $generated@@82))))
 :pattern ( ($generated@@71 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ) (!  (=> ($generated@@39 $generated@@83) (= $generated@@83 $generated@@27))
 :pattern ( ($generated@@39 $generated@@83))
)))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@84 T@U) ($generated@@85 Int) ) (!  (=> (or ($generated@@25 ($generated@@26 $generated@@85)) (and (< 1 $generated@@22) (<= ($generated@@26 0) $generated@@85))) (and (=> (or (not (= ($generated@@26 $generated@@85) ($generated@@26 0))) (not true)) ($generated@@25 ($generated@@26 (- $generated@@85 1)))) (= ($generated@@23 ($generated@@24 $generated@@84) ($generated@@26 $generated@@85)) (ite (= ($generated@@26 $generated@@85) ($generated@@26 0)) $generated@@27 ($generated@@28 ($generated@@29 $generated@@8 ($generated@@12 ($generated@@26 (- $generated@@85 1)))) ($generated@@34 $generated@@35 ($generated@@23 ($generated@@24 $generated@@84) ($generated@@26 (- $generated@@85 1)))))))))
 :weight 3
 :pattern ( ($generated@@23 ($generated@@24 $generated@@84) ($generated@@26 $generated@@85)))
))))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (or ($generated@@36 $generated@@86 $generated@@88) (and (< 1 $generated@@22) ($generated@@37 $generated@@35 $generated@@88 ($generated@@38 $generated@@86)))) (and (=> (not ($generated@@39 $generated@@88)) (let (($generated@@89 ($generated@@40 $generated@@88)))
($generated@@36 $generated@@86 $generated@@89))) (= ($generated@@33 $generated@@86 ($generated@@24 $generated@@87) $generated@@88) (ite ($generated@@39 $generated@@88) 0 (let (($generated@@90 ($generated@@40 $generated@@88)))
(+ 1 ($generated@@33 $generated@@86 $generated@@87 $generated@@90)))))))
 :pattern ( ($generated@@33 $generated@@86 ($generated@@24 $generated@@87) $generated@@88))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@91 ($generated@@29 $generated@@95 $generated@@92) $generated@@93 $generated@@94) ($generated@@50 $generated@@95 $generated@@92 $generated@@93 $generated@@94))
 :pattern ( ($generated@@91 ($generated@@29 $generated@@95 $generated@@92) $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ) (!  (and (= ($generated@@32 ($generated@@38 $generated@@97)) $generated@@2) (= ($generated@@96 ($generated@@38 $generated@@97)) $generated@@5))
 :pattern ( ($generated@@38 $generated@@97))
)))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@98 T@U) ($generated@@99 Int) ) (!  (=> (or ($generated@@25 $generated@@99) (and (< 1 $generated@@22) (<= ($generated@@26 0) $generated@@99))) ($generated@@37 $generated@@35 ($generated@@23 $generated@@98 $generated@@99) ($generated@@38 $generated)))
 :pattern ( ($generated@@23 $generated@@98 $generated@@99))
))))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@37 $generated@@35 $generated@@101 ($generated@@38 $generated@@100)) (or ($generated@@39 $generated@@101) ($generated@@71 $generated@@101)))
 :pattern ( ($generated@@71 $generated@@101) ($generated@@37 $generated@@35 $generated@@101 ($generated@@38 $generated@@100)))
 :pattern ( ($generated@@39 $generated@@101) ($generated@@37 $generated@@35 $generated@@101 ($generated@@38 $generated@@100)))
)))
(assert (forall (($generated@@102 T@U) ) (!  (=> ($generated@@66 $generated@@102 $generated) (and (= ($generated@@29 $generated@@8 ($generated@@73 $generated@@8 $generated@@102)) $generated@@102) ($generated@@37 $generated@@8 ($generated@@73 $generated@@8 $generated@@102) $generated)))
 :pattern ( ($generated@@66 $generated@@102 $generated))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@66 ($generated@@29 $generated@@105 $generated@@103) $generated@@104) ($generated@@37 $generated@@105 $generated@@103 $generated@@104))
 :pattern ( ($generated@@66 ($generated@@29 $generated@@105 $generated@@103) $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@49 ($generated@@28 $generated@@106 $generated@@107)) $generated@@4)
 :pattern ( ($generated@@28 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@58 ($generated@@28 $generated@@108 $generated@@109)) $generated@@108)
 :pattern ( ($generated@@28 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@40 ($generated@@28 $generated@@110 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@28 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@112 ($generated@@38 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@38 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@T) ) (! (= ($generated@@73 $generated@@115 ($generated@@29 $generated@@115 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@29 $generated@@115 $generated@@114))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (! (< ($generated@@116 $generated@@118) ($generated@@117 ($generated@@28 $generated@@118 $generated@@119)))
 :pattern ( ($generated@@28 $generated@@118 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (< ($generated@@117 $generated@@121) ($generated@@117 ($generated@@28 $generated@@120 $generated@@121)))
 :pattern ( ($generated@@28 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 Int) ) (! (= ($generated@@23 ($generated@@24 $generated@@122) $generated@@123) ($generated@@23 $generated@@122 $generated@@123))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@122) $generated@@123))
)))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 Int) ($generated@@128 T@U) ) (!  (=> (and (or ($generated@@56 $generated@@125 $generated@@127 $generated@@128) (and (< 2 $generated@@22) (and (and ($generated@@37 $generated@@35 $generated@@128 ($generated@@38 $generated@@125)) ($generated@@50 $generated@@35 $generated@@128 ($generated@@38 $generated@@125) $generated@@124)) (and (<= ($generated@@26 0) $generated@@127) (< $generated@@127 ($generated@@33 $generated@@125 ($generated@@24 $generated@@57) $generated@@128)))))) ($generated@@51 $generated@@124)) ($generated@@91 ($generated@@55 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@125 $generated@@124))
 :pattern ( ($generated@@91 ($generated@@55 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@125 $generated@@124))
))))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (and ($generated@@51 $generated@@131) (and ($generated@@71 $generated@@129) ($generated@@50 $generated@@35 $generated@@129 ($generated@@38 $generated@@130) $generated@@131))) ($generated@@91 ($generated@@58 $generated@@129) $generated@@130 $generated@@131))
 :pattern ( ($generated@@91 ($generated@@58 $generated@@129) $generated@@130 $generated@@131))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@132 $generated@@143 $generated@@144 $generated@@145 ($generated@@139 $generated@@143 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@149 $generated@@146) $generated@@148 $generated@@149) $generated@@146)
 :weight 0
)) (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@132 $generated@@150 $generated@@151 $generated@@152 ($generated@@139 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@132 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)) (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@132 $generated@@159 $generated@@160 $generated@@161 ($generated@@139 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@132 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)))) (= ($generated@@6 $generated@@133) 4)) (= ($generated@@6 $generated@@134) 5)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@136 $generated@@168 $generated@@169 ($generated@@140 $generated@@168 $generated@@169 $generated@@171 $generated@@172 $generated@@170) $generated@@172) $generated@@170)
 :weight 0
))) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (or (= $generated@@177 $generated@@178) (= ($generated@@136 $generated@@173 $generated@@174 ($generated@@140 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@175) $generated@@178) ($generated@@136 $generated@@173 $generated@@174 $generated@@176 $generated@@178)))
 :weight 0
))) (= ($generated@@6 $generated@@137) 6)) (forall (($generated@@179 T@T) ($generated@@180 T@T) ) (= ($generated@@6 ($generated@@138 $generated@@179 $generated@@180)) 7))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (! (= ($generated@@141 ($generated@@138 $generated@@181 $generated@@182)) $generated@@181)
 :pattern ( ($generated@@138 $generated@@181 $generated@@182))
))) (forall (($generated@@183 T@T) ($generated@@184 T@T) ) (! (= ($generated@@142 ($generated@@138 $generated@@183 $generated@@184)) $generated@@184)
 :pattern ( ($generated@@138 $generated@@183 $generated@@184))
))))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 Bool) ($generated@@189 T@U) ($generated@@190 T@U) ) (! (= ($generated@@11 ($generated@@132 $generated@@133 $generated@@134 $generated@@7 ($generated@@135 $generated@@185 $generated@@186 $generated@@187 $generated@@188) $generated@@189 $generated@@190))  (=> (and (or (not (= $generated@@189 $generated@@185)) (not true)) ($generated@@11 ($generated@@73 $generated@@7 ($generated@@136 $generated@@134 $generated@@137 ($generated@@136 $generated@@133 ($generated@@138 $generated@@134 $generated@@137) $generated@@186 $generated@@189) $generated@@187)))) $generated@@188))
 :pattern ( ($generated@@132 $generated@@133 $generated@@134 $generated@@7 ($generated@@135 $generated@@185 $generated@@186 $generated@@187 $generated@@188) $generated@@189 $generated@@190))
)))
(assert (forall (($generated@@191 T@U) ) (! (= ($generated@@116 ($generated@@29 $generated@@35 $generated@@191)) ($generated@@117 $generated@@191))
 :pattern ( ($generated@@116 ($generated@@29 $generated@@35 $generated@@191)))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 Int) ($generated@@195 T@U) ) (! (= ($generated@@55 $generated@@192 ($generated@@24 $generated@@193) $generated@@194 $generated@@195) ($generated@@55 $generated@@192 $generated@@193 $generated@@194 $generated@@195))
 :pattern ( ($generated@@55 $generated@@192 ($generated@@24 $generated@@193) $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> ($generated@@66 $generated@@197 ($generated@@38 $generated@@196)) (and (= ($generated@@29 $generated@@35 ($generated@@73 $generated@@35 $generated@@197)) $generated@@197) ($generated@@37 $generated@@35 ($generated@@73 $generated@@35 $generated@@197) ($generated@@38 $generated@@196))))
 :pattern ( ($generated@@66 $generated@@197 ($generated@@38 $generated@@196)))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> (and ($generated@@51 $generated@@200) (and ($generated@@71 $generated@@198) ($generated@@50 $generated@@35 $generated@@198 ($generated@@38 $generated@@199) $generated@@200))) ($generated@@50 $generated@@35 ($generated@@40 $generated@@198) ($generated@@38 $generated@@199) $generated@@200))
 :pattern ( ($generated@@50 $generated@@35 ($generated@@40 $generated@@198) ($generated@@38 $generated@@199) $generated@@200))
)))
(assert (= $generated@@27 ($generated@@34 $generated@@35 $generated@@27)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (! (= ($generated@@28 ($generated@@34 $generated@@137 $generated@@201) ($generated@@34 $generated@@35 $generated@@202)) ($generated@@34 $generated@@35 ($generated@@28 $generated@@201 $generated@@202)))
 :pattern ( ($generated@@28 ($generated@@34 $generated@@137 $generated@@201) ($generated@@34 $generated@@35 $generated@@202)))
)))
(assert (forall (($generated@@203 Int) ) (! (= ($generated@@29 $generated@@8 ($generated@@12 ($generated@@26 $generated@@203))) ($generated@@34 $generated@@137 ($generated@@29 $generated@@8 ($generated@@12 $generated@@203))))
 :pattern ( ($generated@@29 $generated@@8 ($generated@@12 ($generated@@26 $generated@@203))))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@T) ) (! (= ($generated@@29 $generated@@205 ($generated@@34 $generated@@205 $generated@@204)) ($generated@@34 $generated@@137 ($generated@@29 $generated@@205 $generated@@204)))
 :pattern ( ($generated@@29 $generated@@205 ($generated@@34 $generated@@205 $generated@@204)))
)))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (!  (=> (or ($generated@@36 $generated@@206 $generated@@208) (and (< 1 $generated@@22) ($generated@@37 $generated@@35 $generated@@208 ($generated@@38 $generated@@206)))) (<= ($generated@@26 0) ($generated@@33 $generated@@206 $generated@@207 $generated@@208)))
 :pattern ( ($generated@@33 $generated@@206 $generated@@207 $generated@@208))
))))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 Int) ($generated@@212 T@U) ) (!  (=> (or ($generated@@56 $generated@@209 $generated@@211 $generated@@212) (and (< 2 $generated@@22) (and ($generated@@37 $generated@@35 $generated@@212 ($generated@@38 $generated@@209)) (and (<= ($generated@@26 0) $generated@@211) (< $generated@@211 ($generated@@33 $generated@@209 ($generated@@24 $generated@@57) $generated@@212)))))) ($generated@@66 ($generated@@55 $generated@@209 $generated@@210 $generated@@211 $generated@@212) $generated@@209))
 :pattern ( ($generated@@55 $generated@@209 $generated@@210 $generated@@211 $generated@@212))
))))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (! ($generated@@50 $generated@@8 $generated@@214 $generated $generated@@213)
 :pattern ( ($generated@@50 $generated@@8 $generated@@214 $generated $generated@@213))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> ($generated@@51 $generated@@218) (= ($generated@@50 $generated@@35 ($generated@@28 $generated@@216 $generated@@217) ($generated@@38 $generated@@215) $generated@@218)  (and ($generated@@91 $generated@@216 $generated@@215 $generated@@218) ($generated@@50 $generated@@35 $generated@@217 ($generated@@38 $generated@@215) $generated@@218))))
 :pattern ( ($generated@@50 $generated@@35 ($generated@@28 $generated@@216 $generated@@217) ($generated@@38 $generated@@215) $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ) (! ($generated@@37 $generated@@8 $generated@@219 $generated)
 :pattern ( ($generated@@37 $generated@@8 $generated@@219 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 (T@U) Bool)
(declare-fun $generated@@225 () Int)
(declare-fun $generated@@226 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@227  (=> (= $generated@@220 ($generated@@135 $generated@@221 $generated@@222 $generated@@1 false)) (=> (and (and (and ($generated@@51 $generated@@223) ($generated@@224 $generated@@223)) (= $generated@@222 $generated@@223)) (and (forall (($generated@@228 Int) ($generated@@229 Int) ) (!  (=> (and (and (<= ($generated@@26 0) $generated@@229) (and (and (<= ($generated@@26 0) $generated@@228) (< $generated@@228 $generated@@229)) (= ($generated@@33 $generated ($generated@@24 $generated@@57) ($generated@@23 ($generated@@24 $generated@@57) $generated@@229)) $generated@@229))) (or (and (<= 0 $generated@@228) (< $generated@@228 $generated@@225)) (and (= $generated@@228 $generated@@225) (and (<= 0 $generated@@229) (< $generated@@229 $generated@@226))))) (= ($generated@@13 ($generated@@73 $generated@@8 ($generated@@55 $generated ($generated@@24 $generated@@57) $generated@@228 ($generated@@23 ($generated@@24 $generated@@57) $generated@@229)))) (- (- $generated@@229 1) $generated@@228)))
 :pattern ( ($generated@@73 $generated@@8 ($generated@@55 $generated ($generated@@24 $generated@@57) $generated@@228 ($generated@@23 ($generated@@24 $generated@@57) $generated@@229))))
)) (= (ControlFlow 0 2) (- 0 1)))) (= ($generated@@13 ($generated@@73 $generated@@8 ($generated@@55 $generated ($generated@@24 ($generated@@24 $generated@@57)) $generated@@225 ($generated@@23 ($generated@@24 ($generated@@24 $generated@@57)) $generated@@226)))) (- (- $generated@@226 1) $generated@@225))))))
(let (($generated@@230  (=> (and (and (and ($generated@@51 $generated@@222) ($generated@@224 $generated@@222)) (and (<= ($generated@@26 0) $generated@@226) (= 3 $generated@@22))) (and (and (<= ($generated@@26 0) $generated@@225) (< $generated@@225 $generated@@226)) (and (= ($generated@@33 $generated ($generated@@24 ($generated@@24 $generated@@57)) ($generated@@23 ($generated@@24 ($generated@@24 $generated@@57)) $generated@@226)) $generated@@226) (= (ControlFlow 0 3) 2)))) $generated@@227)))
$generated@@230)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)