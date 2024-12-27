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
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (Int Int Int) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@33 (T@U) Int)
(declare-fun $generated@@37 (T@U) Int)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@47 (Int Int) T@U)
(declare-fun $generated@@50 (Int Int) T@U)
(declare-fun $generated@@53 (Int) Int)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@60 (T@U) Bool)
(declare-fun $generated@@62 (T@U) Bool)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@U) Int)
(declare-fun $generated@@87 (T@U) Int)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@100 () T@T)
(declare-fun $generated@@101 () T@T)
(declare-fun $generated@@102 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@103 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@104 () T@T)
(declare-fun $generated@@105 (T@T T@T) T@T)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@T) T@T)
(declare-fun $generated@@109 (T@T) T@T)
(declare-fun $generated@@158 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@159 (T@U) Bool)
(declare-fun $generated@@177 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated) $generated@@0))
(assert (forall (($generated@@26 Int) ($generated@@27 Int) ($generated@@28 Int) ) (! (= ($generated@@25 ($generated@@24 $generated@@26 $generated@@27 $generated@@28)) $generated@@5)
 :pattern ( ($generated@@24 $generated@@26 $generated@@27 $generated@@28))
)))
(assert (forall (($generated@@30 Int) ($generated@@31 Int) ($generated@@32 Int) ) (! (= ($generated@@29 ($generated@@24 $generated@@30 $generated@@31 $generated@@32)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30 $generated@@31 $generated@@32))
)))
(assert (forall (($generated@@34 Int) ($generated@@35 Int) ($generated@@36 Int) ) (! (= ($generated@@33 ($generated@@24 $generated@@34 $generated@@35 $generated@@36)) $generated@@35)
 :pattern ( ($generated@@24 $generated@@34 $generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 Int) ($generated@@39 Int) ($generated@@40 Int) ) (! (= ($generated@@37 ($generated@@24 $generated@@38 $generated@@39 $generated@@40)) $generated@@40)
 :pattern ( ($generated@@24 $generated@@38 $generated@@39 $generated@@40))
)))
(assert (= ($generated@@7 $generated@@42) 3))
(assert (forall (($generated@@44 Int) ($generated@@45 Int) ($generated@@46 Int) ) (! (= ($generated@@41 $generated@@42 ($generated@@24 $generated@@44 $generated@@45 $generated@@46) $generated@@43)  (and (and ($generated@@41 $generated@@9 ($generated@@13 $generated@@44) $generated) ($generated@@41 $generated@@9 ($generated@@13 $generated@@45) $generated)) ($generated@@41 $generated@@9 ($generated@@13 $generated@@46) $generated)))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@24 $generated@@44 $generated@@45 $generated@@46) $generated@@43))
)))
(assert (forall (($generated@@48 Int) ($generated@@49 Int) ) (! (= ($generated@@41 $generated@@42 ($generated@@47 $generated@@48 $generated@@49) $generated@@43)  (and ($generated@@41 $generated@@9 ($generated@@13 $generated@@48) $generated) ($generated@@41 $generated@@9 ($generated@@13 $generated@@49) $generated)))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@47 $generated@@48 $generated@@49) $generated@@43))
)))
(assert (forall (($generated@@51 Int) ($generated@@52 Int) ) (! (= ($generated@@41 $generated@@42 ($generated@@50 $generated@@51 $generated@@52) $generated@@43)  (and ($generated@@41 $generated@@9 ($generated@@13 $generated@@51) $generated) ($generated@@41 $generated@@9 ($generated@@13 $generated@@52) $generated)))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@50 $generated@@51 $generated@@52) $generated@@43))
)))
(assert (forall (($generated@@54 Int) ) (! (= ($generated@@53 $generated@@54) $generated@@54)
 :pattern ( ($generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 $generated@@56) $generated@@56)
 :pattern ( ($generated@@55 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@59 T@U) ) (! (= ($generated@@58 $generated@@59) (= ($generated@@25 $generated@@59) $generated@@3))
 :pattern ( ($generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ) (! (= ($generated@@60 $generated@@61) (= ($generated@@25 $generated@@61) $generated@@4))
 :pattern ( ($generated@@60 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ) (! (= ($generated@@62 $generated@@63) (= ($generated@@25 $generated@@63) $generated@@5))
 :pattern ( ($generated@@62 $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@64 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@64 $generated@@67 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (!  (=> ($generated@@62 $generated@@68) (exists (($generated@@69 Int) ($generated@@70 Int) ($generated@@71 Int) ) (= $generated@@68 ($generated@@24 $generated@@69 $generated@@70 $generated@@71))))
 :pattern ( ($generated@@62 $generated@@68))
)))
(assert (forall (($generated@@72 T@U) ) (!  (=> ($generated@@58 $generated@@72) (exists (($generated@@73 Int) ($generated@@74 Int) ) (= $generated@@72 ($generated@@47 $generated@@73 $generated@@74))))
 :pattern ( ($generated@@58 $generated@@72))
)))
(assert (forall (($generated@@75 T@U) ) (!  (=> ($generated@@60 $generated@@75) (exists (($generated@@76 Int) ($generated@@77 Int) ) (= $generated@@75 ($generated@@50 $generated@@76 $generated@@77))))
 :pattern ( ($generated@@60 $generated@@75))
)))
(assert (forall (($generated@@78 Int) ($generated@@79 Int) ) (! (= ($generated@@25 ($generated@@47 $generated@@78 $generated@@79)) $generated@@3)
 :pattern ( ($generated@@47 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@80 Int) ($generated@@81 Int) ) (! (= ($generated@@29 ($generated@@47 $generated@@80 $generated@@81)) $generated@@80)
 :pattern ( ($generated@@47 $generated@@80 $generated@@81))
)))
(assert (forall (($generated@@83 Int) ($generated@@84 Int) ) (! (= ($generated@@82 ($generated@@47 $generated@@83 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@47 $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@85 Int) ($generated@@86 Int) ) (! (= ($generated@@25 ($generated@@50 $generated@@85 $generated@@86)) $generated@@4)
 :pattern ( ($generated@@50 $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@88 Int) ($generated@@89 Int) ) (! (= ($generated@@87 ($generated@@50 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@50 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@90 Int) ($generated@@91 Int) ) (! (= ($generated@@29 ($generated@@50 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@50 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 Int) ($generated@@93 Int) ($generated@@94 Int) ) (! (= ($generated@@24 ($generated@@53 $generated@@92) ($generated@@53 $generated@@93) ($generated@@53 $generated@@94)) ($generated@@55 $generated@@42 ($generated@@24 $generated@@92 $generated@@93 $generated@@94)))
 :pattern ( ($generated@@24 ($generated@@53 $generated@@92) ($generated@@53 $generated@@93) ($generated@@53 $generated@@94)))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@64 $generated@@96 ($generated@@65 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@65 $generated@@96 $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ) (!  (=> ($generated@@97 $generated@@98) (or (or ($generated@@58 $generated@@98) ($generated@@60 $generated@@98)) ($generated@@62 $generated@@98)))
 :pattern ( ($generated@@97 $generated@@98))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@99 $generated@@110 $generated@@111 $generated@@112 ($generated@@106 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@99 $generated@@117 $generated@@118 $generated@@119 ($generated@@106 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@99 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@99 $generated@@126 $generated@@127 $generated@@128 ($generated@@106 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@99 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))) (= ($generated@@7 $generated@@100) 4)) (= ($generated@@7 $generated@@101) 5)) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@103 $generated@@135 $generated@@136 ($generated@@107 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@137) $generated@@139) $generated@@137)
 :weight 0
))) (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@144 $generated@@145) (= ($generated@@103 $generated@@140 $generated@@141 ($generated@@107 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@142) $generated@@145) ($generated@@103 $generated@@140 $generated@@141 $generated@@143 $generated@@145)))
 :weight 0
))) (= ($generated@@7 $generated@@104) 6)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ) (= ($generated@@7 ($generated@@105 $generated@@146 $generated@@147)) 7))) (forall (($generated@@148 T@T) ($generated@@149 T@T) ) (! (= ($generated@@108 ($generated@@105 $generated@@148 $generated@@149)) $generated@@148)
 :pattern ( ($generated@@105 $generated@@148 $generated@@149))
))) (forall (($generated@@150 T@T) ($generated@@151 T@T) ) (! (= ($generated@@109 ($generated@@105 $generated@@150 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@105 $generated@@150 $generated@@151))
))))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 Bool) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@12 ($generated@@99 $generated@@100 $generated@@101 $generated@@8 ($generated@@102 $generated@@152 $generated@@153 $generated@@154 $generated@@155) $generated@@156 $generated@@157))  (=> (and (or (not (= $generated@@156 $generated@@152)) (not true)) ($generated@@12 ($generated@@64 $generated@@8 ($generated@@103 $generated@@101 $generated@@104 ($generated@@103 $generated@@100 ($generated@@105 $generated@@101 $generated@@104) $generated@@153 $generated@@156) $generated@@154)))) $generated@@155))
 :pattern ( ($generated@@99 $generated@@100 $generated@@101 $generated@@8 ($generated@@102 $generated@@152 $generated@@153 $generated@@154 $generated@@155) $generated@@156 $generated@@157))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> (and ($generated@@159 $generated@@161) (and ($generated@@58 $generated@@160) ($generated@@158 $generated@@42 $generated@@160 $generated@@43 $generated@@161))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@160)) $generated $generated@@161))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@160)) $generated $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> (and ($generated@@159 $generated@@163) (and ($generated@@58 $generated@@162) ($generated@@158 $generated@@42 $generated@@162 $generated@@43 $generated@@163))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@82 $generated@@162)) $generated $generated@@163))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@82 $generated@@162)) $generated $generated@@163))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and ($generated@@159 $generated@@165) (and ($generated@@60 $generated@@164) ($generated@@158 $generated@@42 $generated@@164 $generated@@43 $generated@@165))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@87 $generated@@164)) $generated $generated@@165))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@87 $generated@@164)) $generated $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (!  (=> (and ($generated@@159 $generated@@167) (and ($generated@@60 $generated@@166) ($generated@@158 $generated@@42 $generated@@166 $generated@@43 $generated@@167))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@166)) $generated $generated@@167))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@166)) $generated $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> (and ($generated@@159 $generated@@169) (and ($generated@@62 $generated@@168) ($generated@@158 $generated@@42 $generated@@168 $generated@@43 $generated@@169))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@168)) $generated $generated@@169))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@29 $generated@@168)) $generated $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> (and ($generated@@159 $generated@@171) (and ($generated@@62 $generated@@170) ($generated@@158 $generated@@42 $generated@@170 $generated@@43 $generated@@171))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@33 $generated@@170)) $generated $generated@@171))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@33 $generated@@170)) $generated $generated@@171))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (!  (=> (and ($generated@@159 $generated@@173) (and ($generated@@62 $generated@@172) ($generated@@158 $generated@@42 $generated@@172 $generated@@43 $generated@@173))) ($generated@@158 $generated@@9 ($generated@@13 ($generated@@37 $generated@@172)) $generated $generated@@173))
 :pattern ( ($generated@@158 $generated@@9 ($generated@@13 ($generated@@37 $generated@@172)) $generated $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@174 $generated@@43) (or (or ($generated@@58 $generated@@174) ($generated@@60 $generated@@174)) ($generated@@62 $generated@@174)))
 :pattern ( ($generated@@62 $generated@@174) ($generated@@41 $generated@@42 $generated@@174 $generated@@43))
 :pattern ( ($generated@@60 $generated@@174) ($generated@@41 $generated@@42 $generated@@174 $generated@@43))
 :pattern ( ($generated@@58 $generated@@174) ($generated@@41 $generated@@42 $generated@@174 $generated@@43))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (and ($generated@@159 $generated@@176) ($generated@@41 $generated@@42 $generated@@175 $generated@@43)) ($generated@@158 $generated@@42 $generated@@175 $generated@@43 $generated@@176))
 :pattern ( ($generated@@158 $generated@@42 $generated@@175 $generated@@43 $generated@@176))
)))
(assert (= ($generated@@23 $generated@@43) $generated@@2))
(assert (= ($generated@@177 $generated@@43) $generated@@6))
(assert (forall (($generated@@178 Int) ($generated@@179 Int) ) (! (= ($generated@@47 ($generated@@53 $generated@@178) ($generated@@53 $generated@@179)) ($generated@@55 $generated@@42 ($generated@@47 $generated@@178 $generated@@179)))
 :pattern ( ($generated@@47 ($generated@@53 $generated@@178) ($generated@@53 $generated@@179)))
)))
(assert (forall (($generated@@180 Int) ($generated@@181 Int) ) (! (= ($generated@@50 ($generated@@53 $generated@@180) ($generated@@53 $generated@@181)) ($generated@@55 $generated@@42 ($generated@@50 $generated@@180 $generated@@181)))
 :pattern ( ($generated@@50 ($generated@@53 $generated@@180) ($generated@@53 $generated@@181)))
)))
(assert (forall (($generated@@182 Int) ) (! (= ($generated@@65 $generated@@9 ($generated@@13 ($generated@@53 $generated@@182))) ($generated@@55 $generated@@104 ($generated@@65 $generated@@9 ($generated@@13 $generated@@182))))
 :pattern ( ($generated@@65 $generated@@9 ($generated@@13 ($generated@@53 $generated@@182))))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@T) ) (! (= ($generated@@65 $generated@@184 ($generated@@55 $generated@@184 $generated@@183)) ($generated@@55 $generated@@104 ($generated@@65 $generated@@184 $generated@@183)))
 :pattern ( ($generated@@65 $generated@@184 ($generated@@55 $generated@@184 $generated@@183)))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! ($generated@@158 $generated@@9 $generated@@186 $generated $generated@@185)
 :pattern ( ($generated@@158 $generated@@9 $generated@@186 $generated $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ) (! ($generated@@41 $generated@@9 $generated@@187 $generated)
 :pattern ( ($generated@@41 $generated@@9 $generated@@187 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Int)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () Int)
(declare-fun $generated@@196 () Int)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 (T@U) Bool)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () Int)
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
 (=> (= (ControlFlow 0 0) 16) (let (($generated@@203  (=> (and (and (and (and (and (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 true)))) (not ($generated@@60 $generated@@188))) (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 true))))) (not ($generated@@62 $generated@@188))) (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 true))))) (= (ControlFlow 0 14) (- 0 13))) false)))
(let (($generated@@204  (and (=> (= (ControlFlow 0 11) (- 0 12)) ($generated@@62 $generated@@188)) (=> ($generated@@62 $generated@@188) (=> (and (and (and (= $generated@@189 $generated@@188) ($generated@@41 $generated@@42 $generated@@189 $generated@@43)) (and (= $generated@@190 $generated@@189) (= $generated@@191 ($generated@@53 10)))) (and (and ($generated@@41 $generated@@9 ($generated@@13 $generated@@191) $generated) (= $generated@@192 $generated@@191)) (and (or (or ($generated@@58 $generated@@190) ($generated@@60 $generated@@190)) ($generated@@62 $generated@@190)) (= (ControlFlow 0 11) (- 0 10))))) ($generated@@62 $generated@@190))))))
(let (($generated@@205  (=> ($generated@@62 $generated@@188) (and (=> (= (ControlFlow 0 8) (- 0 9)) ($generated@@62 $generated@@188)) (=> ($generated@@62 $generated@@188) (=> (and (and (and (= $generated@@193 $generated@@188) ($generated@@41 $generated@@42 $generated@@193 $generated@@43)) (and (= $generated@@194 $generated@@193) (= $generated@@195 ($generated@@53 10)))) (and (and ($generated@@41 $generated@@9 ($generated@@13 $generated@@195) $generated) (= $generated@@196 $generated@@195)) (and (or (or ($generated@@58 $generated@@194) ($generated@@60 $generated@@194)) ($generated@@62 $generated@@194)) (= (ControlFlow 0 8) (- 0 7))))) ($generated@@62 $generated@@194)))))))
(let (($generated@@206  (=> (= (ControlFlow 0 6) (- 0 5)) ($generated@@62 $generated@@188))))
(let (($generated@@207  (=> (and ($generated@@60 $generated@@188) (= (ControlFlow 0 4) (- 0 3))) ($generated@@60 $generated@@188))))
(let (($generated@@208  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@58 $generated@@188))))
(let (($generated@@209  (=> (= $generated@@197 ($generated@@102 $generated@@198 $generated@@199 $generated@@1 false)) (and (and (and (and (and (=> (= (ControlFlow 0 15) 2) $generated@@208) (=> (= (ControlFlow 0 15) 4) $generated@@207)) (=> (= (ControlFlow 0 15) 6) $generated@@206)) (=> (= (ControlFlow 0 15) 8) $generated@@205)) (=> (= (ControlFlow 0 15) 11) $generated@@204)) (=> (= (ControlFlow 0 15) 14) $generated@@203)))))
(let (($generated@@210  (=> (and ($generated@@159 $generated@@199) ($generated@@200 $generated@@199)) (=> (and (and (and ($generated@@41 $generated@@42 $generated@@188 $generated@@43) ($generated@@158 $generated@@42 $generated@@188 $generated@@43 $generated@@199)) ($generated@@97 $generated@@188)) (and (and ($generated@@41 $generated@@42 $generated@@201 $generated@@43) ($generated@@158 $generated@@42 $generated@@201 $generated@@43 $generated@@199)) (and (= 1 $generated@@202) (= (ControlFlow 0 16) 15)))) $generated@@209))))
$generated@@210)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 11) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)