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
(declare-fun $generated@@24 (T@U Int) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 () Int)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@U) Bool)
(declare-fun $generated@@48 (T@U) Bool)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@64 (T@U) Bool)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 (T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@88 (T@U) Int)
(declare-fun $generated@@90 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 () T@T)
(declare-fun $generated@@93 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@94 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@95 () T@T)
(declare-fun $generated@@96 (T@T T@T) T@T)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@98 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@99 (T@T) T@T)
(declare-fun $generated@@100 (T@T) T@T)
(declare-fun $generated@@151 (T@U) Bool)
(declare-fun $generated@@154 (T@U) T@U)
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
(assert (= ($generated@@7 $generated@@29) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (and (<= 0 $generated@@31) (< $generated@@31 ($generated@@26 $generated@@30))) (< ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@30 $generated@@31))) ($generated@@27 ($generated@@25 $generated@@30))))
 :pattern ( ($generated@@24 $generated@@30 $generated@@31) ($generated@@25 $generated@@30))
)))
(assert (= ($generated@@26 $generated@@32) 0))
(assert (= ($generated@@33 $generated@@34) $generated@@5))
(assert ($generated@@35 $generated@@29 $generated@@34 $generated@@36))
(assert  (=> (<= 1 $generated@@37) (forall (($generated@@42 T@U) ) (!  (=> (or ($generated@@39 $generated@@42) (and (< 1 $generated@@37) (and ($generated@@35 $generated@@29 $generated@@42 $generated@@36) (not ($generated@@40 $generated@@42))))) (= ($generated@@38 $generated@@42) ($generated@@41 $generated@@42)))
 :pattern ( ($generated@@38 $generated@@42))
))))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@T) ) (! (= ($generated@@43 $generated@@45 $generated@@44) $generated@@44)
 :pattern ( ($generated@@43 $generated@@45 $generated@@44))
)))
(assert (forall (($generated@@47 T@U) ) (! (= ($generated@@46 $generated@@47) (= ($generated@@33 $generated@@47) $generated@@4))
 :pattern ( ($generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ) (! (= ($generated@@48 $generated@@49) (= ($generated@@33 $generated@@49) $generated@@5))
 :pattern ( ($generated@@48 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@T) ) (! (= ($generated@@50 $generated@@52 ($generated@@28 $generated@@52 $generated@@51)) $generated@@51)
 :pattern ( ($generated@@28 $generated@@52 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ) (!  (=> ($generated@@48 $generated@@53) (= $generated@@53 $generated@@34))
 :pattern ( ($generated@@48 $generated@@53))
)))
(assert (forall (($generated@@54 T@U) ) (!  (=> ($generated@@46 $generated@@54) (exists (($generated@@55 T@U) ) (= $generated@@54 ($generated@@25 $generated@@55))))
 :pattern ( ($generated@@46 $generated@@54))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@56 ($generated@@50 $generated@@61 $generated@@58) $generated@@59 $generated@@60) ($generated@@57 $generated@@61 $generated@@58 $generated@@59 $generated@@60))
 :pattern ( ($generated@@56 ($generated@@50 $generated@@61 $generated@@58) $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@63 T@U) ) (!  (=> ($generated@@62 $generated@@63 $generated@@36) (and (= ($generated@@50 $generated@@29 ($generated@@28 $generated@@29 $generated@@63)) $generated@@63) ($generated@@35 $generated@@29 ($generated@@28 $generated@@29 $generated@@63) $generated@@36)))
 :pattern ( ($generated@@62 $generated@@63 $generated@@36))
)))
(assert  (=> (<= 0 $generated@@37) (forall (($generated@@65 T@U) ) (!  (=> (or ($generated@@64 $generated@@65) (and (< 0 $generated@@37) ($generated@@35 $generated@@29 $generated@@65 $generated@@36))) (= ($generated@@40 $generated@@65) ($generated@@48 $generated@@65)))
 :pattern ( ($generated@@40 $generated@@65))
))))
(assert (= ($generated@@7 $generated@@66) 4))
(assert  (=> (<= 1 $generated@@37) (forall (($generated@@68 T@U) ) (!  (=> (or ($generated@@39 $generated@@68) (and (< 1 $generated@@37) (and ($generated@@35 $generated@@29 $generated@@68 $generated@@36) (not ($generated@@40 $generated@@68))))) ($generated@@35 $generated@@66 ($generated@@38 $generated@@68) ($generated@@67 $generated)))
 :pattern ( ($generated@@38 $generated@@68))
))))
(assert (forall (($generated@@69 T@U) ) (!  (=> ($generated@@35 $generated@@29 $generated@@69 $generated@@36) (or ($generated@@46 $generated@@69) ($generated@@48 $generated@@69)))
 :pattern ( ($generated@@48 $generated@@69) ($generated@@35 $generated@@29 $generated@@69 $generated@@36))
 :pattern ( ($generated@@46 $generated@@69) ($generated@@35 $generated@@29 $generated@@69 $generated@@36))
)))
(assert (= ($generated@@7 $generated@@70) 5))
(assert (forall (($generated@@71 T@U) ) (!  (=> ($generated@@62 $generated@@71 $generated) (and (= ($generated@@50 $generated@@70 ($generated@@28 $generated@@70 $generated@@71)) $generated@@71) ($generated@@35 $generated@@70 ($generated@@28 $generated@@70 $generated@@71) $generated)))
 :pattern ( ($generated@@62 $generated@@71 $generated))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@62 ($generated@@50 $generated@@74 $generated@@72) $generated@@73) ($generated@@35 $generated@@74 $generated@@72 $generated@@73))
 :pattern ( ($generated@@62 ($generated@@50 $generated@@74 $generated@@72) $generated@@73))
)))
(assert  (=> (<= 1 $generated@@37) (forall (($generated@@75 T@U) ) (!  (=> (or ($generated@@39 ($generated@@43 $generated@@29 $generated@@75)) (and (< 1 $generated@@37) (and ($generated@@35 $generated@@29 $generated@@75 $generated@@36) (not ($generated@@12 ($generated@@43 $generated@@8 ($generated@@11 ($generated@@40 ($generated@@43 $generated@@29 $generated@@75))))))))) (= ($generated@@38 ($generated@@43 $generated@@29 $generated@@75)) ($generated@@43 $generated@@66 ($generated@@41 ($generated@@43 $generated@@29 $generated@@75)))))
 :weight 3
 :pattern ( ($generated@@38 ($generated@@43 $generated@@29 $generated@@75)))
))))
(assert (forall (($generated@@76 T@U) ) (! (<= 0 ($generated@@26 $generated@@76))
 :pattern ( ($generated@@26 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@57 $generated@@66 $generated@@77 ($generated@@67 $generated@@78) $generated@@79) (forall (($generated@@80 Int) ) (!  (=> (and (<= 0 $generated@@80) (< $generated@@80 ($generated@@26 $generated@@77))) ($generated@@56 ($generated@@24 $generated@@77 $generated@@80) $generated@@78 $generated@@79))
 :pattern ( ($generated@@24 $generated@@77 $generated@@80))
)))
 :pattern ( ($generated@@57 $generated@@66 $generated@@77 ($generated@@67 $generated@@78) $generated@@79))
)))
(assert (forall (($generated@@82 T@U) ) (! (= ($generated@@81 ($generated@@67 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@67 $generated@@82))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@23 ($generated@@67 $generated@@83)) $generated@@1)
 :pattern ( ($generated@@67 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@33 ($generated@@25 $generated@@84)) $generated@@4)
 :pattern ( ($generated@@25 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@41 ($generated@@25 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@25 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@28 $generated@@87 ($generated@@50 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@50 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@89 T@U) ) (! (< ($generated@@88 $generated@@89) ($generated@@27 ($generated@@25 $generated@@89)))
 :pattern ( ($generated@@25 $generated@@89))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@90 $generated@@101 $generated@@102 $generated@@103 ($generated@@97 $generated@@101 $generated@@102 $generated@@103 $generated@@105 $generated@@106 $generated@@107 $generated@@104) $generated@@106 $generated@@107) $generated@@104)
 :weight 0
)) (and (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (or (= $generated@@113 $generated@@115) (= ($generated@@90 $generated@@108 $generated@@109 $generated@@110 ($generated@@97 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@115 $generated@@116) ($generated@@90 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@115 $generated@@116)))
 :weight 0
)) (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@123 $generated@@125) (= ($generated@@90 $generated@@117 $generated@@118 $generated@@119 ($generated@@97 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@90 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)))) (= ($generated@@7 $generated@@91) 6)) (= ($generated@@7 $generated@@92) 7)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@94 $generated@@126 $generated@@127 ($generated@@98 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@128) $generated@@130) $generated@@128)
 :weight 0
))) (forall (($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (or (= $generated@@135 $generated@@136) (= ($generated@@94 $generated@@131 $generated@@132 ($generated@@98 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@133) $generated@@136) ($generated@@94 $generated@@131 $generated@@132 $generated@@134 $generated@@136)))
 :weight 0
))) (= ($generated@@7 $generated@@95) 8)) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (= ($generated@@7 ($generated@@96 $generated@@137 $generated@@138)) 9))) (forall (($generated@@139 T@T) ($generated@@140 T@T) ) (! (= ($generated@@99 ($generated@@96 $generated@@139 $generated@@140)) $generated@@139)
 :pattern ( ($generated@@96 $generated@@139 $generated@@140))
))) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (! (= ($generated@@100 ($generated@@96 $generated@@141 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@96 $generated@@141 $generated@@142))
))))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 Bool) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@12 ($generated@@90 $generated@@91 $generated@@92 $generated@@8 ($generated@@93 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@147 $generated@@148))  (=> (and (or (not (= $generated@@147 $generated@@143)) (not true)) ($generated@@12 ($generated@@28 $generated@@8 ($generated@@94 $generated@@92 $generated@@95 ($generated@@94 $generated@@91 ($generated@@96 $generated@@92 $generated@@95) $generated@@144 $generated@@147) $generated@@145)))) $generated@@146))
 :pattern ( ($generated@@90 $generated@@91 $generated@@92 $generated@@8 ($generated@@93 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@62 $generated@@149 ($generated@@67 $generated@@150)) (and (= ($generated@@50 $generated@@66 ($generated@@28 $generated@@66 $generated@@149)) $generated@@149) ($generated@@35 $generated@@66 ($generated@@28 $generated@@66 $generated@@149) ($generated@@67 $generated@@150))))
 :pattern ( ($generated@@62 $generated@@149 ($generated@@67 $generated@@150)))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> (and ($generated@@151 $generated@@153) ($generated@@35 $generated@@29 $generated@@152 $generated@@36)) ($generated@@57 $generated@@29 $generated@@152 $generated@@36 $generated@@153))
 :pattern ( ($generated@@57 $generated@@29 $generated@@152 $generated@@36 $generated@@153))
)))
(assert (= ($generated@@23 $generated@@36) $generated@@3))
(assert (= ($generated@@154 $generated@@36) $generated@@6))
(assert  (=> (<= 0 $generated@@37) (forall (($generated@@155 T@U) ) (!  (=> (or ($generated@@64 ($generated@@43 $generated@@29 $generated@@155)) (and (< 0 $generated@@37) ($generated@@35 $generated@@29 $generated@@155 $generated@@36))) (= ($generated@@40 ($generated@@43 $generated@@29 $generated@@155)) ($generated@@12 ($generated@@43 $generated@@8 ($generated@@11 ($generated@@48 ($generated@@43 $generated@@29 $generated@@155)))))))
 :weight 3
 :pattern ( ($generated@@40 ($generated@@43 $generated@@29 $generated@@155)))
))))
(assert (= $generated@@34 ($generated@@43 $generated@@29 $generated@@34)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@35 $generated@@29 ($generated@@25 $generated@@156) $generated@@36) ($generated@@35 $generated@@66 $generated@@156 ($generated@@67 $generated)))
 :pattern ( ($generated@@35 $generated@@29 ($generated@@25 $generated@@156) $generated@@36))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> (and ($generated@@151 $generated@@158) (and ($generated@@46 $generated@@157) ($generated@@57 $generated@@29 $generated@@157 $generated@@36 $generated@@158))) ($generated@@57 $generated@@66 ($generated@@41 $generated@@157) ($generated@@67 $generated) $generated@@158))
 :pattern ( ($generated@@57 $generated@@66 ($generated@@41 $generated@@157) ($generated@@67 $generated) $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ) (! (= ($generated@@25 ($generated@@43 $generated@@66 $generated@@159)) ($generated@@43 $generated@@29 ($generated@@25 $generated@@159)))
 :pattern ( ($generated@@25 ($generated@@43 $generated@@66 $generated@@159)))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@50 $generated@@161 ($generated@@43 $generated@@161 $generated@@160)) ($generated@@43 $generated@@95 ($generated@@50 $generated@@161 $generated@@160)))
 :pattern ( ($generated@@50 $generated@@161 ($generated@@43 $generated@@161 $generated@@160)))
)))
(assert (forall (($generated@@162 T@U) ) (!  (=> (= ($generated@@26 $generated@@162) 0) (= $generated@@162 $generated@@32))
 :pattern ( ($generated@@26 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! ($generated@@57 $generated@@70 $generated@@164 $generated $generated@@163)
 :pattern ( ($generated@@57 $generated@@70 $generated@@164 $generated $generated@@163))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@35 $generated@@66 $generated@@165 ($generated@@67 $generated@@166)) (forall (($generated@@167 Int) ) (!  (=> (and (<= 0 $generated@@167) (< $generated@@167 ($generated@@26 $generated@@165))) ($generated@@62 ($generated@@24 $generated@@165 $generated@@167) $generated@@166))
 :pattern ( ($generated@@24 $generated@@165 $generated@@167))
)))
 :pattern ( ($generated@@35 $generated@@66 $generated@@165 ($generated@@67 $generated@@166)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 Int) ) (!  (=> (and (<= 0 $generated@@169) (< $generated@@169 ($generated@@26 $generated@@168))) (< ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@168 $generated@@169))) ($generated@@88 $generated@@168)))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@168 $generated@@169))))
)))
(assert (forall (($generated@@170 T@U) ) (! ($generated@@35 $generated@@70 $generated@@170 $generated)
 :pattern ( ($generated@@35 $generated@@70 $generated@@170 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@176  (=> (= (ControlFlow 0 3) (- 0 2)) ($generated@@46 $generated@@171))))
(let (($generated@@177 true))
(let (($generated@@178  (=> (and (and (= $generated@@172 ($generated@@93 $generated@@173 $generated@@174 $generated@@2 false)) ($generated@@56 ($generated@@50 $generated@@29 $generated@@171) $generated@@36 $generated@@174)) (and ($generated@@64 $generated@@171) (not ($generated@@40 $generated@@171)))) (and (=> (= (ControlFlow 0 4) 1) $generated@@177) (=> (= (ControlFlow 0 4) 3) $generated@@176)))))
(let (($generated@@179  (=> (and ($generated@@151 $generated@@174) ($generated@@175 $generated@@174)) (=> (and (and ($generated@@35 $generated@@29 $generated@@171 $generated@@36) ($generated@@57 $generated@@29 $generated@@171 $generated@@36 $generated@@174)) (and (= 1 $generated@@37) (= (ControlFlow 0 5) 4))) $generated@@178))))
$generated@@179)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid