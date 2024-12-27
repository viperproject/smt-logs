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
(declare-fun $generated@@6 () T@U)
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 (T@U) Int)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@38 (Int) Int)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@52 (Int T@U) T@U)
(declare-fun $generated@@70 (T@U) Bool)
(declare-fun $generated@@72 (T@U) Int)
(declare-fun $generated@@75 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@76 () T@T)
(declare-fun $generated@@77 () T@T)
(declare-fun $generated@@78 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@79 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@80 () T@T)
(declare-fun $generated@@81 (T@T T@T) T@T)
(declare-fun $generated@@82 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@83 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@84 (T@T) T@T)
(declare-fun $generated@@85 (T@T) T@T)
(declare-fun $generated@@134 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@135 (T@U) Bool)
(declare-fun $generated@@141 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated) $generated@@0))
(assert (= ($generated@@24 $generated@@25) $generated@@3))
(assert (= ($generated@@24 $generated@@26) $generated@@4))
(assert (= ($generated@@7 $generated@@28) 3))
(assert ($generated@@27 $generated@@28 $generated@@25 $generated@@29))
(assert ($generated@@27 $generated@@28 $generated@@26 $generated@@29))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@32) (= $generated@@31 $generated@@32))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> (and ($generated@@33 $generated@@36) ($generated@@33 $generated@@37)) (= ($generated@@30 $generated@@36 $generated@@37)  (and (= ($generated@@34 $generated@@36) ($generated@@34 $generated@@37)) ($generated@@30 ($generated@@35 $generated@@36) ($generated@@35 $generated@@37)))))
 :pattern ( ($generated@@30 $generated@@36 $generated@@37) ($generated@@33 $generated@@36))
 :pattern ( ($generated@@30 $generated@@36 $generated@@37) ($generated@@33 $generated@@37))
)))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@38 $generated@@39) $generated@@39)
 :pattern ( ($generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 $generated@@41) $generated@@41)
 :pattern ( ($generated@@40 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@43 $generated@@44) (= ($generated@@24 $generated@@44) $generated@@3))
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert (forall (($generated@@46 T@U) ) (! (= ($generated@@45 $generated@@46) (= ($generated@@24 $generated@@46) $generated@@4))
 :pattern ( ($generated@@45 $generated@@46))
)))
(assert (forall (($generated@@47 T@U) ) (! (= ($generated@@33 $generated@@47) (= ($generated@@24 $generated@@47) $generated@@5))
 :pattern ( ($generated@@33 $generated@@47))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@49 $generated@@51 ($generated@@48 $generated@@51 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@48 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@53 T@U) ) (!  (=> ($generated@@33 $generated@@53) (exists (($generated@@54 Int) ($generated@@55 T@U) ) (= $generated@@53 ($generated@@52 $generated@@54 $generated@@55))))
 :pattern ( ($generated@@33 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ) (!  (=> ($generated@@43 $generated@@56) (= $generated@@56 $generated@@25))
 :pattern ( ($generated@@43 $generated@@56))
)))
(assert (forall (($generated@@57 T@U) ) (!  (=> ($generated@@45 $generated@@57) (= $generated@@57 $generated@@26))
 :pattern ( ($generated@@45 $generated@@57))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (!  (=> (and ($generated@@43 $generated@@58) ($generated@@43 $generated@@59)) ($generated@@30 $generated@@58 $generated@@59))
 :pattern ( ($generated@@30 $generated@@58 $generated@@59) ($generated@@43 $generated@@58))
 :pattern ( ($generated@@30 $generated@@58 $generated@@59) ($generated@@43 $generated@@59))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> (and ($generated@@45 $generated@@60) ($generated@@45 $generated@@61)) ($generated@@30 $generated@@60 $generated@@61))
 :pattern ( ($generated@@30 $generated@@60 $generated@@61) ($generated@@45 $generated@@60))
 :pattern ( ($generated@@30 $generated@@60 $generated@@61) ($generated@@45 $generated@@61))
)))
(assert (forall (($generated@@62 Int) ($generated@@63 T@U) ) (! (= ($generated@@24 ($generated@@52 $generated@@62 $generated@@63)) $generated@@5)
 :pattern ( ($generated@@52 $generated@@62 $generated@@63))
)))
(assert (forall (($generated@@64 Int) ($generated@@65 T@U) ) (! (= ($generated@@34 ($generated@@52 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@52 $generated@@64 $generated@@65))
)))
(assert (forall (($generated@@66 Int) ($generated@@67 T@U) ) (! (= ($generated@@35 ($generated@@52 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@52 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@T) ) (! (= ($generated@@48 $generated@@69 ($generated@@49 $generated@@69 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@49 $generated@@69 $generated@@68))
)))
(assert (forall (($generated@@71 T@U) ) (!  (=> ($generated@@70 $generated@@71) (or (or ($generated@@43 $generated@@71) ($generated@@45 $generated@@71)) ($generated@@33 $generated@@71)))
 :pattern ( ($generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 Int) ($generated@@74 T@U) ) (! (< ($generated@@72 $generated@@74) ($generated@@72 ($generated@@52 $generated@@73 $generated@@74)))
 :pattern ( ($generated@@52 $generated@@73 $generated@@74))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@T) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@75 $generated@@86 $generated@@87 $generated@@88 ($generated@@82 $generated@@86 $generated@@87 $generated@@88 $generated@@90 $generated@@91 $generated@@92 $generated@@89) $generated@@91 $generated@@92) $generated@@89)
 :weight 0
)) (and (forall (($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@T) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (or (= $generated@@98 $generated@@100) (= ($generated@@75 $generated@@93 $generated@@94 $generated@@95 ($generated@@82 $generated@@93 $generated@@94 $generated@@95 $generated@@97 $generated@@98 $generated@@99 $generated@@96) $generated@@100 $generated@@101) ($generated@@75 $generated@@93 $generated@@94 $generated@@95 $generated@@97 $generated@@100 $generated@@101)))
 :weight 0
)) (forall (($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (or (= $generated@@108 $generated@@110) (= ($generated@@75 $generated@@102 $generated@@103 $generated@@104 ($generated@@82 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@107 $generated@@108 $generated@@105) $generated@@109 $generated@@110) ($generated@@75 $generated@@102 $generated@@103 $generated@@104 $generated@@106 $generated@@109 $generated@@110)))
 :weight 0
)))) (= ($generated@@7 $generated@@76) 4)) (= ($generated@@7 $generated@@77) 5)) (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@79 $generated@@111 $generated@@112 ($generated@@83 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@113) $generated@@115) $generated@@113)
 :weight 0
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@120 $generated@@121) (= ($generated@@79 $generated@@116 $generated@@117 ($generated@@83 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@118) $generated@@121) ($generated@@79 $generated@@116 $generated@@117 $generated@@119 $generated@@121)))
 :weight 0
))) (= ($generated@@7 $generated@@80) 6)) (forall (($generated@@122 T@T) ($generated@@123 T@T) ) (= ($generated@@7 ($generated@@81 $generated@@122 $generated@@123)) 7))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (! (= ($generated@@84 ($generated@@81 $generated@@124 $generated@@125)) $generated@@124)
 :pattern ( ($generated@@81 $generated@@124 $generated@@125))
))) (forall (($generated@@126 T@T) ($generated@@127 T@T) ) (! (= ($generated@@85 ($generated@@81 $generated@@126 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@81 $generated@@126 $generated@@127))
))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 Bool) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@12 ($generated@@75 $generated@@76 $generated@@77 $generated@@8 ($generated@@78 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))  (=> (and (or (not (= $generated@@132 $generated@@128)) (not true)) ($generated@@12 ($generated@@48 $generated@@8 ($generated@@79 $generated@@77 $generated@@80 ($generated@@79 $generated@@76 ($generated@@81 $generated@@77 $generated@@80) $generated@@129 $generated@@132) $generated@@130)))) $generated@@131))
 :pattern ( ($generated@@75 $generated@@76 $generated@@77 $generated@@8 ($generated@@78 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and ($generated@@135 $generated@@137) (and ($generated@@33 $generated@@136) ($generated@@134 $generated@@28 $generated@@136 $generated@@29 $generated@@137))) ($generated@@134 $generated@@9 ($generated@@13 ($generated@@34 $generated@@136)) $generated $generated@@137))
 :pattern ( ($generated@@134 $generated@@9 ($generated@@13 ($generated@@34 $generated@@136)) $generated $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ) (!  (=> ($generated@@27 $generated@@28 $generated@@138 $generated@@29) (or (or ($generated@@43 $generated@@138) ($generated@@45 $generated@@138)) ($generated@@33 $generated@@138)))
 :pattern ( ($generated@@33 $generated@@138) ($generated@@27 $generated@@28 $generated@@138 $generated@@29))
 :pattern ( ($generated@@45 $generated@@138) ($generated@@27 $generated@@28 $generated@@138 $generated@@29))
 :pattern ( ($generated@@43 $generated@@138) ($generated@@27 $generated@@28 $generated@@138 $generated@@29))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@135 $generated@@140) ($generated@@27 $generated@@28 $generated@@139 $generated@@29)) ($generated@@134 $generated@@28 $generated@@139 $generated@@29 $generated@@140))
 :pattern ( ($generated@@134 $generated@@28 $generated@@139 $generated@@29 $generated@@140))
)))
(assert (= ($generated@@23 $generated@@29) $generated@@2))
(assert (= ($generated@@141 $generated@@29) $generated@@6))
(assert (= $generated@@25 ($generated@@40 $generated@@28 $generated@@25)))
(assert (= $generated@@26 ($generated@@40 $generated@@28 $generated@@26)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (and ($generated@@135 $generated@@143) (and ($generated@@33 $generated@@142) ($generated@@134 $generated@@28 $generated@@142 $generated@@29 $generated@@143))) ($generated@@134 $generated@@28 ($generated@@35 $generated@@142) $generated@@29 $generated@@143))
 :pattern ( ($generated@@134 $generated@@28 ($generated@@35 $generated@@142) $generated@@29 $generated@@143))
)))
(assert (forall (($generated@@144 Int) ($generated@@145 T@U) ) (! (= ($generated@@52 ($generated@@38 $generated@@144) ($generated@@40 $generated@@28 $generated@@145)) ($generated@@40 $generated@@28 ($generated@@52 $generated@@144 $generated@@145)))
 :pattern ( ($generated@@52 ($generated@@38 $generated@@144) ($generated@@40 $generated@@28 $generated@@145)))
)))
(assert (forall (($generated@@146 Int) ) (! (= ($generated@@49 $generated@@9 ($generated@@13 ($generated@@38 $generated@@146))) ($generated@@40 $generated@@80 ($generated@@49 $generated@@9 ($generated@@13 $generated@@146))))
 :pattern ( ($generated@@49 $generated@@9 ($generated@@13 ($generated@@38 $generated@@146))))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@49 $generated@@148 ($generated@@40 $generated@@148 $generated@@147)) ($generated@@40 $generated@@80 ($generated@@49 $generated@@148 $generated@@147)))
 :pattern ( ($generated@@49 $generated@@148 ($generated@@40 $generated@@148 $generated@@147)))
)))
(assert (forall (($generated@@149 Int) ($generated@@150 T@U) ) (! (= ($generated@@27 $generated@@28 ($generated@@52 $generated@@149 $generated@@150) $generated@@29)  (and ($generated@@27 $generated@@9 ($generated@@13 $generated@@149) $generated) ($generated@@27 $generated@@28 $generated@@150 $generated@@29)))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@52 $generated@@149 $generated@@150) $generated@@29))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! ($generated@@134 $generated@@9 $generated@@152 $generated $generated@@151)
 :pattern ( ($generated@@134 $generated@@9 $generated@@152 $generated $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ) (! ($generated@@27 $generated@@9 $generated@@153 $generated)
 :pattern ( ($generated@@27 $generated@@9 $generated@@153 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@154 () Int)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 (T@U) Bool)
(declare-fun $generated@@161 () Int)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@162 true))
(let (($generated@@163 true))
(let (($generated@@164  (=> (and (= $generated@@154 ($generated@@38 1)) ($generated@@70 $generated@@155)) (and (=> (= (ControlFlow 0 4) 2) $generated@@163) (=> (= (ControlFlow 0 4) 3) $generated@@162)))))
(let (($generated@@165 true))
(let (($generated@@166  (=> (= $generated@@156 ($generated@@78 $generated@@157 $generated@@158 $generated@@1 false)) (=> (and (and ($generated@@27 $generated@@28 $generated@@155 $generated@@29) ($generated@@134 $generated@@28 $generated@@155 $generated@@29 $generated@@158)) (and (= $generated@@159 ($generated@@40 $generated@@28 ($generated@@52 ($generated@@38 1) ($generated@@40 $generated@@28 ($generated@@52 ($generated@@38 2) ($generated@@40 $generated@@28 $generated@@25)))))) ($generated@@27 $generated@@28 $generated@@159 $generated@@29))) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($generated@@33 $generated@@159)) (=> ($generated@@33 $generated@@159) (=> (= ($generated@@52 $generated@@154 $generated@@155) $generated@@159) (and (=> (= (ControlFlow 0 5) (- 0 7)) (= $generated@@154 ($generated@@38 1))) (=> (= $generated@@154 ($generated@@38 1)) (=> ($generated@@70 $generated@@155) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@30 $generated@@155 ($generated@@52 ($generated@@38 2) ($generated@@40 $generated@@28 $generated@@25)))) (=> ($generated@@30 $generated@@155 ($generated@@52 ($generated@@38 2) ($generated@@40 $generated@@28 $generated@@25))) (and (=> (= (ControlFlow 0 5) 1) $generated@@165) (=> (= (ControlFlow 0 5) 4) $generated@@164))))))))))))))
(let (($generated@@167  (=> (and (and ($generated@@135 $generated@@158) ($generated@@160 $generated@@158)) (and (= 1 $generated@@161) (= (ControlFlow 0 9) 5))) $generated@@166)))
$generated@@167)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)