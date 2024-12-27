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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 (Int) Int)
(declare-fun $generated@@23 (Real) Real)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@32 () Int)
(declare-fun $generated@@33 (Real) Bool)
(declare-fun $generated@@34 (Real) Bool)
(declare-fun $generated@@36 (Int) Bool)
(declare-fun $generated@@37 (Int) Bool)
(declare-fun $generated@@38 (Int Int) Int)
(declare-fun $generated@@44 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@48 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T T@T) T@T)
(declare-fun $generated@@51 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@109 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@114 (T@T T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (= ($generated@@20 $generated) $generated@@1))
(assert (= ($generated@@20 $generated@@0) $generated@@2))
(assert (forall (($generated@@22 Int) ) (! (= ($generated@@21 $generated@@22) $generated@@22)
 :pattern ( ($generated@@21 $generated@@22))
)))
(assert (forall (($generated@@24 Real) ) (! (= ($generated@@23 $generated@@24) $generated@@24)
 :pattern ( ($generated@@23 $generated@@24))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@T) ) (! (= ($generated@@25 $generated@@27 $generated@@26) $generated@@26)
 :pattern ( ($generated@@25 $generated@@27 $generated@@26))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@T) ) (! (= ($generated@@29 $generated@@31 ($generated@@28 $generated@@31 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@28 $generated@@31 $generated@@30))
)))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@35 Real) ) (!  (=> (or ($generated@@34 $generated@@35) (< 0 $generated@@32)) (= ($generated@@33 $generated@@35) (<= ($generated@@23 0.0) $generated@@35)))
 :pattern ( ($generated@@33 $generated@@35))
))))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@39 Int) ) (!  (=> (or ($generated@@37 $generated@@39) (< 0 $generated@@32)) (= ($generated@@36 $generated@@39) (= ($generated@@38 $generated@@39 ($generated@@21 2)) ($generated@@21 0))))
 :pattern ( ($generated@@36 $generated@@39))
))))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@40 Real) ) (!  (=> (or ($generated@@34 ($generated@@23 $generated@@40)) (< 0 $generated@@32)) (= ($generated@@33 ($generated@@23 $generated@@40)) (<= ($generated@@23 0.0) ($generated@@23 $generated@@40))))
 :weight 3
 :pattern ( ($generated@@33 ($generated@@23 $generated@@40)))
))))
(assert  (=> (<= 0 $generated@@32) (forall (($generated@@41 Int) ) (!  (=> (or ($generated@@37 ($generated@@21 $generated@@41)) (< 0 $generated@@32)) (= ($generated@@36 ($generated@@21 $generated@@41)) (= ($generated@@21 ($generated@@38 $generated@@41 ($generated@@21 2))) ($generated@@21 0))))
 :weight 3
 :pattern ( ($generated@@36 ($generated@@21 $generated@@41)))
))))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@28 $generated@@43 ($generated@@29 $generated@@43 $generated@@42)) $generated@@42)
 :pattern ( ($generated@@29 $generated@@43 $generated@@42))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@44 $generated@@55 $generated@@56 $generated@@57 ($generated@@51 $generated@@55 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@61 $generated@@58) $generated@@60 $generated@@61) $generated@@58)
 :weight 0
)) (and (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (or (= $generated@@67 $generated@@69) (= ($generated@@44 $generated@@62 $generated@@63 $generated@@64 ($generated@@51 $generated@@62 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@68 $generated@@65) $generated@@69 $generated@@70) ($generated@@44 $generated@@62 $generated@@63 $generated@@64 $generated@@66 $generated@@69 $generated@@70)))
 :weight 0
)) (forall (($generated@@71 T@T) ($generated@@72 T@T) ($generated@@73 T@T) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (or (= $generated@@77 $generated@@79) (= ($generated@@44 $generated@@71 $generated@@72 $generated@@73 ($generated@@51 $generated@@71 $generated@@72 $generated@@73 $generated@@75 $generated@@76 $generated@@77 $generated@@74) $generated@@78 $generated@@79) ($generated@@44 $generated@@71 $generated@@72 $generated@@73 $generated@@75 $generated@@78 $generated@@79)))
 :weight 0
)))) (= ($generated@@4 $generated@@45) 3)) (= ($generated@@4 $generated@@46) 4)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (! (= ($generated@@48 $generated@@80 $generated@@81 ($generated@@52 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@84) $generated@@82)
 :weight 0
))) (forall (($generated@@85 T@T) ($generated@@86 T@T) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (or (= $generated@@89 $generated@@90) (= ($generated@@48 $generated@@85 $generated@@86 ($generated@@52 $generated@@85 $generated@@86 $generated@@88 $generated@@89 $generated@@87) $generated@@90) ($generated@@48 $generated@@85 $generated@@86 $generated@@88 $generated@@90)))
 :weight 0
))) (= ($generated@@4 $generated@@49) 5)) (forall (($generated@@91 T@T) ($generated@@92 T@T) ) (= ($generated@@4 ($generated@@50 $generated@@91 $generated@@92)) 6))) (forall (($generated@@93 T@T) ($generated@@94 T@T) ) (! (= ($generated@@53 ($generated@@50 $generated@@93 $generated@@94)) $generated@@93)
 :pattern ( ($generated@@50 $generated@@93 $generated@@94))
))) (forall (($generated@@95 T@T) ($generated@@96 T@T) ) (! (= ($generated@@54 ($generated@@50 $generated@@95 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@50 $generated@@95 $generated@@96))
))))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 Bool) ($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@9 ($generated@@44 $generated@@45 $generated@@46 $generated@@5 ($generated@@47 $generated@@97 $generated@@98 $generated@@99 $generated@@100) $generated@@101 $generated@@102))  (=> (and (or (not (= $generated@@101 $generated@@97)) (not true)) ($generated@@9 ($generated@@28 $generated@@5 ($generated@@48 $generated@@46 $generated@@49 ($generated@@48 $generated@@45 ($generated@@50 $generated@@46 $generated@@49) $generated@@98 $generated@@101) $generated@@99)))) $generated@@100))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 $generated@@5 ($generated@@47 $generated@@97 $generated@@98 $generated@@99 $generated@@100) $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 Int) ($generated@@104 Int) ) (! (= ($generated@@38 $generated@@103 $generated@@104) (mod $generated@@103 $generated@@104))
 :pattern ( ($generated@@38 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 Int) ) (! (= ($generated@@29 $generated@@6 ($generated@@10 ($generated@@21 $generated@@105))) ($generated@@25 $generated@@49 ($generated@@29 $generated@@6 ($generated@@10 $generated@@105))))
 :pattern ( ($generated@@29 $generated@@6 ($generated@@10 ($generated@@21 $generated@@105))))
)))
(assert (forall (($generated@@106 Real) ) (! (= ($generated@@29 $generated@@7 ($generated@@12 ($generated@@23 $generated@@106))) ($generated@@25 $generated@@49 ($generated@@29 $generated@@7 ($generated@@12 $generated@@106))))
 :pattern ( ($generated@@29 $generated@@7 ($generated@@12 ($generated@@23 $generated@@106))))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@29 $generated@@108 ($generated@@25 $generated@@108 $generated@@107)) ($generated@@25 $generated@@49 ($generated@@29 $generated@@108 $generated@@107)))
 :pattern ( ($generated@@29 $generated@@108 ($generated@@25 $generated@@108 $generated@@107)))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! ($generated@@109 $generated@@6 $generated@@111 $generated $generated@@110)
 :pattern ( ($generated@@109 $generated@@6 $generated@@111 $generated $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! ($generated@@109 $generated@@7 $generated@@113 $generated@@0 $generated@@112)
 :pattern ( ($generated@@109 $generated@@7 $generated@@113 $generated@@0 $generated@@112))
)))
(assert (forall (($generated@@115 T@U) ) (! ($generated@@114 $generated@@6 $generated@@115 $generated)
 :pattern ( ($generated@@114 $generated@@6 $generated@@115 $generated))
)))
(assert (forall (($generated@@116 T@U) ) (! ($generated@@114 $generated@@7 $generated@@116 $generated@@0)
 :pattern ( ($generated@@114 $generated@@7 $generated@@116 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@117 () Real)
(declare-fun $generated@@118 () Real)
(declare-fun $generated@@119 () Int)
(declare-fun $generated@@120 () Real)
(declare-fun $generated@@121 () Real)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () Int)
(declare-fun $generated@@124 () Real)
(declare-fun $generated@@125 () Int)
(declare-fun $generated@@126 () Real)
(declare-fun $generated@@127 () Int)
(declare-fun $generated@@128 () Real)
(declare-fun $generated@@129 () Real)
(declare-fun $generated@@130 () Real)
(declare-fun $generated@@131 () Int)
(declare-fun $generated@@132 () Int)
(declare-fun $generated@@133 () Real)
(declare-fun $generated@@134 () Real)
(declare-fun $generated@@135 () Real)
(declare-fun $generated@@136 () Int)
(declare-fun $generated@@137 () Int)
(declare-fun $generated@@138 () Real)
(declare-fun $generated@@139 () Int)
(declare-fun $generated@@140 () Real)
(declare-fun $generated@@141 () Int)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 (T@U) Bool)
(declare-fun $generated@@145 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 28) (let (($generated@@146  (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= ($generated@@23 (- 0.0 2.0)) $generated@@117)) (=> (<= ($generated@@23 (- 0.0 2.0)) $generated@@117) (=> (= (ControlFlow 0 6) (- 0 5)) (= $generated@@117 $generated@@118))))))
(let (($generated@@147  (=> (not ($generated@@36 $generated@@119)) (=> (and (= $generated@@117 $generated@@120) (= (ControlFlow 0 9) 6)) $generated@@146))))
(let (($generated@@148  (=> (and (and ($generated@@36 $generated@@119) (= $generated@@121 ($generated@@23 18.0))) (and (= $generated@@117 $generated@@121) (= (ControlFlow 0 8) 6))) $generated@@146)))
(let (($generated@@149  (=> ($generated@@109 $generated@@6 ($generated@@10 $generated@@119) $generated $generated@@122) (=> (and ($generated@@37 $generated@@119) ($generated@@37 $generated@@119)) (and (=> (= (ControlFlow 0 10) 8) $generated@@148) (=> (= (ControlFlow 0 10) 9) $generated@@147))))))
(let (($generated@@150  (=> (= $generated@@119 $generated@@123) (=> (and (= $generated@@120 $generated@@124) (= (ControlFlow 0 12) 10)) $generated@@149))))
(let (($generated@@151  (=> (= $generated@@123 $generated@@125) (=> (and (= $generated@@124 $generated@@126) (= (ControlFlow 0 14) 12)) $generated@@150))))
(let (($generated@@152  (=> (= $generated@@125 $generated@@127) (=> (and (= $generated@@126 $generated@@128) (= (ControlFlow 0 16) 14)) $generated@@151))))
(let (($generated@@153  (=> ($generated@@109 $generated@@7 ($generated@@12 $generated@@129) $generated@@0 $generated@@122) (=> (and ($generated@@34 $generated@@129) ($generated@@34 $generated@@129)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (and ($generated@@114 $generated@@7 ($generated@@12 ($generated@@23 0.0)) $generated@@0) ($generated@@9 ($generated@@25 $generated@@5 ($generated@@8 ($generated@@33 ($generated@@23 0.0)))))) (exists (($generated@@154 Real) ) ($generated@@33 $generated@@154)))) (=> (or (and ($generated@@114 $generated@@7 ($generated@@12 ($generated@@23 0.0)) $generated@@0) ($generated@@9 ($generated@@25 $generated@@5 ($generated@@8 ($generated@@33 ($generated@@23 0.0)))))) (exists (($generated@@155 Real) ) ($generated@@33 $generated@@155))) (=> (and (and ($generated@@33 $generated@@130) (= $generated@@128 $generated@@130)) (and (= $generated@@127 $generated@@131) (= (ControlFlow 0 18) 16))) $generated@@152)))))))
(let (($generated@@156  (=> (and (and ($generated@@36 $generated@@132) (= $generated@@128 $generated@@133)) (and (= $generated@@127 $generated@@132) (= (ControlFlow 0 17) 16))) $generated@@152)))
(let (($generated@@157  (=> (and (and ($generated@@33 $generated@@134) (= $generated@@125 $generated@@131)) (and (= $generated@@126 $generated@@134) (= (ControlFlow 0 15) 14))) $generated@@151)))
(let (($generated@@158  (=> (and (and (= $generated@@135 (+ $generated@@133 (- 0.0 $generated@@133))) (= $generated@@123 $generated@@131)) (and (= $generated@@124 $generated@@135) (= (ControlFlow 0 13) 12))) $generated@@150)))
(let (($generated@@159  (=> (and ($generated@@36 $generated@@136) (= $generated@@137 ($generated@@21 4))) (=> (and (and (= $generated@@138 ($generated@@23 18.0)) (= $generated@@119 $generated@@137)) (and (= $generated@@120 $generated@@138) (= (ControlFlow 0 11) 10))) $generated@@149))))
(let (($generated@@160 true))
(let (($generated@@161  (=> (not (exists (($generated@@162 Int) ) (! ($generated@@36 $generated@@162)
 :pattern ( ($generated@@36 $generated@@162))
))) (and (=> (= (ControlFlow 0 20) 18) $generated@@153) (=> (= (ControlFlow 0 20) 4) $generated@@160)))))
(let (($generated@@163  (=> ($generated@@109 $generated@@6 ($generated@@10 $generated@@139) $generated $generated@@122) (=> (and ($generated@@37 $generated@@139) (forall (($generated@@164 Int) ) (! ($generated@@37 $generated@@164)
 :pattern ( ($generated@@36 $generated@@164))
))) (and (=> (= (ControlFlow 0 21) 17) $generated@@156) (=> (= (ControlFlow 0 21) 20) $generated@@161))))))
(let (($generated@@165 true))
(let (($generated@@166  (=> (not (exists (($generated@@167 Real) ) (! ($generated@@33 $generated@@167)
 :pattern ( ($generated@@33 $generated@@167))
))) (and (=> (= (ControlFlow 0 22) 21) $generated@@163) (=> (= (ControlFlow 0 22) 3) $generated@@165)))))
(let (($generated@@168  (=> ($generated@@109 $generated@@7 ($generated@@12 $generated@@140) $generated@@0 $generated@@122) (=> (and ($generated@@34 $generated@@140) (forall (($generated@@169 Real) ) (! ($generated@@34 $generated@@169)
 :pattern ( ($generated@@33 $generated@@169))
))) (and (=> (= (ControlFlow 0 23) 15) $generated@@157) (=> (= (ControlFlow 0 23) 22) $generated@@166))))))
(let (($generated@@170 true))
(let (($generated@@171  (and (=> (= (ControlFlow 0 24) 23) $generated@@168) (=> (= (ControlFlow 0 24) 2) $generated@@170))))
(let (($generated@@172  (=> (not (exists (($generated@@173 Int) ) (! ($generated@@36 $generated@@173)
 :pattern ( ($generated@@36 $generated@@173))
))) (and (=> (= (ControlFlow 0 25) 13) $generated@@158) (=> (= (ControlFlow 0 25) 24) $generated@@171)))))
(let (($generated@@174  (=> ($generated@@109 $generated@@6 ($generated@@10 $generated@@141) $generated $generated@@122) (=> (and ($generated@@37 $generated@@141) (forall (($generated@@175 Int) ) (! ($generated@@37 $generated@@175)
 :pattern ( ($generated@@36 $generated@@175))
))) (and (=> (= (ControlFlow 0 26) 11) $generated@@159) (=> (= (ControlFlow 0 26) 25) $generated@@172))))))
(let (($generated@@176 true))
(let (($generated@@177  (=> (= $generated@@142 ($generated@@47 $generated@@143 $generated@@122 $generated@@3 false)) (and (=> (= (ControlFlow 0 27) 26) $generated@@174) (=> (= (ControlFlow 0 27) 1) $generated@@176)))))
(let (($generated@@178  (=> (and (and ($generated@@144 $generated@@122) ($generated@@145 $generated@@122)) (and (= 1 $generated@@32) (= (ControlFlow 0 28) 27))) $generated@@177)))
$generated@@178))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)