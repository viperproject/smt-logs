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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@38 () Int)
(declare-fun $generated@@39 (T@U T@U) Bool)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 (T@T T@U T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 (T@T T@T) T@T)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@57 (T@T) T@T)
(declare-fun $generated@@77 () T@U)
(declare-fun $generated@@79 () T@U)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@82 () T@U)
(declare-fun $generated@@83 () T@U)
(declare-fun $generated@@88 (T@U T@U) T@U)
(declare-fun $generated@@89 (T@U) Bool)
(declare-fun $generated@@94 (T@U T@U) Bool)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@104 (T@U T@U) Bool)
(declare-fun $generated@@108 (T@U T@U T@U) Bool)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@152 (T@U) Bool)
(declare-fun $generated@@158 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@159 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@160 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@200 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated@@0) 0))
(assert (= ($generated@@27 $generated@@0) $generated@@1))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (! ($generated@@29 ($generated@@28 $generated@@30 $generated@@31) $generated@@31)
 :pattern ( ($generated@@28 $generated@@30 $generated@@31))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> ($generated@@29 $generated@@32 $generated@@34) ($generated@@29 ($generated@@28 $generated@@32 $generated@@33) $generated@@34))
 :pattern ( ($generated@@28 $generated@@32 $generated@@33) ($generated@@29 $generated@@32 $generated@@34))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@29 ($generated@@28 $generated@@35 $generated@@36) $generated@@37)  (or (= $generated@@37 $generated@@36) ($generated@@29 $generated@@35 $generated@@37)))
 :pattern ( ($generated@@29 ($generated@@28 $generated@@35 $generated@@36) $generated@@37))
)))
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@44) 3) (= ($generated@@10 $generated@@48) 4)) (forall (($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@49 $generated@@58 $generated@@59 ($generated@@55 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@60) $generated@@62) $generated@@60)
 :weight 0
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (or (= $generated@@67 $generated@@68) (= ($generated@@49 $generated@@63 $generated@@64 ($generated@@55 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@68) ($generated@@49 $generated@@63 $generated@@64 $generated@@66 $generated@@68)))
 :weight 0
))) (= ($generated@@10 $generated@@50) 5)) (= ($generated@@10 $generated@@51) 6)) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (= ($generated@@10 ($generated@@52 $generated@@69 $generated@@70)) 7))) (forall (($generated@@71 T@T) ($generated@@72 T@T) ) (! (= ($generated@@56 ($generated@@52 $generated@@71 $generated@@72)) $generated@@71)
 :pattern ( ($generated@@52 $generated@@71 $generated@@72))
))) (forall (($generated@@73 T@T) ($generated@@74 T@T) ) (! (= ($generated@@57 ($generated@@52 $generated@@73 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@52 $generated@@73 $generated@@74))
))))
(assert  (=> (<= 0 $generated@@38) (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> (or ($generated@@41 $generated@@75 $generated@@76) (and (< 0 $generated@@38) (and ($generated@@40 $generated@@75) (and (or (not (= $generated@@76 $generated@@42)) (not true)) (and ($generated@@43 $generated@@44 $generated@@76 $generated@@45) ($generated@@46 $generated@@44 $generated@@76 $generated@@45 $generated@@75)))))) (= ($generated@@39 $generated@@75 $generated@@76)  (and (and ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@75 $generated@@76) $generated@@53)) ($generated@@54 $generated@@44 $generated@@76)) (not ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@75 $generated@@76) $generated@@53)) ($generated@@54 $generated@@44 $generated@@42)))) true)))
 :pattern ( ($generated@@39 $generated@@75 $generated@@76) ($generated@@40 $generated@@75))
))))
(assert (forall (($generated@@78 T@U) ) (!  (not ($generated@@29 $generated@@77 $generated@@78))
 :pattern ( ($generated@@29 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@81 $generated@@79)  (or (= $generated@@81 $generated@@42) (= ($generated@@80 $generated@@81) $generated@@79)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@81 $generated@@79))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@46 $generated@@44 $generated@@84 $generated@@82 $generated@@85) ($generated@@46 $generated@@44 $generated@@84 $generated@@83 $generated@@85))
 :pattern ( ($generated@@46 $generated@@44 $generated@@84 $generated@@82 $generated@@85))
 :pattern ( ($generated@@46 $generated@@44 $generated@@84 $generated@@83 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@46 $generated@@44 $generated@@86 $generated@@45 $generated@@87) ($generated@@46 $generated@@44 $generated@@86 $generated@@79 $generated@@87))
 :pattern ( ($generated@@46 $generated@@44 $generated@@86 $generated@@45 $generated@@87))
 :pattern ( ($generated@@46 $generated@@44 $generated@@86 $generated@@79 $generated@@87))
)))
(assert (= ($generated@@26 $generated@@53) 0))
(assert (= ($generated@@88 $generated@@4 $generated@@9) $generated@@53))
(assert ($generated@@89 $generated@@53))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@46 $generated@@44 $generated@@90 $generated@@83 $generated@@91)  (or (= $generated@@90 $generated@@42) ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@91 $generated@@90) $generated@@0)))))
 :pattern ( ($generated@@46 $generated@@44 $generated@@90 $generated@@83 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@46 $generated@@44 $generated@@92 $generated@@79 $generated@@93)  (or (= $generated@@92 $generated@@42) ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@93 $generated@@92) $generated@@0)))))
 :pattern ( ($generated@@46 $generated@@44 $generated@@92 $generated@@79 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> ($generated@@94 $generated@@95 $generated@@96) (forall (($generated@@97 T@U) ) (!  (=> ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@95 $generated@@97) $generated@@0))) ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@96 $generated@@97) $generated@@0))))
 :pattern ( ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@96 $generated@@97) $generated@@0))
)))
 :pattern ( ($generated@@94 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 $generated@@99) $generated@@99)
 :pattern ( ($generated@@98 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@54 $generated@@102 ($generated@@47 $generated@@102 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@47 $generated@@102 $generated@@101))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@43 $generated@@48 $generated@@105 ($generated@@103 $generated@@106)) (forall (($generated@@107 T@U) ) (!  (=> ($generated@@29 $generated@@105 $generated@@107) ($generated@@104 $generated@@107 $generated@@106))
 :pattern ( ($generated@@29 $generated@@105 $generated@@107))
)))
 :pattern ( ($generated@@43 $generated@@48 $generated@@105 ($generated@@103 $generated@@106)))
)))
(assert ($generated@@89 $generated@@0))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@108 ($generated@@54 $generated@@112 $generated@@109) $generated@@110 $generated@@111) ($generated@@46 $generated@@112 $generated@@109 $generated@@110 $generated@@111))
 :pattern ( ($generated@@108 ($generated@@54 $generated@@112 $generated@@109) $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> ($generated@@94 $generated@@113 $generated@@114) (=> ($generated@@108 $generated@@115 $generated@@116 $generated@@113) ($generated@@108 $generated@@115 $generated@@116 $generated@@114)))
 :pattern ( ($generated@@94 $generated@@113 $generated@@114) ($generated@@108 $generated@@115 $generated@@116 $generated@@113))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@T) ) (!  (=> ($generated@@94 $generated@@117 $generated@@118) (=> ($generated@@46 $generated@@121 $generated@@119 $generated@@120 $generated@@117) ($generated@@46 $generated@@121 $generated@@119 $generated@@120 $generated@@118)))
 :pattern ( ($generated@@94 $generated@@117 $generated@@118) ($generated@@46 $generated@@121 $generated@@119 $generated@@120 $generated@@117))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> ($generated@@104 $generated@@122 $generated@@83) (and (= ($generated@@54 $generated@@44 ($generated@@47 $generated@@44 $generated@@122)) $generated@@122) ($generated@@43 $generated@@44 ($generated@@47 $generated@@44 $generated@@122) $generated@@83)))
 :pattern ( ($generated@@104 $generated@@122 $generated@@83))
)))
(assert (forall (($generated@@123 T@U) ) (!  (=> ($generated@@104 $generated@@123 $generated@@82) (and (= ($generated@@54 $generated@@44 ($generated@@47 $generated@@44 $generated@@123)) $generated@@123) ($generated@@43 $generated@@44 ($generated@@47 $generated@@44 $generated@@123) $generated@@82)))
 :pattern ( ($generated@@104 $generated@@123 $generated@@82))
)))
(assert (forall (($generated@@124 T@U) ) (!  (=> ($generated@@104 $generated@@124 $generated@@79) (and (= ($generated@@54 $generated@@44 ($generated@@47 $generated@@44 $generated@@124)) $generated@@124) ($generated@@43 $generated@@44 ($generated@@47 $generated@@44 $generated@@124) $generated@@79)))
 :pattern ( ($generated@@104 $generated@@124 $generated@@79))
)))
(assert (forall (($generated@@125 T@U) ) (!  (=> ($generated@@104 $generated@@125 $generated@@45) (and (= ($generated@@54 $generated@@44 ($generated@@47 $generated@@44 $generated@@125)) $generated@@125) ($generated@@43 $generated@@44 ($generated@@47 $generated@@44 $generated@@125) $generated@@45)))
 :pattern ( ($generated@@104 $generated@@125 $generated@@45))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@126 $generated@@82)  (and ($generated@@43 $generated@@44 $generated@@126 $generated@@83) (or (not (= $generated@@126 $generated@@42)) (not true))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@126 $generated@@82))
 :pattern ( ($generated@@43 $generated@@44 $generated@@126 $generated@@83))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@127 $generated@@45)  (and ($generated@@43 $generated@@44 $generated@@127 $generated@@79) (or (not (= $generated@@127 $generated@@42)) (not true))))
 :pattern ( ($generated@@43 $generated@@44 $generated@@127 $generated@@45))
 :pattern ( ($generated@@43 $generated@@44 $generated@@127 $generated@@79))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> (and ($generated@@40 $generated@@128) (and (or (not (= $generated@@129 $generated@@42)) (not true)) (= ($generated@@80 $generated@@129) $generated@@79))) ($generated@@43 $generated@@48 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@128 $generated@@129) $generated@@53)) ($generated@@103 $generated@@83)))
 :pattern ( ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@128 $generated@@129) $generated@@53)))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@130) (and (or (not (= $generated@@131 $generated@@42)) (not true)) (= ($generated@@80 $generated@@131) $generated@@79))) ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@130 $generated@@131) $generated@@0)))) ($generated@@46 $generated@@48 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@130 $generated@@131) $generated@@53)) ($generated@@103 $generated@@83) $generated@@130))
 :pattern ( ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@130 $generated@@131) $generated@@53)))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (or (not (= $generated@@132 $generated@@134)) (not true)) (=> (and ($generated@@94 $generated@@132 $generated@@133) ($generated@@94 $generated@@133 $generated@@134)) ($generated@@94 $generated@@132 $generated@@134)))
 :pattern ( ($generated@@94 $generated@@132 $generated@@133) ($generated@@94 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (and (= ($generated@@135 ($generated@@88 $generated@@136 $generated@@137)) $generated@@136) (= ($generated@@27 ($generated@@88 $generated@@136 $generated@@137)) $generated@@137))
 :pattern ( ($generated@@88 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@104 ($generated@@54 $generated@@140 $generated@@138) $generated@@139) ($generated@@43 $generated@@140 $generated@@138 $generated@@139))
 :pattern ( ($generated@@104 ($generated@@54 $generated@@140 $generated@@138) $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@46 $generated@@48 $generated@@141 ($generated@@103 $generated@@142) $generated@@143) (forall (($generated@@144 T@U) ) (!  (=> ($generated@@29 $generated@@141 $generated@@144) ($generated@@108 $generated@@144 $generated@@142 $generated@@143))
 :pattern ( ($generated@@29 $generated@@141 $generated@@144))
)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@141 ($generated@@103 $generated@@142) $generated@@143))
)))
(assert (forall (($generated@@145 T@U) ) (! ($generated@@43 $generated@@44 $generated@@145 $generated@@83)
 :pattern ( ($generated@@43 $generated@@44 $generated@@145 $generated@@83))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@146 ($generated@@103 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@103 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@148 ($generated@@103 $generated@@149)) $generated)
 :pattern ( ($generated@@103 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@T) ) (! (= ($generated@@47 $generated@@151 ($generated@@54 $generated@@151 $generated@@150)) $generated@@150)
 :pattern ( ($generated@@54 $generated@@151 $generated@@150))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> (and (and (and ($generated@@40 $generated@@153) ($generated@@40 $generated@@154)) (and (or (not (= $generated@@155 $generated@@42)) (not true)) ($generated@@43 $generated@@44 $generated@@155 $generated@@45))) (and ($generated@@152 $generated@@153) ($generated@@94 $generated@@153 $generated@@154))) (=> (forall (($generated@@156 T@U) ($generated@@157 T@U) )  (=> (and (or (not (= $generated@@156 $generated@@42)) (not true)) (or (= $generated@@156 $generated@@155) ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@153 $generated@@155) $generated@@53)) ($generated@@54 $generated@@44 $generated@@156)))) (= ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@153 $generated@@156) $generated@@157) ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@154 $generated@@156) $generated@@157)))) (= ($generated@@39 $generated@@153 $generated@@155) ($generated@@39 $generated@@154 $generated@@155))))
 :pattern ( ($generated@@152 $generated@@153) ($generated@@94 $generated@@153 $generated@@154) ($generated@@39 $generated@@154 $generated@@155))
)))
(assert  (and (forall (($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@T) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@158 $generated@@161 $generated@@162 $generated@@163 ($generated@@160 $generated@@161 $generated@@162 $generated@@163 $generated@@165 $generated@@166 $generated@@167 $generated@@164) $generated@@166 $generated@@167) $generated@@164)
 :weight 0
)) (and (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@173 $generated@@175) (= ($generated@@158 $generated@@168 $generated@@169 $generated@@170 ($generated@@160 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@158 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (!  (or (= $generated@@183 $generated@@185) (= ($generated@@158 $generated@@177 $generated@@178 $generated@@179 ($generated@@160 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@182 $generated@@183 $generated@@180) $generated@@184 $generated@@185) ($generated@@158 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@184 $generated@@185)))
 :weight 0
)))))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 Bool) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@15 ($generated@@158 $generated@@44 $generated@@50 $generated@@11 ($generated@@159 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))  (=> (and (or (not (= $generated@@190 $generated@@186)) (not true)) ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@187 $generated@@190) $generated@@188)))) $generated@@189))
 :pattern ( ($generated@@158 $generated@@44 $generated@@50 $generated@@11 ($generated@@159 $generated@@186 $generated@@187 $generated@@188 $generated@@189) $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> ($generated@@104 $generated@@192 ($generated@@103 $generated@@193)) (and (= ($generated@@54 $generated@@48 ($generated@@47 $generated@@48 $generated@@192)) $generated@@192) ($generated@@43 $generated@@48 ($generated@@47 $generated@@48 $generated@@192) ($generated@@103 $generated@@193))))
 :pattern ( ($generated@@104 $generated@@192 ($generated@@103 $generated@@193)))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> ($generated@@40 ($generated@@55 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195 ($generated@@55 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195) $generated@@196 $generated@@197))) ($generated@@94 $generated@@194 ($generated@@55 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195 ($generated@@55 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195) $generated@@196 $generated@@197))))
 :pattern ( ($generated@@55 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195 ($generated@@55 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@194 $generated@@195) $generated@@196 $generated@@197)))
)))
(assert  (=> (<= 0 $generated@@38) (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (!  (=> (or ($generated@@41 $generated@@198 $generated@@199) (and (< 0 $generated@@38) (and ($generated@@40 $generated@@198) (and (or (not (= $generated@@199 $generated@@42)) (not true)) (and ($generated@@43 $generated@@44 $generated@@199 $generated@@45) ($generated@@46 $generated@@44 $generated@@199 $generated@@45 $generated@@198)))))) (=> ($generated@@39 $generated@@198 $generated@@199) ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@198 $generated@@199) $generated@@53)) ($generated@@54 $generated@@44 $generated@@199))))
 :pattern ( ($generated@@39 $generated@@198 $generated@@199))
))))
(assert (= ($generated@@148 $generated@@83) $generated@@2))
(assert (= ($generated@@200 $generated@@83) $generated@@7))
(assert (= ($generated@@148 $generated@@82) $generated@@3))
(assert (= ($generated@@200 $generated@@82) $generated@@7))
(assert (= ($generated@@148 $generated@@79) $generated@@5))
(assert (= ($generated@@200 $generated@@79) $generated@@8))
(assert (= ($generated@@148 $generated@@45) $generated@@6))
(assert (= ($generated@@200 $generated@@45) $generated@@8))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@T) ) (! (= ($generated@@54 $generated@@202 ($generated@@98 $generated@@202 $generated@@201)) ($generated@@98 $generated@@51 ($generated@@54 $generated@@202 $generated@@201)))
 :pattern ( ($generated@@54 $generated@@202 ($generated@@98 $generated@@202 $generated@@201)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@210  (=> (= $generated@@203 ($generated@@159 $generated@@42 $generated@@204 $generated@@0 false)) (=> (and (and (and (or (not (= $generated@@205 $generated@@42)) (not true)) ($generated@@43 $generated@@44 $generated@@205 $generated@@79)) (not ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@204 $generated@@205) $generated@@0))))) (and (and (= ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@204 $generated@@205) $generated@@53)) $generated@@206) (= $generated@@207 ($generated@@55 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@204 $generated@@205 ($generated@@55 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@204 $generated@@205) $generated@@0 ($generated@@54 $generated@@11 ($generated@@14 true)))))) (and ($generated@@40 $generated@@207) ($generated@@152 $generated@@207)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@15 ($generated@@158 $generated@@44 $generated@@50 $generated@@11 $generated@@203 $generated@@205 $generated@@53))) (=> ($generated@@15 ($generated@@158 $generated@@44 $generated@@50 $generated@@11 $generated@@203 $generated@@205 $generated@@53)) (=> (= $generated@@208 ($generated@@28 $generated@@77 ($generated@@54 $generated@@44 $generated@@205))) (=> (and (= $generated@@209 ($generated@@55 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@207 $generated@@205 ($generated@@55 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@207 $generated@@205) $generated@@53 ($generated@@54 $generated@@48 $generated@@208)))) ($generated@@40 $generated@@209)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@205))))) (=> (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@205)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) (not ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@42)))))) (=> (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) (not ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@42))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) ($generated@@15 ($generated@@98 $generated@@11 ($generated@@14 true)))))) (=> (=> ($generated@@41 $generated@@209 $generated@@205) (or ($generated@@39 $generated@@209 $generated@@205) ($generated@@15 ($generated@@98 $generated@@11 ($generated@@14 true))))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall (($generated@@211 T@U) ) (!  (=> ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@211)) (or (not (= $generated@@211 $generated@@42)) (not true)))
 :pattern (  (or (not (= $generated@@211 $generated@@42)) (not true)))
)) (forall (($generated@@212 T@U) ) (!  (=> ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@212)) (not ($generated@@15 ($generated@@47 $generated@@11 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@204 $generated@@212) $generated@@0)))))
 :pattern ( ($generated@@29 ($generated@@47 $generated@@48 ($generated@@49 $generated@@50 $generated@@51 ($generated@@49 $generated@@44 ($generated@@52 $generated@@50 $generated@@51) $generated@@209 $generated@@205) $generated@@53)) ($generated@@54 $generated@@44 $generated@@212)))
))))))))))))))))))
(let (($generated@@213  (=> (and (and ($generated@@40 $generated@@204) ($generated@@152 $generated@@204)) (and (= 1 $generated@@38) (= (ControlFlow 0 7) 2))) $generated@@210)))
$generated@@213)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)