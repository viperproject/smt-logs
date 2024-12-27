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
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@U Int) T@U)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@37 (Int) Int)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@U T@U) Bool)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@49 (T@U T@U) Bool)
(declare-fun $generated@@50 (T@U Int) T@U)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U T@U T@U) Bool)
(declare-fun $generated@@72 () Int)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U) Bool)
(declare-fun $generated@@75 () T@T)
(declare-fun $generated@@76 (Int) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@97 (T@U) Int)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@100 () T@T)
(declare-fun $generated@@101 () T@T)
(declare-fun $generated@@102 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@103 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@104 () T@T)
(declare-fun $generated@@105 (T@T T@T) T@T)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@T) T@T)
(declare-fun $generated@@109 (T@T) T@T)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
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
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (= ($generated@@5 $generated@@23) 3))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (! (= ($generated@@22 $generated@@23 $generated@@26 $generated@@24 $generated@@27) ($generated@@22 $generated@@23 $generated@@26 ($generated@@25 $generated) $generated@@27))
 :pattern ( ($generated@@22 $generated@@23 $generated@@26 $generated@@24 $generated@@27))
)))
(assert (= ($generated@@28 $generated@@29) 0))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 Int) ) (!  (=> (and (<= 0 $generated@@34) (<= $generated@@34 ($generated@@28 $generated@@32))) (= ($generated@@30 ($generated@@31 $generated@@32 $generated@@33) $generated@@34) ($generated@@31 ($generated@@30 $generated@@32 $generated@@34) $generated@@33)))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@32 $generated@@33) $generated@@34))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 Int) ) (!  (=> (= $generated@@36 0) (= ($generated@@30 $generated@@35 $generated@@36) $generated@@35))
 :pattern ( ($generated@@30 $generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 Int) ) (! (= ($generated@@37 $generated@@38) $generated@@38)
 :pattern ( ($generated@@37 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@39 $generated@@41 $generated@@40) $generated@@40)
 :pattern ( ($generated@@39 $generated@@41 $generated@@40))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (!  (=> (and ($generated@@42 $generated@@23 $generated@@44 ($generated@@25 $generated@@46)) ($generated@@43 $generated@@45 $generated@@46)) ($generated@@42 $generated@@23 ($generated@@31 $generated@@44 $generated@@45) ($generated@@25 $generated@@46)))
 :pattern ( ($generated@@42 $generated@@23 ($generated@@31 $generated@@44 $generated@@45) ($generated@@25 $generated@@46)))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 Int) ) (!  (=> (and (<= 0 $generated@@48) (<= $generated@@48 ($generated@@28 $generated@@47))) (= ($generated@@28 ($generated@@30 $generated@@47 $generated@@48)) (- ($generated@@28 $generated@@47) $generated@@48)))
 :pattern ( ($generated@@28 ($generated@@30 $generated@@47 $generated@@48)))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@49 $generated@@51 $generated@@52)  (and (= ($generated@@28 $generated@@51) ($generated@@28 $generated@@52)) (forall (($generated@@53 Int) ) (!  (=> (and (<= 0 $generated@@53) (< $generated@@53 ($generated@@28 $generated@@51))) (= ($generated@@50 $generated@@51 $generated@@53) ($generated@@50 $generated@@52 $generated@@53)))
 :pattern ( ($generated@@50 $generated@@51 $generated@@53))
 :pattern ( ($generated@@50 $generated@@52 $generated@@53))
))))
 :pattern ( ($generated@@49 $generated@@51 $generated@@52))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 ($generated@@54 $generated@@57 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@54 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@28 ($generated@@31 $generated@@58 $generated@@59)) (+ 1 ($generated@@28 $generated@@58)))
 :pattern ( ($generated@@31 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@60 ($generated@@55 $generated@@64 $generated@@61) $generated@@62 $generated@@63) ($generated@@22 $generated@@64 $generated@@61 $generated@@62 $generated@@63))
 :pattern ( ($generated@@60 ($generated@@55 $generated@@64 $generated@@61) $generated@@62 $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 Int) ($generated@@67 Int) ) (!  (=> (and (and (<= 0 $generated@@66) (<= 0 $generated@@67)) (< $generated@@67 (- ($generated@@28 $generated@@65) $generated@@66))) (= ($generated@@50 ($generated@@30 $generated@@65 $generated@@66) $generated@@67) ($generated@@50 $generated@@65 (+ $generated@@67 $generated@@66))))
 :weight 25
 :pattern ( ($generated@@50 ($generated@@30 $generated@@65 $generated@@66) $generated@@67))
)))
(assert (forall (($generated@@68 T@U) ) (!  (=> ($generated@@43 $generated@@68 $generated@@24) (and (= ($generated@@55 $generated@@23 ($generated@@54 $generated@@23 $generated@@68)) $generated@@68) ($generated@@42 $generated@@23 ($generated@@54 $generated@@23 $generated@@68) $generated@@24)))
 :pattern ( ($generated@@43 $generated@@68 $generated@@24))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 Int) ($generated@@71 T@U) ) (!  (and (=> (= $generated@@70 ($generated@@28 $generated@@69)) (= ($generated@@50 ($generated@@31 $generated@@69 $generated@@71) $generated@@70) $generated@@71)) (=> (or (not (= $generated@@70 ($generated@@28 $generated@@69))) (not true)) (= ($generated@@50 ($generated@@31 $generated@@69 $generated@@71) $generated@@70) ($generated@@50 $generated@@69 $generated@@70))))
 :pattern ( ($generated@@50 ($generated@@31 $generated@@69 $generated@@71) $generated@@70))
)))
(assert (= ($generated@@5 $generated@@75) 4))
(assert  (=> (<= 1 $generated@@72) (forall (($generated@@77 T@U) ) (!  (=> (or ($generated@@74 $generated@@77) (and (< 1 $generated@@72) ($generated@@42 $generated@@23 $generated@@77 $generated@@24))) (= ($generated@@73 $generated@@77) ($generated@@39 $generated@@23 ($generated@@31 $generated@@29 ($generated@@55 $generated@@75 ($generated@@76 48))))))
 :pattern ( ($generated@@73 $generated@@77))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> ($generated@@49 $generated@@78 $generated@@79) (= $generated@@78 $generated@@79))
 :pattern ( ($generated@@49 $generated@@78 $generated@@79))
)))
(assert  (=> (<= 1 $generated@@72) (forall (($generated@@80 T@U) ) (!  (=> (or ($generated@@74 $generated@@80) (and (< 1 $generated@@72) ($generated@@42 $generated@@23 $generated@@80 $generated@@24))) ($generated@@42 $generated@@23 ($generated@@73 $generated@@80) $generated@@24))
 :pattern ( ($generated@@73 $generated@@80))
))))
(assert (forall (($generated@@81 T@U) ) (!  (=> ($generated@@43 $generated@@81 $generated) (and (= ($generated@@55 $generated@@75 ($generated@@54 $generated@@75 $generated@@81)) $generated@@81) ($generated@@42 $generated@@75 ($generated@@54 $generated@@75 $generated@@81) $generated)))
 :pattern ( ($generated@@43 $generated@@81 $generated))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@43 ($generated@@55 $generated@@84 $generated@@82) $generated@@83) ($generated@@42 $generated@@84 $generated@@82 $generated@@83))
 :pattern ( ($generated@@43 ($generated@@55 $generated@@84 $generated@@82) $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@42 $generated@@23 $generated@@85 $generated@@24)  (and ($generated@@42 $generated@@23 $generated@@85 ($generated@@25 $generated)) (and (<= ($generated@@37 0) ($generated@@28 $generated@@85)) (< ($generated@@28 $generated@@85) 2147483648))))
 :pattern ( ($generated@@42 $generated@@23 $generated@@85 $generated@@24))
)))
(assert (forall (($generated@@86 T@U) ) (! (<= 0 ($generated@@28 $generated@@86))
 :pattern ( ($generated@@28 $generated@@86))
)))
(assert  (=> (<= 1 $generated@@72) (forall (($generated@@87 T@U) ) (!  (=> (or ($generated@@74 ($generated@@39 $generated@@23 $generated@@87)) (and (< 1 $generated@@72) ($generated@@42 $generated@@23 $generated@@87 $generated@@24))) (= ($generated@@73 ($generated@@39 $generated@@23 $generated@@87)) ($generated@@39 $generated@@23 ($generated@@31 $generated@@29 ($generated@@55 $generated@@75 ($generated@@76 48))))))
 :weight 3
 :pattern ( ($generated@@73 ($generated@@39 $generated@@23 $generated@@87)))
))))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@22 $generated@@23 $generated@@88 ($generated@@25 $generated@@89) $generated@@90) (forall (($generated@@91 Int) ) (!  (=> (and (<= 0 $generated@@91) (< $generated@@91 ($generated@@28 $generated@@88))) ($generated@@60 ($generated@@50 $generated@@88 $generated@@91) $generated@@89 $generated@@90))
 :pattern ( ($generated@@50 $generated@@88 $generated@@91))
)))
 :pattern ( ($generated@@22 $generated@@23 $generated@@88 ($generated@@25 $generated@@89) $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@92 ($generated@@25 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@25 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@21 ($generated@@25 $generated@@94)) $generated@@1)
 :pattern ( ($generated@@25 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@54 $generated@@96 ($generated@@55 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@55 $generated@@96 $generated@@95))
)))
(assert (forall (($generated@@98 Int) ) (!  (=> (or (and (<= 0 $generated@@98) (< $generated@@98 55296)) (and (<= 57344 $generated@@98) (< $generated@@98 1114112))) (= ($generated@@97 ($generated@@76 $generated@@98)) $generated@@98))
 :pattern ( ($generated@@76 $generated@@98))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@99 $generated@@110 $generated@@111 $generated@@112 ($generated@@106 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@99 $generated@@117 $generated@@118 $generated@@119 ($generated@@106 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@99 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@99 $generated@@126 $generated@@127 $generated@@128 ($generated@@106 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@99 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))) (= ($generated@@5 $generated@@100) 5)) (= ($generated@@5 $generated@@101) 6)) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@103 $generated@@135 $generated@@136 ($generated@@107 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@137) $generated@@139) $generated@@137)
 :weight 0
))) (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@144 $generated@@145) (= ($generated@@103 $generated@@140 $generated@@141 ($generated@@107 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@142) $generated@@145) ($generated@@103 $generated@@140 $generated@@141 $generated@@143 $generated@@145)))
 :weight 0
))) (= ($generated@@5 $generated@@104) 7)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ) (= ($generated@@5 ($generated@@105 $generated@@146 $generated@@147)) 8))) (forall (($generated@@148 T@T) ($generated@@149 T@T) ) (! (= ($generated@@108 ($generated@@105 $generated@@148 $generated@@149)) $generated@@148)
 :pattern ( ($generated@@105 $generated@@148 $generated@@149))
))) (forall (($generated@@150 T@T) ($generated@@151 T@T) ) (! (= ($generated@@109 ($generated@@105 $generated@@150 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@105 $generated@@150 $generated@@151))
))))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 Bool) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@10 ($generated@@99 $generated@@100 $generated@@101 $generated@@6 ($generated@@102 $generated@@152 $generated@@153 $generated@@154 $generated@@155) $generated@@156 $generated@@157))  (=> (and (or (not (= $generated@@156 $generated@@152)) (not true)) ($generated@@10 ($generated@@54 $generated@@6 ($generated@@103 $generated@@101 $generated@@104 ($generated@@103 $generated@@100 ($generated@@105 $generated@@101 $generated@@104) $generated@@153 $generated@@156) $generated@@154)))) $generated@@155))
 :pattern ( ($generated@@99 $generated@@100 $generated@@101 $generated@@6 ($generated@@102 $generated@@152 $generated@@153 $generated@@154 $generated@@155) $generated@@156 $generated@@157))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (!  (and (= ($generated@@158 ($generated@@31 $generated@@160 $generated@@161)) $generated@@160) (= ($generated@@159 ($generated@@31 $generated@@160 $generated@@161)) $generated@@161))
 :pattern ( ($generated@@31 $generated@@160 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> ($generated@@43 $generated@@162 ($generated@@25 $generated@@163)) (and (= ($generated@@55 $generated@@23 ($generated@@54 $generated@@23 $generated@@162)) $generated@@162) ($generated@@42 $generated@@23 ($generated@@54 $generated@@23 $generated@@162) ($generated@@25 $generated@@163))))
 :pattern ( ($generated@@43 $generated@@162 ($generated@@25 $generated@@163)))
)))
(assert (forall (($generated@@164 T@U) ) (!  (and (= ($generated@@76 ($generated@@97 $generated@@164)) $generated@@164) (or (and (<= 0 ($generated@@97 $generated@@164)) (< ($generated@@97 $generated@@164) 55296)) (and (<= 57344 ($generated@@97 $generated@@164)) (< ($generated@@97 $generated@@164) 1114112))))
 :pattern ( ($generated@@97 $generated@@164))
)))
(assert (= ($generated@@21 $generated@@24) $generated@@3))
(assert (= ($generated@@165 $generated@@24) $generated@@4))
(assert (forall (($generated@@166 T@U) ($generated@@167 Int) ($generated@@168 Int) ) (!  (=> (and (and (<= 0 $generated@@167) (<= $generated@@167 $generated@@168)) (< $generated@@168 ($generated@@28 $generated@@166))) (= ($generated@@50 ($generated@@30 $generated@@166 $generated@@167) (- $generated@@168 $generated@@167)) ($generated@@50 $generated@@166 $generated@@168)))
 :weight 25
 :pattern ( ($generated@@50 $generated@@166 $generated@@168) ($generated@@30 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 Int) ($generated@@171 Int) ) (!  (=> (and (and (<= 0 $generated@@170) (<= 0 $generated@@171)) (<= (+ $generated@@170 $generated@@171) ($generated@@28 $generated@@169))) (= ($generated@@30 ($generated@@30 $generated@@169 $generated@@170) $generated@@171) ($generated@@30 $generated@@169 (+ $generated@@170 $generated@@171))))
 :pattern ( ($generated@@30 ($generated@@30 $generated@@169 $generated@@170) $generated@@171))
)))
(assert (forall (($generated@@172 Int) ) (! (= ($generated@@55 $generated@@7 ($generated@@11 ($generated@@37 $generated@@172))) ($generated@@39 $generated@@104 ($generated@@55 $generated@@7 ($generated@@11 $generated@@172))))
 :pattern ( ($generated@@55 $generated@@7 ($generated@@11 ($generated@@37 $generated@@172))))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@T) ) (! (= ($generated@@55 $generated@@174 ($generated@@39 $generated@@174 $generated@@173)) ($generated@@39 $generated@@104 ($generated@@55 $generated@@174 $generated@@173)))
 :pattern ( ($generated@@55 $generated@@174 ($generated@@39 $generated@@174 $generated@@173)))
)))
(assert (forall (($generated@@175 T@U) ) (!  (=> (= ($generated@@28 $generated@@175) 0) (= $generated@@175 $generated@@29))
 :pattern ( ($generated@@28 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! ($generated@@22 $generated@@75 $generated@@177 $generated $generated@@176)
 :pattern ( ($generated@@22 $generated@@75 $generated@@177 $generated $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@42 $generated@@23 $generated@@178 ($generated@@25 $generated@@179)) (forall (($generated@@180 Int) ) (!  (=> (and (<= 0 $generated@@180) (< $generated@@180 ($generated@@28 $generated@@178))) ($generated@@43 ($generated@@50 $generated@@178 $generated@@180) $generated@@179))
 :pattern ( ($generated@@50 $generated@@178 $generated@@180))
)))
 :pattern ( ($generated@@42 $generated@@23 $generated@@178 ($generated@@25 $generated@@179)))
)))
(assert (forall (($generated@@181 T@U) ) (! ($generated@@42 $generated@@75 $generated@@181 $generated)
 :pattern ( ($generated@@42 $generated@@75 $generated@@181 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 (T@U) Bool)
(declare-fun $generated@@189 (T@U) Bool)
(declare-fun $generated@@190 () T@U)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@191 true))
(let (($generated@@192  (=> (and ($generated@@49 $generated@@182 $generated@@29) (= (ControlFlow 0 7) 1)) $generated@@191)))
(let (($generated@@193  (=> (not ($generated@@49 $generated@@182 $generated@@29)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 ($generated@@37 0)) (<= ($generated@@37 0) ($generated@@28 $generated@@182)))) (=> (and (<= 0 ($generated@@37 0)) (<= ($generated@@37 0) ($generated@@28 $generated@@182))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($generated@@42 $generated@@23 ($generated@@30 $generated@@182 ($generated@@37 0)) $generated@@24)) (=> ($generated@@42 $generated@@23 ($generated@@30 $generated@@182 ($generated@@37 0)) $generated@@24) (=> (= $generated@@183 ($generated@@30 $generated@@182 ($generated@@37 0))) (=> (and (and ($generated@@22 $generated@@23 $generated@@183 $generated@@24 $generated@@184) ($generated@@74 ($generated@@30 $generated@@182 ($generated@@37 0)))) (and ($generated@@74 ($generated@@30 $generated@@182 ($generated@@37 0))) (= $generated@@185 ($generated@@73 ($generated@@30 $generated@@182 ($generated@@37 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 ($generated@@37 1)) (<= ($generated@@37 1) ($generated@@28 $generated@@185)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@49 ($generated@@30 $generated@@185 ($generated@@37 1)) $generated@@29)) (=> ($generated@@49 ($generated@@30 $generated@@185 ($generated@@37 1)) $generated@@29) (=> (= (ControlFlow 0 2) 1) $generated@@191)))))))))))))
(let (($generated@@194  (=> (= $generated@@186 ($generated@@102 $generated@@187 $generated@@184 $generated@@2 false)) (and (=> (= (ControlFlow 0 8) 2) $generated@@193) (=> (= (ControlFlow 0 8) 7) $generated@@192)))))
(let (($generated@@195  (=> (and (and ($generated@@188 $generated@@184) ($generated@@189 $generated@@184)) (and ($generated@@42 $generated@@23 $generated@@182 $generated@@24) ($generated@@22 $generated@@23 $generated@@182 $generated@@24 $generated@@184))) (=> (and (and (and ($generated@@42 $generated@@23 $generated@@190 $generated@@24) ($generated@@22 $generated@@23 $generated@@190 $generated@@24 $generated@@184)) true) (and (= 2 $generated@@72) (= (ControlFlow 0 9) 8))) $generated@@194))))
$generated@@195))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)