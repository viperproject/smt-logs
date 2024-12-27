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
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@U Int) T@U)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@33 (T@U Int) T@U)
(declare-fun $generated@@36 (T@U Int) T@U)
(declare-fun $generated@@47 (T@U T@U) Bool)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@86 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@87 () T@T)
(declare-fun $generated@@88 () T@T)
(declare-fun $generated@@89 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@90 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@T T@T) T@T)
(declare-fun $generated@@93 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@94 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@95 (T@T) T@T)
(declare-fun $generated@@96 (T@T) T@T)
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
(assert (= ($generated@@20 $generated@@21) 0))
(assert (= ($generated@@3 $generated@@26) 3))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (or ($generated@@27 ($generated@@25 $generated@@26 $generated@@35)) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@35 ($generated@@29 $generated)))) (and (=> (and (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) ($generated@@32 0))) ($generated@@27 ($generated@@33 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) (= ($generated@@23 ($generated@@24 $generated@@34) ($generated@@25 $generated@@26 $generated@@35)) (ite  (and (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) ($generated@@32 0))) ($generated@@23 ($generated@@24 $generated@@34) ($generated@@33 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1))) $generated@@35))))
 :weight 3
 :pattern ( ($generated@@23 ($generated@@24 $generated@@34) ($generated@@25 $generated@@26 $generated@@35)))
))))
(assert (forall (($generated@@37 T@U) ($generated@@38 Int) ) (!  (=> (= $generated@@38 0) (= ($generated@@36 $generated@@37 $generated@@38) $generated@@37))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38))
)))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@32 $generated@@39) $generated@@39)
 :pattern ( ($generated@@32 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@25 $generated@@41 $generated@@40) $generated@@40)
 :pattern ( ($generated@@25 $generated@@41 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 Int) ($generated@@44 Int) ) (!  (=> (and (and (<= 0 $generated@@44) (< $generated@@44 $generated@@43)) (< $generated@@44 ($generated@@20 $generated@@42))) (= ($generated@@31 ($generated@@33 $generated@@42 $generated@@43) $generated@@44) ($generated@@31 $generated@@42 $generated@@44)))
 :weight 25
 :pattern ( ($generated@@31 ($generated@@33 $generated@@42 $generated@@43) $generated@@44))
 :pattern ( ($generated@@31 $generated@@42 $generated@@44) ($generated@@33 $generated@@42 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 Int) ) (!  (=> (and (<= 0 $generated@@46) (<= $generated@@46 ($generated@@20 $generated@@45))) (= ($generated@@20 ($generated@@36 $generated@@45 $generated@@46)) (- ($generated@@20 $generated@@45) $generated@@46)))
 :pattern ( ($generated@@20 ($generated@@36 $generated@@45 $generated@@46)))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@47 $generated@@48 $generated@@49)  (and (= ($generated@@20 $generated@@48) ($generated@@20 $generated@@49)) (forall (($generated@@50 Int) ) (!  (=> (and (<= 0 $generated@@50) (< $generated@@50 ($generated@@20 $generated@@48))) (= ($generated@@31 $generated@@48 $generated@@50) ($generated@@31 $generated@@49 $generated@@50)))
 :pattern ( ($generated@@31 $generated@@48 $generated@@50))
 :pattern ( ($generated@@31 $generated@@49 $generated@@50))
))))
 :pattern ( ($generated@@47 $generated@@48 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@51 $generated@@53 ($generated@@30 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@30 $generated@@53 $generated@@52))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58) ($generated@@55 $generated@@59 $generated@@56 $generated@@57 $generated@@58))
 :pattern ( ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 Int) ($generated@@62 Int) ) (!  (=> (and (and (<= 0 $generated@@61) (<= 0 $generated@@62)) (< $generated@@62 (- ($generated@@20 $generated@@60) $generated@@61))) (= ($generated@@31 ($generated@@36 $generated@@60 $generated@@61) $generated@@62) ($generated@@31 $generated@@60 (+ $generated@@62 $generated@@61))))
 :weight 25
 :pattern ( ($generated@@31 ($generated@@36 $generated@@60 $generated@@61) $generated@@62))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (or ($generated@@27 $generated@@64) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@64 ($generated@@29 $generated)))) (and (=> (and (or (not (= ($generated@@20 $generated@@64) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 $generated@@64 (- ($generated@@20 $generated@@64) 1)))) ($generated@@32 0))) ($generated@@27 ($generated@@33 $generated@@64 (- ($generated@@20 $generated@@64) 1)))) (= ($generated@@23 ($generated@@24 $generated@@63) $generated@@64) (ite  (and (or (not (= ($generated@@20 $generated@@64) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 $generated@@64 (- ($generated@@20 $generated@@64) 1)))) ($generated@@32 0))) ($generated@@23 $generated@@63 ($generated@@33 $generated@@64 (- ($generated@@20 $generated@@64) 1))) $generated@@64))))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@63) $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@47 $generated@@65 $generated@@66) (= $generated@@65 $generated@@66))
 :pattern ( ($generated@@47 $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 Int) ) (!  (=> (and (<= 0 $generated@@68) (<= $generated@@68 ($generated@@20 $generated@@67))) (= ($generated@@20 ($generated@@33 $generated@@67 $generated@@68)) $generated@@68))
 :pattern ( ($generated@@20 ($generated@@33 $generated@@67 $generated@@68)))
)))
(assert (forall (($generated@@70 T@U) ) (!  (=> ($generated@@69 $generated@@70 $generated) (and (= ($generated@@51 $generated@@5 ($generated@@30 $generated@@5 $generated@@70)) $generated@@70) ($generated@@28 $generated@@5 ($generated@@30 $generated@@5 $generated@@70) $generated)))
 :pattern ( ($generated@@69 $generated@@70 $generated))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@69 ($generated@@51 $generated@@73 $generated@@71) $generated@@72) ($generated@@28 $generated@@73 $generated@@71 $generated@@72))
 :pattern ( ($generated@@69 ($generated@@51 $generated@@73 $generated@@71) $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ) (! (<= 0 ($generated@@20 $generated@@74))
 :pattern ( ($generated@@20 $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@55 $generated@@26 $generated@@75 ($generated@@29 $generated@@76) $generated@@77) (forall (($generated@@78 Int) ) (!  (=> (and (<= 0 $generated@@78) (< $generated@@78 ($generated@@20 $generated@@75))) ($generated@@54 ($generated@@31 $generated@@75 $generated@@78) $generated@@76 $generated@@77))
 :pattern ( ($generated@@31 $generated@@75 $generated@@78))
)))
 :pattern ( ($generated@@55 $generated@@26 $generated@@75 ($generated@@29 $generated@@76) $generated@@77))
)))
(assert (forall (($generated@@80 T@U) ) (! (= ($generated@@79 ($generated@@29 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@29 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@19 ($generated@@29 $generated@@81)) $generated@@1)
 :pattern ( ($generated@@29 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@30 $generated@@83 ($generated@@51 $generated@@83 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@51 $generated@@83 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@23 ($generated@@24 $generated@@84) $generated@@85) ($generated@@23 $generated@@84 $generated@@85))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@84) $generated@@85))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@86 $generated@@97 $generated@@98 $generated@@99 ($generated@@93 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@103 $generated@@100) $generated@@102 $generated@@103) $generated@@100)
 :weight 0
)) (and (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@109 $generated@@111) (= ($generated@@86 $generated@@104 $generated@@105 $generated@@106 ($generated@@93 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@86 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)) (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@86 $generated@@113 $generated@@114 $generated@@115 ($generated@@93 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@119 $generated@@116) $generated@@120 $generated@@121) ($generated@@86 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@120 $generated@@121)))
 :weight 0
)))) (= ($generated@@3 $generated@@87) 4)) (= ($generated@@3 $generated@@88) 5)) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@90 $generated@@122 $generated@@123 ($generated@@94 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@126) $generated@@124)
 :weight 0
))) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@131 $generated@@132) (= ($generated@@90 $generated@@127 $generated@@128 ($generated@@94 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@129) $generated@@132) ($generated@@90 $generated@@127 $generated@@128 $generated@@130 $generated@@132)))
 :weight 0
))) (= ($generated@@3 $generated@@91) 6)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ) (= ($generated@@3 ($generated@@92 $generated@@133 $generated@@134)) 7))) (forall (($generated@@135 T@T) ($generated@@136 T@T) ) (! (= ($generated@@95 ($generated@@92 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@92 $generated@@135 $generated@@136))
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (! (= ($generated@@96 ($generated@@92 $generated@@137 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@92 $generated@@137 $generated@@138))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 Bool) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@8 ($generated@@86 $generated@@87 $generated@@88 $generated@@4 ($generated@@89 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))  (=> (and (or (not (= $generated@@143 $generated@@139)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@90 $generated@@88 $generated@@91 ($generated@@90 $generated@@87 ($generated@@92 $generated@@88 $generated@@91) $generated@@140 $generated@@143) $generated@@141)))) $generated@@142))
 :pattern ( ($generated@@86 $generated@@87 $generated@@88 $generated@@4 ($generated@@89 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> ($generated@@69 $generated@@145 ($generated@@29 $generated@@146)) (and (= ($generated@@51 $generated@@26 ($generated@@30 $generated@@26 $generated@@145)) $generated@@145) ($generated@@28 $generated@@26 ($generated@@30 $generated@@26 $generated@@145) ($generated@@29 $generated@@146))))
 :pattern ( ($generated@@69 $generated@@145 ($generated@@29 $generated@@146)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 Int) ($generated@@149 Int) ) (!  (=> (and (and (<= 0 $generated@@148) (<= $generated@@148 $generated@@149)) (< $generated@@149 ($generated@@20 $generated@@147))) (= ($generated@@31 ($generated@@36 $generated@@147 $generated@@148) (- $generated@@149 $generated@@148)) ($generated@@31 $generated@@147 $generated@@149)))
 :weight 25
 :pattern ( ($generated@@31 $generated@@147 $generated@@149) ($generated@@36 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 Int) ($generated@@152 Int) ) (!  (=> (and (and (<= 0 $generated@@151) (<= 0 $generated@@152)) (<= (+ $generated@@151 $generated@@152) ($generated@@20 $generated@@150))) (= ($generated@@36 ($generated@@36 $generated@@150 $generated@@151) $generated@@152) ($generated@@36 $generated@@150 (+ $generated@@151 $generated@@152))))
 :pattern ( ($generated@@36 ($generated@@36 $generated@@150 $generated@@151) $generated@@152))
)))
(assert (forall (($generated@@153 Int) ) (! (= ($generated@@51 $generated@@5 ($generated@@9 ($generated@@32 $generated@@153))) ($generated@@25 $generated@@91 ($generated@@51 $generated@@5 ($generated@@9 $generated@@153))))
 :pattern ( ($generated@@51 $generated@@5 ($generated@@9 ($generated@@32 $generated@@153))))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@T) ) (! (= ($generated@@51 $generated@@155 ($generated@@25 $generated@@155 $generated@@154)) ($generated@@25 $generated@@91 ($generated@@51 $generated@@155 $generated@@154)))
 :pattern ( ($generated@@51 $generated@@155 ($generated@@25 $generated@@155 $generated@@154)))
)))
(assert (forall (($generated@@156 T@U) ) (!  (=> (= ($generated@@20 $generated@@156) 0) (= $generated@@156 $generated@@21))
 :pattern ( ($generated@@20 $generated@@156))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 Int) ) (!  (=> (= $generated@@158 0) (= ($generated@@33 $generated@@157 $generated@@158) $generated@@21))
 :pattern ( ($generated@@33 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (! ($generated@@55 $generated@@5 $generated@@160 $generated $generated@@159)
 :pattern ( ($generated@@55 $generated@@5 $generated@@160 $generated $generated@@159))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (or ($generated@@27 $generated@@162) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@162 ($generated@@29 $generated)))) ($generated@@28 $generated@@26 ($generated@@23 $generated@@161 $generated@@162) ($generated@@29 $generated)))
 :pattern ( ($generated@@23 $generated@@161 $generated@@162))
))))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@28 $generated@@26 $generated@@163 ($generated@@29 $generated@@164)) (forall (($generated@@165 Int) ) (!  (=> (and (<= 0 $generated@@165) (< $generated@@165 ($generated@@20 $generated@@163))) ($generated@@69 ($generated@@31 $generated@@163 $generated@@165) $generated@@164))
 :pattern ( ($generated@@31 $generated@@163 $generated@@165))
)))
 :pattern ( ($generated@@28 $generated@@26 $generated@@163 ($generated@@29 $generated@@164)))
)))
(assert (forall (($generated@@166 T@U) ) (! ($generated@@28 $generated@@5 $generated@@166 $generated)
 :pattern ( ($generated@@28 $generated@@5 $generated@@166 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 (T@U) Bool)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@175  (=> (not ($generated@@47 $generated@@167 $generated@@21)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 ($generated@@32 1)) (<= ($generated@@32 1) ($generated@@20 $generated@@167)))) (=> (and (<= 0 ($generated@@32 1)) (<= ($generated@@32 1) ($generated@@20 $generated@@167))) (=> (= (ControlFlow 0 3) (- 0 2)) (and (<= 0 ($generated@@32 1)) (<= ($generated@@32 1) ($generated@@20 $generated@@167)))))))))
(let (($generated@@176 true))
(let (($generated@@177  (=> (and (and (and (= $generated@@168 ($generated@@89 $generated@@169 $generated@@170 $generated@@2 false)) ($generated@@55 $generated@@26 $generated@@167 ($generated@@29 $generated) $generated@@170)) (and ($generated@@27 $generated@@167) ($generated@@47 $generated@@167 ($generated@@23 ($generated@@24 $generated@@171) $generated@@167)))) (and (and ($generated@@172 $generated@@173) ($generated@@174 $generated@@173)) (= $generated@@170 $generated@@173))) (and (=> (= (ControlFlow 0 5) 1) $generated@@176) (=> (= (ControlFlow 0 5) 3) $generated@@175)))))
(let (($generated@@178  (=> (and ($generated@@172 $generated@@170) ($generated@@174 $generated@@170)) (=> (and (and ($generated@@28 $generated@@26 $generated@@167 ($generated@@29 $generated)) ($generated@@55 $generated@@26 $generated@@167 ($generated@@29 $generated) $generated@@170)) (and (= 1 $generated@@22) (= (ControlFlow 0 6) 5))) $generated@@177))))
$generated@@178)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)