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
(declare-fun $generated@@20 () Int)
(declare-fun $generated@@21 (T@U T@U) T@U)
(declare-fun $generated@@22 (T@T T@U) T@U)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U T@U) Bool)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@34 (T@U T@U Int) T@U)
(declare-fun $generated@@35 (Int) Int)
(declare-fun $generated@@36 (T@U T@U Int) Bool)
(declare-fun $generated@@37 (T@U Int) T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@45 (T@U) Int)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@67 (T@U T@U T@U) Bool)
(declare-fun $generated@@68 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@79 (Bool) Bool)
(declare-fun $generated@@80 (Bool) Bool)
(declare-fun $generated@@82 (T@T T@U T@U) Bool)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@98 () T@T)
(declare-fun $generated@@99 () T@T)
(declare-fun $generated@@100 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@101 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@102 (T@T T@T) T@T)
(declare-fun $generated@@103 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 (T@T) T@T)
(declare-fun $generated@@106 (T@T) T@T)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@162 (T@U) Bool)
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
(assert (= ($generated@@4 $generated@@23) 3))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (!  (=> (or ($generated@@24 $generated@@26 ($generated@@22 $generated@@23 $generated@@27)) (and (< 0 $generated@@20) ($generated@@25 $generated@@27 $generated@@26))) (= ($generated@@21 $generated@@26 ($generated@@22 $generated@@23 $generated@@27)) ($generated@@22 $generated@@23 $generated@@27)))
 :weight 3
 :pattern ( ($generated@@21 $generated@@26 ($generated@@22 $generated@@23 $generated@@27)))
))))
(assert (= ($generated@@28 $generated) $generated@@1))
(assert (= ($generated@@28 $generated@@0) $generated@@2))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> (or ($generated@@30 $generated@@31 $generated@@32) (and (< 0 $generated@@20) ($generated@@25 $generated@@32 $generated@@31))) (= ($generated@@29 $generated@@31 $generated@@32) (let (($generated@@33 $generated@@32))
$generated@@33)))
 :pattern ( ($generated@@29 $generated@@31 $generated@@32))
))))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 Int) ) (!  (=> (or ($generated@@36 $generated@@40 $generated@@41 ($generated@@35 $generated@@42)) (and (< 1 $generated@@20) ($generated@@25 $generated@@41 $generated@@40))) (and (let (($generated@@43 $generated@@41))
 (=> (= ($generated@@35 $generated@@42) ($generated@@35 80)) ($generated@@24 $generated@@40 $generated@@43))) (= ($generated@@34 $generated@@40 $generated@@41 ($generated@@35 $generated@@42)) (let (($generated@@44 $generated@@41))
(ite (= ($generated@@35 $generated@@42) ($generated@@35 80)) ($generated@@21 $generated@@40 $generated@@44) ($generated@@37 ($generated@@38 $generated@@39 $generated@@44) ($generated@@35 0)))))))
 :weight 3
 :pattern ( ($generated@@34 $generated@@40 $generated@@41 ($generated@@35 $generated@@42)))
))))
(assert (= ($generated@@45 $generated@@39) 0))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> (or ($generated@@24 $generated@@46 $generated@@47) (and (< 0 $generated@@20) ($generated@@25 $generated@@47 $generated@@46))) ($generated@@25 ($generated@@21 $generated@@46 $generated@@47) $generated@@46))
 :pattern ( ($generated@@21 $generated@@46 $generated@@47))
))))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (or ($generated@@30 $generated@@48 $generated@@49) (and (< 0 $generated@@20) ($generated@@25 $generated@@49 $generated@@48))) ($generated@@25 ($generated@@29 $generated@@48 $generated@@49) $generated@@48))
 :pattern ( ($generated@@29 $generated@@48 $generated@@49))
))))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 Int) ) (!  (=> (or ($generated@@36 $generated@@50 $generated@@51 $generated@@52) (and (< 1 $generated@@20) ($generated@@25 $generated@@51 $generated@@50))) (and (let (($generated@@53 $generated@@51))
 (=> (= $generated@@52 ($generated@@35 80)) ($generated@@24 $generated@@50 $generated@@53))) (= ($generated@@34 $generated@@50 $generated@@51 $generated@@52) (let (($generated@@54 $generated@@51))
(ite (= $generated@@52 ($generated@@35 80)) ($generated@@21 $generated@@50 $generated@@54) ($generated@@37 ($generated@@38 $generated@@39 $generated@@54) ($generated@@35 0)))))))
 :pattern ( ($generated@@34 $generated@@50 $generated@@51 $generated@@52))
))))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (!  (=> (or ($generated@@30 $generated@@55 ($generated@@22 $generated@@23 $generated@@56)) (and (< 0 $generated@@20) ($generated@@25 $generated@@56 $generated@@55))) (= ($generated@@29 $generated@@55 ($generated@@22 $generated@@23 $generated@@56)) (let (($generated@@57 ($generated@@22 $generated@@23 $generated@@56)))
$generated@@57)))
 :weight 3
 :pattern ( ($generated@@29 $generated@@55 ($generated@@22 $generated@@23 $generated@@56)))
))))
(assert (forall (($generated@@58 Int) ) (! (= ($generated@@35 $generated@@58) $generated@@58)
 :pattern ( ($generated@@35 $generated@@58))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@22 $generated@@60 $generated@@59) $generated@@59)
 :pattern ( ($generated@@22 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@62 $generated@@64 ($generated@@61 $generated@@64 $generated@@63)) $generated@@63)
 :pattern ( ($generated@@61 $generated@@64 $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@45 ($generated@@38 $generated@@65 $generated@@66)) (+ 1 ($generated@@45 $generated@@65)))
 :pattern ( ($generated@@38 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@T) ) (! (= ($generated@@67 ($generated@@62 $generated@@72 $generated@@69) $generated@@70 $generated@@71) ($generated@@68 $generated@@72 $generated@@69 $generated@@70 $generated@@71))
 :pattern ( ($generated@@67 ($generated@@62 $generated@@72 $generated@@69) $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 Int) ($generated@@75 T@U) ) (!  (and (=> (= $generated@@74 ($generated@@45 $generated@@73)) (= ($generated@@37 ($generated@@38 $generated@@73 $generated@@75) $generated@@74) $generated@@75)) (=> (or (not (= $generated@@74 ($generated@@45 $generated@@73))) (not true)) (= ($generated@@37 ($generated@@38 $generated@@73 $generated@@75) $generated@@74) ($generated@@37 $generated@@73 $generated@@74))))
 :pattern ( ($generated@@37 ($generated@@38 $generated@@73 $generated@@75) $generated@@74))
)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 Int) ) (!  (=> (or ($generated@@36 $generated@@76 $generated@@77 $generated@@78) (and (< 1 $generated@@20) ($generated@@25 $generated@@77 $generated@@76))) ($generated@@25 ($generated@@34 $generated@@76 $generated@@77 $generated@@78) $generated@@76))
 :pattern ( ($generated@@34 $generated@@76 $generated@@77 $generated@@78))
))))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@81 Bool) ) (!  (=> (or ($generated@@80 $generated@@81) (< 0 $generated@@20)) (= ($generated@@79 $generated@@81) $generated@@81))
 :pattern ( ($generated@@79 $generated@@81))
))))
(assert (forall (($generated@@83 T@U) ) (!  (=> ($generated@@25 $generated@@83 $generated@@0) (and (= ($generated@@62 $generated@@6 ($generated@@61 $generated@@6 $generated@@83)) $generated@@83) ($generated@@82 $generated@@6 ($generated@@61 $generated@@6 $generated@@83) $generated@@0)))
 :pattern ( ($generated@@25 $generated@@83 $generated@@0))
)))
(assert (forall (($generated@@84 T@U) ) (!  (=> ($generated@@25 $generated@@84 $generated) (and (= ($generated@@62 $generated@@5 ($generated@@61 $generated@@5 $generated@@84)) $generated@@84) ($generated@@82 $generated@@5 ($generated@@61 $generated@@5 $generated@@84) $generated)))
 :pattern ( ($generated@@25 $generated@@84 $generated))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@25 ($generated@@62 $generated@@87 $generated@@85) $generated@@86) ($generated@@82 $generated@@87 $generated@@85 $generated@@86))
 :pattern ( ($generated@@25 ($generated@@62 $generated@@87 $generated@@85) $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (! (<= 0 ($generated@@45 $generated@@88))
 :pattern ( ($generated@@45 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@61 $generated@@90 ($generated@@62 $generated@@90 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@62 $generated@@90 $generated@@89))
)))
(assert (= ($generated@@4 $generated@@91) 4))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 Int) ) (!  (=> (or ($generated@@36 $generated@@92 ($generated@@22 $generated@@23 $generated@@93) ($generated@@35 $generated@@94)) (and (< 1 $generated@@20) ($generated@@25 $generated@@93 $generated@@92))) (and (let (($generated@@95 ($generated@@22 $generated@@23 $generated@@93)))
 (=> (= ($generated@@35 $generated@@94) ($generated@@35 80)) ($generated@@24 $generated@@92 $generated@@95))) (= ($generated@@34 $generated@@92 ($generated@@22 $generated@@23 $generated@@93) ($generated@@35 $generated@@94)) (let (($generated@@96 ($generated@@22 $generated@@23 $generated@@93)))
(ite (= ($generated@@35 $generated@@94) ($generated@@35 80)) ($generated@@21 $generated@@92 $generated@@96) ($generated@@37 ($generated@@22 $generated@@91 ($generated@@38 $generated@@39 $generated@@96)) ($generated@@35 0)))))))
 :weight 3
 :pattern ( ($generated@@34 $generated@@92 ($generated@@22 $generated@@23 $generated@@93) ($generated@@35 $generated@@94)))
))))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@97 $generated@@107 $generated@@108 $generated@@109 ($generated@@103 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@112 $generated@@113) $generated@@110)
 :weight 0
)) (and (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@97 $generated@@114 $generated@@115 $generated@@116 ($generated@@103 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@97 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)) (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@97 $generated@@123 $generated@@124 $generated@@125 ($generated@@103 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@130 $generated@@131) ($generated@@97 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@130 $generated@@131)))
 :weight 0
)))) (= ($generated@@4 $generated@@98) 5)) (= ($generated@@4 $generated@@99) 6)) (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@101 $generated@@132 $generated@@133 ($generated@@104 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@134) $generated@@136) $generated@@134)
 :weight 0
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (or (= $generated@@141 $generated@@142) (= ($generated@@101 $generated@@137 $generated@@138 ($generated@@104 $generated@@137 $generated@@138 $generated@@140 $generated@@141 $generated@@139) $generated@@142) ($generated@@101 $generated@@137 $generated@@138 $generated@@140 $generated@@142)))
 :weight 0
))) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (= ($generated@@4 ($generated@@102 $generated@@143 $generated@@144)) 7))) (forall (($generated@@145 T@T) ($generated@@146 T@T) ) (! (= ($generated@@105 ($generated@@102 $generated@@145 $generated@@146)) $generated@@145)
 :pattern ( ($generated@@102 $generated@@145 $generated@@146))
))) (forall (($generated@@147 T@T) ($generated@@148 T@T) ) (! (= ($generated@@106 ($generated@@102 $generated@@147 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@102 $generated@@147 $generated@@148))
))))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 Bool) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@9 ($generated@@97 $generated@@98 $generated@@99 $generated@@5 ($generated@@100 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))  (=> (and (or (not (= $generated@@153 $generated@@149)) (not true)) ($generated@@9 ($generated@@61 $generated@@5 ($generated@@101 $generated@@99 $generated@@23 ($generated@@101 $generated@@98 ($generated@@102 $generated@@99 $generated@@23) $generated@@150 $generated@@153) $generated@@151)))) $generated@@152))
 :pattern ( ($generated@@97 $generated@@98 $generated@@99 $generated@@5 ($generated@@100 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (!  (=> (or ($generated@@24 $generated@@155 $generated@@156) (and (< 0 $generated@@20) ($generated@@25 $generated@@156 $generated@@155))) (= ($generated@@21 $generated@@155 $generated@@156) $generated@@156))
 :pattern ( ($generated@@21 $generated@@155 $generated@@156))
))))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@157 T@U) ) (!  (=> (or ($generated@@80 ($generated@@9 ($generated@@22 $generated@@5 $generated@@157))) (< 0 $generated@@20)) (= ($generated@@79 ($generated@@9 ($generated@@22 $generated@@5 $generated@@157))) ($generated@@9 ($generated@@22 $generated@@5 $generated@@157))))
 :weight 3
 :pattern ( ($generated@@79 ($generated@@9 ($generated@@22 $generated@@5 $generated@@157))))
))))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (!  (and (= ($generated@@158 ($generated@@38 $generated@@160 $generated@@161)) $generated@@160) (= ($generated@@159 ($generated@@38 $generated@@160 $generated@@161)) $generated@@161))
 :pattern ( ($generated@@38 $generated@@160 $generated@@161))
)))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and (or ($generated@@24 $generated@@164 $generated@@165) (and (< 0 $generated@@20) (and ($generated@@25 $generated@@165 $generated@@164) ($generated@@67 $generated@@165 $generated@@164 $generated@@163)))) ($generated@@162 $generated@@163)) ($generated@@67 ($generated@@21 $generated@@164 $generated@@165) $generated@@164 $generated@@163))
 :pattern ( ($generated@@67 ($generated@@21 $generated@@164 $generated@@165) $generated@@164 $generated@@163))
))))
(assert  (=> (<= 0 $generated@@20) (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> (and (or ($generated@@30 $generated@@167 $generated@@168) (and (< 0 $generated@@20) (and ($generated@@25 $generated@@168 $generated@@167) ($generated@@67 $generated@@168 $generated@@167 $generated@@166)))) ($generated@@162 $generated@@166)) ($generated@@67 ($generated@@29 $generated@@167 $generated@@168) $generated@@167 $generated@@166))
 :pattern ( ($generated@@67 ($generated@@29 $generated@@167 $generated@@168) $generated@@167 $generated@@166))
))))
(assert (forall (($generated@@169 Int) ) (! (= ($generated@@62 $generated@@6 ($generated@@10 ($generated@@35 $generated@@169))) ($generated@@22 $generated@@23 ($generated@@62 $generated@@6 ($generated@@10 $generated@@169))))
 :pattern ( ($generated@@62 $generated@@6 ($generated@@10 ($generated@@35 $generated@@169))))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@62 $generated@@171 ($generated@@22 $generated@@171 $generated@@170)) ($generated@@22 $generated@@23 ($generated@@62 $generated@@171 $generated@@170)))
 :pattern ( ($generated@@62 $generated@@171 ($generated@@22 $generated@@171 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ) (!  (=> (= ($generated@@45 $generated@@172) 0) (= $generated@@172 $generated@@39))
 :pattern ( ($generated@@45 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! ($generated@@68 $generated@@6 $generated@@174 $generated@@0 $generated@@173)
 :pattern ( ($generated@@68 $generated@@6 $generated@@174 $generated@@0 $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! ($generated@@68 $generated@@5 $generated@@176 $generated $generated@@175)
 :pattern ( ($generated@@68 $generated@@5 $generated@@176 $generated $generated@@175))
)))
(assert (forall (($generated@@177 T@U) ) (! ($generated@@82 $generated@@6 $generated@@177 $generated@@0)
 :pattern ( ($generated@@82 $generated@@6 $generated@@177 $generated@@0))
)))
(assert (forall (($generated@@178 T@U) ) (! ($generated@@82 $generated@@5 $generated@@178 $generated)
 :pattern ( ($generated@@82 $generated@@5 $generated@@178 $generated))
)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 Int) ) (!  (=> (and (or ($generated@@36 $generated@@180 $generated@@181 $generated@@182) (and (< 1 $generated@@20) (and ($generated@@25 $generated@@181 $generated@@180) ($generated@@67 $generated@@181 $generated@@180 $generated@@179)))) ($generated@@162 $generated@@179)) ($generated@@67 ($generated@@34 $generated@@180 $generated@@181 $generated@@182) $generated@@180 $generated@@179))
 :pattern ( ($generated@@67 ($generated@@34 $generated@@180 $generated@@181 $generated@@182) $generated@@180 $generated@@179))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@183 () Bool)
(declare-fun $generated@@184 () Int)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () Int)
(declare-fun $generated@@187 () Bool)
(declare-fun $generated@@188 () Int)
(declare-fun $generated@@189 () Bool)
(declare-fun $generated@@190 () Bool)
(declare-fun $generated@@191 () Bool)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 (T@U) T@U)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 30) (let (($generated@@200  (=> (and (= $generated@@183 (<= (+ $generated@@184 1) $generated@@184)) ($generated@@68 $generated@@5 ($generated@@8 $generated@@183) $generated $generated@@185)) (=> (and (and (= $generated@@186 ($generated@@35 81)) ($generated@@68 $generated@@6 ($generated@@10 $generated@@186) $generated@@0 $generated@@185)) (and ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)) ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@34 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)))) (let (($generated@@201 (<= (+ $generated@@184 1) $generated@@184)))
 (=> (= ($generated@@35 81) ($generated@@35 80)) (=> ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8 $generated@@201))) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@8 $generated@@201))))) $generated@@201))))))) (=> (= (ControlFlow 0 23) (- 0 22)) (=> ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@34 $generated ($generated@@62 $generated@@5 ($generated@@8 (<= (+ $generated@@184 1) $generated@@184))) ($generated@@35 81)))) (let (($generated@@202 (<= (+ $generated@@184 1) $generated@@184)))
 (=> (or (not (= ($generated@@35 81) ($generated@@35 80))) (not true)) ($generated@@9 ($generated@@61 $generated@@5 ($generated@@37 ($generated@@38 $generated@@39 ($generated@@62 $generated@@5 ($generated@@8 $generated@@202))) ($generated@@35 0))))))))))))))
(let (($generated@@203  (=> (= (ControlFlow 0 25) 23) $generated@@200)))
(let (($generated@@204  (=> (and (= $generated@@187 (< $generated@@184 $generated@@184)) ($generated@@68 $generated@@5 ($generated@@8 $generated@@187) $generated $generated@@185)) (=> (and (and (= $generated@@188 ($generated@@35 80)) ($generated@@68 $generated@@6 ($generated@@10 $generated@@188) $generated@@0 $generated@@185)) (and ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)) ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@34 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)))) (let (($generated@@205 (< $generated@@184 $generated@@184)))
 (=> (= ($generated@@35 80) ($generated@@35 80)) (=> ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8 $generated@@205))) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@8 $generated@@205))))) $generated@@205))))))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> ($generated@@36 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@34 $generated ($generated@@62 $generated@@5 ($generated@@8 (< $generated@@184 $generated@@184))) ($generated@@35 80)))) (let (($generated@@206 (< $generated@@184 $generated@@184)))
 (=> (or (not (= ($generated@@35 80) ($generated@@35 80))) (not true)) ($generated@@9 ($generated@@61 $generated@@5 ($generated@@37 ($generated@@38 $generated@@39 ($generated@@62 $generated@@5 ($generated@@8 $generated@@206))) ($generated@@35 0))))))))))))))
(let (($generated@@207  (and (=> (= (ControlFlow 0 26) 20) $generated@@204) (=> (= (ControlFlow 0 26) 25) $generated@@203))))
(let (($generated@@208  (=> (= $generated@@189 ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 false)))) (=> (and ($generated@@68 $generated@@5 ($generated@@8 $generated@@189) $generated $generated@@185) ($generated@@30 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 false))))) (=> (and (and ($generated@@30 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 false)))) (= (ControlFlow 0 18) (- 0 17))) ($generated@@30 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 false))))) (or ($generated@@9 ($generated@@22 $generated@@5 ($generated@@61 $generated@@5 ($generated@@29 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 false))))))) (let (($generated@@209 ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 false)))))
$generated@@209)))))))
(let (($generated@@210  (and (=> (= (ControlFlow 0 27) 18) $generated@@208) (=> (= (ControlFlow 0 27) 26) $generated@@207))))
(let (($generated@@211  (=> (and (and (= $generated@@190  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) ($generated@@68 $generated@@5 ($generated@@8 $generated@@190) $generated $generated@@185)) (and ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))) ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))))) ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3))))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))))) (< $generated@@184 $generated@@184)))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))) (or ($generated@@9 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@8  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))))) (< $generated@@184 (+ $generated@@184 1))))))))))
(let (($generated@@212  (=> (and (not (and (< 2 3) (< $generated@@184 $generated@@184))) (= (ControlFlow 0 14) 10)) $generated@@211)))
(let (($generated@@213  (=> (and (and (< 2 3) (< $generated@@184 $generated@@184)) (= (ControlFlow 0 13) 10)) $generated@@211)))
(let (($generated@@214  (=> (not ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3))))) (and (=> (= (ControlFlow 0 16) 13) $generated@@213) (=> (= (ControlFlow 0 16) 14) $generated@@212)))))
(let (($generated@@215  (=> ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3)))) (and (=> (= (ControlFlow 0 15) 13) $generated@@213) (=> (= (ControlFlow 0 15) 14) $generated@@212)))))
(let (($generated@@216  (and (and (=> (= (ControlFlow 0 28) 27) $generated@@210) (=> (= (ControlFlow 0 28) 15) $generated@@215)) (=> (= (ControlFlow 0 28) 16) $generated@@214))))
(let (($generated@@217  (=> (and (and (= $generated@@191  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) ($generated@@68 $generated@@5 ($generated@@8 $generated@@191) $generated $generated@@185)) (and ($generated@@80  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) ($generated@@80  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@80  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) (or ($generated@@79  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@80  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) (or ($generated@@79  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) (< $generated@@184 $generated@@184)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@80  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) (or ($generated@@79  (and (and (< 2 3) (< $generated@@184 $generated@@184)) (< $generated@@184 (+ $generated@@184 1)))) (< $generated@@184 (+ $generated@@184 1))))))))))
(let (($generated@@218  (=> (and (not (and (< 2 3) (< $generated@@184 $generated@@184))) (= (ControlFlow 0 6) 2)) $generated@@217)))
(let (($generated@@219  (=> (and (and (< 2 3) (< $generated@@184 $generated@@184)) (= (ControlFlow 0 5) 2)) $generated@@217)))
(let (($generated@@220  (=> (not ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3))))) (and (=> (= (ControlFlow 0 8) 5) $generated@@219) (=> (= (ControlFlow 0 8) 6) $generated@@218)))))
(let (($generated@@221  (=> ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 (< 2 3)))) (and (=> (= (ControlFlow 0 7) 5) $generated@@219) (=> (= (ControlFlow 0 7) 6) $generated@@218)))))
(let (($generated@@222  (=> (and (and (= $generated@@192 ($generated@@193 $generated@@194)) (= $generated@@195 ($generated@@193 ($generated@@193 $generated@@194)))) (and (= ($generated@@196 $generated@@194) $generated@@194) (= $generated@@197 ($generated@@100 $generated@@198 $generated@@185 $generated@@3 false)))) (and (and (=> (= (ControlFlow 0 29) 28) $generated@@216) (=> (= (ControlFlow 0 29) 7) $generated@@221)) (=> (= (ControlFlow 0 29) 8) $generated@@220)))))
(let (($generated@@223  (=> (and (and (and ($generated@@162 $generated@@185) ($generated@@199 $generated@@185)) (= 2 $generated@@20)) (and (and ($generated@@24 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 true)))) (and ($generated@@9 ($generated@@22 $generated@@5 ($generated@@61 $generated@@5 ($generated@@21 $generated ($generated@@62 $generated@@5 ($generated@@22 $generated@@5 ($generated@@8 true))))))) ($generated@@9 ($generated@@22 $generated@@5 ($generated@@8 true))))) (= (ControlFlow 0 30) 29))) $generated@@222)))
$generated@@223))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 17))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 21))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 23) (- 22))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)