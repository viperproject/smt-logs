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
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 (T@U Int) T@U)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@27 (T@U Int) T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@32 () Int)
(declare-fun $generated@@33 (T@U T@U) T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@U Int) T@U)
(declare-fun $generated@@42 (Int) Int)
(declare-fun $generated@@50 (T@U T@U) Bool)
(declare-fun $generated@@54 (T@U T@U Int) Int)
(declare-fun $generated@@55 (T@U Int) Bool)
(declare-fun $generated@@56 (Int Int) Int)
(declare-fun $generated@@65 (T@U T@U) Bool)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@U) Int)
(declare-fun $generated@@79 (T@U T@U T@U) Bool)
(declare-fun $generated@@80 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@127 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@128 () T@T)
(declare-fun $generated@@129 () T@T)
(declare-fun $generated@@130 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@131 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@132 () T@T)
(declare-fun $generated@@133 (T@T T@T) T@T)
(declare-fun $generated@@134 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@135 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@136 (T@T) T@T)
(declare-fun $generated@@137 (T@T) T@T)
(declare-fun $generated@@186 (T@U) T@U)
(declare-fun $generated@@187 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (= ($generated@@19 $generated) $generated@@0))
(assert (= ($generated@@20 $generated@@21) 0))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 Int) ) (!  (=> (and (<= 0 $generated@@26) (<= $generated@@26 ($generated@@20 $generated@@24))) (= ($generated@@22 ($generated@@23 $generated@@24 $generated@@25) $generated@@26) ($generated@@23 ($generated@@22 $generated@@24 $generated@@26) $generated@@25)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@24 $generated@@25) $generated@@26))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (= $generated@@31 ($generated@@20 $generated@@29)) (and (= ($generated@@27 ($generated@@28 $generated@@29 $generated@@30) $generated@@31) $generated@@29) (= ($generated@@22 ($generated@@28 $generated@@29 $generated@@30) $generated@@31) $generated@@30)))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@29 $generated@@30) $generated@@31))
 :pattern ( ($generated@@22 ($generated@@28 $generated@@29 $generated@@30) $generated@@31))
)))
(assert (= ($generated@@3 $generated@@36) 3))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@43 T@U) ($generated@@44 T@U) ) (!  (=> (or ($generated@@37 ($generated@@35 $generated@@36 $generated@@44)) (and (< 0 $generated@@32) ($generated@@38 $generated@@36 $generated@@44 ($generated@@39 $generated)))) (and (=> (and (or (not (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 ($generated@@35 $generated@@36 $generated@@44) (- ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 1)))) ($generated@@42 0))) ($generated@@37 ($generated@@27 ($generated@@35 $generated@@36 $generated@@44) (- ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 1)))) (= ($generated@@33 ($generated@@34 $generated@@43) ($generated@@35 $generated@@36 $generated@@44)) (ite  (and (or (not (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 ($generated@@35 $generated@@36 $generated@@44) (- ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 1)))) ($generated@@42 0))) ($generated@@33 ($generated@@34 $generated@@43) ($generated@@27 ($generated@@35 $generated@@36 $generated@@44) (- ($generated@@20 ($generated@@35 $generated@@36 $generated@@44)) 1))) $generated@@44))))
 :weight 3
 :pattern ( ($generated@@33 ($generated@@34 $generated@@43) ($generated@@35 $generated@@36 $generated@@44)))
))))
(assert (forall (($generated@@45 T@U) ($generated@@46 Int) ) (!  (=> (= $generated@@46 0) (= ($generated@@22 $generated@@45 $generated@@46) $generated@@45))
 :pattern ( ($generated@@22 $generated@@45 $generated@@46))
)))
(assert (forall (($generated@@47 Int) ) (! (= ($generated@@42 $generated@@47) $generated@@47)
 :pattern ( ($generated@@42 $generated@@47))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@T) ) (! (= ($generated@@35 $generated@@49 $generated@@48) $generated@@48)
 :pattern ( ($generated@@35 $generated@@49 $generated@@48))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> (and ($generated@@38 $generated@@36 $generated@@51 ($generated@@39 $generated@@53)) ($generated@@50 $generated@@52 $generated@@53)) ($generated@@38 $generated@@36 ($generated@@23 $generated@@51 $generated@@52) ($generated@@39 $generated@@53)))
 :pattern ( ($generated@@38 $generated@@36 ($generated@@23 $generated@@51 $generated@@52) ($generated@@39 $generated@@53)))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 Int) ) (!  (=> (or ($generated@@55 ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 $generated@@59)) (and (< 0 $generated@@32) (and ($generated@@38 $generated@@36 $generated@@58 ($generated@@39 $generated)) (<= ($generated@@42 2) ($generated@@42 $generated@@59))))) (and (=> (or (not (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@58)) ($generated@@42 0))) (not true)) ($generated@@55 ($generated@@35 $generated@@36 ($generated@@22 ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 1))) ($generated@@42 $generated@@59))) (= ($generated@@54 ($generated@@34 $generated@@57) ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 $generated@@59)) (ite (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@58)) ($generated@@42 0)) 0 (+ ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 0)))) ($generated@@56 ($generated@@42 $generated@@59) ($generated@@42 ($generated@@54 ($generated@@34 $generated@@57) ($generated@@35 $generated@@36 ($generated@@22 ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 1))) ($generated@@42 $generated@@59)))))))))
 :weight 3
 :pattern ( ($generated@@54 ($generated@@34 $generated@@57) ($generated@@35 $generated@@36 $generated@@58) ($generated@@42 $generated@@59)))
))))
(assert (forall (($generated@@60 T@U) ($generated@@61 Int) ($generated@@62 Int) ) (!  (=> (and (and (<= 0 $generated@@62) (< $generated@@62 $generated@@61)) (< $generated@@62 ($generated@@20 $generated@@60))) (= ($generated@@41 ($generated@@27 $generated@@60 $generated@@61) $generated@@62) ($generated@@41 $generated@@60 $generated@@62)))
 :weight 25
 :pattern ( ($generated@@41 ($generated@@27 $generated@@60 $generated@@61) $generated@@62))
 :pattern ( ($generated@@41 $generated@@60 $generated@@62) ($generated@@27 $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 Int) ) (!  (=> (and (<= 0 $generated@@64) (<= $generated@@64 ($generated@@20 $generated@@63))) (= ($generated@@20 ($generated@@22 $generated@@63 $generated@@64)) (- ($generated@@20 $generated@@63) $generated@@64)))
 :pattern ( ($generated@@20 ($generated@@22 $generated@@63 $generated@@64)))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@65 $generated@@66 $generated@@67)  (and (= ($generated@@20 $generated@@66) ($generated@@20 $generated@@67)) (forall (($generated@@68 Int) ) (!  (=> (and (<= 0 $generated@@68) (< $generated@@68 ($generated@@20 $generated@@66))) (= ($generated@@41 $generated@@66 $generated@@68) ($generated@@41 $generated@@67 $generated@@68)))
 :pattern ( ($generated@@41 $generated@@66 $generated@@68))
 :pattern ( ($generated@@41 $generated@@67 $generated@@68))
))))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 ($generated@@40 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@40 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 Int) ) (!  (=> (and (<= 0 $generated@@74) (< $generated@@74 ($generated@@20 $generated@@73))) (< ($generated@@72 ($generated@@27 $generated@@73 $generated@@74)) ($generated@@72 $generated@@73)))
 :pattern ( ($generated@@72 ($generated@@27 $generated@@73 $generated@@74)))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 Int) ) (!  (=> (and (< 0 $generated@@76) (<= $generated@@76 ($generated@@20 $generated@@75))) (< ($generated@@72 ($generated@@22 $generated@@75 $generated@@76)) ($generated@@72 $generated@@75)))
 :pattern ( ($generated@@72 ($generated@@22 $generated@@75 $generated@@76)))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@20 ($generated@@23 $generated@@77 $generated@@78)) (+ 1 ($generated@@20 $generated@@77)))
 :pattern ( ($generated@@23 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@79 ($generated@@69 $generated@@84 $generated@@81) $generated@@82 $generated@@83) ($generated@@80 $generated@@84 $generated@@81 $generated@@82 $generated@@83))
 :pattern ( ($generated@@79 ($generated@@69 $generated@@84 $generated@@81) $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 Int) ($generated@@87 Int) ) (!  (=> (and (and (<= 0 $generated@@86) (<= 0 $generated@@87)) (< $generated@@87 (- ($generated@@20 $generated@@85) $generated@@86))) (= ($generated@@41 ($generated@@22 $generated@@85 $generated@@86) $generated@@87) ($generated@@41 $generated@@85 (+ $generated@@87 $generated@@86))))
 :weight 25
 :pattern ( ($generated@@41 ($generated@@22 $generated@@85 $generated@@86) $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@20 ($generated@@28 $generated@@88 $generated@@89)) (+ ($generated@@20 $generated@@88) ($generated@@20 $generated@@89)))
 :pattern ( ($generated@@20 ($generated@@28 $generated@@88 $generated@@89)))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 Int) ($generated@@92 T@U) ) (!  (and (=> (= $generated@@91 ($generated@@20 $generated@@90)) (= ($generated@@41 ($generated@@23 $generated@@90 $generated@@92) $generated@@91) $generated@@92)) (=> (or (not (= $generated@@91 ($generated@@20 $generated@@90))) (not true)) (= ($generated@@41 ($generated@@23 $generated@@90 $generated@@92) $generated@@91) ($generated@@41 $generated@@90 $generated@@91))))
 :pattern ( ($generated@@41 ($generated@@23 $generated@@90 $generated@@92) $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 Int) ) (! (= ($generated@@54 ($generated@@34 $generated@@93) $generated@@94 $generated@@95) ($generated@@54 $generated@@93 $generated@@94 $generated@@95))
 :pattern ( ($generated@@54 ($generated@@34 $generated@@93) $generated@@94 $generated@@95))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (or ($generated@@37 $generated@@97) (and (< 0 $generated@@32) ($generated@@38 $generated@@36 $generated@@97 ($generated@@39 $generated)))) (and (=> (and (or (not (= ($generated@@20 $generated@@97) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 $generated@@97 (- ($generated@@20 $generated@@97) 1)))) ($generated@@42 0))) ($generated@@37 ($generated@@27 $generated@@97 (- ($generated@@20 $generated@@97) 1)))) (= ($generated@@33 ($generated@@34 $generated@@96) $generated@@97) (ite  (and (or (not (= ($generated@@20 $generated@@97) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 $generated@@97 (- ($generated@@20 $generated@@97) 1)))) ($generated@@42 0))) ($generated@@33 $generated@@96 ($generated@@27 $generated@@97 (- ($generated@@20 $generated@@97) 1))) $generated@@97))))
 :pattern ( ($generated@@33 ($generated@@34 $generated@@96) $generated@@97))
))))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> ($generated@@65 $generated@@98 $generated@@99) (= $generated@@98 $generated@@99))
 :pattern ( ($generated@@65 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 Int) ) (!  (=> (and (<= 0 $generated@@101) (<= $generated@@101 ($generated@@20 $generated@@100))) (= ($generated@@20 ($generated@@27 $generated@@100 $generated@@101)) $generated@@101))
 :pattern ( ($generated@@20 ($generated@@27 $generated@@100 $generated@@101)))
)))
(assert (forall (($generated@@102 T@U) ) (!  (=> ($generated@@50 $generated@@102 $generated) (and (= ($generated@@69 $generated@@5 ($generated@@40 $generated@@5 $generated@@102)) $generated@@102) ($generated@@38 $generated@@5 ($generated@@40 $generated@@5 $generated@@102) $generated)))
 :pattern ( ($generated@@50 $generated@@102 $generated))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@50 ($generated@@69 $generated@@105 $generated@@103) $generated@@104) ($generated@@38 $generated@@105 $generated@@103 $generated@@104))
 :pattern ( ($generated@@50 ($generated@@69 $generated@@105 $generated@@103) $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ) (! (<= 0 ($generated@@20 $generated@@106))
 :pattern ( ($generated@@20 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 Int) ($generated@@109 Int) ) (!  (=> (and (and (<= 0 $generated@@108) (< $generated@@108 $generated@@109)) (<= $generated@@109 ($generated@@20 $generated@@107))) (< ($generated@@72 ($generated@@28 ($generated@@27 $generated@@107 $generated@@108) ($generated@@22 $generated@@107 $generated@@109))) ($generated@@72 $generated@@107)))
 :pattern ( ($generated@@72 ($generated@@28 ($generated@@27 $generated@@107 $generated@@108) ($generated@@22 $generated@@107 $generated@@109))))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@80 $generated@@36 $generated@@110 ($generated@@39 $generated@@111) $generated@@112) (forall (($generated@@113 Int) ) (!  (=> (and (<= 0 $generated@@113) (< $generated@@113 ($generated@@20 $generated@@110))) ($generated@@79 ($generated@@41 $generated@@110 $generated@@113) $generated@@111 $generated@@112))
 :pattern ( ($generated@@41 $generated@@110 $generated@@113))
)))
 :pattern ( ($generated@@80 $generated@@36 $generated@@110 ($generated@@39 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@114 ($generated@@39 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@39 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@19 ($generated@@39 $generated@@116)) $generated@@1)
 :pattern ( ($generated@@39 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@40 $generated@@118 ($generated@@69 $generated@@118 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@69 $generated@@118 $generated@@117))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 Int) ) (!  (=> (or ($generated@@55 $generated@@120 $generated@@121) (and (< 0 $generated@@32) (and ($generated@@38 $generated@@36 $generated@@120 ($generated@@39 $generated)) (<= ($generated@@42 2) $generated@@121)))) (and (=> (or (not (= ($generated@@20 $generated@@120) ($generated@@42 0))) (not true)) ($generated@@55 ($generated@@22 $generated@@120 ($generated@@42 1)) $generated@@121)) (= ($generated@@54 ($generated@@34 $generated@@119) $generated@@120 $generated@@121) (ite (= ($generated@@20 $generated@@120) ($generated@@42 0)) 0 (+ ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 $generated@@120 ($generated@@42 0)))) ($generated@@56 $generated@@121 ($generated@@54 $generated@@119 ($generated@@22 $generated@@120 ($generated@@42 1)) $generated@@121)))))))
 :pattern ( ($generated@@54 ($generated@@34 $generated@@119) $generated@@120 $generated@@121))
))))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 Int) ) (!  (=> (or ($generated@@55 ($generated@@35 $generated@@36 $generated@@123) $generated@@124) (and (< 0 $generated@@32) (and ($generated@@38 $generated@@36 $generated@@123 ($generated@@39 $generated)) (<= ($generated@@42 2) $generated@@124)))) (and (=> (or (not (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@123)) ($generated@@42 0))) (not true)) ($generated@@55 ($generated@@35 $generated@@36 ($generated@@22 ($generated@@35 $generated@@36 $generated@@123) ($generated@@42 1))) $generated@@124)) (= ($generated@@54 ($generated@@34 $generated@@122) ($generated@@35 $generated@@36 $generated@@123) $generated@@124) (ite (= ($generated@@20 ($generated@@35 $generated@@36 $generated@@123)) ($generated@@42 0)) 0 (+ ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 ($generated@@35 $generated@@36 $generated@@123) ($generated@@42 0)))) ($generated@@56 $generated@@124 ($generated@@54 ($generated@@34 $generated@@122) ($generated@@35 $generated@@36 ($generated@@22 ($generated@@35 $generated@@36 $generated@@123) ($generated@@42 1))) $generated@@124)))))))
 :weight 3
 :pattern ( ($generated@@54 ($generated@@34 $generated@@122) ($generated@@35 $generated@@36 $generated@@123) $generated@@124))
))))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@33 ($generated@@34 $generated@@125) $generated@@126) ($generated@@33 $generated@@125 $generated@@126))
 :pattern ( ($generated@@33 ($generated@@34 $generated@@125) $generated@@126))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@127 $generated@@138 $generated@@139 $generated@@140 ($generated@@134 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@143 $generated@@144) $generated@@141)
 :weight 0
)) (and (forall (($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (!  (or (= $generated@@150 $generated@@152) (= ($generated@@127 $generated@@145 $generated@@146 $generated@@147 ($generated@@134 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@151 $generated@@148) $generated@@152 $generated@@153) ($generated@@127 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@152 $generated@@153)))
 :weight 0
)) (forall (($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@T) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (!  (or (= $generated@@160 $generated@@162) (= ($generated@@127 $generated@@154 $generated@@155 $generated@@156 ($generated@@134 $generated@@154 $generated@@155 $generated@@156 $generated@@158 $generated@@159 $generated@@160 $generated@@157) $generated@@161 $generated@@162) ($generated@@127 $generated@@154 $generated@@155 $generated@@156 $generated@@158 $generated@@161 $generated@@162)))
 :weight 0
)))) (= ($generated@@3 $generated@@128) 4)) (= ($generated@@3 $generated@@129) 5)) (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@131 $generated@@163 $generated@@164 ($generated@@135 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@165) $generated@@167) $generated@@165)
 :weight 0
))) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (!  (or (= $generated@@172 $generated@@173) (= ($generated@@131 $generated@@168 $generated@@169 ($generated@@135 $generated@@168 $generated@@169 $generated@@171 $generated@@172 $generated@@170) $generated@@173) ($generated@@131 $generated@@168 $generated@@169 $generated@@171 $generated@@173)))
 :weight 0
))) (= ($generated@@3 $generated@@132) 6)) (forall (($generated@@174 T@T) ($generated@@175 T@T) ) (= ($generated@@3 ($generated@@133 $generated@@174 $generated@@175)) 7))) (forall (($generated@@176 T@T) ($generated@@177 T@T) ) (! (= ($generated@@136 ($generated@@133 $generated@@176 $generated@@177)) $generated@@176)
 :pattern ( ($generated@@133 $generated@@176 $generated@@177))
))) (forall (($generated@@178 T@T) ($generated@@179 T@T) ) (! (= ($generated@@137 ($generated@@133 $generated@@178 $generated@@179)) $generated@@179)
 :pattern ( ($generated@@133 $generated@@178 $generated@@179))
))))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 Bool) ($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@8 ($generated@@127 $generated@@128 $generated@@129 $generated@@4 ($generated@@130 $generated@@180 $generated@@181 $generated@@182 $generated@@183) $generated@@184 $generated@@185))  (=> (and (or (not (= $generated@@184 $generated@@180)) (not true)) ($generated@@8 ($generated@@40 $generated@@4 ($generated@@131 $generated@@129 $generated@@132 ($generated@@131 $generated@@128 ($generated@@133 $generated@@129 $generated@@132) $generated@@181 $generated@@184) $generated@@182)))) $generated@@183))
 :pattern ( ($generated@@127 $generated@@128 $generated@@129 $generated@@4 ($generated@@130 $generated@@180 $generated@@181 $generated@@182 $generated@@183) $generated@@184 $generated@@185))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ) (!  (and (= ($generated@@186 ($generated@@23 $generated@@188 $generated@@189)) $generated@@188) (= ($generated@@187 ($generated@@23 $generated@@188 $generated@@189)) $generated@@189))
 :pattern ( ($generated@@23 $generated@@188 $generated@@189))
)))
(assert (forall (($generated@@190 Int) ($generated@@191 Int) ) (! (= ($generated@@56 $generated@@190 $generated@@191) (* $generated@@190 $generated@@191))
 :pattern ( ($generated@@56 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> ($generated@@50 $generated@@192 ($generated@@39 $generated@@193)) (and (= ($generated@@69 $generated@@36 ($generated@@40 $generated@@36 $generated@@192)) $generated@@192) ($generated@@38 $generated@@36 ($generated@@40 $generated@@36 $generated@@192) ($generated@@39 $generated@@193))))
 :pattern ( ($generated@@50 $generated@@192 ($generated@@39 $generated@@193)))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 Int) ($generated@@196 Int) ) (!  (=> (and (and (<= 0 $generated@@195) (<= $generated@@195 $generated@@196)) (< $generated@@196 ($generated@@20 $generated@@194))) (= ($generated@@41 ($generated@@22 $generated@@194 $generated@@195) (- $generated@@196 $generated@@195)) ($generated@@41 $generated@@194 $generated@@196)))
 :weight 25
 :pattern ( ($generated@@41 $generated@@194 $generated@@196) ($generated@@22 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 Int) ($generated@@199 Int) ) (!  (=> (and (and (<= 0 $generated@@198) (<= 0 $generated@@199)) (<= (+ $generated@@198 $generated@@199) ($generated@@20 $generated@@197))) (= ($generated@@22 ($generated@@22 $generated@@197 $generated@@198) $generated@@199) ($generated@@22 $generated@@197 (+ $generated@@198 $generated@@199))))
 :pattern ( ($generated@@22 ($generated@@22 $generated@@197 $generated@@198) $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 Int) ) (!  (and (=> (< $generated@@202 ($generated@@20 $generated@@200)) (= ($generated@@41 ($generated@@28 $generated@@200 $generated@@201) $generated@@202) ($generated@@41 $generated@@200 $generated@@202))) (=> (<= ($generated@@20 $generated@@200) $generated@@202) (= ($generated@@41 ($generated@@28 $generated@@200 $generated@@201) $generated@@202) ($generated@@41 $generated@@201 (- $generated@@202 ($generated@@20 $generated@@200))))))
 :pattern ( ($generated@@41 ($generated@@28 $generated@@200 $generated@@201) $generated@@202))
)))
(assert (forall (($generated@@203 Int) ) (! (= ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 $generated@@203))) ($generated@@35 $generated@@132 ($generated@@69 $generated@@5 ($generated@@9 $generated@@203))))
 :pattern ( ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 $generated@@203))))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@T) ) (! (= ($generated@@69 $generated@@205 ($generated@@35 $generated@@205 $generated@@204)) ($generated@@35 $generated@@132 ($generated@@69 $generated@@205 $generated@@204)))
 :pattern ( ($generated@@69 $generated@@205 ($generated@@35 $generated@@205 $generated@@204)))
)))
(assert (forall (($generated@@206 T@U) ) (!  (=> (= ($generated@@20 $generated@@206) 0) (= $generated@@206 $generated@@21))
 :pattern ( ($generated@@20 $generated@@206))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 Int) ) (!  (=> (= $generated@@208 0) (= ($generated@@27 $generated@@207 $generated@@208) $generated@@21))
 :pattern ( ($generated@@27 $generated@@207 $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (! ($generated@@80 $generated@@5 $generated@@210 $generated $generated@@209)
 :pattern ( ($generated@@80 $generated@@5 $generated@@210 $generated $generated@@209))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (or ($generated@@37 $generated@@212) (and (< 0 $generated@@32) ($generated@@38 $generated@@36 $generated@@212 ($generated@@39 $generated)))) ($generated@@38 $generated@@36 ($generated@@33 $generated@@211 $generated@@212) ($generated@@39 $generated)))
 :pattern ( ($generated@@33 $generated@@211 $generated@@212))
))))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (! (= ($generated@@38 $generated@@36 $generated@@213 ($generated@@39 $generated@@214)) (forall (($generated@@215 Int) ) (!  (=> (and (<= 0 $generated@@215) (< $generated@@215 ($generated@@20 $generated@@213))) ($generated@@50 ($generated@@41 $generated@@213 $generated@@215) $generated@@214))
 :pattern ( ($generated@@41 $generated@@213 $generated@@215))
)))
 :pattern ( ($generated@@38 $generated@@36 $generated@@213 ($generated@@39 $generated@@214)))
)))
(assert (forall (($generated@@216 T@U) ) (! ($generated@@38 $generated@@5 $generated@@216 $generated)
 :pattern ( ($generated@@38 $generated@@5 $generated@@216 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () Int)
(declare-fun $generated@@220 () Int)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 (T@U) Bool)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 (T@U) Bool)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@229  (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@54 ($generated@@34 ($generated@@34 $generated@@217)) $generated@@218 $generated@@219) ($generated@@54 ($generated@@34 ($generated@@34 $generated@@217)) ($generated@@33 ($generated@@34 ($generated@@34 $generated@@217)) $generated@@218) $generated@@219)))))
(let (($generated@@230  (=> (and (not (and (or (not (= ($generated@@20 $generated@@218) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 $generated@@218 $generated@@220))) ($generated@@42 0)))) (= (ControlFlow 0 8) 2)) $generated@@229)))
(let (($generated@@231  (=> (and (or (not (= ($generated@@20 $generated@@218) 0)) (not true)) (= ($generated@@10 ($generated@@40 $generated@@5 ($generated@@41 $generated@@218 $generated@@220))) ($generated@@42 0))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (and (<= 0 $generated@@220) (<= $generated@@220 ($generated@@20 $generated@@218)))) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($generated@@65 $generated@@218 ($generated@@28 ($generated@@27 $generated@@218 $generated@@220) ($generated@@23 $generated@@21 ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 0))))))) (=> ($generated@@65 $generated@@218 ($generated@@28 ($generated@@27 $generated@@218 $generated@@220) ($generated@@23 $generated@@21 ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 0)))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 $generated@@220) (<= $generated@@220 ($generated@@20 $generated@@218)))) (=> (and (<= 0 $generated@@220) (<= $generated@@220 ($generated@@20 $generated@@218))) (=> (= $generated@@221 ($generated@@27 $generated@@218 $generated@@220)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= ($generated@@42 2) $generated@@219)) (=> (<= ($generated@@42 2) $generated@@219) (=> (and ($generated@@222 $generated@@223) ($generated@@224 $generated@@223)) (=> (and (and (and ($generated@@55 $generated@@221 $generated@@219) ($generated@@55 ($generated@@28 $generated@@221 ($generated@@23 $generated@@21 ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 0))))) $generated@@219)) (= ($generated@@54 ($generated@@34 ($generated@@34 $generated@@217)) $generated@@221 $generated@@219) ($generated@@54 ($generated@@34 ($generated@@34 $generated@@217)) ($generated@@28 $generated@@221 ($generated@@23 $generated@@21 ($generated@@69 $generated@@5 ($generated@@9 ($generated@@42 0))))) $generated@@219))) (and (= $generated@@225 $generated@@223) (= (ControlFlow 0 3) 2))) $generated@@229)))))))))))))
(let (($generated@@232  (and (=> (= (ControlFlow 0 9) 3) $generated@@231) (=> (= (ControlFlow 0 9) 8) $generated@@230))))
(let (($generated@@233  (=> (and (= ($generated@@20 $generated@@218) 0) (= (ControlFlow 0 12) 9)) $generated@@232)))
(let (($generated@@234  (=> (or (not (= ($generated@@20 $generated@@218) 0)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 $generated@@220) (< $generated@@220 ($generated@@20 $generated@@218)))) (=> (and (<= 0 $generated@@220) (< $generated@@220 ($generated@@20 $generated@@218))) (=> (= (ControlFlow 0 10) 9) $generated@@232))))))
(let (($generated@@235  (=> (= $generated@@226 ($generated@@130 $generated@@227 $generated@@228 $generated@@2 false)) (=> (and (and (and ($generated@@222 $generated@@225) ($generated@@224 $generated@@225)) (= $generated@@228 $generated@@225)) (and (forall (($generated@@236 T@U) ($generated@@237 Int) ) (!  (=> (and (and ($generated@@38 $generated@@36 $generated@@236 ($generated@@39 $generated)) (<= ($generated@@42 2) $generated@@237)) (or (< ($generated@@72 $generated@@236) ($generated@@72 $generated@@218)) (and (= ($generated@@72 $generated@@236) ($generated@@72 $generated@@218)) (and (<= 0 $generated@@237) (< $generated@@237 $generated@@219))))) (= ($generated@@54 ($generated@@34 $generated@@217) $generated@@236 $generated@@237) ($generated@@54 ($generated@@34 $generated@@217) ($generated@@33 ($generated@@34 $generated@@217) $generated@@236) $generated@@237)))
 :pattern ( ($generated@@54 ($generated@@34 $generated@@217) ($generated@@33 ($generated@@34 $generated@@217) $generated@@236) $generated@@237))
)) (= $generated@@220 (- ($generated@@20 $generated@@218) 1)))) (and (=> (= (ControlFlow 0 13) 10) $generated@@234) (=> (= (ControlFlow 0 13) 12) $generated@@233))))))
(let (($generated@@238  (=> (and ($generated@@222 $generated@@228) ($generated@@224 $generated@@228)) (=> (and (and (and ($generated@@38 $generated@@36 $generated@@218 ($generated@@39 $generated)) ($generated@@80 $generated@@36 $generated@@218 ($generated@@39 $generated) $generated@@228)) (= 2 $generated@@32)) (and (<= ($generated@@42 2) $generated@@219) (= (ControlFlow 0 14) 13))) $generated@@235))))
$generated@@238)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)