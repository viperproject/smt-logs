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
(declare-fun $generated@@24 (T@U) Int)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@51 (T@U T@U T@U) Bool)
(declare-fun $generated@@56 (T@U) T@U)
(declare-fun $generated@@61 (T@U) Bool)
(declare-fun $generated@@65 (T@U T@U) Bool)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@72 () T@T)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U Int) T@U)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@85 (T@U) T@U)
(declare-fun $generated@@91 (T@U) Int)
(declare-fun $generated@@92 (T@U) Int)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@98 () T@T)
(declare-fun $generated@@99 () T@T)
(declare-fun $generated@@100 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@101 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@102 () T@T)
(declare-fun $generated@@103 (T@T T@T) T@T)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@105 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@106 (T@T) T@T)
(declare-fun $generated@@107 (T@T) T@T)
(declare-fun $generated@@170 (T@U) Int)
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
(assert (= ($generated@@24 $generated@@25) 0))
(assert (= ($generated@@26 $generated@@27) $generated@@4))
(assert (= ($generated@@7 $generated@@29) 3))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ) (!  (=> ($generated@@31 $generated@@33) ($generated@@28 $generated@@29 $generated@@27 ($generated@@30 $generated@@32) $generated@@33))
 :pattern ( ($generated@@28 $generated@@29 $generated@@27 ($generated@@30 $generated@@32) $generated@@33))
)))
(assert (forall (($generated@@35 T@U) ) (! ($generated@@34 $generated@@29 $generated@@27 ($generated@@30 $generated@@35))
 :pattern ( ($generated@@34 $generated@@29 $generated@@27 ($generated@@30 $generated@@35)))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@36 $generated@@38 $generated@@37) $generated@@37)
 :pattern ( ($generated@@36 $generated@@38 $generated@@37))
)))
(assert (forall (($generated@@40 T@U) ) (! (= ($generated@@39 $generated@@40) (= ($generated@@26 $generated@@40) $generated@@4))
 :pattern ( ($generated@@39 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ) (! (= ($generated@@41 $generated@@42) (= ($generated@@26 $generated@@42) $generated@@5))
 :pattern ( ($generated@@41 $generated@@42))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@44 $generated@@46 ($generated@@43 $generated@@46 $generated@@45)) $generated@@45)
 :pattern ( ($generated@@43 $generated@@46 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ) (!  (=> ($generated@@39 $generated@@47) (= $generated@@47 $generated@@27))
 :pattern ( ($generated@@39 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ) (!  (=> ($generated@@41 $generated@@49) (exists (($generated@@50 T@U) ) (= $generated@@49 ($generated@@48 $generated@@50))))
 :pattern ( ($generated@@41 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@51 ($generated@@44 $generated@@55 $generated@@52) $generated@@53 $generated@@54) ($generated@@28 $generated@@55 $generated@@52 $generated@@53 $generated@@54))
 :pattern ( ($generated@@51 ($generated@@44 $generated@@55 $generated@@52) $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@57 T@U) ) (!  (and (= ($generated@@23 ($generated@@30 $generated@@57)) $generated@@3) (= ($generated@@56 ($generated@@30 $generated@@57)) $generated@@6))
 :pattern ( ($generated@@30 $generated@@57))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> ($generated@@31 $generated@@60) (= ($generated@@28 $generated@@29 ($generated@@48 $generated@@59) ($generated@@30 $generated@@58) $generated@@60) ($generated@@51 $generated@@59 $generated@@58 $generated@@60)))
 :pattern ( ($generated@@28 $generated@@29 ($generated@@48 $generated@@59) ($generated@@30 $generated@@58) $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ) (!  (=> ($generated@@61 $generated@@62) (or ($generated@@39 $generated@@62) ($generated@@41 $generated@@62)))
 :pattern ( ($generated@@61 $generated@@62))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> ($generated@@34 $generated@@29 $generated@@64 ($generated@@30 $generated@@63)) (or ($generated@@39 $generated@@64) ($generated@@41 $generated@@64)))
 :pattern ( ($generated@@41 $generated@@64) ($generated@@34 $generated@@29 $generated@@64 ($generated@@30 $generated@@63)))
 :pattern ( ($generated@@39 $generated@@64) ($generated@@34 $generated@@29 $generated@@64 ($generated@@30 $generated@@63)))
)))
(assert (= ($generated@@7 $generated@@66) 4))
(assert (forall (($generated@@67 T@U) ) (!  (=> ($generated@@65 $generated@@67 $generated) (and (= ($generated@@44 $generated@@66 ($generated@@43 $generated@@66 $generated@@67)) $generated@@67) ($generated@@34 $generated@@66 ($generated@@43 $generated@@66 $generated@@67) $generated)))
 :pattern ( ($generated@@65 $generated@@67 $generated))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@65 ($generated@@44 $generated@@70 $generated@@68) $generated@@69) ($generated@@34 $generated@@70 $generated@@68 $generated@@69))
 :pattern ( ($generated@@65 ($generated@@44 $generated@@70 $generated@@68) $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ) (! (<= 0 ($generated@@24 $generated@@71))
 :pattern ( ($generated@@24 $generated@@71))
)))
(assert (= ($generated@@7 $generated@@72) 5))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@28 $generated@@72 $generated@@75 ($generated@@73 $generated@@76) $generated@@77) (forall (($generated@@78 Int) ) (!  (=> (and (<= 0 $generated@@78) (< $generated@@78 ($generated@@24 $generated@@75))) ($generated@@51 ($generated@@74 $generated@@75 $generated@@78) $generated@@76 $generated@@77))
 :pattern ( ($generated@@74 $generated@@75 $generated@@78))
)))
 :pattern ( ($generated@@28 $generated@@72 $generated@@75 ($generated@@73 $generated@@76) $generated@@77))
)))
(assert (forall (($generated@@80 T@U) ) (! (= ($generated@@79 ($generated@@73 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@73 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@23 ($generated@@73 $generated@@81)) $generated@@1)
 :pattern ( ($generated@@73 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@82 ($generated@@30 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@30 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@26 ($generated@@48 $generated@@84)) $generated@@5)
 :pattern ( ($generated@@48 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ) (! (= ($generated@@85 ($generated@@48 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@48 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@43 $generated@@88 ($generated@@44 $generated@@88 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@44 $generated@@88 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@34 $generated@@29 ($generated@@48 $generated@@90) ($generated@@30 $generated@@89)) ($generated@@65 $generated@@90 $generated@@89))
 :pattern ( ($generated@@34 $generated@@29 ($generated@@48 $generated@@90) ($generated@@30 $generated@@89)))
)))
(assert (forall (($generated@@93 T@U) ) (! (< ($generated@@91 $generated@@93) ($generated@@92 ($generated@@48 $generated@@93)))
 :pattern ( ($generated@@48 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and ($generated@@31 $generated@@96) (and ($generated@@41 $generated@@94) ($generated@@28 $generated@@29 $generated@@94 ($generated@@30 $generated@@95) $generated@@96))) ($generated@@51 ($generated@@85 $generated@@94) $generated@@95 $generated@@96))
 :pattern ( ($generated@@51 ($generated@@85 $generated@@94) $generated@@95 $generated@@96))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@97 $generated@@108 $generated@@109 $generated@@110 ($generated@@104 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@113 $generated@@114) $generated@@111)
 :weight 0
)) (and (forall (($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (= $generated@@120 $generated@@122) (= ($generated@@97 $generated@@115 $generated@@116 $generated@@117 ($generated@@104 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@121 $generated@@118) $generated@@122 $generated@@123) ($generated@@97 $generated@@115 $generated@@116 $generated@@117 $generated@@119 $generated@@122 $generated@@123)))
 :weight 0
)) (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@130 $generated@@132) (= ($generated@@97 $generated@@124 $generated@@125 $generated@@126 ($generated@@104 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@130 $generated@@127) $generated@@131 $generated@@132) ($generated@@97 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@131 $generated@@132)))
 :weight 0
)))) (= ($generated@@7 $generated@@98) 6)) (= ($generated@@7 $generated@@99) 7)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@101 $generated@@133 $generated@@134 ($generated@@105 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@135) $generated@@137) $generated@@135)
 :weight 0
))) (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (or (= $generated@@142 $generated@@143) (= ($generated@@101 $generated@@138 $generated@@139 ($generated@@105 $generated@@138 $generated@@139 $generated@@141 $generated@@142 $generated@@140) $generated@@143) ($generated@@101 $generated@@138 $generated@@139 $generated@@141 $generated@@143)))
 :weight 0
))) (= ($generated@@7 $generated@@102) 8)) (forall (($generated@@144 T@T) ($generated@@145 T@T) ) (= ($generated@@7 ($generated@@103 $generated@@144 $generated@@145)) 9))) (forall (($generated@@146 T@T) ($generated@@147 T@T) ) (! (= ($generated@@106 ($generated@@103 $generated@@146 $generated@@147)) $generated@@146)
 :pattern ( ($generated@@103 $generated@@146 $generated@@147))
))) (forall (($generated@@148 T@T) ($generated@@149 T@T) ) (! (= ($generated@@107 ($generated@@103 $generated@@148 $generated@@149)) $generated@@149)
 :pattern ( ($generated@@103 $generated@@148 $generated@@149))
))))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 Bool) ($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@12 ($generated@@97 $generated@@98 $generated@@99 $generated@@8 ($generated@@100 $generated@@150 $generated@@151 $generated@@152 $generated@@153) $generated@@154 $generated@@155))  (=> (and (or (not (= $generated@@154 $generated@@150)) (not true)) ($generated@@12 ($generated@@43 $generated@@8 ($generated@@101 $generated@@99 $generated@@102 ($generated@@101 $generated@@98 ($generated@@103 $generated@@99 $generated@@102) $generated@@151 $generated@@154) $generated@@152)))) $generated@@153))
 :pattern ( ($generated@@97 $generated@@98 $generated@@99 $generated@@8 ($generated@@100 $generated@@150 $generated@@151 $generated@@152 $generated@@153) $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@91 ($generated@@44 $generated@@29 $generated@@156)) ($generated@@92 $generated@@156))
 :pattern ( ($generated@@91 ($generated@@44 $generated@@29 $generated@@156)))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> ($generated@@65 $generated@@157 ($generated@@73 $generated@@158)) (and (= ($generated@@44 $generated@@72 ($generated@@43 $generated@@72 $generated@@157)) $generated@@157) ($generated@@34 $generated@@72 ($generated@@43 $generated@@72 $generated@@157) ($generated@@73 $generated@@158))))
 :pattern ( ($generated@@65 $generated@@157 ($generated@@73 $generated@@158)))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> ($generated@@65 $generated@@160 ($generated@@30 $generated@@159)) (and (= ($generated@@44 $generated@@29 ($generated@@43 $generated@@29 $generated@@160)) $generated@@160) ($generated@@34 $generated@@29 ($generated@@43 $generated@@29 $generated@@160) ($generated@@30 $generated@@159))))
 :pattern ( ($generated@@65 $generated@@160 ($generated@@30 $generated@@159)))
)))
(assert (= $generated@@27 ($generated@@36 $generated@@29 $generated@@27)))
(assert (forall (($generated@@161 T@U) ) (! (= ($generated@@48 ($generated@@36 $generated@@102 $generated@@161)) ($generated@@36 $generated@@29 ($generated@@48 $generated@@161)))
 :pattern ( ($generated@@48 ($generated@@36 $generated@@102 $generated@@161)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@44 $generated@@163 ($generated@@36 $generated@@163 $generated@@162)) ($generated@@36 $generated@@102 ($generated@@44 $generated@@163 $generated@@162)))
 :pattern ( ($generated@@44 $generated@@163 ($generated@@36 $generated@@163 $generated@@162)))
)))
(assert (forall (($generated@@164 T@U) ) (!  (=> (= ($generated@@24 $generated@@164) 0) (= $generated@@164 $generated@@25))
 :pattern ( ($generated@@24 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! ($generated@@28 $generated@@66 $generated@@166 $generated $generated@@165)
 :pattern ( ($generated@@28 $generated@@66 $generated@@166 $generated $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (! (= ($generated@@34 $generated@@72 $generated@@167 ($generated@@73 $generated@@168)) (forall (($generated@@169 Int) ) (!  (=> (and (<= 0 $generated@@169) (< $generated@@169 ($generated@@24 $generated@@167))) ($generated@@65 ($generated@@74 $generated@@167 $generated@@169) $generated@@168))
 :pattern ( ($generated@@74 $generated@@167 $generated@@169))
)))
 :pattern ( ($generated@@34 $generated@@72 $generated@@167 ($generated@@73 $generated@@168)))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 Int) ) (!  (=> (and (<= 0 $generated@@172) (< $generated@@172 ($generated@@24 $generated@@171))) (< ($generated@@92 ($generated@@43 $generated@@29 ($generated@@74 $generated@@171 $generated@@172))) ($generated@@170 $generated@@171)))
 :pattern ( ($generated@@92 ($generated@@43 $generated@@29 ($generated@@74 $generated@@171 $generated@@172))))
)))
(assert (forall (($generated@@173 T@U) ) (! ($generated@@34 $generated@@66 $generated@@173 $generated)
 :pattern ( ($generated@@34 $generated@@66 $generated@@173 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 (T@U) Bool)
(declare-fun $generated@@179 () Int)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@180 true))
(let (($generated@@181  (=> (and (not ($generated@@41 $generated@@174)) (= (ControlFlow 0 4) (- 0 3))) ($generated@@41 $generated@@174))))
(let (($generated@@182  (=> ($generated@@39 $generated@@174) (and (=> (= (ControlFlow 0 6) 4) $generated@@181) (=> (= (ControlFlow 0 6) 5) $generated@@180)))))
(let (($generated@@183  (=> (and (not ($generated@@39 $generated@@174)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@41 $generated@@174))))
(let (($generated@@184  (=> (= $generated@@175 ($generated@@100 $generated@@176 $generated@@177 $generated@@2 false)) (and (=> (= (ControlFlow 0 7) 2) $generated@@183) (=> (= (ControlFlow 0 7) 6) $generated@@182)))))
(let (($generated@@185  (=> (and ($generated@@31 $generated@@177) ($generated@@178 $generated@@177)) (=> (and (and (and ($generated@@34 $generated@@29 $generated@@174 ($generated@@30 ($generated@@73 $generated))) ($generated@@28 $generated@@29 $generated@@174 ($generated@@30 ($generated@@73 $generated)) $generated@@177)) ($generated@@61 $generated@@174)) (and (= 1 $generated@@179) (= (ControlFlow 0 8) 7))) $generated@@184))))
$generated@@185)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid