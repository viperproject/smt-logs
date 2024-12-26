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
(declare-fun $generated@@25 () Int)
(declare-fun $generated@@26 (Int) Bool)
(declare-fun $generated@@27 (Int) Int)
(declare-fun $generated@@28 (Int) Bool)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 (T@U) Bool)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@49 (T@U) Bool)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@60 (T@U T@U T@U) Bool)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@86 (T@U) Int)
(declare-fun $generated@@87 (T@U) Int)
(declare-fun $generated@@92 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@93 () T@T)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@96 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@97 () T@T)
(declare-fun $generated@@98 (T@T T@T) T@T)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@100 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@T) T@T)
(declare-fun $generated@@102 (T@T) T@T)
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
(assert (= ($generated@@24 $generated) $generated@@1))
(assert (= ($generated@@24 $generated@@0) $generated@@2))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@29 Int) ) (!  (=> (or ($generated@@28 ($generated@@27 $generated@@29)) (< 0 $generated@@25)) (= ($generated@@26 ($generated@@27 $generated@@29))  (and (<= ($generated@@27 0) ($generated@@27 $generated@@29)) (or (not (= $generated@@29 5)) (not true)))))
 :weight 3
 :pattern ( ($generated@@26 ($generated@@27 $generated@@29)))
))))
(assert (= ($generated@@30 $generated@@31) $generated@@6))
(assert (= ($generated@@8 $generated@@33) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> ($generated@@35 $generated@@37) ($generated@@32 $generated@@33 $generated@@31 ($generated@@34 $generated@@36) $generated@@37))
 :pattern ( ($generated@@32 $generated@@33 $generated@@31 ($generated@@34 $generated@@36) $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ) (! ($generated@@38 $generated@@33 $generated@@31 ($generated@@34 $generated@@39))
 :pattern ( ($generated@@38 $generated@@33 $generated@@31 ($generated@@34 $generated@@39)))
)))
(assert (forall (($generated@@40 Int) ) (! (= ($generated@@27 $generated@@40) $generated@@40)
 :pattern ( ($generated@@27 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@41 $generated@@43 $generated@@42) $generated@@42)
 :pattern ( ($generated@@41 $generated@@43 $generated@@42))
)))
(assert  (=> (<= 1 $generated@@25) (forall (($generated@@50 T@U) ) (!  (=> (or ($generated@@45 $generated@@50) (and (< 1 $generated@@25) ($generated@@38 $generated@@33 $generated@@50 ($generated@@34 $generated@@0)))) (and (=> ($generated@@46 $generated@@50) ($generated@@28 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@50))))) (= ($generated@@44 $generated@@50)  (and (=> ($generated@@46 $generated@@50) ($generated@@26 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@50))))) (=> ($generated@@49 $generated@@50) true)))))
 :pattern ( ($generated@@44 $generated@@50))
))))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@46 $generated@@51) (= ($generated@@30 $generated@@51) $generated@@5))
 :pattern ( ($generated@@46 $generated@@51))
)))
(assert (forall (($generated@@52 T@U) ) (! (= ($generated@@49 $generated@@52) (= ($generated@@30 $generated@@52) $generated@@6))
 :pattern ( ($generated@@49 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 ($generated@@47 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@47 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ) (!  (=> ($generated@@49 $generated@@56) (= $generated@@56 $generated@@31))
 :pattern ( ($generated@@49 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (!  (=> ($generated@@46 $generated@@58) (exists (($generated@@59 T@U) ) (= $generated@@58 ($generated@@57 $generated@@59))))
 :pattern ( ($generated@@46 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@60 ($generated@@53 $generated@@64 $generated@@61) $generated@@62 $generated@@63) ($generated@@32 $generated@@64 $generated@@61 $generated@@62 $generated@@63))
 :pattern ( ($generated@@60 ($generated@@53 $generated@@64 $generated@@61) $generated@@62 $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ) (!  (and (= ($generated@@24 ($generated@@34 $generated@@66)) $generated@@4) (= ($generated@@65 ($generated@@34 $generated@@66)) $generated@@7))
 :pattern ( ($generated@@34 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> ($generated@@35 $generated@@69) (= ($generated@@32 $generated@@33 ($generated@@57 $generated@@68) ($generated@@34 $generated@@67) $generated@@69) ($generated@@60 $generated@@68 $generated@@67 $generated@@69)))
 :pattern ( ($generated@@32 $generated@@33 ($generated@@57 $generated@@68) ($generated@@34 $generated@@67) $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@38 $generated@@33 $generated@@71 ($generated@@34 $generated@@70)) (or ($generated@@46 $generated@@71) ($generated@@49 $generated@@71)))
 :pattern ( ($generated@@49 $generated@@71) ($generated@@38 $generated@@33 $generated@@71 ($generated@@34 $generated@@70)))
 :pattern ( ($generated@@46 $generated@@71) ($generated@@38 $generated@@33 $generated@@71 ($generated@@34 $generated@@70)))
)))
(assert (forall (($generated@@73 T@U) ) (!  (=> ($generated@@72 $generated@@73 $generated@@0) (and (= ($generated@@53 $generated@@10 ($generated@@47 $generated@@10 $generated@@73)) $generated@@73) ($generated@@38 $generated@@10 ($generated@@47 $generated@@10 $generated@@73) $generated@@0)))
 :pattern ( ($generated@@72 $generated@@73 $generated@@0))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@72 $generated@@74 $generated) (and (= ($generated@@53 $generated@@9 ($generated@@47 $generated@@9 $generated@@74)) $generated@@74) ($generated@@38 $generated@@9 ($generated@@47 $generated@@9 $generated@@74) $generated)))
 :pattern ( ($generated@@72 $generated@@74 $generated))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@72 ($generated@@53 $generated@@77 $generated@@75) $generated@@76) ($generated@@38 $generated@@77 $generated@@75 $generated@@76))
 :pattern ( ($generated@@72 ($generated@@53 $generated@@77 $generated@@75) $generated@@76))
)))
(assert (forall (($generated@@79 T@U) ) (! (= ($generated@@78 ($generated@@34 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@34 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ) (! (= ($generated@@30 ($generated@@57 $generated@@80)) $generated@@5)
 :pattern ( ($generated@@57 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@48 ($generated@@57 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@57 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@47 $generated@@83 ($generated@@53 $generated@@83 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@53 $generated@@83 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@38 $generated@@33 ($generated@@57 $generated@@85) ($generated@@34 $generated@@84)) ($generated@@72 $generated@@85 $generated@@84))
 :pattern ( ($generated@@38 $generated@@33 ($generated@@57 $generated@@85) ($generated@@34 $generated@@84)))
)))
(assert (forall (($generated@@88 T@U) ) (! (< ($generated@@86 $generated@@88) ($generated@@87 ($generated@@57 $generated@@88)))
 :pattern ( ($generated@@57 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (and ($generated@@35 $generated@@91) (and ($generated@@46 $generated@@89) ($generated@@32 $generated@@33 $generated@@89 ($generated@@34 $generated@@90) $generated@@91))) ($generated@@60 ($generated@@48 $generated@@89) $generated@@90 $generated@@91))
 :pattern ( ($generated@@60 ($generated@@48 $generated@@89) $generated@@90 $generated@@91))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@92 $generated@@103 $generated@@104 $generated@@105 ($generated@@99 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@92 $generated@@110 $generated@@111 $generated@@112 ($generated@@99 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@92 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@92 $generated@@119 $generated@@120 $generated@@121 ($generated@@99 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@92 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))) (= ($generated@@8 $generated@@93) 4)) (= ($generated@@8 $generated@@94) 5)) (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@96 $generated@@128 $generated@@129 ($generated@@100 $generated@@128 $generated@@129 $generated@@131 $generated@@132 $generated@@130) $generated@@132) $generated@@130)
 :weight 0
))) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@137 $generated@@138) (= ($generated@@96 $generated@@133 $generated@@134 ($generated@@100 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@135) $generated@@138) ($generated@@96 $generated@@133 $generated@@134 $generated@@136 $generated@@138)))
 :weight 0
))) (= ($generated@@8 $generated@@97) 6)) (forall (($generated@@139 T@T) ($generated@@140 T@T) ) (= ($generated@@8 ($generated@@98 $generated@@139 $generated@@140)) 7))) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (! (= ($generated@@101 ($generated@@98 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@98 $generated@@141 $generated@@142))
))) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (! (= ($generated@@102 ($generated@@98 $generated@@143 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@98 $generated@@143 $generated@@144))
))))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 Bool) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@13 ($generated@@92 $generated@@93 $generated@@94 $generated@@9 ($generated@@95 $generated@@145 $generated@@146 $generated@@147 $generated@@148) $generated@@149 $generated@@150))  (=> (and (or (not (= $generated@@149 $generated@@145)) (not true)) ($generated@@13 ($generated@@47 $generated@@9 ($generated@@96 $generated@@94 $generated@@97 ($generated@@96 $generated@@93 ($generated@@98 $generated@@94 $generated@@97) $generated@@146 $generated@@149) $generated@@147)))) $generated@@148))
 :pattern ( ($generated@@92 $generated@@93 $generated@@94 $generated@@9 ($generated@@95 $generated@@145 $generated@@146 $generated@@147 $generated@@148) $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@86 ($generated@@53 $generated@@33 $generated@@151)) ($generated@@87 $generated@@151))
 :pattern ( ($generated@@86 ($generated@@53 $generated@@33 $generated@@151)))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> ($generated@@72 $generated@@153 ($generated@@34 $generated@@152)) (and (= ($generated@@53 $generated@@33 ($generated@@47 $generated@@33 $generated@@153)) $generated@@153) ($generated@@38 $generated@@33 ($generated@@47 $generated@@33 $generated@@153) ($generated@@34 $generated@@152))))
 :pattern ( ($generated@@72 $generated@@153 ($generated@@34 $generated@@152)))
)))
(assert (= $generated@@31 ($generated@@41 $generated@@33 $generated@@31)))
(assert  (=> (<= 0 $generated@@25) (forall (($generated@@154 Int) ) (!  (=> (or ($generated@@28 $generated@@154) (< 0 $generated@@25)) (= ($generated@@26 $generated@@154)  (and (<= ($generated@@27 0) $generated@@154) (or (not (= $generated@@154 5)) (not true)))))
 :pattern ( ($generated@@26 $generated@@154))
))))
(assert (forall (($generated@@155 Int) ) (! (= ($generated@@53 $generated@@10 ($generated@@14 ($generated@@27 $generated@@155))) ($generated@@41 $generated@@97 ($generated@@53 $generated@@10 ($generated@@14 $generated@@155))))
 :pattern ( ($generated@@53 $generated@@10 ($generated@@14 ($generated@@27 $generated@@155))))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@57 ($generated@@41 $generated@@97 $generated@@156)) ($generated@@41 $generated@@33 ($generated@@57 $generated@@156)))
 :pattern ( ($generated@@57 ($generated@@41 $generated@@97 $generated@@156)))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@T) ) (! (= ($generated@@53 $generated@@158 ($generated@@41 $generated@@158 $generated@@157)) ($generated@@41 $generated@@97 ($generated@@53 $generated@@158 $generated@@157)))
 :pattern ( ($generated@@53 $generated@@158 ($generated@@41 $generated@@158 $generated@@157)))
)))
(assert  (=> (<= 1 $generated@@25) (forall (($generated@@159 T@U) ) (!  (=> (or ($generated@@45 ($generated@@41 $generated@@33 $generated@@159)) (and (< 1 $generated@@25) ($generated@@38 $generated@@33 $generated@@159 ($generated@@34 $generated@@0)))) (and (=> ($generated@@13 ($generated@@41 $generated@@9 ($generated@@12 ($generated@@46 ($generated@@41 $generated@@33 $generated@@159))))) ($generated@@28 ($generated@@27 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 ($generated@@41 $generated@@33 $generated@@159))))))) (= ($generated@@44 ($generated@@41 $generated@@33 $generated@@159)) ($generated@@13 ($generated@@41 $generated@@9 ($generated@@12  (and (=> ($generated@@46 ($generated@@41 $generated@@33 $generated@@159)) ($generated@@26 ($generated@@27 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 ($generated@@41 $generated@@33 $generated@@159))))))) (=> ($generated@@49 ($generated@@41 $generated@@33 $generated@@159)) true))))))))
 :weight 3
 :pattern ( ($generated@@44 ($generated@@41 $generated@@33 $generated@@159)))
))))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (! ($generated@@32 $generated@@10 $generated@@161 $generated@@0 $generated@@160)
 :pattern ( ($generated@@32 $generated@@10 $generated@@161 $generated@@0 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (! ($generated@@32 $generated@@9 $generated@@163 $generated $generated@@162)
 :pattern ( ($generated@@32 $generated@@9 $generated@@163 $generated $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ) (! ($generated@@38 $generated@@10 $generated@@164 $generated@@0)
 :pattern ( ($generated@@38 $generated@@10 $generated@@164 $generated@@0))
)))
(assert (forall (($generated@@165 T@U) ) (! ($generated@@38 $generated@@9 $generated@@165 $generated)
 :pattern ( ($generated@@38 $generated@@9 $generated@@165 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () Int)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@172 true))
(let (($generated@@173  (=> (and (not ($generated@@49 $generated@@166)) (= (ControlFlow 0 5) 2)) $generated@@172)))
(let (($generated@@174  (=> (and ($generated@@49 $generated@@166) (= (ControlFlow 0 4) 2)) $generated@@172)))
(let (($generated@@175  (=> (=> ($generated@@46 $generated@@166) ($generated@@26 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@166))))) (and (=> (= (ControlFlow 0 6) 4) $generated@@174) (=> (= (ControlFlow 0 6) 5) $generated@@173)))))
(let (($generated@@176  (=> (and (not (=> ($generated@@46 $generated@@166) ($generated@@26 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@166)))))) (= (ControlFlow 0 3) 2)) $generated@@172)))
(let (($generated@@177  (=> (not ($generated@@46 $generated@@166)) (and (=> (= (ControlFlow 0 9) 6) $generated@@175) (=> (= (ControlFlow 0 9) 3) $generated@@176)))))
(let (($generated@@178  (=> ($generated@@46 $generated@@166) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($generated@@46 $generated@@166)) (=> ($generated@@46 $generated@@166) (=> (= $generated@@167 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@166)))) (=> (and ($generated@@32 $generated@@10 ($generated@@14 $generated@@167) $generated@@0 $generated@@168) ($generated@@28 ($generated@@15 ($generated@@47 $generated@@10 ($generated@@48 $generated@@166))))) (and (=> (= (ControlFlow 0 7) 6) $generated@@175) (=> (= (ControlFlow 0 7) 3) $generated@@176)))))))))
(let (($generated@@179 true))
(let (($generated@@180  (=> (= $generated@@169 ($generated@@95 $generated@@170 $generated@@168 $generated@@3 false)) (and (and (=> (= (ControlFlow 0 10) 1) $generated@@179) (=> (= (ControlFlow 0 10) 7) $generated@@178)) (=> (= (ControlFlow 0 10) 9) $generated@@177)))))
(let (($generated@@181  (=> (and (and (and ($generated@@35 $generated@@168) ($generated@@171 $generated@@168)) ($generated@@38 $generated@@33 $generated@@166 ($generated@@34 $generated@@0))) (and (= 1 $generated@@25) (= (ControlFlow 0 11) 10))) $generated@@180)))
$generated@@181)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)