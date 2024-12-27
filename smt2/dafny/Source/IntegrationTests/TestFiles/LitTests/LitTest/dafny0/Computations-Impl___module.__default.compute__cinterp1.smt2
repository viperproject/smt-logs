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
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@42 (Int) Int)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@U) Bool)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@67 () Int)
(declare-fun $generated@@68 (T@U T@U T@U) Int)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@70 (T@U T@U) Bool)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U T@U) T@U)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@75 (T@U) Int)
(declare-fun $generated@@76 (T@U) Int)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@78 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@81 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@102 (Int) T@U)
(declare-fun $generated@@105 (Int) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@162 (T@U) Int)
(declare-fun $generated@@163 (T@U) Int)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@183 () T@T)
(declare-fun $generated@@184 () T@T)
(declare-fun $generated@@185 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@186 (T@T T@T) T@T)
(declare-fun $generated@@187 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@188 (T@T) T@T)
(declare-fun $generated@@189 (T@T) T@T)
(declare-fun $generated@@227 (T@U) T@U)
(declare-fun $generated@@233 (T@U) T@U)
(declare-fun $generated@@236 (T@U) T@U)
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
(assert (= ($generated@@28 $generated) $generated@@0))
(assert (= ($generated@@12 $generated@@30) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@29 $generated@@30 ($generated@@31 $generated@@33 $generated@@34) $generated@@32)  (and ($generated@@29 $generated@@30 $generated@@33 $generated@@32) ($generated@@29 $generated@@30 $generated@@34 $generated@@32)))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@31 $generated@@33 $generated@@34) $generated@@32))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@29 $generated@@30 ($generated@@35 $generated@@40 $generated@@41) ($generated@@36 $generated@@38 $generated@@39))  (and ($generated@@37 $generated@@40 $generated@@38) ($generated@@37 $generated@@41 $generated@@39)))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@35 $generated@@40 $generated@@41) ($generated@@36 $generated@@38 $generated@@39)))
)))
(assert (forall (($generated@@43 Int) ) (! (= ($generated@@42 $generated@@43) $generated@@43)
 :pattern ( ($generated@@42 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@44 $generated@@46 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@46 $generated@@45))
)))
(assert (forall (($generated@@49 T@U) ) (! (= ($generated@@47 $generated@@49) (= ($generated@@48 $generated@@49) $generated@@7))
 :pattern ( ($generated@@47 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@50 $generated@@51) (= ($generated@@48 $generated@@51) $generated@@8))
 :pattern ( ($generated@@50 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ) (! (= ($generated@@52 $generated@@53) (= ($generated@@48 $generated@@53) $generated@@9))
 :pattern ( ($generated@@52 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 ($generated@@54 $generated@@57 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@54 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (!  (=> ($generated@@47 $generated@@58) (exists (($generated@@59 T@U) ($generated@@60 T@U) ) (= $generated@@58 ($generated@@31 $generated@@59 $generated@@60))))
 :pattern ( ($generated@@47 $generated@@58))
)))
(assert (= ($generated@@12 $generated@@61) 4))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@29 $generated@@61 $generated@@64 ($generated@@62 $generated@@65)) (forall (($generated@@66 T@U) ) (!  (=> ($generated@@63 $generated@@64 $generated@@66) ($generated@@37 $generated@@66 $generated@@65))
 :pattern ( ($generated@@63 $generated@@64 $generated@@66))
)))
 :pattern ( ($generated@@29 $generated@@61 $generated@@64 ($generated@@62 $generated@@65)))
)))
(assert  (and (and (and (= ($generated@@12 $generated@@71) 5) (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@78 $generated@@82 $generated@@83 ($generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@84) $generated@@86) $generated@@84)
 :weight 0
))) (forall (($generated@@87 T@T) ($generated@@88 T@T) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (or (= $generated@@91 $generated@@92) (= ($generated@@78 $generated@@87 $generated@@88 ($generated@@81 $generated@@87 $generated@@88 $generated@@90 $generated@@91 $generated@@89) $generated@@92) ($generated@@78 $generated@@87 $generated@@88 $generated@@90 $generated@@92)))
 :weight 0
))) (= ($generated@@12 $generated@@79) 6)))
(assert  (=> (<= 1 $generated@@67) (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (or ($generated@@70 $generated@@94 $generated@@95) (and (< 1 $generated@@67) (and ($generated@@29 $generated@@71 $generated@@94 ($generated@@72 $generated $generated)) ($generated@@29 $generated@@30 $generated@@95 $generated@@32)))) (and (=> ($generated@@47 $generated@@95) (let (($generated@@96 ($generated@@73 $generated@@95)))
(let (($generated@@97 ($generated@@74 $generated@@95)))
 (and ($generated@@70 $generated@@94 $generated@@97) ($generated@@70 $generated@@94 $generated@@96))))) (= ($generated@@68 ($generated@@69 $generated@@93) $generated@@94 $generated@@95) (ite ($generated@@47 $generated@@95) (let (($generated@@98 ($generated@@73 $generated@@95)))
(let (($generated@@99 ($generated@@74 $generated@@95)))
(+ ($generated@@68 $generated@@93 $generated@@94 $generated@@99) ($generated@@68 $generated@@93 $generated@@94 $generated@@98)))) (ite ($generated@@50 $generated@@95) (let (($generated@@100 ($generated@@75 $generated@@95)))
$generated@@100) (let (($generated@@101 ($generated@@76 $generated@@95)))
(ite ($generated@@63 ($generated@@77 $generated@@94) ($generated@@55 $generated@@14 ($generated@@18 $generated@@101))) ($generated@@19 ($generated@@54 $generated@@14 ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@94) ($generated@@55 $generated@@14 ($generated@@18 $generated@@101))))) 0)))))))
 :pattern ( ($generated@@68 ($generated@@69 $generated@@93) $generated@@94 $generated@@95))
))))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@50 $generated@@103) (exists (($generated@@104 Int) ) (= $generated@@103 ($generated@@102 $generated@@104))))
 :pattern ( ($generated@@50 $generated@@103))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@52 $generated@@106) (exists (($generated@@107 Int) ) (= $generated@@106 ($generated@@105 $generated@@107))))
 :pattern ( ($generated@@52 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@37 $generated@@108 $generated@@32) (and (= ($generated@@55 $generated@@30 ($generated@@54 $generated@@30 $generated@@108)) $generated@@108) ($generated@@29 $generated@@30 ($generated@@54 $generated@@30 $generated@@108) $generated@@32)))
 :pattern ( ($generated@@37 $generated@@108 $generated@@32))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@68 ($generated@@69 $generated@@109) $generated@@110 $generated@@111) ($generated@@68 $generated@@109 $generated@@110 $generated@@111))
 :pattern ( ($generated@@68 ($generated@@69 $generated@@109) $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ) (!  (=> ($generated@@37 $generated@@112 $generated) (and (= ($generated@@55 $generated@@14 ($generated@@54 $generated@@14 $generated@@112)) $generated@@112) ($generated@@29 $generated@@14 ($generated@@54 $generated@@14 $generated@@112) $generated)))
 :pattern ( ($generated@@37 $generated@@112 $generated))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@T) ) (! (= ($generated@@37 ($generated@@55 $generated@@115 $generated@@113) $generated@@114) ($generated@@29 $generated@@115 $generated@@113 $generated@@114))
 :pattern ( ($generated@@37 ($generated@@55 $generated@@115 $generated@@113) $generated@@114))
)))
(assert  (=> (<= 1 $generated@@67) (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (or ($generated@@70 $generated@@117 ($generated@@44 $generated@@30 $generated@@118)) (and (< 1 $generated@@67) (and ($generated@@29 $generated@@71 $generated@@117 ($generated@@72 $generated $generated)) ($generated@@29 $generated@@30 $generated@@118 $generated@@32)))) (and (=> ($generated@@17 ($generated@@44 $generated@@13 ($generated@@16 ($generated@@47 ($generated@@44 $generated@@30 $generated@@118))))) (let (($generated@@119 ($generated@@44 $generated@@30 ($generated@@73 ($generated@@44 $generated@@30 $generated@@118)))))
(let (($generated@@120 ($generated@@44 $generated@@30 ($generated@@74 ($generated@@44 $generated@@30 $generated@@118)))))
 (and ($generated@@70 $generated@@117 $generated@@120) ($generated@@70 $generated@@117 $generated@@119))))) (= ($generated@@68 ($generated@@69 $generated@@116) $generated@@117 ($generated@@44 $generated@@30 $generated@@118)) (ite ($generated@@47 ($generated@@44 $generated@@30 $generated@@118)) (let (($generated@@121 ($generated@@44 $generated@@30 ($generated@@73 ($generated@@44 $generated@@30 $generated@@118)))))
(let (($generated@@122 ($generated@@44 $generated@@30 ($generated@@74 ($generated@@44 $generated@@30 $generated@@118)))))
(+ ($generated@@68 ($generated@@69 $generated@@116) $generated@@117 $generated@@122) ($generated@@68 ($generated@@69 $generated@@116) $generated@@117 $generated@@121)))) (ite ($generated@@50 ($generated@@44 $generated@@30 $generated@@118)) (let (($generated@@123 ($generated@@42 ($generated@@75 ($generated@@44 $generated@@30 $generated@@118)))))
$generated@@123) (let (($generated@@124 ($generated@@42 ($generated@@76 ($generated@@44 $generated@@30 $generated@@118)))))
(ite ($generated@@63 ($generated@@77 $generated@@117) ($generated@@55 $generated@@14 ($generated@@18 $generated@@124))) ($generated@@19 ($generated@@54 $generated@@14 ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@117) ($generated@@55 $generated@@14 ($generated@@18 $generated@@124))))) 0)))))))
 :weight 3
 :pattern ( ($generated@@68 ($generated@@69 $generated@@116) $generated@@117 ($generated@@44 $generated@@30 $generated@@118)))
))))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@125 ($generated@@72 $generated@@126 $generated@@127)) $generated@@126)
 :pattern ( ($generated@@72 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@128 ($generated@@72 $generated@@129 $generated@@130)) $generated@@130)
 :pattern ( ($generated@@72 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@28 ($generated@@72 $generated@@131 $generated@@132)) $generated@@2)
 :pattern ( ($generated@@72 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@48 ($generated@@35 $generated@@133 $generated@@134)) $generated@@4)
 :pattern ( ($generated@@35 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@135 ($generated@@36 $generated@@136 $generated@@137)) $generated@@136)
 :pattern ( ($generated@@36 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@138 ($generated@@36 $generated@@139 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@36 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@141 ($generated@@35 $generated@@142 $generated@@143)) $generated@@142)
 :pattern ( ($generated@@35 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@144 ($generated@@35 $generated@@145 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@35 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@48 ($generated@@31 $generated@@147 $generated@@148)) $generated@@7)
 :pattern ( ($generated@@31 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@74 ($generated@@31 $generated@@149 $generated@@150)) $generated@@149)
 :pattern ( ($generated@@31 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@73 ($generated@@31 $generated@@151 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@31 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@153 ($generated@@62 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@62 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@28 ($generated@@62 $generated@@155)) $generated@@1)
 :pattern ( ($generated@@62 $generated@@155))
)))
(assert (forall (($generated@@156 Int) ) (! (= ($generated@@48 ($generated@@102 $generated@@156)) $generated@@8)
 :pattern ( ($generated@@102 $generated@@156))
)))
(assert (forall (($generated@@157 Int) ) (! (= ($generated@@75 ($generated@@102 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@102 $generated@@157))
)))
(assert (forall (($generated@@158 Int) ) (! (= ($generated@@48 ($generated@@105 $generated@@158)) $generated@@9)
 :pattern ( ($generated@@105 $generated@@158))
)))
(assert (forall (($generated@@159 Int) ) (! (= ($generated@@76 ($generated@@105 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@105 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@54 $generated@@161 ($generated@@55 $generated@@161 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@55 $generated@@161 $generated@@160))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (< ($generated@@162 $generated@@164) ($generated@@163 ($generated@@35 $generated@@164 $generated@@165)))
 :pattern ( ($generated@@35 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (< ($generated@@162 $generated@@167) ($generated@@163 ($generated@@35 $generated@@166 $generated@@167)))
 :pattern ( ($generated@@35 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (< ($generated@@163 $generated@@168) ($generated@@163 ($generated@@31 $generated@@168 $generated@@169)))
 :pattern ( ($generated@@31 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! (< ($generated@@163 $generated@@171) ($generated@@163 ($generated@@31 $generated@@170 $generated@@171)))
 :pattern ( ($generated@@31 $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@173 T@U) ) (!  (not ($generated@@63 ($generated@@77 $generated@@172) $generated@@173))
 :pattern ( ($generated@@63 ($generated@@77 $generated@@172) $generated@@173))
)))
(assert (forall (($generated@@174 Int) ) (! (= ($generated@@29 $generated@@30 ($generated@@102 $generated@@174) $generated@@32) ($generated@@29 $generated@@14 ($generated@@18 $generated@@174) $generated))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@102 $generated@@174) $generated@@32))
)))
(assert (forall (($generated@@175 Int) ) (! (= ($generated@@29 $generated@@30 ($generated@@105 $generated@@175) $generated@@32) ($generated@@29 $generated@@14 ($generated@@18 $generated@@175) $generated))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@105 $generated@@175) $generated@@32))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> ($generated@@37 $generated@@176 ($generated@@72 $generated@@177 $generated@@178)) (and (= ($generated@@55 $generated@@71 ($generated@@54 $generated@@71 $generated@@176)) $generated@@176) ($generated@@29 $generated@@71 ($generated@@54 $generated@@71 $generated@@176) ($generated@@72 $generated@@177 $generated@@178))))
 :pattern ( ($generated@@37 $generated@@176 ($generated@@72 $generated@@177 $generated@@178)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> ($generated@@37 $generated@@181 ($generated@@36 $generated@@179 $generated@@180)) (and (= ($generated@@55 $generated@@30 ($generated@@54 $generated@@30 $generated@@181)) $generated@@181) ($generated@@29 $generated@@30 ($generated@@54 $generated@@30 $generated@@181) ($generated@@36 $generated@@179 $generated@@180))))
 :pattern ( ($generated@@37 $generated@@181 ($generated@@36 $generated@@179 $generated@@180)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@182 $generated@@190 $generated@@191 $generated@@192 ($generated@@187 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@195 $generated@@196) $generated@@193)
 :weight 0
)) (and (forall (($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (or (= $generated@@202 $generated@@204) (= ($generated@@182 $generated@@197 $generated@@198 $generated@@199 ($generated@@187 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@202 $generated@@203 $generated@@200) $generated@@204 $generated@@205) ($generated@@182 $generated@@197 $generated@@198 $generated@@199 $generated@@201 $generated@@204 $generated@@205)))
 :weight 0
)) (forall (($generated@@206 T@T) ($generated@@207 T@T) ($generated@@208 T@T) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (or (= $generated@@212 $generated@@214) (= ($generated@@182 $generated@@206 $generated@@207 $generated@@208 ($generated@@187 $generated@@206 $generated@@207 $generated@@208 $generated@@210 $generated@@211 $generated@@212 $generated@@209) $generated@@213 $generated@@214) ($generated@@182 $generated@@206 $generated@@207 $generated@@208 $generated@@210 $generated@@213 $generated@@214)))
 :weight 0
)))) (= ($generated@@12 $generated@@183) 7)) (= ($generated@@12 $generated@@184) 8)) (forall (($generated@@215 T@T) ($generated@@216 T@T) ) (= ($generated@@12 ($generated@@186 $generated@@215 $generated@@216)) 9))) (forall (($generated@@217 T@T) ($generated@@218 T@T) ) (! (= ($generated@@188 ($generated@@186 $generated@@217 $generated@@218)) $generated@@217)
 :pattern ( ($generated@@186 $generated@@217 $generated@@218))
))) (forall (($generated@@219 T@T) ($generated@@220 T@T) ) (! (= ($generated@@189 ($generated@@186 $generated@@219 $generated@@220)) $generated@@220)
 :pattern ( ($generated@@186 $generated@@219 $generated@@220))
))))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 Bool) ($generated@@225 T@U) ($generated@@226 T@U) ) (! (= ($generated@@17 ($generated@@182 $generated@@183 $generated@@184 $generated@@13 ($generated@@185 $generated@@221 $generated@@222 $generated@@223 $generated@@224) $generated@@225 $generated@@226))  (=> (and (or (not (= $generated@@225 $generated@@221)) (not true)) ($generated@@17 ($generated@@54 $generated@@13 ($generated@@78 $generated@@184 $generated@@79 ($generated@@78 $generated@@183 ($generated@@186 $generated@@184 $generated@@79) $generated@@222 $generated@@225) $generated@@223)))) $generated@@224))
 :pattern ( ($generated@@182 $generated@@183 $generated@@184 $generated@@13 ($generated@@185 $generated@@221 $generated@@222 $generated@@223 $generated@@224) $generated@@225 $generated@@226))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (!  (and (= ($generated@@28 ($generated@@36 $generated@@228 $generated@@229)) $generated@@5) (= ($generated@@227 ($generated@@36 $generated@@228 $generated@@229)) $generated@@10))
 :pattern ( ($generated@@36 $generated@@228 $generated@@229))
)))
(assert (forall (($generated@@230 T@U) ) (!  (=> ($generated@@29 $generated@@30 $generated@@230 $generated@@32) (or (or ($generated@@47 $generated@@230) ($generated@@50 $generated@@230)) ($generated@@52 $generated@@230)))
 :pattern ( ($generated@@52 $generated@@230) ($generated@@29 $generated@@30 $generated@@230 $generated@@32))
 :pattern ( ($generated@@50 $generated@@230) ($generated@@29 $generated@@30 $generated@@230 $generated@@32))
 :pattern ( ($generated@@47 $generated@@230) ($generated@@29 $generated@@30 $generated@@230 $generated@@32))
)))
(assert (forall (($generated@@231 T@U) ) (!  (or (= $generated@@231 $generated@@172) (exists (($generated@@232 T@U) ) ($generated@@63 ($generated@@77 $generated@@231) $generated@@232)))
 :pattern ( ($generated@@77 $generated@@231))
)))
(assert (forall (($generated@@234 T@U) ) (!  (or (= $generated@@234 $generated@@172) (exists (($generated@@235 T@U) ) ($generated@@63 ($generated@@233 $generated@@234) $generated@@235)))
 :pattern ( ($generated@@233 $generated@@234))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ) (! (= ($generated@@63 ($generated@@236 $generated@@237) $generated@@238)  (and ($generated@@63 ($generated@@77 $generated@@237) ($generated@@141 ($generated@@54 $generated@@30 $generated@@238))) (= ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@237) ($generated@@141 ($generated@@54 $generated@@30 $generated@@238))) ($generated@@144 ($generated@@54 $generated@@30 $generated@@238)))))
 :pattern ( ($generated@@63 ($generated@@236 $generated@@237) $generated@@238))
)))
(assert (forall (($generated@@239 T@U) ($generated@@240 T@U) ) (! (= ($generated@@63 ($generated@@233 $generated@@239) $generated@@240) (exists (($generated@@241 T@U) ) (!  (and ($generated@@63 ($generated@@77 $generated@@239) $generated@@241) (= $generated@@240 ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@239) $generated@@241)))
 :pattern ( ($generated@@63 ($generated@@77 $generated@@239) $generated@@241))
 :pattern ( ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@239) $generated@@241))
)))
 :pattern ( ($generated@@63 ($generated@@233 $generated@@239) $generated@@240))
)))
(assert (forall (($generated@@242 T@U) ) (! (= ($generated@@162 ($generated@@55 $generated@@30 $generated@@242)) ($generated@@163 $generated@@242))
 :pattern ( ($generated@@162 ($generated@@55 $generated@@30 $generated@@242)))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ) (!  (=> ($generated@@37 $generated@@243 ($generated@@62 $generated@@244)) (and (= ($generated@@55 $generated@@61 ($generated@@54 $generated@@61 $generated@@243)) $generated@@243) ($generated@@29 $generated@@61 ($generated@@54 $generated@@61 $generated@@243) ($generated@@62 $generated@@244))))
 :pattern ( ($generated@@37 $generated@@243 ($generated@@62 $generated@@244)))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (! (= ($generated@@29 $generated@@71 $generated@@245 ($generated@@72 $generated@@246 $generated@@247)) (forall (($generated@@248 T@U) ) (!  (=> ($generated@@63 ($generated@@77 $generated@@245) $generated@@248) (and ($generated@@37 ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@245) $generated@@248) $generated@@247) ($generated@@37 $generated@@248 $generated@@246)))
 :pattern ( ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 $generated@@245) $generated@@248))
 :pattern ( ($generated@@63 ($generated@@77 $generated@@245) $generated@@248))
)))
 :pattern ( ($generated@@29 $generated@@71 $generated@@245 ($generated@@72 $generated@@246 $generated@@247)))
)))
(assert (= ($generated@@28 $generated@@32) $generated@@6))
(assert (= ($generated@@227 $generated@@32) $generated@@11))
(assert  (=> (<= 1 $generated@@67) (forall (($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ) (!  (=> (or ($generated@@70 ($generated@@44 $generated@@71 $generated@@250) ($generated@@44 $generated@@30 $generated@@251)) (and (< 1 $generated@@67) (and ($generated@@29 $generated@@71 $generated@@250 ($generated@@72 $generated $generated)) ($generated@@29 $generated@@30 $generated@@251 $generated@@32)))) (and (=> ($generated@@17 ($generated@@44 $generated@@13 ($generated@@16 ($generated@@47 ($generated@@44 $generated@@30 $generated@@251))))) (let (($generated@@252 ($generated@@44 $generated@@30 ($generated@@73 ($generated@@44 $generated@@30 $generated@@251)))))
(let (($generated@@253 ($generated@@44 $generated@@30 ($generated@@74 ($generated@@44 $generated@@30 $generated@@251)))))
 (and ($generated@@70 ($generated@@44 $generated@@71 $generated@@250) $generated@@253) ($generated@@70 ($generated@@44 $generated@@71 $generated@@250) $generated@@252))))) (= ($generated@@68 ($generated@@69 $generated@@249) ($generated@@44 $generated@@71 $generated@@250) ($generated@@44 $generated@@30 $generated@@251)) (ite ($generated@@47 ($generated@@44 $generated@@30 $generated@@251)) (let (($generated@@254 ($generated@@44 $generated@@30 ($generated@@73 ($generated@@44 $generated@@30 $generated@@251)))))
(let (($generated@@255 ($generated@@44 $generated@@30 ($generated@@74 ($generated@@44 $generated@@30 $generated@@251)))))
($generated@@42 (+ ($generated@@68 ($generated@@69 $generated@@249) ($generated@@44 $generated@@71 $generated@@250) $generated@@255) ($generated@@68 ($generated@@69 $generated@@249) ($generated@@44 $generated@@71 $generated@@250) $generated@@254))))) (ite ($generated@@50 ($generated@@44 $generated@@30 $generated@@251)) (let (($generated@@256 ($generated@@42 ($generated@@75 ($generated@@44 $generated@@30 $generated@@251)))))
$generated@@256) (let (($generated@@257 ($generated@@42 ($generated@@76 ($generated@@44 $generated@@30 $generated@@251)))))
(ite ($generated@@63 ($generated@@77 $generated@@250) ($generated@@55 $generated@@14 ($generated@@18 $generated@@257))) ($generated@@19 ($generated@@54 $generated@@14 ($generated@@78 $generated@@79 $generated@@79 ($generated@@80 ($generated@@44 $generated@@71 $generated@@250)) ($generated@@55 $generated@@14 ($generated@@18 $generated@@257))))) 0)))))))
 :weight 3
 :pattern ( ($generated@@68 ($generated@@69 $generated@@249) ($generated@@44 $generated@@71 $generated@@250) ($generated@@44 $generated@@30 $generated@@251)))
))))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@U) ) (! (= ($generated@@35 ($generated@@44 $generated@@79 $generated@@258) ($generated@@44 $generated@@79 $generated@@259)) ($generated@@44 $generated@@30 ($generated@@35 $generated@@258 $generated@@259)))
 :pattern ( ($generated@@35 ($generated@@44 $generated@@79 $generated@@258) ($generated@@44 $generated@@79 $generated@@259)))
)))
(assert (forall (($generated@@260 T@U) ($generated@@261 T@U) ) (! (= ($generated@@31 ($generated@@44 $generated@@30 $generated@@260) ($generated@@44 $generated@@30 $generated@@261)) ($generated@@44 $generated@@30 ($generated@@31 $generated@@260 $generated@@261)))
 :pattern ( ($generated@@31 ($generated@@44 $generated@@30 $generated@@260) ($generated@@44 $generated@@30 $generated@@261)))
)))
(assert (forall (($generated@@262 Int) ) (! (= ($generated@@55 $generated@@14 ($generated@@18 ($generated@@42 $generated@@262))) ($generated@@44 $generated@@79 ($generated@@55 $generated@@14 ($generated@@18 $generated@@262))))
 :pattern ( ($generated@@55 $generated@@14 ($generated@@18 ($generated@@42 $generated@@262))))
)))
(assert (forall (($generated@@263 Int) ) (! (= ($generated@@102 ($generated@@42 $generated@@263)) ($generated@@44 $generated@@30 ($generated@@102 $generated@@263)))
 :pattern ( ($generated@@102 ($generated@@42 $generated@@263)))
)))
(assert (forall (($generated@@264 Int) ) (! (= ($generated@@105 ($generated@@42 $generated@@264)) ($generated@@44 $generated@@30 ($generated@@105 $generated@@264)))
 :pattern ( ($generated@@105 ($generated@@42 $generated@@264)))
)))
(assert (forall (($generated@@265 T@U) ($generated@@266 T@T) ) (! (= ($generated@@55 $generated@@266 ($generated@@44 $generated@@266 $generated@@265)) ($generated@@44 $generated@@79 ($generated@@55 $generated@@266 $generated@@265)))
 :pattern ( ($generated@@55 $generated@@266 ($generated@@44 $generated@@266 $generated@@265)))
)))
(assert (forall (($generated@@267 T@U) ) (!  (or (= $generated@@267 $generated@@172) (exists (($generated@@268 T@U) ($generated@@269 T@U) ) ($generated@@63 ($generated@@236 $generated@@267) ($generated@@55 $generated@@30 ($generated@@35 $generated@@268 $generated@@269)))))
 :pattern ( ($generated@@236 $generated@@267))
)))
(assert (forall (($generated@@270 T@U) ($generated@@271 T@U) ($generated@@272 T@U) ) (!  (=> ($generated@@29 $generated@@71 $generated@@270 ($generated@@72 $generated@@271 $generated@@272)) (and (and ($generated@@29 $generated@@61 ($generated@@77 $generated@@270) ($generated@@62 $generated@@271)) ($generated@@29 $generated@@61 ($generated@@233 $generated@@270) ($generated@@62 $generated@@272))) ($generated@@29 $generated@@61 ($generated@@236 $generated@@270) ($generated@@62 ($generated@@36 $generated@@271 $generated@@272)))))
 :pattern ( ($generated@@29 $generated@@71 $generated@@270 ($generated@@72 $generated@@271 $generated@@272)))
)))
(assert (forall (($generated@@273 T@U) ) (! ($generated@@29 $generated@@14 $generated@@273 $generated)
 :pattern ( ($generated@@29 $generated@@14 $generated@@273 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@274 () T@U)
(declare-fun $generated@@275 () T@U)
(declare-fun $generated@@276 () T@U)
(declare-fun $generated@@277 () T@U)
(declare-fun $generated@@278 (T@U) Bool)
(declare-fun $generated@@279 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@280  (=> (and (= $generated@@274 ($generated@@185 $generated@@275 $generated@@276 $generated@@3 false)) (= (ControlFlow 0 2) (- 0 1))) (= ($generated@@42 ($generated@@68 ($generated@@69 ($generated@@69 $generated@@277)) ($generated@@44 $generated@@71 $generated@@172) ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@102 ($generated@@42 1))) ($generated@@44 $generated@@30 ($generated@@102 ($generated@@42 2))))) ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@102 ($generated@@42 3))) ($generated@@44 $generated@@30 ($generated@@102 ($generated@@42 4))))))))) ($generated@@42 10)))))
(let (($generated@@281  (=> (and (and ($generated@@278 $generated@@276) ($generated@@279 $generated@@276)) (and (= 2 $generated@@67) (= (ControlFlow 0 3) 2))) $generated@@280)))
$generated@@281)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Timed out