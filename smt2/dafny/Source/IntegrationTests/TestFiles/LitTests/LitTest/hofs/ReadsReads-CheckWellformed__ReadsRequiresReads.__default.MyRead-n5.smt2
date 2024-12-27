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
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@27 (T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U T@U) Bool)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@43 (T@T T@U T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@54 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@60 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@62 (T@U T@U T@U) T@U)
(declare-fun $generated@@69 () T@U)
(declare-fun $generated@@70 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 () T@T)
(declare-fun $generated@@73 (T@T T@T) T@T)
(declare-fun $generated@@74 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@75 (T@T) T@T)
(declare-fun $generated@@76 (T@T) T@T)
(declare-fun $generated@@102 (T@T T@U) T@U)
(declare-fun $generated@@105 () T@U)
(declare-fun $generated@@106 (T@U) Bool)
(declare-fun $generated@@107 (T@U T@U) Bool)
(declare-fun $generated@@115 () T@T)
(declare-fun $generated@@119 (T@U T@U T@U) Bool)
(declare-fun $generated@@162 (T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
(declare-fun $generated@@169 (T@U) T@U)
(declare-fun $generated@@174 () Int)
(declare-fun $generated@@175 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@176 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@196 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@197 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@198 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@230 (T@U) T@U)
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
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@26 $generated@@28 $generated $generated@@31 ($generated@@27 $generated@@28 $generated@@29 $generated@@30) $generated@@32))))
 :pattern ( ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38) ($generated@@33 $generated@@9 ($generated@@12 ($generated@@24 $generated@@34 $generated@@35 $generated@@37 $generated@@36 $generated@@38))))
 :pattern ( ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38))
)))
(assert (= ($generated@@39 $generated) $generated@@0))
(assert (forall (($generated@@42 T@U) ) (!  (not ($generated@@40 $generated@@41 $generated@@42))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42))
)))
(assert (= ($generated@@8 $generated@@44) 3))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (and (and ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@48 $generated@@49)) (forall (($generated@@52 T@U) ) (!  (=> ($generated@@46 $generated@@52 $generated@@50) ($generated@@46 $generated@@52 $generated@@48))
 :pattern ( ($generated@@46 $generated@@52 $generated@@50))
 :pattern ( ($generated@@46 $generated@@52 $generated@@48))
))) (forall (($generated@@53 T@U) ) (!  (=> ($generated@@46 $generated@@53 $generated@@49) ($generated@@46 $generated@@53 $generated@@51))
 :pattern ( ($generated@@46 $generated@@53 $generated@@49))
 :pattern ( ($generated@@46 $generated@@53 $generated@@51))
))) ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@50 $generated@@51)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@48 $generated@@49)) ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@50 $generated@@51)))
)))
(assert (= ($generated@@8 $generated@@55) 4))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@54 $generated@@55 $generated@@58 $generated@@56 $generated@@59) ($generated@@54 $generated@@55 $generated@@58 $generated@@57 $generated@@59))
 :pattern ( ($generated@@54 $generated@@55 $generated@@58 $generated@@56 $generated@@59))
 :pattern ( ($generated@@54 $generated@@55 $generated@@58 $generated@@57 $generated@@59))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> ($generated@@24 $generated@@64 $generated@@65 $generated@@67 $generated@@66 $generated@@68) (= ($generated@@40 ($generated@@60 $generated@@64 ($generated@@61 $generated@@57) $generated@@67 ($generated@@62 $generated@@64 $generated@@65 $generated@@66) $generated@@68) $generated@@63) ($generated@@40 ($generated@@60 $generated@@64 $generated@@65 $generated@@67 $generated@@66 $generated@@68) $generated@@63)))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@64 ($generated@@61 $generated@@57) $generated@@67 ($generated@@62 $generated@@64 $generated@@65 $generated@@66) $generated@@68) $generated@@63))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@70 $generated@@77 $generated@@78 ($generated@@74 $generated@@77 $generated@@78 $generated@@80 $generated@@81 $generated@@79) $generated@@81) $generated@@79)
 :weight 0
)) (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (or (= $generated@@86 $generated@@87) (= ($generated@@70 $generated@@82 $generated@@83 ($generated@@74 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@84) $generated@@87) ($generated@@70 $generated@@82 $generated@@83 $generated@@85 $generated@@87)))
 :weight 0
))) (= ($generated@@8 $generated@@71) 5)) (= ($generated@@8 $generated@@72) 6)) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (= ($generated@@8 ($generated@@73 $generated@@88 $generated@@89)) 7))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@75 ($generated@@73 $generated@@90 $generated@@91)) $generated@@90)
 :pattern ( ($generated@@73 $generated@@90 $generated@@91))
))) (forall (($generated@@92 T@T) ($generated@@93 T@T) ) (! (= ($generated@@76 ($generated@@73 $generated@@92 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@73 $generated@@92 $generated@@93))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@54 $generated@@55 $generated@@94 $generated@@57 $generated@@95)  (or (= $generated@@94 $generated@@69) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@95 $generated@@94) $generated@@2)))))
 :pattern ( ($generated@@54 $generated@@55 $generated@@94 $generated@@57 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@24 $generated@@97 $generated@@98 $generated@@100 $generated@@99 $generated@@101) (= ($generated@@40 ($generated@@60 $generated@@97 $generated $generated@@100 ($generated@@27 $generated@@97 $generated@@98 $generated@@99) $generated@@101) $generated@@96) ($generated@@40 ($generated@@60 $generated@@97 $generated@@98 $generated@@100 $generated@@99 $generated@@101) $generated@@96)))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@97 $generated $generated@@100 ($generated@@27 $generated@@97 $generated@@98 $generated@@99) $generated@@101) $generated@@96))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@102 $generated@@104 $generated@@103) $generated@@103)
 :pattern ( ($generated@@102 $generated@@104 $generated@@103))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (=> (and ($generated@@106 $generated@@110) (and ($generated@@46 $generated@@112 $generated@@108) ($generated@@43 $generated@@44 $generated@@111 ($generated@@45 $generated@@108 $generated@@109)))) (= ($generated@@107 ($generated@@60 $generated@@108 $generated@@109 $generated@@105 $generated@@111 $generated@@112) $generated@@41) ($generated@@107 ($generated@@60 $generated@@108 $generated@@109 $generated@@110 $generated@@111 $generated@@112) $generated@@41)))
 :pattern ( ($generated@@60 $generated@@108 $generated@@109 $generated@@105 $generated@@111 $generated@@112) ($generated@@106 $generated@@110))
 :pattern ( ($generated@@60 $generated@@108 $generated@@109 $generated@@110 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@33 $generated@@114 ($generated@@25 $generated@@114 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@25 $generated@@114 $generated@@113))
)))
(assert (= ($generated@@8 $generated@@115) 8))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@43 $generated@@115 $generated@@116 ($generated@@61 $generated@@117)) (forall (($generated@@118 T@U) ) (!  (=> ($generated@@40 $generated@@116 $generated@@118) ($generated@@46 $generated@@118 $generated@@117))
 :pattern ( ($generated@@40 $generated@@116 $generated@@118))
)))
 :pattern ( ($generated@@43 $generated@@115 $generated@@116 ($generated@@61 $generated@@117)))
)))
(assert ($generated@@106 $generated@@105))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@T) ) (! (= ($generated@@119 ($generated@@33 $generated@@123 $generated@@120) $generated@@121 $generated@@122) ($generated@@54 $generated@@123 $generated@@120 $generated@@121 $generated@@122))
 :pattern ( ($generated@@119 ($generated@@33 $generated@@123 $generated@@120) $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@24 $generated@@124 $generated $generated@@127 ($generated@@27 $generated@@124 $generated@@125 $generated@@126) $generated@@128) true)
 :pattern ( ($generated@@24 $generated@@124 $generated $generated@@127 ($generated@@27 $generated@@124 $generated@@125 $generated@@126) $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ) (!  (=> ($generated@@46 $generated@@129 $generated@@57) (and (= ($generated@@33 $generated@@55 ($generated@@25 $generated@@55 $generated@@129)) $generated@@129) ($generated@@43 $generated@@55 ($generated@@25 $generated@@55 $generated@@129) $generated@@57)))
 :pattern ( ($generated@@46 $generated@@129 $generated@@57))
)))
(assert (forall (($generated@@130 T@U) ) (!  (=> ($generated@@46 $generated@@130 $generated@@56) (and (= ($generated@@33 $generated@@55 ($generated@@25 $generated@@55 $generated@@130)) $generated@@130) ($generated@@43 $generated@@55 ($generated@@25 $generated@@55 $generated@@130) $generated@@56)))
 :pattern ( ($generated@@46 $generated@@130 $generated@@56))
)))
(assert (forall (($generated@@131 T@U) ) (! (= ($generated@@43 $generated@@55 $generated@@131 $generated@@56)  (and ($generated@@43 $generated@@55 $generated@@131 $generated@@57) (or (not (= $generated@@131 $generated@@69)) (not true))))
 :pattern ( ($generated@@43 $generated@@55 $generated@@131 $generated@@56))
 :pattern ( ($generated@@43 $generated@@55 $generated@@131 $generated@@57))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (and ($generated@@106 $generated@@135) ($generated@@54 $generated@@44 $generated@@132 ($generated@@45 $generated@@133 $generated@@134) $generated@@135)) (forall (($generated@@136 T@U) ) (!  (=> (and ($generated@@119 $generated@@136 $generated@@133 $generated@@135) ($generated@@24 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136)) ($generated@@119 ($generated@@26 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136) $generated@@134 $generated@@135))
 :pattern ( ($generated@@26 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136))
)))
 :pattern ( ($generated@@54 $generated@@44 $generated@@132 ($generated@@45 $generated@@133 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@60 $generated@@137 $generated@@138 $generated@@140 $generated@@139 $generated@@141) ($generated@@25 $generated@@115 ($generated@@26 $generated@@137 ($generated@@61 $generated@@57) $generated@@140 ($generated@@62 $generated@@137 $generated@@138 $generated@@139) $generated@@141)))
 :pattern ( ($generated@@60 $generated@@137 $generated@@138 $generated@@140 $generated@@139 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> ($generated@@107 $generated@@142 $generated@@143) (= $generated@@142 $generated@@143))
 :pattern ( ($generated@@107 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@24 $generated@@144 ($generated@@61 $generated@@57) $generated@@147 ($generated@@62 $generated@@144 $generated@@145 $generated@@146) $generated@@148) ($generated@@24 $generated@@144 $generated@@145 $generated@@147 $generated@@146 $generated@@148))
 :pattern ( ($generated@@24 $generated@@144 ($generated@@61 $generated@@57) $generated@@147 ($generated@@62 $generated@@144 $generated@@145 $generated@@146) $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@149 ($generated@@45 $generated@@150 $generated@@151)) (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> (and (and ($generated@@106 $generated@@152) ($generated@@46 $generated@@153 $generated@@150)) ($generated@@24 $generated@@150 $generated@@151 $generated@@152 $generated@@149 $generated@@153)) ($generated@@46 ($generated@@26 $generated@@150 $generated@@151 $generated@@152 $generated@@149 $generated@@153) $generated@@151))
 :pattern ( ($generated@@26 $generated@@150 $generated@@151 $generated@@152 $generated@@149 $generated@@153))
)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@149 ($generated@@45 $generated@@150 $generated@@151)))
)))
(assert (forall (($generated@@154 T@U) ) (!  (=> ($generated@@46 $generated@@154 $generated) (and (= ($generated@@33 $generated@@9 ($generated@@25 $generated@@9 $generated@@154)) $generated@@154) ($generated@@43 $generated@@9 ($generated@@25 $generated@@9 $generated@@154) $generated)))
 :pattern ( ($generated@@46 $generated@@154 $generated))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@46 ($generated@@33 $generated@@157 $generated@@155) $generated@@156) ($generated@@43 $generated@@157 $generated@@155 $generated@@156))
 :pattern ( ($generated@@46 ($generated@@33 $generated@@157 $generated@@155) $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@54 $generated@@115 $generated@@158 ($generated@@61 $generated@@159) $generated@@160) (forall (($generated@@161 T@U) ) (!  (=> ($generated@@40 $generated@@158 $generated@@161) ($generated@@119 $generated@@161 $generated@@159 $generated@@160))
 :pattern ( ($generated@@40 $generated@@158 $generated@@161))
)))
 :pattern ( ($generated@@54 $generated@@115 $generated@@158 ($generated@@61 $generated@@159) $generated@@160))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@162 ($generated@@45 $generated@@163 $generated@@164)) $generated@@163)
 :pattern ( ($generated@@45 $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@165 ($generated@@45 $generated@@166 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@45 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ) (! ($generated@@43 $generated@@55 $generated@@168 $generated@@57)
 :pattern ( ($generated@@43 $generated@@55 $generated@@168 $generated@@57))
)))
(assert (forall (($generated@@170 T@U) ) (! (= ($generated@@169 ($generated@@61 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@61 $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ) (! (= ($generated@@39 ($generated@@61 $generated@@171)) $generated@@1)
 :pattern ( ($generated@@61 $generated@@171))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@T) ) (! (= ($generated@@25 $generated@@173 ($generated@@33 $generated@@173 $generated@@172)) $generated@@172)
 :pattern ( ($generated@@33 $generated@@173 $generated@@172))
)))
(assert  (=> (<= 0 $generated@@174) (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> (and (or ($generated@@176 $generated@@178 $generated@@179 $generated@@180 $generated@@181) (and (< 0 $generated@@174) (and (and ($generated@@43 $generated@@44 $generated@@180 ($generated@@45 $generated@@178 $generated@@179)) ($generated@@54 $generated@@44 $generated@@180 ($generated@@45 $generated@@178 $generated@@179) $generated@@177)) (and ($generated@@46 $generated@@181 $generated@@178) ($generated@@119 $generated@@181 $generated@@178 $generated@@177))))) ($generated@@106 $generated@@177)) ($generated@@54 $generated@@115 ($generated@@175 $generated@@178 $generated@@179 $generated@@180 $generated@@181) ($generated@@61 $generated@@57) $generated@@177))
 :pattern ( ($generated@@54 $generated@@115 ($generated@@175 $generated@@178 $generated@@179 $generated@@180 $generated@@181) ($generated@@61 $generated@@57) $generated@@177))
))))
(assert  (=> (<= 0 $generated@@174) (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (or ($generated@@176 $generated@@182 $generated@@183 ($generated@@102 $generated@@44 $generated@@185) ($generated@@102 $generated@@72 $generated@@186)) (and (< 0 $generated@@174) (and (and ($generated@@106 $generated@@184) ($generated@@43 $generated@@44 $generated@@185 ($generated@@45 $generated@@182 $generated@@183))) ($generated@@46 $generated@@186 $generated@@182)))) (and true (= ($generated@@175 $generated@@182 $generated@@183 ($generated@@102 $generated@@44 $generated@@185) ($generated@@102 $generated@@72 $generated@@186)) ($generated@@60 $generated@@182 $generated@@183 $generated@@184 ($generated@@102 $generated@@44 $generated@@185) ($generated@@102 $generated@@72 $generated@@186)))))
 :weight 3
 :pattern ( ($generated@@175 $generated@@182 $generated@@183 ($generated@@102 $generated@@44 $generated@@185) ($generated@@102 $generated@@72 $generated@@186)) ($generated@@106 $generated@@184))
))))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ) (!  (=> ($generated@@106 $generated@@190) (= ($generated@@54 $generated@@44 $generated@@187 ($generated@@45 $generated@@188 $generated@@189) $generated@@190) (forall (($generated@@191 T@U) ) (!  (=> (and (and ($generated@@46 $generated@@191 $generated@@188) ($generated@@119 $generated@@191 $generated@@188 $generated@@190)) ($generated@@24 $generated@@188 $generated@@189 $generated@@190 $generated@@187 $generated@@191)) (forall (($generated@@192 T@U) ) (!  (=> (and (or (not (= $generated@@192 $generated@@69)) (not true)) ($generated@@40 ($generated@@60 $generated@@188 $generated@@189 $generated@@190 $generated@@187 $generated@@191) ($generated@@33 $generated@@55 $generated@@192))) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@190 $generated@@192) $generated@@2))))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@188 $generated@@189 $generated@@190 $generated@@187 $generated@@191) ($generated@@33 $generated@@55 $generated@@192)))
)))
 :pattern ( ($generated@@26 $generated@@188 $generated@@189 $generated@@190 $generated@@187 $generated@@191))
 :pattern ( ($generated@@60 $generated@@188 $generated@@189 $generated@@190 $generated@@187 $generated@@191))
))))
 :pattern ( ($generated@@54 $generated@@44 $generated@@187 ($generated@@45 $generated@@188 $generated@@189) $generated@@190))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> ($generated@@46 $generated@@195 ($generated@@45 $generated@@193 $generated@@194)) (and (= ($generated@@33 $generated@@44 ($generated@@25 $generated@@44 $generated@@195)) $generated@@195) ($generated@@43 $generated@@44 ($generated@@25 $generated@@44 $generated@@195) ($generated@@45 $generated@@193 $generated@@194))))
 :pattern ( ($generated@@46 $generated@@195 ($generated@@45 $generated@@193 $generated@@194)))
)))
(assert  (and (forall (($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@196 $generated@@199 $generated@@200 $generated@@201 ($generated@@198 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@205 $generated@@202) $generated@@204 $generated@@205) $generated@@202)
 :weight 0
)) (and (forall (($generated@@206 T@T) ($generated@@207 T@T) ($generated@@208 T@T) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (or (= $generated@@211 $generated@@213) (= ($generated@@196 $generated@@206 $generated@@207 $generated@@208 ($generated@@198 $generated@@206 $generated@@207 $generated@@208 $generated@@210 $generated@@211 $generated@@212 $generated@@209) $generated@@213 $generated@@214) ($generated@@196 $generated@@206 $generated@@207 $generated@@208 $generated@@210 $generated@@213 $generated@@214)))
 :weight 0
)) (forall (($generated@@215 T@T) ($generated@@216 T@T) ($generated@@217 T@T) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ) (!  (or (= $generated@@221 $generated@@223) (= ($generated@@196 $generated@@215 $generated@@216 $generated@@217 ($generated@@198 $generated@@215 $generated@@216 $generated@@217 $generated@@219 $generated@@220 $generated@@221 $generated@@218) $generated@@222 $generated@@223) ($generated@@196 $generated@@215 $generated@@216 $generated@@217 $generated@@219 $generated@@222 $generated@@223)))
 :weight 0
)))))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 Bool) ($generated@@228 T@U) ($generated@@229 T@U) ) (! (= ($generated@@13 ($generated@@196 $generated@@55 $generated@@71 $generated@@9 ($generated@@197 $generated@@224 $generated@@225 $generated@@226 $generated@@227) $generated@@228 $generated@@229))  (=> (and (or (not (= $generated@@228 $generated@@224)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@225 $generated@@228) $generated@@226)))) $generated@@227))
 :pattern ( ($generated@@196 $generated@@55 $generated@@71 $generated@@9 ($generated@@197 $generated@@224 $generated@@225 $generated@@226 $generated@@227) $generated@@228 $generated@@229))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (!  (and (= ($generated@@39 ($generated@@45 $generated@@231 $generated@@232)) $generated@@5) (= ($generated@@230 ($generated@@45 $generated@@231 $generated@@232)) $generated@@7))
 :pattern ( ($generated@@45 $generated@@231 $generated@@232))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ($generated@@237 T@U) ) (!  (=> (and (and ($generated@@106 $generated@@235) (and ($generated@@46 $generated@@237 $generated@@233) ($generated@@43 $generated@@44 $generated@@236 ($generated@@45 $generated@@233 $generated@@234)))) ($generated@@107 ($generated@@60 $generated@@233 $generated@@234 $generated@@105 $generated@@236 $generated@@237) $generated@@41)) (= ($generated@@24 $generated@@233 $generated@@234 $generated@@105 $generated@@236 $generated@@237) ($generated@@24 $generated@@233 $generated@@234 $generated@@235 $generated@@236 $generated@@237)))
 :pattern ( ($generated@@24 $generated@@233 $generated@@234 $generated@@105 $generated@@236 $generated@@237) ($generated@@106 $generated@@235))
 :pattern ( ($generated@@24 $generated@@233 $generated@@234 $generated@@235 $generated@@236 $generated@@237))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ($generated@@242 T@U) ) (! (= ($generated@@26 $generated@@238 ($generated@@61 $generated@@57) $generated@@241 ($generated@@62 $generated@@238 $generated@@239 $generated@@240) $generated@@242) ($generated@@33 $generated@@115 ($generated@@60 $generated@@238 $generated@@239 $generated@@241 $generated@@240 $generated@@242)))
 :pattern ( ($generated@@26 $generated@@238 ($generated@@61 $generated@@57) $generated@@241 ($generated@@62 $generated@@238 $generated@@239 $generated@@240) $generated@@242))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ) (!  (=> ($generated@@46 $generated@@243 ($generated@@61 $generated@@244)) (and (= ($generated@@33 $generated@@115 ($generated@@25 $generated@@115 $generated@@243)) $generated@@243) ($generated@@43 $generated@@115 ($generated@@25 $generated@@115 $generated@@243) ($generated@@61 $generated@@244))))
 :pattern ( ($generated@@46 $generated@@243 ($generated@@61 $generated@@244)))
)))
(assert (= ($generated@@39 $generated@@57) $generated@@3))
(assert (= ($generated@@230 $generated@@57) $generated@@6))
(assert (= ($generated@@39 $generated@@56) $generated@@4))
(assert (= ($generated@@230 $generated@@56) $generated@@6))
(assert  (=> (<= 0 $generated@@174) (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ($generated@@248 T@U) ($generated@@249 T@U) ) (!  (=> (or ($generated@@176 $generated@@245 $generated@@246 $generated@@248 $generated@@249) (and (< 0 $generated@@174) (and (and ($generated@@106 $generated@@247) ($generated@@43 $generated@@44 $generated@@248 ($generated@@45 $generated@@245 $generated@@246))) ($generated@@46 $generated@@249 $generated@@245)))) (and true (= ($generated@@175 $generated@@245 $generated@@246 $generated@@248 $generated@@249) ($generated@@60 $generated@@245 $generated@@246 $generated@@247 $generated@@248 $generated@@249))))
 :pattern ( ($generated@@175 $generated@@245 $generated@@246 $generated@@248 $generated@@249) ($generated@@106 $generated@@247))
))))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@U) ) (! (= ($generated@@107 $generated@@250 $generated@@251) (forall (($generated@@252 T@U) ) (! (= ($generated@@40 $generated@@250 $generated@@252) ($generated@@40 $generated@@251 $generated@@252))
 :pattern ( ($generated@@40 $generated@@250 $generated@@252))
 :pattern ( ($generated@@40 $generated@@251 $generated@@252))
)))
 :pattern ( ($generated@@107 $generated@@250 $generated@@251))
)))
(assert (forall (($generated@@253 T@U) ($generated@@254 T@T) ) (! (= ($generated@@33 $generated@@254 ($generated@@102 $generated@@254 $generated@@253)) ($generated@@102 $generated@@72 ($generated@@33 $generated@@254 $generated@@253)))
 :pattern ( ($generated@@33 $generated@@254 ($generated@@102 $generated@@254 $generated@@253)))
)))
(assert  (=> (<= 0 $generated@@174) (forall (($generated@@255 T@U) ($generated@@256 T@U) ($generated@@257 T@U) ($generated@@258 T@U) ) (!  (=> (or ($generated@@176 $generated@@255 $generated@@256 $generated@@257 $generated@@258) (and (< 0 $generated@@174) (and ($generated@@43 $generated@@44 $generated@@257 ($generated@@45 $generated@@255 $generated@@256)) ($generated@@46 $generated@@258 $generated@@255)))) ($generated@@43 $generated@@115 ($generated@@175 $generated@@255 $generated@@256 $generated@@257 $generated@@258) ($generated@@61 $generated@@57)))
 :pattern ( ($generated@@175 $generated@@255 $generated@@256 $generated@@257 $generated@@258))
))))
(assert (forall (($generated@@259 T@U) ($generated@@260 T@U) ) (! ($generated@@54 $generated@@9 $generated@@260 $generated $generated@@259)
 :pattern ( ($generated@@54 $generated@@9 $generated@@260 $generated $generated@@259))
)))
(assert (forall (($generated@@261 T@U) ) (! ($generated@@43 $generated@@9 $generated@@261 $generated)
 :pattern ( ($generated@@43 $generated@@9 $generated@@261 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@262 () T@U)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 () T@U)
(declare-fun $generated@@267 () Bool)
(declare-fun $generated@@268 () T@U)
(declare-fun $generated@@269 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@270  (=> (and ($generated@@119 ($generated@@33 $generated@@44 $generated@@262) ($generated@@45 $generated@@263 $generated@@264) $generated@@265) ($generated@@119 $generated@@266 $generated@@263 $generated@@265)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@24 $generated@@263 $generated@@264 $generated@@265 $generated@@262 $generated@@266)) (=> ($generated@@24 $generated@@263 $generated@@264 $generated@@265 $generated@@262 $generated@@266) (=> (and (and (= $generated@@267 (forall (($generated@@271 T@U) ($generated@@272 T@U) )  (=> (and (and (or (not (= $generated@@271 $generated@@69)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@265 $generated@@271) $generated@@2)))) ($generated@@40 ($generated@@60 $generated@@263 $generated@@264 $generated@@265 $generated@@262 $generated@@266) ($generated@@33 $generated@@55 $generated@@271))) ($generated@@13 ($generated@@196 $generated@@55 $generated@@71 $generated@@9 $generated@@268 $generated@@271 $generated@@272))))) (= ($generated@@175 $generated@@263 $generated@@264 $generated@@262 $generated@@266) ($generated@@60 $generated@@263 $generated@@264 $generated@@265 $generated@@262 $generated@@266))) (and ($generated@@43 $generated@@115 ($generated@@175 $generated@@263 $generated@@264 $generated@@262 $generated@@266) ($generated@@61 $generated@@57)) (= (ControlFlow 0 3) (- 0 2)))) $generated@@267))))))
(let (($generated@@273 true))
(let (($generated@@274  (=> (= $generated@@268 ($generated@@197 $generated@@69 $generated@@265 $generated@@2 false)) (and (=> (= (ControlFlow 0 5) 1) $generated@@273) (=> (= (ControlFlow 0 5) 3) $generated@@270)))))
(let (($generated@@275  (=> (and ($generated@@106 $generated@@265) ($generated@@269 $generated@@265)) (=> (and (and ($generated@@43 $generated@@44 $generated@@262 ($generated@@45 $generated@@263 $generated@@264)) ($generated@@46 $generated@@266 $generated@@263)) (and (= 0 $generated@@174) (= (ControlFlow 0 6) 5))) $generated@@274))))
$generated@@275)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)