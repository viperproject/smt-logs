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
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@40 (T@U) Int)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 (T@T T@T) T@T)
(declare-fun $generated@@60 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@T) T@T)
(declare-fun $generated@@62 (T@T) T@T)
(declare-fun $generated@@82 (T@U T@U) Bool)
(declare-fun $generated@@86 (Int) Int)
(declare-fun $generated@@88 (T@T T@U) T@U)
(declare-fun $generated@@91 (T@T T@U) T@U)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U T@U) Bool)
(declare-fun $generated@@102 (T@U) Bool)
(declare-fun $generated@@105 (T@U T@U T@U) Bool)
(declare-fun $generated@@127 (T@U Int) T@U)
(declare-fun $generated@@131 () T@T)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@156 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@170 (T@U) T@U)
(declare-fun $generated@@175 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@176 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@177 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (= ($generated@@30 $generated@@3) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@32 $generated@@3) $generated@@4))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (! ($generated@@33 $generated@@16 $generated@@35 $generated@@34 $generated@@36)
 :pattern ( ($generated@@33 $generated@@16 $generated@@35 $generated@@34 $generated@@36))
)))
(assert (forall (($generated@@39 T@U) ) (!  (not ($generated@@37 $generated@@38 $generated@@39))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39))
)))
(assert (= ($generated@@40 $generated@@38) 0))
(assert (= ($generated@@14 $generated@@42) 3))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@46 $generated@@43)  (or (= $generated@@46 $generated@@44) (= ($generated@@45 $generated@@46) $generated@@43)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@46 $generated@@43))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@33 $generated@@42 $generated@@48 $generated@@47 $generated@@49) ($generated@@33 $generated@@42 $generated@@48 $generated@@43 $generated@@49))
 :pattern ( ($generated@@33 $generated@@42 $generated@@48 $generated@@47 $generated@@49))
 :pattern ( ($generated@@33 $generated@@42 $generated@@48 $generated@@43 $generated@@49))
)))
(assert (= ($generated@@30 $generated@@50) 0))
(assert (= ($generated@@51 $generated@@8 $generated@@11) $generated@@50))
(assert  (not ($generated@@52 $generated@@50)))
(assert (= ($generated@@30 $generated@@53) 0))
(assert (= ($generated@@51 $generated@@8 $generated@@12) $generated@@53))
(assert  (not ($generated@@52 $generated@@53)))
(assert (= ($generated@@30 $generated@@54) 0))
(assert (= ($generated@@51 $generated@@8 $generated@@13) $generated@@54))
(assert  (not ($generated@@52 $generated@@54)))
(assert  (and (and (and (and (and (and (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@56 $generated@@63 $generated@@64 ($generated@@60 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@67) $generated@@65)
 :weight 0
)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (or (= $generated@@72 $generated@@73) (= ($generated@@56 $generated@@68 $generated@@69 ($generated@@60 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@70) $generated@@73) ($generated@@56 $generated@@68 $generated@@69 $generated@@71 $generated@@73)))
 :weight 0
))) (= ($generated@@14 $generated@@57) 4)) (= ($generated@@14 $generated@@58) 5)) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (= ($generated@@14 ($generated@@59 $generated@@74 $generated@@75)) 6))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@61 ($generated@@59 $generated@@76 $generated@@77)) $generated@@76)
 :pattern ( ($generated@@59 $generated@@76 $generated@@77))
))) (forall (($generated@@78 T@T) ($generated@@79 T@T) ) (! (= ($generated@@62 ($generated@@59 $generated@@78 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@59 $generated@@78 $generated@@79))
))))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@33 $generated@@42 $generated@@80 $generated@@43 $generated@@81)  (or (= $generated@@80 $generated@@44) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@81 $generated@@80) $generated@@3)))))
 :pattern ( ($generated@@33 $generated@@42 $generated@@80 $generated@@43 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> ($generated@@82 $generated@@83 $generated@@84) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@83 $generated@@85) $generated@@3))) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@84 $generated@@85) $generated@@3))))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@84 $generated@@85) $generated@@3))
)))
 :pattern ( ($generated@@82 $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@87 Int) ) (! (= ($generated@@86 $generated@@87) $generated@@87)
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@88 $generated@@90 $generated@@89) $generated@@89)
 :pattern ( ($generated@@88 $generated@@90 $generated@@89))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@91 $generated@@93 ($generated@@55 $generated@@93 $generated@@92)) $generated@@92)
 :pattern ( ($generated@@55 $generated@@93 $generated@@92))
)))
(assert (= ($generated@@14 $generated@@94) 7))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@41 $generated@@94 $generated@@98 ($generated@@95 $generated@@99)) (forall (($generated@@100 T@U) ) (!  (=> ($generated@@96 $generated@@98 $generated@@100) ($generated@@97 $generated@@100 $generated@@99))
 :pattern ( ($generated@@96 $generated@@98 $generated@@100))
)))
 :pattern ( ($generated@@41 $generated@@94 $generated@@98 ($generated@@95 $generated@@99)))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@41 $generated@@16 $generated@@101 $generated@@34) (<= ($generated@@86 0) ($generated@@21 $generated@@101)))
 :pattern ( ($generated@@41 $generated@@16 $generated@@101 $generated@@34))
)))
(assert ($generated@@52 $generated@@3))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and (and ($generated@@102 $generated@@103) (and (or (not (= $generated@@104 $generated@@44)) (not true)) (= ($generated@@45 $generated@@104) $generated@@43))) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@103 $generated@@104) $generated@@3)))) ($generated@@33 $generated@@15 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@103 $generated@@104) $generated@@53)) $generated $generated@@103))
 :pattern ( ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@103 $generated@@104) $generated@@53)))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@105 ($generated@@91 $generated@@109 $generated@@106) $generated@@107 $generated@@108) ($generated@@33 $generated@@109 $generated@@106 $generated@@107 $generated@@108))
 :pattern ( ($generated@@105 ($generated@@91 $generated@@109 $generated@@106) $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> ($generated@@82 $generated@@110 $generated@@111) (=> ($generated@@105 $generated@@112 $generated@@113 $generated@@110) ($generated@@105 $generated@@112 $generated@@113 $generated@@111)))
 :pattern ( ($generated@@82 $generated@@110 $generated@@111) ($generated@@105 $generated@@112 $generated@@113 $generated@@110))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@T) ) (!  (=> ($generated@@82 $generated@@114 $generated@@115) (=> ($generated@@33 $generated@@118 $generated@@116 $generated@@117 $generated@@114) ($generated@@33 $generated@@118 $generated@@116 $generated@@117 $generated@@115)))
 :pattern ( ($generated@@82 $generated@@114 $generated@@115) ($generated@@33 $generated@@118 $generated@@116 $generated@@117 $generated@@114))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (!  (=> (and ($generated@@102 $generated@@119) (and (or (not (= $generated@@120 $generated@@44)) (not true)) (= ($generated@@45 $generated@@120) $generated@@43))) ($generated@@41 $generated@@16 ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@119 $generated@@120) $generated@@54)) $generated@@34))
 :pattern ( ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@119 $generated@@120) $generated@@54)))
)))
(assert (forall (($generated@@121 T@U) ) (!  (=> ($generated@@97 $generated@@121 $generated@@34) (and (= ($generated@@91 $generated@@16 ($generated@@55 $generated@@16 $generated@@121)) $generated@@121) ($generated@@41 $generated@@16 ($generated@@55 $generated@@16 $generated@@121) $generated@@34)))
 :pattern ( ($generated@@97 $generated@@121 $generated@@34))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> ($generated@@97 $generated@@122 $generated@@47) (and (= ($generated@@91 $generated@@42 ($generated@@55 $generated@@42 $generated@@122)) $generated@@122) ($generated@@41 $generated@@42 ($generated@@55 $generated@@42 $generated@@122) $generated@@47)))
 :pattern ( ($generated@@97 $generated@@122 $generated@@47))
)))
(assert (forall (($generated@@123 T@U) ) (!  (=> ($generated@@97 $generated@@123 $generated@@43) (and (= ($generated@@91 $generated@@42 ($generated@@55 $generated@@42 $generated@@123)) $generated@@123) ($generated@@41 $generated@@42 ($generated@@55 $generated@@42 $generated@@123) $generated@@43)))
 :pattern ( ($generated@@97 $generated@@123 $generated@@43))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@124 $generated@@47)  (and ($generated@@41 $generated@@42 $generated@@124 $generated@@43) (or (not (= $generated@@124 $generated@@44)) (not true))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@124 $generated@@47))
 :pattern ( ($generated@@41 $generated@@42 $generated@@124 $generated@@43))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and (and ($generated@@102 $generated@@125) (and (or (not (= $generated@@126 $generated@@44)) (not true)) (= ($generated@@45 $generated@@126) $generated@@43))) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@125 $generated@@126) $generated@@3)))) ($generated@@33 $generated@@16 ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@125 $generated@@126) $generated@@54)) $generated@@34 $generated@@125))
 :pattern ( ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@125 $generated@@126) $generated@@54)))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@37 $generated@@128 $generated@@129) (exists (($generated@@130 Int) ) (!  (and (and (<= 0 $generated@@130) (< $generated@@130 ($generated@@40 $generated@@128))) (= ($generated@@127 $generated@@128 $generated@@130) $generated@@129))
 :pattern ( ($generated@@127 $generated@@128 $generated@@130))
)))
 :pattern ( ($generated@@37 $generated@@128 $generated@@129))
)))
(assert (= ($generated@@14 $generated@@131) 8))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (and ($generated@@102 $generated@@133) (and (or (not (= $generated@@134 $generated@@44)) (not true)) (= ($generated@@45 $generated@@134) $generated@@43))) ($generated@@41 $generated@@131 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@133 $generated@@134) $generated@@50)) ($generated@@132 $generated@@43)))
 :pattern ( ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@133 $generated@@134) $generated@@50)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and (and ($generated@@102 $generated@@135) (and (or (not (= $generated@@136 $generated@@44)) (not true)) (= ($generated@@45 $generated@@136) $generated@@43))) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@135 $generated@@136) $generated@@3)))) ($generated@@33 $generated@@131 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@135 $generated@@136) $generated@@50)) ($generated@@132 $generated@@43) $generated@@135))
 :pattern ( ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@135 $generated@@136) $generated@@50)))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> (or (not (= $generated@@137 $generated@@139)) (not true)) (=> (and ($generated@@82 $generated@@137 $generated@@138) ($generated@@82 $generated@@138 $generated@@139)) ($generated@@82 $generated@@137 $generated@@139)))
 :pattern ( ($generated@@82 $generated@@137 $generated@@138) ($generated@@82 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (and (= ($generated@@140 ($generated@@51 $generated@@141 $generated@@142)) $generated@@141) (= ($generated@@32 ($generated@@51 $generated@@141 $generated@@142)) $generated@@142))
 :pattern ( ($generated@@51 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (!  (=> ($generated@@97 $generated@@143 $generated) (and (= ($generated@@91 $generated@@15 ($generated@@55 $generated@@15 $generated@@143)) $generated@@143) ($generated@@41 $generated@@15 ($generated@@55 $generated@@15 $generated@@143) $generated)))
 :pattern ( ($generated@@97 $generated@@143 $generated))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@T) ) (! (= ($generated@@97 ($generated@@91 $generated@@146 $generated@@144) $generated@@145) ($generated@@41 $generated@@146 $generated@@144 $generated@@145))
 :pattern ( ($generated@@97 ($generated@@91 $generated@@146 $generated@@144) $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ) (! (<= 0 ($generated@@40 $generated@@147))
 :pattern ( ($generated@@40 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@33 $generated@@94 $generated@@148 ($generated@@95 $generated@@149) $generated@@150) (forall (($generated@@151 T@U) ) (!  (=> ($generated@@96 $generated@@148 $generated@@151) ($generated@@105 $generated@@151 $generated@@149 $generated@@150))
 :pattern ( ($generated@@96 $generated@@148 $generated@@151))
)))
 :pattern ( ($generated@@33 $generated@@94 $generated@@148 ($generated@@95 $generated@@149) $generated@@150))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@33 $generated@@131 $generated@@152 ($generated@@132 $generated@@153) $generated@@154) (forall (($generated@@155 Int) ) (!  (=> (and (<= 0 $generated@@155) (< $generated@@155 ($generated@@40 $generated@@152))) ($generated@@105 ($generated@@127 $generated@@152 $generated@@155) $generated@@153 $generated@@154))
 :pattern ( ($generated@@127 $generated@@152 $generated@@155))
)))
 :pattern ( ($generated@@33 $generated@@131 $generated@@152 ($generated@@132 $generated@@153) $generated@@154))
)))
(assert (forall (($generated@@157 T@U) ) (! (= ($generated@@156 ($generated@@95 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@95 $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ) (! (= ($generated@@31 ($generated@@95 $generated@@158)) $generated@@1)
 :pattern ( ($generated@@95 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ) (! (= ($generated@@159 ($generated@@132 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@132 $generated@@160))
)))
(assert (forall (($generated@@161 T@U) ) (! (= ($generated@@31 ($generated@@132 $generated@@161)) $generated@@2)
 :pattern ( ($generated@@132 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@55 $generated@@163 ($generated@@91 $generated@@163 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@91 $generated@@163 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and ($generated@@102 $generated@@164) (and (or (not (= $generated@@165 $generated@@44)) (not true)) (= ($generated@@45 $generated@@165) $generated@@43))) ($generated@@41 $generated@@15 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@164 $generated@@165) $generated@@53)) $generated))
 :pattern ( ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@164 $generated@@165) $generated@@53)))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (!  (=> ($generated@@97 $generated@@166 ($generated@@95 $generated@@167)) (and (= ($generated@@91 $generated@@94 ($generated@@55 $generated@@94 $generated@@166)) $generated@@166) ($generated@@41 $generated@@94 ($generated@@55 $generated@@94 $generated@@166) ($generated@@95 $generated@@167))))
 :pattern ( ($generated@@97 $generated@@166 ($generated@@95 $generated@@167)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@97 $generated@@168 ($generated@@132 $generated@@169)) (and (= ($generated@@91 $generated@@131 ($generated@@55 $generated@@131 $generated@@168)) $generated@@168) ($generated@@41 $generated@@131 ($generated@@55 $generated@@131 $generated@@168) ($generated@@132 $generated@@169))))
 :pattern ( ($generated@@97 $generated@@168 ($generated@@132 $generated@@169)))
)))
(assert (= ($generated@@31 $generated@@34) $generated@@5))
(assert (= ($generated@@170 $generated@@34) $generated@@9))
(assert (= ($generated@@31 $generated@@47) $generated@@6))
(assert (= ($generated@@170 $generated@@47) $generated@@10))
(assert (= ($generated@@31 $generated@@43) $generated@@7))
(assert (= ($generated@@170 $generated@@43) $generated@@10))
(assert (forall (($generated@@171 Int) ) (! (= ($generated@@91 $generated@@16 ($generated@@20 ($generated@@86 $generated@@171))) ($generated@@88 $generated@@58 ($generated@@91 $generated@@16 ($generated@@20 $generated@@171))))
 :pattern ( ($generated@@91 $generated@@16 ($generated@@20 ($generated@@86 $generated@@171))))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@T) ) (! (= ($generated@@91 $generated@@173 ($generated@@88 $generated@@173 $generated@@172)) ($generated@@88 $generated@@58 ($generated@@91 $generated@@173 $generated@@172)))
 :pattern ( ($generated@@91 $generated@@173 ($generated@@88 $generated@@173 $generated@@172)))
)))
(assert (forall (($generated@@174 T@U) ) (!  (=> (= ($generated@@40 $generated@@174) 0) (= $generated@@174 $generated@@38))
 :pattern ( ($generated@@40 $generated@@174))
)))
(assert  (and (forall (($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@175 $generated@@178 $generated@@179 $generated@@180 ($generated@@177 $generated@@178 $generated@@179 $generated@@180 $generated@@182 $generated@@183 $generated@@184 $generated@@181) $generated@@183 $generated@@184) $generated@@181)
 :weight 0
)) (and (forall (($generated@@185 T@T) ($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (!  (or (= $generated@@190 $generated@@192) (= ($generated@@175 $generated@@185 $generated@@186 $generated@@187 ($generated@@177 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@190 $generated@@191 $generated@@188) $generated@@192 $generated@@193) ($generated@@175 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@192 $generated@@193)))
 :weight 0
)) (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@200 $generated@@202) (= ($generated@@175 $generated@@194 $generated@@195 $generated@@196 ($generated@@177 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@175 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)))))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (! (= ($generated@@19 ($generated@@175 $generated@@42 $generated@@57 $generated@@15 ($generated@@176 $generated@@203 $generated@@204 $generated@@205 $generated@@206) $generated@@207 $generated@@208))  (=> (and (or (not (= $generated@@207 $generated@@203)) (not true)) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@204 $generated@@207) $generated@@205)))) ($generated@@96 $generated@@206 ($generated@@91 $generated@@42 $generated@@207))))
 :pattern ( ($generated@@175 $generated@@42 $generated@@57 $generated@@15 ($generated@@176 $generated@@203 $generated@@204 $generated@@205 $generated@@206) $generated@@207 $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (! ($generated@@33 $generated@@15 $generated@@210 $generated $generated@@209)
 :pattern ( ($generated@@33 $generated@@15 $generated@@210 $generated $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@41 $generated@@131 $generated@@211 ($generated@@132 $generated@@212)) (forall (($generated@@213 Int) ) (!  (=> (and (<= 0 $generated@@213) (< $generated@@213 ($generated@@40 $generated@@211))) ($generated@@97 ($generated@@127 $generated@@211 $generated@@213) $generated@@212))
 :pattern ( ($generated@@127 $generated@@211 $generated@@213))
)))
 :pattern ( ($generated@@41 $generated@@131 $generated@@211 ($generated@@132 $generated@@212)))
)))
(assert (forall (($generated@@214 T@U) ) (! ($generated@@41 $generated@@15 $generated@@214 $generated)
 :pattern ( ($generated@@41 $generated@@15 $generated@@214 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 (T@U) Bool)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () Int)
(declare-fun $generated@@224 () T@U)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@225  (=> (forall (($generated@@226 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@226 $generated@@47) (and (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@226)) (not ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@226) $generated@@53))))) (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@226)) (= ($generated@@21 ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@226) $generated@@54))) ($generated@@86 0)))))
 :pattern ( ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@226) $generated@@54)))
 :pattern ( ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@226) $generated@@53)))
 :pattern ( ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@226)))
)) (=> (and (and (and ($generated@@102 $generated@@217) ($generated@@218 $generated@@217)) (forall (($generated@@227 T@U) ) (!  (=> (and (or (not (= $generated@@227 $generated@@44)) (not true)) ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@227) $generated@@3)))) (or (= ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@217 $generated@@227) ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@227)) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@227))))
 :pattern ( ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@217 $generated@@227))
))) (and ($generated@@82 $generated@@215 $generated@@217) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= $generated@@219 $generated@@44)) (not true))))))
(let (($generated@@228  (=> (and (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@220)) (and (not ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@220) $generated@@53)))) (= ($generated@@21 ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@220) $generated@@54))) ($generated@@86 0)))) (= (ControlFlow 0 4) 2)) $generated@@225)))
(let (($generated@@229  (=> (and ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@220)) (or (not (= $generated@@220 $generated@@44)) (not true))) (=> (and (and (not ($generated@@19 ($generated@@55 $generated@@15 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@220) $generated@@53)))) (or (not (= $generated@@220 $generated@@44)) (not true))) (and (= ($generated@@21 ($generated@@55 $generated@@16 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@220) $generated@@54))) ($generated@@86 0)) (= (ControlFlow 0 3) 2))) $generated@@225))))
(let (($generated@@230  (=> (forall (($generated@@231 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@231 $generated@@47) (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@231)) (forall (($generated@@232 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@232 $generated@@43) (=> ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@231) $generated@@50)) ($generated@@91 $generated@@42 $generated@@232)) (or (= $generated@@232 $generated@@44) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@232)))))
 :pattern ( ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@232)))
 :pattern ( ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@231) $generated@@50)) ($generated@@91 $generated@@42 $generated@@232)))
))))
 :pattern ( ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@231) $generated@@50)))
 :pattern ( ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@231)))
)) (=> (and ($generated@@41 $generated@@42 $generated@@220 $generated@@47) ($generated@@33 $generated@@42 $generated@@220 $generated@@47 $generated@@215)) (and (=> (= (ControlFlow 0 5) 3) $generated@@229) (=> (= (ControlFlow 0 5) 4) $generated@@228))))))
(let (($generated@@233  (=> (and (forall (($generated@@234 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@234 $generated@@43) (=> ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@234)) (or (= $generated@@234 $generated@@44) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@234)))))
 :pattern ( ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@234)))
 :pattern ( ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@234)))
)) (= (ControlFlow 0 7) 5)) $generated@@230)))
(let (($generated@@235  (=> (or (not (= $generated@@222 $generated@@44)) (not true)) (=> (and ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@222)) (= (ControlFlow 0 10) 7)) $generated@@233))))
(let (($generated@@236  (=> (and (= $generated@@222 $generated@@44) (= (ControlFlow 0 9) 7)) $generated@@233)))
(let (($generated@@237  (=> (and (or (not (= $generated@@221 $generated@@44)) (not true)) ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@222))) (and (=> (= (ControlFlow 0 11) 9) $generated@@236) (=> (= (ControlFlow 0 11) 10) $generated@@235)))))
(let (($generated@@238  (=> (and (=> ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@222)) (or (= $generated@@222 $generated@@44) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@222)))) (= (ControlFlow 0 8) 7)) $generated@@233)))
(let (($generated@@239  (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@221)) (=> (and ($generated@@41 $generated@@42 $generated@@222 $generated@@43) ($generated@@33 $generated@@42 $generated@@222 $generated@@43 $generated@@215)) (and (=> (= (ControlFlow 0 12) 11) $generated@@237) (=> (= (ControlFlow 0 12) 8) $generated@@238))))))
(let (($generated@@240  (=> (and (=> ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@221)) (forall (($generated@@241 T@U) ) (!  (=> ($generated@@41 $generated@@42 $generated@@241 $generated@@43) (=> ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@241)) (or (= $generated@@241 $generated@@44) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@241)))))
 :pattern ( ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@241)))
 :pattern ( ($generated@@37 ($generated@@55 $generated@@131 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@42 ($generated@@59 $generated@@57 $generated@@58) $generated@@215 $generated@@221) $generated@@50)) ($generated@@91 $generated@@42 $generated@@241)))
))) (= (ControlFlow 0 6) 5)) $generated@@230)))
(let (($generated@@242  (=> (and (and ($generated@@102 $generated@@215) ($generated@@218 $generated@@215)) (and ($generated@@41 $generated@@42 $generated@@219 $generated@@47) ($generated@@33 $generated@@42 $generated@@219 $generated@@47 $generated@@215))) (=> (and (and (and ($generated@@41 $generated@@94 $generated@@216 ($generated@@95 $generated@@47)) ($generated@@33 $generated@@94 $generated@@216 ($generated@@95 $generated@@47) $generated@@215)) (= 4 $generated@@223)) (and (and (= $generated@@224 ($generated@@176 $generated@@44 $generated@@215 $generated@@3 $generated@@216)) ($generated@@96 $generated@@216 ($generated@@91 $generated@@42 $generated@@219))) (and ($generated@@41 $generated@@42 $generated@@221 $generated@@47) ($generated@@33 $generated@@42 $generated@@221 $generated@@47 $generated@@215)))) (and (=> (= (ControlFlow 0 13) 12) $generated@@239) (=> (= (ControlFlow 0 13) 6) $generated@@240))))))
$generated@@242)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)