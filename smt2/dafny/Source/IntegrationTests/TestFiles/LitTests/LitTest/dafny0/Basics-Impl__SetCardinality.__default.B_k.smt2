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
(declare-fun $generated@@20 (T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@26 (Int) Int)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@T T@U) T@U)
(declare-fun $generated@@32 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@42 (T@U T@U T@U) Bool)
(declare-fun $generated@@43 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@48 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@65 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@69 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@T T@T) T@T)
(declare-fun $generated@@72 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@74 (T@T) T@T)
(declare-fun $generated@@75 (T@T) T@T)
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
(assert (forall (($generated@@22 T@U) ) (!  (not ($generated@@20 $generated@@21 $generated@@22))
 :pattern ( ($generated@@20 $generated@@21 $generated@@22))
)))
(assert (forall (($generated@@24 T@U) ) (!  (and (= (= ($generated@@23 $generated@@24) 0) (= $generated@@24 $generated@@21)) (=> (or (not (= ($generated@@23 $generated@@24) 0)) (not true)) (exists (($generated@@25 T@U) ) (! ($generated@@20 $generated@@24 $generated@@25)
 :pattern ( ($generated@@20 $generated@@24 $generated@@25))
))))
 :pattern ( ($generated@@23 $generated@@24))
)))
(assert (forall (($generated@@27 Int) ) (! (= ($generated@@26 $generated@@27) $generated@@27)
 :pattern ( ($generated@@26 $generated@@27))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@T) ) (! (= ($generated@@28 $generated@@30 $generated@@29) $generated@@29)
 :pattern ( ($generated@@28 $generated@@30 $generated@@29))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@T) ) (! (= ($generated@@32 $generated@@34 ($generated@@31 $generated@@34 $generated@@33)) $generated@@33)
 :pattern ( ($generated@@31 $generated@@34 $generated@@33))
)))
(assert (= ($generated@@3 $generated@@36) 3))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@40)) (forall (($generated@@41 T@U) ) (!  (=> ($generated@@20 $generated@@39 $generated@@41) ($generated@@38 $generated@@41 $generated@@40))
 :pattern ( ($generated@@20 $generated@@39 $generated@@41))
)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@40)))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@T) ) (! (= ($generated@@42 ($generated@@32 $generated@@47 $generated@@44) $generated@@45 $generated@@46) ($generated@@43 $generated@@47 $generated@@44 $generated@@45 $generated@@46))
 :pattern ( ($generated@@42 ($generated@@32 $generated@@47 $generated@@44) $generated@@45 $generated@@46))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> ($generated@@48 $generated@@49 $generated@@50) (= $generated@@49 $generated@@50))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ) (!  (=> ($generated@@38 $generated@@51 $generated) (and (= ($generated@@32 $generated@@5 ($generated@@31 $generated@@5 $generated@@51)) $generated@@51) ($generated@@35 $generated@@5 ($generated@@31 $generated@@5 $generated@@51) $generated)))
 :pattern ( ($generated@@38 $generated@@51 $generated))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@T) ) (! (= ($generated@@38 ($generated@@32 $generated@@54 $generated@@52) $generated@@53) ($generated@@35 $generated@@54 $generated@@52 $generated@@53))
 :pattern ( ($generated@@38 ($generated@@32 $generated@@54 $generated@@52) $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ) (! (<= 0 ($generated@@23 $generated@@55))
 :pattern ( ($generated@@23 $generated@@55))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@43 $generated@@36 $generated@@56 ($generated@@37 $generated@@57) $generated@@58) (forall (($generated@@59 T@U) ) (!  (=> ($generated@@20 $generated@@56 $generated@@59) ($generated@@42 $generated@@59 $generated@@57 $generated@@58))
 :pattern ( ($generated@@20 $generated@@56 $generated@@59))
)))
 :pattern ( ($generated@@43 $generated@@36 $generated@@56 ($generated@@37 $generated@@57) $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ) (! (= ($generated@@60 ($generated@@37 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@37 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@19 ($generated@@37 $generated@@62)) $generated@@1)
 :pattern ( ($generated@@37 $generated@@62))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@31 $generated@@64 ($generated@@32 $generated@@64 $generated@@63)) $generated@@63)
 :pattern ( ($generated@@32 $generated@@64 $generated@@63))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@76 T@T) ($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@65 $generated@@76 $generated@@77 $generated@@78 ($generated@@72 $generated@@76 $generated@@77 $generated@@78 $generated@@80 $generated@@81 $generated@@82 $generated@@79) $generated@@81 $generated@@82) $generated@@79)
 :weight 0
)) (and (forall (($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (or (= $generated@@88 $generated@@90) (= ($generated@@65 $generated@@83 $generated@@84 $generated@@85 ($generated@@72 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@88 $generated@@89 $generated@@86) $generated@@90 $generated@@91) ($generated@@65 $generated@@83 $generated@@84 $generated@@85 $generated@@87 $generated@@90 $generated@@91)))
 :weight 0
)) (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (= $generated@@98 $generated@@100) (= ($generated@@65 $generated@@92 $generated@@93 $generated@@94 ($generated@@72 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@98 $generated@@95) $generated@@99 $generated@@100) ($generated@@65 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@99 $generated@@100)))
 :weight 0
)))) (= ($generated@@3 $generated@@66) 4)) (= ($generated@@3 $generated@@67) 5)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@69 $generated@@101 $generated@@102 ($generated@@73 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@103) $generated@@105) $generated@@103)
 :weight 0
))) (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (!  (or (= $generated@@110 $generated@@111) (= ($generated@@69 $generated@@106 $generated@@107 ($generated@@73 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@108) $generated@@111) ($generated@@69 $generated@@106 $generated@@107 $generated@@109 $generated@@111)))
 :weight 0
))) (= ($generated@@3 $generated@@70) 6)) (forall (($generated@@112 T@T) ($generated@@113 T@T) ) (= ($generated@@3 ($generated@@71 $generated@@112 $generated@@113)) 7))) (forall (($generated@@114 T@T) ($generated@@115 T@T) ) (! (= ($generated@@74 ($generated@@71 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@71 $generated@@114 $generated@@115))
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ) (! (= ($generated@@75 ($generated@@71 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@71 $generated@@116 $generated@@117))
))))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 Bool) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@8 ($generated@@65 $generated@@66 $generated@@67 $generated@@4 ($generated@@68 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))  (=> (and (or (not (= $generated@@122 $generated@@118)) (not true)) ($generated@@8 ($generated@@31 $generated@@4 ($generated@@69 $generated@@67 $generated@@70 ($generated@@69 $generated@@66 ($generated@@71 $generated@@67 $generated@@70) $generated@@119 $generated@@122) $generated@@120)))) $generated@@121))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67 $generated@@4 ($generated@@68 $generated@@118 $generated@@119 $generated@@120 $generated@@121) $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (!  (=> ($generated@@38 $generated@@124 ($generated@@37 $generated@@125)) (and (= ($generated@@32 $generated@@36 ($generated@@31 $generated@@36 $generated@@124)) $generated@@124) ($generated@@35 $generated@@36 ($generated@@31 $generated@@36 $generated@@124) ($generated@@37 $generated@@125))))
 :pattern ( ($generated@@38 $generated@@124 ($generated@@37 $generated@@125)))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@48 $generated@@126 $generated@@127) (forall (($generated@@128 T@U) ) (! (= ($generated@@20 $generated@@126 $generated@@128) ($generated@@20 $generated@@127 $generated@@128))
 :pattern ( ($generated@@20 $generated@@126 $generated@@128))
 :pattern ( ($generated@@20 $generated@@127 $generated@@128))
)))
 :pattern ( ($generated@@48 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 Int) ) (! (= ($generated@@32 $generated@@5 ($generated@@9 ($generated@@26 $generated@@129))) ($generated@@28 $generated@@70 ($generated@@32 $generated@@5 ($generated@@9 $generated@@129))))
 :pattern ( ($generated@@32 $generated@@5 ($generated@@9 ($generated@@26 $generated@@129))))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@32 $generated@@131 ($generated@@28 $generated@@131 $generated@@130)) ($generated@@28 $generated@@70 ($generated@@32 $generated@@131 $generated@@130)))
 :pattern ( ($generated@@32 $generated@@131 ($generated@@28 $generated@@131 $generated@@130)))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! ($generated@@43 $generated@@5 $generated@@133 $generated $generated@@132)
 :pattern ( ($generated@@43 $generated@@5 $generated@@133 $generated $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ) (! ($generated@@35 $generated@@5 $generated@@134 $generated)
 :pattern ( ($generated@@35 $generated@@5 $generated@@134 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@135 () T@U)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@138 () T@U)
(declare-fun $generated@@139 (T@U) Bool)
(declare-fun $generated@@140 (T@U) Bool)
(declare-fun $generated@@141 () Int)
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
 (=> (= (ControlFlow 0 0) 16) (let (($generated@@142 true))
(let (($generated@@143  (=> (= (ControlFlow 0 12) (- 0 11)) (not (exists (($generated@@144 Int) ) (! ($generated@@20 $generated@@135 ($generated@@32 $generated@@5 ($generated@@9 $generated@@144)))
 :pattern ( ($generated@@20 $generated@@135 ($generated@@32 $generated@@5 ($generated@@9 $generated@@144))))
))))))
(let (($generated@@145  (and (=> (= (ControlFlow 0 14) 12) $generated@@143) (=> (= (ControlFlow 0 14) 13) $generated@@142))))
(let (($generated@@146 true))
(let (($generated@@147  (=> (= (ControlFlow 0 8) (- 0 7)) (or (and ($generated@@35 $generated@@5 ($generated@@9 ($generated@@26 0)) $generated) (not ($generated@@20 $generated@@135 ($generated@@32 $generated@@5 ($generated@@9 ($generated@@26 0)))))) (exists (($generated@@148 T@U) )  (not ($generated@@20 $generated@@135 ($generated@@32 $generated@@5 $generated@@148))))))))
(let (($generated@@149  (and (=> (= (ControlFlow 0 10) 8) $generated@@147) (=> (= (ControlFlow 0 10) 9) $generated@@146))))
(let (($generated@@150  (=> (and (and (and (and (not ($generated@@8 ($generated@@28 $generated@@4 ($generated@@7 true)))) (not ($generated@@8 ($generated@@28 $generated@@4 ($generated@@7 true))))) (not ($generated@@8 ($generated@@28 $generated@@4 ($generated@@7 true))))) (not ($generated@@8 ($generated@@28 $generated@@4 ($generated@@7 true))))) (= (ControlFlow 0 6) (- 0 5))) false)))
(let (($generated@@151  (=> (= (ControlFlow 0 4) (- 0 3)) (= ($generated@@23 $generated@@135) ($generated@@26 0)))))
(let (($generated@@152  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@48 $generated@@135 $generated@@21))))
(let (($generated@@153  (=> (= $generated@@136 ($generated@@68 $generated@@137 $generated@@138 $generated@@2 false)) (and (and (and (and (=> (= (ControlFlow 0 15) 2) $generated@@152) (=> (= (ControlFlow 0 15) 4) $generated@@151)) (=> (= (ControlFlow 0 15) 14) $generated@@145)) (=> (= (ControlFlow 0 15) 10) $generated@@149)) (=> (= (ControlFlow 0 15) 6) $generated@@150)))))
(let (($generated@@154  (=> (and ($generated@@139 $generated@@138) ($generated@@140 $generated@@138)) (=> (and (and (and ($generated@@35 $generated@@36 $generated@@135 ($generated@@37 $generated)) ($generated@@43 $generated@@36 $generated@@135 ($generated@@37 $generated) $generated@@138)) (= 0 $generated@@141)) (and (= ($generated@@23 $generated@@135) ($generated@@26 0)) (= (ControlFlow 0 16) 15))) $generated@@153))))
$generated@@154))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)