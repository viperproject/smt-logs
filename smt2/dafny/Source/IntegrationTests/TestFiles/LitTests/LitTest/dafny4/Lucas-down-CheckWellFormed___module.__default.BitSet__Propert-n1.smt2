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
(declare-fun $generated@@29 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@45 () Int)
(declare-fun $generated@@46 (Int) T@U)
(declare-fun $generated@@47 (Int) Bool)
(declare-fun $generated@@48 (Int) Int)
(declare-fun $generated@@49 (T@T T@U T@U) Bool)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@U) T@U)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@U Int Int) Bool)
(declare-fun $generated@@58 (T@U) T@U)
(declare-fun $generated@@59 (Int Int) Bool)
(declare-fun $generated@@60 (Int Int) Int)
(declare-fun $generated@@61 (Int Int) Int)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@T T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@70 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@86 (T@U T@U) Bool)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@91 (T@U Int Int T@U Int) T@U)
(declare-fun $generated@@104 (T@U T@U T@U) Bool)
(declare-fun $generated@@113 (Int T@U Int T@U) T@U)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@121 (T@U) Bool)
(declare-fun $generated@@125 (T@U T@U) Bool)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@144 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@145 () T@T)
(declare-fun $generated@@146 () T@T)
(declare-fun $generated@@147 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@148 (T@T T@T) T@T)
(declare-fun $generated@@149 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@150 (T@T) T@T)
(declare-fun $generated@@151 (T@T) T@T)
(declare-fun $generated@@194 (T@U) T@U)
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
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (! ($generated@@29 $generated@@7 $generated@@31 $generated@@30 $generated@@32)
 :pattern ( ($generated@@29 $generated@@7 $generated@@31 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@23 ($generated@@22 $generated@@33 $generated@@34) $generated@@35)  (or (= $generated@@35 $generated@@34) ($generated@@23 $generated@@33 $generated@@35)))
 :pattern ( ($generated@@23 ($generated@@22 $generated@@33 $generated@@34) $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> ($generated@@23 $generated@@38 $generated@@39) (not ($generated@@23 ($generated@@36 $generated@@37 $generated@@38) $generated@@39)))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38) ($generated@@23 $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ) (!  (not ($generated@@23 $generated@@40 $generated@@41))
 :pattern ( ($generated@@23 $generated@@40 $generated@@41))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@23 ($generated@@36 $generated@@42 $generated@@43) $generated@@44)  (and ($generated@@23 $generated@@42 $generated@@44) (not ($generated@@23 $generated@@43 $generated@@44))))
 :pattern ( ($generated@@23 ($generated@@36 $generated@@42 $generated@@43) $generated@@44))
)))
(assert (= ($generated@@5 $generated@@50) 3))
(assert  (=> (<= 1 $generated@@45) (forall (($generated@@52 Int) ) (!  (=> (or ($generated@@47 $generated@@52) (and (< 1 $generated@@45) (<= ($generated@@48 0) $generated@@52))) ($generated@@49 $generated@@50 ($generated@@46 $generated@@52) ($generated@@51 $generated@@30)))
 :pattern ( ($generated@@46 $generated@@52))
))))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@48 $generated@@53) $generated@@53)
 :pattern ( ($generated@@48 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@T) ) (! (= ($generated@@54 $generated@@56 $generated@@55) $generated@@55)
 :pattern ( ($generated@@54 $generated@@56 $generated@@55))
)))
(assert  (=> (<= 0 $generated@@45) (forall (($generated@@62 T@U) ($generated@@63 Int) ($generated@@64 Int) ) (!  (=> (or ($generated@@59 ($generated@@48 $generated@@63) ($generated@@48 $generated@@64)) (and (< 0 $generated@@45) (and (<= ($generated@@48 0) $generated@@63) (<= ($generated@@48 0) $generated@@64)))) (and (=> (or (not (= ($generated@@48 $generated@@63) ($generated@@48 0))) (not true)) ($generated@@59 ($generated@@48 (- $generated@@63 1)) ($generated@@48 ($generated@@60 $generated@@64 ($generated@@48 2))))) (= ($generated@@57 ($generated@@58 $generated@@62) ($generated@@48 $generated@@63) ($generated@@48 $generated@@64)) (ite (= ($generated@@48 $generated@@63) ($generated@@48 0)) (= ($generated@@48 ($generated@@61 $generated@@64 ($generated@@48 2))) ($generated@@48 1)) ($generated@@57 ($generated@@58 $generated@@62) ($generated@@48 (- $generated@@63 1)) ($generated@@48 ($generated@@60 $generated@@64 ($generated@@48 2))))))))
 :weight 3
 :pattern ( ($generated@@57 ($generated@@58 $generated@@62) ($generated@@48 $generated@@63) ($generated@@48 $generated@@64)))
))))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@66 $generated@@68 ($generated@@65 $generated@@68 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@65 $generated@@68 $generated@@67))
)))
(assert  (and (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@70 $generated@@73 $generated@@74 ($generated@@72 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@77) $generated@@75)
 :weight 0
)) (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (or (= $generated@@82 $generated@@83) (= ($generated@@70 $generated@@78 $generated@@79 ($generated@@72 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@83) ($generated@@70 $generated@@78 $generated@@79 $generated@@81 $generated@@83)))
 :weight 0
))) (= ($generated@@5 $generated@@71) 4)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@23 ($generated@@69 $generated@@84) $generated@@85) ($generated@@10 ($generated@@70 $generated@@71 $generated@@6 $generated@@84 $generated@@85)))
 :pattern ( ($generated@@23 ($generated@@69 $generated@@84) $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@49 $generated@@50 $generated@@87 ($generated@@51 $generated@@88)) (forall (($generated@@89 T@U) ) (!  (=> ($generated@@23 $generated@@87 $generated@@89) ($generated@@86 $generated@@89 $generated@@88))
 :pattern ( ($generated@@23 $generated@@87 $generated@@89))
)))
 :pattern ( ($generated@@49 $generated@@50 $generated@@87 ($generated@@51 $generated@@88)))
)))
(assert  (=> (<= 1 $generated@@45) (forall (($generated@@92 Int) ) (!  (=> (or ($generated@@47 $generated@@92) (and (< 1 $generated@@45) (<= ($generated@@48 0) $generated@@92))) (and (forall (($generated@@93 Int) ) (!  (=> (<= ($generated@@48 0) $generated@@93) (=> (< $generated@@93 $generated@@92) ($generated@@59 $generated@@93 $generated@@92)))
 :pattern ( ($generated@@57 ($generated@@58 $generated@@90) $generated@@93 $generated@@92))
)) (= ($generated@@46 $generated@@92) ($generated@@69 ($generated@@91 $generated ($generated@@48 0) $generated@@92 ($generated@@58 $generated@@90) $generated@@92)))))
 :pattern ( ($generated@@46 $generated@@92))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 Int) ($generated@@96 Int) ($generated@@97 T@U) ($generated@@98 Int) ($generated@@99 T@U) ) (! (= ($generated@@10 ($generated@@70 $generated@@71 $generated@@6 ($generated@@91 $generated@@94 $generated@@95 $generated@@96 $generated@@97 $generated@@98) $generated@@99))  (and ($generated@@86 $generated@@99 $generated@@94) (and (and (<= $generated@@95 ($generated@@12 ($generated@@65 $generated@@7 $generated@@99))) (< ($generated@@12 ($generated@@65 $generated@@7 $generated@@99)) $generated@@96)) ($generated@@57 $generated@@97 ($generated@@12 ($generated@@65 $generated@@7 $generated@@99)) $generated@@98))))
 :pattern ( ($generated@@70 $generated@@71 $generated@@6 ($generated@@91 $generated@@94 $generated@@95 $generated@@96 $generated@@97 $generated@@98) $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ) (! (= ($generated@@49 $generated@@7 $generated@@100 $generated@@30) (<= ($generated@@48 0) ($generated@@12 $generated@@100)))
 :pattern ( ($generated@@49 $generated@@7 $generated@@100 $generated@@30))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 Int) ($generated@@103 Int) ) (! (= ($generated@@57 ($generated@@58 $generated@@101) $generated@@102 $generated@@103) ($generated@@57 $generated@@101 $generated@@102 $generated@@103))
 :pattern ( ($generated@@57 ($generated@@58 $generated@@101) $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@104 ($generated@@66 $generated@@108 $generated@@105) $generated@@106 $generated@@107) ($generated@@29 $generated@@108 $generated@@105 $generated@@106 $generated@@107))
 :pattern ( ($generated@@104 ($generated@@66 $generated@@108 $generated@@105) $generated@@106 $generated@@107))
)))
(assert  (=> (<= 0 $generated@@45) (forall (($generated@@109 T@U) ($generated@@110 Int) ($generated@@111 Int) ) (!  (=> (or ($generated@@59 $generated@@110 $generated@@111) (and (< 0 $generated@@45) (and (<= ($generated@@48 0) $generated@@110) (<= ($generated@@48 0) $generated@@111)))) (and (=> (or (not (= $generated@@110 ($generated@@48 0))) (not true)) ($generated@@59 (- $generated@@110 1) ($generated@@60 $generated@@111 ($generated@@48 2)))) (= ($generated@@57 ($generated@@58 $generated@@109) $generated@@110 $generated@@111) (ite (= $generated@@110 ($generated@@48 0)) (= ($generated@@61 $generated@@111 ($generated@@48 2)) ($generated@@48 1)) ($generated@@57 $generated@@109 (- $generated@@110 1) ($generated@@60 $generated@@111 ($generated@@48 2)))))))
 :pattern ( ($generated@@57 ($generated@@58 $generated@@109) $generated@@110 $generated@@111))
))))
(assert (forall (($generated@@112 T@U) ) (!  (=> ($generated@@86 $generated@@112 $generated@@30) (and (= ($generated@@66 $generated@@7 ($generated@@65 $generated@@7 $generated@@112)) $generated@@112) ($generated@@49 $generated@@7 ($generated@@65 $generated@@7 $generated@@112) $generated@@30)))
 :pattern ( ($generated@@86 $generated@@112 $generated@@30))
)))
(assert (forall (($generated@@114 Int) ($generated@@115 T@U) ($generated@@116 Int) ($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@10 ($generated@@70 $generated@@71 $generated@@6 ($generated@@113 $generated@@114 $generated@@115 $generated@@116 $generated@@117) $generated@@118)) (exists (($generated@@119 Int) ) (!  (and (and (<= $generated@@114 $generated@@119) ($generated@@23 $generated@@115 ($generated@@66 $generated@@7 ($generated@@11 $generated@@119)))) (= $generated@@118 ($generated@@66 $generated@@7 ($generated@@11 (+ $generated@@119 $generated@@116)))))
 :pattern ( ($generated@@23 $generated@@117 ($generated@@66 $generated@@7 ($generated@@11 $generated@@119))))
)))
 :pattern ( ($generated@@70 $generated@@71 $generated@@6 ($generated@@113 $generated@@114 $generated@@115 $generated@@116 $generated@@117) $generated@@118))
)))
(assert  (=> (<= 0 $generated@@45) (forall (($generated@@122 T@U) ) (!  (=> (or ($generated@@121 $generated@@122) (and (< 0 $generated@@45) ($generated@@49 $generated@@50 $generated@@122 ($generated@@51 $generated@@30)))) (= ($generated@@120 $generated@@122) ($generated@@69 ($generated@@113 ($generated@@48 0) $generated@@122 1 $generated@@122))))
 :pattern ( ($generated@@120 $generated@@122))
))))
(assert (forall (($generated@@123 Int) ($generated@@124 Int) ) (! (= ($generated@@60 $generated@@123 $generated@@124) (div $generated@@123 $generated@@124))
 :pattern ( ($generated@@60 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> ($generated@@125 $generated@@126 $generated@@127) (= $generated@@126 $generated@@127))
 :pattern ( ($generated@@125 $generated@@126 $generated@@127))
)))
(assert  (=> (<= 1 $generated@@45) (forall (($generated@@128 Int) ) (!  (=> (or ($generated@@47 ($generated@@48 $generated@@128)) (and (< 1 $generated@@45) (<= ($generated@@48 0) $generated@@128))) (and (forall (($generated@@129 Int) ) (!  (=> (<= ($generated@@48 0) $generated@@129) (=> (< $generated@@129 $generated@@128) ($generated@@59 $generated@@129 ($generated@@48 $generated@@128))))
 :pattern ( ($generated@@57 ($generated@@58 $generated@@90) $generated@@129 $generated@@128))
)) (= ($generated@@46 ($generated@@48 $generated@@128)) ($generated@@69 ($generated@@91 $generated ($generated@@48 0) $generated@@128 ($generated@@58 $generated@@90) ($generated@@48 $generated@@128))))))
 :weight 3
 :pattern ( ($generated@@46 ($generated@@48 $generated@@128)))
))))
(assert (forall (($generated@@130 T@U) ) (!  (=> ($generated@@86 $generated@@130 $generated) (and (= ($generated@@66 $generated@@7 ($generated@@65 $generated@@7 $generated@@130)) $generated@@130) ($generated@@49 $generated@@7 ($generated@@65 $generated@@7 $generated@@130) $generated)))
 :pattern ( ($generated@@86 $generated@@130 $generated))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@T) ) (! (= ($generated@@86 ($generated@@66 $generated@@133 $generated@@131) $generated@@132) ($generated@@49 $generated@@133 $generated@@131 $generated@@132))
 :pattern ( ($generated@@86 ($generated@@66 $generated@@133 $generated@@131) $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@29 $generated@@50 $generated@@134 ($generated@@51 $generated@@135) $generated@@136) (forall (($generated@@137 T@U) ) (!  (=> ($generated@@23 $generated@@134 $generated@@137) ($generated@@104 $generated@@137 $generated@@135 $generated@@136))
 :pattern ( ($generated@@23 $generated@@134 $generated@@137))
)))
 :pattern ( ($generated@@29 $generated@@50 $generated@@134 ($generated@@51 $generated@@135) $generated@@136))
)))
(assert  (=> (<= 0 $generated@@45) (forall (($generated@@138 T@U) ) (!  (=> (or ($generated@@121 ($generated@@54 $generated@@50 $generated@@138)) (and (< 0 $generated@@45) ($generated@@49 $generated@@50 $generated@@138 ($generated@@51 $generated@@30)))) (= ($generated@@120 ($generated@@54 $generated@@50 $generated@@138)) ($generated@@69 ($generated@@113 ($generated@@48 0) ($generated@@54 $generated@@50 $generated@@138) 1 $generated@@138))))
 :weight 3
 :pattern ( ($generated@@120 ($generated@@54 $generated@@50 $generated@@138)))
))))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@139 ($generated@@51 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@51 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ) (! (= ($generated@@21 ($generated@@51 $generated@@141)) $generated@@1)
 :pattern ( ($generated@@51 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@T) ) (! (= ($generated@@65 $generated@@143 ($generated@@66 $generated@@143 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@66 $generated@@143 $generated@@142))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@144 $generated@@152 $generated@@153 $generated@@154 ($generated@@149 $generated@@152 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@158 $generated@@155) $generated@@157 $generated@@158) $generated@@155)
 :weight 0
)) (and (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@144 $generated@@159 $generated@@160 $generated@@161 ($generated@@149 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@144 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@144 $generated@@168 $generated@@169 $generated@@170 ($generated@@149 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@144 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)))) (= ($generated@@5 $generated@@145) 5)) (= ($generated@@5 $generated@@146) 6)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ) (= ($generated@@5 ($generated@@148 $generated@@177 $generated@@178)) 7))) (forall (($generated@@179 T@T) ($generated@@180 T@T) ) (! (= ($generated@@150 ($generated@@148 $generated@@179 $generated@@180)) $generated@@179)
 :pattern ( ($generated@@148 $generated@@179 $generated@@180))
))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (! (= ($generated@@151 ($generated@@148 $generated@@181 $generated@@182)) $generated@@182)
 :pattern ( ($generated@@148 $generated@@181 $generated@@182))
))))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 Bool) ($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@10 ($generated@@144 $generated@@145 $generated@@146 $generated@@6 ($generated@@147 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))  (=> (and (or (not (= $generated@@187 $generated@@183)) (not true)) ($generated@@10 ($generated@@65 $generated@@6 ($generated@@70 $generated@@146 $generated@@71 ($generated@@70 $generated@@145 ($generated@@148 $generated@@146 $generated@@71) $generated@@184 $generated@@187) $generated@@185)))) $generated@@186))
 :pattern ( ($generated@@144 $generated@@145 $generated@@146 $generated@@6 ($generated@@147 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))
)))
(assert (forall (($generated@@189 Int) ($generated@@190 Int) ) (! (= ($generated@@61 $generated@@189 $generated@@190) (mod $generated@@189 $generated@@190))
 :pattern ( ($generated@@61 $generated@@189 $generated@@190))
)))
(assert  (=> (<= 0 $generated@@45) (forall (($generated@@191 T@U) ) (!  (=> (or ($generated@@121 $generated@@191) (and (< 0 $generated@@45) ($generated@@49 $generated@@50 $generated@@191 ($generated@@51 $generated@@30)))) ($generated@@49 $generated@@50 ($generated@@120 $generated@@191) ($generated@@51 $generated@@30)))
 :pattern ( ($generated@@120 $generated@@191))
))))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> ($generated@@86 $generated@@192 ($generated@@51 $generated@@193)) (and (= ($generated@@66 $generated@@50 ($generated@@65 $generated@@50 $generated@@192)) $generated@@192) ($generated@@49 $generated@@50 ($generated@@65 $generated@@50 $generated@@192) ($generated@@51 $generated@@193))))
 :pattern ( ($generated@@86 $generated@@192 ($generated@@51 $generated@@193)))
)))
(assert (= ($generated@@21 $generated@@30) $generated@@3))
(assert (= ($generated@@194 $generated@@30) $generated@@4))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@125 $generated@@195 $generated@@196) (forall (($generated@@197 T@U) ) (! (= ($generated@@23 $generated@@195 $generated@@197) ($generated@@23 $generated@@196 $generated@@197))
 :pattern ( ($generated@@23 $generated@@195 $generated@@197))
 :pattern ( ($generated@@23 $generated@@196 $generated@@197))
)))
 :pattern ( ($generated@@125 $generated@@195 $generated@@196))
)))
(assert (forall (($generated@@198 Int) ) (! (= ($generated@@66 $generated@@7 ($generated@@11 ($generated@@48 $generated@@198))) ($generated@@54 $generated@@71 ($generated@@66 $generated@@7 ($generated@@11 $generated@@198))))
 :pattern ( ($generated@@66 $generated@@7 ($generated@@11 ($generated@@48 $generated@@198))))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@T) ) (! (= ($generated@@66 $generated@@200 ($generated@@54 $generated@@200 $generated@@199)) ($generated@@54 $generated@@71 ($generated@@66 $generated@@200 $generated@@199)))
 :pattern ( ($generated@@66 $generated@@200 ($generated@@54 $generated@@200 $generated@@199)))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (! ($generated@@29 $generated@@7 $generated@@202 $generated $generated@@201)
 :pattern ( ($generated@@29 $generated@@7 $generated@@202 $generated $generated@@201))
)))
(assert (forall (($generated@@203 T@U) ) (! ($generated@@49 $generated@@7 $generated@@203 $generated)
 :pattern ( ($generated@@49 $generated@@7 $generated@@203 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 (T@U) Bool)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 (T@U) Bool)
(declare-fun $generated@@210 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@211  (=> (= $generated@@204 ($generated@@147 $generated@@205 $generated@@206 $generated@@2 false)) (=> (and (and (and ($generated@@207 $generated@@208) ($generated@@209 $generated@@208)) (= $generated@@206 $generated@@208)) (and ($generated@@29 $generated@@7 ($generated@@11 $generated@@210) $generated@@30 $generated@@208) ($generated@@47 $generated@@210))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@49 $generated@@7 ($generated@@11 ($generated@@48 0)) $generated@@30)) (=> ($generated@@49 $generated@@7 ($generated@@11 ($generated@@48 0)) $generated@@30) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= ($generated@@48 2) 0)) (not true))) (=> (or (not (= ($generated@@48 2) 0)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@49 $generated@@7 ($generated@@11 ($generated@@60 $generated@@210 ($generated@@48 2))) $generated@@30))))))))))
(let (($generated@@212  (=> (and (and (and ($generated@@207 $generated@@206) ($generated@@209 $generated@@206)) (<= ($generated@@48 0) $generated@@210)) (and (= 2 $generated@@45) (= (ControlFlow 0 5) 2))) $generated@@211)))
$generated@@212)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)