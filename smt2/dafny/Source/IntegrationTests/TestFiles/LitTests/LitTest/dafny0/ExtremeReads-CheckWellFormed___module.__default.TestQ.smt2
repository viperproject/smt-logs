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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U) Int)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@26 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@27 (T@U) Bool)
(declare-fun $generated@@28 (T@U T@U T@U) Bool)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@T T@T) T@T)
(declare-fun $generated@@37 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@38 (T@T) T@T)
(declare-fun $generated@@39 (T@T) T@T)
(declare-fun $generated@@64 (T@U T@U) Bool)
(declare-fun $generated@@68 (T@U T@U) T@U)
(declare-fun $generated@@69 (Int) T@U)
(declare-fun $generated@@70 (T@U) Int)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@76 () Int)
(declare-fun $generated@@77 (T@U T@U T@U) Bool)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@84 () T@U)
(declare-fun $generated@@85 (Int) Int)
(declare-fun $generated@@92 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@93 () T@U)
(declare-fun $generated@@96 (T@U T@U) T@U)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@104 (T@T T@U) T@U)
(declare-fun $generated@@107 (T@T T@U) T@U)
(declare-fun $generated@@114 (T@U T@U) Bool)
(declare-fun $generated@@126 (T@U) Bool)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@167 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@168 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@169 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (= ($generated@@22 $generated) 0))
(assert (= ($generated@@23 $generated) $generated@@0))
(assert  (and (and (and (and (and (and (and (= ($generated@@6 $generated@@30) 3) (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@33 $generated@@40 $generated@@41 ($generated@@37 $generated@@40 $generated@@41 $generated@@43 $generated@@44 $generated@@42) $generated@@44) $generated@@42)
 :weight 0
))) (forall (($generated@@45 T@T) ($generated@@46 T@T) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (!  (or (= $generated@@49 $generated@@50) (= ($generated@@33 $generated@@45 $generated@@46 ($generated@@37 $generated@@45 $generated@@46 $generated@@48 $generated@@49 $generated@@47) $generated@@50) ($generated@@33 $generated@@45 $generated@@46 $generated@@48 $generated@@50)))
 :weight 0
))) (= ($generated@@6 $generated@@34) 4)) (= ($generated@@6 $generated@@35) 5)) (forall (($generated@@51 T@T) ($generated@@52 T@T) ) (= ($generated@@6 ($generated@@36 $generated@@51 $generated@@52)) 6))) (forall (($generated@@53 T@T) ($generated@@54 T@T) ) (! (= ($generated@@38 ($generated@@36 $generated@@53 $generated@@54)) $generated@@53)
 :pattern ( ($generated@@36 $generated@@53 $generated@@54))
))) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (! (= ($generated@@39 ($generated@@36 $generated@@55 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@36 $generated@@55 $generated@@56))
))))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> (and (and (and ($generated@@27 $generated@@58) ($generated@@27 $generated@@59)) (or ($generated@@28 $generated@@58 $generated@@60 $generated@@61) ($generated@@29 $generated@@30 $generated@@61 $generated@@31))) (and ($generated@@24 $generated@@58) ($generated@@25 $generated@@58 $generated@@59))) (=> (forall (($generated@@62 T@U) ($generated@@63 T@U) )  (=> (and (or (not (= $generated@@62 $generated@@32)) (not true)) (= $generated@@62 $generated@@61)) (= ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@58 $generated@@62) $generated@@63) ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@59 $generated@@62) $generated@@63)))) (= ($generated@@26 $generated@@57 $generated@@58 $generated@@60 $generated@@61) ($generated@@26 $generated@@57 $generated@@59 $generated@@60 $generated@@61))))
 :pattern ( ($generated@@24 $generated@@58) ($generated@@25 $generated@@58 $generated@@59) ($generated@@26 $generated@@57 $generated@@59 $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> (and ($generated@@64 $generated@@65 $generated@@66) ($generated@@64 $generated@@66 $generated@@67)) ($generated@@64 $generated@@65 $generated@@67))
 :pattern ( ($generated@@64 $generated@@65 $generated@@66) ($generated@@64 $generated@@66 $generated@@67))
 :pattern ( ($generated@@64 $generated@@65 $generated@@66) ($generated@@64 $generated@@65 $generated@@67))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 Int) ($generated@@73 Int) ) (!  (=> (and (and (<= 0 $generated@@72) (<= 0 $generated@@73)) (<= (+ $generated@@72 $generated@@73) ($generated@@70 $generated@@71))) (= ($generated@@68 ($generated@@68 $generated@@71 ($generated@@69 $generated@@72)) ($generated@@69 $generated@@73)) ($generated@@68 $generated@@71 ($generated@@69 (+ $generated@@72 $generated@@73)))))
 :pattern ( ($generated@@68 ($generated@@68 $generated@@71 ($generated@@69 $generated@@72)) ($generated@@69 $generated@@73)))
)))
(assert (forall (($generated@@75 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@75 $generated@@31)  (or (= $generated@@75 $generated@@32) (= ($generated@@74 $generated@@75) $generated@@31)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@75 $generated@@31))
)))
(assert  (=> (<= 1 $generated@@76) (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (and (and ($generated@@27 $generated@@80) ($generated@@29 $generated@@30 $generated@@81 $generated@@31)) ($generated@@77 ($generated@@78 $generated@@79) $generated@@80 $generated@@81)) (forall (($generated@@82 T@U) ) (! ($generated@@26 ($generated@@78 $generated@@79) $generated@@80 $generated@@82 $generated@@81)
 :pattern ( ($generated@@26 ($generated@@78 $generated@@79) $generated@@80 $generated@@82 $generated@@81))
)))
 :pattern ( ($generated@@77 ($generated@@78 $generated@@79) $generated@@80 $generated@@81))
))))
(assert  (=> (<= 1 $generated@@76) (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (or ($generated@@28 $generated@@87 $generated@@88 $generated@@89) (and (< 1 $generated@@76) (and (and ($generated@@27 $generated@@87) ($generated@@29 $generated@@30 $generated@@89 $generated@@31)) (or (not (= $generated@@89 $generated@@32)) (not true))))) (and (and (=> (< 0 ($generated@@70 $generated@@88)) (=> (or (not (= ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@87 $generated@@89) $generated@@84)) $generated@@32)) (not true)) ($generated@@28 $generated@@87 ($generated@@68 $generated@@88 ($generated@@69 1)) $generated@@89))) (=> (=> (< 0 ($generated@@70 $generated@@88)) (and (or (not (= ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@87 $generated@@89) $generated@@84)) $generated@@32)) (not true)) ($generated@@26 $generated@@86 $generated@@87 ($generated@@68 $generated@@88 ($generated@@69 1)) $generated@@89))) (=> (= ($generated@@85 0) ($generated@@70 $generated@@88)) (forall (($generated@@90 T@U) ) (!  (=> ($generated@@64 $generated@@90 $generated@@88) ($generated@@28 $generated@@87 $generated@@90 $generated@@89))
 :pattern ( ($generated@@26 $generated@@86 $generated@@87 $generated@@90 $generated@@89))
))))) (= ($generated@@26 ($generated@@78 $generated@@86) $generated@@87 $generated@@88 $generated@@89)  (and (=> (< 0 ($generated@@70 $generated@@88)) (and (or (not (= ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@87 $generated@@89) $generated@@84)) $generated@@32)) (not true)) ($generated@@26 $generated@@86 $generated@@87 ($generated@@68 $generated@@88 ($generated@@69 1)) $generated@@89))) (=> (= ($generated@@85 0) ($generated@@70 $generated@@88)) (forall (($generated@@91 T@U) ) (!  (=> ($generated@@64 $generated@@91 $generated@@88) ($generated@@26 $generated@@86 $generated@@87 $generated@@91 $generated@@89))
 :pattern ( ($generated@@26 $generated@@86 $generated@@87 $generated@@91 $generated@@89))
)))))))
 :pattern ( ($generated@@26 ($generated@@78 $generated@@86) $generated@@87 $generated@@88 $generated@@89) ($generated@@27 $generated@@87))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@92 $generated@@30 $generated@@94 $generated@@93 $generated@@95) ($generated@@92 $generated@@30 $generated@@94 $generated@@31 $generated@@95))
 :pattern ( ($generated@@92 $generated@@30 $generated@@94 $generated@@93 $generated@@95))
 :pattern ( ($generated@@92 $generated@@30 $generated@@94 $generated@@31 $generated@@95))
)))
(assert (= ($generated@@22 $generated@@84) 0))
(assert (= ($generated@@96 $generated@@3 $generated@@5) $generated@@84))
(assert  (not ($generated@@97 $generated@@84)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@92 $generated@@30 $generated@@98 $generated@@31 $generated@@99)  (or (= $generated@@98 $generated@@32) ($generated@@11 ($generated@@83 $generated@@7 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@99 $generated@@98) $generated)))))
 :pattern ( ($generated@@92 $generated@@30 $generated@@98 $generated@@31 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@25 $generated@@100 $generated@@101) (forall (($generated@@102 T@U) ) (!  (=> ($generated@@11 ($generated@@83 $generated@@7 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@100 $generated@@102) $generated))) ($generated@@11 ($generated@@83 $generated@@7 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@101 $generated@@102) $generated))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@101 $generated@@102) $generated))
)))
 :pattern ( ($generated@@25 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 Int) ) (! (= ($generated@@85 $generated@@103) $generated@@103)
 :pattern ( ($generated@@85 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@104 $generated@@106 $generated@@105) $generated@@105)
 :pattern ( ($generated@@104 $generated@@106 $generated@@105))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@107 $generated@@109 ($generated@@83 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@83 $generated@@109 $generated@@108))
)))
(assert  (=> (<= 1 $generated@@76) (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (=> (and (and ($generated@@27 $generated@@111) ($generated@@29 $generated@@30 $generated@@112 $generated@@31)) (forall (($generated@@113 T@U) ) (! ($generated@@26 ($generated@@78 $generated@@110) $generated@@111 $generated@@113 $generated@@112)
 :pattern ( ($generated@@26 ($generated@@78 $generated@@110) $generated@@111 $generated@@113 $generated@@112))
))) ($generated@@77 ($generated@@78 $generated@@110) $generated@@111 $generated@@112))
 :pattern ( ($generated@@77 ($generated@@78 $generated@@110) $generated@@111 $generated@@112))
))))
(assert ($generated@@97 $generated))
(assert  (=> (<= 0 $generated@@76) (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (or ($generated@@114 $generated@@116 $generated@@117) (and (< 0 $generated@@76) (and (and ($generated@@27 $generated@@116) ($generated@@29 $generated@@30 $generated@@117 $generated@@31)) (or (not (= $generated@@117 $generated@@32)) (not true))))) (and (=> (or (not (= ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@116 $generated@@117) $generated@@84)) $generated@@32)) (not true)) ($generated@@114 $generated@@116 $generated@@117)) (= ($generated@@77 ($generated@@78 $generated@@115) $generated@@116 $generated@@117)  (and (or (not (= ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@116 $generated@@117) $generated@@84)) $generated@@32)) (not true)) ($generated@@77 $generated@@115 $generated@@116 $generated@@117)))))
 :pattern ( ($generated@@77 ($generated@@78 $generated@@115) $generated@@116 $generated@@117) ($generated@@27 $generated@@116))
))))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@77 ($generated@@78 $generated@@118) $generated@@119 $generated@@120) ($generated@@77 $generated@@118 $generated@@119 $generated@@120))
 :pattern ( ($generated@@77 ($generated@@78 $generated@@118) $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@T) ) (!  (=> ($generated@@25 $generated@@121 $generated@@122) (=> ($generated@@92 $generated@@125 $generated@@123 $generated@@124 $generated@@121) ($generated@@92 $generated@@125 $generated@@123 $generated@@124 $generated@@122)))
 :pattern ( ($generated@@25 $generated@@121 $generated@@122) ($generated@@92 $generated@@125 $generated@@123 $generated@@124 $generated@@121))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> (and ($generated@@126 $generated@@128) (<= ($generated@@70 $generated@@128) ($generated@@70 $generated@@127))) (and (= ($generated@@126 ($generated@@68 $generated@@127 $generated@@128)) ($generated@@126 $generated@@127)) (= ($generated@@70 ($generated@@68 $generated@@127 $generated@@128)) (- ($generated@@70 $generated@@127) ($generated@@70 $generated@@128)))))
 :pattern ( ($generated@@68 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (and ($generated@@27 $generated@@129) (and (or (not (= $generated@@130 $generated@@32)) (not true)) (= ($generated@@74 $generated@@130) $generated@@31))) ($generated@@29 $generated@@30 ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@129 $generated@@130) $generated@@84)) $generated@@31))
 :pattern ( ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@129 $generated@@130) $generated@@84)))
)))
(assert (forall (($generated@@131 Int) ) (!  (=> (<= 0 $generated@@131) (and ($generated@@126 ($generated@@69 $generated@@131)) (= ($generated@@70 ($generated@@69 $generated@@131)) $generated@@131)))
 :pattern ( ($generated@@69 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@132 $generated@@93)  (and ($generated@@29 $generated@@30 $generated@@132 $generated@@31) (or (not (= $generated@@132 $generated@@32)) (not true))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@132 $generated@@93))
 :pattern ( ($generated@@29 $generated@@30 $generated@@132 $generated@@31))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and (and (and ($generated@@27 $generated@@134) ($generated@@27 $generated@@135)) (or ($generated@@114 $generated@@134 $generated@@136) ($generated@@29 $generated@@30 $generated@@136 $generated@@31))) (and ($generated@@24 $generated@@134) ($generated@@25 $generated@@134 $generated@@135))) (=> (forall (($generated@@137 T@U) ($generated@@138 T@U) )  (=> (and (or (not (= $generated@@137 $generated@@32)) (not true)) (= $generated@@137 $generated@@136)) (= ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@134 $generated@@137) $generated@@138) ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@135 $generated@@137) $generated@@138)))) (= ($generated@@77 $generated@@133 $generated@@134 $generated@@136) ($generated@@77 $generated@@133 $generated@@135 $generated@@136))))
 :pattern ( ($generated@@24 $generated@@134) ($generated@@25 $generated@@134 $generated@@135) ($generated@@77 $generated@@133 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and (and ($generated@@27 $generated@@139) (and (or (not (= $generated@@140 $generated@@32)) (not true)) (= ($generated@@74 $generated@@140) $generated@@31))) ($generated@@11 ($generated@@83 $generated@@7 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@139 $generated@@140) $generated)))) ($generated@@92 $generated@@30 ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@139 $generated@@140) $generated@@84)) $generated@@31 $generated@@139))
 :pattern ( ($generated@@83 $generated@@30 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@139 $generated@@140) $generated@@84)))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (or (or ($generated@@64 $generated@@141 $generated@@142) (= $generated@@141 $generated@@142)) ($generated@@64 $generated@@142 $generated@@141))
 :pattern ( ($generated@@64 $generated@@141 $generated@@142) ($generated@@64 $generated@@142 $generated@@141))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> (or (not (= $generated@@143 $generated@@145)) (not true)) (=> (and ($generated@@25 $generated@@143 $generated@@144) ($generated@@25 $generated@@144 $generated@@145)) ($generated@@25 $generated@@143 $generated@@145)))
 :pattern ( ($generated@@25 $generated@@143 $generated@@144) ($generated@@25 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (and (= ($generated@@146 ($generated@@96 $generated@@147 $generated@@148)) $generated@@147) (= ($generated@@23 ($generated@@96 $generated@@147 $generated@@148)) $generated@@148))
 :pattern ( ($generated@@96 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@26 ($generated@@78 $generated@@149) $generated@@150 $generated@@151 $generated@@152) ($generated@@26 $generated@@149 $generated@@150 $generated@@151 $generated@@152))
 :pattern ( ($generated@@26 ($generated@@78 $generated@@149) $generated@@150 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@153 T@U) ) (! (<= 0 ($generated@@70 $generated@@153))
 :pattern ( ($generated@@70 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@T) ) (! (= ($generated@@83 $generated@@155 ($generated@@107 $generated@@155 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@107 $generated@@155 $generated@@154))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (!  (and (and (and (=> ($generated@@64 $generated@@156 $generated@@157) (or (not (= $generated@@156 $generated@@157)) (not true))) (=> (and ($generated@@126 $generated@@156) (not ($generated@@126 $generated@@157))) ($generated@@64 $generated@@156 $generated@@157))) (=> (and ($generated@@126 $generated@@156) ($generated@@126 $generated@@157)) (= ($generated@@64 $generated@@156 $generated@@157) (< ($generated@@70 $generated@@156) ($generated@@70 $generated@@157))))) (=> (and ($generated@@64 $generated@@156 $generated@@157) ($generated@@126 $generated@@157)) ($generated@@126 $generated@@156)))
 :pattern ( ($generated@@64 $generated@@156 $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ) (!  (=> ($generated@@126 $generated@@158) (= $generated@@158 ($generated@@69 ($generated@@70 $generated@@158))))
 :pattern ( ($generated@@70 $generated@@158))
 :pattern ( ($generated@@126 $generated@@158))
)))
(assert (= ($generated@@159 $generated@@31) $generated@@1))
(assert (= ($generated@@160 $generated@@31) $generated@@4))
(assert (= ($generated@@159 $generated@@93) $generated@@2))
(assert (= ($generated@@160 $generated@@93) $generated@@4))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (and ($generated@@126 $generated@@162) (<= ($generated@@70 $generated@@162) ($generated@@70 $generated@@161))) (or (and (= $generated@@162 ($generated@@69 0)) (= ($generated@@68 $generated@@161 $generated@@162) $generated@@161)) (and (or (not (= $generated@@162 ($generated@@69 0))) (not true)) ($generated@@64 ($generated@@68 $generated@@161 $generated@@162) $generated@@161))))
 :pattern ( ($generated@@68 $generated@@161 $generated@@162))
)))
(assert  (=> (<= 1 $generated@@76) (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (and (and ($generated@@27 $generated@@164) ($generated@@29 $generated@@30 $generated@@165 $generated@@31)) (= $generated@@166 ($generated@@69 0))) ($generated@@26 $generated@@163 $generated@@164 $generated@@166 $generated@@165))
 :pattern ( ($generated@@26 $generated@@163 $generated@@164 $generated@@166 $generated@@165))
))))
(assert  (and (forall (($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@167 $generated@@170 $generated@@171 $generated@@172 ($generated@@169 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@176 $generated@@173) $generated@@175 $generated@@176) $generated@@173)
 :weight 0
)) (and (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (!  (or (= $generated@@182 $generated@@184) (= ($generated@@167 $generated@@177 $generated@@178 $generated@@179 ($generated@@169 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@182 $generated@@183 $generated@@180) $generated@@184 $generated@@185) ($generated@@167 $generated@@177 $generated@@178 $generated@@179 $generated@@181 $generated@@184 $generated@@185)))
 :weight 0
)) (forall (($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (!  (or (= $generated@@192 $generated@@194) (= ($generated@@167 $generated@@186 $generated@@187 $generated@@188 ($generated@@169 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@191 $generated@@192 $generated@@189) $generated@@193 $generated@@194) ($generated@@167 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@193 $generated@@194)))
 :weight 0
)))))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (! (= ($generated@@11 ($generated@@167 $generated@@30 $generated@@34 $generated@@7 ($generated@@168 $generated@@195 $generated@@196 $generated@@197 $generated@@198 $generated@@199) $generated@@200 $generated@@201))  (=> (and (or (not (= $generated@@200 $generated@@195)) (not true)) ($generated@@11 ($generated@@83 $generated@@7 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@30 ($generated@@36 $generated@@34 $generated@@35) $generated@@196 $generated@@200) $generated@@197)))) (or (= $generated@@200 $generated@@198) (= $generated@@200 $generated@@199))))
 :pattern ( ($generated@@167 $generated@@30 $generated@@34 $generated@@7 ($generated@@168 $generated@@195 $generated@@196 $generated@@197 $generated@@198 $generated@@199) $generated@@200 $generated@@201))
)))
(assert (forall (($generated@@202 Int) ) (! (= ($generated@@107 $generated@@8 ($generated@@12 ($generated@@85 $generated@@202))) ($generated@@104 $generated@@35 ($generated@@107 $generated@@8 ($generated@@12 $generated@@202))))
 :pattern ( ($generated@@107 $generated@@8 ($generated@@12 ($generated@@85 $generated@@202))))
)))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@T) ) (! (= ($generated@@107 $generated@@204 ($generated@@104 $generated@@204 $generated@@203)) ($generated@@104 $generated@@35 ($generated@@107 $generated@@204 $generated@@203)))
 :pattern ( ($generated@@107 $generated@@204 ($generated@@104 $generated@@204 $generated@@203)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@209  (=> (and (and (= $generated@@205 ($generated@@168 $generated@@32 $generated@@206 $generated $generated@@207 $generated@@208)) (or (not (= $generated@@207 $generated@@32)) (not true))) (and ($generated@@92 $generated@@30 $generated@@207 $generated@@31 $generated@@206) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= $generated@@207 $generated@@32)) (not true)))))
(let (($generated@@210  (=> (and (and (and ($generated@@27 $generated@@206) ($generated@@24 $generated@@206)) (and ($generated@@29 $generated@@30 $generated@@207 $generated@@31) ($generated@@92 $generated@@30 $generated@@207 $generated@@31 $generated@@206))) (and (and ($generated@@29 $generated@@30 $generated@@208 $generated@@31) ($generated@@92 $generated@@30 $generated@@208 $generated@@31 $generated@@206)) (and (= 1 $generated@@76) (= (ControlFlow 0 3) 2)))) $generated@@209)))
$generated@@210)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)