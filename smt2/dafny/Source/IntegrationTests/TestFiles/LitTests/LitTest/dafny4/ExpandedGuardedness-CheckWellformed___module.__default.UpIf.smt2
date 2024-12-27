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
(declare-fun $generated@@22 (T@U) Bool)
(declare-fun $generated@@23 (T@T T@U T@U) Bool)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@28 () Int)
(declare-fun $generated@@29 (T@U Int) T@U)
(declare-fun $generated@@30 (Int) Bool)
(declare-fun $generated@@33 (Int) Int)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U T@U) Bool)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@U T@U T@U) Bool)
(declare-fun $generated@@53 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@58 (T@U) T@U)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@61 (Int Int) Int)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@76 (T@U) T@U)
(declare-fun $generated@@82 (T@U) Bool)
(declare-fun $generated@@86 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@87 () T@T)
(declare-fun $generated@@88 () T@T)
(declare-fun $generated@@89 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@90 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@T T@T) T@T)
(declare-fun $generated@@93 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@94 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@95 (T@T) T@T)
(declare-fun $generated@@96 (T@T) T@T)
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
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (= ($generated@@5 $generated@@24) 3))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (!  (=> ($generated@@23 $generated@@24 $generated@@27 ($generated@@25 $generated@@26)) ($generated@@22 $generated@@27))
 :pattern ( ($generated@@22 $generated@@27) ($generated@@23 $generated@@24 $generated@@27 ($generated@@25 $generated@@26)))
)))
(assert  (=> (<= 1 $generated@@28) (forall (($generated@@31 T@U) ($generated@@32 Int) ) (!  (=> (or ($generated@@30 $generated@@32) (< 1 $generated@@28)) ($generated@@23 $generated@@24 ($generated@@29 $generated@@31 $generated@@32) ($generated@@25 $generated)))
 :pattern ( ($generated@@29 $generated@@31 $generated@@32))
))))
(assert (forall (($generated@@34 Int) ) (! (= ($generated@@33 $generated@@34) $generated@@34)
 :pattern ( ($generated@@33 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@23 $generated@@24 ($generated@@38 $generated@@41 $generated@@42) ($generated@@25 $generated@@40))  (and ($generated@@39 $generated@@41 $generated@@40) ($generated@@23 $generated@@24 $generated@@42 ($generated@@25 $generated@@40))))
 :pattern ( ($generated@@23 $generated@@24 ($generated@@38 $generated@@41 $generated@@42) ($generated@@25 $generated@@40)))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@22 $generated@@44) (= ($generated@@43 $generated@@44) $generated@@3))
 :pattern ( ($generated@@22 $generated@@44))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@T) ) (! (= ($generated@@46 $generated@@48 ($generated@@45 $generated@@48 $generated@@47)) $generated@@47)
 :pattern ( ($generated@@45 $generated@@48 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ) (!  (=> ($generated@@22 $generated@@49) (exists (($generated@@50 T@U) ($generated@@51 T@U) ) (= $generated@@49 ($generated@@38 $generated@@50 $generated@@51))))
 :pattern ( ($generated@@22 $generated@@49))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@52 ($generated@@46 $generated@@57 $generated@@54) $generated@@55 $generated@@56) ($generated@@53 $generated@@57 $generated@@54 $generated@@55 $generated@@56))
 :pattern ( ($generated@@52 ($generated@@46 $generated@@57 $generated@@54) $generated@@55 $generated@@56))
)))
(assert (forall (($generated@@59 T@U) ) (!  (and (= ($generated@@21 ($generated@@25 $generated@@59)) $generated@@2) (= ($generated@@58 ($generated@@25 $generated@@59)) $generated@@4))
 :pattern ( ($generated@@25 $generated@@59))
)))
(assert  (=> (<= 1 $generated@@28) (forall (($generated@@62 T@U) ($generated@@63 Int) ) (!  (=> (or ($generated@@30 $generated@@63) (< 1 $generated@@28)) (and (and (=> (= ($generated@@61 $generated@@63 ($generated@@33 2)) ($generated@@33 1)) ($generated@@30 (+ $generated@@63 1))) (=> (or (not (= ($generated@@61 $generated@@63 ($generated@@33 2)) ($generated@@33 1))) (not true)) ($generated@@30 (+ $generated@@63 2)))) (= ($generated@@29 ($generated@@60 $generated@@62) $generated@@63) (ite (= ($generated@@61 $generated@@63 ($generated@@33 2)) ($generated@@33 1)) ($generated@@38 ($generated@@46 $generated@@7 ($generated@@11 $generated@@63)) ($generated@@29 $generated@@62 (+ $generated@@63 1))) ($generated@@38 ($generated@@46 $generated@@7 ($generated@@11 $generated@@63)) ($generated@@29 $generated@@62 (+ $generated@@63 2)))))))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@62) $generated@@63))
))))
(assert (forall (($generated@@64 T@U) ) (!  (=> ($generated@@39 $generated@@64 $generated) (and (= ($generated@@46 $generated@@7 ($generated@@45 $generated@@7 $generated@@64)) $generated@@64) ($generated@@23 $generated@@7 ($generated@@45 $generated@@7 $generated@@64) $generated)))
 :pattern ( ($generated@@39 $generated@@64 $generated))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@39 ($generated@@46 $generated@@67 $generated@@65) $generated@@66) ($generated@@23 $generated@@67 $generated@@65 $generated@@66))
 :pattern ( ($generated@@39 ($generated@@46 $generated@@67 $generated@@65) $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@43 ($generated@@38 $generated@@68 $generated@@69)) $generated@@3)
 :pattern ( ($generated@@38 $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@70 ($generated@@38 $generated@@71 $generated@@72)) $generated@@71)
 :pattern ( ($generated@@38 $generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@73 ($generated@@38 $generated@@74 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@38 $generated@@74 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ) (! (= ($generated@@76 ($generated@@25 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@25 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@45 $generated@@79 ($generated@@46 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@46 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 Int) ) (! (= ($generated@@29 ($generated@@60 $generated@@80) $generated@@81) ($generated@@29 $generated@@80 $generated@@81))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@80) $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> (and ($generated@@82 $generated@@85) (and ($generated@@22 $generated@@83) ($generated@@53 $generated@@24 $generated@@83 ($generated@@25 $generated@@84) $generated@@85))) ($generated@@52 ($generated@@70 $generated@@83) $generated@@84 $generated@@85))
 :pattern ( ($generated@@52 ($generated@@70 $generated@@83) $generated@@84 $generated@@85))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@86 $generated@@97 $generated@@98 $generated@@99 ($generated@@93 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@103 $generated@@100) $generated@@102 $generated@@103) $generated@@100)
 :weight 0
)) (and (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@109 $generated@@111) (= ($generated@@86 $generated@@104 $generated@@105 $generated@@106 ($generated@@93 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@86 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)) (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@86 $generated@@113 $generated@@114 $generated@@115 ($generated@@93 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@119 $generated@@116) $generated@@120 $generated@@121) ($generated@@86 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@120 $generated@@121)))
 :weight 0
)))) (= ($generated@@5 $generated@@87) 4)) (= ($generated@@5 $generated@@88) 5)) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@90 $generated@@122 $generated@@123 ($generated@@94 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@126) $generated@@124)
 :weight 0
))) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@131 $generated@@132) (= ($generated@@90 $generated@@127 $generated@@128 ($generated@@94 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@129) $generated@@132) ($generated@@90 $generated@@127 $generated@@128 $generated@@130 $generated@@132)))
 :weight 0
))) (= ($generated@@5 $generated@@91) 6)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ) (= ($generated@@5 ($generated@@92 $generated@@133 $generated@@134)) 7))) (forall (($generated@@135 T@T) ($generated@@136 T@T) ) (! (= ($generated@@95 ($generated@@92 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@92 $generated@@135 $generated@@136))
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (! (= ($generated@@96 ($generated@@92 $generated@@137 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@92 $generated@@137 $generated@@138))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 Bool) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@10 ($generated@@86 $generated@@87 $generated@@88 $generated@@6 ($generated@@89 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))  (=> (and (or (not (= $generated@@143 $generated@@139)) (not true)) ($generated@@10 ($generated@@45 $generated@@6 ($generated@@90 $generated@@88 $generated@@91 ($generated@@90 $generated@@87 ($generated@@92 $generated@@88 $generated@@91) $generated@@140 $generated@@143) $generated@@141)))) $generated@@142))
 :pattern ( ($generated@@86 $generated@@87 $generated@@88 $generated@@6 ($generated@@89 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 Int) ($generated@@146 Int) ) (! (= ($generated@@61 $generated@@145 $generated@@146) (mod $generated@@145 $generated@@146))
 :pattern ( ($generated@@61 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@39 $generated@@148 ($generated@@25 $generated@@147)) (and (= ($generated@@46 $generated@@24 ($generated@@45 $generated@@24 $generated@@148)) $generated@@148) ($generated@@23 $generated@@24 ($generated@@45 $generated@@24 $generated@@148) ($generated@@25 $generated@@147))))
 :pattern ( ($generated@@39 $generated@@148 ($generated@@25 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (and ($generated@@82 $generated@@151) (and ($generated@@22 $generated@@149) ($generated@@53 $generated@@24 $generated@@149 ($generated@@25 $generated@@150) $generated@@151))) ($generated@@53 $generated@@24 ($generated@@73 $generated@@149) ($generated@@25 $generated@@150) $generated@@151))
 :pattern ( ($generated@@53 $generated@@24 ($generated@@73 $generated@@149) ($generated@@25 $generated@@150) $generated@@151))
)))
(assert (forall (($generated@@152 Int) ) (! (= ($generated@@46 $generated@@7 ($generated@@11 ($generated@@33 $generated@@152))) ($generated@@35 $generated@@91 ($generated@@46 $generated@@7 ($generated@@11 $generated@@152))))
 :pattern ( ($generated@@46 $generated@@7 ($generated@@11 ($generated@@33 $generated@@152))))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@T) ) (! (= ($generated@@46 $generated@@154 ($generated@@35 $generated@@154 $generated@@153)) ($generated@@35 $generated@@91 ($generated@@46 $generated@@154 $generated@@153)))
 :pattern ( ($generated@@46 $generated@@154 ($generated@@35 $generated@@154 $generated@@153)))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! ($generated@@53 $generated@@7 $generated@@156 $generated $generated@@155)
 :pattern ( ($generated@@53 $generated@@7 $generated@@156 $generated $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> ($generated@@82 $generated@@160) (= ($generated@@53 $generated@@24 ($generated@@38 $generated@@158 $generated@@159) ($generated@@25 $generated@@157) $generated@@160)  (and ($generated@@52 $generated@@158 $generated@@157 $generated@@160) ($generated@@53 $generated@@24 $generated@@159 ($generated@@25 $generated@@157) $generated@@160))))
 :pattern ( ($generated@@53 $generated@@24 ($generated@@38 $generated@@158 $generated@@159) ($generated@@25 $generated@@157) $generated@@160))
)))
(assert (forall (($generated@@161 T@U) ) (! ($generated@@23 $generated@@7 $generated@@161 $generated)
 :pattern ( ($generated@@23 $generated@@7 $generated@@161 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@166 true))
(let (($generated@@167 true))
(let (($generated@@168  (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= ($generated@@33 2) 0)) (not true))) (=> (or (not (= ($generated@@33 2) 0)) (not true)) (and (=> (= (ControlFlow 0 4) 2) $generated@@167) (=> (= (ControlFlow 0 4) 3) $generated@@166))))))
(let (($generated@@169 true))
(let (($generated@@170  (=> (= $generated@@162 ($generated@@89 $generated@@163 $generated@@164 $generated@@1 false)) (and (=> (= (ControlFlow 0 6) 1) $generated@@169) (=> (= (ControlFlow 0 6) 4) $generated@@168)))))
(let (($generated@@171  (=> (and (and ($generated@@82 $generated@@164) ($generated@@165 $generated@@164)) (and (= 1 $generated@@28) (= (ControlFlow 0 7) 6))) $generated@@170)))
$generated@@171)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)