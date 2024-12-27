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
(declare-fun $generated@@2 (T@T) Int)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 (Bool) T@U)
(declare-fun $generated@@7 (T@U) Bool)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun $generated@@9 (T@U) Int)
(declare-fun $generated@@10 (Real) T@U)
(declare-fun $generated@@11 (T@U) Real)
(declare-fun $generated@@18 (T@U) T@U)
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (T@U T@U T@U) Bool)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@23 (T@U) Bool)
(declare-fun $generated@@24 (T@U T@U) Bool)
(declare-fun $generated@@25 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@T T@T) T@T)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@40 (T@T) T@T)
(declare-fun $generated@@41 (T@T) T@T)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@U) Real)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@67 (Int) Real)
(declare-fun $generated@@69 (T@U) Int)
(declare-fun $generated@@70 (T@U) Bool)
(declare-fun $generated@@71 (Int Int) Int)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@90 (T@T T@U T@U) Bool)
(declare-fun $generated@@108 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@109 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@110 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@2 $generated@@3) 0) (= ($generated@@2 $generated@@4) 1)) (= ($generated@@2 $generated@@5) 2)) (forall (($generated@@12 Bool) ) (! (= ($generated@@7 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 T@U) ) (! (= ($generated@@6 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 Int) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Real) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))))
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert (= ($generated@@18 $generated) $generated@@0))
(assert  (=> (< 0 $generated@@19) (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (!  (=> (and (and ($generated@@23 $generated@@26) ($generated@@24 $generated@@27 $generated@@22)) ($generated@@21 $generated@@27 $generated@@22 $generated@@26)) ($generated@@25 $generated@@4 ($generated@@8 ($generated@@20 $generated@@27)) $generated $generated@@26))
 :pattern ( ($generated@@20 $generated@@27) ($generated@@21 $generated@@27 $generated@@22 $generated@@26))
))))
(assert ($generated@@28 $generated@@22))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@31 T@U) ) (!  (=> (or ($generated@@30 $generated@@31) (and (< 1 $generated@@19) ($generated@@24 $generated@@31 $generated@@22))) (= ($generated@@29 $generated@@31) (< ($generated@@20 $generated@@31) 10)))
 :pattern ( ($generated@@29 $generated@@31))
))))
(assert  (and (and (and (and (and (and (and (forall (($generated@@42 T@T) ($generated@@43 T@T) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@33 $generated@@42 $generated@@43 ($generated@@39 $generated@@42 $generated@@43 $generated@@45 $generated@@46 $generated@@44) $generated@@46) $generated@@44)
 :weight 0
)) (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (!  (or (= $generated@@51 $generated@@52) (= ($generated@@33 $generated@@47 $generated@@48 ($generated@@39 $generated@@47 $generated@@48 $generated@@50 $generated@@51 $generated@@49) $generated@@52) ($generated@@33 $generated@@47 $generated@@48 $generated@@50 $generated@@52)))
 :weight 0
))) (= ($generated@@2 $generated@@34) 3)) (= ($generated@@2 $generated@@35) 4)) (= ($generated@@2 $generated@@36) 5)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ) (= ($generated@@2 ($generated@@37 $generated@@53 $generated@@54)) 6))) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (! (= ($generated@@40 ($generated@@37 $generated@@55 $generated@@56)) $generated@@55)
 :pattern ( ($generated@@37 $generated@@55 $generated@@56))
))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@41 ($generated@@37 $generated@@57 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@37 $generated@@57 $generated@@58))
))))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> ($generated@@32 $generated@@59 $generated@@60) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@59 $generated@@61) $generated@@1))) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@60 $generated@@61) $generated@@1))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@60 $generated@@61) $generated@@1))
)))
 :pattern ( ($generated@@32 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@62 $generated@@64 $generated@@63) $generated@@63)
 :pattern ( ($generated@@62 $generated@@64 $generated@@63))
)))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@68 T@U) ) (!  (=> (or ($generated@@66 ($generated@@62 $generated@@35 $generated@@68)) (and (< 2 $generated@@19) (and ($generated@@24 $generated@@68 $generated@@22) (not ($generated@@7 ($generated@@62 $generated@@3 ($generated@@6 ($generated@@29 ($generated@@62 $generated@@35 $generated@@68))))))))) (= ($generated@@65 ($generated@@62 $generated@@35 $generated@@68)) (/ 100.0 ($generated@@67 ($generated@@20 ($generated@@62 $generated@@35 $generated@@68))))))
 :weight 3
 :pattern ( ($generated@@65 ($generated@@62 $generated@@35 $generated@@68)))
))))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@72 T@U) ) (!  (=> (or ($generated@@70 $generated@@72) (and (< 2 $generated@@19) (and ($generated@@24 $generated@@72 $generated@@22) ($generated@@29 $generated@@72)))) (= ($generated@@69 $generated@@72) ($generated@@71 100 (- ($generated@@20 $generated@@72) 10))))
 :pattern ( ($generated@@69 $generated@@72))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@73 T@U) ) (!  (=> (or ($generated@@30 ($generated@@62 $generated@@35 $generated@@73)) (and (< 1 $generated@@19) ($generated@@24 $generated@@73 $generated@@22))) (= ($generated@@29 ($generated@@62 $generated@@35 $generated@@73)) (< ($generated@@20 ($generated@@62 $generated@@35 $generated@@73)) 10)))
 :weight 3
 :pattern ( ($generated@@29 ($generated@@62 $generated@@35 $generated@@73)))
))))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 ($generated@@38 $generated@@76 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@38 $generated@@76 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@21 ($generated@@74 $generated@@80 $generated@@77) $generated@@78 $generated@@79) ($generated@@25 $generated@@80 $generated@@77 $generated@@78 $generated@@79))
 :pattern ( ($generated@@21 ($generated@@74 $generated@@80 $generated@@77) $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> ($generated@@32 $generated@@81 $generated@@82) (=> ($generated@@21 $generated@@83 $generated@@84 $generated@@81) ($generated@@21 $generated@@83 $generated@@84 $generated@@82)))
 :pattern ( ($generated@@32 $generated@@81 $generated@@82) ($generated@@21 $generated@@83 $generated@@84 $generated@@81))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (!  (=> ($generated@@32 $generated@@85 $generated@@86) (=> ($generated@@25 $generated@@89 $generated@@87 $generated@@88 $generated@@85) ($generated@@25 $generated@@89 $generated@@87 $generated@@88 $generated@@86)))
 :pattern ( ($generated@@32 $generated@@85 $generated@@86) ($generated@@25 $generated@@89 $generated@@87 $generated@@88 $generated@@85))
)))
(assert  (=> (< 0 $generated@@19) (forall (($generated@@91 T@U) ) (!  (=> ($generated@@24 $generated@@91 $generated@@22) ($generated@@90 $generated@@4 ($generated@@8 ($generated@@20 $generated@@91)) $generated))
 :pattern ( ($generated@@20 $generated@@91))
))))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@92 T@U) ) (!  (=> (or ($generated@@70 ($generated@@62 $generated@@35 $generated@@92)) (and (< 2 $generated@@19) (and ($generated@@24 $generated@@92 $generated@@22) ($generated@@7 ($generated@@62 $generated@@3 ($generated@@6 ($generated@@29 ($generated@@62 $generated@@35 $generated@@92)))))))) (= ($generated@@69 ($generated@@62 $generated@@35 $generated@@92)) ($generated@@71 100 (- ($generated@@20 ($generated@@62 $generated@@35 $generated@@92)) 10))))
 :weight 3
 :pattern ( ($generated@@69 ($generated@@62 $generated@@35 $generated@@92)))
))))
(assert (forall (($generated@@93 Int) ($generated@@94 Int) ) (! (= ($generated@@71 $generated@@93 $generated@@94) (div $generated@@93 $generated@@94))
 :pattern ( ($generated@@71 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 Int) ) (! (= ($generated@@67 $generated@@95) (to_real $generated@@95))
 :pattern ( ($generated@@67 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> (or (not (= $generated@@96 $generated@@98)) (not true)) (=> (and ($generated@@32 $generated@@96 $generated@@97) ($generated@@32 $generated@@97 $generated@@98)) ($generated@@32 $generated@@96 $generated@@98)))
 :pattern ( ($generated@@32 $generated@@96 $generated@@97) ($generated@@32 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ) (!  (=> ($generated@@24 $generated@@99 $generated) (and (= ($generated@@74 $generated@@4 ($generated@@38 $generated@@4 $generated@@99)) $generated@@99) ($generated@@90 $generated@@4 ($generated@@38 $generated@@4 $generated@@99) $generated)))
 :pattern ( ($generated@@24 $generated@@99 $generated))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@24 ($generated@@74 $generated@@102 $generated@@100) $generated@@101) ($generated@@90 $generated@@102 $generated@@100 $generated@@101))
 :pattern ( ($generated@@24 ($generated@@74 $generated@@102 $generated@@100) $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@28 $generated@@103) (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> ($generated@@24 $generated@@105 $generated@@103) ($generated@@21 $generated@@105 $generated@@103 $generated@@104))
 :pattern ( ($generated@@21 $generated@@105 $generated@@103 $generated@@104))
)))
 :pattern ( ($generated@@28 $generated@@103))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@T) ) (! (= ($generated@@38 $generated@@107 ($generated@@74 $generated@@107 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@74 $generated@@107 $generated@@106))
)))
(assert  (and (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@108 $generated@@111 $generated@@112 $generated@@113 ($generated@@110 $generated@@111 $generated@@112 $generated@@113 $generated@@115 $generated@@116 $generated@@117 $generated@@114) $generated@@116 $generated@@117) $generated@@114)
 :weight 0
)) (and (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (or (= $generated@@123 $generated@@125) (= ($generated@@108 $generated@@118 $generated@@119 $generated@@120 ($generated@@110 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@124 $generated@@121) $generated@@125 $generated@@126) ($generated@@108 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@125 $generated@@126)))
 :weight 0
)) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (or (= $generated@@133 $generated@@135) (= ($generated@@108 $generated@@127 $generated@@128 $generated@@129 ($generated@@110 $generated@@127 $generated@@128 $generated@@129 $generated@@131 $generated@@132 $generated@@133 $generated@@130) $generated@@134 $generated@@135) ($generated@@108 $generated@@127 $generated@@128 $generated@@129 $generated@@131 $generated@@134 $generated@@135)))
 :weight 0
)))))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 Bool) ($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@7 ($generated@@108 $generated@@36 $generated@@34 $generated@@3 ($generated@@109 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))  (=> (and (or (not (= $generated@@140 $generated@@136)) (not true)) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@137 $generated@@140) $generated@@138)))) $generated@@139))
 :pattern ( ($generated@@108 $generated@@36 $generated@@34 $generated@@3 ($generated@@109 $generated@@136 $generated@@137 $generated@@138 $generated@@139) $generated@@140 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@T) ) (! (= ($generated@@74 $generated@@143 ($generated@@62 $generated@@143 $generated@@142)) ($generated@@62 $generated@@35 ($generated@@74 $generated@@143 $generated@@142)))
 :pattern ( ($generated@@74 $generated@@143 ($generated@@62 $generated@@143 $generated@@142)))
)))
(assert  (=> (<= 2 $generated@@19) (forall (($generated@@144 T@U) ) (!  (=> (or ($generated@@66 $generated@@144) (and (< 2 $generated@@19) (and ($generated@@24 $generated@@144 $generated@@22) (not ($generated@@29 $generated@@144))))) (= ($generated@@65 $generated@@144) (/ 100.0 ($generated@@67 ($generated@@20 $generated@@144)))))
 :pattern ( ($generated@@65 $generated@@144))
))))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (! ($generated@@25 $generated@@4 $generated@@146 $generated $generated@@145)
 :pattern ( ($generated@@25 $generated@@4 $generated@@146 $generated $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ) (! ($generated@@90 $generated@@4 $generated@@147 $generated)
 :pattern ( ($generated@@90 $generated@@4 $generated@@147 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 (T@U) Bool)
(declare-fun $generated@@156 () T@U)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@157  (=> (not ($generated@@29 $generated@@148)) (=> (and ($generated@@21 $generated@@148 $generated@@22 $generated@@149) (= (ControlFlow 0 4) (- 0 3))) (not ($generated@@29 $generated@@148))))))
(let (($generated@@158  (=> ($generated@@29 $generated@@148) (=> (and (and ($generated@@21 $generated@@148 $generated@@22 $generated@@149) (= (ControlFlow 0 2) (- 0 1))) ($generated@@30 $generated@@148)) (or ($generated@@29 $generated@@148) (< ($generated@@20 $generated@@148) 10))))))
(let (($generated@@159  (=> (= $generated@@150 ($generated@@109 $generated@@151 $generated@@152 $generated@@1 false)) (=> (and ($generated@@24 $generated@@153 $generated@@22) ($generated@@21 $generated@@153 $generated@@22 $generated@@152)) (=> (and (and ($generated@@24 $generated@@154 $generated@@22) ($generated@@21 $generated@@154 $generated@@22 $generated@@152)) (and ($generated@@23 $generated@@149) ($generated@@155 $generated@@149))) (=> (and (and (and ($generated@@24 $generated@@148 $generated@@22) ($generated@@21 $generated@@148 $generated@@22 $generated@@149)) (forall (($generated@@160 T@U) ) (!  (=> (and (or (not (= $generated@@160 $generated@@151)) (not true)) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@152 $generated@@160) $generated@@1)))) (= ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@149 $generated@@160) ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@152 $generated@@160)))
 :pattern ( ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@149 $generated@@160))
))) (and (and ($generated@@32 $generated@@152 $generated@@149) ($generated@@21 $generated@@148 $generated@@22 $generated@@149)) (and ($generated@@30 $generated@@148) ($generated@@30 $generated@@148)))) (and (=> (= (ControlFlow 0 5) 2) $generated@@158) (=> (= (ControlFlow 0 5) 4) $generated@@157))))))))
(let (($generated@@161  (=> (and ($generated@@23 $generated@@152) ($generated@@155 $generated@@152)) (=> (and (and (and ($generated@@24 $generated@@156 $generated@@22) ($generated@@21 $generated@@156 $generated@@22 $generated@@152)) true) (and (= 3 $generated@@19) (= (ControlFlow 0 6) 5))) $generated@@159))))
$generated@@161)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)