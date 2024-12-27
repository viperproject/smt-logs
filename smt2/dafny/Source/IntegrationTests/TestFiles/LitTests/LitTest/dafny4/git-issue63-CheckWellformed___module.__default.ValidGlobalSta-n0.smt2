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
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U T@U) T@U)
(declare-fun $generated@@36 (T@U) Int)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U T@U) Bool)
(declare-fun $generated@@44 (Int) Int)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@49 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@51 (T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 (T@U) T@U)
(declare-fun $generated@@68 (T@U T@U) Bool)
(declare-fun $generated@@72 () Int)
(declare-fun $generated@@73 (Bool T@U) Bool)
(declare-fun $generated@@74 (T@U) Bool)
(declare-fun $generated@@75 () T@T)
(declare-fun $generated@@76 (T@U T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@80 () T@T)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@85 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@141 (T@U Int) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@149 (T@U) T@U)
(declare-fun $generated@@159 (T@U) Int)
(declare-fun $generated@@160 (T@U) Int)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@174 () T@T)
(declare-fun $generated@@175 () T@T)
(declare-fun $generated@@176 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@177 (T@T T@T) T@T)
(declare-fun $generated@@178 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@179 (T@T) T@T)
(declare-fun $generated@@180 (T@T) T@T)
(declare-fun $generated@@218 (T@U) T@U)
(declare-fun $generated@@223 (T@U) T@U)
(declare-fun $generated@@226 (T@U) T@U)
(declare-fun $generated@@267 (T@U) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated) $generated@@2))
(assert (= ($generated@@28 $generated@@0) $generated@@3))
(assert (= ($generated@@28 $generated@@1) $generated@@4))
(assert (= ($generated@@12 $generated@@31) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> ($generated@@30 $generated@@31 $generated@@35 ($generated@@32 $generated@@33 $generated@@34)) ($generated@@29 $generated@@35))
 :pattern ( ($generated@@29 $generated@@35) ($generated@@30 $generated@@31 $generated@@35 ($generated@@32 $generated@@33 $generated@@34)))
)))
(assert (= ($generated@@36 $generated@@37) 0))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@30 $generated@@31 ($generated@@38 $generated@@42 $generated@@43) ($generated@@32 $generated@@40 $generated@@41))  (and ($generated@@39 $generated@@42 $generated@@40) ($generated@@39 $generated@@43 $generated@@41)))
 :pattern ( ($generated@@30 $generated@@31 ($generated@@38 $generated@@42 $generated@@43) ($generated@@32 $generated@@40 $generated@@41)))
)))
(assert (forall (($generated@@45 Int) ) (! (= ($generated@@44 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@T) ) (! (= ($generated@@46 $generated@@48 $generated@@47) $generated@@47)
 :pattern ( ($generated@@46 $generated@@48 $generated@@47))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (=> ($generated@@50 $generated@@56) (= ($generated@@49 $generated@@31 ($generated@@38 $generated@@54 $generated@@55) ($generated@@32 $generated@@52 $generated@@53) $generated@@56)  (and ($generated@@51 $generated@@54 $generated@@52 $generated@@56) ($generated@@51 $generated@@55 $generated@@53 $generated@@56))))
 :pattern ( ($generated@@49 $generated@@31 ($generated@@38 $generated@@54 $generated@@55) ($generated@@32 $generated@@52 $generated@@53) $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (! (= ($generated@@29 $generated@@58) (= ($generated@@57 $generated@@58) $generated@@9))
 :pattern ( ($generated@@29 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 ($generated@@59 $generated@@62 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@59 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ) (!  (=> ($generated@@29 $generated@@63) (exists (($generated@@64 T@U) ($generated@@65 T@U) ) (= $generated@@63 ($generated@@38 $generated@@64 $generated@@65))))
 :pattern ( ($generated@@29 $generated@@63))
)))
(assert (= ($generated@@12 $generated@@66) 4))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@30 $generated@@66 $generated@@69 ($generated@@67 $generated@@70)) (forall (($generated@@71 T@U) ) (!  (=> ($generated@@68 $generated@@69 $generated@@71) ($generated@@39 $generated@@71 $generated@@70))
 :pattern ( ($generated@@68 $generated@@69 $generated@@71))
)))
 :pattern ( ($generated@@30 $generated@@66 $generated@@69 ($generated@@67 $generated@@70)))
)))
(assert  (and (and (and (and (= ($generated@@12 $generated@@75) 5) (= ($generated@@12 $generated@@78) 6)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@79 $generated@@86 $generated@@87 ($generated@@85 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@88) $generated@@90) $generated@@88)
 :weight 0
))) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (or (= $generated@@95 $generated@@96) (= ($generated@@79 $generated@@91 $generated@@92 ($generated@@85 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@93) $generated@@96) ($generated@@79 $generated@@91 $generated@@92 $generated@@94 $generated@@96)))
 :weight 0
))) (= ($generated@@12 $generated@@80) 7)))
(assert  (=> (<= 1 $generated@@72) (forall (($generated@@97 T@U) ) (!  (=> (or ($generated@@74 $generated@@97) (and (< 1 $generated@@72) ($generated@@30 $generated@@75 $generated@@97 ($generated@@76 ($generated@@77 $generated@@0) ($generated@@77 $generated@@1))))) (and (forall (($generated@@98 T@U) ) (!  (=> ($generated@@30 $generated@@78 $generated@@98 ($generated@@77 $generated@@0)) ($generated@@84 $generated@@98))
 :pattern ( ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@97) ($generated@@60 $generated@@78 $generated@@98))))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@97) ($generated@@60 $generated@@78 $generated@@98)))
 :pattern ( ($generated@@83 $generated@@98))
)) (= ($generated@@73 true $generated@@97) (forall (($generated@@99 T@U) ) (!  (=> ($generated@@30 $generated@@78 $generated@@99 ($generated@@77 $generated@@0)) (= ($generated@@83 $generated@@99)  (and ($generated@@68 ($generated@@82 $generated@@97) ($generated@@60 $generated@@78 $generated@@99)) (= ($generated@@36 ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@97) ($generated@@60 $generated@@78 $generated@@99)))) ($generated@@44 1)))))
 :pattern ( ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@97) ($generated@@60 $generated@@78 $generated@@99))))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@97) ($generated@@60 $generated@@78 $generated@@99)))
 :pattern ( ($generated@@83 $generated@@99))
)))))
 :pattern ( ($generated@@73 true $generated@@97))
))))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@51 ($generated@@60 $generated@@103 $generated@@100) $generated@@101 $generated@@102) ($generated@@49 $generated@@103 $generated@@100 $generated@@101 $generated@@102))
 :pattern ( ($generated@@51 ($generated@@60 $generated@@103 $generated@@100) $generated@@101 $generated@@102))
)))
(assert  (=> (<= 1 $generated@@72) (forall (($generated@@104 T@U) ) (!  (=> (or ($generated@@74 ($generated@@46 $generated@@75 $generated@@104)) (and (< 1 $generated@@72) ($generated@@30 $generated@@75 $generated@@104 ($generated@@76 ($generated@@77 $generated@@0) ($generated@@77 $generated@@1))))) (and (forall (($generated@@105 T@U) ) (!  (=> ($generated@@30 $generated@@78 $generated@@105 ($generated@@77 $generated@@0)) ($generated@@84 $generated@@105))
 :pattern ( ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@104) ($generated@@60 $generated@@78 $generated@@105))))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@104) ($generated@@60 $generated@@78 $generated@@105)))
 :pattern ( ($generated@@83 $generated@@105))
)) (= ($generated@@73 true ($generated@@46 $generated@@75 $generated@@104)) (forall (($generated@@106 T@U) ) (!  (=> ($generated@@30 $generated@@78 $generated@@106 ($generated@@77 $generated@@0)) (= ($generated@@83 $generated@@106)  (and ($generated@@68 ($generated@@82 $generated@@104) ($generated@@60 $generated@@78 $generated@@106)) (= ($generated@@36 ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 ($generated@@46 $generated@@75 $generated@@104)) ($generated@@60 $generated@@78 $generated@@106)))) ($generated@@44 1)))))
 :pattern ( ($generated@@59 $generated@@78 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@104) ($generated@@60 $generated@@78 $generated@@106))))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@104) ($generated@@60 $generated@@78 $generated@@106)))
 :pattern ( ($generated@@83 $generated@@106))
)))))
 :weight 3
 :pattern ( ($generated@@73 true ($generated@@46 $generated@@75 $generated@@104)))
))))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@39 $generated@@107 $generated@@1) (and (= ($generated@@60 $generated@@14 ($generated@@59 $generated@@14 $generated@@107)) $generated@@107) ($generated@@30 $generated@@14 ($generated@@59 $generated@@14 $generated@@107) $generated@@1)))
 :pattern ( ($generated@@39 $generated@@107 $generated@@1))
)))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@39 $generated@@108 $generated) (and (= ($generated@@60 $generated@@13 ($generated@@59 $generated@@13 $generated@@108)) $generated@@108) ($generated@@30 $generated@@13 ($generated@@59 $generated@@13 $generated@@108) $generated)))
 :pattern ( ($generated@@39 $generated@@108 $generated))
)))
(assert (= ($generated@@12 $generated@@109) 8))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@39 $generated@@110 $generated@@0) (and (= ($generated@@60 $generated@@109 ($generated@@59 $generated@@109 $generated@@110)) $generated@@110) ($generated@@30 $generated@@109 ($generated@@59 $generated@@109 $generated@@110) $generated@@0)))
 :pattern ( ($generated@@39 $generated@@110 $generated@@0))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@39 ($generated@@60 $generated@@113 $generated@@111) $generated@@112) ($generated@@30 $generated@@113 $generated@@111 $generated@@112))
 :pattern ( ($generated@@39 ($generated@@60 $generated@@113 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ) (! (<= 0 ($generated@@36 $generated@@114))
 :pattern ( ($generated@@36 $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@49 $generated@@66 $generated@@115 ($generated@@67 $generated@@116) $generated@@117) (forall (($generated@@118 T@U) ) (!  (=> ($generated@@68 $generated@@115 $generated@@118) ($generated@@51 $generated@@118 $generated@@116 $generated@@117))
 :pattern ( ($generated@@68 $generated@@115 $generated@@118))
)))
 :pattern ( ($generated@@49 $generated@@66 $generated@@115 ($generated@@67 $generated@@116) $generated@@117))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 ($generated@@76 $generated@@120 $generated@@121)) $generated@@120)
 :pattern ( ($generated@@76 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@76 $generated@@123 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@76 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@28 ($generated@@76 $generated@@125 $generated@@126)) $generated@@7)
 :pattern ( ($generated@@76 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@57 ($generated@@38 $generated@@127 $generated@@128)) $generated@@9)
 :pattern ( ($generated@@38 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@129 ($generated@@32 $generated@@130 $generated@@131)) $generated@@130)
 :pattern ( ($generated@@32 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@132 ($generated@@32 $generated@@133 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@32 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@135 ($generated@@38 $generated@@136 $generated@@137)) $generated@@136)
 :pattern ( ($generated@@38 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@138 ($generated@@38 $generated@@139 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@38 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@49 $generated@@78 $generated@@142 ($generated@@77 $generated@@143) $generated@@144) (forall (($generated@@145 Int) ) (!  (=> (and (<= 0 $generated@@145) (< $generated@@145 ($generated@@36 $generated@@142))) ($generated@@51 ($generated@@141 $generated@@142 $generated@@145) $generated@@143 $generated@@144))
 :pattern ( ($generated@@141 $generated@@142 $generated@@145))
)))
 :pattern ( ($generated@@49 $generated@@78 $generated@@142 ($generated@@77 $generated@@143) $generated@@144))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@146 ($generated@@67 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@67 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@28 ($generated@@67 $generated@@148)) $generated@@5)
 :pattern ( ($generated@@67 $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ) (! (= ($generated@@149 ($generated@@77 $generated@@150)) $generated@@150)
 :pattern ( ($generated@@77 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@28 ($generated@@77 $generated@@151)) $generated@@6)
 :pattern ( ($generated@@77 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@59 $generated@@153 ($generated@@60 $generated@@153 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@60 $generated@@153 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@49 $generated@@75 $generated@@154 ($generated@@76 $generated@@155 $generated@@156) $generated@@157) (forall (($generated@@158 T@U) ) (!  (=> ($generated@@68 ($generated@@82 $generated@@154) $generated@@158) (and ($generated@@51 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@154) $generated@@158) $generated@@156 $generated@@157) ($generated@@51 $generated@@158 $generated@@155 $generated@@157)))
 :pattern ( ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@154) $generated@@158))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@154) $generated@@158))
)))
 :pattern ( ($generated@@49 $generated@@75 $generated@@154 ($generated@@76 $generated@@155 $generated@@156) $generated@@157))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (< ($generated@@159 $generated@@161) ($generated@@160 ($generated@@38 $generated@@161 $generated@@162)))
 :pattern ( ($generated@@38 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! (< ($generated@@159 $generated@@164) ($generated@@160 ($generated@@38 $generated@@163 $generated@@164)))
 :pattern ( ($generated@@38 $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@166 T@U) ) (!  (not ($generated@@68 ($generated@@82 $generated@@165) $generated@@166))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@165) $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@39 $generated@@167 ($generated@@76 $generated@@168 $generated@@169)) (and (= ($generated@@60 $generated@@75 ($generated@@59 $generated@@75 $generated@@167)) $generated@@167) ($generated@@30 $generated@@75 ($generated@@59 $generated@@75 $generated@@167) ($generated@@76 $generated@@168 $generated@@169))))
 :pattern ( ($generated@@39 $generated@@167 ($generated@@76 $generated@@168 $generated@@169)))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@39 $generated@@172 ($generated@@32 $generated@@170 $generated@@171)) (and (= ($generated@@60 $generated@@31 ($generated@@59 $generated@@31 $generated@@172)) $generated@@172) ($generated@@30 $generated@@31 ($generated@@59 $generated@@31 $generated@@172) ($generated@@32 $generated@@170 $generated@@171))))
 :pattern ( ($generated@@39 $generated@@172 ($generated@@32 $generated@@170 $generated@@171)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@173 $generated@@181 $generated@@182 $generated@@183 ($generated@@178 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@186 $generated@@187) $generated@@184)
 :weight 0
)) (and (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (or (= $generated@@193 $generated@@195) (= ($generated@@173 $generated@@188 $generated@@189 $generated@@190 ($generated@@178 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@193 $generated@@194 $generated@@191) $generated@@195 $generated@@196) ($generated@@173 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@195 $generated@@196)))
 :weight 0
)) (forall (($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (or (= $generated@@203 $generated@@205) (= ($generated@@173 $generated@@197 $generated@@198 $generated@@199 ($generated@@178 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@202 $generated@@203 $generated@@200) $generated@@204 $generated@@205) ($generated@@173 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@204 $generated@@205)))
 :weight 0
)))) (= ($generated@@12 $generated@@174) 9)) (= ($generated@@12 $generated@@175) 10)) (forall (($generated@@206 T@T) ($generated@@207 T@T) ) (= ($generated@@12 ($generated@@177 $generated@@206 $generated@@207)) 11))) (forall (($generated@@208 T@T) ($generated@@209 T@T) ) (! (= ($generated@@179 ($generated@@177 $generated@@208 $generated@@209)) $generated@@208)
 :pattern ( ($generated@@177 $generated@@208 $generated@@209))
))) (forall (($generated@@210 T@T) ($generated@@211 T@T) ) (! (= ($generated@@180 ($generated@@177 $generated@@210 $generated@@211)) $generated@@211)
 :pattern ( ($generated@@177 $generated@@210 $generated@@211))
))))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 Bool) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@17 ($generated@@173 $generated@@174 $generated@@175 $generated@@13 ($generated@@176 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@17 ($generated@@59 $generated@@13 ($generated@@79 $generated@@175 $generated@@80 ($generated@@79 $generated@@174 ($generated@@177 $generated@@175 $generated@@80) $generated@@213 $generated@@216) $generated@@214)))) $generated@@215))
 :pattern ( ($generated@@173 $generated@@174 $generated@@175 $generated@@13 ($generated@@176 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@28 ($generated@@32 $generated@@219 $generated@@220)) $generated@@10) (= ($generated@@218 ($generated@@32 $generated@@219 $generated@@220)) $generated@@11))
 :pattern ( ($generated@@32 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ) (!  (or (= $generated@@221 $generated@@165) (exists (($generated@@222 T@U) ) ($generated@@68 ($generated@@82 $generated@@221) $generated@@222)))
 :pattern ( ($generated@@82 $generated@@221))
)))
(assert (forall (($generated@@224 T@U) ) (!  (or (= $generated@@224 $generated@@165) (exists (($generated@@225 T@U) ) ($generated@@68 ($generated@@223 $generated@@224) $generated@@225)))
 :pattern ( ($generated@@223 $generated@@224))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (! (= ($generated@@68 ($generated@@226 $generated@@227) $generated@@228)  (and ($generated@@68 ($generated@@82 $generated@@227) ($generated@@135 ($generated@@59 $generated@@31 $generated@@228))) (= ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@227) ($generated@@135 ($generated@@59 $generated@@31 $generated@@228))) ($generated@@138 ($generated@@59 $generated@@31 $generated@@228)))))
 :pattern ( ($generated@@68 ($generated@@226 $generated@@227) $generated@@228))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (! (= ($generated@@68 ($generated@@223 $generated@@229) $generated@@230) (exists (($generated@@231 T@U) ) (!  (and ($generated@@68 ($generated@@82 $generated@@229) $generated@@231) (= $generated@@230 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@229) $generated@@231)))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@229) $generated@@231))
 :pattern ( ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@229) $generated@@231))
)))
 :pattern ( ($generated@@68 ($generated@@223 $generated@@229) $generated@@230))
)))
(assert (forall (($generated@@232 T@U) ) (! (= ($generated@@159 ($generated@@60 $generated@@31 $generated@@232)) ($generated@@160 $generated@@232))
 :pattern ( ($generated@@159 ($generated@@60 $generated@@31 $generated@@232)))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> ($generated@@39 $generated@@233 ($generated@@67 $generated@@234)) (and (= ($generated@@60 $generated@@66 ($generated@@59 $generated@@66 $generated@@233)) $generated@@233) ($generated@@30 $generated@@66 ($generated@@59 $generated@@66 $generated@@233) ($generated@@67 $generated@@234))))
 :pattern ( ($generated@@39 $generated@@233 ($generated@@67 $generated@@234)))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> ($generated@@39 $generated@@235 ($generated@@77 $generated@@236)) (and (= ($generated@@60 $generated@@78 ($generated@@59 $generated@@78 $generated@@235)) $generated@@235) ($generated@@30 $generated@@78 ($generated@@59 $generated@@78 $generated@@235) ($generated@@77 $generated@@236))))
 :pattern ( ($generated@@39 $generated@@235 ($generated@@77 $generated@@236)))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (! (= ($generated@@30 $generated@@75 $generated@@237 ($generated@@76 $generated@@238 $generated@@239)) (forall (($generated@@240 T@U) ) (!  (=> ($generated@@68 ($generated@@82 $generated@@237) $generated@@240) (and ($generated@@39 ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@237) $generated@@240) $generated@@239) ($generated@@39 $generated@@240 $generated@@238)))
 :pattern ( ($generated@@79 $generated@@80 $generated@@80 ($generated@@81 $generated@@237) $generated@@240))
 :pattern ( ($generated@@68 ($generated@@82 $generated@@237) $generated@@240))
)))
 :pattern ( ($generated@@30 $generated@@75 $generated@@237 ($generated@@76 $generated@@238 $generated@@239)))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> (and ($generated@@50 $generated@@243) (and ($generated@@29 $generated@@241) (exists (($generated@@244 T@U) ) (! ($generated@@49 $generated@@31 $generated@@241 ($generated@@32 $generated@@242 $generated@@244) $generated@@243)
 :pattern ( ($generated@@49 $generated@@31 $generated@@241 ($generated@@32 $generated@@242 $generated@@244) $generated@@243))
)))) ($generated@@51 ($generated@@135 $generated@@241) $generated@@242 $generated@@243))
 :pattern ( ($generated@@51 ($generated@@135 $generated@@241) $generated@@242 $generated@@243))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (!  (=> (and ($generated@@50 $generated@@247) (and ($generated@@29 $generated@@245) (exists (($generated@@248 T@U) ) (! ($generated@@49 $generated@@31 $generated@@245 ($generated@@32 $generated@@248 $generated@@246) $generated@@247)
 :pattern ( ($generated@@49 $generated@@31 $generated@@245 ($generated@@32 $generated@@248 $generated@@246) $generated@@247))
)))) ($generated@@51 ($generated@@138 $generated@@245) $generated@@246 $generated@@247))
 :pattern ( ($generated@@51 ($generated@@138 $generated@@245) $generated@@246 $generated@@247))
)))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@U) ) (! (= ($generated@@38 ($generated@@46 $generated@@80 $generated@@249) ($generated@@46 $generated@@80 $generated@@250)) ($generated@@46 $generated@@31 ($generated@@38 $generated@@249 $generated@@250)))
 :pattern ( ($generated@@38 ($generated@@46 $generated@@80 $generated@@249) ($generated@@46 $generated@@80 $generated@@250)))
)))
(assert (forall (($generated@@251 Int) ) (! (= ($generated@@60 $generated@@14 ($generated@@18 ($generated@@44 $generated@@251))) ($generated@@46 $generated@@80 ($generated@@60 $generated@@14 ($generated@@18 $generated@@251))))
 :pattern ( ($generated@@60 $generated@@14 ($generated@@18 ($generated@@44 $generated@@251))))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@T) ) (! (= ($generated@@60 $generated@@253 ($generated@@46 $generated@@253 $generated@@252)) ($generated@@46 $generated@@80 ($generated@@60 $generated@@253 $generated@@252)))
 :pattern ( ($generated@@60 $generated@@253 ($generated@@46 $generated@@253 $generated@@252)))
)))
(assert (forall (($generated@@254 T@U) ) (!  (=> (= ($generated@@36 $generated@@254) 0) (= $generated@@254 $generated@@37))
 :pattern ( ($generated@@36 $generated@@254))
)))
(assert (forall (($generated@@255 T@U) ($generated@@256 T@U) ) (! ($generated@@49 $generated@@14 $generated@@256 $generated@@1 $generated@@255)
 :pattern ( ($generated@@49 $generated@@14 $generated@@256 $generated@@1 $generated@@255))
)))
(assert (forall (($generated@@257 T@U) ($generated@@258 T@U) ) (! ($generated@@49 $generated@@13 $generated@@258 $generated $generated@@257)
 :pattern ( ($generated@@49 $generated@@13 $generated@@258 $generated $generated@@257))
)))
(assert (forall (($generated@@259 T@U) ($generated@@260 T@U) ) (! ($generated@@49 $generated@@109 $generated@@260 $generated@@0 $generated@@259)
 :pattern ( ($generated@@49 $generated@@109 $generated@@260 $generated@@0 $generated@@259))
)))
(assert (forall (($generated@@261 T@U) ($generated@@262 T@U) ) (! (= ($generated@@30 $generated@@78 $generated@@261 ($generated@@77 $generated@@262)) (forall (($generated@@263 Int) ) (!  (=> (and (<= 0 $generated@@263) (< $generated@@263 ($generated@@36 $generated@@261))) ($generated@@39 ($generated@@141 $generated@@261 $generated@@263) $generated@@262))
 :pattern ( ($generated@@141 $generated@@261 $generated@@263))
)))
 :pattern ( ($generated@@30 $generated@@78 $generated@@261 ($generated@@77 $generated@@262)))
)))
(assert (forall (($generated@@264 T@U) ) (!  (or (= $generated@@264 $generated@@165) (exists (($generated@@265 T@U) ($generated@@266 T@U) ) ($generated@@68 ($generated@@226 $generated@@264) ($generated@@60 $generated@@31 ($generated@@38 $generated@@265 $generated@@266)))))
 :pattern ( ($generated@@226 $generated@@264))
)))
(assert (forall (($generated@@268 T@U) ($generated@@269 Int) ) (!  (=> (and (<= 0 $generated@@269) (< $generated@@269 ($generated@@36 $generated@@268))) (< ($generated@@160 ($generated@@59 $generated@@31 ($generated@@141 $generated@@268 $generated@@269))) ($generated@@267 $generated@@268)))
 :pattern ( ($generated@@160 ($generated@@59 $generated@@31 ($generated@@141 $generated@@268 $generated@@269))))
)))
(assert (forall (($generated@@270 T@U) ($generated@@271 T@U) ($generated@@272 T@U) ) (!  (=> ($generated@@30 $generated@@75 $generated@@270 ($generated@@76 $generated@@271 $generated@@272)) (and (and ($generated@@30 $generated@@66 ($generated@@82 $generated@@270) ($generated@@67 $generated@@271)) ($generated@@30 $generated@@66 ($generated@@223 $generated@@270) ($generated@@67 $generated@@272))) ($generated@@30 $generated@@66 ($generated@@226 $generated@@270) ($generated@@67 ($generated@@32 $generated@@271 $generated@@272)))))
 :pattern ( ($generated@@30 $generated@@75 $generated@@270 ($generated@@76 $generated@@271 $generated@@272)))
)))
(assert (forall (($generated@@273 T@U) ) (! ($generated@@30 $generated@@14 $generated@@273 $generated@@1)
 :pattern ( ($generated@@30 $generated@@14 $generated@@273 $generated@@1))
)))
(assert (forall (($generated@@274 T@U) ) (! ($generated@@30 $generated@@13 $generated@@274 $generated)
 :pattern ( ($generated@@30 $generated@@13 $generated@@274 $generated))
)))
(assert (forall (($generated@@275 T@U) ) (! ($generated@@30 $generated@@109 $generated@@275 $generated@@0)
 :pattern ( ($generated@@30 $generated@@109 $generated@@275 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@276 () T@U)
(declare-fun $generated@@277 () T@U)
(declare-fun $generated@@278 () T@U)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () T@U)
(declare-fun $generated@@281 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@282 true))
(let (($generated@@283  (=> (and (not ($generated@@68 ($generated@@82 $generated@@276) ($generated@@60 $generated@@78 $generated@@277))) (= (ControlFlow 0 6) 2)) $generated@@282)))
(let (($generated@@284  (=> ($generated@@68 ($generated@@82 $generated@@276) ($generated@@60 $generated@@78 $generated@@277)) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($generated@@68 ($generated@@82 $generated@@276) ($generated@@60 $generated@@78 $generated@@277))) (=> ($generated@@68 ($generated@@82 $generated@@276) ($generated@@60 $generated@@78 $generated@@277)) (=> (= (ControlFlow 0 4) 2) $generated@@282))))))
(let (($generated@@285  (=> (and (and ($generated@@30 $generated@@78 $generated@@277 ($generated@@77 $generated@@0)) ($generated@@49 $generated@@78 $generated@@277 ($generated@@77 $generated@@0) $generated@@278)) (and ($generated@@49 $generated@@78 $generated@@277 ($generated@@77 $generated@@0) $generated@@278) ($generated@@84 $generated@@277))) (and (=> (= (ControlFlow 0 7) 4) $generated@@284) (=> (= (ControlFlow 0 7) 6) $generated@@283)))))
(let (($generated@@286  (=> (and (not (and ($generated@@30 $generated@@78 $generated@@277 ($generated@@77 $generated@@0)) ($generated@@49 $generated@@78 $generated@@277 ($generated@@77 $generated@@0) $generated@@278))) (= (ControlFlow 0 3) 2)) $generated@@282)))
(let (($generated@@287 true))
(let (($generated@@288  (=> (= $generated@@279 ($generated@@176 $generated@@280 $generated@@278 $generated@@8 false)) (and (and (=> (= (ControlFlow 0 8) 1) $generated@@287) (=> (= (ControlFlow 0 8) 7) $generated@@285)) (=> (= (ControlFlow 0 8) 3) $generated@@286)))))
(let (($generated@@289  (=> (and (and (and ($generated@@50 $generated@@278) ($generated@@281 $generated@@278)) ($generated@@30 $generated@@75 $generated@@276 ($generated@@76 ($generated@@77 $generated@@0) ($generated@@77 $generated@@1)))) (and (= 1 $generated@@72) (= (ControlFlow 0 9) 8))) $generated@@288)))
$generated@@289)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)