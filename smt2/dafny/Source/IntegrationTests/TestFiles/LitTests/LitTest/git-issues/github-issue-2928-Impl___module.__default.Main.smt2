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
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@24 (T@T T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@U T@U T@U) Bool)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@47 (T@U Int) T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@66 (Int) T@U)
(declare-fun $generated@@67 (T@U) Int)
(declare-fun $generated@@69 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@73 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 (T@T T@T) T@T)
(declare-fun $generated@@76 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@77 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@78 (T@T) T@T)
(declare-fun $generated@@79 (T@T) T@T)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
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
(assert (forall (($generated@@23 Int) ) (! (= ($generated@@22 $generated@@23) $generated@@23)
 :pattern ( ($generated@@22 $generated@@23))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@T) ) (! (= ($generated@@24 $generated@@26 $generated@@25) $generated@@25)
 :pattern ( ($generated@@24 $generated@@26 $generated@@25))
)))
(assert (= ($generated@@3 $generated@@28) 3))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> (and ($generated@@27 $generated@@28 $generated@@32 ($generated@@30 $generated@@34)) ($generated@@31 $generated@@33 $generated@@34)) ($generated@@27 $generated@@28 ($generated@@29 $generated@@32 $generated@@33) ($generated@@30 $generated@@34)))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@29 $generated@@32 $generated@@33) ($generated@@30 $generated@@34)))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@36 $generated@@38 ($generated@@35 $generated@@38 $generated@@37)) $generated@@37)
 :pattern ( ($generated@@35 $generated@@38 $generated@@37))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@20 ($generated@@29 $generated@@39 $generated@@40)) (+ 1 ($generated@@20 $generated@@39)))
 :pattern ( ($generated@@29 $generated@@39 $generated@@40))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@41 ($generated@@36 $generated@@46 $generated@@43) $generated@@44 $generated@@45) ($generated@@42 $generated@@46 $generated@@43 $generated@@44 $generated@@45))
 :pattern ( ($generated@@41 ($generated@@36 $generated@@46 $generated@@43) $generated@@44 $generated@@45))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 Int) ($generated@@50 T@U) ) (!  (and (=> (= $generated@@49 ($generated@@20 $generated@@48)) (= ($generated@@47 ($generated@@29 $generated@@48 $generated@@50) $generated@@49) $generated@@50)) (=> (or (not (= $generated@@49 ($generated@@20 $generated@@48))) (not true)) (= ($generated@@47 ($generated@@29 $generated@@48 $generated@@50) $generated@@49) ($generated@@47 $generated@@48 $generated@@49))))
 :pattern ( ($generated@@47 ($generated@@29 $generated@@48 $generated@@50) $generated@@49))
)))
(assert (= ($generated@@3 $generated@@51) 4))
(assert (forall (($generated@@52 T@U) ) (!  (=> ($generated@@31 $generated@@52 $generated) (and (= ($generated@@36 $generated@@51 ($generated@@35 $generated@@51 $generated@@52)) $generated@@52) ($generated@@27 $generated@@51 ($generated@@35 $generated@@51 $generated@@52) $generated)))
 :pattern ( ($generated@@31 $generated@@52 $generated))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@31 ($generated@@36 $generated@@55 $generated@@53) $generated@@54) ($generated@@27 $generated@@55 $generated@@53 $generated@@54))
 :pattern ( ($generated@@31 ($generated@@36 $generated@@55 $generated@@53) $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ) (! (<= 0 ($generated@@20 $generated@@56))
 :pattern ( ($generated@@20 $generated@@56))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@42 $generated@@28 $generated@@57 ($generated@@30 $generated@@58) $generated@@59) (forall (($generated@@60 Int) ) (!  (=> (and (<= 0 $generated@@60) (< $generated@@60 ($generated@@20 $generated@@57))) ($generated@@41 ($generated@@47 $generated@@57 $generated@@60) $generated@@58 $generated@@59))
 :pattern ( ($generated@@47 $generated@@57 $generated@@60))
)))
 :pattern ( ($generated@@42 $generated@@28 $generated@@57 ($generated@@30 $generated@@58) $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@61 ($generated@@30 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@30 $generated@@62))
)))
(assert (forall (($generated@@63 T@U) ) (! (= ($generated@@19 ($generated@@30 $generated@@63)) $generated@@1)
 :pattern ( ($generated@@30 $generated@@63))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@35 $generated@@65 ($generated@@36 $generated@@65 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@36 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@68 Int) ) (!  (=> (or (and (<= 0 $generated@@68) (< $generated@@68 55296)) (and (<= 57344 $generated@@68) (< $generated@@68 1114112))) (= ($generated@@67 ($generated@@66 $generated@@68)) $generated@@68))
 :pattern ( ($generated@@66 $generated@@68))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@69 $generated@@80 $generated@@81 $generated@@82 ($generated@@76 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@85 $generated@@86 $generated@@83) $generated@@85 $generated@@86) $generated@@83)
 :weight 0
)) (and (forall (($generated@@87 T@T) ($generated@@88 T@T) ($generated@@89 T@T) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (or (= $generated@@92 $generated@@94) (= ($generated@@69 $generated@@87 $generated@@88 $generated@@89 ($generated@@76 $generated@@87 $generated@@88 $generated@@89 $generated@@91 $generated@@92 $generated@@93 $generated@@90) $generated@@94 $generated@@95) ($generated@@69 $generated@@87 $generated@@88 $generated@@89 $generated@@91 $generated@@94 $generated@@95)))
 :weight 0
)) (forall (($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (!  (or (= $generated@@102 $generated@@104) (= ($generated@@69 $generated@@96 $generated@@97 $generated@@98 ($generated@@76 $generated@@96 $generated@@97 $generated@@98 $generated@@100 $generated@@101 $generated@@102 $generated@@99) $generated@@103 $generated@@104) ($generated@@69 $generated@@96 $generated@@97 $generated@@98 $generated@@100 $generated@@103 $generated@@104)))
 :weight 0
)))) (= ($generated@@3 $generated@@70) 5)) (= ($generated@@3 $generated@@71) 6)) (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@73 $generated@@105 $generated@@106 ($generated@@77 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@107) $generated@@109) $generated@@107)
 :weight 0
))) (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@114 $generated@@115) (= ($generated@@73 $generated@@110 $generated@@111 ($generated@@77 $generated@@110 $generated@@111 $generated@@113 $generated@@114 $generated@@112) $generated@@115) ($generated@@73 $generated@@110 $generated@@111 $generated@@113 $generated@@115)))
 :weight 0
))) (= ($generated@@3 $generated@@74) 7)) (forall (($generated@@116 T@T) ($generated@@117 T@T) ) (= ($generated@@3 ($generated@@75 $generated@@116 $generated@@117)) 8))) (forall (($generated@@118 T@T) ($generated@@119 T@T) ) (! (= ($generated@@78 ($generated@@75 $generated@@118 $generated@@119)) $generated@@118)
 :pattern ( ($generated@@75 $generated@@118 $generated@@119))
))) (forall (($generated@@120 T@T) ($generated@@121 T@T) ) (! (= ($generated@@79 ($generated@@75 $generated@@120 $generated@@121)) $generated@@121)
 :pattern ( ($generated@@75 $generated@@120 $generated@@121))
))))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 Bool) ($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@8 ($generated@@69 $generated@@70 $generated@@71 $generated@@4 ($generated@@72 $generated@@122 $generated@@123 $generated@@124 $generated@@125) $generated@@126 $generated@@127))  (=> (and (or (not (= $generated@@126 $generated@@122)) (not true)) ($generated@@8 ($generated@@35 $generated@@4 ($generated@@73 $generated@@71 $generated@@74 ($generated@@73 $generated@@70 ($generated@@75 $generated@@71 $generated@@74) $generated@@123 $generated@@126) $generated@@124)))) $generated@@125))
 :pattern ( ($generated@@69 $generated@@70 $generated@@71 $generated@@4 ($generated@@72 $generated@@122 $generated@@123 $generated@@124 $generated@@125) $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (!  (and (= ($generated@@128 ($generated@@29 $generated@@130 $generated@@131)) $generated@@130) (= ($generated@@129 ($generated@@29 $generated@@130 $generated@@131)) $generated@@131))
 :pattern ( ($generated@@29 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> ($generated@@31 $generated@@132 ($generated@@30 $generated@@133)) (and (= ($generated@@36 $generated@@28 ($generated@@35 $generated@@28 $generated@@132)) $generated@@132) ($generated@@27 $generated@@28 ($generated@@35 $generated@@28 $generated@@132) ($generated@@30 $generated@@133))))
 :pattern ( ($generated@@31 $generated@@132 ($generated@@30 $generated@@133)))
)))
(assert (forall (($generated@@134 T@U) ) (!  (and (= ($generated@@66 ($generated@@67 $generated@@134)) $generated@@134) (or (and (<= 0 ($generated@@67 $generated@@134)) (< ($generated@@67 $generated@@134) 55296)) (and (<= 57344 ($generated@@67 $generated@@134)) (< ($generated@@67 $generated@@134) 1114112))))
 :pattern ( ($generated@@67 $generated@@134))
)))
(assert (forall (($generated@@135 Int) ) (! (= ($generated@@36 $generated@@5 ($generated@@9 ($generated@@22 $generated@@135))) ($generated@@24 $generated@@74 ($generated@@36 $generated@@5 ($generated@@9 $generated@@135))))
 :pattern ( ($generated@@36 $generated@@5 ($generated@@9 ($generated@@22 $generated@@135))))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@T) ) (! (= ($generated@@36 $generated@@137 ($generated@@24 $generated@@137 $generated@@136)) ($generated@@24 $generated@@74 ($generated@@36 $generated@@137 $generated@@136)))
 :pattern ( ($generated@@36 $generated@@137 ($generated@@24 $generated@@137 $generated@@136)))
)))
(assert (forall (($generated@@138 T@U) ) (!  (=> (= ($generated@@20 $generated@@138) 0) (= $generated@@138 $generated@@21))
 :pattern ( ($generated@@20 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! ($generated@@42 $generated@@51 $generated@@140 $generated $generated@@139)
 :pattern ( ($generated@@42 $generated@@51 $generated@@140 $generated $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@141 ($generated@@30 $generated@@142)) (forall (($generated@@143 Int) ) (!  (=> (and (<= 0 $generated@@143) (< $generated@@143 ($generated@@20 $generated@@141))) ($generated@@31 ($generated@@47 $generated@@141 $generated@@143) $generated@@142))
 :pattern ( ($generated@@47 $generated@@141 $generated@@143))
)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@141 ($generated@@30 $generated@@142)))
)))
(assert (forall (($generated@@144 T@U) ) (! ($generated@@27 $generated@@51 $generated@@144 $generated)
 :pattern ( ($generated@@27 $generated@@51 $generated@@144 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () Int)
(declare-fun $generated@@147 () Int)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 () Int)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 (T@U) Bool)
(declare-fun $generated@@155 (T@U) Bool)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () Int)
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
 (=> (= (ControlFlow 0 0) 22) (let (($generated@@159 true))
(let (($generated@@160 true))
(let (($generated@@161  (=> (= ($generated@@35 $generated@@51 ($generated@@47 $generated@@145 ($generated@@22 0))) ($generated@@66 ($generated@@22 0))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (and (<= 0 ($generated@@22 1)) (< ($generated@@22 1) ($generated@@20 $generated@@145)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (= ($generated@@35 $generated@@51 ($generated@@47 $generated@@145 ($generated@@22 1))) ($generated@@24 $generated@@51 ($generated@@66 51)))) (=> (= ($generated@@35 $generated@@51 ($generated@@47 $generated@@145 ($generated@@22 1))) ($generated@@24 $generated@@51 ($generated@@66 51))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 ($generated@@22 1)) (< ($generated@@22 1) ($generated@@20 $generated@@145)))) (and (=> (= (ControlFlow 0 6) 4) $generated@@160) (=> (= (ControlFlow 0 6) 5) $generated@@159)))))))))
(let (($generated@@162 true))
(let (($generated@@163  (=> (= ($generated@@20 $generated@@145) ($generated@@22 2)) (and (=> (= (ControlFlow 0 10) (- 0 15)) (and (<= 0 ($generated@@22 0)) (< ($generated@@22 0) ($generated@@20 $generated@@145)))) (=> (= $generated@@146 ($generated@@22 0)) (and (=> (= (ControlFlow 0 10) (- 0 14)) (or (and (<= 0 $generated@@146) (< $generated@@146 55296)) (and (<= 57344 $generated@@146) (< $generated@@146 1114112)))) (=> (or (and (<= 0 $generated@@146) (< $generated@@146 55296)) (and (<= 57344 $generated@@146) (< $generated@@146 1114112))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (= ($generated@@35 $generated@@51 ($generated@@47 $generated@@145 ($generated@@22 0))) ($generated@@66 ($generated@@22 0)))) (=> (= ($generated@@35 $generated@@51 ($generated@@47 $generated@@145 ($generated@@22 0))) ($generated@@66 ($generated@@22 0))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 ($generated@@22 0)) (< ($generated@@22 0) ($generated@@20 $generated@@145)))) (=> (= $generated@@147 ($generated@@22 0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (and (<= 0 $generated@@147) (< $generated@@147 55296)) (and (<= 57344 $generated@@147) (< $generated@@147 1114112)))) (=> (or (and (<= 0 $generated@@147) (< $generated@@147 55296)) (and (<= 57344 $generated@@147) (< $generated@@147 1114112))) (and (=> (= (ControlFlow 0 10) 3) $generated@@162) (=> (= (ControlFlow 0 10) 6) $generated@@161)))))))))))))))
(let (($generated@@164 true))
(let (($generated@@165  (=> (and (= $generated@@148 ($generated@@66 ($generated@@22 0))) (= $generated@@145 ($generated@@24 $generated@@28 ($generated@@29 ($generated@@29 $generated@@21 ($generated@@36 $generated@@51 ($generated@@66 0))) ($generated@@36 $generated@@51 ($generated@@66 51)))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= ($generated@@20 $generated@@145) ($generated@@22 2))) (=> (= ($generated@@20 $generated@@145) ($generated@@22 2)) (and (=> (= (ControlFlow 0 16) 2) $generated@@164) (=> (= (ControlFlow 0 16) 10) $generated@@163)))))))
(let (($generated@@166 true))
(let (($generated@@167  (=> (= $generated@@149 ($generated@@72 $generated@@150 $generated@@151 $generated@@2 false)) (=> (and (= $generated@@148 ($generated@@24 $generated@@51 ($generated@@66 0))) (= $generated@@152 ($generated@@22 0))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (and (<= 0 $generated@@152) (< $generated@@152 55296)) (and (<= 57344 $generated@@152) (< $generated@@152 1114112)))) (=> (or (and (<= 0 $generated@@152) (< $generated@@152 55296)) (and (<= 57344 $generated@@152) (< $generated@@152 1114112))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (= $generated@@148 ($generated@@66 ($generated@@22 0)))) (=> (= $generated@@148 ($generated@@66 ($generated@@22 0))) (=> (= $generated@@153 ($generated@@22 0)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (and (<= 0 $generated@@153) (< $generated@@153 55296)) (and (<= 57344 $generated@@153) (< $generated@@153 1114112)))) (=> (or (and (<= 0 $generated@@153) (< $generated@@153 55296)) (and (<= 57344 $generated@@153) (< $generated@@153 1114112))) (and (=> (= (ControlFlow 0 18) 1) $generated@@166) (=> (= (ControlFlow 0 18) 16) $generated@@165)))))))))))))
(let (($generated@@168  (=> (and (and ($generated@@154 $generated@@151) ($generated@@155 $generated@@151)) (and ($generated@@27 $generated@@51 $generated@@156 $generated) true)) (=> (and (and (and ($generated@@27 $generated@@28 $generated@@157 ($generated@@30 $generated)) ($generated@@42 $generated@@28 $generated@@157 ($generated@@30 $generated) $generated@@151)) true) (and (= 0 $generated@@158) (= (ControlFlow 0 22) 18))) $generated@@167))))
$generated@@168)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid