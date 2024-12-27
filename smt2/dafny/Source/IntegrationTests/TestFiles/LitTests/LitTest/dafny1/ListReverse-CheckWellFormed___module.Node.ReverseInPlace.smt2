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
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 (T@T T@T) T@T)
(declare-fun $generated@@43 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@T) T@T)
(declare-fun $generated@@45 (T@T) T@T)
(declare-fun $generated@@65 (T@U T@U) Bool)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@72 () T@T)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U T@U) Bool)
(declare-fun $generated@@75 (T@U T@U) Bool)
(declare-fun $generated@@79 (T@U T@U T@U) Bool)
(declare-fun $generated@@93 (T@U) Bool)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@123 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@124 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@125 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@23 $generated@@0) 0))
(assert (= ($generated@@24 $generated@@0) $generated@@1))
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@30 $generated@@27)  (or (= $generated@@30 $generated@@28) (= ($generated@@29 $generated@@30) $generated@@27)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@30 $generated@@27))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34) ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
)))
(assert (= ($generated@@23 $generated@@35) 0))
(assert (= ($generated@@36 $generated@@2 $generated@@6) $generated@@35))
(assert  (not ($generated@@37 $generated@@35)))
(assert  (and (and (and (and (and (and (forall (($generated@@46 T@T) ($generated@@47 T@T) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@39 $generated@@46 $generated@@47 ($generated@@43 $generated@@46 $generated@@47 $generated@@49 $generated@@50 $generated@@48) $generated@@50) $generated@@48)
 :weight 0
)) (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (or (= $generated@@55 $generated@@56) (= ($generated@@39 $generated@@51 $generated@@52 ($generated@@43 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@56) ($generated@@39 $generated@@51 $generated@@52 $generated@@54 $generated@@56)))
 :weight 0
))) (= ($generated@@7 $generated@@40) 4)) (= ($generated@@7 $generated@@41) 5)) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (= ($generated@@7 ($generated@@42 $generated@@57 $generated@@58)) 6))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@44 ($generated@@42 $generated@@59 $generated@@60)) $generated@@59)
 :pattern ( ($generated@@42 $generated@@59 $generated@@60))
))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@45 ($generated@@42 $generated@@61 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@42 $generated@@61 $generated@@62))
))))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@63 $generated@@27 $generated@@64)  (or (= $generated@@63 $generated@@28) ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@64 $generated@@63) $generated@@0)))))
 :pattern ( ($generated@@31 $generated@@26 $generated@@63 $generated@@27 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> ($generated@@65 $generated@@66 $generated@@67) (forall (($generated@@68 T@U) ) (!  (=> ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@66 $generated@@68) $generated@@0))) ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@67 $generated@@68) $generated@@0))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@67 $generated@@68) $generated@@0))
)))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 ($generated@@38 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@38 $generated@@71 $generated@@70))
)))
(assert (= ($generated@@7 $generated@@72) 7))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@25 $generated@@72 $generated@@76 ($generated@@73 $generated@@77)) (forall (($generated@@78 T@U) ) (!  (=> ($generated@@74 $generated@@76 $generated@@78) ($generated@@75 $generated@@78 $generated@@77))
 :pattern ( ($generated@@74 $generated@@76 $generated@@78))
)))
 :pattern ( ($generated@@25 $generated@@72 $generated@@76 ($generated@@73 $generated@@77)))
)))
(assert ($generated@@37 $generated@@0))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@79 ($generated@@69 $generated@@83 $generated@@80) $generated@@81 $generated@@82) ($generated@@31 $generated@@83 $generated@@80 $generated@@81 $generated@@82))
 :pattern ( ($generated@@79 ($generated@@69 $generated@@83 $generated@@80) $generated@@81 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> ($generated@@65 $generated@@84 $generated@@85) (=> ($generated@@79 $generated@@86 $generated@@87 $generated@@84) ($generated@@79 $generated@@86 $generated@@87 $generated@@85)))
 :pattern ( ($generated@@65 $generated@@84 $generated@@85) ($generated@@79 $generated@@86 $generated@@87 $generated@@84))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (!  (=> ($generated@@65 $generated@@88 $generated@@89) (=> ($generated@@31 $generated@@92 $generated@@90 $generated@@91 $generated@@88) ($generated@@31 $generated@@92 $generated@@90 $generated@@91 $generated@@89)))
 :pattern ( ($generated@@65 $generated@@88 $generated@@89) ($generated@@31 $generated@@92 $generated@@90 $generated@@91 $generated@@88))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (and ($generated@@93 $generated@@94) (and (or (not (= $generated@@95 $generated@@28)) (not true)) (= ($generated@@29 $generated@@95) $generated@@27))) ($generated@@25 $generated@@26 ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@94 $generated@@95) $generated@@35)) $generated@@27))
 :pattern ( ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@94 $generated@@95) $generated@@35)))
)))
(assert (forall (($generated@@96 T@U) ) (!  (=> ($generated@@75 $generated@@96 $generated@@27) (and (= ($generated@@69 $generated@@26 ($generated@@38 $generated@@26 $generated@@96)) $generated@@96) ($generated@@25 $generated@@26 ($generated@@38 $generated@@26 $generated@@96) $generated@@27)))
 :pattern ( ($generated@@75 $generated@@96 $generated@@27))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@75 $generated@@97 $generated@@32) (and (= ($generated@@69 $generated@@26 ($generated@@38 $generated@@26 $generated@@97)) $generated@@97) ($generated@@25 $generated@@26 ($generated@@38 $generated@@26 $generated@@97) $generated@@32)))
 :pattern ( ($generated@@75 $generated@@97 $generated@@32))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@98 $generated@@32)  (and ($generated@@25 $generated@@26 $generated@@98 $generated@@27) (or (not (= $generated@@98 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@98 $generated@@32))
 :pattern ( ($generated@@25 $generated@@26 $generated@@98 $generated@@27))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> (and (and ($generated@@93 $generated@@99) (and (or (not (= $generated@@100 $generated@@28)) (not true)) (= ($generated@@29 $generated@@100) $generated@@27))) ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@99 $generated@@100) $generated@@0)))) ($generated@@31 $generated@@26 ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@99 $generated@@100) $generated@@35)) $generated@@27 $generated@@99))
 :pattern ( ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@99 $generated@@100) $generated@@35)))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> (or (not (= $generated@@101 $generated@@103)) (not true)) (=> (and ($generated@@65 $generated@@101 $generated@@102) ($generated@@65 $generated@@102 $generated@@103)) ($generated@@65 $generated@@101 $generated@@103)))
 :pattern ( ($generated@@65 $generated@@101 $generated@@102) ($generated@@65 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (!  (and (= ($generated@@104 ($generated@@36 $generated@@105 $generated@@106)) $generated@@105) (= ($generated@@24 ($generated@@36 $generated@@105 $generated@@106)) $generated@@106))
 :pattern ( ($generated@@36 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@75 ($generated@@69 $generated@@109 $generated@@107) $generated@@108) ($generated@@25 $generated@@109 $generated@@107 $generated@@108))
 :pattern ( ($generated@@75 ($generated@@69 $generated@@109 $generated@@107) $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@31 $generated@@72 $generated@@110 ($generated@@73 $generated@@111) $generated@@112) (forall (($generated@@113 T@U) ) (!  (=> ($generated@@74 $generated@@110 $generated@@113) ($generated@@79 $generated@@113 $generated@@111 $generated@@112))
 :pattern ( ($generated@@74 $generated@@110 $generated@@113))
)))
 :pattern ( ($generated@@31 $generated@@72 $generated@@110 ($generated@@73 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@114 ($generated@@73 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@73 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@116 ($generated@@73 $generated@@117)) $generated)
 :pattern ( ($generated@@73 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@38 $generated@@119 ($generated@@69 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@69 $generated@@119 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> ($generated@@75 $generated@@120 ($generated@@73 $generated@@121)) (and (= ($generated@@69 $generated@@72 ($generated@@38 $generated@@72 $generated@@120)) $generated@@120) ($generated@@25 $generated@@72 ($generated@@38 $generated@@72 $generated@@120) ($generated@@73 $generated@@121))))
 :pattern ( ($generated@@75 $generated@@120 ($generated@@73 $generated@@121)))
)))
(assert (= ($generated@@116 $generated@@27) $generated@@3))
(assert (= ($generated@@122 $generated@@27) $generated@@5))
(assert (= ($generated@@116 $generated@@32) $generated@@4))
(assert (= ($generated@@122 $generated@@32) $generated@@5))
(assert  (and (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@123 $generated@@126 $generated@@127 $generated@@128 ($generated@@125 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@131 $generated@@132) $generated@@129)
 :weight 0
)) (and (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (or (= $generated@@138 $generated@@140) (= ($generated@@123 $generated@@133 $generated@@134 $generated@@135 ($generated@@125 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@140 $generated@@141) ($generated@@123 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@140 $generated@@141)))
 :weight 0
)) (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (or (= $generated@@148 $generated@@150) (= ($generated@@123 $generated@@142 $generated@@143 $generated@@144 ($generated@@125 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@149 $generated@@150) ($generated@@123 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@149 $generated@@150)))
 :weight 0
)))))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@12 ($generated@@123 $generated@@26 $generated@@40 $generated@@8 ($generated@@124 $generated@@151 $generated@@152 $generated@@153 $generated@@154) $generated@@155 $generated@@156))  (=> (and (or (not (= $generated@@155 $generated@@151)) (not true)) ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@152 $generated@@155) $generated@@153)))) ($generated@@74 $generated@@154 ($generated@@69 $generated@@26 $generated@@155))))
 :pattern ( ($generated@@123 $generated@@26 $generated@@40 $generated@@8 ($generated@@124 $generated@@151 $generated@@152 $generated@@153 $generated@@154) $generated@@155 $generated@@156))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 (T@U) Bool)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () Int)
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
 (=> (= (ControlFlow 0 0) 24) (let (($generated@@169 true))
(let (($generated@@170  (=> (and (= ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@157 $generated@@158) $generated@@35)) $generated@@28) (= (ControlFlow 0 6) 1)) $generated@@169)))
(let (($generated@@171  (=> (or (not (= ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@157 $generated@@158) $generated@@35)) $generated@@28)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= $generated@@158 $generated@@28)) (not true))) (=> (or (not (= $generated@@158 $generated@@28)) (not true)) (=> (= (ControlFlow 0 4) 1) $generated@@169))))))
(let (($generated@@172  (=> ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@158)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= $generated@@158 $generated@@28)) (not true))) (=> (or (not (= $generated@@158 $generated@@28)) (not true)) (and (=> (= (ControlFlow 0 7) 4) $generated@@171) (=> (= (ControlFlow 0 7) 6) $generated@@170)))))))
(let (($generated@@173  (=> (and (not ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@158))) (= (ControlFlow 0 3) 1)) $generated@@169)))
(let (($generated@@174  (=> (and ($generated@@25 $generated@@26 $generated@@158 $generated@@32) ($generated@@31 $generated@@26 $generated@@158 $generated@@32 $generated@@157)) (and (=> (= (ControlFlow 0 9) 7) $generated@@172) (=> (= (ControlFlow 0 9) 3) $generated@@173)))))
(let (($generated@@175  (=> (and (not (and ($generated@@25 $generated@@26 $generated@@158 $generated@@32) ($generated@@31 $generated@@26 $generated@@158 $generated@@32 $generated@@157))) (= (ControlFlow 0 2) 1)) $generated@@169)))
(let (($generated@@176  (=> (and (or (not (= $generated@@160 $generated@@28)) (not true)) ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@160))) (and (=> (= (ControlFlow 0 11) 9) $generated@@174) (=> (= (ControlFlow 0 11) 2) $generated@@175)))))
(let (($generated@@177  (=> (= $generated@@160 $generated@@28) (and (=> (= (ControlFlow 0 10) 9) $generated@@174) (=> (= (ControlFlow 0 10) 2) $generated@@175)))))
(let (($generated@@178  (=> (forall (($generated@@179 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@179 $generated@@32) (=> ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@179)) (or (= ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@179) $generated@@35)) $generated@@28) ($generated@@74 $generated@@159 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@179) $generated@@35)))))
 :pattern ( ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@179) $generated@@35)))
)) (=> (and ($generated@@93 $generated@@157) ($generated@@162 $generated@@157)) (=> (and (and (forall (($generated@@180 T@U) ) (!  (=> (and (or (not (= $generated@@180 $generated@@28)) (not true)) ($generated@@12 ($generated@@38 $generated@@8 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@180) $generated@@0)))) (or (= ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@157 $generated@@180) ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@180)) ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@180))))
 :pattern ( ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@157 $generated@@180))
)) ($generated@@65 $generated@@161 $generated@@157)) (and ($generated@@25 $generated@@26 $generated@@160 $generated@@27) ($generated@@31 $generated@@26 $generated@@160 $generated@@27 $generated@@157))) (and (=> (= (ControlFlow 0 12) 10) $generated@@177) (=> (= (ControlFlow 0 12) 11) $generated@@176)))))))
(let (($generated@@181  (=> (and (= ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@163) $generated@@35)) $generated@@28) (= (ControlFlow 0 17) 12)) $generated@@178)))
(let (($generated@@182  (=> (or (not (= ($generated@@38 $generated@@26 ($generated@@39 $generated@@40 $generated@@41 ($generated@@39 $generated@@26 ($generated@@42 $generated@@40 $generated@@41) $generated@@161 $generated@@163) $generated@@35)) $generated@@28)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= $generated@@163 $generated@@28)) (not true))) (=> (or (not (= $generated@@163 $generated@@28)) (not true)) (=> (= (ControlFlow 0 15) 12) $generated@@178))))))
(let (($generated@@183  (=> ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@163)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= $generated@@163 $generated@@28)) (not true))) (=> (or (not (= $generated@@163 $generated@@28)) (not true)) (and (=> (= (ControlFlow 0 18) 15) $generated@@182) (=> (= (ControlFlow 0 18) 17) $generated@@181)))))))
(let (($generated@@184  (=> (and (not ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@163))) (= (ControlFlow 0 14) 12)) $generated@@178)))
(let (($generated@@185  (=> (and ($generated@@25 $generated@@26 $generated@@163 $generated@@32) ($generated@@31 $generated@@26 $generated@@163 $generated@@32 $generated@@161)) (and (=> (= (ControlFlow 0 20) 18) $generated@@183) (=> (= (ControlFlow 0 20) 14) $generated@@184)))))
(let (($generated@@186  (=> (and (not (and ($generated@@25 $generated@@26 $generated@@163 $generated@@32) ($generated@@31 $generated@@26 $generated@@163 $generated@@32 $generated@@161))) (= (ControlFlow 0 13) 12)) $generated@@178)))
(let (($generated@@187  (=> (and (or (not (= $generated@@164 $generated@@28)) (not true)) ($generated@@74 $generated@@159 ($generated@@69 $generated@@26 $generated@@164))) (and (=> (= (ControlFlow 0 22) 20) $generated@@185) (=> (= (ControlFlow 0 22) 13) $generated@@186)))))
(let (($generated@@188  (=> (= $generated@@164 $generated@@28) (and (=> (= (ControlFlow 0 21) 20) $generated@@185) (=> (= (ControlFlow 0 21) 13) $generated@@186)))))
(let (($generated@@189  (=> (= $generated@@165 ($generated@@124 $generated@@28 $generated@@161 $generated@@0 $generated@@159)) (and (=> (= (ControlFlow 0 23) 21) $generated@@188) (=> (= (ControlFlow 0 23) 22) $generated@@187)))))
(let (($generated@@190  (=> (and (and ($generated@@93 $generated@@161) ($generated@@162 $generated@@161)) (and (or (not (= $generated@@166 $generated@@28)) (not true)) (and ($generated@@25 $generated@@26 $generated@@166 $generated@@32) ($generated@@31 $generated@@26 $generated@@166 $generated@@32 $generated@@161)))) (=> (and (and (and ($generated@@25 $generated@@26 $generated@@164 $generated@@27) ($generated@@31 $generated@@26 $generated@@164 $generated@@27 $generated@@161)) (and ($generated@@25 $generated@@72 $generated@@159 ($generated@@73 $generated@@32)) ($generated@@31 $generated@@72 $generated@@159 ($generated@@73 $generated@@32) $generated@@161))) (and (and ($generated@@25 $generated@@26 $generated@@167 $generated@@27) ($generated@@31 $generated@@26 $generated@@167 $generated@@27 $generated@@161)) (and (= 1 $generated@@168) (= (ControlFlow 0 24) 23)))) $generated@@189))))
$generated@@190)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)