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
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@23 () Int)
(declare-fun $generated@@24 (T@U Int) Bool)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (Int) Int)
(declare-fun $generated@@28 (T@U Int) Bool)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (Int) Bool)
(declare-fun $generated@@32 (T@T T@U) T@U)
(declare-fun $generated@@33 (Int) Bool)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@55 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@75 (T@U T@U T@U) Bool)
(declare-fun $generated@@76 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@81 (Int Int) Int)
(declare-fun $generated@@92 (T@U Int Int) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@106 () T@T)
(declare-fun $generated@@107 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@108 (T@T T@T) T@T)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@110 (T@T) T@T)
(declare-fun $generated@@111 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (= ($generated@@19 $generated) $generated@@0))
(assert (forall (($generated@@22 T@U) ) (!  (not ($generated@@20 $generated@@21 $generated@@22))
 :pattern ( ($generated@@20 $generated@@21 $generated@@22))
)))
(assert (= ($generated@@3 $generated@@26) 3))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@34 T@U) ($generated@@35 Int) ) (!  (=> (or ($generated@@28 ($generated@@25 $generated@@26 $generated@@34) ($generated@@27 $generated@@35)) (and (< 1 $generated@@23) ($generated@@29 $generated@@26 $generated@@34 ($generated@@30 $generated)))) (and (and (forall (($generated@@36 Int) ) (!  (=> ($generated@@20 ($generated@@25 $generated@@26 $generated@@34) ($generated@@32 $generated@@5 ($generated@@9 $generated@@36))) ($generated@@33 $generated@@36))
 :pattern ( ($generated@@31 $generated@@36))
 :pattern ( ($generated@@20 $generated@@34 ($generated@@32 $generated@@5 ($generated@@9 $generated@@36))))
)) (=> (forall (($generated@@37 Int) ) (!  (=> ($generated@@20 ($generated@@25 $generated@@26 $generated@@34) ($generated@@32 $generated@@5 ($generated@@9 $generated@@37))) ($generated@@31 $generated@@37))
 :pattern ( ($generated@@31 $generated@@37))
 :pattern ( ($generated@@20 $generated@@34 ($generated@@32 $generated@@5 ($generated@@9 $generated@@37))))
)) (forall (($generated@@38 Int) ) (! ($generated@@33 $generated@@38)
 :pattern ( ($generated@@20 $generated@@34 ($generated@@32 $generated@@5 ($generated@@9 $generated@@38))))
 :pattern ( ($generated@@31 $generated@@38))
)))) (= ($generated@@24 ($generated@@25 $generated@@26 $generated@@34) ($generated@@27 $generated@@35))  (and (forall (($generated@@39 Int) ) (!  (=> ($generated@@20 ($generated@@25 $generated@@26 $generated@@34) ($generated@@32 $generated@@5 ($generated@@9 $generated@@39))) ($generated@@31 $generated@@39))
 :pattern ( ($generated@@31 $generated@@39))
 :pattern ( ($generated@@20 $generated@@34 ($generated@@32 $generated@@5 ($generated@@9 $generated@@39))))
)) (forall (($generated@@40 Int) ) (!  (=> (and ($generated@@31 $generated@@40) (<= $generated@@40 ($generated@@27 $generated@@35))) ($generated@@20 ($generated@@25 $generated@@26 $generated@@34) ($generated@@32 $generated@@5 ($generated@@9 $generated@@40))))
 :pattern ( ($generated@@20 $generated@@34 ($generated@@32 $generated@@5 ($generated@@9 $generated@@40))))
 :pattern ( ($generated@@31 $generated@@40))
))))))
 :weight 3
 :pattern ( ($generated@@24 ($generated@@25 $generated@@26 $generated@@34) ($generated@@27 $generated@@35)))
))))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@41 T@U) ($generated@@42 Int) ) (!  (=> (or ($generated@@28 $generated@@41 $generated@@42) (and (< 1 $generated@@23) ($generated@@29 $generated@@26 $generated@@41 ($generated@@30 $generated)))) (and (and (forall (($generated@@43 Int) ) (!  (=> ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@43))) ($generated@@33 $generated@@43))
 :pattern ( ($generated@@31 $generated@@43))
 :pattern ( ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@43))))
)) (=> (forall (($generated@@44 Int) ) (!  (=> ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@44))) ($generated@@31 $generated@@44))
 :pattern ( ($generated@@31 $generated@@44))
 :pattern ( ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@44))))
)) (forall (($generated@@45 Int) ) (! ($generated@@33 $generated@@45)
 :pattern ( ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@45))))
 :pattern ( ($generated@@31 $generated@@45))
)))) (= ($generated@@24 $generated@@41 $generated@@42)  (and (forall (($generated@@46 Int) ) (!  (=> ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@46))) ($generated@@31 $generated@@46))
 :pattern ( ($generated@@31 $generated@@46))
 :pattern ( ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@46))))
)) (forall (($generated@@47 Int) ) (!  (=> (and ($generated@@31 $generated@@47) (<= $generated@@47 $generated@@42)) ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@47))))
 :pattern ( ($generated@@20 $generated@@41 ($generated@@32 $generated@@5 ($generated@@9 $generated@@47))))
 :pattern ( ($generated@@31 $generated@@47))
))))))
 :pattern ( ($generated@@24 $generated@@41 $generated@@42))
))))
(assert (forall (($generated@@48 Int) ) (! (= ($generated@@27 $generated@@48) $generated@@48)
 :pattern ( ($generated@@27 $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@25 $generated@@50 $generated@@49) $generated@@49)
 :pattern ( ($generated@@25 $generated@@50 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@32 $generated@@53 ($generated@@51 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@51 $generated@@53 $generated@@52))
)))
(assert  (and (and (forall (($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@55 $generated@@58 $generated@@59 ($generated@@57 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@60) $generated@@62) $generated@@60)
 :weight 0
)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (or (= $generated@@67 $generated@@68) (= ($generated@@55 $generated@@63 $generated@@64 ($generated@@57 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@68) ($generated@@55 $generated@@63 $generated@@64 $generated@@66 $generated@@68)))
 :weight 0
))) (= ($generated@@3 $generated@@56) 4)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@20 ($generated@@54 $generated@@69) $generated@@70) ($generated@@8 ($generated@@55 $generated@@56 $generated@@4 $generated@@69 $generated@@70)))
 :pattern ( ($generated@@20 ($generated@@54 $generated@@69) $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@29 $generated@@26 $generated@@72 ($generated@@30 $generated@@73)) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@20 $generated@@72 $generated@@74) ($generated@@71 $generated@@74 $generated@@73))
 :pattern ( ($generated@@20 $generated@@72 $generated@@74))
)))
 :pattern ( ($generated@@29 $generated@@26 $generated@@72 ($generated@@30 $generated@@73)))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@75 ($generated@@32 $generated@@80 $generated@@77) $generated@@78 $generated@@79) ($generated@@76 $generated@@80 $generated@@77 $generated@@78 $generated@@79))
 :pattern ( ($generated@@75 ($generated@@32 $generated@@80 $generated@@77) $generated@@78 $generated@@79))
)))
(assert  (=> (<= 0 $generated@@23) (forall (($generated@@82 Int) ) (!  (=> (or ($generated@@33 $generated@@82) (< 0 $generated@@23)) (= ($generated@@31 $generated@@82)  (and (<= ($generated@@27 2) $generated@@82) (forall (($generated@@83 Int) ) (!  (=> (and (<= ($generated@@27 2) $generated@@83) (< $generated@@83 $generated@@82)) (or (not (= ($generated@@81 $generated@@82 $generated@@83) 0)) (not true)))
 :pattern ( ($generated@@81 $generated@@82 $generated@@83))
)))))
 :pattern ( ($generated@@31 $generated@@82))
))))
(assert (forall (($generated@@84 T@U) ) (!  (=> ($generated@@71 $generated@@84 $generated) (and (= ($generated@@32 $generated@@5 ($generated@@51 $generated@@5 $generated@@84)) $generated@@84) ($generated@@29 $generated@@5 ($generated@@51 $generated@@5 $generated@@84) $generated)))
 :pattern ( ($generated@@71 $generated@@84 $generated))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@71 ($generated@@32 $generated@@87 $generated@@85) $generated@@86) ($generated@@29 $generated@@87 $generated@@85 $generated@@86))
 :pattern ( ($generated@@71 ($generated@@32 $generated@@87 $generated@@85) $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@76 $generated@@26 $generated@@88 ($generated@@30 $generated@@89) $generated@@90) (forall (($generated@@91 T@U) ) (!  (=> ($generated@@20 $generated@@88 $generated@@91) ($generated@@75 $generated@@91 $generated@@89 $generated@@90))
 :pattern ( ($generated@@20 $generated@@88 $generated@@91))
)))
 :pattern ( ($generated@@76 $generated@@26 $generated@@88 ($generated@@30 $generated@@89) $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 Int) ($generated@@95 Int) ($generated@@96 T@U) ) (! (= ($generated@@8 ($generated@@55 $generated@@56 $generated@@4 ($generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96))  (and ($generated@@71 $generated@@96 $generated@@93) (and (and (<= $generated@@94 ($generated@@10 ($generated@@51 $generated@@5 $generated@@96))) (<= ($generated@@10 ($generated@@51 $generated@@5 $generated@@96)) $generated@@95)) ($generated@@31 ($generated@@10 ($generated@@51 $generated@@5 $generated@@96))))))
 :pattern ( ($generated@@55 $generated@@56 $generated@@4 ($generated@@92 $generated@@93 $generated@@94 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@97 ($generated@@30 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@30 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@19 ($generated@@30 $generated@@99)) $generated@@1)
 :pattern ( ($generated@@30 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@51 $generated@@101 ($generated@@32 $generated@@101 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@32 $generated@@101 $generated@@100))
)))
(assert  (=> (<= 0 $generated@@23) (forall (($generated@@102 Int) ) (!  (=> (or ($generated@@33 ($generated@@27 $generated@@102)) (< 0 $generated@@23)) (= ($generated@@31 ($generated@@27 $generated@@102))  (and (<= ($generated@@27 2) ($generated@@27 $generated@@102)) (forall (($generated@@103 Int) ) (!  (=> (and (<= ($generated@@27 2) $generated@@103) (< $generated@@103 $generated@@102)) (or (not (= ($generated@@81 $generated@@102 $generated@@103) 0)) (not true)))
 :pattern ( ($generated@@81 $generated@@102 $generated@@103))
)))))
 :weight 3
 :pattern ( ($generated@@31 ($generated@@27 $generated@@102)))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@104 $generated@@112 $generated@@113 $generated@@114 ($generated@@109 $generated@@112 $generated@@113 $generated@@114 $generated@@116 $generated@@117 $generated@@118 $generated@@115) $generated@@117 $generated@@118) $generated@@115)
 :weight 0
)) (and (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@124 $generated@@126) (= ($generated@@104 $generated@@119 $generated@@120 $generated@@121 ($generated@@109 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@104 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)) (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (or (= $generated@@134 $generated@@136) (= ($generated@@104 $generated@@128 $generated@@129 $generated@@130 ($generated@@109 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@133 $generated@@134 $generated@@131) $generated@@135 $generated@@136) ($generated@@104 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@135 $generated@@136)))
 :weight 0
)))) (= ($generated@@3 $generated@@105) 5)) (= ($generated@@3 $generated@@106) 6)) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (= ($generated@@3 ($generated@@108 $generated@@137 $generated@@138)) 7))) (forall (($generated@@139 T@T) ($generated@@140 T@T) ) (! (= ($generated@@110 ($generated@@108 $generated@@139 $generated@@140)) $generated@@139)
 :pattern ( ($generated@@108 $generated@@139 $generated@@140))
))) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (! (= ($generated@@111 ($generated@@108 $generated@@141 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@108 $generated@@141 $generated@@142))
))))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 Bool) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@8 ($generated@@104 $generated@@105 $generated@@106 $generated@@4 ($generated@@107 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@147 $generated@@148))  (=> (and (or (not (= $generated@@147 $generated@@143)) (not true)) ($generated@@8 ($generated@@51 $generated@@4 ($generated@@55 $generated@@106 $generated@@56 ($generated@@55 $generated@@105 ($generated@@108 $generated@@106 $generated@@56) $generated@@144 $generated@@147) $generated@@145)))) $generated@@146))
 :pattern ( ($generated@@104 $generated@@105 $generated@@106 $generated@@4 ($generated@@107 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 Int) ($generated@@150 Int) ) (! (= ($generated@@81 $generated@@149 $generated@@150) (mod $generated@@149 $generated@@150))
 :pattern ( ($generated@@81 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> ($generated@@71 $generated@@151 ($generated@@30 $generated@@152)) (and (= ($generated@@32 $generated@@26 ($generated@@51 $generated@@26 $generated@@151)) $generated@@151) ($generated@@29 $generated@@26 ($generated@@51 $generated@@26 $generated@@151) ($generated@@30 $generated@@152))))
 :pattern ( ($generated@@71 $generated@@151 ($generated@@30 $generated@@152)))
)))
(assert (forall (($generated@@153 Int) ) (! (= ($generated@@32 $generated@@5 ($generated@@9 ($generated@@27 $generated@@153))) ($generated@@25 $generated@@56 ($generated@@32 $generated@@5 ($generated@@9 $generated@@153))))
 :pattern ( ($generated@@32 $generated@@5 ($generated@@9 ($generated@@27 $generated@@153))))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@T) ) (! (= ($generated@@32 $generated@@155 ($generated@@25 $generated@@155 $generated@@154)) ($generated@@25 $generated@@56 ($generated@@32 $generated@@155 $generated@@154)))
 :pattern ( ($generated@@32 $generated@@155 ($generated@@25 $generated@@155 $generated@@154)))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (! ($generated@@76 $generated@@5 $generated@@157 $generated $generated@@156)
 :pattern ( ($generated@@76 $generated@@5 $generated@@157 $generated $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (! ($generated@@29 $generated@@5 $generated@@158 $generated)
 :pattern ( ($generated@@29 $generated@@5 $generated@@158 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@159 () Int)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () Int)
(declare-fun $generated@@163 () Bool)
(declare-fun $generated@@164 () Int)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () Int)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 (T@U) Bool)
(declare-fun $generated@@169 (T@U) Bool)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () Int)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () Int)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
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
 (=> (= (ControlFlow 0 0) 30) (let (($generated@@178  (=> (= (ControlFlow 0 18) (- 0 17)) (exists (($generated@@179 Int) ) (!  (and (<= $generated@@159 $generated@@179) ($generated@@31 $generated@@179))
 :pattern ( ($generated@@31 $generated@@179))
)))))
(let (($generated@@180  (=> (and (<= $generated@@159 $generated@@160) (= (ControlFlow 0 20) 18)) $generated@@178)))
(let (($generated@@181  (=> (and (not ($generated@@8 ($generated@@25 $generated@@4 ($generated@@7 true)))) (= (ControlFlow 0 19) 18)) $generated@@178)))
(let (($generated@@182  (=> (and (forall (($generated@@183 Int) ) (!  (=> (and (<= ($generated@@27 2) $generated@@183) (<= $generated@@183 $generated@@160)) ($generated@@33 $generated@@183))
 :pattern ( ($generated@@31 $generated@@183))
)) (= $generated@@161 ($generated@@54 ($generated@@92 $generated ($generated@@27 2) $generated@@160)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (<= 0 $generated@@162) (= (- $generated@@159 $generated@@160) $generated@@162))) (=> (or (<= 0 $generated@@162) (= (- $generated@@159 $generated@@160) $generated@@162)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (< (- $generated@@159 $generated@@160) $generated@@162)) (=> (< (- $generated@@159 $generated@@160) $generated@@162) (=> ($generated@@28 $generated@@161 $generated@@160) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> $generated@@163 (=> ($generated@@28 $generated@@161 $generated@@160) (or ($generated@@24 $generated@@161 $generated@@160) (forall (($generated@@184 Int) ) (!  (=> ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@184))) ($generated@@31 $generated@@184))
 :pattern ( ($generated@@31 $generated@@184))
 :pattern ( ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@184))))
)))))) (=> (=> $generated@@163 (=> ($generated@@28 $generated@@161 $generated@@160) (or ($generated@@24 $generated@@161 $generated@@160) (forall (($generated@@185 Int) ) (!  (=> ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@185))) ($generated@@31 $generated@@185))
 :pattern ( ($generated@@31 $generated@@185))
 :pattern ( ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@185))))
))))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> $generated@@163 (=> ($generated@@28 $generated@@161 $generated@@160) (or ($generated@@24 $generated@@161 $generated@@160) (forall (($generated@@186 Int) ) (!  (=> (and ($generated@@31 $generated@@186) (<= $generated@@186 $generated@@160)) ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@186))))
 :pattern ( ($generated@@20 $generated@@161 ($generated@@32 $generated@@5 ($generated@@9 $generated@@186))))
 :pattern ( ($generated@@31 $generated@@186))
))))))))))))))))
(let (($generated@@187  (=> (and (not (and (and (<= ($generated@@27 2) $generated@@164) (<= $generated@@164 $generated@@160)) ($generated@@31 $generated@@164))) (= (ControlFlow 0 10) 5)) $generated@@182)))
(let (($generated@@188  (=> (and (and (and (<= ($generated@@27 2) $generated@@164) (<= $generated@@164 $generated@@160)) ($generated@@31 $generated@@164)) (= (ControlFlow 0 9) 5)) $generated@@182)))
(let (($generated@@189  (=> (not (and (<= ($generated@@27 2) $generated@@164) (<= $generated@@164 $generated@@160))) (and (=> (= (ControlFlow 0 12) 9) $generated@@188) (=> (= (ControlFlow 0 12) 10) $generated@@187)))))
(let (($generated@@190  (=> (and (and (<= ($generated@@27 2) $generated@@164) (<= $generated@@164 $generated@@160)) (and ($generated@@76 $generated@@5 ($generated@@9 $generated@@164) $generated $generated@@165) ($generated@@33 $generated@@164))) (and (=> (= (ControlFlow 0 11) 9) $generated@@188) (=> (= (ControlFlow 0 11) 10) $generated@@187)))))
(let (($generated@@191  (=> (< $generated@@164 ($generated@@27 2)) (and (=> (= (ControlFlow 0 14) 11) $generated@@190) (=> (= (ControlFlow 0 14) 12) $generated@@189)))))
(let (($generated@@192  (=> (<= ($generated@@27 2) $generated@@164) (and (=> (= (ControlFlow 0 13) 11) $generated@@190) (=> (= (ControlFlow 0 13) 12) $generated@@189)))))
(let (($generated@@193  (and (=> (= (ControlFlow 0 15) 13) $generated@@192) (=> (= (ControlFlow 0 15) 14) $generated@@191))))
(let (($generated@@194 true))
(let (($generated@@195  (=> (< $generated@@160 $generated@@159) (and (=> (= (ControlFlow 0 16) 15) $generated@@193) (=> (= (ControlFlow 0 16) 3) $generated@@194)))))
(let (($generated@@196  (=> (and ($generated@@8 ($generated@@25 $generated@@4 ($generated@@7 true))) (= $generated@@162 (- $generated@@159 $generated@@166))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@197 Int) ) (!  (=> ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@197))) ($generated@@31 $generated@@197))
 :pattern ( ($generated@@31 $generated@@197))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@197))))
))))) (=> (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@198 Int) ) (!  (=> ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@198))) ($generated@@31 $generated@@198))
 :pattern ( ($generated@@31 $generated@@198))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@198))))
)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@199 Int) ) (!  (=> (and ($generated@@31 $generated@@199) (<= $generated@@199 $generated@@166)) ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@199))))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@199))))
 :pattern ( ($generated@@31 $generated@@199))
))))) (=> (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@200 Int) ) (!  (=> (and ($generated@@31 $generated@@200) (<= $generated@@200 $generated@@166)) ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@200))))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@200))))
 :pattern ( ($generated@@31 $generated@@200))
)))) (=> (and (and (and ($generated@@168 $generated@@165) ($generated@@169 $generated@@165)) (and (=> (< $generated@@166 $generated@@160) ($generated@@33 $generated@@160)) (< $generated@@166 $generated@@160))) (and (and ($generated@@33 $generated@@160) (and ($generated@@31 $generated@@160) (and (<= ($generated@@27 2) $generated@@160) (forall (($generated@@201 Int) ) (!  (=> (and (<= ($generated@@27 2) $generated@@201) (< $generated@@201 $generated@@160)) (or (not (= ($generated@@81 $generated@@160 $generated@@201) 0)) (not true)))
 :pattern ( ($generated@@81 $generated@@160 $generated@@201))
))))) (= $generated@@170 $generated@@165))) (and (=> (= (ControlFlow 0 21) 20) $generated@@180) (=> (= (ControlFlow 0 21) 16) $generated@@195))))))))))
(let (($generated@@202  (=> $generated@@163 (and (=> (= (ControlFlow 0 24) 19) $generated@@181) (=> (= (ControlFlow 0 24) 21) $generated@@196)))))
(let (($generated@@203 true))
(let (($generated@@204  (and (=> (= (ControlFlow 0 25) 2) $generated@@203) (=> (= (ControlFlow 0 25) 24) $generated@@202))))
(let (($generated@@205 true))
(let (($generated@@206  (=> (and (and ($generated@@29 $generated@@26 $generated@@167 ($generated@@30 $generated)) ($generated@@76 $generated@@26 $generated@@167 ($generated@@30 $generated) $generated@@170)) (and ($generated@@168 $generated@@170) ($generated@@169 $generated@@170))) (=> (and (and (and (and (and (not false) (<= 0 $generated@@166)) (= $generated@@171 0)) (=> $generated@@163 ($generated@@28 $generated@@167 $generated@@166))) (and (=> $generated@@163 (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@207 Int) ) (!  (=> ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@207))) ($generated@@31 $generated@@207))
 :pattern ( ($generated@@31 $generated@@207))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@207))))
))))) (=> $generated@@163 (=> ($generated@@28 $generated@@167 $generated@@166) (or ($generated@@24 $generated@@167 $generated@@166) (forall (($generated@@208 Int) ) (!  (=> (and ($generated@@31 $generated@@208) (<= $generated@@208 $generated@@166)) ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@208))))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@208))))
 :pattern ( ($generated@@31 $generated@@208))
))))))) (and (and (=> $generated@@163 (and ($generated@@28 $generated@@167 $generated@@166) (and ($generated@@24 $generated@@167 $generated@@166) (and (forall (($generated@@209 Int) ) (!  (=> ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@209))) ($generated@@31 $generated@@209))
 :pattern ( ($generated@@31 $generated@@209))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@209))))
)) (forall (($generated@@210 Int) ) (!  (=> (and ($generated@@31 $generated@@210) (<= $generated@@210 $generated@@166)) ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@210))))
 :pattern ( ($generated@@20 $generated@@167 ($generated@@32 $generated@@5 ($generated@@9 $generated@@210))))
 :pattern ( ($generated@@31 $generated@@210))
)))))) (= $generated@@172 $generated@@170)) (and (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (and (or (not (= $generated@@211 $generated@@173)) (not true)) ($generated@@8 ($generated@@51 $generated@@4 ($generated@@55 $generated@@106 $generated@@56 ($generated@@55 $generated@@105 ($generated@@108 $generated@@106 $generated@@56) $generated@@172 $generated@@211) $generated@@2)))) (or (= ($generated@@55 $generated@@106 $generated@@56 ($generated@@55 $generated@@105 ($generated@@108 $generated@@106 $generated@@56) $generated@@170 $generated@@211) $generated@@212) ($generated@@55 $generated@@106 $generated@@56 ($generated@@55 $generated@@105 ($generated@@108 $generated@@106 $generated@@56) $generated@@172 $generated@@211) $generated@@212)) ($generated@@8 ($generated@@104 $generated@@105 $generated@@106 $generated@@4 $generated@@174 $generated@@211 $generated@@212))))
 :pattern ( ($generated@@55 $generated@@106 $generated@@56 ($generated@@55 $generated@@105 ($generated@@108 $generated@@106 $generated@@56) $generated@@170 $generated@@211) $generated@@212))
)) (<= (- $generated@@159 $generated@@166) $generated@@175)))) (and (=> (= (ControlFlow 0 26) 1) $generated@@205) (=> (= (ControlFlow 0 26) 25) $generated@@204))))))
(let (($generated@@213  (=> (and (and (= $generated@@174 ($generated@@107 $generated@@173 $generated@@172 $generated@@2 false)) (= $generated@@171 ($generated@@27 0))) (and (= $generated@@176 ($generated@@25 $generated@@26 $generated@@21)) (= $generated@@175 (- $generated@@159 $generated@@171)))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> $generated@@163 (=> ($generated@@28 $generated@@176 $generated@@171) (or ($generated@@24 $generated@@176 $generated@@171) (forall (($generated@@214 Int) ) (!  (=> ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@214))) ($generated@@31 $generated@@214))
 :pattern ( ($generated@@31 $generated@@214))
 :pattern ( ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@214))))
)))))) (=> (=> $generated@@163 (=> ($generated@@28 $generated@@176 $generated@@171) (or ($generated@@24 $generated@@176 $generated@@171) (forall (($generated@@215 Int) ) (!  (=> ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@215))) ($generated@@31 $generated@@215))
 :pattern ( ($generated@@31 $generated@@215))
 :pattern ( ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@215))))
))))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> $generated@@163 (=> ($generated@@28 $generated@@176 $generated@@171) (or ($generated@@24 $generated@@176 $generated@@171) (forall (($generated@@216 Int) ) (!  (=> (and ($generated@@31 $generated@@216) (<= $generated@@216 $generated@@171)) ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@216))))
 :pattern ( ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@216))))
 :pattern ( ($generated@@31 $generated@@216))
)))))) (=> (=> $generated@@163 (=> ($generated@@28 $generated@@176 $generated@@171) (or ($generated@@24 $generated@@176 $generated@@171) (forall (($generated@@217 Int) ) (!  (=> (and ($generated@@31 $generated@@217) (<= $generated@@217 $generated@@171)) ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@217))))
 :pattern ( ($generated@@20 $generated@@176 ($generated@@32 $generated@@5 ($generated@@9 $generated@@217))))
 :pattern ( ($generated@@31 $generated@@217))
))))) (=> (= (ControlFlow 0 27) 26) $generated@@206))))))))
(let (($generated@@218  (=> (and ($generated@@168 $generated@@172) ($generated@@169 $generated@@172)) (=> (and (and (and ($generated@@29 $generated@@26 $generated@@177 ($generated@@30 $generated)) ($generated@@76 $generated@@26 $generated@@177 ($generated@@30 $generated) $generated@@172)) true) (and (= 6 $generated@@23) (= (ControlFlow 0 30) 27))) $generated@@213))))
$generated@@218))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)