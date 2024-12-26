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
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U T@U) T@U)
(declare-fun $generated@@40 (T@U T@U) Bool)
(declare-fun $generated@@45 (T@U T@U) Bool)
(declare-fun $generated@@46 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T T@T) T@T)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@79 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@81 (T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@U) T@U)
(declare-fun $generated@@89 (T@T T@U) T@U)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@109 () T@U)
(declare-fun $generated@@111 () T@U)
(declare-fun $generated@@113 () T@U)
(declare-fun $generated@@115 () T@U)
(declare-fun $generated@@117 () T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@130 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@137 () T@T)
(declare-fun $generated@@138 (T@U T@U) T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@161 (T@U) T@U)
(declare-fun $generated@@168 (T@U) T@U)
(declare-fun $generated@@171 (T@U) T@U)
(declare-fun $generated@@178 (T@U) T@U)
(declare-fun $generated@@187 (T@U) Int)
(declare-fun $generated@@188 (T@U) Int)
(declare-fun $generated@@200 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@201 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@202 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@234 (T@U) T@U)
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
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@15 $generated@@34) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@36 $generated@@37)) ($generated@@32 $generated@@38))
 :pattern ( ($generated@@32 $generated@@38) ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@36 $generated@@37)))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@33 $generated@@34 ($generated@@39 $generated@@43 $generated@@44) ($generated@@35 $generated@@41 $generated@@42))  (and ($generated@@40 $generated@@43 $generated@@41) ($generated@@40 $generated@@44 $generated@@42)))
 :pattern ( ($generated@@33 $generated@@34 ($generated@@39 $generated@@43 $generated@@44) ($generated@@35 $generated@@41 $generated@@42)))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@46 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@46 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@46 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@15 $generated@@47) 4)) (= ($generated@@15 $generated@@48) 5)) (= ($generated@@15 $generated@@49) 6)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@15 ($generated@@50 $generated@@66 $generated@@67)) 7))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@50 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@50 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@50 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@50 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@45 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@20 ($generated@@51 $generated@@16 ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@49 ($generated@@50 $generated@@47 $generated@@48) $generated@@72 $generated@@74) $generated@@3))) ($generated@@20 ($generated@@51 $generated@@16 ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@49 ($generated@@50 $generated@@47 $generated@@48) $generated@@73 $generated@@74) $generated@@3))))
 :pattern ( ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@49 ($generated@@50 $generated@@47 $generated@@48) $generated@@73 $generated@@74) $generated@@3))
)))
 :pattern ( ($generated@@45 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) $generated@@76 ($generated@@75 $generated@@77)) (forall (($generated@@78 T@U) ) (!  (=> ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 $generated@@76 $generated@@78)) ($generated@@40 $generated@@78 $generated@@77))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 $generated@@76 $generated@@78))
)))
 :pattern ( ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) $generated@@76 ($generated@@75 $generated@@77)))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> ($generated@@80 $generated@@86) (= ($generated@@79 $generated@@34 ($generated@@39 $generated@@84 $generated@@85) ($generated@@35 $generated@@82 $generated@@83) $generated@@86)  (and ($generated@@81 $generated@@84 $generated@@82 $generated@@86) ($generated@@81 $generated@@85 $generated@@83 $generated@@86))))
 :pattern ( ($generated@@79 $generated@@34 ($generated@@39 $generated@@84 $generated@@85) ($generated@@35 $generated@@82 $generated@@83) $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (! (= ($generated@@32 $generated@@88) (= ($generated@@87 $generated@@88) $generated@@4))
 :pattern ( ($generated@@32 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@89 $generated@@91 ($generated@@51 $generated@@91 $generated@@90)) $generated@@90)
 :pattern ( ($generated@@51 $generated@@91 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ) (!  (=> ($generated@@32 $generated@@92) (exists (($generated@@93 T@U) ($generated@@94 T@U) ) (= $generated@@92 ($generated@@39 $generated@@93 $generated@@94))))
 :pattern ( ($generated@@32 $generated@@92))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@81 ($generated@@89 $generated@@98 $generated@@95) $generated@@96 $generated@@97) ($generated@@79 $generated@@98 $generated@@95 $generated@@96 $generated@@97))
 :pattern ( ($generated@@81 ($generated@@89 $generated@@98 $generated@@95) $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> ($generated@@45 $generated@@99 $generated@@100) (=> ($generated@@81 $generated@@101 $generated@@102 $generated@@99) ($generated@@81 $generated@@101 $generated@@102 $generated@@100)))
 :pattern ( ($generated@@45 $generated@@99 $generated@@100) ($generated@@81 $generated@@101 $generated@@102 $generated@@99))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@T) ) (!  (=> ($generated@@45 $generated@@103 $generated@@104) (=> ($generated@@79 $generated@@107 $generated@@105 $generated@@106 $generated@@103) ($generated@@79 $generated@@107 $generated@@105 $generated@@106 $generated@@104)))
 :pattern ( ($generated@@45 $generated@@103 $generated@@104) ($generated@@79 $generated@@107 $generated@@105 $generated@@106 $generated@@103))
)))
(assert (forall (($generated@@110 T@U) ) (!  (not ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@109) $generated@@110)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@109) $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ) (!  (=> ($generated@@40 $generated@@112 $generated@@111) (and (= ($generated@@89 $generated@@34 ($generated@@51 $generated@@34 $generated@@112)) $generated@@112) ($generated@@33 $generated@@34 ($generated@@51 $generated@@34 $generated@@112) $generated@@111)))
 :pattern ( ($generated@@40 $generated@@112 $generated@@111))
)))
(assert (forall (($generated@@114 T@U) ) (!  (=> ($generated@@40 $generated@@114 $generated@@113) (and (= ($generated@@89 $generated@@34 ($generated@@51 $generated@@34 $generated@@114)) $generated@@114) ($generated@@33 $generated@@34 ($generated@@51 $generated@@34 $generated@@114) $generated@@113)))
 :pattern ( ($generated@@40 $generated@@114 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ) (!  (=> ($generated@@40 $generated@@116 $generated@@115) (and (= ($generated@@89 $generated@@34 ($generated@@51 $generated@@34 $generated@@116)) $generated@@116) ($generated@@33 $generated@@34 ($generated@@51 $generated@@34 $generated@@116) $generated@@115)))
 :pattern ( ($generated@@40 $generated@@116 $generated@@115))
)))
(assert (forall (($generated@@118 T@U) ) (!  (=> ($generated@@40 $generated@@118 $generated@@117) (and (= ($generated@@89 $generated@@34 ($generated@@51 $generated@@34 $generated@@118)) $generated@@118) ($generated@@33 $generated@@34 ($generated@@51 $generated@@34 $generated@@118) $generated@@117)))
 :pattern ( ($generated@@40 $generated@@118 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (!  (or (= $generated@@119 $generated@@109) (exists (($generated@@120 T@U) ) ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@119) $generated@@120))))
 :pattern ( ($generated@@108 $generated@@119))
)))
(assert (forall (($generated@@122 T@U) ) (!  (or (= $generated@@122 $generated@@109) (exists (($generated@@123 T@U) ) ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@121 $generated@@122) $generated@@123))))
 :pattern ( ($generated@@121 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@79 ($generated@@50 $generated@@48 $generated@@16) $generated@@124 ($generated@@75 $generated@@125) $generated@@126) (forall (($generated@@127 T@U) ) (!  (=> ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 $generated@@124 $generated@@127)) ($generated@@81 $generated@@127 $generated@@125 $generated@@126))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 $generated@@124 $generated@@127))
)))
 :pattern ( ($generated@@79 ($generated@@50 $generated@@48 $generated@@16) $generated@@124 ($generated@@75 $generated@@125) $generated@@126))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@128 $generated@@132) $generated@@133))  (and ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@132) ($generated@@129 ($generated@@51 $generated@@34 $generated@@133)))) (= ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@132) ($generated@@129 ($generated@@51 $generated@@34 $generated@@133))) ($generated@@131 ($generated@@51 $generated@@34 $generated@@133)))))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@128 $generated@@132) $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@121 $generated@@134) $generated@@135)) (exists (($generated@@136 T@U) ) (!  (and ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@134) $generated@@136)) (= $generated@@135 ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@134) $generated@@136)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@134) $generated@@136))
 :pattern ( ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@134) $generated@@136))
)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@121 $generated@@134) $generated@@135))
)))
(assert (= ($generated@@15 $generated@@137) 8))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@79 $generated@@137 $generated@@139 ($generated@@138 $generated@@140 $generated@@141) $generated@@142) (forall (($generated@@143 T@U) ) (!  (=> ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@139) $generated@@143)) (and ($generated@@81 ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@139) $generated@@143) $generated@@141 $generated@@142) ($generated@@81 $generated@@143 $generated@@140 $generated@@142)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@139) $generated@@143))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@139) $generated@@143))
)))
 :pattern ( ($generated@@79 $generated@@137 $generated@@139 ($generated@@138 $generated@@140 $generated@@141) $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (or (not (= $generated@@144 $generated@@146)) (not true)) (=> (and ($generated@@45 $generated@@144 $generated@@145) ($generated@@45 $generated@@145 $generated@@146)) ($generated@@45 $generated@@144 $generated@@146)))
 :pattern ( ($generated@@45 $generated@@144 $generated@@145) ($generated@@45 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ) (! (= (= $generated@@148 $generated@@109) (= ($generated@@108 $generated@@148) $generated@@147))
 :pattern ( ($generated@@108 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (! (= (= $generated@@149 $generated@@109) (= ($generated@@121 $generated@@149) $generated@@147))
 :pattern ( ($generated@@121 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ) (! (= (= $generated@@150 $generated@@109) (= ($generated@@128 $generated@@150) $generated@@147))
 :pattern ( ($generated@@128 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (!  (or (= $generated@@151 $generated@@109) (exists (($generated@@152 T@U) ($generated@@153 T@U) ) ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@128 $generated@@151) ($generated@@89 $generated@@34 ($generated@@39 $generated@@152 $generated@@153))))))
 :pattern ( ($generated@@128 $generated@@151))
)))
(assert (forall (($generated@@154 T@U) ) (!  (=> ($generated@@40 $generated@@154 $generated) (and (= ($generated@@89 $generated@@17 ($generated@@51 $generated@@17 $generated@@154)) $generated@@154) ($generated@@33 $generated@@17 ($generated@@51 $generated@@17 $generated@@154) $generated)))
 :pattern ( ($generated@@40 $generated@@154 $generated))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@40 ($generated@@89 $generated@@157 $generated@@155) $generated@@156) ($generated@@33 $generated@@157 $generated@@155 $generated@@156))
 :pattern ( ($generated@@40 ($generated@@89 $generated@@157 $generated@@155) $generated@@156))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@158 ($generated@@138 $generated@@159 $generated@@160)) $generated@@159)
 :pattern ( ($generated@@138 $generated@@159 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@161 ($generated@@138 $generated@@162 $generated@@163)) $generated@@163)
 :pattern ( ($generated@@138 $generated@@162 $generated@@163))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@31 ($generated@@138 $generated@@164 $generated@@165)) $generated@@2)
 :pattern ( ($generated@@138 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@87 ($generated@@39 $generated@@166 $generated@@167)) $generated@@4)
 :pattern ( ($generated@@39 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@168 ($generated@@35 $generated@@169 $generated@@170)) $generated@@169)
 :pattern ( ($generated@@35 $generated@@169 $generated@@170))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@171 ($generated@@35 $generated@@172 $generated@@173)) $generated@@173)
 :pattern ( ($generated@@35 $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@129 ($generated@@39 $generated@@174 $generated@@175)) $generated@@174)
 :pattern ( ($generated@@39 $generated@@174 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@131 ($generated@@39 $generated@@176 $generated@@177)) $generated@@177)
 :pattern ( ($generated@@39 $generated@@176 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ) (! (= ($generated@@178 ($generated@@75 $generated@@179)) $generated@@179)
 :pattern ( ($generated@@75 $generated@@179))
)))
(assert (forall (($generated@@180 T@U) ) (! (= ($generated@@31 ($generated@@75 $generated@@180)) $generated@@1)
 :pattern ( ($generated@@75 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@T) ) (! (= ($generated@@51 $generated@@182 ($generated@@89 $generated@@182 $generated@@181)) $generated@@181)
 :pattern ( ($generated@@89 $generated@@182 $generated@@181))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@33 $generated@@137 $generated@@183 ($generated@@138 $generated@@184 $generated@@185)) (forall (($generated@@186 T@U) ) (!  (=> ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@183) $generated@@186)) (and ($generated@@40 ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@183) $generated@@186) $generated@@185) ($generated@@40 $generated@@186 $generated@@184)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@48 ($generated@@130 $generated@@183) $generated@@186))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 ($generated@@108 $generated@@183) $generated@@186))
)))
 :pattern ( ($generated@@33 $generated@@137 $generated@@183 ($generated@@138 $generated@@184 $generated@@185)))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (! (< ($generated@@187 $generated@@189) ($generated@@188 ($generated@@39 $generated@@189 $generated@@190)))
 :pattern ( ($generated@@39 $generated@@189 $generated@@190))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (! (< ($generated@@187 $generated@@192) ($generated@@188 ($generated@@39 $generated@@191 $generated@@192)))
 :pattern ( ($generated@@39 $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> ($generated@@40 $generated@@193 ($generated@@138 $generated@@194 $generated@@195)) (and (= ($generated@@89 $generated@@137 ($generated@@51 $generated@@137 $generated@@193)) $generated@@193) ($generated@@33 $generated@@137 ($generated@@51 $generated@@137 $generated@@193) ($generated@@138 $generated@@194 $generated@@195))))
 :pattern ( ($generated@@40 $generated@@193 ($generated@@138 $generated@@194 $generated@@195)))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> ($generated@@40 $generated@@198 ($generated@@35 $generated@@196 $generated@@197)) (and (= ($generated@@89 $generated@@34 ($generated@@51 $generated@@34 $generated@@198)) $generated@@198) ($generated@@33 $generated@@34 ($generated@@51 $generated@@34 $generated@@198) ($generated@@35 $generated@@196 $generated@@197))))
 :pattern ( ($generated@@40 $generated@@198 ($generated@@35 $generated@@196 $generated@@197)))
)))
(assert (forall (($generated@@199 T@U) ) (!  (not ($generated@@20 ($generated@@46 $generated@@48 $generated@@16 $generated@@147 $generated@@199)))
 :pattern ( ($generated@@46 $generated@@48 $generated@@16 $generated@@147 $generated@@199))
)))
(assert  (and (forall (($generated@@203 T@T) ($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@200 $generated@@203 $generated@@204 $generated@@205 ($generated@@202 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@208 $generated@@209 $generated@@206) $generated@@208 $generated@@209) $generated@@206)
 :weight 0
)) (and (forall (($generated@@210 T@T) ($generated@@211 T@T) ($generated@@212 T@T) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (or (= $generated@@215 $generated@@217) (= ($generated@@200 $generated@@210 $generated@@211 $generated@@212 ($generated@@202 $generated@@210 $generated@@211 $generated@@212 $generated@@214 $generated@@215 $generated@@216 $generated@@213) $generated@@217 $generated@@218) ($generated@@200 $generated@@210 $generated@@211 $generated@@212 $generated@@214 $generated@@217 $generated@@218)))
 :weight 0
)) (forall (($generated@@219 T@T) ($generated@@220 T@T) ($generated@@221 T@T) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ) (!  (or (= $generated@@225 $generated@@227) (= ($generated@@200 $generated@@219 $generated@@220 $generated@@221 ($generated@@202 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@224 $generated@@225 $generated@@222) $generated@@226 $generated@@227) ($generated@@200 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@226 $generated@@227)))
 :weight 0
)))))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 Bool) ($generated@@232 T@U) ($generated@@233 T@U) ) (! (= ($generated@@20 ($generated@@200 $generated@@49 $generated@@47 $generated@@16 ($generated@@201 $generated@@228 $generated@@229 $generated@@230 $generated@@231) $generated@@232 $generated@@233))  (=> (and (or (not (= $generated@@232 $generated@@228)) (not true)) ($generated@@20 ($generated@@51 $generated@@16 ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@49 ($generated@@50 $generated@@47 $generated@@48) $generated@@229 $generated@@232) $generated@@230)))) $generated@@231))
 :pattern ( ($generated@@200 $generated@@49 $generated@@47 $generated@@16 ($generated@@201 $generated@@228 $generated@@229 $generated@@230 $generated@@231) $generated@@232 $generated@@233))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (!  (and (= ($generated@@31 ($generated@@35 $generated@@235 $generated@@236)) $generated@@5) (= ($generated@@234 ($generated@@35 $generated@@235 $generated@@236)) $generated@@10))
 :pattern ( ($generated@@35 $generated@@235 $generated@@236))
)))
(assert (forall (($generated@@237 T@U) ) (! (= ($generated@@187 ($generated@@89 $generated@@34 $generated@@237)) ($generated@@188 $generated@@237))
 :pattern ( ($generated@@187 ($generated@@89 $generated@@34 $generated@@237)))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> ($generated@@40 $generated@@238 ($generated@@75 $generated@@239)) (and (= ($generated@@89 ($generated@@50 $generated@@48 $generated@@16) ($generated@@51 ($generated@@50 $generated@@48 $generated@@16) $generated@@238)) $generated@@238) ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) ($generated@@51 ($generated@@50 $generated@@48 $generated@@16) $generated@@238) ($generated@@75 $generated@@239))))
 :pattern ( ($generated@@40 $generated@@238 ($generated@@75 $generated@@239)))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (!  (=> (and ($generated@@80 $generated@@241) ($generated@@33 $generated@@34 $generated@@240 $generated@@111)) ($generated@@79 $generated@@34 $generated@@240 $generated@@111 $generated@@241))
 :pattern ( ($generated@@79 $generated@@34 $generated@@240 $generated@@111 $generated@@241))
)))
(assert (forall (($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> (and ($generated@@80 $generated@@243) ($generated@@33 $generated@@34 $generated@@242 $generated@@113)) ($generated@@79 $generated@@34 $generated@@242 $generated@@113 $generated@@243))
 :pattern ( ($generated@@79 $generated@@34 $generated@@242 $generated@@113 $generated@@243))
)))
(assert (forall (($generated@@244 T@U) ($generated@@245 T@U) ) (!  (=> (and ($generated@@80 $generated@@245) ($generated@@33 $generated@@34 $generated@@244 $generated@@115)) ($generated@@79 $generated@@34 $generated@@244 $generated@@115 $generated@@245))
 :pattern ( ($generated@@79 $generated@@34 $generated@@244 $generated@@115 $generated@@245))
)))
(assert (forall (($generated@@246 T@U) ($generated@@247 T@U) ) (!  (=> (and ($generated@@80 $generated@@247) ($generated@@33 $generated@@34 $generated@@246 $generated@@117)) ($generated@@79 $generated@@34 $generated@@246 $generated@@117 $generated@@247))
 :pattern ( ($generated@@79 $generated@@34 $generated@@246 $generated@@117 $generated@@247))
)))
(assert (= ($generated@@31 $generated@@111) $generated@@6))
(assert (= ($generated@@234 $generated@@111) $generated@@11))
(assert (= ($generated@@31 $generated@@113) $generated@@7))
(assert (= ($generated@@234 $generated@@113) $generated@@12))
(assert (= ($generated@@31 $generated@@115) $generated@@8))
(assert (= ($generated@@234 $generated@@115) $generated@@13))
(assert (= ($generated@@31 $generated@@117) $generated@@9))
(assert (= ($generated@@234 $generated@@117) $generated@@14))
(assert (forall (($generated@@248 T@U) ($generated@@249 T@U) ($generated@@250 T@U) ) (!  (=> (and ($generated@@80 $generated@@250) (and ($generated@@32 $generated@@248) (exists (($generated@@251 T@U) ) (! ($generated@@79 $generated@@34 $generated@@248 ($generated@@35 $generated@@249 $generated@@251) $generated@@250)
 :pattern ( ($generated@@79 $generated@@34 $generated@@248 ($generated@@35 $generated@@249 $generated@@251) $generated@@250))
)))) ($generated@@81 ($generated@@129 $generated@@248) $generated@@249 $generated@@250))
 :pattern ( ($generated@@81 ($generated@@129 $generated@@248) $generated@@249 $generated@@250))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ) (!  (=> (and ($generated@@80 $generated@@254) (and ($generated@@32 $generated@@252) (exists (($generated@@255 T@U) ) (! ($generated@@79 $generated@@34 $generated@@252 ($generated@@35 $generated@@255 $generated@@253) $generated@@254)
 :pattern ( ($generated@@79 $generated@@34 $generated@@252 ($generated@@35 $generated@@255 $generated@@253) $generated@@254))
)))) ($generated@@81 ($generated@@131 $generated@@252) $generated@@253 $generated@@254))
 :pattern ( ($generated@@81 ($generated@@131 $generated@@252) $generated@@253 $generated@@254))
)))
(assert (forall (($generated@@256 T@U) ($generated@@257 T@U) ) (! ($generated@@79 $generated@@17 $generated@@257 $generated $generated@@256)
 :pattern ( ($generated@@79 $generated@@17 $generated@@257 $generated $generated@@256))
)))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@U) ($generated@@260 T@U) ) (!  (=> ($generated@@33 $generated@@137 $generated@@258 ($generated@@138 $generated@@259 $generated@@260)) (and (and ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) ($generated@@108 $generated@@258) ($generated@@75 $generated@@259)) ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) ($generated@@121 $generated@@258) ($generated@@75 $generated@@260))) ($generated@@33 ($generated@@50 $generated@@48 $generated@@16) ($generated@@128 $generated@@258) ($generated@@75 ($generated@@35 $generated@@259 $generated@@260)))))
 :pattern ( ($generated@@33 $generated@@137 $generated@@258 ($generated@@138 $generated@@259 $generated@@260)))
)))
(assert (forall (($generated@@261 T@U) ) (! ($generated@@33 $generated@@17 $generated@@261 $generated)
 :pattern ( ($generated@@33 $generated@@17 $generated@@261 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid