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
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@30 () Int)
(declare-fun $generated@@31 (T@U T@U Int) Int)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U Int) Bool)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (Int) Int)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@47 (T@U T@U) T@U)
(declare-fun $generated@@48 (T@U T@U) Bool)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U T@U) Bool)
(declare-fun $generated@@62 (T@U) Bool)
(declare-fun $generated@@63 (T@U T@U T@U) Bool)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@T T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@92 (T@U T@U) Bool)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@130 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@131 () T@T)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@133 (T@U) T@U)
(declare-fun $generated@@134 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@151 (T@U) Int)
(declare-fun $generated@@152 (T@U) Int)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@165 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@166 () T@T)
(declare-fun $generated@@167 () T@T)
(declare-fun $generated@@168 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@169 (T@T T@T) T@T)
(declare-fun $generated@@170 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@171 (T@T) T@T)
(declare-fun $generated@@172 (T@T) T@T)
(declare-fun $generated@@210 (T@U) T@U)
(declare-fun $generated@@215 (T@U) T@U)
(declare-fun $generated@@218 (T@U) T@U)
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
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (! ($generated@@26 $generated@@11 $generated@@28 $generated@@27 $generated@@29)
 :pattern ( ($generated@@26 $generated@@11 $generated@@28 $generated@@27 $generated@@29))
)))
(assert (= ($generated@@9 $generated@@35) 3))
(assert  (=> (<= 0 $generated@@30) (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 Int) ) (!  (=> (or ($generated@@33 $generated@@39 $generated@@40) (and (< 0 $generated@@30) (and ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated $generated)) (<= ($generated@@37 0) $generated@@40)))) (and (=> (or (not (= $generated@@40 ($generated@@37 0))) (not true)) ($generated@@33 $generated@@39 (- $generated@@40 1))) (= ($generated@@31 ($generated@@32 $generated@@38) $generated@@39 $generated@@40) (ite (= $generated@@40 ($generated@@37 0)) 0 ($generated@@31 $generated@@38 $generated@@39 (- $generated@@40 1))))))
 :pattern ( ($generated@@31 ($generated@@32 $generated@@38) $generated@@39 $generated@@40))
))))
(assert (= ($generated@@9 $generated@@42) 4))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (!  (=> ($generated@@34 $generated@@42 $generated@@46 ($generated@@43 $generated@@44 $generated@@45)) ($generated@@41 $generated@@46))
 :pattern ( ($generated@@41 $generated@@46) ($generated@@34 $generated@@42 $generated@@46 ($generated@@43 $generated@@44 $generated@@45)))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@34 $generated@@42 ($generated@@47 $generated@@51 $generated@@52) ($generated@@43 $generated@@49 $generated@@50))  (and ($generated@@48 $generated@@51 $generated@@49) ($generated@@48 $generated@@52 $generated@@50)))
 :pattern ( ($generated@@34 $generated@@42 ($generated@@47 $generated@@51 $generated@@52) ($generated@@43 $generated@@49 $generated@@50)))
)))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@37 $generated@@53) $generated@@53)
 :pattern ( ($generated@@37 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@T) ) (! (= ($generated@@54 $generated@@56 $generated@@55) $generated@@55)
 :pattern ( ($generated@@54 $generated@@56 $generated@@55))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@57 $generated@@59 $generated@@60) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@58 $generated@@59 $generated@@61) ($generated@@58 $generated@@60 $generated@@61))
 :pattern ( ($generated@@58 $generated@@59 $generated@@61))
 :pattern ( ($generated@@58 $generated@@60 $generated@@61))
)))
 :pattern ( ($generated@@57 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> ($generated@@62 $generated@@68) (= ($generated@@26 $generated@@42 ($generated@@47 $generated@@66 $generated@@67) ($generated@@43 $generated@@64 $generated@@65) $generated@@68)  (and ($generated@@63 $generated@@66 $generated@@64 $generated@@68) ($generated@@63 $generated@@67 $generated@@65 $generated@@68))))
 :pattern ( ($generated@@26 $generated@@42 ($generated@@47 $generated@@66 $generated@@67) ($generated@@43 $generated@@64 $generated@@65) $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@41 $generated@@70) (= ($generated@@69 $generated@@70) $generated@@5))
 :pattern ( ($generated@@41 $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@72 $generated@@74 ($generated@@71 $generated@@74 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@71 $generated@@74 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ) (!  (=> ($generated@@41 $generated@@75) (exists (($generated@@76 T@U) ($generated@@77 T@U) ) (= $generated@@75 ($generated@@47 $generated@@76 $generated@@77))))
 :pattern ( ($generated@@41 $generated@@75))
)))
(assert (= ($generated@@9 $generated@@78) 5))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@34 $generated@@78 $generated@@80 ($generated@@79 $generated@@81)) (forall (($generated@@82 T@U) ) (!  (=> ($generated@@58 $generated@@80 $generated@@82) ($generated@@48 $generated@@82 $generated@@81))
 :pattern ( ($generated@@58 $generated@@80 $generated@@82))
)))
 :pattern ( ($generated@@34 $generated@@78 $generated@@80 ($generated@@79 $generated@@81)))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@34 $generated@@11 $generated@@83 $generated@@27) (<= ($generated@@37 0) ($generated@@16 $generated@@83)))
 :pattern ( ($generated@@34 $generated@@11 $generated@@83 $generated@@27))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@63 ($generated@@72 $generated@@87 $generated@@84) $generated@@85 $generated@@86) ($generated@@26 $generated@@87 $generated@@84 $generated@@85 $generated@@86))
 :pattern ( ($generated@@63 ($generated@@72 $generated@@87 $generated@@84) $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@48 $generated@@88 $generated@@27) (and (= ($generated@@72 $generated@@11 ($generated@@71 $generated@@11 $generated@@88)) $generated@@88) ($generated@@34 $generated@@11 ($generated@@71 $generated@@11 $generated@@88) $generated@@27)))
 :pattern ( ($generated@@48 $generated@@88 $generated@@27))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 Int) ) (! (= ($generated@@31 ($generated@@32 $generated@@89) $generated@@90 $generated@@91) ($generated@@31 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@31 ($generated@@32 $generated@@89) $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> ($generated@@92 $generated@@93 $generated@@94) (= $generated@@93 $generated@@94))
 :pattern ( ($generated@@92 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ) (!  (=> ($generated@@48 $generated@@95 $generated) (and (= ($generated@@72 $generated@@11 ($generated@@71 $generated@@11 $generated@@95)) $generated@@95) ($generated@@34 $generated@@11 ($generated@@71 $generated@@11 $generated@@95) $generated)))
 :pattern ( ($generated@@48 $generated@@95 $generated))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@48 ($generated@@72 $generated@@98 $generated@@96) $generated@@97) ($generated@@34 $generated@@98 $generated@@96 $generated@@97))
 :pattern ( ($generated@@48 ($generated@@72 $generated@@98 $generated@@96) $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@26 $generated@@78 $generated@@99 ($generated@@79 $generated@@100) $generated@@101) (forall (($generated@@102 T@U) ) (!  (=> ($generated@@58 $generated@@99 $generated@@102) ($generated@@63 $generated@@102 $generated@@100 $generated@@101))
 :pattern ( ($generated@@58 $generated@@99 $generated@@102))
)))
 :pattern ( ($generated@@26 $generated@@78 $generated@@99 ($generated@@79 $generated@@100) $generated@@101))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@103 ($generated@@36 $generated@@104 $generated@@105)) $generated@@104)
 :pattern ( ($generated@@36 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@106 ($generated@@36 $generated@@107 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@36 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@25 ($generated@@36 $generated@@109 $generated@@110)) $generated@@2)
 :pattern ( ($generated@@36 $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@69 ($generated@@47 $generated@@111 $generated@@112)) $generated@@5)
 :pattern ( ($generated@@47 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@113 ($generated@@43 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@43 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@116 ($generated@@43 $generated@@117 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@43 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 ($generated@@47 $generated@@120 $generated@@121)) $generated@@120)
 :pattern ( ($generated@@47 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@47 $generated@@123 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@47 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@125 ($generated@@79 $generated@@126)) $generated@@126)
 :pattern ( ($generated@@79 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@25 ($generated@@79 $generated@@127)) $generated@@1)
 :pattern ( ($generated@@79 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@71 $generated@@129 ($generated@@72 $generated@@129 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@72 $generated@@129 $generated@@128))
)))
(assert  (and (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@130 $generated@@135 $generated@@136 ($generated@@134 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@137) $generated@@139) $generated@@137)
 :weight 0
)) (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@144 $generated@@145) (= ($generated@@130 $generated@@140 $generated@@141 ($generated@@134 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@142) $generated@@145) ($generated@@130 $generated@@140 $generated@@141 $generated@@143 $generated@@145)))
 :weight 0
))) (= ($generated@@9 $generated@@131) 6)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@26 $generated@@35 $generated@@146 ($generated@@36 $generated@@147 $generated@@148) $generated@@149) (forall (($generated@@150 T@U) ) (!  (=> ($generated@@58 ($generated@@133 $generated@@146) $generated@@150) (and ($generated@@63 ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@146) $generated@@150) $generated@@148 $generated@@149) ($generated@@63 $generated@@150 $generated@@147 $generated@@149)))
 :pattern ( ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@146) $generated@@150))
 :pattern ( ($generated@@58 ($generated@@133 $generated@@146) $generated@@150))
)))
 :pattern ( ($generated@@26 $generated@@35 $generated@@146 ($generated@@36 $generated@@147 $generated@@148) $generated@@149))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (< ($generated@@151 $generated@@153) ($generated@@152 ($generated@@47 $generated@@153 $generated@@154)))
 :pattern ( ($generated@@47 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (< ($generated@@151 $generated@@156) ($generated@@152 ($generated@@47 $generated@@155 $generated@@156)))
 :pattern ( ($generated@@47 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (!  (not ($generated@@58 ($generated@@133 $generated@@157) $generated@@158))
 :pattern ( ($generated@@58 ($generated@@133 $generated@@157) $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> ($generated@@48 $generated@@159 ($generated@@36 $generated@@160 $generated@@161)) (and (= ($generated@@72 $generated@@35 ($generated@@71 $generated@@35 $generated@@159)) $generated@@159) ($generated@@34 $generated@@35 ($generated@@71 $generated@@35 $generated@@159) ($generated@@36 $generated@@160 $generated@@161))))
 :pattern ( ($generated@@48 $generated@@159 ($generated@@36 $generated@@160 $generated@@161)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@48 $generated@@164 ($generated@@43 $generated@@162 $generated@@163)) (and (= ($generated@@72 $generated@@42 ($generated@@71 $generated@@42 $generated@@164)) $generated@@164) ($generated@@34 $generated@@42 ($generated@@71 $generated@@42 $generated@@164) ($generated@@43 $generated@@162 $generated@@163))))
 :pattern ( ($generated@@48 $generated@@164 ($generated@@43 $generated@@162 $generated@@163)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@165 $generated@@173 $generated@@174 $generated@@175 ($generated@@170 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@178 $generated@@179) $generated@@176)
 :weight 0
)) (and (forall (($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ) (!  (or (= $generated@@185 $generated@@187) (= ($generated@@165 $generated@@180 $generated@@181 $generated@@182 ($generated@@170 $generated@@180 $generated@@181 $generated@@182 $generated@@184 $generated@@185 $generated@@186 $generated@@183) $generated@@187 $generated@@188) ($generated@@165 $generated@@180 $generated@@181 $generated@@182 $generated@@184 $generated@@187 $generated@@188)))
 :weight 0
)) (forall (($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@165 $generated@@189 $generated@@190 $generated@@191 ($generated@@170 $generated@@189 $generated@@190 $generated@@191 $generated@@193 $generated@@194 $generated@@195 $generated@@192) $generated@@196 $generated@@197) ($generated@@165 $generated@@189 $generated@@190 $generated@@191 $generated@@193 $generated@@196 $generated@@197)))
 :weight 0
)))) (= ($generated@@9 $generated@@166) 7)) (= ($generated@@9 $generated@@167) 8)) (forall (($generated@@198 T@T) ($generated@@199 T@T) ) (= ($generated@@9 ($generated@@169 $generated@@198 $generated@@199)) 9))) (forall (($generated@@200 T@T) ($generated@@201 T@T) ) (! (= ($generated@@171 ($generated@@169 $generated@@200 $generated@@201)) $generated@@200)
 :pattern ( ($generated@@169 $generated@@200 $generated@@201))
))) (forall (($generated@@202 T@T) ($generated@@203 T@T) ) (! (= ($generated@@172 ($generated@@169 $generated@@202 $generated@@203)) $generated@@203)
 :pattern ( ($generated@@169 $generated@@202 $generated@@203))
))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 Bool) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@14 ($generated@@165 $generated@@166 $generated@@167 $generated@@10 ($generated@@168 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))  (=> (and (or (not (= $generated@@208 $generated@@204)) (not true)) ($generated@@14 ($generated@@71 $generated@@10 ($generated@@130 $generated@@167 $generated@@131 ($generated@@130 $generated@@166 ($generated@@169 $generated@@167 $generated@@131) $generated@@205 $generated@@208) $generated@@206)))) $generated@@207))
 :pattern ( ($generated@@165 $generated@@166 $generated@@167 $generated@@10 ($generated@@168 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (and (= ($generated@@25 ($generated@@43 $generated@@211 $generated@@212)) $generated@@6) (= ($generated@@210 ($generated@@43 $generated@@211 $generated@@212)) $generated@@8))
 :pattern ( ($generated@@43 $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@213 T@U) ) (!  (or (= $generated@@213 $generated@@157) (exists (($generated@@214 T@U) ) ($generated@@58 ($generated@@133 $generated@@213) $generated@@214)))
 :pattern ( ($generated@@133 $generated@@213))
)))
(assert (forall (($generated@@216 T@U) ) (!  (or (= $generated@@216 $generated@@157) (exists (($generated@@217 T@U) ) ($generated@@58 ($generated@@215 $generated@@216) $generated@@217)))
 :pattern ( ($generated@@215 $generated@@216))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (! (= ($generated@@58 ($generated@@218 $generated@@219) $generated@@220)  (and ($generated@@58 ($generated@@133 $generated@@219) ($generated@@119 ($generated@@71 $generated@@42 $generated@@220))) (= ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@219) ($generated@@119 ($generated@@71 $generated@@42 $generated@@220))) ($generated@@122 ($generated@@71 $generated@@42 $generated@@220)))))
 :pattern ( ($generated@@58 ($generated@@218 $generated@@219) $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@58 ($generated@@215 $generated@@221) $generated@@222) (exists (($generated@@223 T@U) ) (!  (and ($generated@@58 ($generated@@133 $generated@@221) $generated@@223) (= $generated@@222 ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@221) $generated@@223)))
 :pattern ( ($generated@@58 ($generated@@133 $generated@@221) $generated@@223))
 :pattern ( ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@221) $generated@@223))
)))
 :pattern ( ($generated@@58 ($generated@@215 $generated@@221) $generated@@222))
)))
(assert (forall (($generated@@224 T@U) ) (! (= ($generated@@151 ($generated@@72 $generated@@42 $generated@@224)) ($generated@@152 $generated@@224))
 :pattern ( ($generated@@151 ($generated@@72 $generated@@42 $generated@@224)))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (!  (=> ($generated@@48 $generated@@225 ($generated@@79 $generated@@226)) (and (= ($generated@@72 $generated@@78 ($generated@@71 $generated@@78 $generated@@225)) $generated@@225) ($generated@@34 $generated@@78 ($generated@@71 $generated@@78 $generated@@225) ($generated@@79 $generated@@226))))
 :pattern ( ($generated@@48 $generated@@225 ($generated@@79 $generated@@226)))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@227 ($generated@@36 $generated@@228 $generated@@229)) (forall (($generated@@230 T@U) ) (!  (=> ($generated@@58 ($generated@@133 $generated@@227) $generated@@230) (and ($generated@@48 ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@227) $generated@@230) $generated@@229) ($generated@@48 $generated@@230 $generated@@228)))
 :pattern ( ($generated@@130 $generated@@131 $generated@@131 ($generated@@132 $generated@@227) $generated@@230))
 :pattern ( ($generated@@58 ($generated@@133 $generated@@227) $generated@@230))
)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@227 ($generated@@36 $generated@@228 $generated@@229)))
)))
(assert (= ($generated@@25 $generated@@27) $generated@@4))
(assert (= ($generated@@210 $generated@@27) $generated@@7))
(assert  (=> (<= 0 $generated@@30) (forall (($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 Int) ) (!  (=> (or ($generated@@33 ($generated@@54 $generated@@35 $generated@@232) ($generated@@37 $generated@@233)) (and (< 0 $generated@@30) (and ($generated@@34 $generated@@35 $generated@@232 ($generated@@36 $generated $generated)) (<= ($generated@@37 0) $generated@@233)))) (and (=> (or (not (= ($generated@@37 $generated@@233) ($generated@@37 0))) (not true)) ($generated@@33 ($generated@@54 $generated@@35 $generated@@232) ($generated@@37 (- $generated@@233 1)))) (= ($generated@@31 ($generated@@32 $generated@@231) ($generated@@54 $generated@@35 $generated@@232) ($generated@@37 $generated@@233)) (ite (= ($generated@@37 $generated@@233) ($generated@@37 0)) 0 ($generated@@31 ($generated@@32 $generated@@231) ($generated@@54 $generated@@35 $generated@@232) ($generated@@37 (- $generated@@233 1)))))))
 :weight 3
 :pattern ( ($generated@@31 ($generated@@32 $generated@@231) ($generated@@54 $generated@@35 $generated@@232) ($generated@@37 $generated@@233)))
))))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ) (! (= ($generated@@92 $generated@@234 $generated@@235) (forall (($generated@@236 T@U) ) (! (= ($generated@@58 $generated@@234 $generated@@236) ($generated@@58 $generated@@235 $generated@@236))
 :pattern ( ($generated@@58 $generated@@234 $generated@@236))
 :pattern ( ($generated@@58 $generated@@235 $generated@@236))
)))
 :pattern ( ($generated@@92 $generated@@234 $generated@@235))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> (and ($generated@@62 $generated@@239) (and ($generated@@41 $generated@@237) (exists (($generated@@240 T@U) ) (! ($generated@@26 $generated@@42 $generated@@237 ($generated@@43 $generated@@238 $generated@@240) $generated@@239)
 :pattern ( ($generated@@26 $generated@@42 $generated@@237 ($generated@@43 $generated@@238 $generated@@240) $generated@@239))
)))) ($generated@@63 ($generated@@119 $generated@@237) $generated@@238 $generated@@239))
 :pattern ( ($generated@@63 ($generated@@119 $generated@@237) $generated@@238 $generated@@239))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> (and ($generated@@62 $generated@@243) (and ($generated@@41 $generated@@241) (exists (($generated@@244 T@U) ) (! ($generated@@26 $generated@@42 $generated@@241 ($generated@@43 $generated@@244 $generated@@242) $generated@@243)
 :pattern ( ($generated@@26 $generated@@42 $generated@@241 ($generated@@43 $generated@@244 $generated@@242) $generated@@243))
)))) ($generated@@63 ($generated@@122 $generated@@241) $generated@@242 $generated@@243))
 :pattern ( ($generated@@63 ($generated@@122 $generated@@241) $generated@@242 $generated@@243))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ) (! (= ($generated@@47 ($generated@@54 $generated@@131 $generated@@245) ($generated@@54 $generated@@131 $generated@@246)) ($generated@@54 $generated@@42 ($generated@@47 $generated@@245 $generated@@246)))
 :pattern ( ($generated@@47 ($generated@@54 $generated@@131 $generated@@245) ($generated@@54 $generated@@131 $generated@@246)))
)))
(assert (forall (($generated@@247 Int) ) (! (= ($generated@@72 $generated@@11 ($generated@@15 ($generated@@37 $generated@@247))) ($generated@@54 $generated@@131 ($generated@@72 $generated@@11 ($generated@@15 $generated@@247))))
 :pattern ( ($generated@@72 $generated@@11 ($generated@@15 ($generated@@37 $generated@@247))))
)))
(assert (forall (($generated@@248 T@U) ($generated@@249 T@T) ) (! (= ($generated@@72 $generated@@249 ($generated@@54 $generated@@249 $generated@@248)) ($generated@@54 $generated@@131 ($generated@@72 $generated@@249 $generated@@248)))
 :pattern ( ($generated@@72 $generated@@249 ($generated@@54 $generated@@249 $generated@@248)))
)))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@U) ) (! ($generated@@26 $generated@@11 $generated@@251 $generated $generated@@250)
 :pattern ( ($generated@@26 $generated@@11 $generated@@251 $generated $generated@@250))
)))
(assert (forall (($generated@@252 T@U) ) (!  (or (= $generated@@252 $generated@@157) (exists (($generated@@253 T@U) ($generated@@254 T@U) ) ($generated@@58 ($generated@@218 $generated@@252) ($generated@@72 $generated@@42 ($generated@@47 $generated@@253 $generated@@254)))))
 :pattern ( ($generated@@218 $generated@@252))
)))
(assert (forall (($generated@@255 T@U) ($generated@@256 T@U) ($generated@@257 T@U) ) (!  (=> ($generated@@34 $generated@@35 $generated@@255 ($generated@@36 $generated@@256 $generated@@257)) (and (and ($generated@@34 $generated@@78 ($generated@@133 $generated@@255) ($generated@@79 $generated@@256)) ($generated@@34 $generated@@78 ($generated@@215 $generated@@255) ($generated@@79 $generated@@257))) ($generated@@34 $generated@@78 ($generated@@218 $generated@@255) ($generated@@79 ($generated@@43 $generated@@256 $generated@@257)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@255 ($generated@@36 $generated@@256 $generated@@257)))
)))
(assert (forall (($generated@@258 T@U) ) (! ($generated@@34 $generated@@11 $generated@@258 $generated)
 :pattern ( ($generated@@34 $generated@@11 $generated@@258 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@259 () Int)
(declare-fun $generated@@260 () T@U)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 () Int)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@266  (=> (and (or (not (= $generated@@259 ($generated@@37 0))) (not true)) ($generated@@26 $generated@@35 $generated@@260 ($generated@@36 $generated $generated) $generated@@261)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($generated@@34 $generated@@11 ($generated@@15 (- $generated@@259 1)) $generated@@27)) (=> ($generated@@34 $generated@@11 ($generated@@15 (- $generated@@259 1)) $generated@@27) (=> (and (= $generated@@262 (- $generated@@259 1)) ($generated@@26 $generated@@11 ($generated@@15 $generated@@262) $generated@@27 $generated@@261)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (<= 0 $generated@@259) (and ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260)) (not ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260))))) (= $generated@@262 $generated@@259))) (=> (or (or (<= 0 $generated@@259) (and ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260)) (not ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260))))) (= $generated@@262 $generated@@259)) (=> (= (ControlFlow 0 4) (- 0 3)) (or (and ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260)) (not ($generated@@57 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260)))) (and ($generated@@92 ($generated@@133 $generated@@260) ($generated@@133 $generated@@260)) (< $generated@@262 $generated@@259))))))))))))
(let (($generated@@267 true))
(let (($generated@@268 true))
(let (($generated@@269  (=> (= $generated@@263 ($generated@@168 $generated@@264 $generated@@261 $generated@@3 false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@268) (=> (= (ControlFlow 0 7) 2) $generated@@267)) (=> (= (ControlFlow 0 7) 4) $generated@@266)))))
(let (($generated@@270  (=> (and ($generated@@62 $generated@@261) ($generated@@265 $generated@@261)) (=> (and (and ($generated@@34 $generated@@35 $generated@@260 ($generated@@36 $generated $generated)) (<= ($generated@@37 0) $generated@@259)) (and (= 0 $generated@@30) (= (ControlFlow 0 8) 7))) $generated@@269))))
$generated@@270))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)