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
(declare-fun $generated@@23 (T@U Int T@U) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@45 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 (T@T T@T) T@T)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@74 (Int) Int)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@79 () Int)
(declare-fun $generated@@80 (T@U T@U Int) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@82 (T@U Int) Bool)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@94 (T@U) Bool)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@107 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@133 (T@U) Int)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@142 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@174 (T@U) Bool)
(declare-fun $generated@@179 (T@U) T@U)
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
(assert (forall (($generated@@25 T@U) ($generated@@26 Int) ($generated@@27 T@U) ) (! (= ($generated@@24 ($generated@@23 $generated@@25 $generated@@26 $generated@@27)) $generated@@4)
 :pattern ( ($generated@@23 $generated@@25 $generated@@26 $generated@@27))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 Int) ($generated@@31 T@U) ) (! (= ($generated@@28 ($generated@@23 $generated@@29 $generated@@30 $generated@@31)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29 $generated@@30 $generated@@31))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 Int) ($generated@@35 T@U) ) (! (= ($generated@@32 ($generated@@23 $generated@@33 $generated@@34 $generated@@35)) $generated@@34)
 :pattern ( ($generated@@23 $generated@@33 $generated@@34 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 Int) ($generated@@39 T@U) ) (! (= ($generated@@36 ($generated@@23 $generated@@37 $generated@@38 $generated@@39)) $generated@@39)
 :pattern ( ($generated@@23 $generated@@37 $generated@@38 $generated@@39))
)))
(assert (= ($generated@@24 $generated@@40) $generated@@3))
(assert (= ($generated@@6 $generated@@42) 3))
(assert ($generated@@41 $generated@@42 $generated@@40 $generated@@43))
(assert  (and (and (and (and (and (and (and (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@45 $generated@@54 $generated@@55 ($generated@@51 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@58) $generated@@56)
 :weight 0
)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@63 $generated@@64) (= ($generated@@45 $generated@@59 $generated@@60 ($generated@@51 $generated@@59 $generated@@60 $generated@@62 $generated@@63 $generated@@61) $generated@@64) ($generated@@45 $generated@@59 $generated@@60 $generated@@62 $generated@@64)))
 :weight 0
))) (= ($generated@@6 $generated@@46) 4)) (= ($generated@@6 $generated@@47) 5)) (= ($generated@@6 $generated@@48) 6)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (= ($generated@@6 ($generated@@49 $generated@@65 $generated@@66)) 7))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@52 ($generated@@49 $generated@@67 $generated@@68)) $generated@@67)
 :pattern ( ($generated@@49 $generated@@67 $generated@@68))
))) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (! (= ($generated@@53 ($generated@@49 $generated@@69 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@49 $generated@@69 $generated@@70))
))))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (!  (=> ($generated@@44 $generated@@71 $generated@@72) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@11 ($generated@@50 $generated@@7 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@71 $generated@@73) $generated@@1))) ($generated@@11 ($generated@@50 $generated@@7 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@72 $generated@@73) $generated@@1))))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@72 $generated@@73) $generated@@1))
)))
 :pattern ( ($generated@@44 $generated@@71 $generated@@72))
)))
(assert (forall (($generated@@75 Int) ) (! (= ($generated@@74 $generated@@75) $generated@@75)
 :pattern ( ($generated@@74 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@76 $generated@@78 $generated@@77) $generated@@77)
 :pattern ( ($generated@@76 $generated@@78 $generated@@77))
)))
(assert  (=> (<= 1 $generated@@79) (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 Int) ) (!  (=> (or ($generated@@82 ($generated@@76 $generated@@42 $generated@@85) ($generated@@74 $generated@@86)) (and (< 1 $generated@@79) ($generated@@41 $generated@@42 $generated@@85 $generated@@43))) (and (=> (not ($generated@@11 ($generated@@76 $generated@@7 ($generated@@10 ($generated@@83 ($generated@@76 $generated@@42 $generated@@85)))))) (let (($generated@@87 ($generated@@76 $generated@@42 ($generated@@36 ($generated@@76 $generated@@42 $generated@@85)))))
(let (($generated@@88 ($generated@@74 ($generated@@32 ($generated@@76 $generated@@42 $generated@@85)))))
(let (($generated@@89 ($generated@@76 $generated@@42 ($generated@@28 ($generated@@76 $generated@@42 $generated@@85)))))
 (=> (or (not (= $generated@@88 ($generated@@74 $generated@@86))) (not true)) (and ($generated@@82 $generated@@89 ($generated@@74 $generated@@86)) (=> (not ($generated@@80 ($generated@@81 $generated@@84) $generated@@89 ($generated@@74 $generated@@86))) ($generated@@82 $generated@@87 ($generated@@74 $generated@@86))))))))) (= ($generated@@80 ($generated@@81 $generated@@84) ($generated@@76 $generated@@42 $generated@@85) ($generated@@74 $generated@@86)) (ite ($generated@@83 ($generated@@76 $generated@@42 $generated@@85)) false (let (($generated@@90 ($generated@@76 $generated@@42 ($generated@@36 ($generated@@76 $generated@@42 $generated@@85)))))
(let (($generated@@91 ($generated@@74 ($generated@@32 ($generated@@76 $generated@@42 $generated@@85)))))
(let (($generated@@92 ($generated@@76 $generated@@42 ($generated@@28 ($generated@@76 $generated@@42 $generated@@85)))))
 (or (or (= $generated@@91 ($generated@@74 $generated@@86)) ($generated@@80 ($generated@@81 $generated@@84) $generated@@92 ($generated@@74 $generated@@86))) ($generated@@80 ($generated@@81 $generated@@84) $generated@@90 ($generated@@74 $generated@@86))))))))))
 :weight 3
 :pattern ( ($generated@@80 ($generated@@81 $generated@@84) ($generated@@76 $generated@@42 $generated@@85) ($generated@@74 $generated@@86)))
))))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@83 $generated@@93) (= ($generated@@24 $generated@@93) $generated@@3))
 :pattern ( ($generated@@83 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ) (! (= ($generated@@94 $generated@@95) (= ($generated@@24 $generated@@95) $generated@@4))
 :pattern ( ($generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@96 $generated@@98 ($generated@@50 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@50 $generated@@98 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ) (!  (=> ($generated@@94 $generated@@99) (exists (($generated@@100 T@U) ($generated@@101 Int) ($generated@@102 T@U) ) (= $generated@@99 ($generated@@23 $generated@@100 $generated@@101 $generated@@102))))
 :pattern ( ($generated@@94 $generated@@99))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@83 $generated@@103) (= $generated@@103 $generated@@40))
 :pattern ( ($generated@@83 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 Int) ) (! (= ($generated@@80 ($generated@@81 $generated@@104) $generated@@105 $generated@@106) ($generated@@80 $generated@@104 $generated@@105 $generated@@106))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@104) $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@T) ) (!  (=> ($generated@@44 $generated@@108 $generated@@109) (=> ($generated@@107 $generated@@112 $generated@@110 $generated@@111 $generated@@108) ($generated@@107 $generated@@112 $generated@@110 $generated@@111 $generated@@109)))
 :pattern ( ($generated@@44 $generated@@108 $generated@@109) ($generated@@107 $generated@@112 $generated@@110 $generated@@111 $generated@@108))
)))
(assert (forall (($generated@@114 T@U) ) (!  (=> ($generated@@113 $generated@@114) (or ($generated@@83 $generated@@114) ($generated@@94 $generated@@114)))
 :pattern ( ($generated@@113 $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@115 $generated@@43) (or ($generated@@83 $generated@@115) ($generated@@94 $generated@@115)))
 :pattern ( ($generated@@94 $generated@@115) ($generated@@41 $generated@@42 $generated@@115 $generated@@43))
 :pattern ( ($generated@@83 $generated@@115) ($generated@@41 $generated@@42 $generated@@115 $generated@@43))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (or (not (= $generated@@116 $generated@@118)) (not true)) (=> (and ($generated@@44 $generated@@116 $generated@@117) ($generated@@44 $generated@@117 $generated@@118)) ($generated@@44 $generated@@116 $generated@@118)))
 :pattern ( ($generated@@44 $generated@@116 $generated@@117) ($generated@@44 $generated@@117 $generated@@118))
)))
(assert  (=> (<= 1 $generated@@79) (forall (($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 Int) ) (!  (=> (or ($generated@@82 $generated@@120 $generated@@121) (and (< 1 $generated@@79) ($generated@@41 $generated@@42 $generated@@120 $generated@@43))) (and (=> (not ($generated@@83 $generated@@120)) (let (($generated@@122 ($generated@@36 $generated@@120)))
(let (($generated@@123 ($generated@@32 $generated@@120)))
(let (($generated@@124 ($generated@@28 $generated@@120)))
 (=> (or (not (= $generated@@123 $generated@@121)) (not true)) (and ($generated@@82 $generated@@124 $generated@@121) (=> (not ($generated@@80 $generated@@119 $generated@@124 $generated@@121)) ($generated@@82 $generated@@122 $generated@@121)))))))) (= ($generated@@80 ($generated@@81 $generated@@119) $generated@@120 $generated@@121) (ite ($generated@@83 $generated@@120) false (let (($generated@@125 ($generated@@36 $generated@@120)))
(let (($generated@@126 ($generated@@32 $generated@@120)))
(let (($generated@@127 ($generated@@28 $generated@@120)))
 (or (or (= $generated@@126 $generated@@121) ($generated@@80 $generated@@119 $generated@@127 $generated@@121)) ($generated@@80 $generated@@119 $generated@@125 $generated@@121)))))))))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@119) $generated@@120 $generated@@121))
))))
(assert (forall (($generated@@128 T@U) ($generated@@129 Int) ($generated@@130 T@U) ) (! (= ($generated@@23 ($generated@@76 $generated@@42 $generated@@128) ($generated@@74 $generated@@129) ($generated@@76 $generated@@42 $generated@@130)) ($generated@@76 $generated@@42 ($generated@@23 $generated@@128 $generated@@129 $generated@@130)))
 :pattern ( ($generated@@23 ($generated@@76 $generated@@42 $generated@@128) ($generated@@74 $generated@@129) ($generated@@76 $generated@@42 $generated@@130)))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@T) ) (! (= ($generated@@50 $generated@@132 ($generated@@96 $generated@@132 $generated@@131)) $generated@@131)
 :pattern ( ($generated@@96 $generated@@132 $generated@@131))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 Int) ($generated@@136 T@U) ) (! (< ($generated@@133 $generated@@134) ($generated@@133 ($generated@@23 $generated@@134 $generated@@135 $generated@@136)))
 :pattern ( ($generated@@23 $generated@@134 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 Int) ($generated@@139 T@U) ) (! (< ($generated@@133 $generated@@139) ($generated@@133 ($generated@@23 $generated@@137 $generated@@138 $generated@@139)))
 :pattern ( ($generated@@23 $generated@@137 $generated@@138 $generated@@139))
)))
(assert  (and (forall (($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@140 $generated@@143 $generated@@144 $generated@@145 ($generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@149 $generated@@146) $generated@@148 $generated@@149) $generated@@146)
 :weight 0
)) (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@140 $generated@@150 $generated@@151 $generated@@152 ($generated@@142 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@140 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)) (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@140 $generated@@159 $generated@@160 $generated@@161 ($generated@@142 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@140 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)))))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 Bool) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@11 ($generated@@140 $generated@@48 $generated@@46 $generated@@7 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))  (=> (and (or (not (= $generated@@172 $generated@@168)) (not true)) ($generated@@11 ($generated@@50 $generated@@7 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@169 $generated@@172) $generated@@170)))) $generated@@171))
 :pattern ( ($generated@@140 $generated@@48 $generated@@46 $generated@@7 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (and ($generated@@174 $generated@@176) (and ($generated@@94 $generated@@175) ($generated@@107 $generated@@42 $generated@@175 $generated@@43 $generated@@176))) ($generated@@107 $generated@@8 ($generated@@12 ($generated@@32 $generated@@175)) $generated $generated@@176))
 :pattern ( ($generated@@107 $generated@@8 ($generated@@12 ($generated@@32 $generated@@175)) $generated $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and ($generated@@174 $generated@@178) ($generated@@41 $generated@@42 $generated@@177 $generated@@43)) ($generated@@107 $generated@@42 $generated@@177 $generated@@43 $generated@@178))
 :pattern ( ($generated@@107 $generated@@42 $generated@@177 $generated@@43 $generated@@178))
)))
(assert (= ($generated@@22 $generated@@43) $generated@@2))
(assert (= ($generated@@179 $generated@@43) $generated@@5))
(assert (= $generated@@40 ($generated@@76 $generated@@42 $generated@@40)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> (and ($generated@@174 $generated@@181) (and ($generated@@94 $generated@@180) ($generated@@107 $generated@@42 $generated@@180 $generated@@43 $generated@@181))) ($generated@@107 $generated@@42 ($generated@@28 $generated@@180) $generated@@43 $generated@@181))
 :pattern ( ($generated@@107 $generated@@42 ($generated@@28 $generated@@180) $generated@@43 $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> (and ($generated@@174 $generated@@183) (and ($generated@@94 $generated@@182) ($generated@@107 $generated@@42 $generated@@182 $generated@@43 $generated@@183))) ($generated@@107 $generated@@42 ($generated@@36 $generated@@182) $generated@@43 $generated@@183))
 :pattern ( ($generated@@107 $generated@@42 ($generated@@36 $generated@@182) $generated@@43 $generated@@183))
)))
(assert (forall (($generated@@184 Int) ) (! (= ($generated@@96 $generated@@8 ($generated@@12 ($generated@@74 $generated@@184))) ($generated@@76 $generated@@47 ($generated@@96 $generated@@8 ($generated@@12 $generated@@184))))
 :pattern ( ($generated@@96 $generated@@8 ($generated@@12 ($generated@@74 $generated@@184))))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@T) ) (! (= ($generated@@96 $generated@@186 ($generated@@76 $generated@@186 $generated@@185)) ($generated@@76 $generated@@47 ($generated@@96 $generated@@186 $generated@@185)))
 :pattern ( ($generated@@96 $generated@@186 ($generated@@76 $generated@@186 $generated@@185)))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (! ($generated@@107 $generated@@8 $generated@@188 $generated $generated@@187)
 :pattern ( ($generated@@107 $generated@@8 $generated@@188 $generated $generated@@187))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 Int) ($generated@@191 T@U) ) (! (= ($generated@@41 $generated@@42 ($generated@@23 $generated@@189 $generated@@190 $generated@@191) $generated@@43)  (and (and ($generated@@41 $generated@@42 $generated@@189 $generated@@43) ($generated@@41 $generated@@8 ($generated@@12 $generated@@190) $generated)) ($generated@@41 $generated@@42 $generated@@191 $generated@@43)))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@23 $generated@@189 $generated@@190 $generated@@191) $generated@@43))
)))
(assert (forall (($generated@@192 T@U) ) (! ($generated@@41 $generated@@8 $generated@@192 $generated)
 :pattern ( ($generated@@41 $generated@@8 $generated@@192 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () Int)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () Int)
(declare-fun $generated@@198 () Int)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 (T@U) Bool)
(declare-fun $generated@@202 () Int)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () Int)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () Int)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () Int)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
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
 (=> (= (ControlFlow 0 0) 17) (let (($generated@@215  (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (= $generated@@193 $generated@@194) ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@196 $generated@@193))) (=> (or (= $generated@@193 $generated@@194) ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@196 $generated@@193)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= $generated@@194 $generated@@193)) (=> (<= $generated@@194 $generated@@193) (=> (= (ControlFlow 0 3) (- 0 2)) (forall (($generated@@216 Int) ) (!  (=> ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@196 $generated@@216) (<= $generated@@216 $generated@@193))
 :pattern ( ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@196 $generated@@216))
)))))))))
(let (($generated@@217  (=> (= $generated@@197 (ite (< $generated@@198 $generated@@194) $generated@@194 $generated@@198)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (or (or (<= 0 $generated@@194) (< ($generated@@133 $generated@@199) ($generated@@133 $generated@@196))) (= $generated@@197 $generated@@194))) (=> (or (or (<= 0 $generated@@194) (< ($generated@@133 $generated@@199) ($generated@@133 $generated@@196))) (= $generated@@197 $generated@@194)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (< ($generated@@133 $generated@@199) ($generated@@133 $generated@@196)) (and (= ($generated@@133 $generated@@199) ($generated@@133 $generated@@196)) (< $generated@@197 $generated@@194)))) (=> (or (< ($generated@@133 $generated@@199) ($generated@@133 $generated@@196)) (and (= ($generated@@133 $generated@@199) ($generated@@133 $generated@@196)) (< $generated@@197 $generated@@194))) (=> (and (and (and (and ($generated@@174 $generated@@200) ($generated@@201 $generated@@200)) (=> (or (not (= $generated@@202 $generated@@197)) (not true)) ($generated@@82 $generated@@199 $generated@@202))) (and (or (= $generated@@202 $generated@@197) ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@199 $generated@@202)) (=> (<= $generated@@197 $generated@@202) (forall (($generated@@218 Int) ) (! ($generated@@82 $generated@@199 $generated@@218)
 :pattern ( ($generated@@80 ($generated@@81 $generated@@195) $generated@@199 $generated@@218))
))))) (and (and (<= $generated@@197 $generated@@202) (forall (($generated@@219 Int) ) (!  (=> ($generated@@80 ($generated@@81 $generated@@195) $generated@@199 $generated@@219) (<= $generated@@219 $generated@@202))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@195) $generated@@199 $generated@@219))
))) (and (forall (($generated@@220 T@U) ) (!  (=> (and (or (not (= $generated@@220 $generated@@203)) (not true)) ($generated@@11 ($generated@@50 $generated@@7 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@204 $generated@@220) $generated@@1)))) (= ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@200 $generated@@220) ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@204 $generated@@220)))
 :pattern ( ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@200 $generated@@220))
)) ($generated@@44 $generated@@204 $generated@@200)))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (or (<= 0 $generated@@194) (< ($generated@@133 $generated@@205) ($generated@@133 $generated@@196))) (= $generated@@202 $generated@@194))) (=> (or (or (<= 0 $generated@@194) (< ($generated@@133 $generated@@205) ($generated@@133 $generated@@196))) (= $generated@@202 $generated@@194)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< ($generated@@133 $generated@@205) ($generated@@133 $generated@@196)) (and (= ($generated@@133 $generated@@205) ($generated@@133 $generated@@196)) (< $generated@@202 $generated@@194)))) (=> (or (< ($generated@@133 $generated@@205) ($generated@@133 $generated@@196)) (and (= ($generated@@133 $generated@@205) ($generated@@133 $generated@@196)) (< $generated@@202 $generated@@194))) (=> (and (and ($generated@@174 $generated@@206) ($generated@@201 $generated@@206)) (=> (or (not (= $generated@@207 $generated@@202)) (not true)) ($generated@@82 $generated@@205 $generated@@207))) (=> (and (and (and (or (= $generated@@207 $generated@@202) ($generated@@80 ($generated@@81 ($generated@@81 $generated@@195)) $generated@@205 $generated@@207)) (=> (<= $generated@@202 $generated@@207) (forall (($generated@@221 Int) ) (! ($generated@@82 $generated@@205 $generated@@221)
 :pattern ( ($generated@@80 ($generated@@81 $generated@@195) $generated@@205 $generated@@221))
)))) (and (<= $generated@@202 $generated@@207) (forall (($generated@@222 Int) ) (!  (=> ($generated@@80 ($generated@@81 $generated@@195) $generated@@205 $generated@@222) (<= $generated@@222 $generated@@207))
 :pattern ( ($generated@@80 ($generated@@81 $generated@@195) $generated@@205 $generated@@222))
)))) (and (and (forall (($generated@@223 T@U) ) (!  (=> (and (or (not (= $generated@@223 $generated@@203)) (not true)) ($generated@@11 ($generated@@50 $generated@@7 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@200 $generated@@223) $generated@@1)))) (= ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@206 $generated@@223) ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@200 $generated@@223)))
 :pattern ( ($generated@@45 $generated@@48 ($generated@@49 $generated@@46 $generated@@47) $generated@@206 $generated@@223))
)) ($generated@@44 $generated@@200 $generated@@206)) (and (= $generated@@193 $generated@@207) (= (ControlFlow 0 7) 3)))) $generated@@215))))))))))))))
(let (($generated@@224  (=> (and (<= $generated@@194 $generated@@198) (= (ControlFlow 0 13) 7)) $generated@@217)))
(let (($generated@@225  (=> (and (< $generated@@198 $generated@@194) (= (ControlFlow 0 12) 7)) $generated@@217)))
(let (($generated@@226  (=> (= $generated@@196 ($generated@@23 $generated@@208 $generated@@209 $generated@@210)) (=> (and (and ($generated@@41 $generated@@42 $generated@@208 $generated@@43) ($generated@@107 $generated@@42 $generated@@208 $generated@@43 $generated@@204)) (and ($generated@@41 $generated@@42 $generated@@210 $generated@@43) ($generated@@107 $generated@@42 $generated@@210 $generated@@43 $generated@@204))) (=> (and (and (and (and ($generated@@41 $generated@@42 $generated@@199 $generated@@43) ($generated@@107 $generated@@42 $generated@@199 $generated@@43 $generated@@204)) (and (= $generated@@211 $generated@@210) ($generated@@41 $generated@@42 $generated@@211 $generated@@43))) (and (and (= $generated@@199 $generated@@211) (= $generated@@212 $generated@@209)) (and ($generated@@41 $generated@@8 ($generated@@12 $generated@@212) $generated) (= $generated@@198 $generated@@212)))) (and (and (and ($generated@@41 $generated@@42 $generated@@205 $generated@@43) ($generated@@107 $generated@@42 $generated@@205 $generated@@43 $generated@@204)) (= $generated@@213 $generated@@208)) (and ($generated@@41 $generated@@42 $generated@@213 $generated@@43) (= $generated@@205 $generated@@213)))) (and (=> (= (ControlFlow 0 14) 12) $generated@@225) (=> (= (ControlFlow 0 14) 13) $generated@@224)))))))
(let (($generated@@227  (=> (= $generated@@196 $generated@@40) (=> (and (= $generated@@193 $generated@@194) (= (ControlFlow 0 6) 3)) $generated@@215))))
(let (($generated@@228 true))
(let (($generated@@229  (=> (or (not (= $generated@@196 $generated@@40)) (not true)) (and (=> (= (ControlFlow 0 15) 14) $generated@@226) (=> (= (ControlFlow 0 15) 1) $generated@@228)))))
(let (($generated@@230  (=> (= $generated@@214 ($generated@@141 $generated@@203 $generated@@204 $generated@@1 false)) (and (=> (= (ControlFlow 0 16) 6) $generated@@227) (=> (= (ControlFlow 0 16) 15) $generated@@229)))))
(let (($generated@@231  (=> (and ($generated@@174 $generated@@204) ($generated@@201 $generated@@204)) (=> (and (and (and ($generated@@41 $generated@@42 $generated@@196 $generated@@43) ($generated@@107 $generated@@42 $generated@@196 $generated@@43 $generated@@204)) ($generated@@113 $generated@@196)) (and (= 2 $generated@@79) (= (ControlFlow 0 17) 16))) $generated@@230))))
$generated@@231)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid