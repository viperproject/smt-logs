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
(declare-fun $generated@@20 (T@U T@U T@U) T@U)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U T@U) Bool)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@55 () Int)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@63 (T@U T@U T@U) Bool)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@97 (T@U) Int)
(declare-fun $generated@@98 (T@U) Int)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@112 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@113 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@114 (T@T T@T) T@T)
(declare-fun $generated@@115 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@116 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@117 (T@T) T@T)
(declare-fun $generated@@118 (T@T) T@T)
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
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@33 $generated@@28 ($generated@@38 $generated@@41 $generated@@42) ($generated@@29 $generated@@40))  (and ($generated@@39 $generated@@41 $generated@@40) ($generated@@33 $generated@@28 $generated@@42 ($generated@@29 $generated@@40))))
 :pattern ( ($generated@@33 $generated@@28 ($generated@@38 $generated@@41 $generated@@42) ($generated@@29 $generated@@40)))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@43 $generated@@44) (= ($generated@@25 $generated@@44) $generated@@1))
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@45 $generated@@46) (= ($generated@@25 $generated@@46) $generated@@2))
 :pattern ( ($generated@@45 $generated@@46))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@48 $generated@@50 ($generated@@47 $generated@@50 $generated@@49)) $generated@@49)
 :pattern ( ($generated@@47 $generated@@50 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ) (!  (=> ($generated@@45 $generated@@51) (exists (($generated@@52 T@U) ($generated@@53 T@U) ) (= $generated@@51 ($generated@@38 $generated@@52 $generated@@53))))
 :pattern ( ($generated@@45 $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ) (!  (=> ($generated@@43 $generated@@54) (= $generated@@54 $generated@@26))
 :pattern ( ($generated@@43 $generated@@54))
)))
(assert  (=> (<= 1 $generated@@55) (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> (or ($generated@@56 $generated@@58 $generated@@60) (and (< 1 $generated@@55) ($generated@@33 $generated@@28 $generated@@60 ($generated@@29 $generated@@58)))) (and (=> (not ($generated@@43 $generated@@60)) (let (($generated@@61 ($generated@@57 $generated@@60)))
($generated@@56 $generated@@58 $generated@@61))) (= ($generated@@20 $generated@@58 ($generated@@21 $generated@@59) $generated@@60) (ite ($generated@@43 $generated@@60) $generated@@60 (let (($generated@@62 ($generated@@57 $generated@@60)))
($generated@@20 $generated@@58 $generated@@59 $generated@@62))))))
 :pattern ( ($generated@@20 $generated@@58 ($generated@@21 $generated@@59) $generated@@60))
))))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@63 ($generated@@48 $generated@@67 $generated@@64) $generated@@65 $generated@@66) ($generated@@27 $generated@@67 $generated@@64 $generated@@65 $generated@@66))
 :pattern ( ($generated@@63 ($generated@@48 $generated@@67 $generated@@64) $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@70 T@U) ) (!  (and (= ($generated@@68 ($generated@@29 $generated@@70)) $generated@@0) (= ($generated@@69 ($generated@@29 $generated@@70)) $generated@@3))
 :pattern ( ($generated@@29 $generated@@70))
)))
(assert (= ($generated@@4 $generated@@71) 4))
(assert  (=> (<= 1 $generated@@55) (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (=> (or ($generated@@56 $generated@@72 ($generated@@35 $generated@@28 $generated@@74)) (and (< 1 $generated@@55) ($generated@@33 $generated@@28 $generated@@74 ($generated@@29 $generated@@72)))) (and (=> (not ($generated@@9 ($generated@@35 $generated@@5 ($generated@@8 ($generated@@43 ($generated@@35 $generated@@28 $generated@@74)))))) (let (($generated@@75 ($generated@@35 $generated@@28 ($generated@@57 ($generated@@35 $generated@@28 $generated@@74)))))
($generated@@56 $generated@@72 $generated@@75))) (= ($generated@@20 $generated@@72 ($generated@@21 $generated@@73) ($generated@@35 $generated@@28 $generated@@74)) (ite ($generated@@43 ($generated@@35 $generated@@28 $generated@@74)) $generated@@74 (let (($generated@@76 ($generated@@35 $generated@@28 ($generated@@57 ($generated@@35 $generated@@28 $generated@@74)))))
($generated@@35 $generated@@28 ($generated@@20 $generated@@72 ($generated@@21 $generated@@73) $generated@@76)))))))
 :weight 3
 :pattern ( ($generated@@20 $generated@@72 ($generated@@21 $generated@@73) ($generated@@35 $generated@@28 $generated@@74)))
))))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> ($generated@@33 $generated@@28 $generated@@78 ($generated@@29 $generated@@77)) (or ($generated@@43 $generated@@78) ($generated@@45 $generated@@78)))
 :pattern ( ($generated@@45 $generated@@78) ($generated@@33 $generated@@28 $generated@@78 ($generated@@29 $generated@@77)))
 :pattern ( ($generated@@43 $generated@@78) ($generated@@33 $generated@@28 $generated@@78 ($generated@@29 $generated@@77)))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@39 ($generated@@48 $generated@@81 $generated@@79) $generated@@80) ($generated@@33 $generated@@81 $generated@@79 $generated@@80))
 :pattern ( ($generated@@39 ($generated@@48 $generated@@81 $generated@@79) $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@25 ($generated@@38 $generated@@82 $generated@@83)) $generated@@2)
 :pattern ( ($generated@@38 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@84 ($generated@@38 $generated@@85 $generated@@86)) $generated@@85)
 :pattern ( ($generated@@38 $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@57 ($generated@@38 $generated@@87 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@38 $generated@@87 $generated@@88))
)))
(assert  (=> (<= 1 $generated@@55) (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (and (or ($generated@@56 $generated@@90 $generated@@92) (and (< 1 $generated@@55) (and ($generated@@33 $generated@@28 $generated@@92 ($generated@@29 $generated@@90)) ($generated@@27 $generated@@28 $generated@@92 ($generated@@29 $generated@@90) $generated@@89)))) ($generated@@30 $generated@@89)) ($generated@@27 $generated@@28 ($generated@@20 $generated@@90 $generated@@91 $generated@@92) ($generated@@29 $generated@@90) $generated@@89))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@20 $generated@@90 $generated@@91 $generated@@92) ($generated@@29 $generated@@90) $generated@@89))
))))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@93 ($generated@@29 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@29 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@47 $generated@@96 ($generated@@48 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@48 $generated@@96 $generated@@95))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (< ($generated@@97 $generated@@99) ($generated@@98 ($generated@@38 $generated@@99 $generated@@100)))
 :pattern ( ($generated@@38 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (< ($generated@@98 $generated@@102) ($generated@@98 ($generated@@38 $generated@@101 $generated@@102)))
 :pattern ( ($generated@@38 $generated@@101 $generated@@102))
)))
(assert  (=> (<= 1 $generated@@55) (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> (or ($generated@@56 $generated@@103 $generated@@105) (and (< 1 $generated@@55) ($generated@@33 $generated@@28 $generated@@105 ($generated@@29 $generated@@103)))) ($generated@@33 $generated@@28 ($generated@@20 $generated@@103 $generated@@104 $generated@@105) ($generated@@29 $generated@@103)))
 :pattern ( ($generated@@20 $generated@@103 $generated@@104 $generated@@105))
))))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (and ($generated@@30 $generated@@108) (and ($generated@@45 $generated@@106) ($generated@@27 $generated@@28 $generated@@106 ($generated@@29 $generated@@107) $generated@@108))) ($generated@@63 ($generated@@84 $generated@@106) $generated@@107 $generated@@108))
 :pattern ( ($generated@@63 ($generated@@84 $generated@@106) $generated@@107 $generated@@108))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@109 $generated@@119 $generated@@120 $generated@@121 ($generated@@115 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@124 $generated@@125) $generated@@122)
 :weight 0
)) (and (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@131 $generated@@133) (= ($generated@@109 $generated@@126 $generated@@127 $generated@@128 ($generated@@115 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@109 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (or (= $generated@@141 $generated@@143) (= ($generated@@109 $generated@@135 $generated@@136 $generated@@137 ($generated@@115 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@142 $generated@@143) ($generated@@109 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@142 $generated@@143)))
 :weight 0
)))) (= ($generated@@4 $generated@@110) 5)) (= ($generated@@4 $generated@@111) 6)) (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@113 $generated@@144 $generated@@145 ($generated@@116 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@146) $generated@@148) $generated@@146)
 :weight 0
))) (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (!  (or (= $generated@@153 $generated@@154) (= ($generated@@113 $generated@@149 $generated@@150 ($generated@@116 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@151) $generated@@154) ($generated@@113 $generated@@149 $generated@@150 $generated@@152 $generated@@154)))
 :weight 0
))) (forall (($generated@@155 T@T) ($generated@@156 T@T) ) (= ($generated@@4 ($generated@@114 $generated@@155 $generated@@156)) 7))) (forall (($generated@@157 T@T) ($generated@@158 T@T) ) (! (= ($generated@@117 ($generated@@114 $generated@@157 $generated@@158)) $generated@@157)
 :pattern ( ($generated@@114 $generated@@157 $generated@@158))
))) (forall (($generated@@159 T@T) ($generated@@160 T@T) ) (! (= ($generated@@118 ($generated@@114 $generated@@159 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@114 $generated@@159 $generated@@160))
))))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 Bool) ($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@9 ($generated@@109 $generated@@110 $generated@@111 $generated@@5 ($generated@@112 $generated@@161 $generated@@162 $generated@@163 $generated@@164) $generated@@165 $generated@@166))  (=> (and (or (not (= $generated@@165 $generated@@161)) (not true)) ($generated@@9 ($generated@@47 $generated@@5 ($generated@@113 $generated@@111 $generated@@71 ($generated@@113 $generated@@110 ($generated@@114 $generated@@111 $generated@@71) $generated@@162 $generated@@165) $generated@@163)))) $generated@@164))
 :pattern ( ($generated@@109 $generated@@110 $generated@@111 $generated@@5 ($generated@@112 $generated@@161 $generated@@162 $generated@@163 $generated@@164) $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@97 ($generated@@48 $generated@@28 $generated@@167)) ($generated@@98 $generated@@167))
 :pattern ( ($generated@@97 ($generated@@48 $generated@@28 $generated@@167)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@39 $generated@@169 ($generated@@29 $generated@@168)) (and (= ($generated@@48 $generated@@28 ($generated@@47 $generated@@28 $generated@@169)) $generated@@169) ($generated@@33 $generated@@28 ($generated@@47 $generated@@28 $generated@@169) ($generated@@29 $generated@@168))))
 :pattern ( ($generated@@39 $generated@@169 ($generated@@29 $generated@@168)))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@30 $generated@@172) (and ($generated@@45 $generated@@170) ($generated@@27 $generated@@28 $generated@@170 ($generated@@29 $generated@@171) $generated@@172))) ($generated@@27 $generated@@28 ($generated@@57 $generated@@170) ($generated@@29 $generated@@171) $generated@@172))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@57 $generated@@170) ($generated@@29 $generated@@171) $generated@@172))
)))
(assert (= $generated@@26 ($generated@@35 $generated@@28 $generated@@26)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@38 ($generated@@35 $generated@@71 $generated@@173) ($generated@@35 $generated@@28 $generated@@174)) ($generated@@35 $generated@@28 ($generated@@38 $generated@@173 $generated@@174)))
 :pattern ( ($generated@@38 ($generated@@35 $generated@@71 $generated@@173) ($generated@@35 $generated@@28 $generated@@174)))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@T) ) (! (= ($generated@@48 $generated@@176 ($generated@@35 $generated@@176 $generated@@175)) ($generated@@35 $generated@@71 ($generated@@48 $generated@@176 $generated@@175)))
 :pattern ( ($generated@@48 $generated@@176 ($generated@@35 $generated@@176 $generated@@175)))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@30 $generated@@180) (= ($generated@@27 $generated@@28 ($generated@@38 $generated@@178 $generated@@179) ($generated@@29 $generated@@177) $generated@@180)  (and ($generated@@63 $generated@@178 $generated@@177 $generated@@180) ($generated@@27 $generated@@28 $generated@@179 ($generated@@29 $generated@@177) $generated@@180))))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@38 $generated@@178 $generated@@179) ($generated@@29 $generated@@177) $generated@@180))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@181 () T@U)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@193 true))
(let (($generated@@194  (=> (= $generated@@181 ($generated@@38 $generated@@182 $generated@@183)) (=> (and ($generated@@39 $generated@@182 $generated@@184) ($generated@@33 $generated@@28 $generated@@183 ($generated@@29 $generated@@184))) (=> (and (and (and (= $generated@@185 $generated@@183) ($generated@@33 $generated@@28 $generated@@185 ($generated@@29 $generated@@184))) (and (= $generated@@186 $generated@@185) (= $generated@@187 $generated@@182))) (and (and ($generated@@39 $generated@@187 $generated@@184) (= $generated@@188 $generated@@187)) (and ($generated@@27 $generated@@28 $generated@@186 ($generated@@29 $generated@@184) $generated@@189) (= (ControlFlow 0 4) (- 0 3))))) (< ($generated@@98 $generated@@186) ($generated@@98 $generated@@181)))))))
(let (($generated@@195  (=> (or (not (= $generated@@181 $generated@@26)) (not true)) (and (=> (= (ControlFlow 0 6) 4) $generated@@194) (=> (= (ControlFlow 0 6) 5) $generated@@193)))))
(let (($generated@@196 true))
(let (($generated@@197 true))
(let (($generated@@198  (=> (= $generated@@190 ($generated@@112 $generated@@191 $generated@@189 $generated false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@197) (=> (= (ControlFlow 0 7) 2) $generated@@196)) (=> (= (ControlFlow 0 7) 6) $generated@@195)))))
(let (($generated@@199  (=> (and (and (and ($generated@@30 $generated@@189) ($generated@@192 $generated@@189)) ($generated@@33 $generated@@28 $generated@@181 ($generated@@29 $generated@@184))) (and (= 1 $generated@@55) (= (ControlFlow 0 8) 7))) $generated@@198)))
$generated@@199))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)