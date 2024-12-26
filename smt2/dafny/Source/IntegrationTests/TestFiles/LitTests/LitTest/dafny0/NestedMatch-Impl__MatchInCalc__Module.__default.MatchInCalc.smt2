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
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (Int) Int)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@37 (Int) T@U)
(declare-fun $generated@@40 (Int) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@45 (Int Int) Int)
(declare-fun $generated@@48 (T@T T@U T@U) Bool)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@53 (T@U) Int)
(declare-fun $generated@@56 (T@U) Int)
(declare-fun $generated@@62 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@63 () T@T)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@66 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 (T@T T@T) T@T)
(declare-fun $generated@@69 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@70 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@T) T@T)
(declare-fun $generated@@72 (T@T) T@T)
(declare-fun $generated@@121 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@122 (T@U) Bool)
(declare-fun $generated@@129 (T@U) T@U)
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
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@24 Int) ) (! (= ($generated@@23 $generated@@24) $generated@@24)
 :pattern ( ($generated@@23 $generated@@24))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@T) ) (! (= ($generated@@25 $generated@@27 $generated@@26) $generated@@26)
 :pattern ( ($generated@@25 $generated@@27 $generated@@26))
)))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@28 $generated@@30) (= ($generated@@29 $generated@@30) $generated@@3))
 :pattern ( ($generated@@28 $generated@@30))
)))
(assert (forall (($generated@@32 T@U) ) (! (= ($generated@@31 $generated@@32) (= ($generated@@29 $generated@@32) $generated@@4))
 :pattern ( ($generated@@31 $generated@@32))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@T) ) (! (= ($generated@@34 $generated@@36 ($generated@@33 $generated@@36 $generated@@35)) $generated@@35)
 :pattern ( ($generated@@33 $generated@@36 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ) (!  (=> ($generated@@28 $generated@@38) (exists (($generated@@39 Int) ) (= $generated@@38 ($generated@@37 $generated@@39))))
 :pattern ( ($generated@@28 $generated@@38))
)))
(assert (forall (($generated@@41 T@U) ) (!  (=> ($generated@@31 $generated@@41) (exists (($generated@@42 Int) ) (= $generated@@41 ($generated@@40 $generated@@42))))
 :pattern ( ($generated@@31 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@43 $generated@@44) (or ($generated@@28 $generated@@44) ($generated@@31 $generated@@44)))
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 Int) ($generated@@47 Int) ) (! (= ($generated@@45 $generated@@46 $generated@@47) (div $generated@@46 $generated@@47))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47))
)))
(assert (= ($generated@@6 $generated@@49) 3))
(assert (forall (($generated@@51 T@U) ) (!  (=> ($generated@@48 $generated@@49 $generated@@51 $generated@@50) (or ($generated@@28 $generated@@51) ($generated@@31 $generated@@51)))
 :pattern ( ($generated@@31 $generated@@51) ($generated@@48 $generated@@49 $generated@@51 $generated@@50))
 :pattern ( ($generated@@28 $generated@@51) ($generated@@48 $generated@@49 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@52 Int) ) (! (= ($generated@@29 ($generated@@37 $generated@@52)) $generated@@3)
 :pattern ( ($generated@@37 $generated@@52))
)))
(assert (forall (($generated@@54 Int) ) (! (= ($generated@@53 ($generated@@37 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@37 $generated@@54))
)))
(assert (forall (($generated@@55 Int) ) (! (= ($generated@@29 ($generated@@40 $generated@@55)) $generated@@4)
 :pattern ( ($generated@@40 $generated@@55))
)))
(assert (forall (($generated@@57 Int) ) (! (= ($generated@@56 ($generated@@40 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@40 $generated@@57))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@33 $generated@@59 ($generated@@34 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@34 $generated@@59 $generated@@58))
)))
(assert (forall (($generated@@60 Int) ) (! (= ($generated@@48 $generated@@49 ($generated@@37 $generated@@60) $generated@@50) ($generated@@48 $generated@@8 ($generated@@12 $generated@@60) $generated))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@37 $generated@@60) $generated@@50))
)))
(assert (forall (($generated@@61 Int) ) (! (= ($generated@@48 $generated@@49 ($generated@@40 $generated@@61) $generated@@50) ($generated@@48 $generated@@8 ($generated@@12 $generated@@61) $generated))
 :pattern ( ($generated@@48 $generated@@49 ($generated@@40 $generated@@61) $generated@@50))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@62 $generated@@73 $generated@@74 $generated@@75 ($generated@@69 $generated@@73 $generated@@74 $generated@@75 $generated@@77 $generated@@78 $generated@@79 $generated@@76) $generated@@78 $generated@@79) $generated@@76)
 :weight 0
)) (and (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (or (= $generated@@85 $generated@@87) (= ($generated@@62 $generated@@80 $generated@@81 $generated@@82 ($generated@@69 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@85 $generated@@86 $generated@@83) $generated@@87 $generated@@88) ($generated@@62 $generated@@80 $generated@@81 $generated@@82 $generated@@84 $generated@@87 $generated@@88)))
 :weight 0
)) (forall (($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (or (= $generated@@95 $generated@@97) (= ($generated@@62 $generated@@89 $generated@@90 $generated@@91 ($generated@@69 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@95 $generated@@92) $generated@@96 $generated@@97) ($generated@@62 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@96 $generated@@97)))
 :weight 0
)))) (= ($generated@@6 $generated@@63) 4)) (= ($generated@@6 $generated@@64) 5)) (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@66 $generated@@98 $generated@@99 ($generated@@70 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@100) $generated@@102) $generated@@100)
 :weight 0
))) (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (or (= $generated@@107 $generated@@108) (= ($generated@@66 $generated@@103 $generated@@104 ($generated@@70 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@105) $generated@@108) ($generated@@66 $generated@@103 $generated@@104 $generated@@106 $generated@@108)))
 :weight 0
))) (= ($generated@@6 $generated@@67) 6)) (forall (($generated@@109 T@T) ($generated@@110 T@T) ) (= ($generated@@6 ($generated@@68 $generated@@109 $generated@@110)) 7))) (forall (($generated@@111 T@T) ($generated@@112 T@T) ) (! (= ($generated@@71 ($generated@@68 $generated@@111 $generated@@112)) $generated@@111)
 :pattern ( ($generated@@68 $generated@@111 $generated@@112))
))) (forall (($generated@@113 T@T) ($generated@@114 T@T) ) (! (= ($generated@@72 ($generated@@68 $generated@@113 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@68 $generated@@113 $generated@@114))
))))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 Bool) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@11 ($generated@@62 $generated@@63 $generated@@64 $generated@@7 ($generated@@65 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))  (=> (and (or (not (= $generated@@119 $generated@@115)) (not true)) ($generated@@11 ($generated@@33 $generated@@7 ($generated@@66 $generated@@64 $generated@@67 ($generated@@66 $generated@@63 ($generated@@68 $generated@@64 $generated@@67) $generated@@116 $generated@@119) $generated@@117)))) $generated@@118))
 :pattern ( ($generated@@62 $generated@@63 $generated@@64 $generated@@7 ($generated@@65 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (and ($generated@@122 $generated@@124) (and ($generated@@28 $generated@@123) ($generated@@121 $generated@@49 $generated@@123 $generated@@50 $generated@@124))) ($generated@@121 $generated@@8 ($generated@@12 ($generated@@53 $generated@@123)) $generated $generated@@124))
 :pattern ( ($generated@@121 $generated@@8 ($generated@@12 ($generated@@53 $generated@@123)) $generated $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and ($generated@@122 $generated@@126) (and ($generated@@31 $generated@@125) ($generated@@121 $generated@@49 $generated@@125 $generated@@50 $generated@@126))) ($generated@@121 $generated@@8 ($generated@@12 ($generated@@56 $generated@@125)) $generated $generated@@126))
 :pattern ( ($generated@@121 $generated@@8 ($generated@@12 ($generated@@56 $generated@@125)) $generated $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> (and ($generated@@122 $generated@@128) ($generated@@48 $generated@@49 $generated@@127 $generated@@50)) ($generated@@121 $generated@@49 $generated@@127 $generated@@50 $generated@@128))
 :pattern ( ($generated@@121 $generated@@49 $generated@@127 $generated@@50 $generated@@128))
)))
(assert (= ($generated@@22 $generated@@50) $generated@@2))
(assert (= ($generated@@129 $generated@@50) $generated@@5))
(assert (forall (($generated@@130 Int) ) (! (= ($generated@@34 $generated@@8 ($generated@@12 ($generated@@23 $generated@@130))) ($generated@@25 $generated@@67 ($generated@@34 $generated@@8 ($generated@@12 $generated@@130))))
 :pattern ( ($generated@@34 $generated@@8 ($generated@@12 ($generated@@23 $generated@@130))))
)))
(assert (forall (($generated@@131 Int) ) (! (= ($generated@@37 ($generated@@23 $generated@@131)) ($generated@@25 $generated@@49 ($generated@@37 $generated@@131)))
 :pattern ( ($generated@@37 ($generated@@23 $generated@@131)))
)))
(assert (forall (($generated@@132 Int) ) (! (= ($generated@@40 ($generated@@23 $generated@@132)) ($generated@@25 $generated@@49 ($generated@@40 $generated@@132)))
 :pattern ( ($generated@@40 ($generated@@23 $generated@@132)))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@T) ) (! (= ($generated@@34 $generated@@134 ($generated@@25 $generated@@134 $generated@@133)) ($generated@@25 $generated@@67 ($generated@@34 $generated@@134 $generated@@133)))
 :pattern ( ($generated@@34 $generated@@134 ($generated@@25 $generated@@134 $generated@@133)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! ($generated@@121 $generated@@8 $generated@@136 $generated $generated@@135)
 :pattern ( ($generated@@121 $generated@@8 $generated@@136 $generated $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (! ($generated@@48 $generated@@8 $generated@@137 $generated)
 :pattern ( ($generated@@48 $generated@@8 $generated@@137 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@138 (T@U) Bool)
(declare-fun $generated@@139 () T@U)
(declare-fun $generated@@140 () Int)
(declare-fun $generated@@141 () Int)
(declare-fun $generated@@142 () Int)
(declare-fun $generated@@143 () Int)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () Int)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 (T@U) Bool)
(declare-fun $generated@@148 (T@U) Bool)
(declare-fun $generated@@149 (T@U) Bool)
(declare-fun $generated@@150 () Int)
(declare-fun $generated@@151 () Int)
(declare-fun $generated@@152 () Int)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 (T@U) Bool)
(declare-fun $generated@@157 () Int)
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
 (=> (= (ControlFlow 0 0) 18) (let (($generated@@158  (=> (= (ControlFlow 0 11) (- 0 10)) (= ($generated@@138 $generated@@139) (ite ($generated@@28 $generated@@139) (let (($generated@@159 ($generated@@53 $generated@@139)))
(= ($generated@@23 2) ($generated@@45 10 $generated@@159))) ($generated@@11 ($generated@@25 $generated@@7 ($generated@@10 false))))))))
(let (($generated@@160  (=> (= $generated@@139 ($generated@@40 $generated@@140)) (=> (and (and (= $generated@@141 $generated@@140) ($generated@@48 $generated@@8 ($generated@@12 $generated@@141) $generated)) (and (= $generated@@142 $generated@@141) (= (ControlFlow 0 14) 11))) $generated@@158))))
(let (($generated@@161  (=> (and (and (= $generated@@139 ($generated@@37 $generated@@143)) (= $generated@@144 $generated@@143)) (and ($generated@@48 $generated@@8 ($generated@@12 $generated@@144) $generated) (= $generated@@145 $generated@@144))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= $generated@@145 0)) (not true))) (=> (= (ControlFlow 0 12) 11) $generated@@158)))))
(let (($generated@@162 true))
(let (($generated@@163  (=> (or (not (= $generated@@139 ($generated@@37 $generated@@143))) (not true)) (and (=> (= (ControlFlow 0 15) 14) $generated@@160) (=> (= (ControlFlow 0 15) 9) $generated@@162)))))
(let (($generated@@164  (=> ($generated@@121 $generated@@49 $generated@@139 $generated@@50 $generated@@146) (=> (and ($generated@@147 $generated@@139) ($generated@@147 $generated@@139)) (and (=> (= (ControlFlow 0 16) 12) $generated@@161) (=> (= (ControlFlow 0 16) 15) $generated@@163))))))
(let (($generated@@165  (=> (and (and ($generated@@121 $generated@@49 $generated@@139 $generated@@50 $generated@@146) ($generated@@148 $generated@@139)) (and ($generated@@148 $generated@@139) (= (ControlFlow 0 5) (- 0 4)))) (= (ite ($generated@@28 $generated@@139) (let (($generated@@166 ($generated@@53 $generated@@139)))
(= ($generated@@23 2) ($generated@@45 10 $generated@@166))) ($generated@@11 ($generated@@25 $generated@@7 ($generated@@10 false))))  (not ($generated@@149 $generated@@139))))))
(let (($generated@@167  (=> (= $generated@@139 ($generated@@40 $generated@@140)) (=> (and (and (= $generated@@150 $generated@@140) ($generated@@48 $generated@@8 ($generated@@12 $generated@@150) $generated)) (and (= $generated@@151 $generated@@150) (= (ControlFlow 0 7) 5))) $generated@@165))))
(let (($generated@@168  (=> (and (= $generated@@139 ($generated@@37 $generated@@143)) (= $generated@@152 $generated@@143)) (=> (and (and ($generated@@48 $generated@@8 ($generated@@12 $generated@@152) $generated) (= $generated@@153 $generated@@152)) (and (or (not (= $generated@@153 0)) (not true)) (= (ControlFlow 0 6) 5))) $generated@@165))))
(let (($generated@@169 true))
(let (($generated@@170  (=> (or (not (= $generated@@139 ($generated@@37 $generated@@143))) (not true)) (and (=> (= (ControlFlow 0 8) 7) $generated@@167) (=> (= (ControlFlow 0 8) 3) $generated@@169)))))
(let (($generated@@171 true))
(let (($generated@@172 true))
(let (($generated@@173  (=> (= $generated@@154 ($generated@@65 $generated@@155 $generated@@146 $generated@@1 false)) (and (and (and (and (=> (= (ControlFlow 0 17) 1) $generated@@172) (=> (= (ControlFlow 0 17) 16) $generated@@164)) (=> (= (ControlFlow 0 17) 2) $generated@@171)) (=> (= (ControlFlow 0 17) 6) $generated@@168)) (=> (= (ControlFlow 0 17) 8) $generated@@170)))))
(let (($generated@@174  (=> (and ($generated@@122 $generated@@146) ($generated@@156 $generated@@146)) (=> (and (and (and (and ($generated@@48 $generated@@49 $generated@@139 $generated@@50) ($generated@@121 $generated@@49 $generated@@139 $generated@@50 $generated@@146)) ($generated@@43 $generated@@139)) (= 2 $generated@@157)) (and (and (not ($generated@@138 $generated@@139)) ($generated@@149 $generated@@139)) (and ($generated@@31 $generated@@139) (= (ControlFlow 0 18) 17)))) $generated@@173))))
$generated@@174))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)