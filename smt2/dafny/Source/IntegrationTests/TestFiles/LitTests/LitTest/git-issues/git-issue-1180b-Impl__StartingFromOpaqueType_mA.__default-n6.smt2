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
(declare-fun $generated@@18 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@19 () T@U)
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U T@U T@U) Bool)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@U) Bool)
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
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
(declare-fun $generated@@62 (Int) Int)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@84 (T@U Int) Int)
(declare-fun $generated@@85 (T@U Int) Bool)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@98 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@131 (Int Int) Int)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
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
(assert (forall (($generated@@20 T@U) ($generated@@21 T@U) ) (! ($generated@@18 $generated@@4 $generated@@20 $generated@@19 $generated@@21)
 :pattern ( ($generated@@18 $generated@@4 $generated@@20 $generated@@19 $generated@@21))
)))
(assert  (=> (< 0 $generated@@22) (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (!  (=> (and (and ($generated@@26 $generated@@28) ($generated@@27 $generated@@29 $generated@@25)) ($generated@@24 $generated@@29 $generated@@25 $generated@@28)) ($generated@@18 $generated@@4 ($generated@@8 ($generated@@23 $generated@@29)) $generated@@19 $generated@@28))
 :pattern ( ($generated@@23 $generated@@29) ($generated@@24 $generated@@29 $generated@@25 $generated@@28))
))))
(assert  (=> (< 0 $generated@@22) (forall (($generated@@31 T@U) ) (!  (=> ($generated@@27 $generated@@31 $generated@@25) ($generated@@30 $generated@@4 ($generated@@8 ($generated@@23 $generated@@31)) $generated@@19))
 :pattern ( ($generated@@23 $generated@@31))
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
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> ($generated@@32 $generated@@59 $generated@@60) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@59 $generated@@61) $generated))) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@60 $generated@@61) $generated))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@60 $generated@@61) $generated))
)))
 :pattern ( ($generated@@32 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@63 Int) ) (! (= ($generated@@62 $generated@@63) $generated@@63)
 :pattern ( ($generated@@62 $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@64 $generated@@66 $generated@@65) $generated@@65)
 :pattern ( ($generated@@64 $generated@@66 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@T) ) (! (= ($generated@@67 $generated@@69 ($generated@@38 $generated@@69 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@38 $generated@@69 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@30 $generated@@4 $generated@@70 $generated@@19) (<= ($generated@@62 0) ($generated@@9 $generated@@70)))
 :pattern ( ($generated@@30 $generated@@4 $generated@@70 $generated@@19))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@24 ($generated@@67 $generated@@74 $generated@@71) $generated@@72 $generated@@73) ($generated@@18 $generated@@74 $generated@@71 $generated@@72 $generated@@73))
 :pattern ( ($generated@@24 ($generated@@67 $generated@@74 $generated@@71) $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> ($generated@@32 $generated@@75 $generated@@76) (=> ($generated@@24 $generated@@77 $generated@@78 $generated@@75) ($generated@@24 $generated@@77 $generated@@78 $generated@@76)))
 :pattern ( ($generated@@32 $generated@@75 $generated@@76) ($generated@@24 $generated@@77 $generated@@78 $generated@@75))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@T) ) (!  (=> ($generated@@32 $generated@@79 $generated@@80) (=> ($generated@@18 $generated@@83 $generated@@81 $generated@@82 $generated@@79) ($generated@@18 $generated@@83 $generated@@81 $generated@@82 $generated@@80)))
 :pattern ( ($generated@@32 $generated@@79 $generated@@80) ($generated@@18 $generated@@83 $generated@@81 $generated@@82 $generated@@79))
)))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@86 T@U) ($generated@@87 Int) ) (!  (=> (or ($generated@@85 $generated@@86 $generated@@87) (and (< 1 $generated@@22) (and (and ($generated@@27 $generated@@86 $generated@@25) (<= ($generated@@62 0) $generated@@87)) (or (not (= $generated@@87 7)) (not true))))) (and (= ($generated@@84 $generated@@86 $generated@@87) ($generated@@23 $generated@@86)) (<= ($generated@@62 0) ($generated@@84 $generated@@86 $generated@@87))))
 :pattern ( ($generated@@84 $generated@@86 $generated@@87))
))))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@27 $generated@@88 $generated@@19) (and (= ($generated@@67 $generated@@4 ($generated@@38 $generated@@4 $generated@@88)) $generated@@88) ($generated@@30 $generated@@4 ($generated@@38 $generated@@4 $generated@@88) $generated@@19)))
 :pattern ( ($generated@@27 $generated@@88 $generated@@19))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (or (not (= $generated@@89 $generated@@91)) (not true)) (=> (and ($generated@@32 $generated@@89 $generated@@90) ($generated@@32 $generated@@90 $generated@@91)) ($generated@@32 $generated@@89 $generated@@91)))
 :pattern ( ($generated@@32 $generated@@89 $generated@@90) ($generated@@32 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@27 ($generated@@67 $generated@@94 $generated@@92) $generated@@93) ($generated@@30 $generated@@94 $generated@@92 $generated@@93))
 :pattern ( ($generated@@27 ($generated@@67 $generated@@94 $generated@@92) $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@38 $generated@@96 ($generated@@67 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@67 $generated@@96 $generated@@95))
)))
(assert  (and (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@97 $generated@@100 $generated@@101 $generated@@102 ($generated@@99 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@105 $generated@@106) $generated@@103)
 :weight 0
)) (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@112 $generated@@114) (= ($generated@@97 $generated@@107 $generated@@108 $generated@@109 ($generated@@99 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@97 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@97 $generated@@116 $generated@@117 $generated@@118 ($generated@@99 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@123 $generated@@124) ($generated@@97 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@123 $generated@@124)))
 :weight 0
)))))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 Bool) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@7 ($generated@@97 $generated@@36 $generated@@34 $generated@@3 ($generated@@98 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@129 $generated@@130))  (=> (and (or (not (= $generated@@129 $generated@@125)) (not true)) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@126 $generated@@129) $generated@@127)))) $generated@@128))
 :pattern ( ($generated@@97 $generated@@36 $generated@@34 $generated@@3 ($generated@@98 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@132 Int) ($generated@@133 Int) ) (! (= ($generated@@131 $generated@@132 $generated@@133) (* $generated@@132 $generated@@133))
 :pattern ( ($generated@@131 $generated@@132 $generated@@133))
)))
(assert (= ($generated@@134 $generated@@19) $generated@@0))
(assert (= ($generated@@135 $generated@@19) $generated@@1))
(assert (forall (($generated@@136 Int) ) (! (= ($generated@@67 $generated@@4 ($generated@@8 ($generated@@62 $generated@@136))) ($generated@@64 $generated@@35 ($generated@@67 $generated@@4 ($generated@@8 $generated@@136))))
 :pattern ( ($generated@@67 $generated@@4 ($generated@@8 ($generated@@62 $generated@@136))))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@T) ) (! (= ($generated@@67 $generated@@138 ($generated@@64 $generated@@138 $generated@@137)) ($generated@@64 $generated@@35 ($generated@@67 $generated@@138 $generated@@137)))
 :pattern ( ($generated@@67 $generated@@138 ($generated@@64 $generated@@138 $generated@@137)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@139 () Int)
(declare-fun $generated@@140 () Int)
(declare-fun $generated@@141 () T@U)
(declare-fun $generated@@142 () Int)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 (T@U) Bool)
(declare-fun $generated@@145 () Int)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () Int)
(declare-fun $generated@@149 () Int)
(declare-fun $generated@@150 () Int)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 () Int)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 () Int)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@155 true))
(let (($generated@@156  (=> (or (not (= $generated@@139 9)) (not true)) (=> (and (= $generated@@140 ($generated@@23 $generated@@141)) (<= ($generated@@62 0) $generated@@142)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $generated@@140 9)) (not true))) (=> (or (not (= $generated@@140 9)) (not true)) (=> (and (and (and ($generated@@26 $generated@@143) ($generated@@144 $generated@@143)) (and (<= ($generated@@62 0) $generated@@145) (= $generated@@145 $generated@@140))) (and (and (forall (($generated@@157 T@U) ) (!  (=> (and (or (not (= $generated@@157 $generated@@146)) (not true)) ($generated@@7 ($generated@@38 $generated@@3 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@147 $generated@@157) $generated)))) (= ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@143 $generated@@157) ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@147 $generated@@157)))
 :pattern ( ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@143 $generated@@157))
)) ($generated@@32 $generated@@147 $generated@@143)) (and ($generated@@24 $generated@@141 $generated@@25 $generated@@143) (= $generated@@148 ($generated@@131 ($generated@@62 2) $generated@@139))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= ($generated@@62 0) $generated@@148)) (=> (<= ($generated@@62 0) $generated@@148) (=> (and (= $generated@@149 ($generated@@131 ($generated@@62 2) $generated@@139)) ($generated@@18 $generated@@4 ($generated@@8 $generated@@149) $generated@@19 $generated@@143)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@149 7)) (not true))) (=> (or (not (= $generated@@149 7)) (not true)) (=> (and (and ($generated@@85 $generated@@141 ($generated@@131 ($generated@@62 2) $generated@@139)) ($generated@@85 $generated@@141 ($generated@@131 ($generated@@62 2) $generated@@139))) (and (= $generated@@150 ($generated@@84 $generated@@141 ($generated@@131 ($generated@@62 2) $generated@@139))) (= (ControlFlow 0 2) (- 0 1)))) (= $generated@@145 $generated@@150))))))))))))))
(let (($generated@@158  (=> (and (= $generated@@151 ($generated@@98 $generated@@146 $generated@@147 $generated false)) (= $generated@@139 ($generated@@23 $generated@@141))) (and (=> (= (ControlFlow 0 7) 2) $generated@@156) (=> (= (ControlFlow 0 7) 6) $generated@@155)))))
(let (($generated@@159  (=> (and (and ($generated@@26 $generated@@147) ($generated@@144 $generated@@147)) (and ($generated@@27 $generated@@141 $generated@@25) ($generated@@24 $generated@@141 $generated@@25 $generated@@147))) (=> (and (and (and (<= ($generated@@62 0) $generated@@152) true) (and (<= ($generated@@62 0) $generated@@153) true)) (and (and (<= ($generated@@62 0) $generated@@154) true) (and (= 2 $generated@@22) (= (ControlFlow 0 8) 7)))) $generated@@158))))
$generated@@159)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)