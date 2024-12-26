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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U T@U) T@U)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@U T@U) Bool)
(declare-fun $generated@@40 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@T T@T) T@T)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@69 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@71 (T@U) Bool)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@81 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@82 () T@U)
(declare-fun $generated@@99 (T@U) Bool)
(declare-fun $generated@@100 (T@U T@U T@U) Bool)
(declare-fun $generated@@101 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@131 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@148 (T@U T@U) Bool)
(declare-fun $generated@@153 (T@U T@U) T@U)
(declare-fun $generated@@158 (T@U T@U) T@U)
(declare-fun $generated@@182 (T@U) T@U)
(declare-fun $generated@@185 (T@U) T@U)
(declare-fun $generated@@188 (T@U) T@U)
(declare-fun $generated@@191 (T@U) T@U)
(declare-fun $generated@@194 (T@U) T@U)
(declare-fun $generated@@197 (T@U) T@U)
(declare-fun $generated@@225 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@226 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@227 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@259 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (forall (($generated@@27 T@U) ) (!  (not ($generated@@25 $generated@@26 $generated@@27))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27))
)))
(assert (= ($generated@@8 $generated@@29) 3))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> (and (and ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@33 $generated@@34)) (forall (($generated@@37 T@U) ) (!  (=> ($generated@@31 $generated@@37 $generated@@35) ($generated@@31 $generated@@37 $generated@@33))
 :pattern ( ($generated@@31 $generated@@37 $generated@@35))
 :pattern ( ($generated@@31 $generated@@37 $generated@@33))
))) (forall (($generated@@38 T@U) ) (!  (=> ($generated@@31 $generated@@38 $generated@@34) ($generated@@31 $generated@@38 $generated@@36))
 :pattern ( ($generated@@31 $generated@@38 $generated@@34))
 :pattern ( ($generated@@31 $generated@@38 $generated@@36))
))) ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@35 $generated@@36)))
 :pattern ( ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@33 $generated@@34)) ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@35 $generated@@36)))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@40 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@40 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@40 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@8 $generated@@41) 4)) (= ($generated@@8 $generated@@42) 5)) (= ($generated@@8 $generated@@43) 6)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@8 ($generated@@44 $generated@@60 $generated@@61)) 7))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@44 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@44 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@44 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@44 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> ($generated@@39 $generated@@66 $generated@@67) (forall (($generated@@68 T@U) ) (!  (=> ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@66 $generated@@68) $generated@@1))) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@67 $generated@@68) $generated@@1))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@67 $generated@@68) $generated@@1))
)))
 :pattern ( ($generated@@39 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (and ($generated@@71 $generated@@75) (and ($generated@@31 $generated@@77 $generated@@73) ($generated@@28 $generated@@29 $generated@@76 ($generated@@30 $generated@@73 $generated@@74)))) (= ($generated@@72 ($generated@@69 $generated@@73 $generated@@74 $generated@@70 $generated@@76 $generated@@77) $generated@@26) ($generated@@72 ($generated@@69 $generated@@73 $generated@@74 $generated@@75 $generated@@76 $generated@@77) $generated@@26)))
 :pattern ( ($generated@@69 $generated@@73 $generated@@74 $generated@@70 $generated@@76 $generated@@77) ($generated@@71 $generated@@75))
 :pattern ( ($generated@@69 $generated@@73 $generated@@74 $generated@@75 $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 ($generated@@45 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@45 $generated@@80 $generated@@79))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@85 $generated@@86) (and ($generated@@71 $generated@@85) ($generated@@71 $generated@@86))) (and ($generated@@31 $generated@@88 $generated@@83) ($generated@@28 $generated@@29 $generated@@87 ($generated@@30 $generated@@83 $generated@@84)))) (forall (($generated@@89 T@U) ($generated@@90 T@U) )  (=> (and (or (not (= $generated@@89 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88) ($generated@@78 $generated@@43 $generated@@89))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@85 $generated@@89) $generated@@90) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@86 $generated@@89) $generated@@90))))) (= ($generated@@81 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88) ($generated@@81 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88)))
 :pattern ( ($generated@@39 $generated@@85 $generated@@86) ($generated@@81 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@93 $generated@@94) (and ($generated@@71 $generated@@93) ($generated@@71 $generated@@94))) (and ($generated@@31 $generated@@96 $generated@@91) ($generated@@28 $generated@@29 $generated@@95 ($generated@@30 $generated@@91 $generated@@92)))) (forall (($generated@@97 T@U) ($generated@@98 T@U) )  (=> (and (or (not (= $generated@@97 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96) ($generated@@78 $generated@@43 $generated@@97))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@93 $generated@@97) $generated@@98) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@94 $generated@@97) $generated@@98))))) (= ($generated@@81 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96) ($generated@@81 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96)))
 :pattern ( ($generated@@39 $generated@@93 $generated@@94) ($generated@@81 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96))
)))
(assert ($generated@@99 $generated@@1))
(assert ($generated@@71 $generated@@70))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@100 ($generated@@78 $generated@@105 $generated@@102) $generated@@103 $generated@@104) ($generated@@101 $generated@@105 $generated@@102 $generated@@103 $generated@@104))
 :pattern ( ($generated@@100 ($generated@@78 $generated@@105 $generated@@102) $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> ($generated@@39 $generated@@106 $generated@@107) (=> ($generated@@100 $generated@@108 $generated@@109 $generated@@106) ($generated@@100 $generated@@108 $generated@@109 $generated@@107)))
 :pattern ( ($generated@@39 $generated@@106 $generated@@107) ($generated@@100 $generated@@108 $generated@@109 $generated@@106))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@T) ) (!  (=> ($generated@@39 $generated@@110 $generated@@111) (=> ($generated@@101 $generated@@114 $generated@@112 $generated@@113 $generated@@110) ($generated@@101 $generated@@114 $generated@@112 $generated@@113 $generated@@111)))
 :pattern ( ($generated@@39 $generated@@110 $generated@@111) ($generated@@101 $generated@@114 $generated@@112 $generated@@113 $generated@@110))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@117 $generated@@118) (and ($generated@@71 $generated@@117) ($generated@@71 $generated@@118))) (and ($generated@@31 $generated@@120 $generated@@115) ($generated@@28 $generated@@29 $generated@@119 ($generated@@30 $generated@@115 $generated@@116)))) (forall (($generated@@121 T@U) ($generated@@122 T@U) )  (=> (and (or (not (= $generated@@121 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@120) ($generated@@78 $generated@@43 $generated@@121))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@117 $generated@@121) $generated@@122) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@118 $generated@@121) $generated@@122))))) (= ($generated@@69 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@120) ($generated@@69 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120)))
 :pattern ( ($generated@@39 $generated@@117 $generated@@118) ($generated@@69 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@125 $generated@@126) (and ($generated@@71 $generated@@125) ($generated@@71 $generated@@126))) (and ($generated@@31 $generated@@128 $generated@@123) ($generated@@28 $generated@@29 $generated@@127 ($generated@@30 $generated@@123 $generated@@124)))) (forall (($generated@@129 T@U) ($generated@@130 T@U) )  (=> (and (or (not (= $generated@@129 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128) ($generated@@78 $generated@@43 $generated@@129))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@125 $generated@@129) $generated@@130) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@126 $generated@@129) $generated@@130))))) (= ($generated@@69 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128) ($generated@@69 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128)))
 :pattern ( ($generated@@39 $generated@@125 $generated@@126) ($generated@@69 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@134 $generated@@135) (and ($generated@@71 $generated@@134) ($generated@@71 $generated@@135))) (and ($generated@@31 $generated@@137 $generated@@132) ($generated@@28 $generated@@29 $generated@@136 ($generated@@30 $generated@@132 $generated@@133)))) (forall (($generated@@138 T@U) ($generated@@139 T@U) )  (=> (and (or (not (= $generated@@138 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@137) ($generated@@78 $generated@@43 $generated@@138))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@134 $generated@@138) $generated@@139) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@135 $generated@@138) $generated@@139))))) (= ($generated@@131 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@137) ($generated@@131 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@137)))
 :pattern ( ($generated@@39 $generated@@134 $generated@@135) ($generated@@131 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> (and (and (and ($generated@@39 $generated@@142 $generated@@143) (and ($generated@@71 $generated@@142) ($generated@@71 $generated@@143))) (and ($generated@@31 $generated@@145 $generated@@140) ($generated@@28 $generated@@29 $generated@@144 ($generated@@30 $generated@@140 $generated@@141)))) (forall (($generated@@146 T@U) ($generated@@147 T@U) )  (=> (and (or (not (= $generated@@146 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@145) ($generated@@78 $generated@@43 $generated@@146))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@142 $generated@@146) $generated@@147) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@143 $generated@@146) $generated@@147))))) (= ($generated@@131 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145) ($generated@@131 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@145)))
 :pattern ( ($generated@@39 $generated@@142 $generated@@143) ($generated@@131 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@148 $generated@@149 $generated@@150) (and ($generated@@39 $generated@@149 $generated@@150) (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> (not ($generated@@99 $generated@@152)) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@149 $generated@@151) $generated@@152) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@150 $generated@@151) $generated@@152)))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@150 $generated@@151) $generated@@152))
))))
 :pattern ( ($generated@@148 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@101 $generated@@29 $generated@@156 ($generated@@153 $generated@@154 $generated@@155) $generated@@157) ($generated@@101 $generated@@29 $generated@@156 ($generated@@30 $generated@@154 $generated@@155) $generated@@157))
 :pattern ( ($generated@@101 $generated@@29 $generated@@156 ($generated@@153 $generated@@154 $generated@@155) $generated@@157))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@101 $generated@@29 $generated@@161 ($generated@@158 $generated@@159 $generated@@160) $generated@@162) ($generated@@101 $generated@@29 $generated@@161 ($generated@@153 $generated@@159 $generated@@160) $generated@@162))
 :pattern ( ($generated@@101 $generated@@29 $generated@@161 ($generated@@158 $generated@@159 $generated@@160) $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (and ($generated@@71 $generated@@166) ($generated@@101 $generated@@29 $generated@@163 ($generated@@30 $generated@@164 $generated@@165) $generated@@166)) (forall (($generated@@167 T@U) ) (!  (=> (and ($generated@@100 $generated@@167 $generated@@164 $generated@@166) ($generated@@81 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167)) ($generated@@100 ($generated@@131 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167) $generated@@165 $generated@@166))
 :pattern ( ($generated@@131 $generated@@164 $generated@@165 $generated@@166 $generated@@163 $generated@@167))
)))
 :pattern ( ($generated@@101 $generated@@29 $generated@@163 ($generated@@30 $generated@@164 $generated@@165) $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@72 $generated@@168 $generated@@169) (= $generated@@168 $generated@@169))
 :pattern ( ($generated@@72 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (or (not (= $generated@@170 $generated@@172)) (not true)) (=> (and ($generated@@39 $generated@@170 $generated@@171) ($generated@@39 $generated@@171 $generated@@172)) ($generated@@39 $generated@@170 $generated@@172)))
 :pattern ( ($generated@@39 $generated@@170 $generated@@171) ($generated@@39 $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@173 ($generated@@30 $generated@@174 $generated@@175)) (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> (and (and ($generated@@71 $generated@@176) ($generated@@31 $generated@@177 $generated@@174)) ($generated@@81 $generated@@174 $generated@@175 $generated@@176 $generated@@173 $generated@@177)) ($generated@@31 ($generated@@131 $generated@@174 $generated@@175 $generated@@176 $generated@@173 $generated@@177) $generated@@175))
 :pattern ( ($generated@@131 $generated@@174 $generated@@175 $generated@@176 $generated@@173 $generated@@177))
)))
 :pattern ( ($generated@@28 $generated@@29 $generated@@173 ($generated@@30 $generated@@174 $generated@@175)))
)))
(assert (forall (($generated@@178 T@U) ) (!  (=> ($generated@@31 $generated@@178 $generated) (and (= ($generated@@78 $generated@@10 ($generated@@45 $generated@@10 $generated@@178)) $generated@@178) ($generated@@28 $generated@@10 ($generated@@45 $generated@@10 $generated@@178) $generated)))
 :pattern ( ($generated@@31 $generated@@178 $generated))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@T) ) (! (= ($generated@@31 ($generated@@78 $generated@@181 $generated@@179) $generated@@180) ($generated@@28 $generated@@181 $generated@@179 $generated@@180))
 :pattern ( ($generated@@31 ($generated@@78 $generated@@181 $generated@@179) $generated@@180))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@182 ($generated@@30 $generated@@183 $generated@@184)) $generated@@183)
 :pattern ( ($generated@@30 $generated@@183 $generated@@184))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@185 ($generated@@30 $generated@@186 $generated@@187)) $generated@@187)
 :pattern ( ($generated@@30 $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (! (= ($generated@@188 ($generated@@153 $generated@@189 $generated@@190)) $generated@@189)
 :pattern ( ($generated@@153 $generated@@189 $generated@@190))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@191 ($generated@@153 $generated@@192 $generated@@193)) $generated@@193)
 :pattern ( ($generated@@153 $generated@@192 $generated@@193))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@194 ($generated@@158 $generated@@195 $generated@@196)) $generated@@195)
 :pattern ( ($generated@@158 $generated@@195 $generated@@196))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@197 ($generated@@158 $generated@@198 $generated@@199)) $generated@@199)
 :pattern ( ($generated@@158 $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@T) ) (! (= ($generated@@45 $generated@@201 ($generated@@78 $generated@@201 $generated@@200)) $generated@@200)
 :pattern ( ($generated@@78 $generated@@201 $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@204 ($generated@@158 $generated@@202 $generated@@203))  (and ($generated@@28 $generated@@29 $generated@@204 ($generated@@153 $generated@@202 $generated@@203)) (forall (($generated@@205 T@U) )  (=> ($generated@@31 $generated@@205 $generated@@202) ($generated@@81 $generated@@202 $generated@@203 $generated@@70 $generated@@204 $generated@@205)))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@204 ($generated@@158 $generated@@202 $generated@@203)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@208 ($generated@@153 $generated@@206 $generated@@207))  (and ($generated@@28 $generated@@29 $generated@@208 ($generated@@30 $generated@@206 $generated@@207)) (forall (($generated@@209 T@U) )  (=> ($generated@@31 $generated@@209 $generated@@206) ($generated@@72 ($generated@@69 $generated@@206 $generated@@207 $generated@@70 $generated@@208 $generated@@209) $generated@@26)))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@208 ($generated@@153 $generated@@206 $generated@@207)))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (!  (=> ($generated@@71 $generated@@213) (= ($generated@@101 $generated@@29 $generated@@210 ($generated@@30 $generated@@211 $generated@@212) $generated@@213) (forall (($generated@@214 T@U) ) (!  (=> (and (and ($generated@@31 $generated@@214 $generated@@211) ($generated@@100 $generated@@214 $generated@@211 $generated@@213)) ($generated@@81 $generated@@211 $generated@@212 $generated@@213 $generated@@210 $generated@@214)) (forall (($generated@@215 T@U) ) (!  (=> (and (or (not (= $generated@@215 $generated@@82)) (not true)) ($generated@@25 ($generated@@69 $generated@@211 $generated@@212 $generated@@213 $generated@@210 $generated@@214) ($generated@@78 $generated@@43 $generated@@215))) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@213 $generated@@215) $generated@@1))))
 :pattern ( ($generated@@25 ($generated@@69 $generated@@211 $generated@@212 $generated@@213 $generated@@210 $generated@@214) ($generated@@78 $generated@@43 $generated@@215)))
)))
 :pattern ( ($generated@@131 $generated@@211 $generated@@212 $generated@@213 $generated@@210 $generated@@214))
 :pattern ( ($generated@@69 $generated@@211 $generated@@212 $generated@@213 $generated@@210 $generated@@214))
))))
 :pattern ( ($generated@@101 $generated@@29 $generated@@210 ($generated@@30 $generated@@211 $generated@@212) $generated@@213))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> ($generated@@31 $generated@@218 ($generated@@30 $generated@@216 $generated@@217)) (and (= ($generated@@78 $generated@@29 ($generated@@45 $generated@@29 $generated@@218)) $generated@@218) ($generated@@28 $generated@@29 ($generated@@45 $generated@@29 $generated@@218) ($generated@@30 $generated@@216 $generated@@217))))
 :pattern ( ($generated@@31 $generated@@218 ($generated@@30 $generated@@216 $generated@@217)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> ($generated@@31 $generated@@221 ($generated@@153 $generated@@219 $generated@@220)) (and (= ($generated@@78 $generated@@29 ($generated@@45 $generated@@29 $generated@@221)) $generated@@221) ($generated@@28 $generated@@29 ($generated@@45 $generated@@29 $generated@@221) ($generated@@153 $generated@@219 $generated@@220))))
 :pattern ( ($generated@@31 $generated@@221 ($generated@@153 $generated@@219 $generated@@220)))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ) (!  (=> ($generated@@31 $generated@@224 ($generated@@158 $generated@@222 $generated@@223)) (and (= ($generated@@78 $generated@@29 ($generated@@45 $generated@@29 $generated@@224)) $generated@@224) ($generated@@28 $generated@@29 ($generated@@45 $generated@@29 $generated@@224) ($generated@@158 $generated@@222 $generated@@223))))
 :pattern ( ($generated@@31 $generated@@224 ($generated@@158 $generated@@222 $generated@@223)))
)))
(assert  (and (forall (($generated@@228 T@T) ($generated@@229 T@T) ($generated@@230 T@T) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ) (! (= ($generated@@225 $generated@@228 $generated@@229 $generated@@230 ($generated@@227 $generated@@228 $generated@@229 $generated@@230 $generated@@232 $generated@@233 $generated@@234 $generated@@231) $generated@@233 $generated@@234) $generated@@231)
 :weight 0
)) (and (forall (($generated@@235 T@T) ($generated@@236 T@T) ($generated@@237 T@T) ($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (or (= $generated@@240 $generated@@242) (= ($generated@@225 $generated@@235 $generated@@236 $generated@@237 ($generated@@227 $generated@@235 $generated@@236 $generated@@237 $generated@@239 $generated@@240 $generated@@241 $generated@@238) $generated@@242 $generated@@243) ($generated@@225 $generated@@235 $generated@@236 $generated@@237 $generated@@239 $generated@@242 $generated@@243)))
 :weight 0
)) (forall (($generated@@244 T@T) ($generated@@245 T@T) ($generated@@246 T@T) ($generated@@247 T@U) ($generated@@248 T@U) ($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ) (!  (or (= $generated@@250 $generated@@252) (= ($generated@@225 $generated@@244 $generated@@245 $generated@@246 ($generated@@227 $generated@@244 $generated@@245 $generated@@246 $generated@@248 $generated@@249 $generated@@250 $generated@@247) $generated@@251 $generated@@252) ($generated@@225 $generated@@244 $generated@@245 $generated@@246 $generated@@248 $generated@@251 $generated@@252)))
 :weight 0
)))))
(assert (forall (($generated@@253 T@U) ($generated@@254 T@U) ($generated@@255 T@U) ($generated@@256 Bool) ($generated@@257 T@U) ($generated@@258 T@U) ) (! (= ($generated@@13 ($generated@@225 $generated@@43 $generated@@41 $generated@@9 ($generated@@226 $generated@@253 $generated@@254 $generated@@255 $generated@@256) $generated@@257 $generated@@258))  (=> (and (or (not (= $generated@@257 $generated@@253)) (not true)) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@254 $generated@@257) $generated@@255)))) $generated@@256))
 :pattern ( ($generated@@225 $generated@@43 $generated@@41 $generated@@9 ($generated@@226 $generated@@253 $generated@@254 $generated@@255 $generated@@256) $generated@@257 $generated@@258))
)))
(assert (forall (($generated@@260 T@U) ($generated@@261 T@U) ) (!  (and (= ($generated@@24 ($generated@@30 $generated@@260 $generated@@261)) $generated@@2) (= ($generated@@259 ($generated@@30 $generated@@260 $generated@@261)) $generated@@5))
 :pattern ( ($generated@@30 $generated@@260 $generated@@261))
)))
(assert (forall (($generated@@262 T@U) ($generated@@263 T@U) ) (!  (and (= ($generated@@24 ($generated@@153 $generated@@262 $generated@@263)) $generated@@3) (= ($generated@@259 ($generated@@153 $generated@@262 $generated@@263)) $generated@@6))
 :pattern ( ($generated@@153 $generated@@262 $generated@@263))
)))
(assert (forall (($generated@@264 T@U) ($generated@@265 T@U) ) (!  (and (= ($generated@@24 ($generated@@158 $generated@@264 $generated@@265)) $generated@@4) (= ($generated@@259 ($generated@@158 $generated@@264 $generated@@265)) $generated@@7))
 :pattern ( ($generated@@158 $generated@@264 $generated@@265))
)))
(assert (forall (($generated@@266 T@U) ($generated@@267 T@U) ($generated@@268 T@U) ($generated@@269 T@U) ($generated@@270 T@U) ) (!  (=> (and (and ($generated@@71 $generated@@268) (and ($generated@@31 $generated@@270 $generated@@266) ($generated@@28 $generated@@29 $generated@@269 ($generated@@30 $generated@@266 $generated@@267)))) ($generated@@72 ($generated@@69 $generated@@266 $generated@@267 $generated@@70 $generated@@269 $generated@@270) $generated@@26)) (= ($generated@@81 $generated@@266 $generated@@267 $generated@@70 $generated@@269 $generated@@270) ($generated@@81 $generated@@266 $generated@@267 $generated@@268 $generated@@269 $generated@@270)))
 :pattern ( ($generated@@81 $generated@@266 $generated@@267 $generated@@70 $generated@@269 $generated@@270) ($generated@@71 $generated@@268))
 :pattern ( ($generated@@81 $generated@@266 $generated@@267 $generated@@268 $generated@@269 $generated@@270))
)))
(assert (forall (($generated@@271 T@U) ($generated@@272 T@U) ) (! (= ($generated@@72 $generated@@271 $generated@@272) (forall (($generated@@273 T@U) ) (! (= ($generated@@25 $generated@@271 $generated@@273) ($generated@@25 $generated@@272 $generated@@273))
 :pattern ( ($generated@@25 $generated@@271 $generated@@273))
 :pattern ( ($generated@@25 $generated@@272 $generated@@273))
)))
 :pattern ( ($generated@@72 $generated@@271 $generated@@272))
)))
(assert (forall (($generated@@274 T@U) ($generated@@275 T@U) ) (! ($generated@@101 $generated@@10 $generated@@275 $generated $generated@@274)
 :pattern ( ($generated@@101 $generated@@10 $generated@@275 $generated $generated@@274))
)))
(assert (forall (($generated@@276 T@U) ) (! ($generated@@28 $generated@@10 $generated@@276 $generated)
 :pattern ( ($generated@@28 $generated@@10 $generated@@276 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@277 () Int)
(declare-fun $generated@@278 () Bool)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () T@U)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 (T@U) Bool)
(declare-fun $generated@@283 () Int)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@284  (=> (and (< $generated@@277 100) (= (ControlFlow 0 5) (- 0 4))) false)))
(let (($generated@@285 true))
(let (($generated@@286  (=> $generated@@278 (and (=> (= (ControlFlow 0 6) 3) $generated@@285) (=> (= (ControlFlow 0 6) 5) $generated@@284)))))
(let (($generated@@287 true))
(let (($generated@@288  (and (=> (= (ControlFlow 0 7) 2) $generated@@287) (=> (= (ControlFlow 0 7) 6) $generated@@286))))
(let (($generated@@289 true))
(let (($generated@@290  (=> (= $generated@@279 ($generated@@226 $generated@@82 $generated@@280 $generated@@1 false)) (=> (and (and (forall (($generated@@291 T@U) ) (!  (=> (and (or (not (= $generated@@291 $generated@@82)) (not true)) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@291) $generated@@1)))) (= ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@291) ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@291)))
 :pattern ( ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@291))
)) ($generated@@148 $generated@@280 $generated@@280)) (and (forall (($generated@@292 T@U) ($generated@@293 T@U) ) (!  (=> (and (or (not (= $generated@@292 $generated@@82)) (not true)) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@292) $generated@@1)))) (or (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@292) $generated@@293) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@292) $generated@@293)) ($generated@@13 ($generated@@225 $generated@@43 $generated@@41 $generated@@9 $generated@@279 $generated@@292 $generated@@293))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@43 ($generated@@44 $generated@@41 $generated@@42) $generated@@280 $generated@@292) $generated@@293))
)) (= $generated@@281 $generated@@281))) (and (=> (= (ControlFlow 0 8) 1) $generated@@289) (=> (= (ControlFlow 0 8) 7) $generated@@288))))))
(let (($generated@@294  (=> (and ($generated@@71 $generated@@280) ($generated@@282 $generated@@280)) (=> (and (and ($generated@@28 $generated@@29 $generated@@281 ($generated@@158 $generated $generated)) ($generated@@101 $generated@@29 $generated@@281 ($generated@@158 $generated $generated) $generated@@280)) (and (= 0 $generated@@283) (= (ControlFlow 0 9) 8))) $generated@@290))))
$generated@@294)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)