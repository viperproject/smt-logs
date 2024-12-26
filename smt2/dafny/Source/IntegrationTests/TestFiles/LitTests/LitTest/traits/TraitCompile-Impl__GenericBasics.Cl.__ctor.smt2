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
(declare-fun $generated@@11 (T@T) Int)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 (Bool) T@U)
(declare-fun $generated@@16 (T@U) Bool)
(declare-fun $generated@@17 (Int) T@U)
(declare-fun $generated@@18 (T@U) Int)
(declare-fun $generated@@19 (Real) T@U)
(declare-fun $generated@@20 (T@U) Real)
(declare-fun $generated@@27 (T@U T@U T@U) Bool)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 () Int)
(declare-fun $generated@@34 (T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T) T@T)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 (T@T T@U T@U) Bool)
(declare-fun $generated@@44 (T@U T@U) T@U)
(declare-fun $generated@@45 (T@U T@U T@U) Bool)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@70 (T@U T@U) Bool)
(declare-fun $generated@@74 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@86 () T@U)
(declare-fun $generated@@87 (T@U T@U) T@U)
(declare-fun $generated@@88 (T@U) Bool)
(declare-fun $generated@@89 (T@U T@U) Bool)
(declare-fun $generated@@93 (Int) Int)
(declare-fun $generated@@95 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@101 (T@U T@U) T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@147 (T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@169 (T@U) T@U)
(declare-fun $generated@@171 (T@U) T@U)
(declare-fun $generated@@185 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@186 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@187 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@11 $generated@@12) 0) (= ($generated@@11 $generated@@13) 1)) (= ($generated@@11 $generated@@14) 2)) (forall (($generated@@21 Bool) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Int) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Real) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10)
)
(assert (forall (($generated@@29 T@U) ) ($generated@@27 ($generated@@28 $generated@@29) $generated@@29 $generated)))
(assert (= ($generated@@30 $generated@@1) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@32 $generated@@1) $generated@@2))
(assert  (and (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@36 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@36 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@36 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@11 $generated@@37) 3)) (= ($generated@@11 $generated@@38) 4)) (= ($generated@@11 $generated@@39) 5)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@11 ($generated@@40 $generated@@60 $generated@@61)) 6))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@40 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@40 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@40 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@40 $generated@@64 $generated@@65))
))))
(assert  (=> (< 0 $generated@@33) (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (and (and ($generated@@41 $generated@@68) (and (or (not (= $generated@@69 $generated@@42)) (not true)) ($generated@@43 $generated@@39 $generated@@69 ($generated@@44 $generated@@66 $generated@@67)))) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@68 $generated@@69) $generated@@1)))) ($generated@@45 ($generated@@34 $generated@@66 $generated@@67 $generated@@69) $generated@@67 $generated@@68))
 :pattern ( ($generated@@34 $generated@@66 $generated@@67 $generated@@69) ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@68 $generated@@69) $generated@@1)))
))))
(assert  (=> (< 0 $generated@@33) (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> (and (or (not (= $generated@@73 $generated@@42)) (not true)) ($generated@@43 $generated@@39 $generated@@73 ($generated@@44 $generated@@71 $generated@@72))) ($generated@@70 ($generated@@34 $generated@@71 $generated@@72 $generated@@73) $generated@@72))
 :pattern ( ($generated@@34 $generated@@71 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@74 $generated@@39 $generated@@77 ($generated@@75 $generated@@76) $generated@@78) ($generated@@74 $generated@@39 $generated@@77 ($generated@@28 $generated@@76) $generated@@78))
 :pattern ( ($generated@@74 $generated@@39 $generated@@77 ($generated@@75 $generated@@76) $generated@@78))
 :pattern ( ($generated@@74 $generated@@39 $generated@@77 ($generated@@28 $generated@@76) $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (!  (=> ($generated@@43 $generated@@39 $generated@@80 ($generated@@28 $generated@@79)) ($generated@@43 $generated@@39 $generated@@80 ($generated@@44 $generated@@79 $generated)))
 :pattern ( ($generated@@43 $generated@@39 $generated@@80 ($generated@@28 $generated@@79)))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> ($generated@@70 $generated@@82 ($generated@@28 $generated@@81)) ($generated@@70 $generated@@82 ($generated@@44 $generated@@81 $generated)))
 :pattern ( ($generated@@70 $generated@@82 ($generated@@28 $generated@@81)))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@74 $generated@@39 $generated@@84 ($generated@@28 $generated@@83) $generated@@85)  (or (= $generated@@84 $generated@@42) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@85 $generated@@84) $generated@@1)))))
 :pattern ( ($generated@@74 $generated@@39 $generated@@84 ($generated@@28 $generated@@83) $generated@@85))
)))
(assert (= ($generated@@30 $generated@@86) 0))
(assert (= ($generated@@87 $generated@@6 $generated@@10) $generated@@86))
(assert  (not ($generated@@88 $generated@@86)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@89 $generated@@90 $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@90 $generated@@92) $generated@@1))) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@91 $generated@@92) $generated@@1))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@91 $generated@@92) $generated@@1))
)))
 :pattern ( ($generated@@89 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 Int) ) (! (= ($generated@@93 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@95 $generated@@97 $generated@@96) $generated@@96)
 :pattern ( ($generated@@95 $generated@@97 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 ($generated@@35 $generated@@100 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@35 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@104 ($generated@@101 $generated@@102 $generated@@103))  (and ($generated@@43 $generated@@39 $generated@@104 ($generated@@44 $generated@@102 $generated@@103)) (or (not (= $generated@@104 $generated@@42)) (not true))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@104 ($generated@@101 $generated@@102 $generated@@103)))
 :pattern ( ($generated@@43 $generated@@39 $generated@@104 ($generated@@44 $generated@@102 $generated@@103)))
)))
(assert ($generated@@88 $generated@@1))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@106 ($generated@@75 $generated@@105))  (and ($generated@@43 $generated@@39 $generated@@106 ($generated@@28 $generated@@105)) (or (not (= $generated@@106 $generated@@42)) (not true))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@106 ($generated@@75 $generated@@105)))
 :pattern ( ($generated@@43 $generated@@39 $generated@@106 ($generated@@28 $generated@@105)))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@T) ) (! (= ($generated@@45 ($generated@@98 $generated@@110 $generated@@107) $generated@@108 $generated@@109) ($generated@@74 $generated@@110 $generated@@107 $generated@@108 $generated@@109))
 :pattern ( ($generated@@45 ($generated@@98 $generated@@110 $generated@@107) $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> ($generated@@89 $generated@@111 $generated@@112) (=> ($generated@@45 $generated@@113 $generated@@114 $generated@@111) ($generated@@45 $generated@@113 $generated@@114 $generated@@112)))
 :pattern ( ($generated@@89 $generated@@111 $generated@@112) ($generated@@45 $generated@@113 $generated@@114 $generated@@111))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@T) ) (!  (=> ($generated@@89 $generated@@115 $generated@@116) (=> ($generated@@74 $generated@@119 $generated@@117 $generated@@118 $generated@@115) ($generated@@74 $generated@@119 $generated@@117 $generated@@118 $generated@@116)))
 :pattern ( ($generated@@89 $generated@@115 $generated@@116) ($generated@@74 $generated@@119 $generated@@117 $generated@@118 $generated@@115))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (and ($generated@@41 $generated@@122) (and (or (not (= $generated@@123 $generated@@42)) (not true)) ($generated@@43 $generated@@39 $generated@@123 ($generated@@44 $generated@@120 $generated@@121)))) ($generated@@70 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@122 $generated@@123) $generated@@86) $generated@@121))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@122 $generated@@123) $generated@@86) ($generated@@44 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@125 T@U) ) (!  (and (= ($generated@@31 ($generated@@75 $generated@@125)) $generated@@3) (= ($generated@@124 ($generated@@75 $generated@@125)) $generated@@8))
 :pattern ( ($generated@@75 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ) (!  (and (= ($generated@@31 ($generated@@28 $generated@@126)) $generated@@7) (= ($generated@@124 ($generated@@28 $generated@@126)) $generated@@8))
 :pattern ( ($generated@@28 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@74 $generated@@39 $generated@@129 ($generated@@101 $generated@@127 $generated@@128) $generated@@130) ($generated@@74 $generated@@39 $generated@@129 ($generated@@44 $generated@@127 $generated@@128) $generated@@130))
 :pattern ( ($generated@@74 $generated@@39 $generated@@129 ($generated@@101 $generated@@127 $generated@@128) $generated@@130))
 :pattern ( ($generated@@74 $generated@@39 $generated@@129 ($generated@@44 $generated@@127 $generated@@128) $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@133 ($generated@@28 $generated@@132))  (or (= $generated@@133 $generated@@42) (= ($generated@@131 $generated@@133) ($generated@@28 $generated@@132))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@133 ($generated@@28 $generated@@132)))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and ($generated@@45 $generated@@135 ($generated@@28 $generated@@134) $generated@@136) ($generated@@41 $generated@@136)) ($generated@@45 $generated@@135 ($generated@@44 $generated@@134 $generated) $generated@@136))
 :pattern ( ($generated@@45 $generated@@135 ($generated@@28 $generated@@134) $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> ($generated@@74 $generated@@39 $generated@@138 ($generated@@28 $generated@@137) $generated@@139) ($generated@@74 $generated@@39 $generated@@138 ($generated@@44 $generated@@137 $generated) $generated@@139))
 :pattern ( ($generated@@74 $generated@@39 $generated@@138 ($generated@@28 $generated@@137) $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@74 $generated@@39 $generated@@142 ($generated@@44 $generated@@140 $generated@@141) $generated@@143)  (or (= $generated@@142 $generated@@42) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@143 $generated@@142) $generated@@1)))))
 :pattern ( ($generated@@74 $generated@@39 $generated@@142 ($generated@@44 $generated@@140 $generated@@141) $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (or (not (= $generated@@144 $generated@@146)) (not true)) (=> (and ($generated@@89 $generated@@144 $generated@@145) ($generated@@89 $generated@@145 $generated@@146)) ($generated@@89 $generated@@144 $generated@@146)))
 :pattern ( ($generated@@89 $generated@@144 $generated@@145) ($generated@@89 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (!  (and (= ($generated@@147 ($generated@@87 $generated@@148 $generated@@149)) $generated@@148) (= ($generated@@32 ($generated@@87 $generated@@148 $generated@@149)) $generated@@149))
 :pattern ( ($generated@@87 $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ) (!  (=> ($generated@@70 $generated@@150 $generated) (and (= ($generated@@98 $generated@@13 ($generated@@35 $generated@@13 $generated@@150)) $generated@@150) ($generated@@43 $generated@@13 ($generated@@35 $generated@@13 $generated@@150) $generated)))
 :pattern ( ($generated@@70 $generated@@150 $generated))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@70 ($generated@@98 $generated@@153 $generated@@151) $generated@@152) ($generated@@43 $generated@@153 $generated@@151 $generated@@152))
 :pattern ( ($generated@@70 ($generated@@98 $generated@@153 $generated@@151) $generated@@152))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@154 ($generated@@101 $generated@@155 $generated@@156)) $generated@@155)
 :pattern ( ($generated@@101 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@157 ($generated@@101 $generated@@158 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@101 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@160 ($generated@@44 $generated@@161 $generated@@162)) $generated@@161)
 :pattern ( ($generated@@44 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@163 ($generated@@44 $generated@@164 $generated@@165)) $generated@@165)
 :pattern ( ($generated@@44 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@168 ($generated@@44 $generated@@166 $generated@@167))  (or (= $generated@@168 $generated@@42) ($generated@@27 ($generated@@131 $generated@@168) $generated@@166 $generated@@167)))
 :pattern ( ($generated@@43 $generated@@39 $generated@@168 ($generated@@44 $generated@@166 $generated@@167)))
)))
(assert (forall (($generated@@170 T@U) ) (! (= ($generated@@169 ($generated@@75 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@75 $generated@@170))
)))
(assert (forall (($generated@@172 T@U) ) (! (= ($generated@@171 ($generated@@28 $generated@@172)) $generated@@172)
 :pattern ( ($generated@@28 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@T) ) (! (= ($generated@@35 $generated@@174 ($generated@@98 $generated@@174 $generated@@173)) $generated@@173)
 :pattern ( ($generated@@98 $generated@@174 $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and (and ($generated@@41 $generated@@177) (and (or (not (= $generated@@178 $generated@@42)) (not true)) ($generated@@43 $generated@@39 $generated@@178 ($generated@@44 $generated@@175 $generated@@176)))) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@177 $generated@@178) $generated@@1)))) ($generated@@45 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@177 $generated@@178) $generated@@86) $generated@@176 $generated@@177))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@177 $generated@@178) $generated@@86) ($generated@@44 $generated@@175 $generated@@176))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> ($generated@@70 $generated@@181 ($generated@@101 $generated@@179 $generated@@180)) (and (= ($generated@@98 $generated@@39 ($generated@@35 $generated@@39 $generated@@181)) $generated@@181) ($generated@@43 $generated@@39 ($generated@@35 $generated@@39 $generated@@181) ($generated@@101 $generated@@179 $generated@@180))))
 :pattern ( ($generated@@70 $generated@@181 ($generated@@101 $generated@@179 $generated@@180)))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> ($generated@@70 $generated@@184 ($generated@@44 $generated@@182 $generated@@183)) (and (= ($generated@@98 $generated@@39 ($generated@@35 $generated@@39 $generated@@184)) $generated@@184) ($generated@@43 $generated@@39 ($generated@@35 $generated@@39 $generated@@184) ($generated@@44 $generated@@182 $generated@@183))))
 :pattern ( ($generated@@70 $generated@@184 ($generated@@44 $generated@@182 $generated@@183)))
)))
(assert  (and (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (! (= ($generated@@185 $generated@@188 $generated@@189 $generated@@190 ($generated@@187 $generated@@188 $generated@@189 $generated@@190 $generated@@192 $generated@@193 $generated@@194 $generated@@191) $generated@@193 $generated@@194) $generated@@191)
 :weight 0
)) (and (forall (($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@T) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ) (!  (or (= $generated@@200 $generated@@202) (= ($generated@@185 $generated@@195 $generated@@196 $generated@@197 ($generated@@187 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@200 $generated@@201 $generated@@198) $generated@@202 $generated@@203) ($generated@@185 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@202 $generated@@203)))
 :weight 0
)) (forall (($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@T) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (or (= $generated@@210 $generated@@212) (= ($generated@@185 $generated@@204 $generated@@205 $generated@@206 ($generated@@187 $generated@@204 $generated@@205 $generated@@206 $generated@@208 $generated@@209 $generated@@210 $generated@@207) $generated@@211 $generated@@212) ($generated@@185 $generated@@204 $generated@@205 $generated@@206 $generated@@208 $generated@@211 $generated@@212)))
 :weight 0
)))))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 Bool) ($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@16 ($generated@@185 $generated@@39 $generated@@37 $generated@@12 ($generated@@186 $generated@@213 $generated@@214 $generated@@215 $generated@@216) $generated@@217 $generated@@218))  (=> (and (or (not (= $generated@@217 $generated@@213)) (not true)) ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@214 $generated@@217) $generated@@215)))) $generated@@216))
 :pattern ( ($generated@@185 $generated@@39 $generated@@37 $generated@@12 ($generated@@186 $generated@@213 $generated@@214 $generated@@215 $generated@@216) $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@31 ($generated@@101 $generated@@219 $generated@@220)) $generated@@4) (= ($generated@@124 ($generated@@101 $generated@@219 $generated@@220)) $generated@@9))
 :pattern ( ($generated@@101 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (!  (and (= ($generated@@31 ($generated@@44 $generated@@221 $generated@@222)) $generated@@5) (= ($generated@@124 ($generated@@44 $generated@@221 $generated@@222)) $generated@@9))
 :pattern ( ($generated@@44 $generated@@221 $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (!  (=> ($generated@@70 $generated@@224 ($generated@@75 $generated@@223)) (and (= ($generated@@98 $generated@@39 ($generated@@35 $generated@@39 $generated@@224)) $generated@@224) ($generated@@43 $generated@@39 ($generated@@35 $generated@@39 $generated@@224) ($generated@@75 $generated@@223))))
 :pattern ( ($generated@@70 $generated@@224 ($generated@@75 $generated@@223)))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (!  (=> ($generated@@70 $generated@@226 ($generated@@28 $generated@@225)) (and (= ($generated@@98 $generated@@39 ($generated@@35 $generated@@39 $generated@@226)) $generated@@226) ($generated@@43 $generated@@39 ($generated@@35 $generated@@39 $generated@@226) ($generated@@28 $generated@@225))))
 :pattern ( ($generated@@70 $generated@@226 ($generated@@28 $generated@@225)))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ) (!  (=> ($generated@@41 ($generated@@46 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228 ($generated@@46 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228) $generated@@229 $generated@@230))) ($generated@@89 $generated@@227 ($generated@@46 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228 ($generated@@46 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228) $generated@@229 $generated@@230))))
 :pattern ( ($generated@@46 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228 ($generated@@46 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@227 $generated@@228) $generated@@229 $generated@@230)))
)))
(assert (forall (($generated@@231 Int) ) (! (= ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 $generated@@231))) ($generated@@95 $generated@@38 ($generated@@98 $generated@@13 ($generated@@17 $generated@@231))))
 :pattern ( ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 $generated@@231))))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@T) ) (! (= ($generated@@98 $generated@@233 ($generated@@95 $generated@@233 $generated@@232)) ($generated@@95 $generated@@38 ($generated@@98 $generated@@233 $generated@@232)))
 :pattern ( ($generated@@98 $generated@@233 ($generated@@95 $generated@@233 $generated@@232)))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ) (! ($generated@@74 $generated@@13 $generated@@235 $generated $generated@@234)
 :pattern ( ($generated@@74 $generated@@13 $generated@@235 $generated $generated@@234))
)))
(assert (forall (($generated@@236 T@U) ) (! ($generated@@43 $generated@@13 $generated@@236 $generated)
 :pattern ( ($generated@@43 $generated@@13 $generated@@236 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 (T@U) Bool)
(declare-fun $generated@@247 () Int)
(declare-fun $generated@@248 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@249  (=> (= $generated@@237 ($generated@@186 $generated@@42 $generated@@238 $generated@@1 false)) (=> (and (and (= $generated@@239 ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 100)))) (= $generated@@240 ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 101))))) (and (= $generated@@241 ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 20)))) (= $generated@@242 ($generated@@98 $generated@@13 ($generated@@17 ($generated@@93 21)))))) (=> (and (and (and (or (not (= $generated@@243 $generated@@42)) (not true)) ($generated@@43 $generated@@39 $generated@@243 ($generated@@28 $generated@@244))) (and (not ($generated@@16 ($generated@@35 $generated@@12 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@238 $generated@@243) $generated@@1)))) (= ($generated@@18 ($generated@@35 $generated@@13 ($generated@@34 $generated@@244 $generated $generated@@243))) ($generated@@18 ($generated@@35 $generated@@13 $generated@@240))))) (and (and (= ($generated@@18 ($generated@@35 $generated@@13 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@238 $generated@@243) $generated@@86))) ($generated@@18 ($generated@@35 $generated@@13 $generated@@242))) (= $generated@@245 ($generated@@46 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@238 $generated@@243 ($generated@@46 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@238 $generated@@243) $generated@@1 ($generated@@98 $generated@@12 ($generated@@15 true)))))) (and ($generated@@41 $generated@@245) ($generated@@246 $generated@@245)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@16 ($generated@@185 $generated@@39 $generated@@37 $generated@@12 $generated@@237 $generated@@243 $generated@@86))) (=> ($generated@@16 ($generated@@185 $generated@@39 $generated@@37 $generated@@12 $generated@@237 $generated@@243 $generated@@86)) (=> (and (and (= $generated@@247 ($generated@@93 22)) (= $generated@@248 ($generated@@46 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@245 $generated@@243 ($generated@@46 $generated@@37 $generated@@38 ($generated@@36 $generated@@39 ($generated@@40 $generated@@37 $generated@@38) $generated@@245 $generated@@243) $generated@@86 ($generated@@98 $generated@@13 ($generated@@17 $generated@@247)))))) (and ($generated@@41 $generated@@248) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@16 ($generated@@185 $generated@@39 $generated@@37 $generated@@12 $generated@@237 $generated@@243 $generated@@86))))))))))
(let (($generated@@250  (=> (and (and ($generated@@41 $generated@@238) ($generated@@246 $generated@@238)) (and (= 1 $generated@@33) (= (ControlFlow 0 4) 2))) $generated@@249)))
$generated@@250)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)