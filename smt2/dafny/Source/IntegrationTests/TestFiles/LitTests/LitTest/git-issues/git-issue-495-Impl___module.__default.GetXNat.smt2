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
(declare-fun $generated@@21 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@25 (T@U) Bool)
(declare-fun $generated@@26 (T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@33 (Int) Int)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@48 (T@U T@U T@U) Bool)
(declare-fun $generated@@53 (T@U) T@U)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@74 (T@U) Int)
(declare-fun $generated@@75 (T@U) Int)
(declare-fun $generated@@80 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@81 () T@T)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@84 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@85 () T@T)
(declare-fun $generated@@86 (T@T T@T) T@T)
(declare-fun $generated@@87 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@88 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@T) T@T)
(declare-fun $generated@@90 (T@T) T@T)
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
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ) (! ($generated@@21 $generated@@7 $generated@@23 $generated@@22 $generated@@24)
 :pattern ( ($generated@@21 $generated@@7 $generated@@23 $generated@@22 $generated@@24))
)))
(assert (forall (($generated@@27 T@U) ) (!  (=> ($generated@@25 $generated@@27) ($generated@@26 $generated@@27))
 :pattern ( ($generated@@25 $generated@@27))
)))
(assert (= ($generated@@5 $generated@@29) 3))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@31)) ($generated@@26 $generated@@32))
 :pattern ( ($generated@@26 $generated@@32) ($generated@@28 $generated@@29 $generated@@32 ($generated@@30 $generated@@31)))
)))
(assert (forall (($generated@@34 Int) ) (! (= ($generated@@33 $generated@@34) $generated@@34)
 :pattern ( ($generated@@33 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@39 T@U) ) (! (= ($generated@@26 $generated@@39) (= ($generated@@38 $generated@@39) $generated@@2))
 :pattern ( ($generated@@26 $generated@@39))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@41 $generated@@43 ($generated@@40 $generated@@43 $generated@@42)) $generated@@42)
 :pattern ( ($generated@@40 $generated@@43 $generated@@42))
)))
(assert (forall (($generated@@45 T@U) ) (!  (=> ($generated@@26 $generated@@45) (exists (($generated@@46 T@U) ) (= $generated@@45 ($generated@@44 $generated@@46))))
 :pattern ( ($generated@@26 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ) (! (= ($generated@@28 $generated@@7 $generated@@47 $generated@@22) (<= ($generated@@33 0) ($generated@@12 $generated@@47)))
 :pattern ( ($generated@@28 $generated@@7 $generated@@47 $generated@@22))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@T) ) (! (= ($generated@@48 ($generated@@41 $generated@@52 $generated@@49) $generated@@50 $generated@@51) ($generated@@21 $generated@@52 $generated@@49 $generated@@50 $generated@@51))
 :pattern ( ($generated@@48 ($generated@@41 $generated@@52 $generated@@49) $generated@@50 $generated@@51))
)))
(assert (forall (($generated@@55 T@U) ) (!  (and (= ($generated@@53 ($generated@@30 $generated@@55)) $generated@@1) (= ($generated@@54 ($generated@@30 $generated@@55)) $generated@@4))
 :pattern ( ($generated@@30 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ) (!  (=> ($generated@@56 $generated@@57 $generated@@22) (and (= ($generated@@41 $generated@@7 ($generated@@40 $generated@@7 $generated@@57)) $generated@@57) ($generated@@28 $generated@@7 ($generated@@40 $generated@@7 $generated@@57) $generated@@22)))
 :pattern ( ($generated@@56 $generated@@57 $generated@@22))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> ($generated@@58 $generated@@61) (= ($generated@@21 $generated@@29 ($generated@@44 $generated@@60) ($generated@@30 $generated@@59) $generated@@61) ($generated@@48 $generated@@60 $generated@@59 $generated@@61)))
 :pattern ( ($generated@@21 $generated@@29 ($generated@@44 $generated@@60) ($generated@@30 $generated@@59) $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@56 ($generated@@41 $generated@@64 $generated@@62) $generated@@63) ($generated@@28 $generated@@64 $generated@@62 $generated@@63))
 :pattern ( ($generated@@56 ($generated@@41 $generated@@64 $generated@@62) $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ) (! (= ($generated@@65 ($generated@@30 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@30 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@38 ($generated@@44 $generated@@67)) $generated@@2)
 :pattern ( ($generated@@44 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (! (= ($generated@@68 ($generated@@44 $generated@@69)) $generated@@69)
 :pattern ( ($generated@@44 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@40 $generated@@71 ($generated@@41 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@41 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@28 $generated@@29 ($generated@@44 $generated@@73) ($generated@@30 $generated@@72)) ($generated@@56 $generated@@73 $generated@@72))
 :pattern ( ($generated@@28 $generated@@29 ($generated@@44 $generated@@73) ($generated@@30 $generated@@72)))
)))
(assert (forall (($generated@@76 T@U) ) (! (< ($generated@@74 $generated@@76) ($generated@@75 ($generated@@44 $generated@@76)))
 :pattern ( ($generated@@44 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (and ($generated@@58 $generated@@79) (and ($generated@@26 $generated@@77) ($generated@@21 $generated@@29 $generated@@77 ($generated@@30 $generated@@78) $generated@@79))) ($generated@@48 ($generated@@68 $generated@@77) $generated@@78 $generated@@79))
 :pattern ( ($generated@@48 ($generated@@68 $generated@@77) $generated@@78 $generated@@79))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@80 $generated@@91 $generated@@92 $generated@@93 ($generated@@87 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@96 $generated@@97) $generated@@94)
 :weight 0
)) (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@103 $generated@@105) (= ($generated@@80 $generated@@98 $generated@@99 $generated@@100 ($generated@@87 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@105 $generated@@106) ($generated@@80 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@105 $generated@@106)))
 :weight 0
)) (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@113 $generated@@115) (= ($generated@@80 $generated@@107 $generated@@108 $generated@@109 ($generated@@87 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@80 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)))) (= ($generated@@5 $generated@@81) 4)) (= ($generated@@5 $generated@@82) 5)) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@84 $generated@@116 $generated@@117 ($generated@@88 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@118) $generated@@120) $generated@@118)
 :weight 0
))) (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (or (= $generated@@125 $generated@@126) (= ($generated@@84 $generated@@121 $generated@@122 ($generated@@88 $generated@@121 $generated@@122 $generated@@124 $generated@@125 $generated@@123) $generated@@126) ($generated@@84 $generated@@121 $generated@@122 $generated@@124 $generated@@126)))
 :weight 0
))) (= ($generated@@5 $generated@@85) 6)) (forall (($generated@@127 T@T) ($generated@@128 T@T) ) (= ($generated@@5 ($generated@@86 $generated@@127 $generated@@128)) 7))) (forall (($generated@@129 T@T) ($generated@@130 T@T) ) (! (= ($generated@@89 ($generated@@86 $generated@@129 $generated@@130)) $generated@@129)
 :pattern ( ($generated@@86 $generated@@129 $generated@@130))
))) (forall (($generated@@131 T@T) ($generated@@132 T@T) ) (! (= ($generated@@90 ($generated@@86 $generated@@131 $generated@@132)) $generated@@132)
 :pattern ( ($generated@@86 $generated@@131 $generated@@132))
))))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 Bool) ($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@10 ($generated@@80 $generated@@81 $generated@@82 $generated@@6 ($generated@@83 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))  (=> (and (or (not (= $generated@@137 $generated@@133)) (not true)) ($generated@@10 ($generated@@40 $generated@@6 ($generated@@84 $generated@@82 $generated@@85 ($generated@@84 $generated@@81 ($generated@@86 $generated@@82 $generated@@85) $generated@@134 $generated@@137) $generated@@135)))) $generated@@136))
 :pattern ( ($generated@@80 $generated@@81 $generated@@82 $generated@@6 ($generated@@83 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@74 ($generated@@41 $generated@@29 $generated@@139)) ($generated@@75 $generated@@139))
 :pattern ( ($generated@@74 ($generated@@41 $generated@@29 $generated@@139)))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> ($generated@@56 $generated@@141 ($generated@@30 $generated@@140)) (and (= ($generated@@41 $generated@@29 ($generated@@40 $generated@@29 $generated@@141)) $generated@@141) ($generated@@28 $generated@@29 ($generated@@40 $generated@@29 $generated@@141) ($generated@@30 $generated@@140))))
 :pattern ( ($generated@@56 $generated@@141 ($generated@@30 $generated@@140)))
)))
(assert (= ($generated@@53 $generated@@22) $generated@@0))
(assert (= ($generated@@54 $generated@@22) $generated@@3))
(assert (forall (($generated@@142 Int) ) (! (= ($generated@@41 $generated@@7 ($generated@@11 ($generated@@33 $generated@@142))) ($generated@@35 $generated@@85 ($generated@@41 $generated@@7 ($generated@@11 $generated@@142))))
 :pattern ( ($generated@@41 $generated@@7 ($generated@@11 ($generated@@33 $generated@@142))))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@44 ($generated@@35 $generated@@85 $generated@@143)) ($generated@@35 $generated@@29 ($generated@@44 $generated@@143)))
 :pattern ( ($generated@@44 ($generated@@35 $generated@@85 $generated@@143)))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@T) ) (! (= ($generated@@41 $generated@@145 ($generated@@35 $generated@@145 $generated@@144)) ($generated@@35 $generated@@85 ($generated@@41 $generated@@145 $generated@@144)))
 :pattern ( ($generated@@41 $generated@@145 ($generated@@35 $generated@@145 $generated@@144)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 (T@U) Bool)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () Int)
(declare-fun $generated@@152 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@153 true))
(let (($generated@@154 true))
(let (($generated@@155  (=> (= $generated@@146 ($generated@@83 $generated@@147 $generated@@148 $generated false)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@10 ($generated@@35 $generated@@6 ($generated@@9 true)))) (=> ($generated@@10 ($generated@@35 $generated@@6 ($generated@@9 true))) (and (=> (= (ControlFlow 0 3) 1) $generated@@154) (=> (= (ControlFlow 0 3) 2) $generated@@153)))))))
(let (($generated@@156  (=> (and ($generated@@58 $generated@@148) ($generated@@149 $generated@@148)) (=> (and (and (and (and ($generated@@28 $generated@@29 $generated@@150 ($generated@@30 $generated@@22)) ($generated@@21 $generated@@29 $generated@@150 ($generated@@30 $generated@@22) $generated@@148)) ($generated@@25 $generated@@150)) (<= ($generated@@33 0) $generated@@151)) (and (= 1 $generated@@152) (= (ControlFlow 0 5) 3))) $generated@@155))))
$generated@@156)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)