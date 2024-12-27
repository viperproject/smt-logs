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
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@51 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@52 () T@U)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@59 () T@U)
(declare-fun $generated@@62 () T@U)
(declare-fun $generated@@63 (T@U T@U) T@U)
(declare-fun $generated@@64 (T@U) Bool)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 () T@T)
(declare-fun $generated@@69 (T@T T@T) T@T)
(declare-fun $generated@@70 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@T) T@T)
(declare-fun $generated@@72 (T@T) T@T)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@99 () T@T)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@101 (T@U T@U) Bool)
(declare-fun $generated@@105 (T@U T@U) T@U)
(declare-fun $generated@@106 (T@U T@U) T@U)
(declare-fun $generated@@110 (T@U T@U T@U) Bool)
(declare-fun $generated@@135 (T@U T@U) Bool)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@144 (T@U) Bool)
(declare-fun $generated@@151 (T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(declare-fun $generated@@168 (T@U) T@U)
(declare-fun $generated@@180 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@214 (T@U) T@U)
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
(assert (= ($generated@@32 $generated@@0) 0))
(assert (= ($generated@@33 $generated@@0) $generated@@1))
(assert (forall (($generated@@36 T@U) ) (!  (not ($generated@@34 $generated@@35 $generated@@36))
 :pattern ( ($generated@@34 $generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@34 ($generated@@37 $generated@@38 $generated@@39) $generated@@40)  (and ($generated@@34 $generated@@38 $generated@@40) ($generated@@34 $generated@@39 $generated@@40)))
 :pattern ( ($generated@@34 ($generated@@37 $generated@@38 $generated@@39) $generated@@40))
)))
(assert (= ($generated@@16 $generated@@42) 3))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@46 $generated@@43)  (or (= $generated@@46 $generated@@44) (= ($generated@@45 $generated@@46) $generated@@43)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@46 $generated@@43))
)))
(assert (forall (($generated@@48 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@48 $generated@@47)  (or (= $generated@@48 $generated@@44) (= ($generated@@45 $generated@@48) $generated@@47)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@48 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@37 ($generated@@37 $generated@@49 $generated@@50) $generated@@50) ($generated@@37 $generated@@49 $generated@@50))
 :pattern ( ($generated@@37 ($generated@@37 $generated@@49 $generated@@50) $generated@@50))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@54 $generated@@52 $generated@@55) ($generated@@51 $generated@@42 $generated@@54 $generated@@53 $generated@@55))
 :pattern ( ($generated@@51 $generated@@42 $generated@@54 $generated@@52 $generated@@55))
 :pattern ( ($generated@@51 $generated@@42 $generated@@54 $generated@@53 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@57 $generated@@56 $generated@@58) ($generated@@51 $generated@@42 $generated@@57 $generated@@43 $generated@@58))
 :pattern ( ($generated@@51 $generated@@42 $generated@@57 $generated@@56 $generated@@58))
 :pattern ( ($generated@@51 $generated@@42 $generated@@57 $generated@@43 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@60 $generated@@59 $generated@@61) ($generated@@51 $generated@@42 $generated@@60 $generated@@47 $generated@@61))
 :pattern ( ($generated@@51 $generated@@42 $generated@@60 $generated@@59 $generated@@61))
 :pattern ( ($generated@@51 $generated@@42 $generated@@60 $generated@@47 $generated@@61))
)))
(assert (= ($generated@@32 $generated@@62) 0))
(assert (= ($generated@@63 $generated@@4 $generated@@15) $generated@@62))
(assert  (not ($generated@@64 $generated@@62)))
(assert  (and (and (and (and (and (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@66 $generated@@73 $generated@@74 ($generated@@70 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@77) $generated@@75)
 :weight 0
)) (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (or (= $generated@@82 $generated@@83) (= ($generated@@66 $generated@@78 $generated@@79 ($generated@@70 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@83) ($generated@@66 $generated@@78 $generated@@79 $generated@@81 $generated@@83)))
 :weight 0
))) (= ($generated@@16 $generated@@67) 4)) (= ($generated@@16 $generated@@68) 5)) (forall (($generated@@84 T@T) ($generated@@85 T@T) ) (= ($generated@@16 ($generated@@69 $generated@@84 $generated@@85)) 6))) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (! (= ($generated@@71 ($generated@@69 $generated@@86 $generated@@87)) $generated@@86)
 :pattern ( ($generated@@69 $generated@@86 $generated@@87))
))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@72 ($generated@@69 $generated@@88 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@69 $generated@@88 $generated@@89))
))))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@90 $generated@@53 $generated@@91)  (or (= $generated@@90 $generated@@44) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@91 $generated@@90) $generated@@0)))))
 :pattern ( ($generated@@51 $generated@@42 $generated@@90 $generated@@53 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@92 $generated@@43 $generated@@93)  (or (= $generated@@92 $generated@@44) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@93 $generated@@92) $generated@@0)))))
 :pattern ( ($generated@@51 $generated@@42 $generated@@92 $generated@@43 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@94 $generated@@47 $generated@@95)  (or (= $generated@@94 $generated@@44) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@95 $generated@@94) $generated@@0)))))
 :pattern ( ($generated@@51 $generated@@42 $generated@@94 $generated@@47 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@96 $generated@@98 ($generated@@65 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@65 $generated@@98 $generated@@97))
)))
(assert (= ($generated@@16 $generated@@99) 7))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@41 $generated@@99 $generated@@102 ($generated@@100 $generated@@103)) (forall (($generated@@104 T@U) ) (!  (=> ($generated@@34 $generated@@102 $generated@@104) ($generated@@101 $generated@@104 $generated@@103))
 :pattern ( ($generated@@34 $generated@@102 $generated@@104))
)))
 :pattern ( ($generated@@41 $generated@@99 $generated@@102 ($generated@@100 $generated@@103)))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@109 ($generated@@105 $generated@@107 $generated@@108))  (and ($generated@@41 $generated@@42 $generated@@109 ($generated@@106 $generated@@107 $generated@@108)) (or (not (= $generated@@109 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@109 ($generated@@105 $generated@@107 $generated@@108)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@109 ($generated@@106 $generated@@107 $generated@@108)))
)))
(assert ($generated@@64 $generated@@0))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@110 ($generated@@96 $generated@@114 $generated@@111) $generated@@112 $generated@@113) ($generated@@51 $generated@@114 $generated@@111 $generated@@112 $generated@@113))
 :pattern ( ($generated@@110 ($generated@@96 $generated@@114 $generated@@111) $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@117 ($generated@@106 $generated@@115 $generated@@116))  (or (= $generated@@117 $generated@@44) (= ($generated@@45 $generated@@117) ($generated@@106 $generated@@115 $generated@@116))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@117 ($generated@@106 $generated@@115 $generated@@116)))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@120 ($generated@@105 $generated@@118 $generated@@119) $generated@@121) ($generated@@51 $generated@@42 $generated@@120 ($generated@@106 $generated@@118 $generated@@119) $generated@@121))
 :pattern ( ($generated@@51 $generated@@42 $generated@@120 ($generated@@105 $generated@@118 $generated@@119) $generated@@121))
 :pattern ( ($generated@@51 $generated@@42 $generated@@120 ($generated@@106 $generated@@118 $generated@@119) $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> ($generated@@101 $generated@@122 $generated@@53) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@122)) $generated@@122) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@122) $generated@@53)))
 :pattern ( ($generated@@101 $generated@@122 $generated@@53))
)))
(assert (forall (($generated@@123 T@U) ) (!  (=> ($generated@@101 $generated@@123 $generated@@52) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@123)) $generated@@123) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@123) $generated@@52)))
 :pattern ( ($generated@@101 $generated@@123 $generated@@52))
)))
(assert (forall (($generated@@124 T@U) ) (!  (=> ($generated@@101 $generated@@124 $generated@@43) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@124)) $generated@@124) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@124) $generated@@43)))
 :pattern ( ($generated@@101 $generated@@124 $generated@@43))
)))
(assert (forall (($generated@@125 T@U) ) (!  (=> ($generated@@101 $generated@@125 $generated@@47) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@125)) $generated@@125) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@125) $generated@@47)))
 :pattern ( ($generated@@101 $generated@@125 $generated@@47))
)))
(assert (forall (($generated@@126 T@U) ) (!  (=> ($generated@@101 $generated@@126 $generated@@56) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@126)) $generated@@126) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@126) $generated@@56)))
 :pattern ( ($generated@@101 $generated@@126 $generated@@56))
)))
(assert (forall (($generated@@127 T@U) ) (!  (=> ($generated@@101 $generated@@127 $generated@@59) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@127)) $generated@@127) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@127) $generated@@59)))
 :pattern ( ($generated@@101 $generated@@127 $generated@@59))
)))
(assert (forall (($generated@@128 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@128 $generated@@52)  (and ($generated@@41 $generated@@42 $generated@@128 $generated@@53) (or (not (= $generated@@128 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@128 $generated@@52))
 :pattern ( ($generated@@41 $generated@@42 $generated@@128 $generated@@53))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@129 $generated@@56)  (and ($generated@@41 $generated@@42 $generated@@129 $generated@@43) (or (not (= $generated@@129 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@129 $generated@@56))
 :pattern ( ($generated@@41 $generated@@42 $generated@@129 $generated@@43))
)))
(assert (forall (($generated@@130 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@130 $generated@@59)  (and ($generated@@41 $generated@@42 $generated@@130 $generated@@47) (or (not (= $generated@@130 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@130 $generated@@59))
 :pattern ( ($generated@@41 $generated@@42 $generated@@130 $generated@@47))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@51 $generated@@42 $generated@@133 ($generated@@106 $generated@@131 $generated@@132) $generated@@134)  (or (= $generated@@133 $generated@@44) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@134 $generated@@133) $generated@@0)))))
 :pattern ( ($generated@@51 $generated@@42 $generated@@133 ($generated@@106 $generated@@131 $generated@@132) $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@135 $generated@@136 $generated@@137) (= $generated@@136 $generated@@137))
 :pattern ( ($generated@@135 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (and (= ($generated@@138 ($generated@@63 $generated@@139 $generated@@140)) $generated@@139) (= ($generated@@33 ($generated@@63 $generated@@139 $generated@@140)) $generated@@140))
 :pattern ( ($generated@@63 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@T) ) (! (= ($generated@@101 ($generated@@96 $generated@@143 $generated@@141) $generated@@142) ($generated@@41 $generated@@143 $generated@@141 $generated@@142))
 :pattern ( ($generated@@101 ($generated@@96 $generated@@143 $generated@@141) $generated@@142))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (and (and ($generated@@144 $generated@@145) (and (or (not (= $generated@@146 $generated@@44)) (not true)) (= ($generated@@45 $generated@@146) $generated@@43))) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@145 $generated@@146) $generated@@0)))) ($generated@@51 $generated@@99 ($generated@@65 $generated@@99 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@145 $generated@@146) $generated@@62)) ($generated@@100 ($generated@@106 $generated@@56 $generated@@59)) $generated@@145))
 :pattern ( ($generated@@65 $generated@@99 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@145 $generated@@146) $generated@@62)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@51 $generated@@99 $generated@@147 ($generated@@100 $generated@@148) $generated@@149) (forall (($generated@@150 T@U) ) (!  (=> ($generated@@34 $generated@@147 $generated@@150) ($generated@@110 $generated@@150 $generated@@148 $generated@@149))
 :pattern ( ($generated@@34 $generated@@147 $generated@@150))
)))
 :pattern ( ($generated@@51 $generated@@99 $generated@@147 ($generated@@100 $generated@@148) $generated@@149))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@151 ($generated@@106 $generated@@152 $generated@@153)) $generated@@152)
 :pattern ( ($generated@@106 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@154 ($generated@@106 $generated@@155 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@106 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@157 ($generated@@105 $generated@@158 $generated@@159)) $generated@@158)
 :pattern ( ($generated@@105 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@160 ($generated@@105 $generated@@161 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@105 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ) (! ($generated@@41 $generated@@42 $generated@@163 $generated@@53)
 :pattern ( ($generated@@41 $generated@@42 $generated@@163 $generated@@53))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and ($generated@@144 $generated@@164) (and (or (not (= $generated@@165 $generated@@44)) (not true)) (= ($generated@@45 $generated@@165) $generated@@43))) ($generated@@41 $generated@@99 ($generated@@65 $generated@@99 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@164 $generated@@165) $generated@@62)) ($generated@@100 ($generated@@106 $generated@@56 $generated@@59))))
 :pattern ( ($generated@@65 $generated@@99 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@164 $generated@@165) $generated@@62)))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@166 ($generated@@100 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@100 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@168 ($generated@@100 $generated@@169)) $generated)
 :pattern ( ($generated@@100 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@65 $generated@@171 ($generated@@96 $generated@@171 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@96 $generated@@171 $generated@@170))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@37 $generated@@172 ($generated@@37 $generated@@172 $generated@@173)) ($generated@@37 $generated@@172 $generated@@173))
 :pattern ( ($generated@@37 $generated@@172 ($generated@@37 $generated@@172 $generated@@173)))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> ($generated@@101 $generated@@176 ($generated@@106 $generated@@174 $generated@@175)) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@176)) $generated@@176) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@176) ($generated@@106 $generated@@174 $generated@@175))))
 :pattern ( ($generated@@101 $generated@@176 ($generated@@106 $generated@@174 $generated@@175)))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (!  (=> ($generated@@101 $generated@@179 ($generated@@105 $generated@@177 $generated@@178)) (and (= ($generated@@96 $generated@@42 ($generated@@65 $generated@@42 $generated@@179)) $generated@@179) ($generated@@41 $generated@@42 ($generated@@65 $generated@@42 $generated@@179) ($generated@@105 $generated@@177 $generated@@178))))
 :pattern ( ($generated@@101 $generated@@179 ($generated@@105 $generated@@177 $generated@@178)))
)))
(assert  (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@180 $generated@@183 $generated@@184 $generated@@185 ($generated@@182 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@188 $generated@@189) $generated@@186)
 :weight 0
)) (and (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@180 $generated@@190 $generated@@191 $generated@@192 ($generated@@182 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@197 $generated@@198) ($generated@@180 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@197 $generated@@198)))
 :weight 0
)) (forall (($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (or (= $generated@@205 $generated@@207) (= ($generated@@180 $generated@@199 $generated@@200 $generated@@201 ($generated@@182 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@205 $generated@@202) $generated@@206 $generated@@207) ($generated@@180 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@206 $generated@@207)))
 :weight 0
)))))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 Bool) ($generated@@212 T@U) ($generated@@213 T@U) ) (! (= ($generated@@21 ($generated@@180 $generated@@42 $generated@@67 $generated@@17 ($generated@@181 $generated@@208 $generated@@209 $generated@@210 $generated@@211) $generated@@212 $generated@@213))  (=> (and (or (not (= $generated@@212 $generated@@208)) (not true)) ($generated@@21 ($generated@@65 $generated@@17 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@209 $generated@@212) $generated@@210)))) $generated@@211))
 :pattern ( ($generated@@180 $generated@@42 $generated@@67 $generated@@17 ($generated@@181 $generated@@208 $generated@@209 $generated@@210 $generated@@211) $generated@@212 $generated@@213))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (and (= ($generated@@168 ($generated@@106 $generated@@215 $generated@@216)) $generated@@8) (= ($generated@@214 ($generated@@106 $generated@@215 $generated@@216)) $generated@@14))
 :pattern ( ($generated@@106 $generated@@215 $generated@@216))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (and (= ($generated@@168 ($generated@@105 $generated@@217 $generated@@218)) $generated@@10) (= ($generated@@214 ($generated@@105 $generated@@217 $generated@@218)) $generated@@14))
 :pattern ( ($generated@@105 $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> ($generated@@101 $generated@@219 ($generated@@100 $generated@@220)) (and (= ($generated@@96 $generated@@99 ($generated@@65 $generated@@99 $generated@@219)) $generated@@219) ($generated@@41 $generated@@99 ($generated@@65 $generated@@99 $generated@@219) ($generated@@100 $generated@@220))))
 :pattern ( ($generated@@101 $generated@@219 ($generated@@100 $generated@@220)))
)))
(assert (= ($generated@@168 $generated@@53) $generated@@2))
(assert (= ($generated@@214 $generated@@53) $generated@@11))
(assert (= ($generated@@168 $generated@@52) $generated@@3))
(assert (= ($generated@@214 $generated@@52) $generated@@11))
(assert (= ($generated@@168 $generated@@43) $generated@@5))
(assert (= ($generated@@214 $generated@@43) $generated@@12))
(assert (= ($generated@@168 $generated@@47) $generated@@6))
(assert (= ($generated@@214 $generated@@47) $generated@@13))
(assert (= ($generated@@168 $generated@@56) $generated@@7))
(assert (= ($generated@@214 $generated@@56) $generated@@12))
(assert (= ($generated@@168 $generated@@59) $generated@@9))
(assert (= ($generated@@214 $generated@@59) $generated@@13))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@135 $generated@@221 $generated@@222) (forall (($generated@@223 T@U) ) (! (= ($generated@@34 $generated@@221 $generated@@223) ($generated@@34 $generated@@222 $generated@@223))
 :pattern ( ($generated@@34 $generated@@221 $generated@@223))
 :pattern ( ($generated@@34 $generated@@222 $generated@@223))
)))
 :pattern ( ($generated@@135 $generated@@221 $generated@@222))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 (T@U) Bool)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@233  (=> (= $generated@@224 ($generated@@181 $generated@@44 $generated@@225 $generated@@0 false)) (=> (and (= $generated@@226 ($generated@@65 $generated@@99 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@42 ($generated@@69 $generated@@67 $generated@@68) $generated@@225 $generated@@227) $generated@@62))) (= (ControlFlow 0 2) (- 0 1))) ($generated@@135 ($generated@@37 $generated@@226 $generated@@228) $generated@@35)))))
(let (($generated@@234  (=> (and ($generated@@144 $generated@@225) ($generated@@229 $generated@@225)) (=> (and (and (and (and (or (not (= $generated@@227 $generated@@44)) (not true)) (and ($generated@@41 $generated@@42 $generated@@227 $generated@@56) ($generated@@51 $generated@@42 $generated@@227 $generated@@56 $generated@@225))) (and ($generated@@41 $generated@@99 $generated@@228 ($generated@@100 ($generated@@106 $generated@@59 $generated@@56))) ($generated@@51 $generated@@99 $generated@@228 ($generated@@100 ($generated@@106 $generated@@59 $generated@@56)) $generated@@225))) (and (and ($generated@@41 $generated@@99 $generated@@230 ($generated@@100 $generated@@53)) ($generated@@51 $generated@@99 $generated@@230 ($generated@@100 $generated@@53) $generated@@225)) true)) (and (and (and ($generated@@41 $generated@@99 $generated@@231 ($generated@@100 $generated@@53)) ($generated@@51 $generated@@99 $generated@@231 ($generated@@100 $generated@@53) $generated@@225)) true) (and (= 1 $generated@@232) (= (ControlFlow 0 3) 2)))) $generated@@233))))
$generated@@234)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)