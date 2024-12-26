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
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 (Bool) T@U)
(declare-fun $generated@@14 (T@U) Bool)
(declare-fun $generated@@15 (Int) T@U)
(declare-fun $generated@@16 (T@U) Int)
(declare-fun $generated@@17 (Real) T@U)
(declare-fun $generated@@18 (T@U) Real)
(declare-fun $generated@@25 () Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 (T@T T@T) T@T)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@42 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@43 (T@T) T@T)
(declare-fun $generated@@44 (T@T) T@T)
(declare-fun $generated@@65 () T@U)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@73 (T@U T@U) T@U)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@75 () T@T)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@79 (T@U T@U T@U) T@U)
(declare-fun $generated@@88 (T@U T@U) Bool)
(declare-fun $generated@@89 (T@U T@U) Bool)
(declare-fun $generated@@93 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@U T@U) Bool)
(declare-fun $generated@@102 (T@U T@U T@U) Bool)
(declare-fun $generated@@122 (T@U T@U) Bool)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@143 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@144 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@145 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@179 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@10) 0) (= ($generated@@9 $generated@@11) 1)) (= ($generated@@9 $generated@@12) 2)) (forall (($generated@@19 Bool) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Int) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8)
)
(assert (= ($generated@@9 $generated@@31) 3))
(assert  (=> (< 2 $generated@@25) (forall (($generated@@33 T@U) ) (!  (=> (and (or (not (= $generated@@33 $generated@@27)) (not true)) (= ($generated@@28 $generated@@33) $generated@@29)) ($generated@@30 $generated@@31 ($generated@@26 $generated@@33) $generated@@32))
 :pattern ( ($generated@@26 $generated@@33))
))))
(assert  (and (and (and (and (and (and (and (forall (($generated@@45 T@T) ($generated@@46 T@T) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@35 $generated@@45 $generated@@46 ($generated@@42 $generated@@45 $generated@@46 $generated@@48 $generated@@49 $generated@@47) $generated@@49) $generated@@47)
 :weight 0
)) (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (or (= $generated@@54 $generated@@55) (= ($generated@@35 $generated@@50 $generated@@51 ($generated@@42 $generated@@50 $generated@@51 $generated@@53 $generated@@54 $generated@@52) $generated@@55) ($generated@@35 $generated@@50 $generated@@51 $generated@@53 $generated@@55)))
 :weight 0
))) (= ($generated@@9 $generated@@36) 4)) (= ($generated@@9 $generated@@37) 5)) (= ($generated@@9 $generated@@38) 6)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ) (= ($generated@@9 ($generated@@39 $generated@@56 $generated@@57)) 7))) (forall (($generated@@58 T@T) ($generated@@59 T@T) ) (! (= ($generated@@43 ($generated@@39 $generated@@58 $generated@@59)) $generated@@58)
 :pattern ( ($generated@@39 $generated@@58 $generated@@59))
))) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (! (= ($generated@@44 ($generated@@39 $generated@@60 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@39 $generated@@60 $generated@@61))
))))
(assert  (=> (< 2 $generated@@25) (forall (($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@62) (and (or (not (= $generated@@63 $generated@@27)) (not true)) (= ($generated@@28 $generated@@63) $generated@@29))) ($generated@@14 ($generated@@34 $generated@@10 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@62 $generated@@63) $generated@@0)))) ($generated@@41 $generated@@31 ($generated@@26 $generated@@63) $generated@@32 $generated@@62))
 :pattern ( ($generated@@26 $generated@@63) ($generated@@34 $generated@@10 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@62 $generated@@63) $generated@@0)))
))))
(assert (forall (($generated@@64 T@U) ) (! (= ($generated@@30 $generated@@38 $generated@@64 $generated@@29)  (or (= $generated@@64 $generated@@27) (= ($generated@@28 $generated@@64) $generated@@29)))
 :pattern ( ($generated@@30 $generated@@38 $generated@@64 $generated@@29))
)))
(assert (forall (($generated@@66 T@U) ) (! (= ($generated@@30 $generated@@38 $generated@@66 $generated@@65)  (or (= $generated@@66 $generated@@27) (= ($generated@@28 $generated@@66) $generated@@65)))
 :pattern ( ($generated@@30 $generated@@38 $generated@@66 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@41 $generated@@38 $generated@@68 $generated@@67 $generated@@69) ($generated@@41 $generated@@38 $generated@@68 $generated@@29 $generated@@69))
 :pattern ( ($generated@@41 $generated@@38 $generated@@68 $generated@@67 $generated@@69))
 :pattern ( ($generated@@41 $generated@@38 $generated@@68 $generated@@29 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@41 $generated@@38 $generated@@71 $generated@@70 $generated@@72) ($generated@@41 $generated@@38 $generated@@71 $generated@@65 $generated@@72))
 :pattern ( ($generated@@41 $generated@@38 $generated@@71 $generated@@70 $generated@@72))
 :pattern ( ($generated@@41 $generated@@38 $generated@@71 $generated@@65 $generated@@72))
)))
(assert (= ($generated@@9 $generated@@75) 8))
(assert  (=> (<= 3 $generated@@25) (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (or ($generated@@76 $generated@@80 ($generated@@74 $generated@@75 $generated@@81)) (and (< 3 $generated@@25) (and (and (or (not (= $generated@@80 $generated@@27)) (not true)) ($generated@@30 $generated@@38 $generated@@80 $generated@@70)) ($generated@@30 $generated@@75 $generated@@81 ($generated@@77 $generated@@67))))) (= ($generated@@73 $generated@@80 ($generated@@74 $generated@@75 $generated@@81)) ($generated@@78 ($generated@@79 $generated@@67 ($generated@@74 $generated@@75 $generated@@81) $generated@@81))))
 :weight 3
 :pattern ( ($generated@@73 $generated@@80 ($generated@@74 $generated@@75 $generated@@81)))
))))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@41 $generated@@38 $generated@@82 $generated@@29 $generated@@83)  (or (= $generated@@82 $generated@@27) ($generated@@14 ($generated@@34 $generated@@10 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@83 $generated@@82) $generated@@0)))))
 :pattern ( ($generated@@41 $generated@@38 $generated@@82 $generated@@29 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@41 $generated@@38 $generated@@84 $generated@@65 $generated@@85)  (or (= $generated@@84 $generated@@27) ($generated@@14 ($generated@@34 $generated@@10 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@85 $generated@@84) $generated@@0)))))
 :pattern ( ($generated@@41 $generated@@38 $generated@@84 $generated@@65 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@74 $generated@@87 $generated@@86) $generated@@86)
 :pattern ( ($generated@@74 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@88 $generated@@90 $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@89 $generated@@90 $generated@@92) ($generated@@89 $generated@@91 $generated@@92))
 :pattern ( ($generated@@89 $generated@@90 $generated@@92))
 :pattern ( ($generated@@89 $generated@@91 $generated@@92))
)))
 :pattern ( ($generated@@88 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@93 $generated@@95 ($generated@@34 $generated@@95 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@34 $generated@@95 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@89 ($generated@@78 $generated@@96) $generated@@97) ($generated@@14 ($generated@@35 $generated@@37 $generated@@10 $generated@@96 $generated@@97)))
 :pattern ( ($generated@@89 ($generated@@78 $generated@@96) $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@30 $generated@@75 $generated@@99 ($generated@@77 $generated@@100)) (forall (($generated@@101 T@U) ) (!  (=> ($generated@@89 $generated@@99 $generated@@101) ($generated@@98 $generated@@101 $generated@@100))
 :pattern ( ($generated@@89 $generated@@99 $generated@@101))
)))
 :pattern ( ($generated@@30 $generated@@75 $generated@@99 ($generated@@77 $generated@@100)))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@102 ($generated@@93 $generated@@106 $generated@@103) $generated@@104 $generated@@105) ($generated@@41 $generated@@106 $generated@@103 $generated@@104 $generated@@105))
 :pattern ( ($generated@@102 ($generated@@93 $generated@@106 $generated@@103) $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@98 $generated@@107 $generated@@67) (and (= ($generated@@93 $generated@@38 ($generated@@34 $generated@@38 $generated@@107)) $generated@@107) ($generated@@30 $generated@@38 ($generated@@34 $generated@@38 $generated@@107) $generated@@67)))
 :pattern ( ($generated@@98 $generated@@107 $generated@@67))
)))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@98 $generated@@108 $generated@@32) (and (= ($generated@@93 $generated@@31 ($generated@@34 $generated@@31 $generated@@108)) $generated@@108) ($generated@@30 $generated@@31 ($generated@@34 $generated@@31 $generated@@108) $generated@@32)))
 :pattern ( ($generated@@98 $generated@@108 $generated@@32))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@98 $generated@@109 $generated@@70) (and (= ($generated@@93 $generated@@38 ($generated@@34 $generated@@38 $generated@@109)) $generated@@109) ($generated@@30 $generated@@38 ($generated@@34 $generated@@38 $generated@@109) $generated@@70)))
 :pattern ( ($generated@@98 $generated@@109 $generated@@70))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@98 $generated@@110 $generated@@65) (and (= ($generated@@93 $generated@@38 ($generated@@34 $generated@@38 $generated@@110)) $generated@@110) ($generated@@30 $generated@@38 ($generated@@34 $generated@@38 $generated@@110) $generated@@65)))
 :pattern ( ($generated@@98 $generated@@110 $generated@@65))
)))
(assert (forall (($generated@@111 T@U) ) (!  (=> ($generated@@98 $generated@@111 $generated@@29) (and (= ($generated@@93 $generated@@38 ($generated@@34 $generated@@38 $generated@@111)) $generated@@111) ($generated@@30 $generated@@38 ($generated@@34 $generated@@38 $generated@@111) $generated@@29)))
 :pattern ( ($generated@@98 $generated@@111 $generated@@29))
)))
(assert (forall (($generated@@112 T@U) ) (! (= ($generated@@30 $generated@@38 $generated@@112 $generated@@67)  (and ($generated@@30 $generated@@38 $generated@@112 $generated@@29) (or (not (= $generated@@112 $generated@@27)) (not true))))
 :pattern ( ($generated@@30 $generated@@38 $generated@@112 $generated@@67))
 :pattern ( ($generated@@30 $generated@@38 $generated@@112 $generated@@29))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@30 $generated@@38 $generated@@113 $generated@@70)  (and ($generated@@30 $generated@@38 $generated@@113 $generated@@65) (or (not (= $generated@@113 $generated@@27)) (not true))))
 :pattern ( ($generated@@30 $generated@@38 $generated@@113 $generated@@70))
 :pattern ( ($generated@@30 $generated@@38 $generated@@113 $generated@@65))
)))
(assert  (=> (<= 3 $generated@@25) (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (or ($generated@@76 $generated@@114 $generated@@115) (and (< 3 $generated@@25) (and (and (or (not (= $generated@@114 $generated@@27)) (not true)) ($generated@@30 $generated@@38 $generated@@114 $generated@@70)) ($generated@@30 $generated@@75 $generated@@115 ($generated@@77 $generated@@67))))) (and (forall (($generated@@116 T@U) ) (!  (=> (and ($generated@@30 $generated@@38 $generated@@116 $generated@@67) ($generated@@89 $generated@@115 ($generated@@93 $generated@@38 $generated@@116))) ($generated@@89 ($generated@@73 $generated@@114 $generated@@115) ($generated@@93 $generated@@31 ($generated@@26 $generated@@116))))
 :pattern ( ($generated@@26 $generated@@116))
 :pattern ( ($generated@@89 $generated@@115 ($generated@@93 $generated@@38 $generated@@116)))
)) ($generated@@30 $generated@@75 ($generated@@73 $generated@@114 $generated@@115) ($generated@@77 $generated@@32))))
 :pattern ( ($generated@@73 $generated@@114 $generated@@115))
))))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@14 ($generated@@35 $generated@@37 $generated@@10 ($generated@@79 $generated@@117 $generated@@118 $generated@@119) $generated@@120)) (exists (($generated@@121 T@U) ) (!  (and (and ($generated@@30 $generated@@38 $generated@@121 $generated@@117) ($generated@@89 $generated@@118 ($generated@@93 $generated@@38 $generated@@121))) (= $generated@@120 ($generated@@93 $generated@@31 ($generated@@26 $generated@@121))))
 :pattern ( ($generated@@26 $generated@@121))
 :pattern ( ($generated@@89 $generated@@119 ($generated@@93 $generated@@38 $generated@@121)))
)))
 :pattern ( ($generated@@35 $generated@@37 $generated@@10 ($generated@@79 $generated@@117 $generated@@118 $generated@@119) $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> ($generated@@122 $generated@@123 $generated@@124) (= $generated@@123 $generated@@124))
 :pattern ( ($generated@@122 $generated@@123 $generated@@124))
)))
(assert  (=> (<= 3 $generated@@25) (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or ($generated@@76 ($generated@@74 $generated@@38 $generated@@125) ($generated@@74 $generated@@75 $generated@@126)) (and (< 3 $generated@@25) (and (and (or (not (= $generated@@125 $generated@@27)) (not true)) ($generated@@30 $generated@@38 $generated@@125 $generated@@70)) ($generated@@30 $generated@@75 $generated@@126 ($generated@@77 $generated@@67))))) (= ($generated@@73 ($generated@@74 $generated@@38 $generated@@125) ($generated@@74 $generated@@75 $generated@@126)) ($generated@@78 ($generated@@79 $generated@@67 ($generated@@74 $generated@@75 $generated@@126) $generated@@126))))
 :weight 3
 :pattern ( ($generated@@73 ($generated@@74 $generated@@38 $generated@@125) ($generated@@74 $generated@@75 $generated@@126)))
))))
(assert  (=> (<= 3 $generated@@25) (forall (($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> (and (or ($generated@@76 $generated@@128 $generated@@129) (and (< 3 $generated@@25) (and (and (or (not (= $generated@@128 $generated@@27)) (not true)) ($generated@@41 $generated@@38 $generated@@128 $generated@@70 $generated@@127)) (and ($generated@@30 $generated@@75 $generated@@129 ($generated@@77 $generated@@67)) ($generated@@41 $generated@@75 $generated@@129 ($generated@@77 $generated@@67) $generated@@127))))) ($generated@@40 $generated@@127)) ($generated@@41 $generated@@75 ($generated@@73 $generated@@128 $generated@@129) ($generated@@77 $generated@@32) $generated@@127))
 :pattern ( ($generated@@41 $generated@@75 ($generated@@73 $generated@@128 $generated@@129) ($generated@@77 $generated@@32) $generated@@127))
))))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@T) ) (! (= ($generated@@98 ($generated@@93 $generated@@132 $generated@@130) $generated@@131) ($generated@@30 $generated@@132 $generated@@130 $generated@@131))
 :pattern ( ($generated@@98 ($generated@@93 $generated@@132 $generated@@130) $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@41 $generated@@75 $generated@@133 ($generated@@77 $generated@@134) $generated@@135) (forall (($generated@@136 T@U) ) (!  (=> ($generated@@89 $generated@@133 $generated@@136) ($generated@@102 $generated@@136 $generated@@134 $generated@@135))
 :pattern ( ($generated@@89 $generated@@133 $generated@@136))
)))
 :pattern ( ($generated@@41 $generated@@75 $generated@@133 ($generated@@77 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@137 ($generated@@77 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@77 $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@139 ($generated@@77 $generated@@140)) $generated)
 :pattern ( ($generated@@77 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@T) ) (! (= ($generated@@34 $generated@@142 ($generated@@93 $generated@@142 $generated@@141)) $generated@@141)
 :pattern ( ($generated@@93 $generated@@142 $generated@@141))
)))
(assert  (and (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@143 $generated@@146 $generated@@147 $generated@@148 ($generated@@145 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@152 $generated@@149) $generated@@151 $generated@@152) $generated@@149)
 :weight 0
)) (and (forall (($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (or (= $generated@@158 $generated@@160) (= ($generated@@143 $generated@@153 $generated@@154 $generated@@155 ($generated@@145 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@158 $generated@@159 $generated@@156) $generated@@160 $generated@@161) ($generated@@143 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@160 $generated@@161)))
 :weight 0
)) (forall (($generated@@162 T@T) ($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (or (= $generated@@168 $generated@@170) (= ($generated@@143 $generated@@162 $generated@@163 $generated@@164 ($generated@@145 $generated@@162 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@168 $generated@@165) $generated@@169 $generated@@170) ($generated@@143 $generated@@162 $generated@@163 $generated@@164 $generated@@166 $generated@@169 $generated@@170)))
 :weight 0
)))))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 Bool) ($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@14 ($generated@@143 $generated@@38 $generated@@36 $generated@@10 ($generated@@144 $generated@@171 $generated@@172 $generated@@173 $generated@@174) $generated@@175 $generated@@176))  (=> (and (or (not (= $generated@@175 $generated@@171)) (not true)) ($generated@@14 ($generated@@34 $generated@@10 ($generated@@35 $generated@@36 $generated@@37 ($generated@@35 $generated@@38 ($generated@@39 $generated@@36 $generated@@37) $generated@@172 $generated@@175) $generated@@173)))) $generated@@174))
 :pattern ( ($generated@@143 $generated@@38 $generated@@36 $generated@@10 ($generated@@144 $generated@@171 $generated@@172 $generated@@173 $generated@@174) $generated@@175 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> ($generated@@98 $generated@@177 ($generated@@77 $generated@@178)) (and (= ($generated@@93 $generated@@75 ($generated@@34 $generated@@75 $generated@@177)) $generated@@177) ($generated@@30 $generated@@75 ($generated@@34 $generated@@75 $generated@@177) ($generated@@77 $generated@@178))))
 :pattern ( ($generated@@98 $generated@@177 ($generated@@77 $generated@@178)))
)))
(assert (= ($generated@@139 $generated@@67) $generated@@1))
(assert (= ($generated@@179 $generated@@67) $generated@@6))
(assert (= ($generated@@139 $generated@@32) $generated@@2))
(assert (= ($generated@@179 $generated@@32) $generated@@7))
(assert (= ($generated@@139 $generated@@70) $generated@@3))
(assert (= ($generated@@179 $generated@@70) $generated@@8))
(assert (= ($generated@@139 $generated@@65) $generated@@4))
(assert (= ($generated@@179 $generated@@65) $generated@@8))
(assert (= ($generated@@139 $generated@@29) $generated@@5))
(assert (= ($generated@@179 $generated@@29) $generated@@6))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@122 $generated@@180 $generated@@181) (forall (($generated@@182 T@U) ) (! (= ($generated@@89 $generated@@180 $generated@@182) ($generated@@89 $generated@@181 $generated@@182))
 :pattern ( ($generated@@89 $generated@@180 $generated@@182))
 :pattern ( ($generated@@89 $generated@@181 $generated@@182))
)))
 :pattern ( ($generated@@122 $generated@@180 $generated@@181))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@T) ) (! (= ($generated@@93 $generated@@184 ($generated@@74 $generated@@184 $generated@@183)) ($generated@@74 $generated@@37 ($generated@@93 $generated@@184 $generated@@183)))
 :pattern ( ($generated@@93 $generated@@184 ($generated@@74 $generated@@184 $generated@@183)))
)))
(assert  (=> (<= 3 $generated@@25) (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (or ($generated@@76 $generated@@185 $generated@@186) (and (< 3 $generated@@25) (and (and (or (not (= $generated@@185 $generated@@27)) (not true)) ($generated@@30 $generated@@38 $generated@@185 $generated@@70)) ($generated@@30 $generated@@75 $generated@@186 ($generated@@77 $generated@@67))))) (= ($generated@@73 $generated@@185 $generated@@186) ($generated@@78 ($generated@@79 $generated@@67 $generated@@186 $generated@@186))))
 :pattern ( ($generated@@73 $generated@@185 $generated@@186))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 16) (let (($generated@@194 true))
(let (($generated@@195  (=> (and (=> ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@188)) ($generated@@89 ($generated@@73 $generated@@189 $generated@@187) ($generated@@93 $generated@@31 ($generated@@26 $generated@@188)))) (= (ControlFlow 0 13) 9)) $generated@@194)))
(let (($generated@@196  (=> ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@188)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (not (= $generated@@188 $generated@@27)) (not true))) (=> (or (not (= $generated@@188 $generated@@27)) (not true)) (=> (and ($generated@@102 ($generated@@93 $generated@@38 $generated@@189) $generated@@65 $generated@@190) ($generated@@41 $generated@@75 $generated@@187 ($generated@@77 $generated@@67) $generated@@190)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (and (= $generated@@189 $generated@@189) ($generated@@122 $generated@@187 $generated@@187)) (and ($generated@@88 $generated@@187 $generated@@187) (not ($generated@@88 $generated@@187 $generated@@187))))) (=> (or (and (= $generated@@189 $generated@@189) ($generated@@122 $generated@@187 $generated@@187)) (and ($generated@@88 $generated@@187 $generated@@187) (not ($generated@@88 $generated@@187 $generated@@187)))) (=> (or (and (= $generated@@189 $generated@@189) ($generated@@122 $generated@@187 $generated@@187)) ($generated@@76 $generated@@189 $generated@@187)) (=> (and ($generated@@89 ($generated@@73 $generated@@189 $generated@@187) ($generated@@93 $generated@@31 ($generated@@26 $generated@@188))) (= (ControlFlow 0 10) 9)) $generated@@194))))))))))
(let (($generated@@197  (=> ($generated@@30 $generated@@75 ($generated@@73 $generated@@189 $generated@@187) ($generated@@77 $generated@@32)) (=> (and ($generated@@30 $generated@@38 $generated@@188 $generated@@67) ($generated@@41 $generated@@38 $generated@@188 $generated@@67 $generated@@190)) (and (=> (= (ControlFlow 0 14) 10) $generated@@196) (=> (= (ControlFlow 0 14) 13) $generated@@195))))))
(let (($generated@@198  (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($generated@@199 T@U) ) (!  (=> (and ($generated@@30 $generated@@38 $generated@@199 $generated@@67) ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@199))) ($generated@@89 ($generated@@73 $generated@@189 $generated@@187) ($generated@@93 $generated@@31 ($generated@@26 $generated@@199))))
 :pattern ( ($generated@@26 $generated@@199))
 :pattern ( ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@199)))
)))))
(let (($generated@@200  (=> (= ($generated@@73 $generated@@189 $generated@@187) ($generated@@78 ($generated@@79 $generated@@67 $generated@@187 $generated@@187))) (=> (and ($generated@@30 $generated@@75 ($generated@@73 $generated@@189 $generated@@187) ($generated@@77 $generated@@32)) (= (ControlFlow 0 3) 2)) $generated@@198))))
(let (($generated@@201  (=> (and (not ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@191))) (= (ControlFlow 0 7) 3)) $generated@@200)))
(let (($generated@@202  (=> ($generated@@89 $generated@@187 ($generated@@93 $generated@@38 $generated@@191)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= $generated@@191 $generated@@27)) (not true))) (=> (or (not (= $generated@@191 $generated@@27)) (not true)) (=> (= (ControlFlow 0 5) 3) $generated@@200))))))
(let (($generated@@203  (=> (and ($generated@@30 $generated@@38 $generated@@191 $generated@@67) ($generated@@41 $generated@@38 $generated@@191 $generated@@67 $generated@@190)) (and (=> (= (ControlFlow 0 8) 5) $generated@@202) (=> (= (ControlFlow 0 8) 7) $generated@@201)))))
(let (($generated@@204  (=> (and (not (and ($generated@@30 $generated@@38 $generated@@191 $generated@@67) ($generated@@41 $generated@@38 $generated@@191 $generated@@67 $generated@@190))) (= (ControlFlow 0 4) 3)) $generated@@200)))
(let (($generated@@205  (=> (= $generated@@192 ($generated@@144 $generated@@27 $generated@@190 $generated@@0 false)) (and (and (=> (= (ControlFlow 0 15) 14) $generated@@197) (=> (= (ControlFlow 0 15) 8) $generated@@203)) (=> (= (ControlFlow 0 15) 4) $generated@@204)))))
(let (($generated@@206  (=> (and ($generated@@40 $generated@@190) ($generated@@193 $generated@@190)) (=> (and (and (and (or (not (= $generated@@189 $generated@@27)) (not true)) (and ($generated@@30 $generated@@38 $generated@@189 $generated@@70) ($generated@@41 $generated@@38 $generated@@189 $generated@@70 $generated@@190))) ($generated@@30 $generated@@75 $generated@@187 ($generated@@77 $generated@@67))) (and (= 3 $generated@@25) (= (ControlFlow 0 16) 15))) $generated@@205))))
$generated@@206)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)