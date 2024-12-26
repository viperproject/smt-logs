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
(declare-fun $generated@@22 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@26 (T@U T@U T@U) Int)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@40 (Int) Int)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@61 () Int)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@63 (T@U) T@U)
(declare-fun $generated@@71 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@101 (T@U) Int)
(declare-fun $generated@@102 (T@U) Int)
(declare-fun $generated@@110 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@112 () T@T)
(declare-fun $generated@@113 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@114 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@115 () T@T)
(declare-fun $generated@@116 (T@T T@T) T@T)
(declare-fun $generated@@117 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@118 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@T) T@T)
(declare-fun $generated@@120 (T@T) T@T)
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
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! ($generated@@22 $generated@@8 $generated@@24 $generated@@23 $generated@@25)
 :pattern ( ($generated@@22 $generated@@8 $generated@@24 $generated@@23 $generated@@25))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (! (= ($generated@@26 $generated@@28 ($generated@@27 $generated@@29) $generated@@30) ($generated@@26 $generated@@28 $generated@@29 $generated@@30))
 :pattern ( ($generated@@26 $generated@@28 ($generated@@27 $generated@@29) $generated@@30))
)))
(assert (= ($generated@@31 $generated@@32) $generated@@2))
(assert (= ($generated@@6 $generated@@33) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> ($generated@@35 $generated@@37) ($generated@@22 $generated@@33 $generated@@32 ($generated@@34 $generated@@36) $generated@@37))
 :pattern ( ($generated@@22 $generated@@33 $generated@@32 ($generated@@34 $generated@@36) $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ) (! ($generated@@38 $generated@@33 $generated@@32 ($generated@@34 $generated@@39))
 :pattern ( ($generated@@38 $generated@@33 $generated@@32 ($generated@@34 $generated@@39)))
)))
(assert (forall (($generated@@41 Int) ) (! (= ($generated@@40 $generated@@41) $generated@@41)
 :pattern ( ($generated@@40 $generated@@41))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@T) ) (! (= ($generated@@42 $generated@@44 $generated@@43) $generated@@43)
 :pattern ( ($generated@@42 $generated@@44 $generated@@43))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@38 $generated@@33 ($generated@@45 $generated@@48 $generated@@49) ($generated@@34 $generated@@47))  (and ($generated@@46 $generated@@48 $generated@@47) ($generated@@38 $generated@@33 $generated@@49 ($generated@@34 $generated@@47))))
 :pattern ( ($generated@@38 $generated@@33 ($generated@@45 $generated@@48 $generated@@49) ($generated@@34 $generated@@47)))
)))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@50 $generated@@51) (= ($generated@@31 $generated@@51) $generated@@2))
 :pattern ( ($generated@@50 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ) (! (= ($generated@@52 $generated@@53) (= ($generated@@31 $generated@@53) $generated@@3))
 :pattern ( ($generated@@52 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 ($generated@@54 $generated@@57 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@54 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (!  (=> ($generated@@52 $generated@@58) (exists (($generated@@59 T@U) ($generated@@60 T@U) ) (= $generated@@58 ($generated@@45 $generated@@59 $generated@@60))))
 :pattern ( ($generated@@52 $generated@@58))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> (or ($generated@@62 $generated@@64 $generated@@66) (and (< 1 $generated@@61) ($generated@@38 $generated@@33 $generated@@66 ($generated@@34 $generated@@64)))) (and (=> (not ($generated@@50 $generated@@66)) (let (($generated@@67 ($generated@@63 $generated@@66)))
($generated@@62 $generated@@64 $generated@@67))) (= ($generated@@26 $generated@@64 ($generated@@27 $generated@@65) $generated@@66) (ite ($generated@@50 $generated@@66) 0 (let (($generated@@68 ($generated@@63 $generated@@66)))
(+ ($generated@@26 $generated@@64 $generated@@65 $generated@@68) 1))))))
 :pattern ( ($generated@@26 $generated@@64 ($generated@@27 $generated@@65) $generated@@66))
))))
(assert (forall (($generated@@69 T@U) ) (!  (=> ($generated@@50 $generated@@69) (= $generated@@69 $generated@@32))
 :pattern ( ($generated@@50 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@38 $generated@@8 $generated@@70 $generated@@23) (<= ($generated@@40 0) ($generated@@13 $generated@@70)))
 :pattern ( ($generated@@38 $generated@@8 $generated@@70 $generated@@23))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@71 ($generated@@55 $generated@@75 $generated@@72) $generated@@73 $generated@@74) ($generated@@22 $generated@@75 $generated@@72 $generated@@73 $generated@@74))
 :pattern ( ($generated@@71 ($generated@@55 $generated@@75 $generated@@72) $generated@@73 $generated@@74))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> (or ($generated@@62 $generated@@76 ($generated@@42 $generated@@33 $generated@@78)) (and (< 1 $generated@@61) ($generated@@38 $generated@@33 $generated@@78 ($generated@@34 $generated@@76)))) (and (=> (not ($generated@@11 ($generated@@42 $generated@@7 ($generated@@10 ($generated@@50 ($generated@@42 $generated@@33 $generated@@78)))))) (let (($generated@@79 ($generated@@42 $generated@@33 ($generated@@63 ($generated@@42 $generated@@33 $generated@@78)))))
($generated@@62 $generated@@76 $generated@@79))) (= ($generated@@26 $generated@@76 ($generated@@27 $generated@@77) ($generated@@42 $generated@@33 $generated@@78)) (ite ($generated@@50 ($generated@@42 $generated@@33 $generated@@78)) 0 (let (($generated@@80 ($generated@@42 $generated@@33 ($generated@@63 ($generated@@42 $generated@@33 $generated@@78)))))
($generated@@40 (+ ($generated@@26 $generated@@76 ($generated@@27 $generated@@77) $generated@@80) 1)))))))
 :weight 3
 :pattern ( ($generated@@26 $generated@@76 ($generated@@27 $generated@@77) ($generated@@42 $generated@@33 $generated@@78)))
))))
(assert (forall (($generated@@83 T@U) ) (!  (and (= ($generated@@81 ($generated@@34 $generated@@83)) $generated@@1) (= ($generated@@82 ($generated@@34 $generated@@83)) $generated@@5))
 :pattern ( ($generated@@34 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ) (!  (=> ($generated@@46 $generated@@84 $generated@@23) (and (= ($generated@@55 $generated@@8 ($generated@@54 $generated@@8 $generated@@84)) $generated@@84) ($generated@@38 $generated@@8 ($generated@@54 $generated@@8 $generated@@84) $generated@@23)))
 :pattern ( ($generated@@46 $generated@@84 $generated@@23))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> ($generated@@38 $generated@@33 $generated@@86 ($generated@@34 $generated@@85)) (or ($generated@@50 $generated@@86) ($generated@@52 $generated@@86)))
 :pattern ( ($generated@@52 $generated@@86) ($generated@@38 $generated@@33 $generated@@86 ($generated@@34 $generated@@85)))
 :pattern ( ($generated@@50 $generated@@86) ($generated@@38 $generated@@33 $generated@@86 ($generated@@34 $generated@@85)))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@46 ($generated@@55 $generated@@89 $generated@@87) $generated@@88) ($generated@@38 $generated@@89 $generated@@87 $generated@@88))
 :pattern ( ($generated@@46 ($generated@@55 $generated@@89 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@31 ($generated@@45 $generated@@90 $generated@@91)) $generated@@3)
 :pattern ( ($generated@@45 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@92 ($generated@@45 $generated@@93 $generated@@94)) $generated@@93)
 :pattern ( ($generated@@45 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@63 ($generated@@45 $generated@@95 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@45 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@97 ($generated@@34 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@34 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@54 $generated@@100 ($generated@@55 $generated@@100 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@55 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (< ($generated@@101 $generated@@103) ($generated@@102 ($generated@@45 $generated@@103 $generated@@104)))
 :pattern ( ($generated@@45 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (< ($generated@@102 $generated@@106) ($generated@@102 ($generated@@45 $generated@@105 $generated@@106)))
 :pattern ( ($generated@@45 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (and ($generated@@35 $generated@@109) (and ($generated@@52 $generated@@107) ($generated@@22 $generated@@33 $generated@@107 ($generated@@34 $generated@@108) $generated@@109))) ($generated@@71 ($generated@@92 $generated@@107) $generated@@108 $generated@@109))
 :pattern ( ($generated@@71 ($generated@@92 $generated@@107) $generated@@108 $generated@@109))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@110 $generated@@121 $generated@@122 $generated@@123 ($generated@@117 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@127 $generated@@124) $generated@@126 $generated@@127) $generated@@124)
 :weight 0
)) (and (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (or (= $generated@@133 $generated@@135) (= ($generated@@110 $generated@@128 $generated@@129 $generated@@130 ($generated@@117 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@133 $generated@@134 $generated@@131) $generated@@135 $generated@@136) ($generated@@110 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@135 $generated@@136)))
 :weight 0
)) (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@143 $generated@@145) (= ($generated@@110 $generated@@137 $generated@@138 $generated@@139 ($generated@@117 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@142 $generated@@143 $generated@@140) $generated@@144 $generated@@145) ($generated@@110 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@144 $generated@@145)))
 :weight 0
)))) (= ($generated@@6 $generated@@111) 4)) (= ($generated@@6 $generated@@112) 5)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@114 $generated@@146 $generated@@147 ($generated@@118 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@148) $generated@@150) $generated@@148)
 :weight 0
))) (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@155 $generated@@156) (= ($generated@@114 $generated@@151 $generated@@152 ($generated@@118 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@153) $generated@@156) ($generated@@114 $generated@@151 $generated@@152 $generated@@154 $generated@@156)))
 :weight 0
))) (= ($generated@@6 $generated@@115) 6)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ) (= ($generated@@6 ($generated@@116 $generated@@157 $generated@@158)) 7))) (forall (($generated@@159 T@T) ($generated@@160 T@T) ) (! (= ($generated@@119 ($generated@@116 $generated@@159 $generated@@160)) $generated@@159)
 :pattern ( ($generated@@116 $generated@@159 $generated@@160))
))) (forall (($generated@@161 T@T) ($generated@@162 T@T) ) (! (= ($generated@@120 ($generated@@116 $generated@@161 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@116 $generated@@161 $generated@@162))
))))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 Bool) ($generated@@167 T@U) ($generated@@168 T@U) ) (! (= ($generated@@11 ($generated@@110 $generated@@111 $generated@@112 $generated@@7 ($generated@@113 $generated@@163 $generated@@164 $generated@@165 $generated@@166) $generated@@167 $generated@@168))  (=> (and (or (not (= $generated@@167 $generated@@163)) (not true)) ($generated@@11 ($generated@@54 $generated@@7 ($generated@@114 $generated@@112 $generated@@115 ($generated@@114 $generated@@111 ($generated@@116 $generated@@112 $generated@@115) $generated@@164 $generated@@167) $generated@@165)))) $generated@@166))
 :pattern ( ($generated@@110 $generated@@111 $generated@@112 $generated@@7 ($generated@@113 $generated@@163 $generated@@164 $generated@@165 $generated@@166) $generated@@167 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@101 ($generated@@55 $generated@@33 $generated@@169)) ($generated@@102 $generated@@169))
 :pattern ( ($generated@@101 ($generated@@55 $generated@@33 $generated@@169)))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> ($generated@@46 $generated@@171 ($generated@@34 $generated@@170)) (and (= ($generated@@55 $generated@@33 ($generated@@54 $generated@@33 $generated@@171)) $generated@@171) ($generated@@38 $generated@@33 ($generated@@54 $generated@@33 $generated@@171) ($generated@@34 $generated@@170))))
 :pattern ( ($generated@@46 $generated@@171 ($generated@@34 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> (and ($generated@@35 $generated@@174) (and ($generated@@52 $generated@@172) ($generated@@22 $generated@@33 $generated@@172 ($generated@@34 $generated@@173) $generated@@174))) ($generated@@22 $generated@@33 ($generated@@63 $generated@@172) ($generated@@34 $generated@@173) $generated@@174))
 :pattern ( ($generated@@22 $generated@@33 ($generated@@63 $generated@@172) ($generated@@34 $generated@@173) $generated@@174))
)))
(assert (= ($generated@@81 $generated@@23) $generated@@0))
(assert (= ($generated@@82 $generated@@23) $generated@@4))
(assert (= $generated@@32 ($generated@@42 $generated@@33 $generated@@32)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@45 ($generated@@42 $generated@@115 $generated@@175) ($generated@@42 $generated@@33 $generated@@176)) ($generated@@42 $generated@@33 ($generated@@45 $generated@@175 $generated@@176)))
 :pattern ( ($generated@@45 ($generated@@42 $generated@@115 $generated@@175) ($generated@@42 $generated@@33 $generated@@176)))
)))
(assert (forall (($generated@@177 Int) ) (! (= ($generated@@55 $generated@@8 ($generated@@12 ($generated@@40 $generated@@177))) ($generated@@42 $generated@@115 ($generated@@55 $generated@@8 ($generated@@12 $generated@@177))))
 :pattern ( ($generated@@55 $generated@@8 ($generated@@12 ($generated@@40 $generated@@177))))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@T) ) (! (= ($generated@@55 $generated@@179 ($generated@@42 $generated@@179 $generated@@178)) ($generated@@42 $generated@@115 ($generated@@55 $generated@@179 $generated@@178)))
 :pattern ( ($generated@@55 $generated@@179 ($generated@@42 $generated@@179 $generated@@178)))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> (or ($generated@@62 $generated@@180 $generated@@182) (and (< 1 $generated@@61) ($generated@@38 $generated@@33 $generated@@182 ($generated@@34 $generated@@180)))) (<= ($generated@@40 0) ($generated@@26 $generated@@180 $generated@@181 $generated@@182)))
 :pattern ( ($generated@@26 $generated@@180 $generated@@181 $generated@@182))
))))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> ($generated@@35 $generated@@186) (= ($generated@@22 $generated@@33 ($generated@@45 $generated@@184 $generated@@185) ($generated@@34 $generated@@183) $generated@@186)  (and ($generated@@71 $generated@@184 $generated@@183 $generated@@186) ($generated@@22 $generated@@33 $generated@@185 ($generated@@34 $generated@@183) $generated@@186))))
 :pattern ( ($generated@@22 $generated@@33 ($generated@@45 $generated@@184 $generated@@185) ($generated@@34 $generated@@183) $generated@@186))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@198 true))
(let (($generated@@199  (=> (= $generated@@187 ($generated@@45 $generated@@188 $generated@@189)) (=> (and ($generated@@46 $generated@@188 $generated@@190) ($generated@@38 $generated@@33 $generated@@189 ($generated@@34 $generated@@190))) (=> (and (and (= $generated@@191 $generated@@189) ($generated@@38 $generated@@33 $generated@@191 ($generated@@34 $generated@@190))) (and (= $generated@@192 $generated@@191) ($generated@@22 $generated@@33 $generated@@192 ($generated@@34 $generated@@190) $generated@@193))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< ($generated@@102 $generated@@192) ($generated@@102 $generated@@187))) (=> (< ($generated@@102 $generated@@192) ($generated@@102 $generated@@187)) (=> (and ($generated@@62 $generated@@190 $generated@@192) (= (ControlFlow 0 5) (- 0 4))) ($generated@@38 $generated@@8 ($generated@@12 (+ ($generated@@26 $generated@@190 ($generated@@27 $generated@@194) $generated@@192) 1)) $generated@@23)))))))))
(let (($generated@@200  (=> (or (not (= $generated@@187 $generated@@32)) (not true)) (and (=> (= (ControlFlow 0 8) 5) $generated@@199) (=> (= (ControlFlow 0 8) 7) $generated@@198)))))
(let (($generated@@201  (=> (and (= $generated@@187 $generated@@32) (= (ControlFlow 0 3) (- 0 2))) ($generated@@38 $generated@@8 ($generated@@12 ($generated@@40 0)) $generated@@23))))
(let (($generated@@202 true))
(let (($generated@@203  (=> (= $generated@@195 ($generated@@113 $generated@@196 $generated@@193 $generated false)) (and (and (=> (= (ControlFlow 0 9) 1) $generated@@202) (=> (= (ControlFlow 0 9) 3) $generated@@201)) (=> (= (ControlFlow 0 9) 8) $generated@@200)))))
(let (($generated@@204  (=> (and (and (and ($generated@@35 $generated@@193) ($generated@@197 $generated@@193)) ($generated@@38 $generated@@33 $generated@@187 ($generated@@34 $generated@@190))) (and (= 1 $generated@@61) (= (ControlFlow 0 10) 9))) $generated@@203)))
$generated@@204))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)