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
(declare-fun $generated@@19 (T@T T@U T@U) Bool)
(declare-fun $generated@@20 () T@T)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 (T@T T@T) T@T)
(declare-fun $generated@@34 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@T) T@T)
(declare-fun $generated@@36 (T@T) T@T)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@60 (Int) Int)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@74 (Int Int) Int)
(declare-fun $generated@@82 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@83 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@84 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@117 (T@U) T@U)
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
(assert (= ($generated@@3 $generated@@20) 3))
(assert (forall (($generated@@24 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@24 $generated@@21)  (or (= $generated@@24 $generated@@22) (= ($generated@@23 $generated@@24) $generated@@21)))
 :pattern ( ($generated@@19 $generated@@20 $generated@@24 $generated@@21))
)))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@U) ) (! (= ($generated@@25 $generated@@20 $generated@@27 $generated@@26 $generated@@28) ($generated@@25 $generated@@20 $generated@@27 $generated@@21 $generated@@28))
 :pattern ( ($generated@@25 $generated@@20 $generated@@27 $generated@@26 $generated@@28))
 :pattern ( ($generated@@25 $generated@@20 $generated@@27 $generated@@21 $generated@@28))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@30 $generated@@37 $generated@@38 ($generated@@34 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@41) $generated@@39)
 :weight 0
)) (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (or (= $generated@@46 $generated@@47) (= ($generated@@30 $generated@@42 $generated@@43 ($generated@@34 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@47) ($generated@@30 $generated@@42 $generated@@43 $generated@@45 $generated@@47)))
 :weight 0
))) (= ($generated@@3 $generated@@31) 4)) (= ($generated@@3 $generated@@32) 5)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (= ($generated@@3 ($generated@@33 $generated@@48 $generated@@49)) 6))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@35 ($generated@@33 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@33 $generated@@50 $generated@@51))
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (! (= ($generated@@36 ($generated@@33 $generated@@52 $generated@@53)) $generated@@53)
 :pattern ( ($generated@@33 $generated@@52 $generated@@53))
))))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@25 $generated@@20 $generated@@54 $generated@@21 $generated@@55)  (or (= $generated@@54 $generated@@22) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@55 $generated@@54) $generated)))))
 :pattern ( ($generated@@25 $generated@@20 $generated@@54 $generated@@21 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> ($generated@@56 $generated@@57 $generated@@58) (forall (($generated@@59 T@U) ) (!  (=> ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@57 $generated@@59) $generated))) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@58 $generated@@59) $generated))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@58 $generated@@59) $generated))
)))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@61 Int) ) (! (= ($generated@@60 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@62 $generated@@64 $generated@@63) $generated@@63)
 :pattern ( ($generated@@62 $generated@@64 $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@29 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@29 $generated@@67 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@T) ) (!  (=> ($generated@@56 $generated@@68 $generated@@69) (=> ($generated@@25 $generated@@72 $generated@@70 $generated@@71 $generated@@68) ($generated@@25 $generated@@72 $generated@@70 $generated@@71 $generated@@69)))
 :pattern ( ($generated@@56 $generated@@68 $generated@@69) ($generated@@25 $generated@@72 $generated@@70 $generated@@71 $generated@@68))
)))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@19 $generated@@20 $generated@@73 $generated@@26)  (and ($generated@@19 $generated@@20 $generated@@73 $generated@@21) (or (not (= $generated@@73 $generated@@22)) (not true))))
 :pattern ( ($generated@@19 $generated@@20 $generated@@73 $generated@@26))
 :pattern ( ($generated@@19 $generated@@20 $generated@@73 $generated@@21))
)))
(assert (forall (($generated@@75 Int) ($generated@@76 Int) ) (! (= ($generated@@74 $generated@@75 $generated@@76) (div $generated@@75 $generated@@76))
 :pattern ( ($generated@@74 $generated@@75 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (or (not (= $generated@@77 $generated@@79)) (not true)) (=> (and ($generated@@56 $generated@@77 $generated@@78) ($generated@@56 $generated@@78 $generated@@79)) ($generated@@56 $generated@@77 $generated@@79)))
 :pattern ( ($generated@@56 $generated@@77 $generated@@78) ($generated@@56 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@29 $generated@@81 ($generated@@65 $generated@@81 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@65 $generated@@81 $generated@@80))
)))
(assert  (and (forall (($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@82 $generated@@85 $generated@@86 $generated@@87 ($generated@@84 $generated@@85 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@91 $generated@@88) $generated@@90 $generated@@91) $generated@@88)
 :weight 0
)) (and (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (= $generated@@97 $generated@@99) (= ($generated@@82 $generated@@92 $generated@@93 $generated@@94 ($generated@@84 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@98 $generated@@95) $generated@@99 $generated@@100) ($generated@@82 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@99 $generated@@100)))
 :weight 0
)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (or (= $generated@@107 $generated@@109) (= ($generated@@82 $generated@@101 $generated@@102 $generated@@103 ($generated@@84 $generated@@101 $generated@@102 $generated@@103 $generated@@105 $generated@@106 $generated@@107 $generated@@104) $generated@@108 $generated@@109) ($generated@@82 $generated@@101 $generated@@102 $generated@@103 $generated@@105 $generated@@108 $generated@@109)))
 :weight 0
)))))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 Bool) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@8 ($generated@@82 $generated@@20 $generated@@31 $generated@@4 ($generated@@83 $generated@@110 $generated@@111 $generated@@112 $generated@@113) $generated@@114 $generated@@115))  (=> (and (or (not (= $generated@@114 $generated@@110)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@111 $generated@@114) $generated@@112)))) $generated@@113))
 :pattern ( ($generated@@82 $generated@@20 $generated@@31 $generated@@4 ($generated@@83 $generated@@110 $generated@@111 $generated@@112 $generated@@113) $generated@@114 $generated@@115))
)))
(assert (= ($generated@@116 $generated@@21) $generated@@0))
(assert (= ($generated@@117 $generated@@21) $generated@@2))
(assert (= ($generated@@116 $generated@@26) $generated@@1))
(assert (= ($generated@@117 $generated@@26) $generated@@2))
(assert (forall (($generated@@118 Int) ) (! (= ($generated@@65 $generated@@5 ($generated@@9 ($generated@@60 $generated@@118))) ($generated@@62 $generated@@32 ($generated@@65 $generated@@5 ($generated@@9 $generated@@118))))
 :pattern ( ($generated@@65 $generated@@5 ($generated@@9 ($generated@@60 $generated@@118))))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@T) ) (! (= ($generated@@65 $generated@@120 ($generated@@62 $generated@@120 $generated@@119)) ($generated@@62 $generated@@32 ($generated@@65 $generated@@120 $generated@@119)))
 :pattern ( ($generated@@65 $generated@@120 ($generated@@62 $generated@@120 $generated@@119)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@121 () Int)
(declare-fun $generated@@122 () Int)
(declare-fun $generated@@123 () Int)
(declare-fun $generated@@124 () Int)
(declare-fun $generated@@125 () Bool)
(declare-fun $generated@@126 () Int)
(declare-fun $generated@@127 () Bool)
(declare-fun $generated@@128 () Int)
(declare-fun $generated@@129 () T@U)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 () Int)
(declare-fun $generated@@132 () Int)
(declare-fun $generated@@133 () Int)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () Int)
(declare-fun $generated@@136 () Int)
(declare-fun $generated@@137 (T@U) Bool)
(declare-fun $generated@@138 (T@U) Bool)
(declare-fun $generated@@139 () T@U)
(declare-fun $generated@@140 () Int)
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
 (=> (= (ControlFlow 0 0) 28) (let (($generated@@141  (=> (and (and (= ($generated@@74 20 $generated@@121) ($generated@@60 5)) (< $generated@@122 100)) (and (= $generated@@123 (- 100 $generated@@122)) (= $generated@@124 (+ $generated@@122 1)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (<= 0 $generated@@123) (= (- 100 $generated@@124) $generated@@123))) (=> (or (<= 0 $generated@@123) (= (- 100 $generated@@124) $generated@@123)) (=> (= (ControlFlow 0 10) (- 0 9)) (< (- 100 $generated@@124) $generated@@123)))))))
(let (($generated@@142 true))
(let (($generated@@143  (and (=> (= (ControlFlow 0 12) 8) $generated@@142) (=> (= (ControlFlow 0 12) 10) $generated@@141))))
(let (($generated@@144  (=> (and (or (not (= ($generated@@74 20 $generated@@121) ($generated@@60 5))) (not true)) (= (ControlFlow 0 14) 12)) $generated@@143)))
(let (($generated@@145  (=> (and (= ($generated@@74 20 $generated@@121) ($generated@@60 5)) (= (ControlFlow 0 13) 12)) $generated@@143)))
(let (($generated@@146  (=> $generated@@125 (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= $generated@@121 0)) (not true))) (=> (or (not (= $generated@@121 0)) (not true)) (and (=> (= (ControlFlow 0 15) 13) $generated@@145) (=> (= (ControlFlow 0 15) 14) $generated@@144)))))))
(let (($generated@@147 true))
(let (($generated@@148  (and (=> (= (ControlFlow 0 17) 7) $generated@@147) (=> (= (ControlFlow 0 17) 15) $generated@@146))))
(let (($generated@@149 true))
(let (($generated@@150  (=> (and (and (and (and (and (not false) (and (<= 0 $generated@@122) (< $generated@@122 101))) (= $generated@@126 100)) $generated@@127) (= $generated@@128 100)) (and (and (forall (($generated@@151 T@U) ) (!  (=> (and (or (not (= $generated@@151 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@151) $generated)))) (= ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@151) ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@151)))
 :pattern ( ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@151))
)) ($generated@@56 $generated@@129 $generated@@129)) (and (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> (and (or (not (= $generated@@152 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@152) $generated)))) (or (= ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@152) $generated@@153) ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@152) $generated@@153)) ($generated@@8 ($generated@@82 $generated@@20 $generated@@31 $generated@@4 $generated@@130 $generated@@152 $generated@@153))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@152) $generated@@153))
)) (<= (- 100 $generated@@122) $generated@@128)))) (and (=> (= (ControlFlow 0 18) 6) $generated@@149) (=> (= (ControlFlow 0 18) 17) $generated@@148)))))
(let (($generated@@154  (=> (and (and (not (and (= ($generated@@74 20 $generated@@131) ($generated@@60 5)) (< $generated@@132 100))) (= $generated@@133 ($generated@@60 0))) (and (= $generated@@128 (- 100 $generated@@133)) (= (ControlFlow 0 19) 18))) $generated@@150)))
(let (($generated@@155  (=> (and (and (= ($generated@@74 20 $generated@@131) ($generated@@60 5)) (< $generated@@132 100)) (and (= $generated@@134 (- 100 $generated@@132)) (= $generated@@135 (+ $generated@@132 1)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 $generated@@134) (= (- 100 $generated@@135) $generated@@134))) (=> (or (<= 0 $generated@@134) (= (- 100 $generated@@135) $generated@@134)) (=> (= (ControlFlow 0 4) (- 0 3)) (< (- 100 $generated@@135) $generated@@134)))))))
(let (($generated@@156  (and (=> (= (ControlFlow 0 20) 19) $generated@@154) (=> (= (ControlFlow 0 20) 4) $generated@@155))))
(let (($generated@@157  (=> (and (or (not (= ($generated@@74 20 $generated@@131) ($generated@@60 5))) (not true)) (= (ControlFlow 0 22) 20)) $generated@@156)))
(let (($generated@@158  (=> (and (= ($generated@@74 20 $generated@@131) ($generated@@60 5)) (= (ControlFlow 0 21) 20)) $generated@@156)))
(let (($generated@@159  (=> $generated@@127 (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= $generated@@131 0)) (not true))) (=> (or (not (= $generated@@131 0)) (not true)) (and (=> (= (ControlFlow 0 23) 21) $generated@@158) (=> (= (ControlFlow 0 23) 22) $generated@@157)))))))
(let (($generated@@160 true))
(let (($generated@@161  (and (=> (= (ControlFlow 0 25) 2) $generated@@160) (=> (= (ControlFlow 0 25) 23) $generated@@159))))
(let (($generated@@162 true))
(let (($generated@@163  (=> (and (and (and (not false) (and (<= 0 $generated@@132) (< $generated@@132 101))) (= $generated@@126 100)) (and (and (forall (($generated@@164 T@U) ) (!  (=> (and (or (not (= $generated@@164 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@164) $generated)))) (= ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@164) ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@164)))
 :pattern ( ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@164))
)) ($generated@@56 $generated@@129 $generated@@129)) (and (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (and (or (not (= $generated@@165 $generated@@22)) (not true)) ($generated@@8 ($generated@@29 $generated@@4 ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@165) $generated)))) (or (= ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@165) $generated@@166) ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@165) $generated@@166)) ($generated@@8 ($generated@@82 $generated@@20 $generated@@31 $generated@@4 $generated@@130 $generated@@165 $generated@@166))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32 ($generated@@30 $generated@@20 ($generated@@33 $generated@@31 $generated@@32) $generated@@129 $generated@@165) $generated@@166))
)) (<= (- 100 $generated@@132) $generated@@126)))) (and (=> (= (ControlFlow 0 26) 1) $generated@@162) (=> (= (ControlFlow 0 26) 25) $generated@@161)))))
(let (($generated@@167  (=> (and (and (= $generated@@130 ($generated@@83 $generated@@22 $generated@@129 $generated false)) (= $generated@@136 ($generated@@60 0))) (and (= $generated@@126 (- 100 $generated@@136)) (= (ControlFlow 0 27) 26))) $generated@@163)))
(let (($generated@@168  (=> (and (and (and ($generated@@137 $generated@@129) ($generated@@138 $generated@@129)) (and (or (not (= $generated@@139 $generated@@22)) (not true)) (and ($generated@@19 $generated@@20 $generated@@139 $generated@@26) ($generated@@25 $generated@@20 $generated@@139 $generated@@26 $generated@@129)))) (and (and (= 0 $generated@@140) (or (not (= $generated@@131 0)) (not true))) (and (= ($generated@@74 20 $generated@@131) ($generated@@60 5)) (= (ControlFlow 0 28) 27)))) $generated@@167)))
$generated@@168)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 15) (- 16))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)