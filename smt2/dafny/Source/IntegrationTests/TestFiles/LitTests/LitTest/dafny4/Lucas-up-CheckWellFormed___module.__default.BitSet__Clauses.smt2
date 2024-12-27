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
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@U T@U) T@U)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@36 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@54 () Int)
(declare-fun $generated@@55 (Int) T@U)
(declare-fun $generated@@56 (Int) Bool)
(declare-fun $generated@@57 (Int) Int)
(declare-fun $generated@@58 (T@T T@U T@U) Bool)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@U Int Int) Bool)
(declare-fun $generated@@67 (T@U) T@U)
(declare-fun $generated@@68 (Int Int) Bool)
(declare-fun $generated@@69 (Int Int) Int)
(declare-fun $generated@@70 (Int Int) Int)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@U T@U) Bool)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@83 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@84 () T@T)
(declare-fun $generated@@85 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@99 (T@U T@U) Bool)
(declare-fun $generated@@103 () T@U)
(declare-fun $generated@@104 (T@U Int Int T@U Int) T@U)
(declare-fun $generated@@117 (T@U T@U T@U) Bool)
(declare-fun $generated@@126 (Int T@U Int T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@139 (T@U) Bool)
(declare-fun $generated@@143 (T@U T@U) Bool)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@164 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@165 () T@T)
(declare-fun $generated@@166 () T@T)
(declare-fun $generated@@167 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@168 (T@T T@T) T@T)
(declare-fun $generated@@169 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@170 (T@T) T@T)
(declare-fun $generated@@171 (T@T) T@T)
(declare-fun $generated@@212 (Int Int) Int)
(declare-fun $generated@@217 (T@U) T@U)
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
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! ($generated@@23 ($generated@@22 $generated@@24 $generated@@25) $generated@@25)
 :pattern ( ($generated@@22 $generated@@24 $generated@@25))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (!  (=> ($generated@@23 $generated@@26 $generated@@28) ($generated@@23 ($generated@@22 $generated@@26 $generated@@27) $generated@@28))
 :pattern ( ($generated@@22 $generated@@26 $generated@@27) ($generated@@23 $generated@@26 $generated@@28))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@23 $generated@@30 $generated@@32) ($generated@@23 ($generated@@29 $generated@@30 $generated@@31) $generated@@32))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31) ($generated@@23 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> ($generated@@23 $generated@@34 $generated@@35) ($generated@@23 ($generated@@29 $generated@@33 $generated@@34) $generated@@35))
 :pattern ( ($generated@@29 $generated@@33 $generated@@34) ($generated@@23 $generated@@34 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (! ($generated@@36 $generated@@7 $generated@@38 $generated@@37 $generated@@39)
 :pattern ( ($generated@@36 $generated@@7 $generated@@38 $generated@@37 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@23 ($generated@@22 $generated@@40 $generated@@41) $generated@@42)  (or (= $generated@@42 $generated@@41) ($generated@@23 $generated@@40 $generated@@42)))
 :pattern ( ($generated@@23 ($generated@@22 $generated@@40 $generated@@41) $generated@@42))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (!  (=> ($generated@@23 $generated@@45 $generated@@46) (not ($generated@@23 ($generated@@43 $generated@@44 $generated@@45) $generated@@46)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@45) ($generated@@23 $generated@@45 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ) (!  (not ($generated@@23 $generated@@47 $generated@@48))
 :pattern ( ($generated@@23 $generated@@47 $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@29 ($generated@@29 $generated@@49 $generated@@50) $generated@@50) ($generated@@29 $generated@@49 $generated@@50))
 :pattern ( ($generated@@29 ($generated@@29 $generated@@49 $generated@@50) $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@23 ($generated@@43 $generated@@51 $generated@@52) $generated@@53)  (and ($generated@@23 $generated@@51 $generated@@53) (not ($generated@@23 $generated@@52 $generated@@53))))
 :pattern ( ($generated@@23 ($generated@@43 $generated@@51 $generated@@52) $generated@@53))
)))
(assert (= ($generated@@5 $generated@@59) 3))
(assert  (=> (<= 1 $generated@@54) (forall (($generated@@61 Int) ) (!  (=> (or ($generated@@56 $generated@@61) (and (< 1 $generated@@54) (<= ($generated@@57 0) $generated@@61))) ($generated@@58 $generated@@59 ($generated@@55 $generated@@61) ($generated@@60 $generated@@37)))
 :pattern ( ($generated@@55 $generated@@61))
))))
(assert (forall (($generated@@62 Int) ) (! (= ($generated@@57 $generated@@62) $generated@@62)
 :pattern ( ($generated@@57 $generated@@62))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@63 $generated@@65 $generated@@64) $generated@@64)
 :pattern ( ($generated@@63 $generated@@65 $generated@@64))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@71 T@U) ($generated@@72 Int) ($generated@@73 Int) ) (!  (=> (or ($generated@@68 ($generated@@57 $generated@@72) ($generated@@57 $generated@@73)) (and (< 0 $generated@@54) (and (<= ($generated@@57 0) $generated@@72) (<= ($generated@@57 0) $generated@@73)))) (and (=> (or (not (= ($generated@@57 $generated@@72) ($generated@@57 0))) (not true)) ($generated@@68 ($generated@@57 (- $generated@@72 1)) ($generated@@57 ($generated@@69 $generated@@73 ($generated@@57 2))))) (= ($generated@@66 ($generated@@67 $generated@@71) ($generated@@57 $generated@@72) ($generated@@57 $generated@@73)) (ite (= ($generated@@57 $generated@@72) ($generated@@57 0)) (= ($generated@@57 ($generated@@70 $generated@@73 ($generated@@57 2))) ($generated@@57 1)) ($generated@@66 ($generated@@67 $generated@@71) ($generated@@57 (- $generated@@72 1)) ($generated@@57 ($generated@@69 $generated@@73 ($generated@@57 2))))))))
 :weight 3
 :pattern ( ($generated@@66 ($generated@@67 $generated@@71) ($generated@@57 $generated@@72) ($generated@@57 $generated@@73)))
))))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 ($generated@@74 $generated@@77 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@74 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@78 $generated@@79 $generated@@80) (forall (($generated@@81 T@U) ) (!  (or (not ($generated@@23 $generated@@79 $generated@@81)) (not ($generated@@23 $generated@@80 $generated@@81)))
 :pattern ( ($generated@@23 $generated@@79 $generated@@81))
 :pattern ( ($generated@@23 $generated@@80 $generated@@81))
)))
 :pattern ( ($generated@@78 $generated@@79 $generated@@80))
)))
(assert  (and (and (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@83 $generated@@86 $generated@@87 ($generated@@85 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@88) $generated@@90) $generated@@88)
 :weight 0
)) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (or (= $generated@@95 $generated@@96) (= ($generated@@83 $generated@@91 $generated@@92 ($generated@@85 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@93) $generated@@96) ($generated@@83 $generated@@91 $generated@@92 $generated@@94 $generated@@96)))
 :weight 0
))) (= ($generated@@5 $generated@@84) 4)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@23 ($generated@@82 $generated@@97) $generated@@98) ($generated@@10 ($generated@@83 $generated@@84 $generated@@6 $generated@@97 $generated@@98)))
 :pattern ( ($generated@@23 ($generated@@82 $generated@@97) $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@58 $generated@@59 $generated@@100 ($generated@@60 $generated@@101)) (forall (($generated@@102 T@U) ) (!  (=> ($generated@@23 $generated@@100 $generated@@102) ($generated@@99 $generated@@102 $generated@@101))
 :pattern ( ($generated@@23 $generated@@100 $generated@@102))
)))
 :pattern ( ($generated@@58 $generated@@59 $generated@@100 ($generated@@60 $generated@@101)))
)))
(assert  (=> (<= 1 $generated@@54) (forall (($generated@@105 Int) ) (!  (=> (or ($generated@@56 $generated@@105) (and (< 1 $generated@@54) (<= ($generated@@57 0) $generated@@105))) (and (forall (($generated@@106 Int) ) (!  (=> (<= ($generated@@57 0) $generated@@106) (=> (< $generated@@106 $generated@@105) ($generated@@68 $generated@@106 $generated@@105)))
 :pattern ( ($generated@@66 ($generated@@67 $generated@@103) $generated@@106 $generated@@105))
)) (= ($generated@@55 $generated@@105) ($generated@@82 ($generated@@104 $generated ($generated@@57 0) $generated@@105 ($generated@@67 $generated@@103) $generated@@105)))))
 :pattern ( ($generated@@55 $generated@@105))
))))
(assert (forall (($generated@@107 T@U) ($generated@@108 Int) ($generated@@109 Int) ($generated@@110 T@U) ($generated@@111 Int) ($generated@@112 T@U) ) (! (= ($generated@@10 ($generated@@83 $generated@@84 $generated@@6 ($generated@@104 $generated@@107 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112))  (and ($generated@@99 $generated@@112 $generated@@107) (and (and (<= $generated@@108 ($generated@@12 ($generated@@74 $generated@@7 $generated@@112))) (< ($generated@@12 ($generated@@74 $generated@@7 $generated@@112)) $generated@@109)) ($generated@@66 $generated@@110 ($generated@@12 ($generated@@74 $generated@@7 $generated@@112)) $generated@@111))))
 :pattern ( ($generated@@83 $generated@@84 $generated@@6 ($generated@@104 $generated@@107 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@58 $generated@@7 $generated@@113 $generated@@37) (<= ($generated@@57 0) ($generated@@12 $generated@@113)))
 :pattern ( ($generated@@58 $generated@@7 $generated@@113 $generated@@37))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 Int) ($generated@@116 Int) ) (! (= ($generated@@66 ($generated@@67 $generated@@114) $generated@@115 $generated@@116) ($generated@@66 $generated@@114 $generated@@115 $generated@@116))
 :pattern ( ($generated@@66 ($generated@@67 $generated@@114) $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@117 ($generated@@75 $generated@@121 $generated@@118) $generated@@119 $generated@@120) ($generated@@36 $generated@@121 $generated@@118 $generated@@119 $generated@@120))
 :pattern ( ($generated@@117 ($generated@@75 $generated@@121 $generated@@118) $generated@@119 $generated@@120))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@122 T@U) ($generated@@123 Int) ($generated@@124 Int) ) (!  (=> (or ($generated@@68 $generated@@123 $generated@@124) (and (< 0 $generated@@54) (and (<= ($generated@@57 0) $generated@@123) (<= ($generated@@57 0) $generated@@124)))) (and (=> (or (not (= $generated@@123 ($generated@@57 0))) (not true)) ($generated@@68 (- $generated@@123 1) ($generated@@69 $generated@@124 ($generated@@57 2)))) (= ($generated@@66 ($generated@@67 $generated@@122) $generated@@123 $generated@@124) (ite (= $generated@@123 ($generated@@57 0)) (= ($generated@@70 $generated@@124 ($generated@@57 2)) ($generated@@57 1)) ($generated@@66 $generated@@122 (- $generated@@123 1) ($generated@@69 $generated@@124 ($generated@@57 2)))))))
 :pattern ( ($generated@@66 ($generated@@67 $generated@@122) $generated@@123 $generated@@124))
))))
(assert (forall (($generated@@125 T@U) ) (!  (=> ($generated@@99 $generated@@125 $generated@@37) (and (= ($generated@@75 $generated@@7 ($generated@@74 $generated@@7 $generated@@125)) $generated@@125) ($generated@@58 $generated@@7 ($generated@@74 $generated@@7 $generated@@125) $generated@@37)))
 :pattern ( ($generated@@99 $generated@@125 $generated@@37))
)))
(assert (forall (($generated@@127 Int) ($generated@@128 T@U) ($generated@@129 Int) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@10 ($generated@@83 $generated@@84 $generated@@6 ($generated@@126 $generated@@127 $generated@@128 $generated@@129 $generated@@130) $generated@@131)) (exists (($generated@@132 Int) ) (!  (and (and (<= $generated@@127 $generated@@132) ($generated@@23 $generated@@128 ($generated@@75 $generated@@7 ($generated@@11 $generated@@132)))) (= $generated@@131 ($generated@@75 $generated@@7 ($generated@@11 (+ $generated@@132 $generated@@129)))))
 :pattern ( ($generated@@23 $generated@@130 ($generated@@75 $generated@@7 ($generated@@11 $generated@@132))))
)))
 :pattern ( ($generated@@83 $generated@@84 $generated@@6 ($generated@@126 $generated@@127 $generated@@128 $generated@@129 $generated@@130) $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@23 ($generated@@29 $generated@@133 $generated@@134) $generated@@135)  (or ($generated@@23 $generated@@133 $generated@@135) ($generated@@23 $generated@@134 $generated@@135)))
 :pattern ( ($generated@@23 ($generated@@29 $generated@@133 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@78 $generated@@136 $generated@@137) (and (= ($generated@@43 ($generated@@29 $generated@@136 $generated@@137) $generated@@136) $generated@@137) (= ($generated@@43 ($generated@@29 $generated@@136 $generated@@137) $generated@@137) $generated@@136)))
 :pattern ( ($generated@@29 $generated@@136 $generated@@137))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@140 T@U) ) (!  (=> (or ($generated@@139 $generated@@140) (and (< 0 $generated@@54) ($generated@@58 $generated@@59 $generated@@140 ($generated@@60 $generated@@37)))) (= ($generated@@138 $generated@@140) ($generated@@82 ($generated@@126 ($generated@@57 0) $generated@@140 1 $generated@@140))))
 :pattern ( ($generated@@138 $generated@@140))
))))
(assert (forall (($generated@@141 Int) ($generated@@142 Int) ) (! (= ($generated@@69 $generated@@141 $generated@@142) (div $generated@@141 $generated@@142))
 :pattern ( ($generated@@69 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> ($generated@@143 $generated@@144 $generated@@145) (= $generated@@144 $generated@@145))
 :pattern ( ($generated@@143 $generated@@144 $generated@@145))
)))
(assert  (=> (<= 1 $generated@@54) (forall (($generated@@146 Int) ) (!  (=> (or ($generated@@56 ($generated@@57 $generated@@146)) (and (< 1 $generated@@54) (<= ($generated@@57 0) $generated@@146))) (and (forall (($generated@@147 Int) ) (!  (=> (<= ($generated@@57 0) $generated@@147) (=> (< $generated@@147 $generated@@146) ($generated@@68 $generated@@147 ($generated@@57 $generated@@146))))
 :pattern ( ($generated@@66 ($generated@@67 $generated@@103) $generated@@147 $generated@@146))
)) (= ($generated@@55 ($generated@@57 $generated@@146)) ($generated@@82 ($generated@@104 $generated ($generated@@57 0) $generated@@146 ($generated@@67 $generated@@103) ($generated@@57 $generated@@146))))))
 :weight 3
 :pattern ( ($generated@@55 ($generated@@57 $generated@@146)))
))))
(assert (forall (($generated@@148 T@U) ) (!  (=> ($generated@@99 $generated@@148 $generated) (and (= ($generated@@75 $generated@@7 ($generated@@74 $generated@@7 $generated@@148)) $generated@@148) ($generated@@58 $generated@@7 ($generated@@74 $generated@@7 $generated@@148) $generated)))
 :pattern ( ($generated@@99 $generated@@148 $generated))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@T) ) (! (= ($generated@@99 ($generated@@75 $generated@@151 $generated@@149) $generated@@150) ($generated@@58 $generated@@151 $generated@@149 $generated@@150))
 :pattern ( ($generated@@99 ($generated@@75 $generated@@151 $generated@@149) $generated@@150))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@36 $generated@@59 $generated@@152 ($generated@@60 $generated@@153) $generated@@154) (forall (($generated@@155 T@U) ) (!  (=> ($generated@@23 $generated@@152 $generated@@155) ($generated@@117 $generated@@155 $generated@@153 $generated@@154))
 :pattern ( ($generated@@23 $generated@@152 $generated@@155))
)))
 :pattern ( ($generated@@36 $generated@@59 $generated@@152 ($generated@@60 $generated@@153) $generated@@154))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@156 T@U) ) (!  (=> (or ($generated@@139 ($generated@@63 $generated@@59 $generated@@156)) (and (< 0 $generated@@54) ($generated@@58 $generated@@59 $generated@@156 ($generated@@60 $generated@@37)))) (= ($generated@@138 ($generated@@63 $generated@@59 $generated@@156)) ($generated@@82 ($generated@@126 ($generated@@57 0) ($generated@@63 $generated@@59 $generated@@156) 1 $generated@@156))))
 :weight 3
 :pattern ( ($generated@@138 ($generated@@63 $generated@@59 $generated@@156)))
))))
(assert (forall (($generated@@158 T@U) ) (! (= ($generated@@157 ($generated@@60 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@60 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ) (! (= ($generated@@21 ($generated@@60 $generated@@159)) $generated@@1)
 :pattern ( ($generated@@60 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@74 $generated@@161 ($generated@@75 $generated@@161 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@75 $generated@@161 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@29 $generated@@162 ($generated@@29 $generated@@162 $generated@@163)) ($generated@@29 $generated@@162 $generated@@163))
 :pattern ( ($generated@@29 $generated@@162 ($generated@@29 $generated@@162 $generated@@163)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (! (= ($generated@@164 $generated@@172 $generated@@173 $generated@@174 ($generated@@169 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@178 $generated@@175) $generated@@177 $generated@@178) $generated@@175)
 :weight 0
)) (and (forall (($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (or (= $generated@@184 $generated@@186) (= ($generated@@164 $generated@@179 $generated@@180 $generated@@181 ($generated@@169 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@184 $generated@@185 $generated@@182) $generated@@186 $generated@@187) ($generated@@164 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@186 $generated@@187)))
 :weight 0
)) (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (or (= $generated@@194 $generated@@196) (= ($generated@@164 $generated@@188 $generated@@189 $generated@@190 ($generated@@169 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@193 $generated@@194 $generated@@191) $generated@@195 $generated@@196) ($generated@@164 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@195 $generated@@196)))
 :weight 0
)))) (= ($generated@@5 $generated@@165) 5)) (= ($generated@@5 $generated@@166) 6)) (forall (($generated@@197 T@T) ($generated@@198 T@T) ) (= ($generated@@5 ($generated@@168 $generated@@197 $generated@@198)) 7))) (forall (($generated@@199 T@T) ($generated@@200 T@T) ) (! (= ($generated@@170 ($generated@@168 $generated@@199 $generated@@200)) $generated@@199)
 :pattern ( ($generated@@168 $generated@@199 $generated@@200))
))) (forall (($generated@@201 T@T) ($generated@@202 T@T) ) (! (= ($generated@@171 ($generated@@168 $generated@@201 $generated@@202)) $generated@@202)
 :pattern ( ($generated@@168 $generated@@201 $generated@@202))
))))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 Bool) ($generated@@207 T@U) ($generated@@208 T@U) ) (! (= ($generated@@10 ($generated@@164 $generated@@165 $generated@@166 $generated@@6 ($generated@@167 $generated@@203 $generated@@204 $generated@@205 $generated@@206) $generated@@207 $generated@@208))  (=> (and (or (not (= $generated@@207 $generated@@203)) (not true)) ($generated@@10 ($generated@@74 $generated@@6 ($generated@@83 $generated@@166 $generated@@84 ($generated@@83 $generated@@165 ($generated@@168 $generated@@166 $generated@@84) $generated@@204 $generated@@207) $generated@@205)))) $generated@@206))
 :pattern ( ($generated@@164 $generated@@165 $generated@@166 $generated@@6 ($generated@@167 $generated@@203 $generated@@204 $generated@@205 $generated@@206) $generated@@207 $generated@@208))
)))
(assert (forall (($generated@@209 Int) ($generated@@210 Int) ) (! (= ($generated@@70 $generated@@209 $generated@@210) (mod $generated@@209 $generated@@210))
 :pattern ( ($generated@@70 $generated@@209 $generated@@210))
)))
(assert  (=> (<= 0 $generated@@54) (forall (($generated@@211 T@U) ) (!  (=> (or ($generated@@139 $generated@@211) (and (< 0 $generated@@54) ($generated@@58 $generated@@59 $generated@@211 ($generated@@60 $generated@@37)))) ($generated@@58 $generated@@59 ($generated@@138 $generated@@211) ($generated@@60 $generated@@37)))
 :pattern ( ($generated@@138 $generated@@211))
))))
(assert (forall (($generated@@213 Int) ($generated@@214 Int) ) (! (= ($generated@@212 $generated@@213 $generated@@214) (* $generated@@213 $generated@@214))
 :pattern ( ($generated@@212 $generated@@213 $generated@@214))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> ($generated@@99 $generated@@215 ($generated@@60 $generated@@216)) (and (= ($generated@@75 $generated@@59 ($generated@@74 $generated@@59 $generated@@215)) $generated@@215) ($generated@@58 $generated@@59 ($generated@@74 $generated@@59 $generated@@215) ($generated@@60 $generated@@216))))
 :pattern ( ($generated@@99 $generated@@215 ($generated@@60 $generated@@216)))
)))
(assert (= ($generated@@21 $generated@@37) $generated@@3))
(assert (= ($generated@@217 $generated@@37) $generated@@4))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@143 $generated@@218 $generated@@219) (forall (($generated@@220 T@U) ) (! (= ($generated@@23 $generated@@218 $generated@@220) ($generated@@23 $generated@@219 $generated@@220))
 :pattern ( ($generated@@23 $generated@@218 $generated@@220))
 :pattern ( ($generated@@23 $generated@@219 $generated@@220))
)))
 :pattern ( ($generated@@143 $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@221 Int) ) (! (= ($generated@@75 $generated@@7 ($generated@@11 ($generated@@57 $generated@@221))) ($generated@@63 $generated@@84 ($generated@@75 $generated@@7 ($generated@@11 $generated@@221))))
 :pattern ( ($generated@@75 $generated@@7 ($generated@@11 ($generated@@57 $generated@@221))))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@T) ) (! (= ($generated@@75 $generated@@223 ($generated@@63 $generated@@223 $generated@@222)) ($generated@@63 $generated@@84 ($generated@@75 $generated@@223 $generated@@222)))
 :pattern ( ($generated@@75 $generated@@223 ($generated@@63 $generated@@223 $generated@@222)))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (! ($generated@@36 $generated@@7 $generated@@225 $generated $generated@@224)
 :pattern ( ($generated@@36 $generated@@7 $generated@@225 $generated $generated@@224))
)))
(assert (forall (($generated@@226 T@U) ) (! ($generated@@58 $generated@@7 $generated@@226 $generated)
 :pattern ( ($generated@@58 $generated@@7 $generated@@226 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 (T@U) Bool)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 (T@U) Bool)
(declare-fun $generated@@233 () Int)
(declare-fun $generated@@234 () Int)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@237  (=> (= $generated@@227 ($generated@@167 $generated@@228 $generated@@229 $generated@@2 false)) (=> (and (and ($generated@@230 $generated@@231) ($generated@@232 $generated@@231)) (= $generated@@229 $generated@@231)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@58 $generated@@7 ($generated@@11 ($generated@@212 ($generated@@57 2) $generated@@233)) $generated@@37)) (=> ($generated@@58 $generated@@7 ($generated@@11 ($generated@@212 ($generated@@57 2) $generated@@233)) $generated@@37) (=> (= $generated@@234 ($generated@@212 ($generated@@57 2) $generated@@233)) (=> (and (and (and ($generated@@36 $generated@@7 ($generated@@11 $generated@@234) $generated@@37 $generated@@231) ($generated@@56 ($generated@@212 ($generated@@57 2) $generated@@233))) (and ($generated@@36 $generated@@7 ($generated@@11 $generated@@233) $generated@@37 $generated@@231) ($generated@@56 $generated@@233))) (and (and (= $generated@@235 ($generated@@55 $generated@@233)) ($generated@@36 $generated@@59 $generated@@235 ($generated@@60 $generated@@37) $generated@@231)) (and ($generated@@139 ($generated@@55 $generated@@233)) ($generated@@143 ($generated@@55 ($generated@@212 ($generated@@57 2) $generated@@233)) ($generated@@138 ($generated@@55 $generated@@233)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@58 $generated@@7 ($generated@@11 (+ ($generated@@212 ($generated@@57 2) $generated@@233) 1)) $generated@@37)) (=> ($generated@@58 $generated@@7 ($generated@@11 (+ ($generated@@212 ($generated@@57 2) $generated@@233) 1)) $generated@@37) (=> (and (and (= $generated@@236 (+ ($generated@@212 ($generated@@57 2) $generated@@233) 1)) ($generated@@36 $generated@@7 ($generated@@11 $generated@@236) $generated@@37 $generated@@231)) (and ($generated@@56 (+ ($generated@@212 ($generated@@57 2) $generated@@233) 1)) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@58 $generated@@7 ($generated@@11 ($generated@@57 0)) $generated@@37))))))))))))
(let (($generated@@238  (=> (and (and (and ($generated@@230 $generated@@229) ($generated@@232 $generated@@229)) (<= ($generated@@57 0) $generated@@233)) (and (= 2 $generated@@54) (= (ControlFlow 0 5) 2))) $generated@@237)))
$generated@@238)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)