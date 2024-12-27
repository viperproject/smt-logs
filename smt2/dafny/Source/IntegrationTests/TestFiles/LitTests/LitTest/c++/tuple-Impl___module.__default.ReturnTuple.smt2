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
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@32 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@U T@U) Bool)
(declare-fun $generated@@38 (Int) Int)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 (T@U T@U T@U) Bool)
(declare-fun $generated@@50 (T@U) T@U)
(declare-fun $generated@@52 (T@T T@U) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@83 (T@U) Int)
(declare-fun $generated@@84 (T@U) Int)
(declare-fun $generated@@92 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@93 () T@T)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@96 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@97 () T@T)
(declare-fun $generated@@98 (T@T T@T) T@T)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@100 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@T) T@T)
(declare-fun $generated@@102 (T@T) T@T)
(declare-fun $generated@@151 (T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
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
(assert (= ($generated@@5 $generated@@27) 3))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@31 ($generated@@28 $generated@@29 $generated@@30)) ($generated@@25 $generated@@31))
 :pattern ( ($generated@@25 $generated@@31) ($generated@@26 $generated@@27 $generated@@31 ($generated@@28 $generated@@29 $generated@@30)))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@26 $generated@@27 ($generated@@32 $generated@@36 $generated@@37) ($generated@@28 $generated@@34 $generated@@35))  (and ($generated@@33 $generated@@36 $generated@@34) ($generated@@33 $generated@@37 $generated@@35)))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@32 $generated@@36 $generated@@37) ($generated@@28 $generated@@34 $generated@@35)))
)))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@38 $generated@@39) $generated@@39)
 :pattern ( ($generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 $generated@@41) $generated@@41)
 :pattern ( ($generated@@40 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> ($generated@@43 $generated@@49) (= ($generated@@21 $generated@@27 ($generated@@32 $generated@@47 $generated@@48) ($generated@@28 $generated@@45 $generated@@46) $generated@@49)  (and ($generated@@44 $generated@@47 $generated@@45 $generated@@49) ($generated@@44 $generated@@48 $generated@@46 $generated@@49))))
 :pattern ( ($generated@@21 $generated@@27 ($generated@@32 $generated@@47 $generated@@48) ($generated@@28 $generated@@45 $generated@@46) $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@25 $generated@@51) (= ($generated@@50 $generated@@51) $generated@@0))
 :pattern ( ($generated@@25 $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 ($generated@@52 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@52 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ) (!  (=> ($generated@@25 $generated@@56) (exists (($generated@@57 T@U) ($generated@@58 T@U) ) (= $generated@@56 ($generated@@32 $generated@@57 $generated@@58))))
 :pattern ( ($generated@@25 $generated@@56))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@44 ($generated@@53 $generated@@62 $generated@@59) $generated@@60 $generated@@61) ($generated@@21 $generated@@62 $generated@@59 $generated@@60 $generated@@61))
 :pattern ( ($generated@@44 ($generated@@53 $generated@@62 $generated@@59) $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ) (!  (=> ($generated@@33 $generated@@63 $generated@@22) (and (= ($generated@@53 $generated@@7 ($generated@@52 $generated@@7 $generated@@63)) $generated@@63) ($generated@@26 $generated@@7 ($generated@@52 $generated@@7 $generated@@63) $generated@@22)))
 :pattern ( ($generated@@33 $generated@@63 $generated@@22))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@33 ($generated@@53 $generated@@66 $generated@@64) $generated@@65) ($generated@@26 $generated@@66 $generated@@64 $generated@@65))
 :pattern ( ($generated@@33 ($generated@@53 $generated@@66 $generated@@64) $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@50 ($generated@@32 $generated@@67 $generated@@68)) $generated@@0)
 :pattern ( ($generated@@32 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (! (= ($generated@@69 ($generated@@28 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@28 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@72 ($generated@@28 $generated@@73 $generated@@74)) $generated@@74)
 :pattern ( ($generated@@28 $generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@75 ($generated@@32 $generated@@76 $generated@@77)) $generated@@76)
 :pattern ( ($generated@@32 $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@78 ($generated@@32 $generated@@79 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@32 $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@52 $generated@@82 ($generated@@53 $generated@@82 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@53 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (< ($generated@@83 $generated@@85) ($generated@@84 ($generated@@32 $generated@@85 $generated@@86)))
 :pattern ( ($generated@@32 $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (< ($generated@@83 $generated@@88) ($generated@@84 ($generated@@32 $generated@@87 $generated@@88)))
 :pattern ( ($generated@@32 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@33 $generated@@91 ($generated@@28 $generated@@89 $generated@@90)) (and (= ($generated@@53 $generated@@27 ($generated@@52 $generated@@27 $generated@@91)) $generated@@91) ($generated@@26 $generated@@27 ($generated@@52 $generated@@27 $generated@@91) ($generated@@28 $generated@@89 $generated@@90))))
 :pattern ( ($generated@@33 $generated@@91 ($generated@@28 $generated@@89 $generated@@90)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@92 $generated@@103 $generated@@104 $generated@@105 ($generated@@99 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@92 $generated@@110 $generated@@111 $generated@@112 ($generated@@99 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@92 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@92 $generated@@119 $generated@@120 $generated@@121 ($generated@@99 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@92 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))) (= ($generated@@5 $generated@@93) 4)) (= ($generated@@5 $generated@@94) 5)) (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@96 $generated@@128 $generated@@129 ($generated@@100 $generated@@128 $generated@@129 $generated@@131 $generated@@132 $generated@@130) $generated@@132) $generated@@130)
 :weight 0
))) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@137 $generated@@138) (= ($generated@@96 $generated@@133 $generated@@134 ($generated@@100 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@135) $generated@@138) ($generated@@96 $generated@@133 $generated@@134 $generated@@136 $generated@@138)))
 :weight 0
))) (= ($generated@@5 $generated@@97) 6)) (forall (($generated@@139 T@T) ($generated@@140 T@T) ) (= ($generated@@5 ($generated@@98 $generated@@139 $generated@@140)) 7))) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (! (= ($generated@@101 ($generated@@98 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@98 $generated@@141 $generated@@142))
))) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (! (= ($generated@@102 ($generated@@98 $generated@@143 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@98 $generated@@143 $generated@@144))
))))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 Bool) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@10 ($generated@@92 $generated@@93 $generated@@94 $generated@@6 ($generated@@95 $generated@@145 $generated@@146 $generated@@147 $generated@@148) $generated@@149 $generated@@150))  (=> (and (or (not (= $generated@@149 $generated@@145)) (not true)) ($generated@@10 ($generated@@52 $generated@@6 ($generated@@96 $generated@@94 $generated@@97 ($generated@@96 $generated@@93 ($generated@@98 $generated@@94 $generated@@97) $generated@@146 $generated@@149) $generated@@147)))) $generated@@148))
 :pattern ( ($generated@@92 $generated@@93 $generated@@94 $generated@@6 ($generated@@95 $generated@@145 $generated@@146 $generated@@147 $generated@@148) $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (!  (and (= ($generated@@151 ($generated@@28 $generated@@153 $generated@@154)) $generated@@1) (= ($generated@@152 ($generated@@28 $generated@@153 $generated@@154)) $generated@@3))
 :pattern ( ($generated@@28 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@83 ($generated@@53 $generated@@27 $generated@@155)) ($generated@@84 $generated@@155))
 :pattern ( ($generated@@83 ($generated@@53 $generated@@27 $generated@@155)))
)))
(assert (= ($generated@@151 $generated@@22) $generated@@2))
(assert (= ($generated@@152 $generated@@22) $generated@@4))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> (and ($generated@@43 $generated@@158) (and ($generated@@25 $generated@@156) (exists (($generated@@159 T@U) ) (! ($generated@@21 $generated@@27 $generated@@156 ($generated@@28 $generated@@157 $generated@@159) $generated@@158)
 :pattern ( ($generated@@21 $generated@@27 $generated@@156 ($generated@@28 $generated@@157 $generated@@159) $generated@@158))
)))) ($generated@@44 ($generated@@75 $generated@@156) $generated@@157 $generated@@158))
 :pattern ( ($generated@@44 ($generated@@75 $generated@@156) $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (and ($generated@@43 $generated@@162) (and ($generated@@25 $generated@@160) (exists (($generated@@163 T@U) ) (! ($generated@@21 $generated@@27 $generated@@160 ($generated@@28 $generated@@163 $generated@@161) $generated@@162)
 :pattern ( ($generated@@21 $generated@@27 $generated@@160 ($generated@@28 $generated@@163 $generated@@161) $generated@@162))
)))) ($generated@@44 ($generated@@78 $generated@@160) $generated@@161 $generated@@162))
 :pattern ( ($generated@@44 ($generated@@78 $generated@@160) $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ) (! (= ($generated@@26 $generated@@7 $generated@@164 $generated@@22)  (and (<= ($generated@@38 0) ($generated@@12 $generated@@164)) (< ($generated@@12 $generated@@164) 4294967296)))
 :pattern ( ($generated@@26 $generated@@7 $generated@@164 $generated@@22))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@32 ($generated@@40 $generated@@97 $generated@@165) ($generated@@40 $generated@@97 $generated@@166)) ($generated@@40 $generated@@27 ($generated@@32 $generated@@165 $generated@@166)))
 :pattern ( ($generated@@32 ($generated@@40 $generated@@97 $generated@@165) ($generated@@40 $generated@@97 $generated@@166)))
)))
(assert (forall (($generated@@167 Int) ) (! (= ($generated@@53 $generated@@7 ($generated@@11 ($generated@@38 $generated@@167))) ($generated@@40 $generated@@97 ($generated@@53 $generated@@7 ($generated@@11 $generated@@167))))
 :pattern ( ($generated@@53 $generated@@7 ($generated@@11 ($generated@@38 $generated@@167))))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@T) ) (! (= ($generated@@53 $generated@@169 ($generated@@40 $generated@@169 $generated@@168)) ($generated@@40 $generated@@97 ($generated@@53 $generated@@169 $generated@@168)))
 :pattern ( ($generated@@53 $generated@@169 ($generated@@40 $generated@@169 $generated@@168)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () Int)
(declare-fun $generated@@174 () Int)
(declare-fun $generated@@175 (T@U) Bool)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@178  (=> (and (= $generated@@170 ($generated@@95 $generated@@171 $generated@@172 $generated false)) (= $generated@@173 ($generated@@38 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= ($generated@@38 0) $generated@@173) (< $generated@@173 4294967296))) (=> (and (<= ($generated@@38 0) $generated@@173) (< $generated@@173 4294967296)) (=> (and (= $generated@@174 ($generated@@38 2)) (= (ControlFlow 0 2) (- 0 1))) (and (<= ($generated@@38 0) $generated@@174) (< $generated@@174 4294967296))))))))
(let (($generated@@179  (=> (and ($generated@@43 $generated@@172) ($generated@@175 $generated@@172)) (=> (and (and ($generated@@26 $generated@@27 $generated@@176 ($generated@@28 $generated@@22 $generated@@22)) ($generated@@21 $generated@@27 $generated@@176 ($generated@@28 $generated@@22 $generated@@22) $generated@@172)) (and (= 1 $generated@@177) (= (ControlFlow 0 4) 2))) $generated@@178))))
$generated@@179)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)