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
(declare-fun $generated@@7 () T@U)
(declare-fun $generated@@8 () T@U)
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 (T@T) Int)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 (Bool) T@U)
(declare-fun $generated@@20 (T@U) Bool)
(declare-fun $generated@@21 (Int) T@U)
(declare-fun $generated@@22 (T@U) Int)
(declare-fun $generated@@23 (Real) T@U)
(declare-fun $generated@@24 (T@U) Real)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@53 (Int) Int)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@58 () Int)
(declare-fun $generated@@59 (Int) Bool)
(declare-fun $generated@@60 (Int) Bool)
(declare-fun $generated@@62 (Int) Bool)
(declare-fun $generated@@63 (Int) Bool)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@T T@U) T@U)
(declare-fun $generated@@69 (T@T T@U T@U) Bool)
(declare-fun $generated@@73 (T@U T@U) Bool)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@75 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@76 () T@T)
(declare-fun $generated@@77 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@93 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U T@U T@U) Bool)
(declare-fun $generated@@111 (T@U Int Int) T@U)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@133 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@134 () T@T)
(declare-fun $generated@@135 () T@T)
(declare-fun $generated@@136 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@137 (T@T T@T) T@T)
(declare-fun $generated@@138 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@T) T@T)
(declare-fun $generated@@140 (T@T) T@T)
(declare-fun $generated@@178 (T@U Int) T@U)
(declare-fun $generated@@184 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@15 $generated@@16) 0) (= ($generated@@15 $generated@@17) 1)) (= ($generated@@15 $generated@@18) 2)) (forall (($generated@@25 Bool) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Int) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 Real) ) (! (= ($generated@@24 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 T@U) ) (! (= ($generated@@23 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14)
)
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! ($generated@@31 $generated@@17 $generated@@33 $generated@@32 $generated@@34)
 :pattern ( ($generated@@31 $generated@@17 $generated@@33 $generated@@32 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! ($generated@@31 $generated@@17 $generated@@36 $generated@@35 $generated@@37)
 :pattern ( ($generated@@31 $generated@@17 $generated@@36 $generated@@35 $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! ($generated@@31 $generated@@17 $generated@@39 $generated@@38 $generated@@40)
 :pattern ( ($generated@@31 $generated@@17 $generated@@39 $generated@@38 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (! ($generated@@31 $generated@@17 $generated@@42 $generated@@41 $generated@@43)
 :pattern ( ($generated@@31 $generated@@17 $generated@@42 $generated@@41 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ) (! ($generated@@31 $generated@@17 $generated@@45 $generated@@44 $generated@@46)
 :pattern ( ($generated@@31 $generated@@17 $generated@@45 $generated@@44 $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! ($generated@@31 $generated@@17 $generated@@48 $generated@@47 $generated@@49)
 :pattern ( ($generated@@31 $generated@@17 $generated@@48 $generated@@47 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! ($generated@@31 $generated@@17 $generated@@51 $generated@@50 $generated@@52)
 :pattern ( ($generated@@31 $generated@@17 $generated@@51 $generated@@50 $generated@@52))
)))
(assert (forall (($generated@@54 Int) ) (! (= ($generated@@53 $generated@@54) $generated@@54)
 :pattern ( ($generated@@53 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 $generated@@56) $generated@@56)
 :pattern ( ($generated@@55 $generated@@57 $generated@@56))
)))
(assert  (=> (<= 0 $generated@@58) (forall (($generated@@61 Int) ) (!  (=> (or ($generated@@60 $generated@@61) (< 0 $generated@@58)) (= ($generated@@59 $generated@@61)  (or (not (= $generated@@61 3)) (not true))))
 :pattern ( ($generated@@59 $generated@@61))
))))
(assert  (=> (<= 0 $generated@@58) (forall (($generated@@64 Int) ) (!  (=> (or ($generated@@63 $generated@@64) (< 0 $generated@@58)) (= ($generated@@62 $generated@@64)  (or (not (= $generated@@64 5)) (not true))))
 :pattern ( ($generated@@62 $generated@@64))
))))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@66 $generated@@68 ($generated@@65 $generated@@68 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@65 $generated@@68 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@70 $generated@@50)  (and (and ($generated@@62 ($generated@@22 $generated@@70)) (< ($generated@@22 $generated@@70) 8)) (<= ($generated@@53 0) ($generated@@22 $generated@@70))))
 :pattern ( ($generated@@69 $generated@@17 $generated@@70 $generated@@50))
)))
(assert (forall (($generated@@71 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@71 $generated@@44)  (and ($generated@@62 ($generated@@22 $generated@@71)) (< ($generated@@22 $generated@@71) 8)))
 :pattern ( ($generated@@69 $generated@@17 $generated@@71 $generated@@44))
)))
(assert (forall (($generated@@72 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@72 $generated@@47)  (and ($generated@@62 ($generated@@22 $generated@@72)) (< ($generated@@22 $generated@@72) 8)))
 :pattern ( ($generated@@69 $generated@@17 $generated@@72 $generated@@47))
)))
(assert  (and (and (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@75 $generated@@78 $generated@@79 ($generated@@77 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@82) $generated@@80)
 :weight 0
)) (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (or (= $generated@@87 $generated@@88) (= ($generated@@75 $generated@@83 $generated@@84 ($generated@@77 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@85) $generated@@88) ($generated@@75 $generated@@83 $generated@@84 $generated@@86 $generated@@88)))
 :weight 0
))) (= ($generated@@15 $generated@@76) 3)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@73 ($generated@@74 $generated@@89) $generated@@90) ($generated@@20 ($generated@@75 $generated@@76 $generated@@16 $generated@@89 $generated@@90)))
 :pattern ( ($generated@@73 ($generated@@74 $generated@@89) $generated@@90))
)))
(assert (= ($generated@@15 $generated@@91) 4))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@69 $generated@@91 $generated@@94 ($generated@@92 $generated@@95)) (forall (($generated@@96 T@U) ) (!  (=> ($generated@@73 $generated@@94 $generated@@96) ($generated@@93 $generated@@96 $generated@@95))
 :pattern ( ($generated@@73 $generated@@94 $generated@@96))
)))
 :pattern ( ($generated@@69 $generated@@91 $generated@@94 ($generated@@92 $generated@@95)))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@97 ($generated@@66 $generated@@101 $generated@@98) $generated@@99 $generated@@100) ($generated@@31 $generated@@101 $generated@@98 $generated@@99 $generated@@100))
 :pattern ( ($generated@@97 ($generated@@66 $generated@@101 $generated@@98) $generated@@99 $generated@@100))
)))
(assert  (=> (<= 0 $generated@@58) (forall (($generated@@102 Int) ) (!  (=> (or ($generated@@60 ($generated@@53 $generated@@102)) (< 0 $generated@@58)) (= ($generated@@59 ($generated@@53 $generated@@102)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19  (or (not (= $generated@@102 3)) (not true)))))))
 :weight 3
 :pattern ( ($generated@@59 ($generated@@53 $generated@@102)))
))))
(assert  (=> (<= 0 $generated@@58) (forall (($generated@@103 Int) ) (!  (=> (or ($generated@@63 ($generated@@53 $generated@@103)) (< 0 $generated@@58)) (= ($generated@@62 ($generated@@53 $generated@@103)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19  (or (not (= $generated@@103 5)) (not true)))))))
 :weight 3
 :pattern ( ($generated@@62 ($generated@@53 $generated@@103)))
))))
(assert (forall (($generated@@104 T@U) ) (!  (=> ($generated@@93 $generated@@104 $generated@@32) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@104)) $generated@@104) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@104) $generated@@32)))
 :pattern ( ($generated@@93 $generated@@104 $generated@@32))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@93 $generated@@105 $generated@@35) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@105)) $generated@@105) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@105) $generated@@35)))
 :pattern ( ($generated@@93 $generated@@105 $generated@@35))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@93 $generated@@106 $generated@@38) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@106)) $generated@@106) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@106) $generated@@38)))
 :pattern ( ($generated@@93 $generated@@106 $generated@@38))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@93 $generated@@107 $generated@@41) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@107)) $generated@@107) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@107) $generated@@41)))
 :pattern ( ($generated@@93 $generated@@107 $generated@@41))
)))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@93 $generated@@108 $generated@@44) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@108)) $generated@@108) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@108) $generated@@44)))
 :pattern ( ($generated@@93 $generated@@108 $generated@@44))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@93 $generated@@109 $generated@@47) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@109)) $generated@@109) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@109) $generated@@47)))
 :pattern ( ($generated@@93 $generated@@109 $generated@@47))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@93 $generated@@110 $generated@@50) (and (= ($generated@@66 $generated@@17 ($generated@@65 $generated@@17 $generated@@110)) $generated@@110) ($generated@@69 $generated@@17 ($generated@@65 $generated@@17 $generated@@110) $generated@@50)))
 :pattern ( ($generated@@93 $generated@@110 $generated@@50))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 Int) ($generated@@114 Int) ($generated@@115 T@U) ) (! (= ($generated@@20 ($generated@@75 $generated@@76 $generated@@16 ($generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@115))  (and ($generated@@93 $generated@@115 $generated@@112) (and (<= $generated@@113 ($generated@@22 ($generated@@65 $generated@@17 $generated@@115))) (< ($generated@@22 ($generated@@65 $generated@@17 $generated@@115)) $generated@@114))))
 :pattern ( ($generated@@75 $generated@@76 $generated@@16 ($generated@@111 $generated@@112 $generated@@113 $generated@@114) $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@93 ($generated@@66 $generated@@118 $generated@@116) $generated@@117) ($generated@@69 $generated@@118 $generated@@116 $generated@@117))
 :pattern ( ($generated@@93 ($generated@@66 $generated@@118 $generated@@116) $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@31 $generated@@91 $generated@@119 ($generated@@92 $generated@@120) $generated@@121) (forall (($generated@@122 T@U) ) (!  (=> ($generated@@73 $generated@@119 $generated@@122) ($generated@@97 $generated@@122 $generated@@120 $generated@@121))
 :pattern ( ($generated@@73 $generated@@119 $generated@@122))
)))
 :pattern ( ($generated@@31 $generated@@91 $generated@@119 ($generated@@92 $generated@@120) $generated@@121))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@123 ($generated@@92 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@92 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@125 ($generated@@92 $generated@@126)) $generated)
 :pattern ( ($generated@@92 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@65 $generated@@128 ($generated@@66 $generated@@128 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@66 $generated@@128 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@129 $generated@@32) ($generated@@59 ($generated@@22 $generated@@129)))
 :pattern ( ($generated@@69 $generated@@17 $generated@@129 $generated@@32))
)))
(assert (forall (($generated@@130 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@130 $generated@@35) ($generated@@59 ($generated@@22 $generated@@130)))
 :pattern ( ($generated@@69 $generated@@17 $generated@@130 $generated@@35))
)))
(assert (forall (($generated@@131 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@131 $generated@@38)  (and (and (<= ($generated@@53 (- 0 2147483648)) ($generated@@22 $generated@@131)) (< ($generated@@22 $generated@@131) 2147483648)) ($generated@@59 ($generated@@22 $generated@@131))))
 :pattern ( ($generated@@69 $generated@@17 $generated@@131 $generated@@38))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@69 $generated@@17 $generated@@132 $generated@@41)  (and (and (<= ($generated@@53 (- 0 2147483648)) ($generated@@22 $generated@@132)) (< ($generated@@22 $generated@@132) 2147483648)) ($generated@@59 ($generated@@22 $generated@@132))))
 :pattern ( ($generated@@69 $generated@@17 $generated@@132 $generated@@41))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@133 $generated@@141 $generated@@142 $generated@@143 ($generated@@138 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@146 $generated@@147) $generated@@144)
 :weight 0
)) (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@133 $generated@@148 $generated@@149 $generated@@150 ($generated@@138 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@155 $generated@@156) ($generated@@133 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@155 $generated@@156)))
 :weight 0
)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@163 $generated@@165) (= ($generated@@133 $generated@@157 $generated@@158 $generated@@159 ($generated@@138 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@133 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)))) (= ($generated@@15 $generated@@134) 5)) (= ($generated@@15 $generated@@135) 6)) (forall (($generated@@166 T@T) ($generated@@167 T@T) ) (= ($generated@@15 ($generated@@137 $generated@@166 $generated@@167)) 7))) (forall (($generated@@168 T@T) ($generated@@169 T@T) ) (! (= ($generated@@139 ($generated@@137 $generated@@168 $generated@@169)) $generated@@168)
 :pattern ( ($generated@@137 $generated@@168 $generated@@169))
))) (forall (($generated@@170 T@T) ($generated@@171 T@T) ) (! (= ($generated@@140 ($generated@@137 $generated@@170 $generated@@171)) $generated@@171)
 :pattern ( ($generated@@137 $generated@@170 $generated@@171))
))))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 Bool) ($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@20 ($generated@@133 $generated@@134 $generated@@135 $generated@@16 ($generated@@136 $generated@@172 $generated@@173 $generated@@174 $generated@@175) $generated@@176 $generated@@177))  (=> (and (or (not (= $generated@@176 $generated@@172)) (not true)) ($generated@@20 ($generated@@65 $generated@@16 ($generated@@75 $generated@@135 $generated@@76 ($generated@@75 $generated@@134 ($generated@@137 $generated@@135 $generated@@76) $generated@@173 $generated@@176) $generated@@174)))) $generated@@175))
 :pattern ( ($generated@@133 $generated@@134 $generated@@135 $generated@@16 ($generated@@136 $generated@@172 $generated@@173 $generated@@174 $generated@@175) $generated@@176 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 Int) ($generated@@181 T@U) ) (! (= ($generated@@20 ($generated@@75 $generated@@76 $generated@@16 ($generated@@178 $generated@@179 $generated@@180) $generated@@181))  (and ($generated@@93 $generated@@181 $generated@@179) (<= $generated@@180 ($generated@@22 ($generated@@65 $generated@@17 $generated@@181)))))
 :pattern ( ($generated@@75 $generated@@76 $generated@@16 ($generated@@178 $generated@@179 $generated@@180) $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> ($generated@@93 $generated@@182 ($generated@@92 $generated@@183)) (and (= ($generated@@66 $generated@@91 ($generated@@65 $generated@@91 $generated@@182)) $generated@@182) ($generated@@69 $generated@@91 ($generated@@65 $generated@@91 $generated@@182) ($generated@@92 $generated@@183))))
 :pattern ( ($generated@@93 $generated@@182 ($generated@@92 $generated@@183)))
)))
(assert (= ($generated@@125 $generated@@32) $generated@@1))
(assert (= ($generated@@184 $generated@@32) $generated@@8))
(assert (= ($generated@@125 $generated@@35) $generated@@2))
(assert (= ($generated@@184 $generated@@35) $generated@@9))
(assert (= ($generated@@125 $generated@@38) $generated@@3))
(assert (= ($generated@@184 $generated@@38) $generated@@10))
(assert (= ($generated@@125 $generated@@41) $generated@@4))
(assert (= ($generated@@184 $generated@@41) $generated@@11))
(assert (= ($generated@@125 $generated@@44) $generated@@5))
(assert (= ($generated@@184 $generated@@44) $generated@@12))
(assert (= ($generated@@125 $generated@@47) $generated@@6))
(assert (= ($generated@@184 $generated@@47) $generated@@13))
(assert (= ($generated@@125 $generated@@50) $generated@@7))
(assert (= ($generated@@184 $generated@@50) $generated@@14))
(assert (forall (($generated@@185 Int) ) (! (= ($generated@@66 $generated@@17 ($generated@@21 ($generated@@53 $generated@@185))) ($generated@@55 $generated@@76 ($generated@@66 $generated@@17 ($generated@@21 $generated@@185))))
 :pattern ( ($generated@@66 $generated@@17 ($generated@@21 ($generated@@53 $generated@@185))))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@T) ) (! (= ($generated@@66 $generated@@187 ($generated@@55 $generated@@187 $generated@@186)) ($generated@@55 $generated@@76 ($generated@@66 $generated@@187 $generated@@186)))
 :pattern ( ($generated@@66 $generated@@187 ($generated@@55 $generated@@187 $generated@@186)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@188 () Int)
(declare-fun $generated@@189 () Int)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Int)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () Int)
(declare-fun $generated@@195 () Int)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () Int)
(declare-fun $generated@@202 () Int)
(declare-fun $generated@@203 () Int)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () Int)
(declare-fun $generated@@206 () Int)
(declare-fun $generated@@207 () Int)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () Int)
(declare-fun $generated@@210 () Int)
(declare-fun $generated@@211 () Int)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () Int)
(declare-fun $generated@@214 () Int)
(declare-fun $generated@@215 () Int)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 (T@U) Bool)
(declare-fun $generated@@223 (T@U) Bool)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
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
 (=> (= (ControlFlow 0 0) 62) (let (($generated@@231 true))
(let (($generated@@232  (=> (and (< $generated@@188 ($generated@@53 2)) (= (ControlFlow 0 4) 1)) $generated@@231)))
(let (($generated@@233  (=> (and (<= ($generated@@53 2) $generated@@188) (= (ControlFlow 0 3) 1)) $generated@@231)))
(let (($generated@@234  (=> (and (and (and ($generated@@62 $generated@@188) (< $generated@@188 8)) (<= ($generated@@53 0) $generated@@188)) (= $generated@@189 ($generated@@53 2))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and ($generated@@62 $generated@@189) (< $generated@@189 8))) (=> (and ($generated@@62 $generated@@189) (< $generated@@189 8)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= ($generated@@53 0) $generated@@189)) (=> (<= ($generated@@53 0) $generated@@189) (and (=> (= (ControlFlow 0 5) 3) $generated@@233) (=> (= (ControlFlow 0 5) 4) $generated@@232)))))))))
(let (($generated@@235  (=> (and (not (and (and ($generated@@62 $generated@@188) (< $generated@@188 8)) (<= ($generated@@53 0) $generated@@188))) (= (ControlFlow 0 2) 1)) $generated@@231)))
(let (($generated@@236  (=> (= $generated@@190 ($generated@@74 ($generated@@178 $generated@@47 ($generated@@53 2)))) (and (=> (= (ControlFlow 0 8) 5) $generated@@234) (=> (= (ControlFlow 0 8) 2) $generated@@235)))))
(let (($generated@@237  (=> (and (< $generated@@191 ($generated@@53 2)) (= (ControlFlow 0 11) 8)) $generated@@236)))
(let (($generated@@238  (=> (and (<= ($generated@@53 2) $generated@@191) (= (ControlFlow 0 10) 8)) $generated@@236)))
(let (($generated@@239  (=> (and (and ($generated@@62 $generated@@191) (< $generated@@191 8)) (= $generated@@192 ($generated@@53 2))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and ($generated@@62 $generated@@192) (< $generated@@192 8))) (=> (and ($generated@@62 $generated@@192) (< $generated@@192 8)) (and (=> (= (ControlFlow 0 12) 10) $generated@@238) (=> (= (ControlFlow 0 12) 11) $generated@@237)))))))
(let (($generated@@240  (=> (and (not (and ($generated@@62 $generated@@191) (< $generated@@191 8))) (= (ControlFlow 0 9) 8)) $generated@@236)))
(let (($generated@@241  (=> (= $generated@@193 ($generated@@74 ($generated@@178 $generated@@44 ($generated@@53 2)))) (and (=> (= (ControlFlow 0 14) 12) $generated@@239) (=> (= (ControlFlow 0 14) 9) $generated@@240)))))
(let (($generated@@242  (=> (and (< $generated@@194 ($generated@@53 2)) (= (ControlFlow 0 17) 14)) $generated@@241)))
(let (($generated@@243  (=> (and (<= ($generated@@53 2) $generated@@194) (= (ControlFlow 0 16) 14)) $generated@@241)))
(let (($generated@@244  (=> (and (and ($generated@@62 $generated@@194) (< $generated@@194 8)) (= $generated@@195 ($generated@@53 2))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and ($generated@@62 $generated@@195) (< $generated@@195 8))) (=> (and ($generated@@62 $generated@@195) (< $generated@@195 8)) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true)))) (=> ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true))) (and (=> (= (ControlFlow 0 18) 16) $generated@@243) (=> (= (ControlFlow 0 18) 17) $generated@@242)))))))))
(let (($generated@@245  (=> (and (not (and ($generated@@62 $generated@@194) (< $generated@@194 8))) (= (ControlFlow 0 15) 14)) $generated@@241)))
(let (($generated@@246  (=> (= $generated@@196 ($generated@@74 ($generated@@111 $generated@@41 ($generated@@53 2) 6))) (=> (and ($generated@@69 $generated@@91 $generated@@197 ($generated@@92 $generated@@44)) ($generated@@31 $generated@@91 $generated@@197 ($generated@@92 $generated@@44) $generated@@198)) (=> (and (and ($generated@@69 $generated@@91 $generated@@199 ($generated@@92 $generated@@47)) ($generated@@31 $generated@@91 $generated@@199 ($generated@@92 $generated@@47) $generated@@198)) (and ($generated@@69 $generated@@91 $generated@@200 ($generated@@92 $generated@@50)) ($generated@@31 $generated@@91 $generated@@200 ($generated@@92 $generated@@50) $generated@@198))) (and (=> (= (ControlFlow 0 21) 18) $generated@@244) (=> (= (ControlFlow 0 21) 15) $generated@@245)))))))
(let (($generated@@247  (=> (and (not (and (<= ($generated@@53 2) $generated@@201) (< $generated@@201 6))) (= (ControlFlow 0 24) 21)) $generated@@246)))
(let (($generated@@248  (=> (and (and (<= ($generated@@53 2) $generated@@201) (< $generated@@201 6)) (= (ControlFlow 0 23) 21)) $generated@@246)))
(let (($generated@@249  (=> (< $generated@@201 ($generated@@53 2)) (and (=> (= (ControlFlow 0 27) 23) $generated@@248) (=> (= (ControlFlow 0 27) 24) $generated@@247)))))
(let (($generated@@250  (=> (and (<= ($generated@@53 2) $generated@@201) (= $generated@@202 ($generated@@53 6))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@202) (< $generated@@202 2147483648)) ($generated@@59 $generated@@202))) (=> (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@202) (< $generated@@202 2147483648)) ($generated@@59 $generated@@202)) (and (=> (= (ControlFlow 0 25) 23) $generated@@248) (=> (= (ControlFlow 0 25) 24) $generated@@247)))))))
(let (($generated@@251  (=> (and (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@201) (< $generated@@201 2147483648)) ($generated@@59 $generated@@201)) (= $generated@@203 ($generated@@53 2))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@203) (< $generated@@203 2147483648)) ($generated@@59 $generated@@203))) (=> (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@203) (< $generated@@203 2147483648)) ($generated@@59 $generated@@203)) (and (=> (= (ControlFlow 0 28) 25) $generated@@250) (=> (= (ControlFlow 0 28) 27) $generated@@249)))))))
(let (($generated@@252  (=> (and (not (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@201) (< $generated@@201 2147483648)) ($generated@@59 $generated@@201))) (= (ControlFlow 0 22) 21)) $generated@@246)))
(let (($generated@@253  (=> (= $generated@@204 ($generated@@74 ($generated@@111 $generated@@38 ($generated@@53 2) 6))) (and (=> (= (ControlFlow 0 30) 28) $generated@@251) (=> (= (ControlFlow 0 30) 22) $generated@@252)))))
(let (($generated@@254  (=> (and (not (and (<= ($generated@@53 2) $generated@@205) (< $generated@@205 6))) (= (ControlFlow 0 33) 30)) $generated@@253)))
(let (($generated@@255  (=> (and (and (<= ($generated@@53 2) $generated@@205) (< $generated@@205 6)) (= (ControlFlow 0 32) 30)) $generated@@253)))
(let (($generated@@256  (=> (< $generated@@205 ($generated@@53 2)) (and (=> (= (ControlFlow 0 37) 32) $generated@@255) (=> (= (ControlFlow 0 37) 33) $generated@@254)))))
(let (($generated@@257  (=> (and (<= ($generated@@53 2) $generated@@205) (= $generated@@206 ($generated@@53 6))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@206) (< $generated@@206 2147483648)) ($generated@@59 $generated@@206))) (=> (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@206) (< $generated@@206 2147483648)) ($generated@@59 $generated@@206)) (and (=> (= (ControlFlow 0 34) (- 0 35)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true)))) (=> ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true))) (and (=> (= (ControlFlow 0 34) 32) $generated@@255) (=> (= (ControlFlow 0 34) 33) $generated@@254)))))))))
(let (($generated@@258  (=> (and (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@205) (< $generated@@205 2147483648)) ($generated@@59 $generated@@205)) (= $generated@@207 ($generated@@53 2))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@207) (< $generated@@207 2147483648)) ($generated@@59 $generated@@207))) (=> (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@207) (< $generated@@207 2147483648)) ($generated@@59 $generated@@207)) (and (=> (= (ControlFlow 0 38) (- 0 39)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true)))) (=> ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true))) (and (=> (= (ControlFlow 0 38) 34) $generated@@257) (=> (= (ControlFlow 0 38) 37) $generated@@256)))))))))
(let (($generated@@259  (=> (and (not (and (and (<= ($generated@@53 (- 0 2147483648)) $generated@@205) (< $generated@@205 2147483648)) ($generated@@59 $generated@@205))) (= (ControlFlow 0 31) 30)) $generated@@253)))
(let (($generated@@260  (=> (= $generated@@208 ($generated@@74 ($generated@@111 $generated@@35 ($generated@@53 2) 6))) (and (=> (= (ControlFlow 0 41) 38) $generated@@258) (=> (= (ControlFlow 0 41) 31) $generated@@259)))))
(let (($generated@@261  (=> (and (not (and (<= ($generated@@53 2) $generated@@209) (< $generated@@209 6))) (= (ControlFlow 0 44) 41)) $generated@@260)))
(let (($generated@@262  (=> (and (and (<= ($generated@@53 2) $generated@@209) (< $generated@@209 6)) (= (ControlFlow 0 43) 41)) $generated@@260)))
(let (($generated@@263  (=> (< $generated@@209 ($generated@@53 2)) (and (=> (= (ControlFlow 0 47) 43) $generated@@262) (=> (= (ControlFlow 0 47) 44) $generated@@261)))))
(let (($generated@@264  (=> (and (<= ($generated@@53 2) $generated@@209) (= $generated@@210 ($generated@@53 6))) (and (=> (= (ControlFlow 0 45) (- 0 46)) ($generated@@59 $generated@@210)) (=> ($generated@@59 $generated@@210) (and (=> (= (ControlFlow 0 45) 43) $generated@@262) (=> (= (ControlFlow 0 45) 44) $generated@@261)))))))
(let (($generated@@265  (=> (and ($generated@@59 $generated@@209) (= $generated@@211 ($generated@@53 2))) (and (=> (= (ControlFlow 0 48) (- 0 49)) ($generated@@59 $generated@@211)) (=> ($generated@@59 $generated@@211) (and (=> (= (ControlFlow 0 48) 45) $generated@@264) (=> (= (ControlFlow 0 48) 47) $generated@@263)))))))
(let (($generated@@266  (=> (and (not ($generated@@59 $generated@@209)) (= (ControlFlow 0 42) 41)) $generated@@260)))
(let (($generated@@267  (=> (= $generated@@212 ($generated@@74 ($generated@@111 $generated@@32 ($generated@@53 2) 6))) (and (=> (= (ControlFlow 0 50) 48) $generated@@265) (=> (= (ControlFlow 0 50) 42) $generated@@266)))))
(let (($generated@@268  (=> (and (not (and (<= ($generated@@53 2) $generated@@213) (< $generated@@213 6))) (= (ControlFlow 0 53) 50)) $generated@@267)))
(let (($generated@@269  (=> (and (and (<= ($generated@@53 2) $generated@@213) (< $generated@@213 6)) (= (ControlFlow 0 52) 50)) $generated@@267)))
(let (($generated@@270  (=> (< $generated@@213 ($generated@@53 2)) (and (=> (= (ControlFlow 0 57) 52) $generated@@269) (=> (= (ControlFlow 0 57) 53) $generated@@268)))))
(let (($generated@@271  (=> (and (<= ($generated@@53 2) $generated@@213) (= $generated@@214 ($generated@@53 6))) (and (=> (= (ControlFlow 0 54) (- 0 56)) ($generated@@59 $generated@@214)) (=> ($generated@@59 $generated@@214) (and (=> (= (ControlFlow 0 54) (- 0 55)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true)))) (=> ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true))) (and (=> (= (ControlFlow 0 54) 52) $generated@@269) (=> (= (ControlFlow 0 54) 53) $generated@@268)))))))))
(let (($generated@@272  (=> (and ($generated@@59 $generated@@213) (= $generated@@215 ($generated@@53 2))) (and (=> (= (ControlFlow 0 58) (- 0 60)) ($generated@@59 $generated@@215)) (=> ($generated@@59 $generated@@215) (and (=> (= (ControlFlow 0 58) (- 0 59)) ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true)))) (=> ($generated@@20 ($generated@@55 $generated@@16 ($generated@@19 true))) (and (=> (= (ControlFlow 0 58) 54) $generated@@271) (=> (= (ControlFlow 0 58) 57) $generated@@270)))))))))
(let (($generated@@273  (=> (and (not ($generated@@59 $generated@@213)) (= (ControlFlow 0 51) 50)) $generated@@267)))
(let (($generated@@274  (=> (= $generated@@216 ($generated@@136 $generated@@217 $generated@@198 $generated@@0 false)) (=> (and (and (and ($generated@@69 $generated@@91 $generated@@218 ($generated@@92 $generated@@32)) ($generated@@31 $generated@@91 $generated@@218 ($generated@@92 $generated@@32) $generated@@198)) (and ($generated@@69 $generated@@91 $generated@@219 ($generated@@92 $generated@@35)) ($generated@@31 $generated@@91 $generated@@219 ($generated@@92 $generated@@35) $generated@@198))) (and (and ($generated@@69 $generated@@91 $generated@@220 ($generated@@92 $generated@@38)) ($generated@@31 $generated@@91 $generated@@220 ($generated@@92 $generated@@38) $generated@@198)) (and ($generated@@69 $generated@@91 $generated@@221 ($generated@@92 $generated@@41)) ($generated@@31 $generated@@91 $generated@@221 ($generated@@92 $generated@@41) $generated@@198)))) (and (=> (= (ControlFlow 0 61) 58) $generated@@272) (=> (= (ControlFlow 0 61) 51) $generated@@273))))))
(let (($generated@@275  (=> (and ($generated@@222 $generated@@198) ($generated@@223 $generated@@198)) (=> (and (and (and (and (and ($generated@@69 $generated@@91 $generated@@224 ($generated@@92 $generated@@32)) ($generated@@31 $generated@@91 $generated@@224 ($generated@@92 $generated@@32) $generated@@198)) true) (and (and ($generated@@69 $generated@@91 $generated@@225 ($generated@@92 $generated@@35)) ($generated@@31 $generated@@91 $generated@@225 ($generated@@92 $generated@@35) $generated@@198)) true)) (and (and (and ($generated@@69 $generated@@91 $generated@@226 ($generated@@92 $generated@@38)) ($generated@@31 $generated@@91 $generated@@226 ($generated@@92 $generated@@38) $generated@@198)) true) (and (and ($generated@@69 $generated@@91 $generated@@227 ($generated@@92 $generated@@41)) ($generated@@31 $generated@@91 $generated@@227 ($generated@@92 $generated@@41) $generated@@198)) true))) (and (and (and (and ($generated@@69 $generated@@91 $generated@@228 ($generated@@92 $generated@@44)) ($generated@@31 $generated@@91 $generated@@228 ($generated@@92 $generated@@44) $generated@@198)) true) (and (and ($generated@@69 $generated@@91 $generated@@229 ($generated@@92 $generated@@47)) ($generated@@31 $generated@@91 $generated@@229 ($generated@@92 $generated@@47) $generated@@198)) true)) (and (and (and ($generated@@69 $generated@@91 $generated@@230 ($generated@@92 $generated@@50)) ($generated@@31 $generated@@91 $generated@@230 ($generated@@92 $generated@@50) $generated@@198)) true) (and (= 3 $generated@@58) (= (ControlFlow 0 62) 61))))) $generated@@274))))
$generated@@275))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)