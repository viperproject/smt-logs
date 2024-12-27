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
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 (T@T) Int)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 (Bool) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (Real) T@U)
(declare-fun $generated@@25 (T@U) Real)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 () Int)
(declare-fun $generated@@34 (T@U T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@37 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 (Int T@U) Bool)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@U) T@U)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U Int T@U) T@U)
(declare-fun $generated@@55 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@59 (Int) Int)
(declare-fun $generated@@60 () T@U)
(declare-fun $generated@@64 (T@U) T@U)
(declare-fun $generated@@65 () T@U)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 (T@U T@U) T@U)
(declare-fun $generated@@79 (T@U T@U) Bool)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@86 (T@U) Bool)
(declare-fun $generated@@88 (T@U) Bool)
(declare-fun $generated@@90 (T@U) Bool)
(declare-fun $generated@@92 (T@U) Bool)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@110 (T@U T@U T@U) Bool)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@147 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@156 (T@U) T@U)
(declare-fun $generated@@164 (T@U) Int)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@174 () T@T)
(declare-fun $generated@@175 () T@T)
(declare-fun $generated@@176 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@177 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@178 () T@T)
(declare-fun $generated@@179 (T@T T@T) T@T)
(declare-fun $generated@@180 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@182 (T@T) T@T)
(declare-fun $generated@@183 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@16 $generated@@17) 0) (= ($generated@@16 $generated@@18) 1)) (= ($generated@@16 $generated@@19) 2)) (forall (($generated@@26 Bool) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Int) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Real) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15)
)
(assert (= ($generated@@32 $generated) $generated@@0))
(assert (= ($generated@@16 $generated@@38) 3))
(assert  (=> (<= 2 $generated@@33) (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> (or ($generated@@36 $generated@@50) (and (< 2 $generated@@33) ($generated@@37 $generated@@38 $generated@@50 ($generated@@39 $generated)))) (and (=> (not ($generated@@40 $generated@@50)) (let (($generated@@51 ($generated@@41 $generated@@50)))
(let (($generated@@52 ($generated@@23 ($generated@@42 $generated@@18 ($generated@@43 $generated@@50)))))
($generated@@44 (ite (< $generated@@52 0) 0 $generated@@52) $generated@@51)))) (= ($generated@@34 ($generated@@35 $generated@@49) $generated@@50) (ite ($generated@@40 $generated@@50) $generated@@45 (let (($generated@@53 ($generated@@41 $generated@@50)))
(let (($generated@@54 ($generated@@23 ($generated@@42 $generated@@18 ($generated@@43 $generated@@50)))))
($generated@@46 ($generated@@47 $generated@@38 ($generated@@48 $generated@@49 (ite (< $generated@@54 0) 0 $generated@@54) $generated@@53)))))))))
 :pattern ( ($generated@@34 ($generated@@35 $generated@@49) $generated@@50))
))))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (! ($generated@@55 $generated@@18 $generated@@57 $generated@@56 $generated@@58)
 :pattern ( ($generated@@55 $generated@@18 $generated@@57 $generated@@56 $generated@@58))
)))
(assert  (=> (<= 2 $generated@@33) (forall (($generated@@61 T@U) ($generated@@62 Int) ($generated@@63 T@U) ) (!  (=> (or ($generated@@44 $generated@@62 $generated@@63) (and (< 2 $generated@@33) (and (<= ($generated@@59 0) $generated@@62) ($generated@@37 $generated@@38 $generated@@63 ($generated@@39 $generated))))) ($generated@@37 $generated@@38 ($generated@@48 $generated@@61 $generated@@62 $generated@@63) $generated@@60))
 :pattern ( ($generated@@48 $generated@@61 $generated@@62 $generated@@63))
))))
(assert (= ($generated@@64 $generated@@65) $generated@@6))
(assert (= ($generated@@64 $generated@@45) $generated@@8))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> ($generated@@66 $generated@@68) ($generated@@55 $generated@@38 $generated@@65 ($generated@@39 $generated@@67) $generated@@68))
 :pattern ( ($generated@@55 $generated@@38 $generated@@65 ($generated@@39 $generated@@67) $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@66 $generated@@71) ($generated@@55 $generated@@38 $generated@@45 ($generated@@69 $generated@@70) $generated@@71))
 :pattern ( ($generated@@55 $generated@@38 $generated@@45 ($generated@@69 $generated@@70) $generated@@71))
)))
(assert (forall (($generated@@72 T@U) ) (! ($generated@@37 $generated@@38 $generated@@65 ($generated@@39 $generated@@72))
 :pattern ( ($generated@@37 $generated@@38 $generated@@65 ($generated@@39 $generated@@72)))
)))
(assert (forall (($generated@@73 T@U) ) (! ($generated@@37 $generated@@38 $generated@@45 ($generated@@69 $generated@@73))
 :pattern ( ($generated@@37 $generated@@38 $generated@@45 ($generated@@69 $generated@@73)))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@59 $generated@@74) $generated@@74)
 :pattern ( ($generated@@59 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@37 $generated@@38 ($generated@@78 $generated@@81 $generated@@82) ($generated@@39 $generated@@80))  (and ($generated@@79 $generated@@81 $generated@@80) ($generated@@37 $generated@@38 $generated@@82 ($generated@@39 $generated@@80))))
 :pattern ( ($generated@@37 $generated@@38 ($generated@@78 $generated@@81 $generated@@82) ($generated@@39 $generated@@80)))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@40 $generated@@83) (= ($generated@@64 $generated@@83) $generated@@6))
 :pattern ( ($generated@@40 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@84 $generated@@85) (= ($generated@@64 $generated@@85) $generated@@7))
 :pattern ( ($generated@@84 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (! (= ($generated@@86 $generated@@87) (= ($generated@@64 $generated@@87) $generated@@8))
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ) (! (= ($generated@@88 $generated@@89) (= ($generated@@64 $generated@@89) $generated@@9))
 :pattern ( ($generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@90 $generated@@91) (= ($generated@@64 $generated@@91) $generated@@10))
 :pattern ( ($generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@92 $generated@@93) (= ($generated@@64 $generated@@93) $generated@@11))
 :pattern ( ($generated@@92 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@47 $generated@@95 ($generated@@42 $generated@@95 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@42 $generated@@95 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ) (!  (=> ($generated@@84 $generated@@96) (exists (($generated@@97 T@U) ($generated@@98 T@U) ) (= $generated@@96 ($generated@@78 $generated@@97 $generated@@98))))
 :pattern ( ($generated@@84 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ) (!  (=> ($generated@@40 $generated@@99) (= $generated@@99 $generated@@65))
 :pattern ( ($generated@@40 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ) (!  (=> ($generated@@86 $generated@@100) (= $generated@@100 $generated@@45))
 :pattern ( ($generated@@86 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ) (!  (=> ($generated@@88 $generated@@101) (exists (($generated@@102 T@U) ) (= $generated@@101 ($generated@@46 $generated@@102))))
 :pattern ( ($generated@@88 $generated@@101))
)))
(assert (forall (($generated@@104 T@U) ) (!  (=> ($generated@@90 $generated@@104) (exists (($generated@@105 T@U) ) (= $generated@@104 ($generated@@103 $generated@@105))))
 :pattern ( ($generated@@90 $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@92 $generated@@107) (exists (($generated@@108 T@U) ) (= $generated@@107 ($generated@@106 $generated@@108))))
 :pattern ( ($generated@@92 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@37 $generated@@18 $generated@@109 $generated@@56) (<= ($generated@@59 0) ($generated@@23 $generated@@109)))
 :pattern ( ($generated@@37 $generated@@18 $generated@@109 $generated@@56))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@110 ($generated@@47 $generated@@114 $generated@@111) $generated@@112 $generated@@113) ($generated@@55 $generated@@114 $generated@@111 $generated@@112 $generated@@113))
 :pattern ( ($generated@@110 ($generated@@47 $generated@@114 $generated@@111) $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ) (!  (and (= ($generated@@32 ($generated@@39 $generated@@116)) $generated@@3) (= ($generated@@115 ($generated@@39 $generated@@116)) $generated@@13))
 :pattern ( ($generated@@39 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ) (!  (and (= ($generated@@32 ($generated@@69 $generated@@117)) $generated@@5) (= ($generated@@115 ($generated@@69 $generated@@117)) $generated@@15))
 :pattern ( ($generated@@69 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ) (!  (=> ($generated@@79 $generated@@118 $generated@@56) (and (= ($generated@@47 $generated@@18 ($generated@@42 $generated@@18 $generated@@118)) $generated@@118) ($generated@@37 $generated@@18 ($generated@@42 $generated@@18 $generated@@118) $generated@@56)))
 :pattern ( ($generated@@79 $generated@@118 $generated@@56))
)))
(assert (forall (($generated@@119 T@U) ) (!  (=> ($generated@@79 $generated@@119 $generated@@60) (and (= ($generated@@47 $generated@@38 ($generated@@42 $generated@@38 $generated@@119)) $generated@@119) ($generated@@37 $generated@@38 ($generated@@42 $generated@@38 $generated@@119) $generated@@60)))
 :pattern ( ($generated@@79 $generated@@119 $generated@@60))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@37 $generated@@38 ($generated@@103 $generated@@120) $generated@@60) ($generated@@37 $generated@@38 $generated@@120 $generated@@60))
 :pattern ( ($generated@@37 $generated@@38 ($generated@@103 $generated@@120) $generated@@60))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 Int) ($generated@@123 T@U) ) (! (= ($generated@@48 ($generated@@35 $generated@@121) $generated@@122 $generated@@123) ($generated@@48 $generated@@121 $generated@@122 $generated@@123))
 :pattern ( ($generated@@48 ($generated@@35 $generated@@121) $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> ($generated@@66 $generated@@126) (= ($generated@@55 $generated@@38 ($generated@@46 $generated@@125) ($generated@@69 $generated@@124) $generated@@126) ($generated@@110 $generated@@125 $generated@@124 $generated@@126)))
 :pattern ( ($generated@@55 $generated@@38 ($generated@@46 $generated@@125) ($generated@@69 $generated@@124) $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@37 $generated@@38 ($generated@@106 $generated@@127) $generated@@60) ($generated@@37 $generated@@38 $generated@@127 ($generated@@69 $generated@@60)))
 :pattern ( ($generated@@37 $generated@@38 ($generated@@106 $generated@@127) $generated@@60))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> ($generated@@37 $generated@@38 $generated@@129 ($generated@@39 $generated@@128)) (or ($generated@@40 $generated@@129) ($generated@@84 $generated@@129)))
 :pattern ( ($generated@@84 $generated@@129) ($generated@@37 $generated@@38 $generated@@129 ($generated@@39 $generated@@128)))
 :pattern ( ($generated@@40 $generated@@129) ($generated@@37 $generated@@38 $generated@@129 ($generated@@39 $generated@@128)))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> ($generated@@37 $generated@@38 $generated@@131 ($generated@@69 $generated@@130)) (or ($generated@@86 $generated@@131) ($generated@@88 $generated@@131)))
 :pattern ( ($generated@@88 $generated@@131) ($generated@@37 $generated@@38 $generated@@131 ($generated@@69 $generated@@130)))
 :pattern ( ($generated@@86 $generated@@131) ($generated@@37 $generated@@38 $generated@@131 ($generated@@69 $generated@@130)))
)))
(assert (forall (($generated@@132 T@U) ) (!  (=> ($generated@@37 $generated@@38 $generated@@132 $generated@@60) (or ($generated@@90 $generated@@132) ($generated@@92 $generated@@132)))
 :pattern ( ($generated@@92 $generated@@132) ($generated@@37 $generated@@38 $generated@@132 $generated@@60))
 :pattern ( ($generated@@90 $generated@@132) ($generated@@37 $generated@@38 $generated@@132 $generated@@60))
)))
(assert (forall (($generated@@133 T@U) ) (!  (=> ($generated@@79 $generated@@133 $generated) (and (= ($generated@@47 $generated@@18 ($generated@@42 $generated@@18 $generated@@133)) $generated@@133) ($generated@@37 $generated@@18 ($generated@@42 $generated@@18 $generated@@133) $generated)))
 :pattern ( ($generated@@79 $generated@@133 $generated))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@T) ) (! (= ($generated@@79 ($generated@@47 $generated@@136 $generated@@134) $generated@@135) ($generated@@37 $generated@@136 $generated@@134 $generated@@135))
 :pattern ( ($generated@@79 ($generated@@47 $generated@@136 $generated@@134) $generated@@135))
)))
(assert  (=> (<= 2 $generated@@33) (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (!  (=> (or ($generated@@36 $generated@@138) (and (< 2 $generated@@33) ($generated@@37 $generated@@38 $generated@@138 ($generated@@39 $generated)))) ($generated@@37 $generated@@38 ($generated@@34 $generated@@137 $generated@@138) ($generated@@69 $generated@@60)))
 :pattern ( ($generated@@34 $generated@@137 $generated@@138))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@64 ($generated@@78 $generated@@139 $generated@@140)) $generated@@7)
 :pattern ( ($generated@@78 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@43 ($generated@@78 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@78 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@41 ($generated@@78 $generated@@143 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@78 $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ) (! (= ($generated@@145 ($generated@@39 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@39 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@147 ($generated@@69 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@69 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@64 ($generated@@46 $generated@@149)) $generated@@9)
 :pattern ( ($generated@@46 $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@150 ($generated@@46 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@46 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ) (! (= ($generated@@64 ($generated@@103 $generated@@152)) $generated@@10)
 :pattern ( ($generated@@103 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@153 ($generated@@103 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@103 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@64 ($generated@@106 $generated@@155)) $generated@@11)
 :pattern ( ($generated@@106 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ) (! (= ($generated@@156 ($generated@@106 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@106 $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@T) ) (! (= ($generated@@42 $generated@@159 ($generated@@47 $generated@@159 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@47 $generated@@159 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@37 $generated@@38 ($generated@@46 $generated@@161) ($generated@@69 $generated@@160)) ($generated@@79 $generated@@161 $generated@@160))
 :pattern ( ($generated@@37 $generated@@38 ($generated@@46 $generated@@161) ($generated@@69 $generated@@160)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@34 ($generated@@35 $generated@@162) $generated@@163) ($generated@@34 $generated@@162 $generated@@163))
 :pattern ( ($generated@@34 ($generated@@35 $generated@@162) $generated@@163))
)))
(assert (forall (($generated@@165 T@U) ) (! (< ($generated@@164 $generated@@165) ($generated@@164 ($generated@@103 $generated@@165)))
 :pattern ( ($generated@@103 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (! (< ($generated@@164 $generated@@166) ($generated@@164 ($generated@@106 $generated@@166)))
 :pattern ( ($generated@@106 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> (and ($generated@@66 $generated@@169) (and ($generated@@84 $generated@@167) ($generated@@55 $generated@@38 $generated@@167 ($generated@@39 $generated@@168) $generated@@169))) ($generated@@110 ($generated@@43 $generated@@167) $generated@@168 $generated@@169))
 :pattern ( ($generated@@110 ($generated@@43 $generated@@167) $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@66 $generated@@172) (and ($generated@@88 $generated@@170) ($generated@@55 $generated@@38 $generated@@170 ($generated@@69 $generated@@171) $generated@@172))) ($generated@@110 ($generated@@150 $generated@@170) $generated@@171 $generated@@172))
 :pattern ( ($generated@@110 ($generated@@150 $generated@@170) $generated@@171 $generated@@172))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@T) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ) (! (= ($generated@@173 $generated@@184 $generated@@185 $generated@@186 ($generated@@180 $generated@@184 $generated@@185 $generated@@186 $generated@@188 $generated@@189 $generated@@190 $generated@@187) $generated@@189 $generated@@190) $generated@@187)
 :weight 0
)) (and (forall (($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ) (!  (or (= $generated@@196 $generated@@198) (= ($generated@@173 $generated@@191 $generated@@192 $generated@@193 ($generated@@180 $generated@@191 $generated@@192 $generated@@193 $generated@@195 $generated@@196 $generated@@197 $generated@@194) $generated@@198 $generated@@199) ($generated@@173 $generated@@191 $generated@@192 $generated@@193 $generated@@195 $generated@@198 $generated@@199)))
 :weight 0
)) (forall (($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@T) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (!  (or (= $generated@@206 $generated@@208) (= ($generated@@173 $generated@@200 $generated@@201 $generated@@202 ($generated@@180 $generated@@200 $generated@@201 $generated@@202 $generated@@204 $generated@@205 $generated@@206 $generated@@203) $generated@@207 $generated@@208) ($generated@@173 $generated@@200 $generated@@201 $generated@@202 $generated@@204 $generated@@207 $generated@@208)))
 :weight 0
)))) (= ($generated@@16 $generated@@174) 4)) (= ($generated@@16 $generated@@175) 5)) (forall (($generated@@209 T@T) ($generated@@210 T@T) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (! (= ($generated@@177 $generated@@209 $generated@@210 ($generated@@181 $generated@@209 $generated@@210 $generated@@212 $generated@@213 $generated@@211) $generated@@213) $generated@@211)
 :weight 0
))) (forall (($generated@@214 T@T) ($generated@@215 T@T) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ) (!  (or (= $generated@@218 $generated@@219) (= ($generated@@177 $generated@@214 $generated@@215 ($generated@@181 $generated@@214 $generated@@215 $generated@@217 $generated@@218 $generated@@216) $generated@@219) ($generated@@177 $generated@@214 $generated@@215 $generated@@217 $generated@@219)))
 :weight 0
))) (= ($generated@@16 $generated@@178) 6)) (forall (($generated@@220 T@T) ($generated@@221 T@T) ) (= ($generated@@16 ($generated@@179 $generated@@220 $generated@@221)) 7))) (forall (($generated@@222 T@T) ($generated@@223 T@T) ) (! (= ($generated@@182 ($generated@@179 $generated@@222 $generated@@223)) $generated@@222)
 :pattern ( ($generated@@179 $generated@@222 $generated@@223))
))) (forall (($generated@@224 T@T) ($generated@@225 T@T) ) (! (= ($generated@@183 ($generated@@179 $generated@@224 $generated@@225)) $generated@@225)
 :pattern ( ($generated@@179 $generated@@224 $generated@@225))
))))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 Bool) ($generated@@230 T@U) ($generated@@231 T@U) ) (! (= ($generated@@21 ($generated@@173 $generated@@174 $generated@@175 $generated@@17 ($generated@@176 $generated@@226 $generated@@227 $generated@@228 $generated@@229) $generated@@230 $generated@@231))  (=> (and (or (not (= $generated@@230 $generated@@226)) (not true)) ($generated@@21 ($generated@@42 $generated@@17 ($generated@@177 $generated@@175 $generated@@178 ($generated@@177 $generated@@174 ($generated@@179 $generated@@175 $generated@@178) $generated@@227 $generated@@230) $generated@@228)))) $generated@@229))
 :pattern ( ($generated@@173 $generated@@174 $generated@@175 $generated@@17 ($generated@@176 $generated@@226 $generated@@227 $generated@@228 $generated@@229) $generated@@230 $generated@@231))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@U) ) (!  (=> ($generated@@79 $generated@@233 ($generated@@39 $generated@@232)) (and (= ($generated@@47 $generated@@38 ($generated@@42 $generated@@38 $generated@@233)) $generated@@233) ($generated@@37 $generated@@38 ($generated@@42 $generated@@38 $generated@@233) ($generated@@39 $generated@@232))))
 :pattern ( ($generated@@79 $generated@@233 ($generated@@39 $generated@@232)))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ) (!  (=> ($generated@@79 $generated@@235 ($generated@@69 $generated@@234)) (and (= ($generated@@47 $generated@@38 ($generated@@42 $generated@@38 $generated@@235)) $generated@@235) ($generated@@37 $generated@@38 ($generated@@42 $generated@@38 $generated@@235) ($generated@@69 $generated@@234))))
 :pattern ( ($generated@@79 $generated@@235 ($generated@@69 $generated@@234)))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ) (!  (=> (and ($generated@@66 $generated@@238) (and ($generated@@84 $generated@@236) ($generated@@55 $generated@@38 $generated@@236 ($generated@@39 $generated@@237) $generated@@238))) ($generated@@55 $generated@@38 ($generated@@41 $generated@@236) ($generated@@39 $generated@@237) $generated@@238))
 :pattern ( ($generated@@55 $generated@@38 ($generated@@41 $generated@@236) ($generated@@39 $generated@@237) $generated@@238))
)))
(assert (forall (($generated@@239 T@U) ($generated@@240 T@U) ) (!  (=> (and ($generated@@66 $generated@@240) ($generated@@37 $generated@@38 $generated@@239 $generated@@60)) ($generated@@55 $generated@@38 $generated@@239 $generated@@60 $generated@@240))
 :pattern ( ($generated@@55 $generated@@38 $generated@@239 $generated@@60 $generated@@240))
)))
(assert (= ($generated@@32 $generated@@56) $generated@@2))
(assert (= ($generated@@115 $generated@@56) $generated@@12))
(assert (= ($generated@@32 $generated@@60) $generated@@4))
(assert (= ($generated@@115 $generated@@60) $generated@@14))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ) (!  (=> (and ($generated@@66 $generated@@242) (and ($generated@@90 $generated@@241) ($generated@@55 $generated@@38 $generated@@241 $generated@@60 $generated@@242))) ($generated@@55 $generated@@38 ($generated@@153 $generated@@241) $generated@@60 $generated@@242))
 :pattern ( ($generated@@55 $generated@@38 ($generated@@153 $generated@@241) $generated@@60 $generated@@242))
)))
(assert  (=> (<= 2 $generated@@33) (forall (($generated@@243 T@U) ($generated@@244 Int) ($generated@@245 T@U) ) (!  (=> (or ($generated@@44 $generated@@244 $generated@@245) (and (< 2 $generated@@33) (and (<= ($generated@@59 0) $generated@@244) ($generated@@37 $generated@@38 $generated@@245 ($generated@@39 $generated))))) (and (and (=> (<= $generated@@244 ($generated@@59 0)) ($generated@@36 $generated@@245)) (=> (< ($generated@@59 0) $generated@@244) ($generated@@44 (- $generated@@244 1) $generated@@245))) (= ($generated@@48 ($generated@@35 $generated@@243) $generated@@244 $generated@@245) (ite (<= $generated@@244 ($generated@@59 0)) ($generated@@106 ($generated@@34 $generated@@243 $generated@@245)) ($generated@@103 ($generated@@48 $generated@@243 (- $generated@@244 1) $generated@@245))))))
 :pattern ( ($generated@@48 ($generated@@35 $generated@@243) $generated@@244 $generated@@245))
))))
(assert (forall (($generated@@246 Int) ) (! (= ($generated@@47 $generated@@18 ($generated@@22 ($generated@@59 $generated@@246))) ($generated@@75 $generated@@178 ($generated@@47 $generated@@18 ($generated@@22 $generated@@246))))
 :pattern ( ($generated@@47 $generated@@18 ($generated@@22 ($generated@@59 $generated@@246))))
)))
(assert (forall (($generated@@247 T@U) ) (! (= ($generated@@103 ($generated@@75 $generated@@38 $generated@@247)) ($generated@@75 $generated@@38 ($generated@@103 $generated@@247)))
 :pattern ( ($generated@@103 ($generated@@75 $generated@@38 $generated@@247)))
)))
(assert (forall (($generated@@248 T@U) ) (! (= ($generated@@106 ($generated@@75 $generated@@38 $generated@@248)) ($generated@@75 $generated@@38 ($generated@@106 $generated@@248)))
 :pattern ( ($generated@@106 ($generated@@75 $generated@@38 $generated@@248)))
)))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@T) ) (! (= ($generated@@47 $generated@@250 ($generated@@75 $generated@@250 $generated@@249)) ($generated@@75 $generated@@178 ($generated@@47 $generated@@250 $generated@@249)))
 :pattern ( ($generated@@47 $generated@@250 ($generated@@75 $generated@@250 $generated@@249)))
)))
(assert (forall (($generated@@251 T@U) ($generated@@252 T@U) ) (!  (=> (and ($generated@@66 $generated@@252) (and ($generated@@92 $generated@@251) ($generated@@55 $generated@@38 $generated@@251 $generated@@60 $generated@@252))) ($generated@@55 $generated@@38 ($generated@@156 $generated@@251) ($generated@@69 $generated@@60) $generated@@252))
 :pattern ( ($generated@@55 $generated@@38 ($generated@@156 $generated@@251) ($generated@@69 $generated@@60) $generated@@252))
)))
(assert (forall (($generated@@253 T@U) ($generated@@254 T@U) ) (! ($generated@@55 $generated@@18 $generated@@254 $generated $generated@@253)
 :pattern ( ($generated@@55 $generated@@18 $generated@@254 $generated $generated@@253))
)))
(assert (forall (($generated@@255 T@U) ($generated@@256 T@U) ($generated@@257 T@U) ($generated@@258 T@U) ) (!  (=> ($generated@@66 $generated@@258) (= ($generated@@55 $generated@@38 ($generated@@78 $generated@@256 $generated@@257) ($generated@@39 $generated@@255) $generated@@258)  (and ($generated@@110 $generated@@256 $generated@@255 $generated@@258) ($generated@@55 $generated@@38 $generated@@257 ($generated@@39 $generated@@255) $generated@@258))))
 :pattern ( ($generated@@55 $generated@@38 ($generated@@78 $generated@@256 $generated@@257) ($generated@@39 $generated@@255) $generated@@258))
)))
(assert (forall (($generated@@259 T@U) ) (! ($generated@@37 $generated@@18 $generated@@259 $generated)
 :pattern ( ($generated@@37 $generated@@18 $generated@@259 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@260 () Int)
(declare-fun $generated@@261 () Int)
(declare-fun $generated@@262 () T@U)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 12) (let (($generated@@267  (=> (< ($generated@@59 0) $generated@@260) (and (=> (= (ControlFlow 0 7) (- 0 10)) ($generated@@37 $generated@@18 ($generated@@22 (- $generated@@260 1)) $generated@@56)) (=> ($generated@@37 $generated@@18 ($generated@@22 (- $generated@@260 1)) $generated@@56) (=> (= $generated@@261 (- $generated@@260 1)) (=> (and ($generated@@55 $generated@@18 ($generated@@22 $generated@@261) $generated@@56 $generated@@262) ($generated@@55 $generated@@38 $generated@@263 ($generated@@39 $generated) $generated@@262)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (<= 0 ($generated@@59 1)) (= ($generated@@59 1) ($generated@@59 1)))) (=> (or (<= 0 ($generated@@59 1)) (= ($generated@@59 1) ($generated@@59 1))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (or (<= 0 (+ $generated@@260 1)) (< ($generated@@59 1) ($generated@@59 1))) (= (+ $generated@@261 1) (+ $generated@@260 1)))) (=> (or (or (<= 0 (+ $generated@@260 1)) (< ($generated@@59 1) ($generated@@59 1))) (= (+ $generated@@261 1) (+ $generated@@260 1))) (=> (= (ControlFlow 0 7) (- 0 6)) (or (< ($generated@@59 1) ($generated@@59 1)) (and (= ($generated@@59 1) ($generated@@59 1)) (< (+ $generated@@261 1) (+ $generated@@260 1))))))))))))))))
(let (($generated@@268  (=> (and (<= $generated@@260 ($generated@@59 0)) ($generated@@55 $generated@@38 $generated@@263 ($generated@@39 $generated) $generated@@262)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (<= 0 ($generated@@59 1)) (= ($generated@@59 0) ($generated@@59 1)))) (=> (or (<= 0 ($generated@@59 1)) (= ($generated@@59 0) ($generated@@59 1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (or (<= 0 (+ $generated@@260 1)) (< ($generated@@59 0) ($generated@@59 1))) (= ($generated@@59 0) (+ $generated@@260 1)))) (=> (or (or (<= 0 (+ $generated@@260 1)) (< ($generated@@59 0) ($generated@@59 1))) (= ($generated@@59 0) (+ $generated@@260 1))) (=> (= (ControlFlow 0 3) (- 0 2)) (or (< ($generated@@59 0) ($generated@@59 1)) (and (= ($generated@@59 0) ($generated@@59 1)) (< ($generated@@59 0) (+ $generated@@260 1))))))))))))
(let (($generated@@269 true))
(let (($generated@@270  (=> (= $generated@@264 ($generated@@176 $generated@@265 $generated@@262 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 11) 1) $generated@@269) (=> (= (ControlFlow 0 11) 3) $generated@@268)) (=> (= (ControlFlow 0 11) 7) $generated@@267)))))
(let (($generated@@271  (=> (and ($generated@@66 $generated@@262) ($generated@@266 $generated@@262)) (=> (and (and (<= ($generated@@59 0) $generated@@260) ($generated@@37 $generated@@38 $generated@@263 ($generated@@39 $generated))) (and (= 2 $generated@@33) (= (ControlFlow 0 12) 11))) $generated@@270))))
$generated@@271))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)