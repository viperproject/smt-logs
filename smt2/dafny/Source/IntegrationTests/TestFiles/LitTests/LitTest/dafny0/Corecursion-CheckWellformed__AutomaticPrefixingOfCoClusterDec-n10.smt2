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
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@30 () Int)
(declare-fun $generated@@31 (T@U Bool) T@U)
(declare-fun $generated@@32 (Bool) Bool)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 () Bool)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@41 () Bool)
(declare-fun $generated@@45 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@47 (Int) Int)
(declare-fun $generated@@53 (T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@U T@U T@U) Bool)
(declare-fun $generated@@66 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@71 (T@U) T@U)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@92 (T@U) Bool)
(declare-fun $generated@@96 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@97 () T@T)
(declare-fun $generated@@98 () T@T)
(declare-fun $generated@@99 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@100 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@101 () T@T)
(declare-fun $generated@@102 (T@T T@T) T@T)
(declare-fun $generated@@103 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 (T@T) T@T)
(declare-fun $generated@@106 (T@T) T@T)
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
(assert (= ($generated@@23 $generated) $generated@@1))
(assert (= ($generated@@23 $generated@@0) $generated@@2))
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@29 ($generated@@27 $generated@@28)) ($generated@@24 $generated@@29))
 :pattern ( ($generated@@24 $generated@@29) ($generated@@25 $generated@@26 $generated@@29 ($generated@@27 $generated@@28)))
)))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@33 T@U) ($generated@@34 Bool) ) (!  (=> (or ($generated@@32 $generated@@34) (< 1 $generated@@30)) ($generated@@25 $generated@@26 ($generated@@31 $generated@@33 $generated@@34) ($generated@@27 $generated@@0)))
 :pattern ( ($generated@@31 $generated@@33 $generated@@34))
))))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@39 T@U) ) (!  (=> (or $generated@@37 (< 1 $generated@@30)) (and ($generated@@32 ($generated@@12 ($generated@@38 $generated@@8 ($generated@@11 false)))) (= ($generated@@35 ($generated@@36 $generated@@39)) ($generated@@38 $generated@@26 ($generated@@31 $generated@@39 ($generated@@12 ($generated@@38 $generated@@8 ($generated@@11 false))))))))
 :pattern ( ($generated@@35 ($generated@@36 $generated@@39)))
))))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@42 T@U) ) (!  (=> (or $generated@@41 (< 1 $generated@@30)) (and ($generated@@32 ($generated@@12 ($generated@@38 $generated@@8 ($generated@@11 true)))) (= ($generated@@40 ($generated@@36 $generated@@42)) ($generated@@38 $generated@@26 ($generated@@31 $generated@@42 ($generated@@12 ($generated@@38 $generated@@8 ($generated@@11 true))))))))
 :pattern ( ($generated@@40 ($generated@@36 $generated@@42)))
))))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@43 T@U) ) (!  (=> (or $generated@@41 (< 1 $generated@@30)) ($generated@@25 $generated@@26 ($generated@@40 $generated@@43) ($generated@@27 $generated@@0)))
 :pattern ( ($generated@@40 $generated@@43))
))))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@44 T@U) ) (!  (=> (or $generated@@37 (< 1 $generated@@30)) ($generated@@25 $generated@@26 ($generated@@35 $generated@@44) ($generated@@27 $generated@@0)))
 :pattern ( ($generated@@35 $generated@@44))
))))
(assert  (=> (<= 1 $generated@@30) (forall (($generated@@48 T@U) ($generated@@49 Bool) ) (!  (=> (or ($generated@@32 $generated@@49) (< 1 $generated@@30)) (and (and (=> $generated@@49 $generated@@37) (=> (not $generated@@49) $generated@@41)) (= ($generated@@31 ($generated@@36 $generated@@48) $generated@@49) (ite $generated@@49 ($generated@@45 ($generated@@46 $generated@@9 ($generated@@13 ($generated@@47 5))) ($generated@@38 $generated@@26 ($generated@@35 $generated@@48))) ($generated@@45 ($generated@@46 $generated@@9 ($generated@@13 ($generated@@47 7))) ($generated@@38 $generated@@26 ($generated@@40 $generated@@48)))))))
 :pattern ( ($generated@@31 ($generated@@36 $generated@@48) $generated@@49))
))))
(assert (forall (($generated@@50 Int) ) (! (= ($generated@@47 $generated@@50) $generated@@50)
 :pattern ( ($generated@@47 $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@T) ) (! (= ($generated@@38 $generated@@52 $generated@@51) $generated@@51)
 :pattern ( ($generated@@38 $generated@@52 $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@25 $generated@@26 ($generated@@45 $generated@@55 $generated@@56) ($generated@@27 $generated@@54))  (and ($generated@@53 $generated@@55 $generated@@54) ($generated@@25 $generated@@26 $generated@@56 ($generated@@27 $generated@@54))))
 :pattern ( ($generated@@25 $generated@@26 ($generated@@45 $generated@@55 $generated@@56) ($generated@@27 $generated@@54)))
)))
(assert (forall (($generated@@58 T@U) ) (! (= ($generated@@24 $generated@@58) (= ($generated@@57 $generated@@58) $generated@@5))
 :pattern ( ($generated@@24 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@46 $generated@@61 ($generated@@59 $generated@@61 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@59 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ) (!  (=> ($generated@@24 $generated@@62) (exists (($generated@@63 T@U) ($generated@@64 T@U) ) (= $generated@@62 ($generated@@45 $generated@@63 $generated@@64))))
 :pattern ( ($generated@@24 $generated@@62))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@65 ($generated@@46 $generated@@70 $generated@@67) $generated@@68 $generated@@69) ($generated@@66 $generated@@70 $generated@@67 $generated@@68 $generated@@69))
 :pattern ( ($generated@@65 ($generated@@46 $generated@@70 $generated@@67) $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ) (!  (and (= ($generated@@23 ($generated@@27 $generated@@72)) $generated@@4) (= ($generated@@71 ($generated@@27 $generated@@72)) $generated@@6))
 :pattern ( ($generated@@27 $generated@@72))
)))
(assert (forall (($generated@@73 T@U) ) (!  (=> ($generated@@53 $generated@@73 $generated@@0) (and (= ($generated@@46 $generated@@9 ($generated@@59 $generated@@9 $generated@@73)) $generated@@73) ($generated@@25 $generated@@9 ($generated@@59 $generated@@9 $generated@@73) $generated@@0)))
 :pattern ( ($generated@@53 $generated@@73 $generated@@0))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@53 $generated@@74 $generated) (and (= ($generated@@46 $generated@@8 ($generated@@59 $generated@@8 $generated@@74)) $generated@@74) ($generated@@25 $generated@@8 ($generated@@59 $generated@@8 $generated@@74) $generated)))
 :pattern ( ($generated@@53 $generated@@74 $generated))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@53 ($generated@@46 $generated@@77 $generated@@75) $generated@@76) ($generated@@25 $generated@@77 $generated@@75 $generated@@76))
 :pattern ( ($generated@@53 ($generated@@46 $generated@@77 $generated@@75) $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@57 ($generated@@45 $generated@@78 $generated@@79)) $generated@@5)
 :pattern ( ($generated@@45 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@80 ($generated@@45 $generated@@81 $generated@@82)) $generated@@81)
 :pattern ( ($generated@@45 $generated@@81 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@83 ($generated@@45 $generated@@84 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@45 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (! (= ($generated@@86 ($generated@@27 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@27 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@59 $generated@@89 ($generated@@46 $generated@@89 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@46 $generated@@89 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 Bool) ) (! (= ($generated@@31 ($generated@@36 $generated@@90) $generated@@91) ($generated@@31 $generated@@90 $generated@@91))
 :pattern ( ($generated@@31 ($generated@@36 $generated@@90) $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (and ($generated@@92 $generated@@95) (and ($generated@@24 $generated@@93) ($generated@@66 $generated@@26 $generated@@93 ($generated@@27 $generated@@94) $generated@@95))) ($generated@@65 ($generated@@80 $generated@@93) $generated@@94 $generated@@95))
 :pattern ( ($generated@@65 ($generated@@80 $generated@@93) $generated@@94 $generated@@95))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@96 $generated@@107 $generated@@108 $generated@@109 ($generated@@103 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@112 $generated@@113) $generated@@110)
 :weight 0
)) (and (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@96 $generated@@114 $generated@@115 $generated@@116 ($generated@@103 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@96 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)) (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@96 $generated@@123 $generated@@124 $generated@@125 ($generated@@103 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@130 $generated@@131) ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@130 $generated@@131)))
 :weight 0
)))) (= ($generated@@7 $generated@@97) 4)) (= ($generated@@7 $generated@@98) 5)) (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@100 $generated@@132 $generated@@133 ($generated@@104 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@134) $generated@@136) $generated@@134)
 :weight 0
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (or (= $generated@@141 $generated@@142) (= ($generated@@100 $generated@@137 $generated@@138 ($generated@@104 $generated@@137 $generated@@138 $generated@@140 $generated@@141 $generated@@139) $generated@@142) ($generated@@100 $generated@@137 $generated@@138 $generated@@140 $generated@@142)))
 :weight 0
))) (= ($generated@@7 $generated@@101) 6)) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (= ($generated@@7 ($generated@@102 $generated@@143 $generated@@144)) 7))) (forall (($generated@@145 T@T) ($generated@@146 T@T) ) (! (= ($generated@@105 ($generated@@102 $generated@@145 $generated@@146)) $generated@@145)
 :pattern ( ($generated@@102 $generated@@145 $generated@@146))
))) (forall (($generated@@147 T@T) ($generated@@148 T@T) ) (! (= ($generated@@106 ($generated@@102 $generated@@147 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@102 $generated@@147 $generated@@148))
))))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 Bool) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@12 ($generated@@96 $generated@@97 $generated@@98 $generated@@8 ($generated@@99 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))  (=> (and (or (not (= $generated@@153 $generated@@149)) (not true)) ($generated@@12 ($generated@@59 $generated@@8 ($generated@@100 $generated@@98 $generated@@101 ($generated@@100 $generated@@97 ($generated@@102 $generated@@98 $generated@@101) $generated@@150 $generated@@153) $generated@@151)))) $generated@@152))
 :pattern ( ($generated@@96 $generated@@97 $generated@@98 $generated@@8 ($generated@@99 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@40 ($generated@@36 $generated@@155)) ($generated@@40 $generated@@155))
 :pattern ( ($generated@@40 ($generated@@36 $generated@@155)))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@35 ($generated@@36 $generated@@156)) ($generated@@35 $generated@@156))
 :pattern ( ($generated@@35 ($generated@@36 $generated@@156)))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> ($generated@@53 $generated@@158 ($generated@@27 $generated@@157)) (and (= ($generated@@46 $generated@@26 ($generated@@59 $generated@@26 $generated@@158)) $generated@@158) ($generated@@25 $generated@@26 ($generated@@59 $generated@@26 $generated@@158) ($generated@@27 $generated@@157))))
 :pattern ( ($generated@@53 $generated@@158 ($generated@@27 $generated@@157)))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> (and ($generated@@92 $generated@@161) (and ($generated@@24 $generated@@159) ($generated@@66 $generated@@26 $generated@@159 ($generated@@27 $generated@@160) $generated@@161))) ($generated@@66 $generated@@26 ($generated@@83 $generated@@159) ($generated@@27 $generated@@160) $generated@@161))
 :pattern ( ($generated@@66 $generated@@26 ($generated@@83 $generated@@159) ($generated@@27 $generated@@160) $generated@@161))
)))
(assert (forall (($generated@@162 Int) ) (! (= ($generated@@46 $generated@@9 ($generated@@13 ($generated@@47 $generated@@162))) ($generated@@38 $generated@@101 ($generated@@46 $generated@@9 ($generated@@13 $generated@@162))))
 :pattern ( ($generated@@46 $generated@@9 ($generated@@13 ($generated@@47 $generated@@162))))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@T) ) (! (= ($generated@@46 $generated@@164 ($generated@@38 $generated@@164 $generated@@163)) ($generated@@38 $generated@@101 ($generated@@46 $generated@@164 $generated@@163)))
 :pattern ( ($generated@@46 $generated@@164 ($generated@@38 $generated@@164 $generated@@163)))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! ($generated@@66 $generated@@9 $generated@@166 $generated@@0 $generated@@165)
 :pattern ( ($generated@@66 $generated@@9 $generated@@166 $generated@@0 $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (! ($generated@@66 $generated@@8 $generated@@168 $generated $generated@@167)
 :pattern ( ($generated@@66 $generated@@8 $generated@@168 $generated $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@92 $generated@@172) (= ($generated@@66 $generated@@26 ($generated@@45 $generated@@170 $generated@@171) ($generated@@27 $generated@@169) $generated@@172)  (and ($generated@@65 $generated@@170 $generated@@169 $generated@@172) ($generated@@66 $generated@@26 $generated@@171 ($generated@@27 $generated@@169) $generated@@172))))
 :pattern ( ($generated@@66 $generated@@26 ($generated@@45 $generated@@170 $generated@@171) ($generated@@27 $generated@@169) $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ) (! ($generated@@25 $generated@@9 $generated@@173 $generated@@0)
 :pattern ( ($generated@@25 $generated@@9 $generated@@173 $generated@@0))
)))
(assert (forall (($generated@@174 T@U) ) (! ($generated@@25 $generated@@8 $generated@@174 $generated)
 :pattern ( ($generated@@25 $generated@@8 $generated@@174 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@175 () Bool)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@180  (=> (and (= $generated@@175 ($generated@@12 ($generated@@38 $generated@@8 ($generated@@11 false)))) ($generated@@66 $generated@@8 ($generated@@11 $generated@@175) $generated $generated@@176)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (<= 0 ($generated@@47 1)) (= ($generated@@47 0) ($generated@@47 1)))) (=> (or (<= 0 ($generated@@47 1)) (= ($generated@@47 0) ($generated@@47 1))) (=> (= (ControlFlow 0 3) (- 0 2)) (<= ($generated@@47 0) ($generated@@47 1))))))))
(let (($generated@@181 true))
(let (($generated@@182  (=> (= $generated@@177 ($generated@@99 $generated@@178 $generated@@176 $generated@@3 false)) (and (=> (= (ControlFlow 0 5) 1) $generated@@181) (=> (= (ControlFlow 0 5) 3) $generated@@180)))))
(let (($generated@@183  (=> (and (and ($generated@@92 $generated@@176) ($generated@@179 $generated@@176)) (and (= 1 $generated@@30) (= (ControlFlow 0 6) 5))) $generated@@182)))
$generated@@183)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)