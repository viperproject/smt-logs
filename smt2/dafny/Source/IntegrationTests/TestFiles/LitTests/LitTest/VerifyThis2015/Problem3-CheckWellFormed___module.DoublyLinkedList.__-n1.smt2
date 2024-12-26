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
(declare-fun $generated@@13 (T@T) Int)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 (Bool) T@U)
(declare-fun $generated@@18 (T@U) Bool)
(declare-fun $generated@@19 (Int) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (Real) T@U)
(declare-fun $generated@@22 (T@U) Real)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@41 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 (T@U T@U) T@U)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@52 () T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@T T@T) T@T)
(declare-fun $generated@@58 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@T) T@T)
(declare-fun $generated@@82 (T@U T@U) Bool)
(declare-fun $generated@@86 (Int) Int)
(declare-fun $generated@@88 (T@T T@U) T@U)
(declare-fun $generated@@91 (T@U T@U) Bool)
(declare-fun $generated@@92 (T@U Int) T@U)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@99 (T@U T@U T@U) Bool)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@118 (T@U) Bool)
(declare-fun $generated@@119 (T@U T@U) Bool)
(declare-fun $generated@@120 () T@T)
(declare-fun $generated@@127 (T@U T@U) Bool)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@161 (T@U) T@U)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@168 () Int)
(declare-fun $generated@@169 (T@U T@U) Bool)
(declare-fun $generated@@180 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@U T@U T@U Int Int T@U) T@U)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@13 $generated@@14) 0) (= ($generated@@13 $generated@@15) 1)) (= ($generated@@13 $generated@@16) 2)) (forall (($generated@@23 Bool) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Int) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Real) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12)
)
(assert (= ($generated@@29 $generated@@0) 0))
(assert (= ($generated@@30 $generated@@0) $generated@@1))
(assert (= ($generated@@31 $generated@@32) 0))
(assert (= ($generated@@13 $generated@@34) 3))
(assert (forall (($generated@@38 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@38 $generated@@35)  (or (= $generated@@38 $generated@@36) (= ($generated@@37 $generated@@38) $generated@@35)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@38 $generated@@35))
)))
(assert (forall (($generated@@40 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@40 $generated@@39)  (or (= $generated@@40 $generated@@36) (= ($generated@@37 $generated@@40) $generated@@39)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@40 $generated@@39))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@41 $generated@@34 $generated@@43 $generated@@42 $generated@@44) ($generated@@41 $generated@@34 $generated@@43 $generated@@35 $generated@@44))
 :pattern ( ($generated@@41 $generated@@34 $generated@@43 $generated@@42 $generated@@44))
 :pattern ( ($generated@@41 $generated@@34 $generated@@43 $generated@@35 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@41 $generated@@34 $generated@@46 $generated@@45 $generated@@47) ($generated@@41 $generated@@34 $generated@@46 $generated@@39 $generated@@47))
 :pattern ( ($generated@@41 $generated@@34 $generated@@46 $generated@@45 $generated@@47))
 :pattern ( ($generated@@41 $generated@@34 $generated@@46 $generated@@39 $generated@@47))
)))
(assert (= ($generated@@29 $generated@@48) 0))
(assert (= ($generated@@49 $generated@@7 $generated@@10) $generated@@48))
(assert ($generated@@50 $generated@@48))
(assert (= ($generated@@29 $generated@@51) 0))
(assert (= ($generated@@49 $generated@@6 $generated@@11) $generated@@51))
(assert  (not ($generated@@50 $generated@@51)))
(assert (= ($generated@@29 $generated@@52) 0))
(assert (= ($generated@@49 $generated@@6 $generated@@12) $generated@@52))
(assert  (not ($generated@@50 $generated@@52)))
(assert  (and (and (and (and (and (and (forall (($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@54 $generated@@61 $generated@@62 ($generated@@58 $generated@@61 $generated@@62 $generated@@64 $generated@@65 $generated@@63) $generated@@65) $generated@@63)
 :weight 0
)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (or (= $generated@@70 $generated@@71) (= ($generated@@54 $generated@@66 $generated@@67 ($generated@@58 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@68) $generated@@71) ($generated@@54 $generated@@66 $generated@@67 $generated@@69 $generated@@71)))
 :weight 0
))) (= ($generated@@13 $generated@@55) 4)) (= ($generated@@13 $generated@@56) 5)) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (= ($generated@@13 ($generated@@57 $generated@@72 $generated@@73)) 6))) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (! (= ($generated@@59 ($generated@@57 $generated@@74 $generated@@75)) $generated@@74)
 :pattern ( ($generated@@57 $generated@@74 $generated@@75))
))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@60 ($generated@@57 $generated@@76 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@57 $generated@@76 $generated@@77))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@41 $generated@@34 $generated@@78 $generated@@35 $generated@@79)  (or (= $generated@@78 $generated@@36) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@79 $generated@@78) $generated@@0)))))
 :pattern ( ($generated@@41 $generated@@34 $generated@@78 $generated@@35 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@41 $generated@@34 $generated@@80 $generated@@39 $generated@@81)  (or (= $generated@@80 $generated@@36) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@81 $generated@@80) $generated@@0)))))
 :pattern ( ($generated@@41 $generated@@34 $generated@@80 $generated@@39 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> ($generated@@82 $generated@@83 $generated@@84) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@83 $generated@@85) $generated@@0))) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@84 $generated@@85) $generated@@0))))
 :pattern ( ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@84 $generated@@85) $generated@@0))
)))
 :pattern ( ($generated@@82 $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@87 Int) ) (! (= ($generated@@86 $generated@@87) $generated@@87)
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@88 $generated@@90 $generated@@89) $generated@@89)
 :pattern ( ($generated@@88 $generated@@90 $generated@@89))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@91 $generated@@93 $generated@@94)  (and (= ($generated@@31 $generated@@93) ($generated@@31 $generated@@94)) (forall (($generated@@95 Int) ) (!  (=> (and (<= 0 $generated@@95) (< $generated@@95 ($generated@@31 $generated@@93))) (= ($generated@@92 $generated@@93 $generated@@95) ($generated@@92 $generated@@94 $generated@@95)))
 :pattern ( ($generated@@92 $generated@@93 $generated@@95))
 :pattern ( ($generated@@92 $generated@@94 $generated@@95))
))))
 :pattern ( ($generated@@91 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@96 $generated@@98 ($generated@@53 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@53 $generated@@98 $generated@@97))
)))
(assert ($generated@@50 $generated@@0))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@99 ($generated@@96 $generated@@103 $generated@@100) $generated@@101 $generated@@102) ($generated@@41 $generated@@103 $generated@@100 $generated@@101 $generated@@102))
 :pattern ( ($generated@@99 ($generated@@96 $generated@@103 $generated@@100) $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> ($generated@@82 $generated@@104 $generated@@105) (=> ($generated@@99 $generated@@106 $generated@@107 $generated@@104) ($generated@@99 $generated@@106 $generated@@107 $generated@@105)))
 :pattern ( ($generated@@82 $generated@@104 $generated@@105) ($generated@@99 $generated@@106 $generated@@107 $generated@@104))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@T) ) (!  (=> ($generated@@82 $generated@@108 $generated@@109) (=> ($generated@@41 $generated@@112 $generated@@110 $generated@@111 $generated@@108) ($generated@@41 $generated@@112 $generated@@110 $generated@@111 $generated@@109)))
 :pattern ( ($generated@@82 $generated@@108 $generated@@109) ($generated@@41 $generated@@112 $generated@@110 $generated@@111 $generated@@108))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (and ($generated@@113 $generated@@114) (and (or (not (= $generated@@115 $generated@@36)) (not true)) (= ($generated@@37 $generated@@115) $generated@@35))) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@114 $generated@@115) $generated@@51)) $generated@@35))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@114 $generated@@115) $generated@@51)))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and ($generated@@113 $generated@@116) (and (or (not (= $generated@@117 $generated@@36)) (not true)) (= ($generated@@37 $generated@@117) $generated@@35))) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@116 $generated@@117) $generated@@52)) $generated@@35))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@116 $generated@@117) $generated@@52)))
)))
(assert (= ($generated@@13 $generated@@120) 7))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (and (and (and ($generated@@113 $generated@@121) ($generated@@113 $generated@@122)) (and (or (not (= $generated@@123 $generated@@36)) (not true)) ($generated@@33 $generated@@34 $generated@@123 $generated@@45))) (and ($generated@@118 $generated@@121) ($generated@@82 $generated@@121 $generated@@122))) (=> (forall (($generated@@124 T@U) ($generated@@125 T@U) )  (=> (and (or (not (= $generated@@124 $generated@@36)) (not true)) (or (= $generated@@124 $generated@@123) (exists (($generated@@126 Int) )  (and (and (<= 0 $generated@@126) (< $generated@@126 ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@121 $generated@@123) $generated@@48))))) (= ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@121 $generated@@123) $generated@@48)) $generated@@126) ($generated@@96 $generated@@34 $generated@@124)))))) (= ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@121 $generated@@124) $generated@@125) ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@122 $generated@@124) $generated@@125)))) (= ($generated@@119 $generated@@121 $generated@@123) ($generated@@119 $generated@@122 $generated@@123))))
 :pattern ( ($generated@@118 $generated@@121) ($generated@@82 $generated@@121 $generated@@122) ($generated@@119 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@128 T@U) ) (!  (=> ($generated@@127 $generated@@128 $generated@@45) (and (= ($generated@@96 $generated@@34 ($generated@@53 $generated@@34 $generated@@128)) $generated@@128) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 $generated@@128) $generated@@45)))
 :pattern ( ($generated@@127 $generated@@128 $generated@@45))
)))
(assert (forall (($generated@@129 T@U) ) (!  (=> ($generated@@127 $generated@@129 $generated@@42) (and (= ($generated@@96 $generated@@34 ($generated@@53 $generated@@34 $generated@@129)) $generated@@129) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 $generated@@129) $generated@@42)))
 :pattern ( ($generated@@127 $generated@@129 $generated@@42))
)))
(assert (forall (($generated@@130 T@U) ) (!  (=> ($generated@@127 $generated@@130 $generated@@39) (and (= ($generated@@96 $generated@@34 ($generated@@53 $generated@@34 $generated@@130)) $generated@@130) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 $generated@@130) $generated@@39)))
 :pattern ( ($generated@@127 $generated@@130 $generated@@39))
)))
(assert (forall (($generated@@131 T@U) ) (!  (=> ($generated@@127 $generated@@131 $generated@@35) (and (= ($generated@@96 $generated@@34 ($generated@@53 $generated@@34 $generated@@131)) $generated@@131) ($generated@@33 $generated@@34 ($generated@@53 $generated@@34 $generated@@131) $generated@@35)))
 :pattern ( ($generated@@127 $generated@@131 $generated@@35))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@132 $generated@@42)  (and ($generated@@33 $generated@@34 $generated@@132 $generated@@35) (or (not (= $generated@@132 $generated@@36)) (not true))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@132 $generated@@42))
 :pattern ( ($generated@@33 $generated@@34 $generated@@132 $generated@@35))
)))
(assert (forall (($generated@@133 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@133 $generated@@45)  (and ($generated@@33 $generated@@34 $generated@@133 $generated@@39) (or (not (= $generated@@133 $generated@@36)) (not true))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@133 $generated@@45))
 :pattern ( ($generated@@33 $generated@@34 $generated@@133 $generated@@39))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (and (and ($generated@@113 $generated@@134) (and (or (not (= $generated@@135 $generated@@36)) (not true)) (= ($generated@@37 $generated@@135) $generated@@35))) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@134 $generated@@135) $generated@@0)))) ($generated@@41 $generated@@34 ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@134 $generated@@135) $generated@@51)) $generated@@35 $generated@@134))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@134 $generated@@135) $generated@@51)))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and (and ($generated@@113 $generated@@136) (and (or (not (= $generated@@137 $generated@@36)) (not true)) (= ($generated@@37 $generated@@137) $generated@@35))) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@136 $generated@@137) $generated@@0)))) ($generated@@41 $generated@@34 ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@136 $generated@@137) $generated@@52)) $generated@@35 $generated@@136))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@136 $generated@@137) $generated@@52)))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@113 $generated@@139) (and (or (not (= $generated@@140 $generated@@36)) (not true)) (= ($generated@@37 $generated@@140) $generated@@39))) ($generated@@33 $generated@@120 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@139 $generated@@140) $generated@@48)) ($generated@@138 $generated@@42)))
 :pattern ( ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@139 $generated@@140) $generated@@48)))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (=> (and (and ($generated@@113 $generated@@141) (and (or (not (= $generated@@142 $generated@@36)) (not true)) (= ($generated@@37 $generated@@142) $generated@@39))) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@141 $generated@@142) $generated@@0)))) ($generated@@41 $generated@@120 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@141 $generated@@142) $generated@@48)) ($generated@@138 $generated@@42) $generated@@141))
 :pattern ( ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@141 $generated@@142) $generated@@48)))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@91 $generated@@143 $generated@@144) (= $generated@@143 $generated@@144))
 :pattern ( ($generated@@91 $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (or (not (= $generated@@145 $generated@@147)) (not true)) (=> (and ($generated@@82 $generated@@145 $generated@@146) ($generated@@82 $generated@@146 $generated@@147)) ($generated@@82 $generated@@145 $generated@@147)))
 :pattern ( ($generated@@82 $generated@@145 $generated@@146) ($generated@@82 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (and (= ($generated@@148 ($generated@@49 $generated@@149 $generated@@150)) $generated@@149) (= ($generated@@30 ($generated@@49 $generated@@149 $generated@@150)) $generated@@150))
 :pattern ( ($generated@@49 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@127 ($generated@@96 $generated@@153 $generated@@151) $generated@@152) ($generated@@33 $generated@@153 $generated@@151 $generated@@152))
 :pattern ( ($generated@@127 ($generated@@96 $generated@@153 $generated@@151) $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! (<= 0 ($generated@@31 $generated@@154))
 :pattern ( ($generated@@31 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@41 $generated@@120 $generated@@155 ($generated@@138 $generated@@156) $generated@@157) (forall (($generated@@158 Int) ) (!  (=> (and (<= 0 $generated@@158) (< $generated@@158 ($generated@@31 $generated@@155))) ($generated@@99 ($generated@@92 $generated@@155 $generated@@158) $generated@@156 $generated@@157))
 :pattern ( ($generated@@92 $generated@@155 $generated@@158))
)))
 :pattern ( ($generated@@41 $generated@@120 $generated@@155 ($generated@@138 $generated@@156) $generated@@157))
)))
(assert (forall (($generated@@160 T@U) ) (! (= ($generated@@159 ($generated@@138 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@138 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! (= ($generated@@161 ($generated@@138 $generated@@162)) $generated)
 :pattern ( ($generated@@138 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@T) ) (! (= ($generated@@53 $generated@@164 ($generated@@96 $generated@@164 $generated@@163)) $generated@@163)
 :pattern ( ($generated@@96 $generated@@164 $generated@@163))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@127 $generated@@165 ($generated@@138 $generated@@166)) (and (= ($generated@@96 $generated@@120 ($generated@@53 $generated@@120 $generated@@165)) $generated@@165) ($generated@@33 $generated@@120 ($generated@@53 $generated@@120 $generated@@165) ($generated@@138 $generated@@166))))
 :pattern ( ($generated@@127 $generated@@165 ($generated@@138 $generated@@166)))
)))
(assert (= ($generated@@161 $generated@@45) $generated@@2))
(assert (= ($generated@@167 $generated@@45) $generated@@8))
(assert (= ($generated@@161 $generated@@42) $generated@@3))
(assert (= ($generated@@167 $generated@@42) $generated@@9))
(assert (= ($generated@@161 $generated@@39) $generated@@4))
(assert (= ($generated@@167 $generated@@39) $generated@@8))
(assert (= ($generated@@161 $generated@@35) $generated@@5))
(assert (= ($generated@@167 $generated@@35) $generated@@9))
(assert  (=> (<= 0 $generated@@168) (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> (or ($generated@@169 $generated@@170 $generated@@171) (and (< 0 $generated@@168) (and ($generated@@113 $generated@@170) (and (or (not (= $generated@@171 $generated@@36)) (not true)) (and ($generated@@33 $generated@@34 $generated@@171 $generated@@45) ($generated@@41 $generated@@34 $generated@@171 $generated@@45 $generated@@170)))))) (= ($generated@@119 $generated@@170 $generated@@171)  (and (=> (> ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48))) 0) (and (and (and (= ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) ($generated@@86 0)))) $generated@@51)) $generated@@36) (forall (($generated@@172 Int) ) (!  (=> (and (<= ($generated@@86 1) $generated@@172) (< $generated@@172 ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48))))) (= ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@172))) $generated@@51)) ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) (- $generated@@172 1)))))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@172))) $generated@@51)))
))) (forall (($generated@@173 Int) ) (!  (=> (and (<= ($generated@@86 0) $generated@@173) (< $generated@@173 (- ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48))) 1))) (= ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@173))) $generated@@52)) ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) (+ $generated@@173 1)))))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@173))) $generated@@52)))
))) (= ($generated@@53 $generated@@34 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) (- ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48))) 1)))) $generated@@52)) $generated@@36))) (forall (($generated@@174 Int) ($generated@@175 Int) ) (!  (=> (and (and (<= ($generated@@86 0) $generated@@174) (< $generated@@174 $generated@@175)) (< $generated@@175 ($generated@@31 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48))))) (or (not (= ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@174)) ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@175)))) (not true)))
 :pattern ( ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@175)) ($generated@@53 $generated@@34 ($generated@@92 ($generated@@53 $generated@@120 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@170 $generated@@171) $generated@@48)) $generated@@174)))
)))))
 :pattern ( ($generated@@119 $generated@@170 $generated@@171) ($generated@@113 $generated@@170))
))))
(assert (forall (($generated@@176 Int) ) (! (= ($generated@@96 $generated@@15 ($generated@@19 ($generated@@86 $generated@@176))) ($generated@@88 $generated@@56 ($generated@@96 $generated@@15 ($generated@@19 $generated@@176))))
 :pattern ( ($generated@@96 $generated@@15 ($generated@@19 ($generated@@86 $generated@@176))))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@T) ) (! (= ($generated@@96 $generated@@178 ($generated@@88 $generated@@178 $generated@@177)) ($generated@@88 $generated@@56 ($generated@@96 $generated@@178 $generated@@177)))
 :pattern ( ($generated@@96 $generated@@178 ($generated@@88 $generated@@178 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ) (!  (=> (= ($generated@@31 $generated@@179) 0) (= $generated@@179 $generated@@32))
 :pattern ( ($generated@@31 $generated@@179))
)))
(assert  (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@180 $generated@@183 $generated@@184 $generated@@185 ($generated@@182 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@188 $generated@@189) $generated@@186)
 :weight 0
)) (and (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@180 $generated@@190 $generated@@191 $generated@@192 ($generated@@182 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@197 $generated@@198) ($generated@@180 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@197 $generated@@198)))
 :weight 0
)) (forall (($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (or (= $generated@@205 $generated@@207) (= ($generated@@180 $generated@@199 $generated@@200 $generated@@201 ($generated@@182 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@205 $generated@@202) $generated@@206 $generated@@207) ($generated@@180 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@206 $generated@@207)))
 :weight 0
)))))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 Int) ($generated@@212 Int) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (! (= ($generated@@18 ($generated@@180 $generated@@34 $generated@@55 $generated@@14 ($generated@@181 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212 $generated@@213) $generated@@214 $generated@@215))  (=> (and (or (not (= $generated@@214 $generated@@208)) (not true)) ($generated@@18 ($generated@@53 $generated@@14 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@34 ($generated@@57 $generated@@55 $generated@@56) $generated@@209 $generated@@214) $generated@@210)))) (exists (($generated@@216 Int) )  (and (and (<= $generated@@211 $generated@@216) (< $generated@@216 $generated@@212)) (= ($generated@@92 $generated@@213 $generated@@216) ($generated@@96 $generated@@34 $generated@@214))))))
 :pattern ( ($generated@@180 $generated@@34 $generated@@55 $generated@@14 ($generated@@181 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212 $generated@@213) $generated@@214 $generated@@215))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@33 $generated@@120 $generated@@217 ($generated@@138 $generated@@218)) (forall (($generated@@219 Int) ) (!  (=> (and (<= 0 $generated@@219) (< $generated@@219 ($generated@@31 $generated@@217))) ($generated@@127 ($generated@@92 $generated@@217 $generated@@219) $generated@@218))
 :pattern ( ($generated@@92 $generated@@217 $generated@@219))
)))
 :pattern ( ($generated@@33 $generated@@120 $generated@@217 ($generated@@138 $generated@@218)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@220 () Int)
(declare-fun $generated@@221 () Int)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@225 true))
(let (($generated@@226  (=> (and (and (<= ($generated@@86 0) $generated@@220) (< $generated@@220 $generated@@221)) (< $generated@@221 ($generated@@31 $generated@@222))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 $generated@@220) (< $generated@@220 ($generated@@31 $generated@@222)))) (=> (and (<= 0 $generated@@220) (< $generated@@220 ($generated@@31 $generated@@222))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 $generated@@221) (< $generated@@221 ($generated@@31 $generated@@222)))) (=> (and (<= 0 $generated@@221) (< $generated@@221 ($generated@@31 $generated@@222))) (=> (and (or (not (= ($generated@@53 $generated@@34 ($generated@@92 $generated@@222 $generated@@220)) ($generated@@53 $generated@@34 ($generated@@92 $generated@@222 $generated@@221)))) (not true)) (= (ControlFlow 0 3) 1)) $generated@@225))))))))
(let (($generated@@227  (=> (and (not (and (<= ($generated@@86 0) $generated@@220) (< $generated@@220 $generated@@221))) (= (ControlFlow 0 7) 3)) $generated@@226)))
(let (($generated@@228  (=> (and (and (<= ($generated@@86 0) $generated@@220) (< $generated@@220 $generated@@221)) (= (ControlFlow 0 6) 3)) $generated@@226)))
(let (($generated@@229  (=> (< $generated@@220 ($generated@@86 0)) (and (=> (= (ControlFlow 0 9) 6) $generated@@228) (=> (= (ControlFlow 0 9) 7) $generated@@227)))))
(let (($generated@@230  (=> (<= ($generated@@86 0) $generated@@220) (and (=> (= (ControlFlow 0 8) 6) $generated@@228) (=> (= (ControlFlow 0 8) 7) $generated@@227)))))
(let (($generated@@231  (=> (and (=> (and (and (<= ($generated@@86 0) $generated@@220) (< $generated@@220 $generated@@221)) (< $generated@@221 ($generated@@31 $generated@@222))) (or (not (= ($generated@@53 $generated@@34 ($generated@@92 $generated@@222 $generated@@220)) ($generated@@53 $generated@@34 ($generated@@92 $generated@@222 $generated@@221)))) (not true))) (= (ControlFlow 0 2) 1)) $generated@@225)))
(let (($generated@@232  (=> (= $generated@@223 ($generated@@181 $generated@@36 $generated@@224 $generated@@0 0 ($generated@@31 $generated@@222) $generated@@222)) (and (and (=> (= (ControlFlow 0 10) 2) $generated@@231) (=> (= (ControlFlow 0 10) 8) $generated@@230)) (=> (= (ControlFlow 0 10) 9) $generated@@229)))))
(let (($generated@@233  (=> (and ($generated@@113 $generated@@224) ($generated@@118 $generated@@224)) (=> (and (and ($generated@@33 $generated@@120 $generated@@222 ($generated@@138 $generated@@42)) ($generated@@41 $generated@@120 $generated@@222 ($generated@@138 $generated@@42) $generated@@224)) (and (= 1 $generated@@168) (= (ControlFlow 0 11) 10))) $generated@@232))))
$generated@@233))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)