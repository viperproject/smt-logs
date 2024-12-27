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
(declare-fun $generated@@1 (T@T) Int)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 (Bool) T@U)
(declare-fun $generated@@6 (T@U) Bool)
(declare-fun $generated@@7 (Int) T@U)
(declare-fun $generated@@8 (T@U) Int)
(declare-fun $generated@@9 (Real) T@U)
(declare-fun $generated@@10 (T@U) Real)
(declare-fun $generated@@17 (T@U T@U) T@U)
(declare-fun $generated@@18 (T@U T@U) Bool)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@36 (T@U T@U) Bool)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 (T@T T@T) T@T)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@T) T@T)
(declare-fun $generated@@45 (T@T) T@T)
(declare-fun $generated@@66 (T@U T@U) Bool)
(declare-fun $generated@@70 (T@T T@U) T@U)
(declare-fun $generated@@73 (T@T T@U T@U) Bool)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@80 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@95 (T@U T@U) Bool)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@114 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@115 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@116 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@1 $generated@@2) 0) (= ($generated@@1 $generated@@3) 1)) (= ($generated@@1 $generated@@4) 2)) (forall (($generated@@11 Bool) ) (! (= ($generated@@6 ($generated@@5 $generated@@11)) $generated@@11)
 :pattern ( ($generated@@5 $generated@@11))
))) (forall (($generated@@12 T@U) ) (! (= ($generated@@5 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 Int) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Real) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))))
(assert (distinct $generated $generated@@0)
)
(assert (forall (($generated@@19 T@U) ($generated@@20 T@U) ) (! ($generated@@18 ($generated@@17 $generated@@19 $generated@@20) $generated@@20)
 :pattern ( ($generated@@17 $generated@@19 $generated@@20))
)))
(assert (forall (($generated@@21 T@U) ($generated@@22 T@U) ($generated@@23 T@U) ) (!  (=> ($generated@@18 $generated@@21 $generated@@23) ($generated@@18 ($generated@@17 $generated@@21 $generated@@22) $generated@@23))
 :pattern ( ($generated@@17 $generated@@21 $generated@@22) ($generated@@18 $generated@@21 $generated@@23))
)))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 T@U) ) (! (= ($generated@@18 ($generated@@17 $generated@@24 $generated@@25) $generated@@26)  (or (= $generated@@26 $generated@@25) ($generated@@18 $generated@@24 $generated@@26)))
 :pattern ( ($generated@@18 ($generated@@17 $generated@@24 $generated@@25) $generated@@26))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> ($generated@@18 $generated@@29 $generated@@30) (not ($generated@@18 ($generated@@27 $generated@@28 $generated@@29) $generated@@30)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@29) ($generated@@18 $generated@@29 $generated@@30))
)))
(assert (forall (($generated@@32 T@U) ) (!  (not ($generated@@18 $generated@@31 $generated@@32))
 :pattern ( ($generated@@18 $generated@@31 $generated@@32))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@18 ($generated@@27 $generated@@33 $generated@@34) $generated@@35)  (and ($generated@@18 $generated@@33 $generated@@35) (not ($generated@@18 $generated@@34 $generated@@35))))
 :pattern ( ($generated@@18 ($generated@@27 $generated@@33 $generated@@34) $generated@@35))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@46 T@T) ($generated@@47 T@T) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@37 $generated@@46 $generated@@47 ($generated@@43 $generated@@46 $generated@@47 $generated@@49 $generated@@50 $generated@@48) $generated@@50) $generated@@48)
 :weight 0
)) (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (or (= $generated@@55 $generated@@56) (= ($generated@@37 $generated@@51 $generated@@52 ($generated@@43 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@56) ($generated@@37 $generated@@51 $generated@@52 $generated@@54 $generated@@56)))
 :weight 0
))) (= ($generated@@1 $generated@@38) 3)) (= ($generated@@1 $generated@@39) 4)) (= ($generated@@1 $generated@@40) 5)) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (= ($generated@@1 ($generated@@41 $generated@@57 $generated@@58)) 6))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@44 ($generated@@41 $generated@@59 $generated@@60)) $generated@@59)
 :pattern ( ($generated@@41 $generated@@59 $generated@@60))
))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@45 ($generated@@41 $generated@@61 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@41 $generated@@61 $generated@@62))
))))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> ($generated@@36 $generated@@63 $generated@@64) (forall (($generated@@65 T@U) ) (!  (=> ($generated@@6 ($generated@@42 $generated@@2 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@63 $generated@@65) $generated@@0))) ($generated@@6 ($generated@@42 $generated@@2 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@64 $generated@@65) $generated@@0))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@64 $generated@@65) $generated@@0))
)))
 :pattern ( ($generated@@36 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@66 $generated@@67 $generated@@68) (forall (($generated@@69 T@U) ) (!  (=> ($generated@@18 $generated@@67 $generated@@69) ($generated@@18 $generated@@68 $generated@@69))
 :pattern ( ($generated@@18 $generated@@67 $generated@@69))
 :pattern ( ($generated@@18 $generated@@68 $generated@@69))
)))
 :pattern ( ($generated@@66 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@T) ) (! (= ($generated@@70 $generated@@72 ($generated@@42 $generated@@72 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@42 $generated@@72 $generated@@71))
)))
(assert (= ($generated@@1 $generated@@74) 7))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@73 $generated@@74 $generated@@77 ($generated@@75 $generated@@78)) (forall (($generated@@79 T@U) ) (!  (=> ($generated@@18 $generated@@77 $generated@@79) ($generated@@76 $generated@@79 $generated@@78))
 :pattern ( ($generated@@18 $generated@@77 $generated@@79))
)))
 :pattern ( ($generated@@73 $generated@@74 $generated@@77 ($generated@@75 $generated@@78)))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@80 ($generated@@70 $generated@@85 $generated@@82) $generated@@83 $generated@@84) ($generated@@81 $generated@@85 $generated@@82 $generated@@83 $generated@@84))
 :pattern ( ($generated@@80 ($generated@@70 $generated@@85 $generated@@82) $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> ($generated@@36 $generated@@86 $generated@@87) (=> ($generated@@80 $generated@@88 $generated@@89 $generated@@86) ($generated@@80 $generated@@88 $generated@@89 $generated@@87)))
 :pattern ( ($generated@@36 $generated@@86 $generated@@87) ($generated@@80 $generated@@88 $generated@@89 $generated@@86))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (!  (=> ($generated@@36 $generated@@90 $generated@@91) (=> ($generated@@81 $generated@@94 $generated@@92 $generated@@93 $generated@@90) ($generated@@81 $generated@@94 $generated@@92 $generated@@93 $generated@@91)))
 :pattern ( ($generated@@36 $generated@@90 $generated@@91) ($generated@@81 $generated@@94 $generated@@92 $generated@@93 $generated@@90))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> ($generated@@95 $generated@@96 $generated@@97) (= $generated@@96 $generated@@97))
 :pattern ( ($generated@@95 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> (or (not (= $generated@@98 $generated@@100)) (not true)) (=> (and ($generated@@36 $generated@@98 $generated@@99) ($generated@@36 $generated@@99 $generated@@100)) ($generated@@36 $generated@@98 $generated@@100)))
 :pattern ( ($generated@@36 $generated@@98 $generated@@99) ($generated@@36 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@76 ($generated@@70 $generated@@103 $generated@@101) $generated@@102) ($generated@@73 $generated@@103 $generated@@101 $generated@@102))
 :pattern ( ($generated@@76 ($generated@@70 $generated@@103 $generated@@101) $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@81 $generated@@74 $generated@@104 ($generated@@75 $generated@@105) $generated@@106) (forall (($generated@@107 T@U) ) (!  (=> ($generated@@18 $generated@@104 $generated@@107) ($generated@@80 $generated@@107 $generated@@105 $generated@@106))
 :pattern ( ($generated@@18 $generated@@104 $generated@@107))
)))
 :pattern ( ($generated@@81 $generated@@74 $generated@@104 ($generated@@75 $generated@@105) $generated@@106))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@108 ($generated@@75 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@75 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ) (! (= ($generated@@110 ($generated@@75 $generated@@111)) $generated)
 :pattern ( ($generated@@75 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@42 $generated@@113 ($generated@@70 $generated@@113 $generated@@112)) $generated@@112)
 :pattern ( ($generated@@70 $generated@@113 $generated@@112))
)))
(assert  (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@114 $generated@@117 $generated@@118 $generated@@119 ($generated@@116 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@122 $generated@@123) $generated@@120)
 :weight 0
)) (and (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@114 $generated@@124 $generated@@125 $generated@@126 ($generated@@116 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@130 $generated@@127) $generated@@131 $generated@@132) ($generated@@114 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@131 $generated@@132)))
 :weight 0
)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (or (= $generated@@139 $generated@@141) (= ($generated@@114 $generated@@133 $generated@@134 $generated@@135 ($generated@@116 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@140 $generated@@141) ($generated@@114 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@140 $generated@@141)))
 :weight 0
)))))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 Bool) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@6 ($generated@@114 $generated@@40 $generated@@38 $generated@@2 ($generated@@115 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))  (=> (and (or (not (= $generated@@146 $generated@@142)) (not true)) ($generated@@6 ($generated@@42 $generated@@2 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@143 $generated@@146) $generated@@144)))) $generated@@145))
 :pattern ( ($generated@@114 $generated@@40 $generated@@38 $generated@@2 ($generated@@115 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (!  (=> ($generated@@76 $generated@@148 ($generated@@75 $generated@@149)) (and (= ($generated@@70 $generated@@74 ($generated@@42 $generated@@74 $generated@@148)) $generated@@148) ($generated@@73 $generated@@74 ($generated@@42 $generated@@74 $generated@@148) ($generated@@75 $generated@@149))))
 :pattern ( ($generated@@76 $generated@@148 ($generated@@75 $generated@@149)))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@95 $generated@@150 $generated@@151) (forall (($generated@@152 T@U) ) (! (= ($generated@@18 $generated@@150 $generated@@152) ($generated@@18 $generated@@151 $generated@@152))
 :pattern ( ($generated@@18 $generated@@150 $generated@@152))
 :pattern ( ($generated@@18 $generated@@151 $generated@@152))
)))
 :pattern ( ($generated@@95 $generated@@150 $generated@@151))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@153 () Bool)
(declare-fun $generated@@154 () Bool)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () Bool)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () Bool)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () Bool)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 (T@U) Bool)
(declare-fun $generated@@171 (T@U) Bool)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () Bool)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () Int)
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
 (=> (= (ControlFlow 0 0) 21) (let (($generated@@176 true))
(let (($generated@@177  (=> (and (not $generated@@153) (= (ControlFlow 0 16) 14)) $generated@@176)))
(let (($generated@@178  (=> (and $generated@@153 (= (ControlFlow 0 15) 14)) $generated@@176)))
(let (($generated@@179  (=> (not $generated@@154) (and (=> (= (ControlFlow 0 17) 15) $generated@@178) (=> (= (ControlFlow 0 17) 16) $generated@@177)))))
(let (($generated@@180  (and (=> (= (ControlFlow 0 4) (- 0 6)) (exists (($generated@@181 T@U) )  (and ($generated@@76 $generated@@181 $generated@@155) ($generated@@18 $generated@@156 $generated@@181)))) (=> (exists (($generated@@182 T@U) )  (and ($generated@@76 $generated@@182 $generated@@155) ($generated@@18 $generated@@156 $generated@@182))) (=> (and (=> true (and ($generated@@76 $generated@@157 $generated@@155) ($generated@@80 $generated@@157 $generated@@155 $generated@@158))) ($generated@@18 $generated@@156 $generated@@157)) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (=> (and (= $generated@@159 ($generated@@27 $generated@@156 ($generated@@17 $generated@@31 $generated@@157))) (= (ControlFlow 0 4) (- 0 3))) (and ($generated@@66 (ite $generated@@160 $generated@@159 $generated@@31) $generated@@161) (not ($generated@@66 $generated@@161 (ite $generated@@160 $generated@@159 $generated@@31)))))))))))
(let (($generated@@183  (=> (and (not (and ($generated@@76 $generated@@162 $generated@@155) ($generated@@80 $generated@@162 $generated@@155 $generated@@158))) (= (ControlFlow 0 8) 4)) $generated@@180)))
(let (($generated@@184  (=> (and (and ($generated@@76 $generated@@162 $generated@@155) ($generated@@80 $generated@@162 $generated@@155 $generated@@158)) (= (ControlFlow 0 7) 4)) $generated@@180)))
(let (($generated@@185  (=> (and (and $generated@@153 (not ($generated@@95 $generated@@156 $generated@@31))) (= $generated@@161 (ite $generated@@153 $generated@@156 $generated@@31))) (and (=> (= (ControlFlow 0 9) 7) $generated@@184) (=> (= (ControlFlow 0 9) 8) $generated@@183)))))
(let (($generated@@186 true))
(let (($generated@@187  (and (=> (= (ControlFlow 0 10) 2) $generated@@186) (=> (= (ControlFlow 0 10) 9) $generated@@185))))
(let (($generated@@188  (=> (and (not $generated@@153) (= (ControlFlow 0 12) 10)) $generated@@187)))
(let (($generated@@189  (=> (and $generated@@153 (= (ControlFlow 0 11) 10)) $generated@@187)))
(let (($generated@@190  (=> $generated@@154 (and (=> (= (ControlFlow 0 13) 11) $generated@@189) (=> (= (ControlFlow 0 13) 12) $generated@@188)))))
(let (($generated@@191  (and (=> (= (ControlFlow 0 18) 17) $generated@@179) (=> (= (ControlFlow 0 18) 13) $generated@@190))))
(let (($generated@@192 true))
(let (($generated@@193  (=> (=> $generated@@163 (and ($generated@@76 $generated@@164 $generated@@155) ($generated@@80 $generated@@164 $generated@@155 $generated@@158))) (=> (and (and (and ($generated@@73 $generated@@74 $generated@@156 ($generated@@75 $generated@@155)) ($generated@@81 $generated@@74 $generated@@156 ($generated@@75 $generated@@155) $generated@@158)) (not false)) (and (and (forall (($generated@@194 T@U) ) (!  (=> (and (or (not (= $generated@@194 $generated@@165)) (not true)) ($generated@@6 ($generated@@42 $generated@@2 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@194) $generated@@0)))) (= ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@194) ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@194)))
 :pattern ( ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@194))
)) ($generated@@36 $generated@@158 $generated@@158)) (and (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (and (or (not (= $generated@@195 $generated@@165)) (not true)) ($generated@@6 ($generated@@42 $generated@@2 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@195) $generated@@0)))) (or (= ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@195) $generated@@196) ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@195) $generated@@196)) ($generated@@6 ($generated@@114 $generated@@40 $generated@@38 $generated@@2 $generated@@166 $generated@@195 $generated@@196))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@40 ($generated@@41 $generated@@38 $generated@@39) $generated@@158 $generated@@195) $generated@@196))
)) ($generated@@66 (ite $generated@@153 $generated@@156 $generated@@31) $generated@@167)))) (and (=> (= (ControlFlow 0 19) 1) $generated@@192) (=> (= (ControlFlow 0 19) 18) $generated@@191))))))
(let (($generated@@197  (=> (= $generated@@166 ($generated@@115 $generated@@165 $generated@@158 $generated@@0 false)) (=> (and (= $generated@@167 (ite $generated@@168 $generated@@169 $generated@@31)) (= (ControlFlow 0 20) 19)) $generated@@193))))
(let (($generated@@198  (=> (and (and ($generated@@170 $generated@@158) ($generated@@171 $generated@@158)) (and ($generated@@73 $generated@@74 $generated@@169 ($generated@@75 $generated@@155)) ($generated@@81 $generated@@74 $generated@@169 ($generated@@75 $generated@@155) $generated@@158))) (=> (and (and (and ($generated@@73 $generated@@74 $generated@@172 ($generated@@75 $generated@@155)) ($generated@@81 $generated@@74 $generated@@172 ($generated@@75 $generated@@155) $generated@@158)) true) (and (and (=> $generated@@173 (and ($generated@@76 $generated@@174 $generated@@155) ($generated@@80 $generated@@174 $generated@@155 $generated@@158))) true) (and (= 0 $generated@@175) (= (ControlFlow 0 21) 20)))) $generated@@197))))
$generated@@198)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)