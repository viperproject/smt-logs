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
(declare-fun $generated@@26 (T@U Int) T@U)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@34 () Int)
(declare-fun $generated@@35 (T@U T@U T@U) Bool)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@47 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@T T@T) T@T)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@75 (Int) Int)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@T T@U T@U) Bool)
(declare-fun $generated@@81 (T@U T@U) Bool)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@86 (T@U) Bool)
(declare-fun $generated@@88 (T@T T@U) T@U)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@117 () T@T)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@132 () T@T)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@155 (T@U) Int)
(declare-fun $generated@@157 (T@U) Int)
(declare-fun $generated@@162 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@163 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@164 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@25 $generated) $generated@@1))
(assert (= ($generated@@25 $generated@@0) $generated@@2))
(assert (= ($generated@@9 $generated@@31) 3))
(assert (forall (($generated@@32 T@U) ($generated@@33 Int) ) (!  (=> (and (<= 0 $generated@@33) (< $generated@@33 ($generated@@28 $generated@@32))) (< ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@32 $generated@@33))) ($generated@@29 ($generated@@27 $generated@@32))))
 :pattern ( ($generated@@26 $generated@@32 $generated@@33) ($generated@@27 $generated@@32))
)))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (!  (=> (and (or ($generated@@37 $generated@@43 $generated@@44) (and (< 0 $generated@@34) (and ($generated@@38 $generated@@31 $generated@@44 ($generated@@39 $generated@@43) $generated@@42) ($generated@@40 $generated@@44)))) ($generated@@41 $generated@@42)) ($generated@@35 ($generated@@36 $generated@@43 $generated@@44) $generated@@43 $generated@@42))
 :pattern ( ($generated@@35 ($generated@@36 $generated@@43 $generated@@44) $generated@@43 $generated@@42))
))))
(assert (= ($generated@@28 $generated@@45) 0))
(assert  (and (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@47 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@47 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@47 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@9 $generated@@48) 4)) (= ($generated@@9 $generated@@49) 5)) (= ($generated@@9 $generated@@50) 6)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@9 ($generated@@51 $generated@@66 $generated@@67)) 7))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@51 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@51 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@51 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@46 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@14 ($generated@@30 $generated@@10 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@72 $generated@@74) $generated@@4))) ($generated@@14 ($generated@@30 $generated@@10 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@73 $generated@@74) $generated@@4))))
 :pattern ( ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@73 $generated@@74) $generated@@4))
)))
 :pattern ( ($generated@@46 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@76 Int) ) (! (= ($generated@@75 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 $generated@@78) $generated@@78)
 :pattern ( ($generated@@77 $generated@@79 $generated@@78))
)))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> (or ($generated@@37 $generated@@82 $generated@@83) (and (< 0 $generated@@34) (and ($generated@@80 $generated@@31 $generated@@83 ($generated@@39 $generated@@82)) ($generated@@40 $generated@@83)))) ($generated@@81 ($generated@@36 $generated@@82 $generated@@83) $generated@@82))
 :pattern ( ($generated@@36 $generated@@82 $generated@@83))
))))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@40 $generated@@85) (= ($generated@@84 $generated@@85) $generated@@6))
 :pattern ( ($generated@@40 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (! (= ($generated@@86 $generated@@87) (= ($generated@@84 $generated@@87) $generated@@7))
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@88 $generated@@90 ($generated@@30 $generated@@90 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@30 $generated@@90 $generated@@89))
)))
(assert (forall (($generated@@92 T@U) ) (!  (=> ($generated@@40 $generated@@92) (exists (($generated@@93 T@U) ) (= $generated@@92 ($generated@@91 $generated@@93))))
 :pattern ( ($generated@@40 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ) (!  (=> ($generated@@86 $generated@@94) (exists (($generated@@95 T@U) ) (= $generated@@94 ($generated@@27 $generated@@95))))
 :pattern ( ($generated@@86 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@35 ($generated@@88 $generated@@99 $generated@@96) $generated@@97 $generated@@98) ($generated@@38 $generated@@99 $generated@@96 $generated@@97 $generated@@98))
 :pattern ( ($generated@@35 ($generated@@88 $generated@@99 $generated@@96) $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> ($generated@@46 $generated@@100 $generated@@101) (=> ($generated@@35 $generated@@102 $generated@@103 $generated@@100) ($generated@@35 $generated@@102 $generated@@103 $generated@@101)))
 :pattern ( ($generated@@46 $generated@@100 $generated@@101) ($generated@@35 $generated@@102 $generated@@103 $generated@@100))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@T) ) (!  (=> ($generated@@46 $generated@@104 $generated@@105) (=> ($generated@@38 $generated@@108 $generated@@106 $generated@@107 $generated@@104) ($generated@@38 $generated@@108 $generated@@106 $generated@@107 $generated@@105)))
 :pattern ( ($generated@@46 $generated@@104 $generated@@105) ($generated@@38 $generated@@108 $generated@@106 $generated@@107 $generated@@104))
)))
(assert (forall (($generated@@110 T@U) ) (!  (and (= ($generated@@25 ($generated@@39 $generated@@110)) $generated@@5) (= ($generated@@109 ($generated@@39 $generated@@110)) $generated@@8))
 :pattern ( ($generated@@39 $generated@@110))
)))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> (or ($generated@@37 $generated@@112 ($generated@@77 $generated@@31 $generated@@113)) (and (< 0 $generated@@34) (and ($generated@@80 $generated@@31 $generated@@113 ($generated@@39 $generated@@112)) ($generated@@14 ($generated@@77 $generated@@10 ($generated@@13 ($generated@@40 ($generated@@77 $generated@@31 $generated@@113)))))))) (= ($generated@@36 $generated@@112 ($generated@@77 $generated@@31 $generated@@113)) ($generated@@77 $generated@@49 ($generated@@111 ($generated@@77 $generated@@31 $generated@@113)))))
 :weight 3
 :pattern ( ($generated@@36 $generated@@112 ($generated@@77 $generated@@31 $generated@@113)))
))))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> ($generated@@41 $generated@@116) (= ($generated@@38 $generated@@31 ($generated@@91 $generated@@115) ($generated@@39 $generated@@114) $generated@@116) ($generated@@35 $generated@@115 $generated@@114 $generated@@116)))
 :pattern ( ($generated@@38 $generated@@31 ($generated@@91 $generated@@115) ($generated@@39 $generated@@114) $generated@@116))
)))
(assert (= ($generated@@9 $generated@@117) 8))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> (and ($generated@@41 $generated@@121) (and ($generated@@86 $generated@@120) (exists (($generated@@122 T@U) ) (! ($generated@@38 $generated@@31 $generated@@120 ($generated@@39 $generated@@122) $generated@@121)
 :pattern ( ($generated@@38 $generated@@31 $generated@@120 ($generated@@39 $generated@@122) $generated@@121))
)))) ($generated@@38 $generated@@117 ($generated@@118 $generated@@120) ($generated@@119 $generated) $generated@@121))
 :pattern ( ($generated@@38 $generated@@117 ($generated@@118 $generated@@120) ($generated@@119 $generated) $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (=> ($generated@@41 $generated@@125) (= ($generated@@38 $generated@@31 ($generated@@27 $generated@@124) ($generated@@39 $generated@@123) $generated@@125) ($generated@@38 $generated@@117 $generated@@124 ($generated@@119 $generated) $generated@@125)))
 :pattern ( ($generated@@38 $generated@@31 ($generated@@27 $generated@@124) ($generated@@39 $generated@@123) $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> ($generated@@80 $generated@@31 $generated@@127 ($generated@@39 $generated@@126)) (or ($generated@@40 $generated@@127) ($generated@@86 $generated@@127)))
 :pattern ( ($generated@@86 $generated@@127) ($generated@@80 $generated@@31 $generated@@127 ($generated@@39 $generated@@126)))
 :pattern ( ($generated@@40 $generated@@127) ($generated@@80 $generated@@31 $generated@@127 ($generated@@39 $generated@@126)))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (or (not (= $generated@@128 $generated@@130)) (not true)) (=> (and ($generated@@46 $generated@@128 $generated@@129) ($generated@@46 $generated@@129 $generated@@130)) ($generated@@46 $generated@@128 $generated@@130)))
 :pattern ( ($generated@@46 $generated@@128 $generated@@129) ($generated@@46 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ) (!  (=> ($generated@@81 $generated@@131 $generated@@0) (and (= ($generated@@88 $generated@@11 ($generated@@30 $generated@@11 $generated@@131)) $generated@@131) ($generated@@80 $generated@@11 ($generated@@30 $generated@@11 $generated@@131) $generated@@0)))
 :pattern ( ($generated@@81 $generated@@131 $generated@@0))
)))
(assert (= ($generated@@9 $generated@@132) 9))
(assert (forall (($generated@@133 T@U) ) (!  (=> ($generated@@81 $generated@@133 $generated) (and (= ($generated@@88 $generated@@132 ($generated@@30 $generated@@132 $generated@@133)) $generated@@133) ($generated@@80 $generated@@132 ($generated@@30 $generated@@132 $generated@@133) $generated)))
 :pattern ( ($generated@@81 $generated@@133 $generated))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@T) ) (! (= ($generated@@81 ($generated@@88 $generated@@136 $generated@@134) $generated@@135) ($generated@@80 $generated@@136 $generated@@134 $generated@@135))
 :pattern ( ($generated@@81 ($generated@@88 $generated@@136 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (! (<= 0 ($generated@@28 $generated@@137))
 :pattern ( ($generated@@28 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@38 $generated@@117 $generated@@138 ($generated@@119 $generated@@139) $generated@@140) (forall (($generated@@141 Int) ) (!  (=> (and (<= 0 $generated@@141) (< $generated@@141 ($generated@@28 $generated@@138))) ($generated@@35 ($generated@@26 $generated@@138 $generated@@141) $generated@@139 $generated@@140))
 :pattern ( ($generated@@26 $generated@@138 $generated@@141))
)))
 :pattern ( ($generated@@38 $generated@@117 $generated@@138 ($generated@@119 $generated@@139) $generated@@140))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@142 ($generated@@119 $generated@@143)) $generated@@143)
 :pattern ( ($generated@@119 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ) (! (= ($generated@@25 ($generated@@119 $generated@@144)) $generated@@3)
 :pattern ( ($generated@@119 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ) (! (= ($generated@@145 ($generated@@39 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@39 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@84 ($generated@@91 $generated@@147)) $generated@@6)
 :pattern ( ($generated@@91 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@111 ($generated@@91 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@91 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@84 ($generated@@27 $generated@@149)) $generated@@7)
 :pattern ( ($generated@@27 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ) (! (= ($generated@@118 ($generated@@27 $generated@@150)) $generated@@150)
 :pattern ( ($generated@@27 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@T) ) (! (= ($generated@@30 $generated@@152 ($generated@@88 $generated@@152 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@88 $generated@@152 $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@80 $generated@@31 ($generated@@91 $generated@@154) ($generated@@39 $generated@@153)) ($generated@@81 $generated@@154 $generated@@153))
 :pattern ( ($generated@@80 $generated@@31 ($generated@@91 $generated@@154) ($generated@@39 $generated@@153)))
)))
(assert (forall (($generated@@156 T@U) ) (! (< ($generated@@155 $generated@@156) ($generated@@29 ($generated@@91 $generated@@156)))
 :pattern ( ($generated@@91 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (! (< ($generated@@157 $generated@@158) ($generated@@29 ($generated@@27 $generated@@158)))
 :pattern ( ($generated@@27 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> (and ($generated@@41 $generated@@161) (and ($generated@@40 $generated@@159) ($generated@@38 $generated@@31 $generated@@159 ($generated@@39 $generated@@160) $generated@@161))) ($generated@@35 ($generated@@111 $generated@@159) $generated@@160 $generated@@161))
 :pattern ( ($generated@@35 ($generated@@111 $generated@@159) $generated@@160 $generated@@161))
)))
(assert  (and (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@162 $generated@@165 $generated@@166 $generated@@167 ($generated@@164 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@171 $generated@@168) $generated@@170 $generated@@171) $generated@@168)
 :weight 0
)) (and (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (or (= $generated@@177 $generated@@179) (= ($generated@@162 $generated@@172 $generated@@173 $generated@@174 ($generated@@164 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@178 $generated@@175) $generated@@179 $generated@@180) ($generated@@162 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@179 $generated@@180)))
 :weight 0
)) (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (or (= $generated@@187 $generated@@189) (= ($generated@@162 $generated@@181 $generated@@182 $generated@@183 ($generated@@164 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@188 $generated@@189) ($generated@@162 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@188 $generated@@189)))
 :weight 0
)))))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 Bool) ($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@14 ($generated@@162 $generated@@50 $generated@@48 $generated@@10 ($generated@@163 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))  (=> (and (or (not (= $generated@@194 $generated@@190)) (not true)) ($generated@@14 ($generated@@30 $generated@@10 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@191 $generated@@194) $generated@@192)))) $generated@@193))
 :pattern ( ($generated@@162 $generated@@50 $generated@@48 $generated@@10 ($generated@@163 $generated@@190 $generated@@191 $generated@@192 $generated@@193) $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ) (! (= ($generated@@155 ($generated@@88 $generated@@31 $generated@@196)) ($generated@@29 $generated@@196))
 :pattern ( ($generated@@155 ($generated@@88 $generated@@31 $generated@@196)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> ($generated@@81 $generated@@197 ($generated@@119 $generated@@198)) (and (= ($generated@@88 $generated@@117 ($generated@@30 $generated@@117 $generated@@197)) $generated@@197) ($generated@@80 $generated@@117 ($generated@@30 $generated@@117 $generated@@197) ($generated@@119 $generated@@198))))
 :pattern ( ($generated@@81 $generated@@197 ($generated@@119 $generated@@198)))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> ($generated@@81 $generated@@200 ($generated@@39 $generated@@199)) (and (= ($generated@@88 $generated@@31 ($generated@@30 $generated@@31 $generated@@200)) $generated@@200) ($generated@@80 $generated@@31 ($generated@@30 $generated@@31 $generated@@200) ($generated@@39 $generated@@199))))
 :pattern ( ($generated@@81 $generated@@200 ($generated@@39 $generated@@199)))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (! (= ($generated@@80 $generated@@31 ($generated@@27 $generated@@202) ($generated@@39 $generated@@201)) ($generated@@80 $generated@@117 $generated@@202 ($generated@@119 $generated)))
 :pattern ( ($generated@@80 $generated@@31 ($generated@@27 $generated@@202) ($generated@@39 $generated@@201)))
)))
(assert (forall (($generated@@203 Int) ) (! (= ($generated@@88 $generated@@11 ($generated@@15 ($generated@@75 $generated@@203))) ($generated@@77 $generated@@49 ($generated@@88 $generated@@11 ($generated@@15 $generated@@203))))
 :pattern ( ($generated@@88 $generated@@11 ($generated@@15 ($generated@@75 $generated@@203))))
)))
(assert (forall (($generated@@204 T@U) ) (! (= ($generated@@91 ($generated@@77 $generated@@49 $generated@@204)) ($generated@@77 $generated@@31 ($generated@@91 $generated@@204)))
 :pattern ( ($generated@@91 ($generated@@77 $generated@@49 $generated@@204)))
)))
(assert (forall (($generated@@205 T@U) ) (! (= ($generated@@27 ($generated@@77 $generated@@117 $generated@@205)) ($generated@@77 $generated@@31 ($generated@@27 $generated@@205)))
 :pattern ( ($generated@@27 ($generated@@77 $generated@@117 $generated@@205)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@T) ) (! (= ($generated@@88 $generated@@207 ($generated@@77 $generated@@207 $generated@@206)) ($generated@@77 $generated@@49 ($generated@@88 $generated@@207 $generated@@206)))
 :pattern ( ($generated@@88 $generated@@207 ($generated@@77 $generated@@207 $generated@@206)))
)))
(assert (forall (($generated@@208 T@U) ) (!  (=> (= ($generated@@28 $generated@@208) 0) (= $generated@@208 $generated@@45))
 :pattern ( ($generated@@28 $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (! ($generated@@38 $generated@@11 $generated@@210 $generated@@0 $generated@@209)
 :pattern ( ($generated@@38 $generated@@11 $generated@@210 $generated@@0 $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! ($generated@@38 $generated@@132 $generated@@212 $generated $generated@@211)
 :pattern ( ($generated@@38 $generated@@132 $generated@@212 $generated $generated@@211))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (! (= ($generated@@80 $generated@@117 $generated@@213 ($generated@@119 $generated@@214)) (forall (($generated@@215 Int) ) (!  (=> (and (<= 0 $generated@@215) (< $generated@@215 ($generated@@28 $generated@@213))) ($generated@@81 ($generated@@26 $generated@@213 $generated@@215) $generated@@214))
 :pattern ( ($generated@@26 $generated@@213 $generated@@215))
)))
 :pattern ( ($generated@@80 $generated@@117 $generated@@213 ($generated@@119 $generated@@214)))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 Int) ) (!  (=> (and (<= 0 $generated@@217) (< $generated@@217 ($generated@@28 $generated@@216))) (< ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@216 $generated@@217))) ($generated@@157 $generated@@216)))
 :pattern ( ($generated@@29 ($generated@@30 $generated@@31 ($generated@@26 $generated@@216 $generated@@217))))
)))
(assert (forall (($generated@@218 T@U) ) (! ($generated@@80 $generated@@11 $generated@@218 $generated@@0)
 :pattern ( ($generated@@80 $generated@@11 $generated@@218 $generated@@0))
)))
(assert (forall (($generated@@219 T@U) ) (! ($generated@@80 $generated@@132 $generated@@219 $generated)
 :pattern ( ($generated@@80 $generated@@132 $generated@@219 $generated))
)))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (or ($generated@@37 $generated@@220 $generated@@221) (and (< 0 $generated@@34) (and ($generated@@80 $generated@@31 $generated@@221 ($generated@@39 $generated@@220)) ($generated@@40 $generated@@221)))) (= ($generated@@36 $generated@@220 $generated@@221) ($generated@@111 $generated@@221)))
 :pattern ( ($generated@@36 $generated@@220 $generated@@221))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@222 () Int)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () Int)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 (T@U) Bool)
(declare-fun $generated@@230 () T@U)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@231 true))
(let (($generated@@232 true))
(let (($generated@@233  (=> (=> (<= ($generated@@75 0) $generated@@222) (and (and ($generated@@40 $generated@@223) (= ($generated@@16 ($generated@@30 $generated@@11 ($generated@@36 $generated@@0 $generated@@223))) $generated@@222)) (= $generated@@224 (+ $generated@@222 $generated@@222)))) (and (=> (= (ControlFlow 0 5) 1) $generated@@232) (=> (= (ControlFlow 0 5) 2) $generated@@231)))))
(let (($generated@@234  (=> (<= ($generated@@75 0) $generated@@222) (=> (and ($generated@@40 $generated@@223) ($generated@@35 ($generated@@88 $generated@@31 $generated@@223) ($generated@@39 $generated@@0) $generated@@225)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@40 $generated@@223)) (=> (and (and ($generated@@40 $generated@@223) ($generated@@37 $generated@@0 $generated@@223)) (and (= ($generated@@16 ($generated@@30 $generated@@11 ($generated@@36 $generated@@0 $generated@@223))) $generated@@222) (= $generated@@224 (+ $generated@@222 $generated@@222)))) (and (=> (= (ControlFlow 0 3) 1) $generated@@232) (=> (= (ControlFlow 0 3) 2) $generated@@231))))))))
(let (($generated@@235  (=> (= $generated@@226 ($generated@@163 $generated@@227 $generated@@228 $generated@@4 false)) (=> (and ($generated@@41 $generated@@225) ($generated@@229 $generated@@225)) (=> (and (and (forall (($generated@@236 T@U) ) (!  (=> (and (or (not (= $generated@@236 $generated@@227)) (not true)) ($generated@@14 ($generated@@30 $generated@@10 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@228 $generated@@236) $generated@@4)))) (= ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@225 $generated@@236) ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@228 $generated@@236)))
 :pattern ( ($generated@@47 $generated@@50 ($generated@@51 $generated@@48 $generated@@49) $generated@@225 $generated@@236))
)) ($generated@@46 $generated@@228 $generated@@225)) (and ($generated@@80 $generated@@31 $generated@@223 ($generated@@39 $generated@@0)) ($generated@@38 $generated@@31 $generated@@223 ($generated@@39 $generated@@0) $generated@@225))) (and (=> (= (ControlFlow 0 6) 3) $generated@@234) (=> (= (ControlFlow 0 6) 5) $generated@@233)))))))
(let (($generated@@237  (=> (and ($generated@@41 $generated@@228) ($generated@@229 $generated@@228)) (=> (and (and ($generated@@80 $generated@@31 $generated@@230 ($generated@@39 $generated@@0)) ($generated@@38 $generated@@31 $generated@@230 ($generated@@39 $generated@@0) $generated@@228)) (and (= 1 $generated@@34) (= (ControlFlow 0 7) 6))) $generated@@235))))
$generated@@237)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)