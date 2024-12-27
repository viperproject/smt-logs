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
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@69 (Int) Int)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@74 (Int) T@U)
(declare-fun $generated@@75 (T@U) Bool)
(declare-fun $generated@@76 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@T T@U) T@U)
(declare-fun $generated@@84 () Int)
(declare-fun $generated@@85 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@86 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@U T@U) Bool)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@112 (T@U) Int)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@127 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@128 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@129 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@23 $generated@@1) 0))
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> (and (or (not (= $generated@@31 $generated@@27)) (not true)) (= ($generated@@28 $generated@@31) ($generated@@26 $generated@@30))) ($generated@@29 $generated@@9 ($generated@@13 ($generated@@25 $generated@@31)) $generated))
 :pattern ( ($generated@@25 $generated@@31) ($generated@@26 $generated@@30))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (! ($generated@@32 $generated@@9 $generated@@34 $generated@@33 $generated@@35)
 :pattern ( ($generated@@32 $generated@@9 $generated@@34 $generated@@33 $generated@@35))
)))
(assert (= ($generated@@7 $generated@@36) 3))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@32 $generated@@36 $generated@@39 ($generated@@37 $generated@@38) $generated@@40) ($generated@@32 $generated@@36 $generated@@39 ($generated@@26 $generated@@38) $generated@@40))
 :pattern ( ($generated@@32 $generated@@36 $generated@@39 ($generated@@37 $generated@@38) $generated@@40))
 :pattern ( ($generated@@32 $generated@@36 $generated@@39 ($generated@@26 $generated@@38) $generated@@40))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@42 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@42 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@42 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@7 $generated@@43) 4)) (= ($generated@@7 $generated@@44) 5)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@7 ($generated@@45 $generated@@60 $generated@@61)) 6))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@45 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@45 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@32 $generated@@36 $generated@@67 ($generated@@26 $generated@@66) $generated@@68)  (or (= $generated@@67 $generated@@27) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@68 $generated@@67) $generated@@1)))))
 :pattern ( ($generated@@32 $generated@@36 $generated@@67 ($generated@@26 $generated@@66) $generated@@68))
)))
(assert (forall (($generated@@70 Int) ) (! (= ($generated@@69 $generated@@70) $generated@@70)
 :pattern ( ($generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@71 $generated@@73 $generated@@72) $generated@@72)
 :pattern ( ($generated@@71 $generated@@73 $generated@@72))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 Int) ) (!  (=> (and (and (and ($generated@@75 $generated@@78) (and (or (not (= $generated@@79 $generated@@27)) (not true)) (= ($generated@@28 $generated@@79) ($generated@@26 $generated@@77)))) (and (<= 0 $generated@@80) (< $generated@@80 ($generated@@25 $generated@@79)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@78 $generated@@79) $generated@@1)))) ($generated@@76 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@78 $generated@@79) ($generated@@74 $generated@@80)) $generated@@77 $generated@@78))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@78 $generated@@79) ($generated@@74 $generated@@80)) ($generated@@26 $generated@@77))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@81 $generated@@83 ($generated@@41 $generated@@83 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@41 $generated@@83 $generated@@82))
)))
(assert  (=> (<= 0 $generated@@84) (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (or ($generated@@86 $generated@@88 $generated@@89 $generated@@90 $generated@@91) (and (< 0 $generated@@84) (and (and ($generated@@75 $generated@@89) ($generated@@29 $generated@@36 $generated@@90 ($generated@@37 $generated@@88))) ($generated@@87 $generated@@91 $generated@@88)))) (= ($generated@@85 $generated@@88 $generated@@89 $generated@@90 $generated@@91) (exists (($generated@@92 Int) ) (!  (and (and (<= ($generated@@69 0) $generated@@92) (< $generated@@92 ($generated@@25 $generated@@90))) (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@89 $generated@@90) ($generated@@74 $generated@@92)) $generated@@91))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@89 $generated@@90) ($generated@@74 $generated@@92)))
))))
 :pattern ( ($generated@@85 $generated@@88 $generated@@89 $generated@@90 $generated@@91) ($generated@@75 $generated@@89))
))))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@29 $generated@@9 $generated@@93 $generated@@33) (<= ($generated@@69 0) ($generated@@14 $generated@@93)))
 :pattern ( ($generated@@29 $generated@@9 $generated@@93 $generated@@33))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@29 $generated@@36 $generated@@95 ($generated@@37 $generated@@94))  (and ($generated@@29 $generated@@36 $generated@@95 ($generated@@26 $generated@@94)) (or (not (= $generated@@95 $generated@@27)) (not true))))
 :pattern ( ($generated@@29 $generated@@36 $generated@@95 ($generated@@37 $generated@@94)))
 :pattern ( ($generated@@29 $generated@@36 $generated@@95 ($generated@@26 $generated@@94)))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@76 ($generated@@81 $generated@@99 $generated@@96) $generated@@97 $generated@@98) ($generated@@32 $generated@@99 $generated@@96 $generated@@97 $generated@@98))
 :pattern ( ($generated@@76 ($generated@@81 $generated@@99 $generated@@96) $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@101 T@U) ) (!  (and (= ($generated@@24 ($generated@@26 $generated@@101)) $generated@@3) (= ($generated@@100 ($generated@@26 $generated@@101)) $generated@@6))
 :pattern ( ($generated@@26 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@24 ($generated@@37 $generated@@102)) $generated@@4) (= ($generated@@100 ($generated@@37 $generated@@102)) $generated@@6))
 :pattern ( ($generated@@37 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@87 $generated@@103 $generated@@33) (and (= ($generated@@81 $generated@@9 ($generated@@41 $generated@@9 $generated@@103)) $generated@@103) ($generated@@29 $generated@@9 ($generated@@41 $generated@@9 $generated@@103) $generated@@33)))
 :pattern ( ($generated@@87 $generated@@103 $generated@@33))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@29 $generated@@36 $generated@@105 ($generated@@26 $generated@@104))  (or (= $generated@@105 $generated@@27) (= ($generated@@28 $generated@@105) ($generated@@26 $generated@@104))))
 :pattern ( ($generated@@29 $generated@@36 $generated@@105 ($generated@@26 $generated@@104)))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@87 $generated@@106 $generated) (and (= ($generated@@81 $generated@@9 ($generated@@41 $generated@@9 $generated@@106)) $generated@@106) ($generated@@29 $generated@@9 ($generated@@41 $generated@@9 $generated@@106) $generated)))
 :pattern ( ($generated@@87 $generated@@106 $generated))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@87 ($generated@@81 $generated@@109 $generated@@107) $generated@@108) ($generated@@29 $generated@@109 $generated@@107 $generated@@108))
 :pattern ( ($generated@@87 ($generated@@81 $generated@@109 $generated@@107) $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (! (<= 0 ($generated@@25 $generated@@110))
 :pattern ( ($generated@@25 $generated@@110))
)))
(assert (forall (($generated@@111 Int) ) (! (= ($generated@@23 ($generated@@74 $generated@@111)) 1)
 :pattern ( ($generated@@74 $generated@@111))
)))
(assert (forall (($generated@@113 Int) ) (! (= ($generated@@112 ($generated@@74 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@74 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@114 ($generated@@26 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@26 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@116 ($generated@@37 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@37 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@41 $generated@@119 ($generated@@81 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@81 $generated@@119 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> (and (and ($generated@@75 $generated@@121) (and (or (not (= $generated@@122 $generated@@27)) (not true)) (= ($generated@@28 $generated@@122) ($generated@@26 $generated@@120)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@121 $generated@@122) $generated@@1)))) ($generated@@32 $generated@@9 ($generated@@13 ($generated@@25 $generated@@122)) $generated $generated@@121))
 :pattern ( ($generated@@25 $generated@@122) ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@121 $generated@@122) $generated@@1)) ($generated@@26 $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 Int) ) (!  (=> (and (and ($generated@@75 $generated@@124) (and (or (not (= $generated@@125 $generated@@27)) (not true)) (= ($generated@@28 $generated@@125) ($generated@@26 $generated@@123)))) (and (<= 0 $generated@@126) (< $generated@@126 ($generated@@25 $generated@@125)))) ($generated@@87 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@124 $generated@@125) ($generated@@74 $generated@@126)) $generated@@123))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@124 $generated@@125) ($generated@@74 $generated@@126)) ($generated@@26 $generated@@123))
)))
(assert  (and (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@127 $generated@@130 $generated@@131 $generated@@132 ($generated@@129 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@135 $generated@@136) $generated@@133)
 :weight 0
)) (and (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@142 $generated@@144) (= ($generated@@127 $generated@@137 $generated@@138 $generated@@139 ($generated@@129 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@142 $generated@@143 $generated@@140) $generated@@144 $generated@@145) ($generated@@127 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@144 $generated@@145)))
 :weight 0
)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (!  (or (= $generated@@152 $generated@@154) (= ($generated@@127 $generated@@146 $generated@@147 $generated@@148 ($generated@@129 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@152 $generated@@149) $generated@@153 $generated@@154) ($generated@@127 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@153 $generated@@154)))
 :weight 0
)))))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 Bool) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@12 ($generated@@127 $generated@@36 $generated@@43 $generated@@8 ($generated@@128 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))  (=> (and (or (not (= $generated@@159 $generated@@155)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@156 $generated@@159) $generated@@157)))) $generated@@158))
 :pattern ( ($generated@@127 $generated@@36 $generated@@43 $generated@@8 ($generated@@128 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> ($generated@@87 $generated@@162 ($generated@@26 $generated@@161)) (and (= ($generated@@81 $generated@@36 ($generated@@41 $generated@@36 $generated@@162)) $generated@@162) ($generated@@29 $generated@@36 ($generated@@41 $generated@@36 $generated@@162) ($generated@@26 $generated@@161))))
 :pattern ( ($generated@@87 $generated@@162 ($generated@@26 $generated@@161)))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@87 $generated@@164 ($generated@@37 $generated@@163)) (and (= ($generated@@81 $generated@@36 ($generated@@41 $generated@@36 $generated@@164)) $generated@@164) ($generated@@29 $generated@@36 ($generated@@41 $generated@@36 $generated@@164) ($generated@@37 $generated@@163))))
 :pattern ( ($generated@@87 $generated@@164 ($generated@@37 $generated@@163)))
)))
(assert (= ($generated@@24 $generated@@33) $generated@@2))
(assert (= ($generated@@100 $generated@@33) $generated@@5))
(assert (forall (($generated@@165 Int) ) (! (= ($generated@@81 $generated@@9 ($generated@@13 ($generated@@69 $generated@@165))) ($generated@@71 $generated@@44 ($generated@@81 $generated@@9 ($generated@@13 $generated@@165))))
 :pattern ( ($generated@@81 $generated@@9 ($generated@@13 ($generated@@69 $generated@@165))))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@T) ) (! (= ($generated@@81 $generated@@167 ($generated@@71 $generated@@167 $generated@@166)) ($generated@@71 $generated@@44 ($generated@@81 $generated@@167 $generated@@166)))
 :pattern ( ($generated@@81 $generated@@167 ($generated@@71 $generated@@167 $generated@@166)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! ($generated@@32 $generated@@9 $generated@@169 $generated $generated@@168)
 :pattern ( ($generated@@32 $generated@@9 $generated@@169 $generated $generated@@168))
)))
(assert (forall (($generated@@170 T@U) ) (! ($generated@@29 $generated@@9 $generated@@170 $generated)
 :pattern ( ($generated@@29 $generated@@9 $generated@@170 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@171 () Int)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 (T@U) Bool)
(declare-fun $generated@@176 () Int)
(declare-fun $generated@@177 () T@U)
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
 (=> (= (ControlFlow 0 0) 18) (let (($generated@@178 true))
(let (($generated@@179  (=> (and (<= ($generated@@69 0) $generated@@171) (< $generated@@171 ($generated@@25 $generated@@172))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (not (= $generated@@172 $generated@@27)) (not true))) (=> (or (not (= $generated@@172 $generated@@27)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 $generated@@171) (< $generated@@171 ($generated@@25 $generated@@172)))) (=> (and (<= 0 $generated@@171) (< $generated@@171 ($generated@@25 $generated@@172))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= $generated@@172 $generated@@27)) (not true))) (=> (or (not (= $generated@@172 $generated@@27)) (not true)) (=> (and (< ($generated@@14 ($generated@@41 $generated@@9 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@173 $generated@@172) ($generated@@74 $generated@@171)))) ($generated@@25 $generated@@172)) (= (ControlFlow 0 3) 1)) $generated@@178))))))))))
(let (($generated@@180  (=> (and (< $generated@@171 ($generated@@69 0)) (= (ControlFlow 0 9) 3)) $generated@@179)))
(let (($generated@@181  (=> (<= ($generated@@69 0) $generated@@171) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= $generated@@172 $generated@@27)) (not true))) (=> (or (not (= $generated@@172 $generated@@27)) (not true)) (=> (= (ControlFlow 0 7) 3) $generated@@179))))))
(let (($generated@@182  (=> (and (=> (and (<= ($generated@@69 0) $generated@@171) (< $generated@@171 ($generated@@25 $generated@@172))) (< ($generated@@14 ($generated@@41 $generated@@9 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@173 $generated@@172) ($generated@@74 $generated@@171)))) ($generated@@25 $generated@@172))) (= (ControlFlow 0 2) 1)) $generated@@178)))
(let (($generated@@183  (=> (forall (($generated@@184 T@U) ) (!  (=> (and (<= ($generated@@69 0) ($generated@@14 $generated@@184)) (< ($generated@@14 $generated@@184) ($generated@@25 $generated@@172))) ($generated@@85 $generated@@33 $generated@@174 $generated@@172 ($generated@@81 $generated@@9 $generated@@184)))
 :pattern ( ($generated@@85 $generated@@33 $generated@@174 $generated@@172 ($generated@@81 $generated@@9 $generated@@184)))
)) (=> (and (and ($generated@@75 $generated@@173) ($generated@@175 $generated@@173)) (= $generated@@174 $generated@@173)) (and (and (=> (= (ControlFlow 0 10) 2) $generated@@182) (=> (= (ControlFlow 0 10) 7) $generated@@181)) (=> (= (ControlFlow 0 10) 9) $generated@@180))))))
(let (($generated@@185  (=> (and (and (<= ($generated@@69 0) $generated@@176) (< $generated@@176 ($generated@@25 $generated@@172))) ($generated@@32 $generated@@36 $generated@@172 ($generated@@37 $generated@@33) $generated@@174)) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($generated@@29 $generated@@9 ($generated@@13 $generated@@176) $generated@@33)) (=> ($generated@@29 $generated@@9 ($generated@@13 $generated@@176) $generated@@33) (=> (and (and ($generated@@32 $generated@@9 ($generated@@13 $generated@@176) $generated@@33 $generated@@174) ($generated@@86 $generated@@33 $generated@@174 $generated@@172 ($generated@@81 $generated@@9 ($generated@@13 $generated@@176)))) (and ($generated@@85 $generated@@33 $generated@@174 $generated@@172 ($generated@@81 $generated@@9 ($generated@@13 $generated@@176))) (= (ControlFlow 0 12) 10))) $generated@@183))))))
(let (($generated@@186  (=> (and (< $generated@@176 ($generated@@69 0)) (= (ControlFlow 0 16) 12)) $generated@@185)))
(let (($generated@@187  (=> (<= ($generated@@69 0) $generated@@176) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= $generated@@172 $generated@@27)) (not true))) (=> (or (not (= $generated@@172 $generated@@27)) (not true)) (=> (= (ControlFlow 0 14) 12) $generated@@185))))))
(let (($generated@@188  (=> (and (=> (and (<= ($generated@@69 0) $generated@@176) (< $generated@@176 ($generated@@25 $generated@@172))) ($generated@@85 $generated@@33 $generated@@174 $generated@@172 ($generated@@81 $generated@@9 ($generated@@13 $generated@@176)))) (= (ControlFlow 0 11) 10)) $generated@@183)))
(let (($generated@@189  (=> (= $generated@@177 ($generated@@128 $generated@@27 $generated@@174 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 17) 11) $generated@@188) (=> (= (ControlFlow 0 17) 14) $generated@@187)) (=> (= (ControlFlow 0 17) 16) $generated@@186)))))
(let (($generated@@190  (=> (and ($generated@@75 $generated@@174) ($generated@@175 $generated@@174)) (=> (and (and ($generated@@29 $generated@@36 $generated@@172 ($generated@@37 $generated@@33)) ($generated@@32 $generated@@36 $generated@@172 ($generated@@37 $generated@@33) $generated@@174)) (and (= 1 $generated@@84) (= (ControlFlow 0 18) 17))) $generated@@189))))
$generated@@190)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)