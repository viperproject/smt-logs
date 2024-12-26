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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@U T@U T@U) Int)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () Int)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (Int) Int)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@U T@U) T@U)
(declare-fun $generated@@51 (T@U) Bool)
(declare-fun $generated@@53 (T@U) Bool)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@U T@U T@U) Bool)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@90 (T@U T@U) Bool)
(declare-fun $generated@@96 (T@U) Int)
(declare-fun $generated@@97 (T@U) Int)
(declare-fun $generated@@105 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@106 () T@T)
(declare-fun $generated@@107 () T@T)
(declare-fun $generated@@108 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@109 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 (T@T T@T) T@T)
(declare-fun $generated@@112 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@113 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@114 (T@T) T@T)
(declare-fun $generated@@115 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (forall (($generated@@22 T@U) ($generated@@23 T@U) ($generated@@24 T@U) ) (! (= ($generated@@20 $generated@@22 ($generated@@21 $generated@@23) $generated@@24) ($generated@@20 $generated@@22 $generated@@23 $generated@@24))
 :pattern ( ($generated@@20 $generated@@22 ($generated@@21 $generated@@23) $generated@@24))
)))
(assert (= ($generated@@25 $generated@@26) $generated@@1))
(assert (= ($generated@@4 $generated@@28) 3))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@30 $generated@@32) ($generated@@27 $generated@@28 $generated@@26 ($generated@@29 $generated@@31) $generated@@32))
 :pattern ( ($generated@@27 $generated@@28 $generated@@26 ($generated@@29 $generated@@31) $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ) (! ($generated@@33 $generated@@28 $generated@@26 ($generated@@29 $generated@@34))
 :pattern ( ($generated@@33 $generated@@28 $generated@@26 ($generated@@29 $generated@@34)))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (!  (=> (or ($generated@@37 $generated@@41 $generated@@42) (and (< 2 $generated@@35) ($generated@@38 $generated@@42 $generated@@41))) (and (= ($generated@@20 $generated@@41 ($generated@@21 $generated@@39) ($generated@@36 $generated@@41 $generated@@42)) ($generated@@40 1)) ($generated@@33 $generated@@28 ($generated@@36 $generated@@41 $generated@@42) ($generated@@29 $generated@@41))))
 :pattern ( ($generated@@36 $generated@@41 $generated@@42))
))))
(assert (forall (($generated@@43 Int) ) (! (= ($generated@@40 $generated@@43) $generated@@43)
 :pattern ( ($generated@@40 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@44 $generated@@46 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@46 $generated@@45))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@33 $generated@@28 ($generated@@47 $generated@@49 $generated@@50) ($generated@@29 $generated@@48))  (and ($generated@@38 $generated@@49 $generated@@48) ($generated@@33 $generated@@28 $generated@@50 ($generated@@29 $generated@@48))))
 :pattern ( ($generated@@33 $generated@@28 ($generated@@47 $generated@@49 $generated@@50) ($generated@@29 $generated@@48)))
)))
(assert (forall (($generated@@52 T@U) ) (! (= ($generated@@51 $generated@@52) (= ($generated@@25 $generated@@52) $generated@@1))
 :pattern ( ($generated@@51 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ) (! (= ($generated@@53 $generated@@54) (= ($generated@@25 $generated@@54) $generated@@2))
 :pattern ( ($generated@@53 $generated@@54))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 ($generated@@55 $generated@@58 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@55 $generated@@58 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ) (!  (=> ($generated@@53 $generated@@59) (exists (($generated@@60 T@U) ($generated@@61 T@U) ) (= $generated@@59 ($generated@@47 $generated@@60 $generated@@61))))
 :pattern ( ($generated@@53 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ) (!  (=> ($generated@@51 $generated@@62) (= $generated@@62 $generated@@26))
 :pattern ( ($generated@@51 $generated@@62))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@63 ($generated@@56 $generated@@67 $generated@@64) $generated@@65 $generated@@66) ($generated@@27 $generated@@67 $generated@@64 $generated@@65 $generated@@66))
 :pattern ( ($generated@@63 ($generated@@56 $generated@@67 $generated@@64) $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@70 T@U) ) (!  (and (= ($generated@@68 ($generated@@29 $generated@@70)) $generated@@0) (= ($generated@@69 ($generated@@29 $generated@@70)) $generated@@3))
 :pattern ( ($generated@@29 $generated@@70))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (!  (=> ($generated@@33 $generated@@28 $generated@@72 ($generated@@29 $generated@@71)) (or ($generated@@51 $generated@@72) ($generated@@53 $generated@@72)))
 :pattern ( ($generated@@53 $generated@@72) ($generated@@33 $generated@@28 $generated@@72 ($generated@@29 $generated@@71)))
 :pattern ( ($generated@@51 $generated@@72) ($generated@@33 $generated@@28 $generated@@72 ($generated@@29 $generated@@71)))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@38 ($generated@@56 $generated@@75 $generated@@73) $generated@@74) ($generated@@33 $generated@@75 $generated@@73 $generated@@74))
 :pattern ( ($generated@@38 ($generated@@56 $generated@@75 $generated@@73) $generated@@74))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (or ($generated@@37 $generated@@76 $generated@@77) (and (< 2 $generated@@35) ($generated@@38 $generated@@77 $generated@@76))) (= ($generated@@36 $generated@@76 $generated@@77) ($generated@@47 $generated@@77 ($generated@@44 $generated@@28 $generated@@26))))
 :pattern ( ($generated@@36 $generated@@76 $generated@@77))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@25 ($generated@@47 $generated@@78 $generated@@79)) $generated@@2)
 :pattern ( ($generated@@47 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@80 ($generated@@47 $generated@@81 $generated@@82)) $generated@@81)
 :pattern ( ($generated@@47 $generated@@81 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@83 ($generated@@47 $generated@@84 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@47 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (! (= ($generated@@86 ($generated@@29 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@29 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@55 $generated@@89 ($generated@@56 $generated@@89 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@56 $generated@@89 $generated@@88))
)))
(assert  (=> (<= 1 $generated@@35) (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (!  (=> (or ($generated@@90 $generated@@91 $generated@@93) (and (< 1 $generated@@35) ($generated@@33 $generated@@28 $generated@@93 ($generated@@29 $generated@@91)))) (and (=> (not ($generated@@51 $generated@@93)) (let (($generated@@94 ($generated@@83 $generated@@93)))
($generated@@90 $generated@@91 $generated@@94))) (= ($generated@@20 $generated@@91 ($generated@@21 $generated@@92) $generated@@93) (ite ($generated@@51 $generated@@93) 0 (let (($generated@@95 ($generated@@83 $generated@@93)))
(+ 1 ($generated@@20 $generated@@91 $generated@@92 $generated@@95)))))))
 :pattern ( ($generated@@20 $generated@@91 ($generated@@21 $generated@@92) $generated@@93))
))))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (< ($generated@@96 $generated@@98) ($generated@@97 ($generated@@47 $generated@@98 $generated@@99)))
 :pattern ( ($generated@@47 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (< ($generated@@97 $generated@@101) ($generated@@97 ($generated@@47 $generated@@100 $generated@@101)))
 :pattern ( ($generated@@47 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and ($generated@@30 $generated@@104) (and ($generated@@53 $generated@@102) ($generated@@27 $generated@@28 $generated@@102 ($generated@@29 $generated@@103) $generated@@104))) ($generated@@63 ($generated@@80 $generated@@102) $generated@@103 $generated@@104))
 :pattern ( ($generated@@63 ($generated@@80 $generated@@102) $generated@@103 $generated@@104))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@105 $generated@@116 $generated@@117 $generated@@118 ($generated@@112 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@121 $generated@@122) $generated@@119)
 :weight 0
)) (and (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (or (= $generated@@128 $generated@@130) (= ($generated@@105 $generated@@123 $generated@@124 $generated@@125 ($generated@@112 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@130 $generated@@131) ($generated@@105 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@130 $generated@@131)))
 :weight 0
)) (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (or (= $generated@@138 $generated@@140) (= ($generated@@105 $generated@@132 $generated@@133 $generated@@134 ($generated@@112 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@138 $generated@@135) $generated@@139 $generated@@140) ($generated@@105 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@139 $generated@@140)))
 :weight 0
)))) (= ($generated@@4 $generated@@106) 4)) (= ($generated@@4 $generated@@107) 5)) (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@109 $generated@@141 $generated@@142 ($generated@@113 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@143) $generated@@145) $generated@@143)
 :weight 0
))) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (or (= $generated@@150 $generated@@151) (= ($generated@@109 $generated@@146 $generated@@147 ($generated@@113 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@148) $generated@@151) ($generated@@109 $generated@@146 $generated@@147 $generated@@149 $generated@@151)))
 :weight 0
))) (= ($generated@@4 $generated@@110) 6)) (forall (($generated@@152 T@T) ($generated@@153 T@T) ) (= ($generated@@4 ($generated@@111 $generated@@152 $generated@@153)) 7))) (forall (($generated@@154 T@T) ($generated@@155 T@T) ) (! (= ($generated@@114 ($generated@@111 $generated@@154 $generated@@155)) $generated@@154)
 :pattern ( ($generated@@111 $generated@@154 $generated@@155))
))) (forall (($generated@@156 T@T) ($generated@@157 T@T) ) (! (= ($generated@@115 ($generated@@111 $generated@@156 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@111 $generated@@156 $generated@@157))
))))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 Bool) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@9 ($generated@@105 $generated@@106 $generated@@107 $generated@@5 ($generated@@108 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))  (=> (and (or (not (= $generated@@162 $generated@@158)) (not true)) ($generated@@9 ($generated@@55 $generated@@5 ($generated@@109 $generated@@107 $generated@@110 ($generated@@109 $generated@@106 ($generated@@111 $generated@@107 $generated@@110) $generated@@159 $generated@@162) $generated@@160)))) $generated@@161))
 :pattern ( ($generated@@105 $generated@@106 $generated@@107 $generated@@5 ($generated@@108 $generated@@158 $generated@@159 $generated@@160 $generated@@161) $generated@@162 $generated@@163))
)))
(assert (forall (($generated@@164 T@U) ) (! (= ($generated@@96 ($generated@@56 $generated@@28 $generated@@164)) ($generated@@97 $generated@@164))
 :pattern ( ($generated@@96 ($generated@@56 $generated@@28 $generated@@164)))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@38 $generated@@166 ($generated@@29 $generated@@165)) (and (= ($generated@@56 $generated@@28 ($generated@@55 $generated@@28 $generated@@166)) $generated@@166) ($generated@@33 $generated@@28 ($generated@@55 $generated@@28 $generated@@166) ($generated@@29 $generated@@165))))
 :pattern ( ($generated@@38 $generated@@166 ($generated@@29 $generated@@165)))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> (and ($generated@@30 $generated@@169) (and ($generated@@53 $generated@@167) ($generated@@27 $generated@@28 $generated@@167 ($generated@@29 $generated@@168) $generated@@169))) ($generated@@27 $generated@@28 ($generated@@83 $generated@@167) ($generated@@29 $generated@@168) $generated@@169))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@83 $generated@@167) ($generated@@29 $generated@@168) $generated@@169))
)))
(assert (= $generated@@26 ($generated@@44 $generated@@28 $generated@@26)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@47 ($generated@@44 $generated@@110 $generated@@170) ($generated@@44 $generated@@28 $generated@@171)) ($generated@@44 $generated@@28 ($generated@@47 $generated@@170 $generated@@171)))
 :pattern ( ($generated@@47 ($generated@@44 $generated@@110 $generated@@170) ($generated@@44 $generated@@28 $generated@@171)))
)))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> (and (or ($generated@@37 $generated@@173 $generated@@174) (and (< 2 $generated@@35) (and ($generated@@38 $generated@@174 $generated@@173) ($generated@@63 $generated@@174 $generated@@173 $generated@@172)))) ($generated@@30 $generated@@172)) ($generated@@27 $generated@@28 ($generated@@36 $generated@@173 $generated@@174) ($generated@@29 $generated@@173) $generated@@172))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@36 $generated@@173 $generated@@174) ($generated@@29 $generated@@173) $generated@@172))
))))
(assert (forall (($generated@@175 Int) ) (! (= ($generated@@56 $generated@@6 ($generated@@10 ($generated@@40 $generated@@175))) ($generated@@44 $generated@@110 ($generated@@56 $generated@@6 ($generated@@10 $generated@@175))))
 :pattern ( ($generated@@56 $generated@@6 ($generated@@10 ($generated@@40 $generated@@175))))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@T) ) (! (= ($generated@@56 $generated@@177 ($generated@@44 $generated@@177 $generated@@176)) ($generated@@44 $generated@@110 ($generated@@56 $generated@@177 $generated@@176)))
 :pattern ( ($generated@@56 $generated@@177 ($generated@@44 $generated@@177 $generated@@176)))
)))
(assert  (=> (<= 1 $generated@@35) (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> (or ($generated@@90 $generated@@178 ($generated@@44 $generated@@28 $generated@@180)) (and (< 1 $generated@@35) ($generated@@33 $generated@@28 $generated@@180 ($generated@@29 $generated@@178)))) (and (=> (not ($generated@@9 ($generated@@44 $generated@@5 ($generated@@8 ($generated@@51 ($generated@@44 $generated@@28 $generated@@180)))))) (let (($generated@@181 ($generated@@44 $generated@@28 ($generated@@83 ($generated@@44 $generated@@28 $generated@@180)))))
($generated@@90 $generated@@178 $generated@@181))) (= ($generated@@20 $generated@@178 ($generated@@21 $generated@@179) ($generated@@44 $generated@@28 $generated@@180)) (ite ($generated@@51 ($generated@@44 $generated@@28 $generated@@180)) 0 (let (($generated@@182 ($generated@@44 $generated@@28 ($generated@@83 ($generated@@44 $generated@@28 $generated@@180)))))
($generated@@40 (+ 1 ($generated@@20 $generated@@178 ($generated@@21 $generated@@179) $generated@@182))))))))
 :weight 3
 :pattern ( ($generated@@20 $generated@@178 ($generated@@21 $generated@@179) ($generated@@44 $generated@@28 $generated@@180)))
))))
(assert  (=> (<= 2 $generated@@35) (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> (or ($generated@@37 $generated@@183 ($generated@@44 $generated@@110 $generated@@184)) (and (< 2 $generated@@35) ($generated@@38 $generated@@184 $generated@@183))) (= ($generated@@36 $generated@@183 ($generated@@44 $generated@@110 $generated@@184)) ($generated@@44 $generated@@28 ($generated@@47 ($generated@@44 $generated@@110 $generated@@184) ($generated@@44 $generated@@28 $generated@@26)))))
 :weight 3
 :pattern ( ($generated@@36 $generated@@183 ($generated@@44 $generated@@110 $generated@@184)))
))))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> ($generated@@30 $generated@@188) (= ($generated@@27 $generated@@28 ($generated@@47 $generated@@186 $generated@@187) ($generated@@29 $generated@@185) $generated@@188)  (and ($generated@@63 $generated@@186 $generated@@185 $generated@@188) ($generated@@27 $generated@@28 $generated@@187 ($generated@@29 $generated@@185) $generated@@188))))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@47 $generated@@186 $generated@@187) ($generated@@29 $generated@@185) $generated@@188))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@195  (=> (= (ControlFlow 0 4) (- 0 3)) (= ($generated@@20 $generated@@189 ($generated@@21 ($generated@@21 $generated@@39)) ($generated@@36 $generated@@189 $generated@@190)) ($generated@@40 1)))))
(let (($generated@@196  (=> (= ($generated@@36 $generated@@189 $generated@@190) ($generated@@47 $generated@@190 ($generated@@44 $generated@@28 $generated@@26))) (=> (and ($generated@@33 $generated@@28 ($generated@@36 $generated@@189 $generated@@190) ($generated@@29 $generated@@189)) (= (ControlFlow 0 5) 4)) $generated@@195))))
(let (($generated@@197  (=> ($generated@@33 $generated@@28 ($generated@@36 $generated@@189 $generated@@190) ($generated@@29 $generated@@189)) (=> (and ($generated@@63 $generated@@190 $generated@@189 $generated@@191) (= (ControlFlow 0 2) (- 0 1))) (= $generated@@190 $generated@@190)))))
(let (($generated@@198  (=> (= $generated@@192 ($generated@@108 $generated@@193 $generated@@191 $generated false)) (and (=> (= (ControlFlow 0 6) 2) $generated@@197) (=> (= (ControlFlow 0 6) 5) $generated@@196)))))
(let (($generated@@199  (=> (and (and (and ($generated@@30 $generated@@191) ($generated@@194 $generated@@191)) ($generated@@38 $generated@@190 $generated@@189)) (and (= 2 $generated@@35) (= (ControlFlow 0 7) 6))) $generated@@198)))
$generated@@199))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)