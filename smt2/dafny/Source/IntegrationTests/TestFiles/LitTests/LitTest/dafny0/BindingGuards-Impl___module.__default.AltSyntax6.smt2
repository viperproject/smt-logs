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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 () T@U)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U T@U) Bool)
(declare-fun $generated@@29 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@T T@T) T@T)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@37 (T@T) T@T)
(declare-fun $generated@@58 (Int) Int)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@67 (T@U) Bool)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@75 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@86 (T@U) Bool)
(declare-fun $generated@@88 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@90 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@123 (T@U) Bool)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated@@22) $generated@@1))
(assert (= ($generated@@21 $generated@@23) $generated@@2))
(assert (= ($generated@@21 $generated@@24) $generated@@3))
(assert (= ($generated@@5 $generated@@26) 3))
(assert ($generated@@25 $generated@@26 $generated@@22 $generated@@27))
(assert ($generated@@25 $generated@@26 $generated@@23 $generated@@27))
(assert ($generated@@25 $generated@@26 $generated@@24 $generated@@27))
(assert  (and (and (and (and (and (and (and (forall (($generated@@38 T@T) ($generated@@39 T@T) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@29 $generated@@38 $generated@@39 ($generated@@35 $generated@@38 $generated@@39 $generated@@41 $generated@@42 $generated@@40) $generated@@42) $generated@@40)
 :weight 0
)) (forall (($generated@@43 T@T) ($generated@@44 T@T) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (!  (or (= $generated@@47 $generated@@48) (= ($generated@@29 $generated@@43 $generated@@44 ($generated@@35 $generated@@43 $generated@@44 $generated@@46 $generated@@47 $generated@@45) $generated@@48) ($generated@@29 $generated@@43 $generated@@44 $generated@@46 $generated@@48)))
 :weight 0
))) (= ($generated@@5 $generated@@30) 4)) (= ($generated@@5 $generated@@31) 5)) (= ($generated@@5 $generated@@32) 6)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ) (= ($generated@@5 ($generated@@33 $generated@@49 $generated@@50)) 7))) (forall (($generated@@51 T@T) ($generated@@52 T@T) ) (! (= ($generated@@36 ($generated@@33 $generated@@51 $generated@@52)) $generated@@51)
 :pattern ( ($generated@@33 $generated@@51 $generated@@52))
))) (forall (($generated@@53 T@T) ($generated@@54 T@T) ) (! (= ($generated@@37 ($generated@@33 $generated@@53 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@33 $generated@@53 $generated@@54))
))))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (!  (=> ($generated@@28 $generated@@55 $generated@@56) (forall (($generated@@57 T@U) ) (!  (=> ($generated@@10 ($generated@@34 $generated@@6 ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@55 $generated@@57) $generated))) ($generated@@10 ($generated@@34 $generated@@6 ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@56 $generated@@57) $generated))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@56 $generated@@57) $generated))
)))
 :pattern ( ($generated@@28 $generated@@55 $generated@@56))
)))
(assert (forall (($generated@@59 Int) ) (! (= ($generated@@58 $generated@@59) $generated@@59)
 :pattern ( ($generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ) (! (= ($generated@@63 $generated@@64) (= ($generated@@21 $generated@@64) $generated@@1))
 :pattern ( ($generated@@63 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ) (! (= ($generated@@65 $generated@@66) (= ($generated@@21 $generated@@66) $generated@@2))
 :pattern ( ($generated@@65 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (! (= ($generated@@67 $generated@@68) (= ($generated@@21 $generated@@68) $generated@@3))
 :pattern ( ($generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 ($generated@@34 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@34 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ) (!  (=> ($generated@@63 $generated@@72) (= $generated@@72 $generated@@22))
 :pattern ( ($generated@@63 $generated@@72))
)))
(assert (forall (($generated@@73 T@U) ) (!  (=> ($generated@@65 $generated@@73) (= $generated@@73 $generated@@23))
 :pattern ( ($generated@@65 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@67 $generated@@74) (= $generated@@74 $generated@@24))
 :pattern ( ($generated@@67 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@T) ) (!  (=> ($generated@@28 $generated@@76 $generated@@77) (=> ($generated@@75 $generated@@80 $generated@@78 $generated@@79 $generated@@76) ($generated@@75 $generated@@80 $generated@@78 $generated@@79 $generated@@77)))
 :pattern ( ($generated@@28 $generated@@76 $generated@@77) ($generated@@75 $generated@@80 $generated@@78 $generated@@79 $generated@@76))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> (or (not (= $generated@@81 $generated@@83)) (not true)) (=> (and ($generated@@28 $generated@@81 $generated@@82) ($generated@@28 $generated@@82 $generated@@83)) ($generated@@28 $generated@@81 $generated@@83)))
 :pattern ( ($generated@@28 $generated@@81 $generated@@82) ($generated@@28 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@34 $generated@@85 ($generated@@69 $generated@@85 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@69 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@87 T@U) ) (!  (=> ($generated@@86 $generated@@87) (or (or ($generated@@63 $generated@@87) ($generated@@65 $generated@@87)) ($generated@@67 $generated@@87)))
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert  (and (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@88 $generated@@91 $generated@@92 $generated@@93 ($generated@@90 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@96 $generated@@97) $generated@@94)
 :weight 0
)) (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@103 $generated@@105) (= ($generated@@88 $generated@@98 $generated@@99 $generated@@100 ($generated@@90 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@105 $generated@@106) ($generated@@88 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@105 $generated@@106)))
 :weight 0
)) (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@113 $generated@@115) (= ($generated@@88 $generated@@107 $generated@@108 $generated@@109 ($generated@@90 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@88 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)))))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 Bool) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@10 ($generated@@88 $generated@@32 $generated@@30 $generated@@6 ($generated@@89 $generated@@116 $generated@@117 $generated@@118 $generated@@119) $generated@@120 $generated@@121))  (=> (and (or (not (= $generated@@120 $generated@@116)) (not true)) ($generated@@10 ($generated@@34 $generated@@6 ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@117 $generated@@120) $generated@@118)))) $generated@@119))
 :pattern ( ($generated@@88 $generated@@32 $generated@@30 $generated@@6 ($generated@@89 $generated@@116 $generated@@117 $generated@@118 $generated@@119) $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@122 $generated@@27) (or (or ($generated@@63 $generated@@122) ($generated@@65 $generated@@122)) ($generated@@67 $generated@@122)))
 :pattern ( ($generated@@67 $generated@@122) ($generated@@25 $generated@@26 $generated@@122 $generated@@27))
 :pattern ( ($generated@@65 $generated@@122) ($generated@@25 $generated@@26 $generated@@122 $generated@@27))
 :pattern ( ($generated@@63 $generated@@122) ($generated@@25 $generated@@26 $generated@@122 $generated@@27))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (!  (=> (and ($generated@@123 $generated@@125) ($generated@@25 $generated@@26 $generated@@124 $generated@@27)) ($generated@@75 $generated@@26 $generated@@124 $generated@@27 $generated@@125))
 :pattern ( ($generated@@75 $generated@@26 $generated@@124 $generated@@27 $generated@@125))
)))
(assert (= ($generated@@126 $generated@@27) $generated@@0))
(assert (= ($generated@@127 $generated@@27) $generated@@4))
(assert (= $generated@@22 ($generated@@60 $generated@@26 $generated@@22)))
(assert (= $generated@@23 ($generated@@60 $generated@@26 $generated@@23)))
(assert (= $generated@@24 ($generated@@60 $generated@@26 $generated@@24)))
(assert (forall (($generated@@128 Int) ) (! (= ($generated@@69 $generated@@7 ($generated@@11 ($generated@@58 $generated@@128))) ($generated@@60 $generated@@31 ($generated@@69 $generated@@7 ($generated@@11 $generated@@128))))
 :pattern ( ($generated@@69 $generated@@7 ($generated@@11 ($generated@@58 $generated@@128))))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@T) ) (! (= ($generated@@69 $generated@@130 ($generated@@60 $generated@@130 $generated@@129)) ($generated@@60 $generated@@31 ($generated@@69 $generated@@130 $generated@@129)))
 :pattern ( ($generated@@69 $generated@@130 ($generated@@60 $generated@@130 $generated@@129)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@131 () Int)
(declare-fun $generated@@132 () Int)
(declare-fun $generated@@133 () Int)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () Int)
(declare-fun $generated@@136 () Int)
(declare-fun $generated@@137 () Int)
(declare-fun $generated@@138 () Int)
(declare-fun $generated@@139 () Int)
(declare-fun $generated@@140 () Bool)
(declare-fun $generated@@141 () T@U)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () Int)
(declare-fun $generated@@146 () Int)
(declare-fun $generated@@147 (T@U) Bool)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () Int)
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
 (=> (= (ControlFlow 0 0) 17) (let (($generated@@150  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (<= 0 $generated@@131) (= (- $generated@@132 $generated@@133) $generated@@131))) (=> (or (<= 0 $generated@@131) (= (- $generated@@132 $generated@@133) $generated@@131)) (=> (= (ControlFlow 0 6) (- 0 5)) (< (- $generated@@132 $generated@@133) $generated@@131))))))
(let (($generated@@151  (=> (and (and ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 false))) (= $generated@@132 $generated@@134)) (and (= $generated@@133 $generated@@135) (= (ControlFlow 0 11) 6))) $generated@@150)))
(let (($generated@@152  (=> (and (and ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 false))) (= $generated@@132 $generated@@134)) (and (= $generated@@133 $generated@@135) (= (ControlFlow 0 10) 6))) $generated@@150)))
(let (($generated@@153  (=> (and (> $generated@@134 $generated@@135) (= $generated@@136 ($generated@@58 15))) (=> (and (and (= $generated@@137 (- $generated@@134 1)) (= $generated@@132 $generated@@137)) (and (= $generated@@133 $generated@@135) (= (ControlFlow 0 9) 6))) $generated@@150))))
(let (($generated@@154  (=> (and (< $generated@@135 $generated@@134) (= $generated@@138 ($generated@@58 10))) (=> (and (and (= $generated@@139 (+ $generated@@135 1)) (= $generated@@132 $generated@@134)) (and (= $generated@@133 $generated@@139) (= (ControlFlow 0 8) 6))) $generated@@150))))
(let (($generated@@155 true))
(let (($generated@@156  (=> (and ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 true))) (= $generated@@131 (- $generated@@134 $generated@@135))) (and (and (and (and (=> (= (ControlFlow 0 12) 8) $generated@@154) (=> (= (ControlFlow 0 12) 9) $generated@@153)) (=> (= (ControlFlow 0 12) 10) $generated@@152)) (=> (= (ControlFlow 0 12) 11) $generated@@151)) (=> (= (ControlFlow 0 12) 4) $generated@@155)))))
(let (($generated@@157 true))
(let (($generated@@158  (=> $generated@@140 (and (=> (= (ControlFlow 0 13) 3) $generated@@157) (=> (= (ControlFlow 0 13) 12) $generated@@156)))))
(let (($generated@@159 true))
(let (($generated@@160  (and (=> (= (ControlFlow 0 14) 2) $generated@@159) (=> (= (ControlFlow 0 14) 13) $generated@@158))))
(let (($generated@@161 true))
(let (($generated@@162  (=> (not false) (=> (and (and (forall (($generated@@163 T@U) ) (!  (=> (and (or (not (= $generated@@163 $generated@@142)) (not true)) ($generated@@10 ($generated@@34 $generated@@6 ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@163) $generated)))) (= ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@163) ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@163)))
 :pattern ( ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@163))
)) ($generated@@28 $generated@@141 $generated@@141)) (and (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (and (or (not (= $generated@@164 $generated@@142)) (not true)) ($generated@@10 ($generated@@34 $generated@@6 ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@164) $generated)))) (or (= ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@164) $generated@@165) ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@164) $generated@@165)) ($generated@@10 ($generated@@88 $generated@@32 $generated@@30 $generated@@6 $generated@@143 $generated@@164 $generated@@165))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31 ($generated@@29 $generated@@32 ($generated@@33 $generated@@30 $generated@@31) $generated@@141 $generated@@164) $generated@@165))
)) (<= (- $generated@@134 $generated@@135) $generated@@144))) (and (=> (= (ControlFlow 0 15) 1) $generated@@161) (=> (= (ControlFlow 0 15) 14) $generated@@160))))))
(let (($generated@@166  (=> (= $generated@@143 ($generated@@89 $generated@@142 $generated@@141 $generated false)) (=> (and (= $generated@@144 (- $generated@@145 $generated@@146)) (= (ControlFlow 0 16) 15)) $generated@@162))))
(let (($generated@@167  (=> (and ($generated@@123 $generated@@141) ($generated@@147 $generated@@141)) (=> (and (and (and ($generated@@25 $generated@@26 $generated@@148 $generated@@27) ($generated@@75 $generated@@26 $generated@@148 $generated@@27 $generated@@141)) ($generated@@86 $generated@@148)) (and (= 1 $generated@@149) (= (ControlFlow 0 17) 16))) $generated@@166))))
$generated@@167))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)