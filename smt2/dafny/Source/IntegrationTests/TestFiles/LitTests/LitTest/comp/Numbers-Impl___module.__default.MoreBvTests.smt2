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
(declare-fun $generated@@18 (Int) Int)
(declare-fun $generated@@20 (T@T T@U) T@U)
(declare-fun $generated@@23 (T@T T@U) T@U)
(declare-fun $generated@@24 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@33 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@T T@T) T@T)
(declare-fun $generated@@36 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@38 (T@T) T@T)
(declare-fun $generated@@39 (T@T) T@T)
(declare-fun $generated@@88 (T@T T@U T@U) Bool)
(declare-fun $generated@@89 () T@T)
(declare-fun $generated@@90 () T@U)
(declare-fun $generated@@91 (T@U) (_ BitVec 4))
(declare-fun $generated@@92 ((_ BitVec 4)) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
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
(assert (forall (($generated@@19 Int) ) (! (= ($generated@@18 $generated@@19) $generated@@19)
 :pattern ( ($generated@@18 $generated@@19))
)))
(assert (forall (($generated@@21 T@U) ($generated@@22 T@T) ) (! (= ($generated@@20 $generated@@22 $generated@@21) $generated@@21)
 :pattern ( ($generated@@20 $generated@@22 $generated@@21))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@T) ) (! (= ($generated@@24 $generated@@26 ($generated@@23 $generated@@26 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@23 $generated@@26 $generated@@25))
)))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@T) ) (! (= ($generated@@23 $generated@@28 ($generated@@24 $generated@@28 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@24 $generated@@28 $generated@@27))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@T) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@29 $generated@@40 $generated@@41 $generated@@42 ($generated@@36 $generated@@40 $generated@@41 $generated@@42 $generated@@44 $generated@@45 $generated@@46 $generated@@43) $generated@@45 $generated@@46) $generated@@43)
 :weight 0
)) (and (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (or (= $generated@@52 $generated@@54) (= ($generated@@29 $generated@@47 $generated@@48 $generated@@49 ($generated@@36 $generated@@47 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@53 $generated@@50) $generated@@54 $generated@@55) ($generated@@29 $generated@@47 $generated@@48 $generated@@49 $generated@@51 $generated@@54 $generated@@55)))
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@62 $generated@@64) (= ($generated@@29 $generated@@56 $generated@@57 $generated@@58 ($generated@@36 $generated@@56 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@62 $generated@@59) $generated@@63 $generated@@64) ($generated@@29 $generated@@56 $generated@@57 $generated@@58 $generated@@60 $generated@@63 $generated@@64)))
 :weight 0
)))) (= ($generated@@2 $generated@@30) 3)) (= ($generated@@2 $generated@@31) 4)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@33 $generated@@65 $generated@@66 ($generated@@37 $generated@@65 $generated@@66 $generated@@68 $generated@@69 $generated@@67) $generated@@69) $generated@@67)
 :weight 0
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (!  (or (= $generated@@74 $generated@@75) (= ($generated@@33 $generated@@70 $generated@@71 ($generated@@37 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@72) $generated@@75) ($generated@@33 $generated@@70 $generated@@71 $generated@@73 $generated@@75)))
 :weight 0
))) (= ($generated@@2 $generated@@34) 5)) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (= ($generated@@2 ($generated@@35 $generated@@76 $generated@@77)) 6))) (forall (($generated@@78 T@T) ($generated@@79 T@T) ) (! (= ($generated@@38 ($generated@@35 $generated@@78 $generated@@79)) $generated@@78)
 :pattern ( ($generated@@35 $generated@@78 $generated@@79))
))) (forall (($generated@@80 T@T) ($generated@@81 T@T) ) (! (= ($generated@@39 ($generated@@35 $generated@@80 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@35 $generated@@80 $generated@@81))
))))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 Bool) ($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@7 ($generated@@29 $generated@@30 $generated@@31 $generated@@3 ($generated@@32 $generated@@82 $generated@@83 $generated@@84 $generated@@85) $generated@@86 $generated@@87))  (=> (and (or (not (= $generated@@86 $generated@@82)) (not true)) ($generated@@7 ($generated@@23 $generated@@3 ($generated@@33 $generated@@31 $generated@@34 ($generated@@33 $generated@@30 ($generated@@35 $generated@@31 $generated@@34) $generated@@83 $generated@@86) $generated@@84)))) $generated@@85))
 :pattern ( ($generated@@29 $generated@@30 $generated@@31 $generated@@3 ($generated@@32 $generated@@82 $generated@@83 $generated@@84 $generated@@85) $generated@@86 $generated@@87))
)))
(assert  (and (and (= ($generated@@2 $generated@@89) 7) (forall (($generated@@93 (_ BitVec 4)) ) (! (= ($generated@@91 ($generated@@92 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@92 $generated@@93))
))) (forall (($generated@@94 T@U) ) (! (= ($generated@@92 ($generated@@91 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@91 $generated@@94))
))))
(assert (forall (($generated@@95 T@U) ) (! (= ($generated@@88 $generated@@89 $generated@@95 $generated@@90)  (and (bvule #b0010 ($generated@@91 $generated@@95)) (bvult ($generated@@91 $generated@@95) #b1010)))
 :pattern ( ($generated@@88 $generated@@89 $generated@@95 $generated@@90))
)))
(assert (= ($generated@@96 $generated@@90) $generated@@0))
(assert (= ($generated@@97 $generated@@90) $generated@@1))
(assert (forall (($generated@@98 Int) ) (! (= ($generated@@24 $generated@@4 ($generated@@8 ($generated@@18 $generated@@98))) ($generated@@20 $generated@@34 ($generated@@24 $generated@@4 ($generated@@8 $generated@@98))))
 :pattern ( ($generated@@24 $generated@@4 ($generated@@8 ($generated@@18 $generated@@98))))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@24 $generated@@100 ($generated@@20 $generated@@100 $generated@@99)) ($generated@@20 $generated@@34 ($generated@@24 $generated@@100 $generated@@99)))
 :pattern ( ($generated@@24 $generated@@100 ($generated@@20 $generated@@100 $generated@@99)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@101 () T@U)
(declare-fun $generated@@102 () T@U)
(declare-fun $generated@@103 () T@U)
(declare-fun $generated@@104 () Int)
(declare-fun $generated@@105 () (_ BitVec 4))
(declare-fun $generated@@106 () Int)
(declare-fun $generated@@107 () (_ BitVec 32))
(declare-fun $generated@@108 (T@U) (_ BitVec 32))
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@110 ((_ BitVec 32)) T@U)
(declare-fun $generated@@111 () (_ BitVec 100))
(declare-fun $generated@@112 (T@U) (_ BitVec 100))
(declare-fun $generated@@113 () T@T)
(declare-fun $generated@@114 ((_ BitVec 100)) T@U)
(declare-fun $generated@@115 () (_ BitVec 4))
(declare-fun $generated@@116 () Int)
(declare-fun $generated@@117 () Int)
(declare-fun $generated@@118 () (_ BitVec 32))
(declare-fun $generated@@119 () (_ BitVec 100))
(declare-fun $generated@@120 () (_ BitVec 4))
(declare-fun $generated@@121 () Int)
(declare-fun $generated@@122 () (_ BitVec 32))
(declare-fun $generated@@123 () (_ BitVec 100))
(declare-fun $generated@@124 () (_ BitVec 4))
(declare-fun $generated@@125 () Int)
(declare-fun $generated@@126 () (_ BitVec 32))
(declare-fun $generated@@127 () (_ BitVec 100))
(declare-fun $generated@@128 () (_ BitVec 4))
(declare-fun $generated@@129 () (_ BitVec 4))
(declare-fun $generated@@130 () (_ BitVec 100))
(declare-fun $generated@@131 () Int)
(declare-fun $generated@@132 () (_ BitVec 100))
(declare-fun $generated@@133 () Int)
(declare-fun $generated@@134 () (_ BitVec 100))
(declare-fun $generated@@135 () (_ BitVec 4))
(declare-fun $generated@@136 () Int)
(declare-fun $generated@@137 () (_ BitVec 4))
(declare-fun $generated@@138 () Int)
(declare-fun $generated@@139 () (_ BitVec 4))
(declare-fun $generated@@140 () (_ BitVec 100))
(declare-fun $generated@@141 () (_ BitVec 100))
(declare-fun $generated@@142 () (_ BitVec 100))
(declare-fun $generated@@143 () (_ BitVec 4))
(declare-fun $generated@@144 () (_ BitVec 4))
(declare-fun $generated@@145 () (_ BitVec 4))
(declare-fun $generated@@146 (T@U) Bool)
(declare-fun $generated@@147 (T@U) Bool)
(declare-fun $generated@@148 () Int)
(declare-fun $generated@@149 () (_ BitVec 4))
(declare-fun $generated@@150 () Int)
(assert  (and (and (and (and (and (= ($generated@@2 $generated@@109) 8) (forall (($generated@@151 (_ BitVec 32)) ) (! (= ($generated@@108 ($generated@@110 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@110 $generated@@151))
))) (forall (($generated@@152 T@U) ) (! (= ($generated@@110 ($generated@@108 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@108 $generated@@152))
))) (= ($generated@@2 $generated@@113) 9)) (forall (($generated@@153 (_ BitVec 100)) ) (! (= ($generated@@112 ($generated@@114 $generated@@153)) $generated@@153)
 :pattern ( ($generated@@114 $generated@@153))
))) (forall (($generated@@154 T@U) ) (! (= ($generated@@114 ($generated@@112 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@112 $generated@@154))
))))
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
 (=> (= (ControlFlow 0 0) 32) (let (($generated@@155  (=> (and (= $generated@@101 ($generated@@32 $generated@@102 $generated@@103 $generated false)) (= 0 $generated@@104)) (=> (and (and (and (bvule #b0010 $generated@@105) (bvult $generated@@105 #b1010)) (= $generated@@106 ($generated@@18 0))) (and (= $generated@@107 ($generated@@108 ($generated@@20 $generated@@109 ($generated@@110 #x00000000)))) (= $generated@@111 ($generated@@112 ($generated@@20 $generated@@113 ($generated@@114 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b1001)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b1001)) $generated@@90) (=> (= $generated@@115 ($generated@@91 ($generated@@20 $generated@@89 ($generated@@92 #b1001)))) (=> (and (and (= $generated@@116 0) (= $generated@@117 0)) (and (= $generated@@118 (bvor $generated@@107 #x00000000)) (= $generated@@119 (bvor $generated@@111 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) ($generated@@88 $generated@@89 ($generated@@92 (bvor $generated@@115 #b0000)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (bvor $generated@@115 #b0000)) $generated@@90) (=> (and (and (= $generated@@120 (bvor $generated@@115 #b0000)) (= $generated@@121 0)) (and (= $generated@@122 (bvxor $generated@@118 #x00000000)) (= $generated@@123 (bvxor $generated@@119 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) ($generated@@88 $generated@@89 ($generated@@92 (bvxor $generated@@120 #b0000)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (bvxor $generated@@120 #b0000)) $generated@@90) (=> (= $generated@@124 (bvxor $generated@@120 #b0000)) (=> (and (and (= $generated@@125 0) (= $generated@@126 (bvnot $generated@@122))) (and (= $generated@@127 (bvnot $generated@@123)) (= $generated@@128 (bvnot $generated@@124)))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (bvule #b0010 $generated@@128) (bvult $generated@@128 #b1010))) (=> (and (bvule #b0010 $generated@@128) (bvult $generated@@128 #b1010)) (=> (= $generated@@129 (bvnot $generated@@124)) (=> (and (= $generated@@130 ($generated@@112 ($generated@@20 $generated@@113 ($generated@@114 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000)))) (= $generated@@131 ($generated@@18 2))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (and (<= 0 $generated@@131) (< $generated@@131 128))) (=> (and (<= 0 $generated@@131) (< $generated@@131 128)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (bvule #b0000010 #b1100100)) (=> (bvule #b0000010 #b1100100) (=> (and (= $generated@@132 (bvshl $generated@@130 (concat #b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 #b0000010))) (= $generated@@133 ($generated@@18 4))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= 0 $generated@@133) (< $generated@@133 128))) (=> (and (<= 0 $generated@@133) (< $generated@@133 128)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (bvule #b0000100 #b1100100)) (=> (bvule #b0000100 #b1100100) (=> (= $generated@@134 (bvlshr $generated@@132 (concat #b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 #b0000100))) (and (=> (= (ControlFlow 0 2) (- 0 23)) ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b0010)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b0010)) $generated@@90) (=> (and (= $generated@@135 ($generated@@91 ($generated@@20 $generated@@89 ($generated@@92 #b0010)))) (= $generated@@136 ($generated@@18 2))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= 0 $generated@@136) (< $generated@@136 8))) (=> (and (<= 0 $generated@@136) (< $generated@@136 8)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (bvule #b010 #b100)) (=> (bvule #b010 #b100) (and (=> (= (ControlFlow 0 2) (- 0 20)) ($generated@@88 $generated@@89 ($generated@@92 (bvshl $generated@@135 (concat #b0 #b010))) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (bvshl $generated@@135 (concat #b0 #b010))) $generated@@90) (=> (and (= $generated@@137 (bvshl $generated@@135 (concat #b0 #b010))) (= $generated@@138 ($generated@@18 1))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= 0 $generated@@138) (< $generated@@138 8))) (=> (and (<= 0 $generated@@138) (< $generated@@138 8)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (bvule #b001 #b100)) (=> (bvule #b001 #b100) (and (=> (= (ControlFlow 0 2) (- 0 17)) ($generated@@88 $generated@@89 ($generated@@92 (bvlshr $generated@@137 (concat #b0 #b001))) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (bvlshr $generated@@137 (concat #b0 #b001))) $generated@@90) (=> (and (= $generated@@139 (bvlshr $generated@@137 (concat #b0 #b001))) (= $generated@@140 ($generated@@112 ($generated@@20 $generated@@113 ($generated@@114 (bvor #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100)))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (<= 0 ($generated@@18 99))) (=> (<= 0 ($generated@@18 99)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= ($generated@@18 99) 100)) (=> (<= ($generated@@18 99) 100) (=> (= $generated@@141 (ext_rotate_left $generated@@140 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100011)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (<= 0 ($generated@@18 98))) (=> (<= 0 ($generated@@18 98)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= ($generated@@18 98) 100)) (=> (<= ($generated@@18 98) 100) (=> (= $generated@@142 (ext_rotate_right $generated@@141 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100010)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b0010)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@20 $generated@@89 ($generated@@92 #b0010)) $generated@@90) (=> (= $generated@@143 ($generated@@91 ($generated@@20 $generated@@89 ($generated@@92 #b0010)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= 0 ($generated@@18 2))) (=> (<= 0 ($generated@@18 2)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (<= ($generated@@18 2) 4)) (=> (<= ($generated@@18 2) 4) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($generated@@88 $generated@@89 ($generated@@92 (ext_rotate_left $generated@@143 #b0010)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (ext_rotate_left $generated@@143 #b0010)) $generated@@90) (=> (= $generated@@144 (ext_rotate_left $generated@@143 #b0010)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= 0 ($generated@@18 1))) (=> (<= 0 ($generated@@18 1)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (<= ($generated@@18 1) 4)) (=> (<= ($generated@@18 1) 4) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@88 $generated@@89 ($generated@@92 (ext_rotate_right $generated@@144 #b0001)) $generated@@90)) (=> ($generated@@88 $generated@@89 ($generated@@92 (ext_rotate_right $generated@@144 #b0001)) $generated@@90) (=> (= $generated@@145 (ext_rotate_right $generated@@144 #b0001)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= 0 ($generated@@18 0))) (=> (<= 0 ($generated@@18 0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= ($generated@@18 0) 0)) (=> (<= ($generated@@18 0) 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= 0 ($generated@@18 0))) (=> (<= 0 ($generated@@18 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (<= ($generated@@18 0) 0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let (($generated@@156  (=> (and (and ($generated@@146 $generated@@103) ($generated@@147 $generated@@103)) (and (= 0 $generated@@148) true)) (=> (and (and (and (bvule #b0010 $generated@@149) (bvult $generated@@149 #b1010)) true) (and (= 1 $generated@@150) (= (ControlFlow 0 32) 2))) $generated@@155))))
$generated@@156)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)