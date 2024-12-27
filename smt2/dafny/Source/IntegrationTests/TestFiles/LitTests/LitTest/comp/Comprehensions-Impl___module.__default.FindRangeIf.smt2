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
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@T T@T) T@T)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@30 (T@T) T@T)
(declare-fun $generated@@31 (T@T) T@T)
(declare-fun $generated@@52 (Int) Int)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U T@U T@U) Bool)
(declare-fun $generated@@61 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@78 (T@U T@U) Bool)
(declare-fun $generated@@79 (T@T T@U T@U) Bool)
(declare-fun $generated@@85 () T@T)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@87 (T@U Int) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@98 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@99 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@20 $generated@@21) 0))
(assert  (and (and (and (and (and (and (and (forall (($generated@@32 T@T) ($generated@@33 T@T) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@23 $generated@@32 $generated@@33 ($generated@@29 $generated@@32 $generated@@33 $generated@@35 $generated@@36 $generated@@34) $generated@@36) $generated@@34)
 :weight 0
)) (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (!  (or (= $generated@@41 $generated@@42) (= ($generated@@23 $generated@@37 $generated@@38 ($generated@@29 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@42) ($generated@@23 $generated@@37 $generated@@38 $generated@@40 $generated@@42)))
 :weight 0
))) (= ($generated@@3 $generated@@24) 3)) (= ($generated@@3 $generated@@25) 4)) (= ($generated@@3 $generated@@26) 5)) (forall (($generated@@43 T@T) ($generated@@44 T@T) ) (= ($generated@@3 ($generated@@27 $generated@@43 $generated@@44)) 6))) (forall (($generated@@45 T@T) ($generated@@46 T@T) ) (! (= ($generated@@30 ($generated@@27 $generated@@45 $generated@@46)) $generated@@45)
 :pattern ( ($generated@@27 $generated@@45 $generated@@46))
))) (forall (($generated@@47 T@T) ($generated@@48 T@T) ) (! (= ($generated@@31 ($generated@@27 $generated@@47 $generated@@48)) $generated@@48)
 :pattern ( ($generated@@27 $generated@@47 $generated@@48))
))))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> ($generated@@22 $generated@@49 $generated@@50) (forall (($generated@@51 T@U) ) (!  (=> ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@49 $generated@@51) $generated@@2))) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@50 $generated@@51) $generated@@2))))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@50 $generated@@51) $generated@@2))
)))
 :pattern ( ($generated@@22 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@52 $generated@@53) $generated@@53)
 :pattern ( ($generated@@52 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@T) ) (! (= ($generated@@54 $generated@@56 $generated@@55) $generated@@55)
 :pattern ( ($generated@@54 $generated@@56 $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 ($generated@@28 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@28 $generated@@59 $generated@@58))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@60 ($generated@@57 $generated@@65 $generated@@62) $generated@@63 $generated@@64) ($generated@@61 $generated@@65 $generated@@62 $generated@@63 $generated@@64))
 :pattern ( ($generated@@60 ($generated@@57 $generated@@65 $generated@@62) $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> ($generated@@22 $generated@@66 $generated@@67) (=> ($generated@@60 $generated@@68 $generated@@69 $generated@@66) ($generated@@60 $generated@@68 $generated@@69 $generated@@67)))
 :pattern ( ($generated@@22 $generated@@66 $generated@@67) ($generated@@60 $generated@@68 $generated@@69 $generated@@66))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@T) ) (!  (=> ($generated@@22 $generated@@70 $generated@@71) (=> ($generated@@61 $generated@@74 $generated@@72 $generated@@73 $generated@@70) ($generated@@61 $generated@@74 $generated@@72 $generated@@73 $generated@@71)))
 :pattern ( ($generated@@22 $generated@@70 $generated@@71) ($generated@@61 $generated@@74 $generated@@72 $generated@@73 $generated@@70))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (or (not (= $generated@@75 $generated@@77)) (not true)) (=> (and ($generated@@22 $generated@@75 $generated@@76) ($generated@@22 $generated@@76 $generated@@77)) ($generated@@22 $generated@@75 $generated@@77)))
 :pattern ( ($generated@@22 $generated@@75 $generated@@76) ($generated@@22 $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@78 $generated@@80 $generated) (and (= ($generated@@57 $generated@@5 ($generated@@28 $generated@@5 $generated@@80)) $generated@@80) ($generated@@79 $generated@@5 ($generated@@28 $generated@@5 $generated@@80) $generated)))
 :pattern ( ($generated@@78 $generated@@80 $generated))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@78 ($generated@@57 $generated@@83 $generated@@81) $generated@@82) ($generated@@79 $generated@@83 $generated@@81 $generated@@82))
 :pattern ( ($generated@@78 ($generated@@57 $generated@@83 $generated@@81) $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ) (! (<= 0 ($generated@@20 $generated@@84))
 :pattern ( ($generated@@20 $generated@@84))
)))
(assert (= ($generated@@3 $generated@@85) 7))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@61 $generated@@85 $generated@@88 ($generated@@86 $generated@@89) $generated@@90) (forall (($generated@@91 Int) ) (!  (=> (and (<= 0 $generated@@91) (< $generated@@91 ($generated@@20 $generated@@88))) ($generated@@60 ($generated@@87 $generated@@88 $generated@@91) $generated@@89 $generated@@90))
 :pattern ( ($generated@@87 $generated@@88 $generated@@91))
)))
 :pattern ( ($generated@@61 $generated@@85 $generated@@88 ($generated@@86 $generated@@89) $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@92 ($generated@@86 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@86 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@19 ($generated@@86 $generated@@94)) $generated@@1)
 :pattern ( ($generated@@86 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@28 $generated@@96 ($generated@@57 $generated@@96 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@57 $generated@@96 $generated@@95))
)))
(assert  (and (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@97 $generated@@100 $generated@@101 $generated@@102 ($generated@@99 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@105 $generated@@106) $generated@@103)
 :weight 0
)) (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@112 $generated@@114) (= ($generated@@97 $generated@@107 $generated@@108 $generated@@109 ($generated@@99 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@97 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@97 $generated@@116 $generated@@117 $generated@@118 ($generated@@99 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@123 $generated@@124) ($generated@@97 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@123 $generated@@124)))
 :weight 0
)))))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 Bool) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@8 ($generated@@97 $generated@@26 $generated@@24 $generated@@4 ($generated@@98 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@129 $generated@@130))  (=> (and (or (not (= $generated@@129 $generated@@125)) (not true)) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@126 $generated@@129) $generated@@127)))) $generated@@128))
 :pattern ( ($generated@@97 $generated@@26 $generated@@24 $generated@@4 ($generated@@98 $generated@@125 $generated@@126 $generated@@127 $generated@@128) $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (!  (=> ($generated@@78 $generated@@131 ($generated@@86 $generated@@132)) (and (= ($generated@@57 $generated@@85 ($generated@@28 $generated@@85 $generated@@131)) $generated@@131) ($generated@@79 $generated@@85 ($generated@@28 $generated@@85 $generated@@131) ($generated@@86 $generated@@132))))
 :pattern ( ($generated@@78 $generated@@131 ($generated@@86 $generated@@132)))
)))
(assert (forall (($generated@@133 Int) ) (! (= ($generated@@57 $generated@@5 ($generated@@9 ($generated@@52 $generated@@133))) ($generated@@54 $generated@@25 ($generated@@57 $generated@@5 ($generated@@9 $generated@@133))))
 :pattern ( ($generated@@57 $generated@@5 ($generated@@9 ($generated@@52 $generated@@133))))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@T) ) (! (= ($generated@@57 $generated@@135 ($generated@@54 $generated@@135 $generated@@134)) ($generated@@54 $generated@@25 ($generated@@57 $generated@@135 $generated@@134)))
 :pattern ( ($generated@@57 $generated@@135 ($generated@@54 $generated@@135 $generated@@134)))
)))
(assert (forall (($generated@@136 T@U) ) (!  (=> (= ($generated@@20 $generated@@136) 0) (= $generated@@136 $generated@@21))
 :pattern ( ($generated@@20 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! ($generated@@61 $generated@@5 $generated@@138 $generated $generated@@137)
 :pattern ( ($generated@@61 $generated@@5 $generated@@138 $generated $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@79 $generated@@85 $generated@@139 ($generated@@86 $generated@@140)) (forall (($generated@@141 Int) ) (!  (=> (and (<= 0 $generated@@141) (< $generated@@141 ($generated@@20 $generated@@139))) ($generated@@78 ($generated@@87 $generated@@139 $generated@@141) $generated@@140))
 :pattern ( ($generated@@87 $generated@@139 $generated@@141))
)))
 :pattern ( ($generated@@79 $generated@@85 $generated@@139 ($generated@@86 $generated@@140)))
)))
(assert (forall (($generated@@142 T@U) ) (! ($generated@@79 $generated@@5 $generated@@142 $generated)
 :pattern ( ($generated@@79 $generated@@5 $generated@@142 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@143 () Int)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () T@U)
(declare-fun $generated@@146 () Int)
(declare-fun $generated@@147 () Int)
(declare-fun $generated@@148 () Int)
(declare-fun $generated@@149 () Bool)
(declare-fun $generated@@150 () Int)
(declare-fun $generated@@151 () Int)
(declare-fun $generated@@152 () Int)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 () Int)
(declare-fun $generated@@155 () Int)
(declare-fun $generated@@156 () Int)
(declare-fun $generated@@157 () Int)
(declare-fun $generated@@158 () Int)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () Int)
(declare-fun $generated@@163 () Int)
(declare-fun $generated@@164 (T@U) Bool)
(declare-fun $generated@@165 (T@U) Bool)
(declare-fun $generated@@166 () Int)
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
 (=> (= (ControlFlow 0 0) 57) (let (($generated@@167 true))
(let (($generated@@168  (=> (and (not (and (<= $generated@@143 $generated@@144) (< $generated@@144 ($generated@@20 $generated@@145)))) (= (ControlFlow 0 35) 32)) $generated@@167)))
(let (($generated@@169  (=> (and (<= $generated@@143 $generated@@144) (< $generated@@144 ($generated@@20 $generated@@145))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (and (<= 0 $generated@@144) (< $generated@@144 ($generated@@20 $generated@@145)))) (=> (= (ControlFlow 0 33) 32) $generated@@167)))))
(let (($generated@@170  (=> (< $generated@@144 $generated@@143) (and (=> (= (ControlFlow 0 37) 33) $generated@@169) (=> (= (ControlFlow 0 37) 35) $generated@@168)))))
(let (($generated@@171  (=> (<= $generated@@143 $generated@@144) (and (=> (= (ControlFlow 0 36) 33) $generated@@169) (=> (= (ControlFlow 0 36) 35) $generated@@168)))))
(let (($generated@@172  (and (=> (= (ControlFlow 0 38) 36) $generated@@171) (=> (= (ControlFlow 0 38) 37) $generated@@170))))
(let (($generated@@173 true))
(let (($generated@@174  (=> (forall (($generated@@175 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@175) (< $generated@@175 $generated@@146)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@175))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@175)))
)) (and (=> (= (ControlFlow 0 39) 38) $generated@@172) (=> (= (ControlFlow 0 39) 31) $generated@@173)))))
(let (($generated@@176  (=> (and (not (and (<= ($generated@@52 0) $generated@@148) (< $generated@@148 $generated@@146))) (= (ControlFlow 0 42) 39)) $generated@@174)))
(let (($generated@@177  (=> (and (<= ($generated@@52 0) $generated@@148) (< $generated@@148 $generated@@146)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= 0 $generated@@148) (< $generated@@148 ($generated@@20 $generated@@145)))) (=> (= (ControlFlow 0 40) 39) $generated@@174)))))
(let (($generated@@178  (=> (< $generated@@148 ($generated@@52 0)) (and (=> (= (ControlFlow 0 44) 40) $generated@@177) (=> (= (ControlFlow 0 44) 42) $generated@@176)))))
(let (($generated@@179  (=> (<= ($generated@@52 0) $generated@@148) (and (=> (= (ControlFlow 0 43) 40) $generated@@177) (=> (= (ControlFlow 0 43) 42) $generated@@176)))))
(let (($generated@@180  (and (=> (= (ControlFlow 0 45) 43) $generated@@179) (=> (= (ControlFlow 0 45) 44) $generated@@178))))
(let (($generated@@181 true))
(let (($generated@@182  (=> (and (<= $generated@@146 $generated@@143) (<= $generated@@143 ($generated@@20 $generated@@145))) (and (=> (= (ControlFlow 0 46) 45) $generated@@180) (=> (= (ControlFlow 0 46) 30) $generated@@181)))))
(let (($generated@@183  (=> (and (< $generated@@143 $generated@@146) (= (ControlFlow 0 48) 46)) $generated@@182)))
(let (($generated@@184  (=> (and (<= $generated@@146 $generated@@143) (= (ControlFlow 0 47) 46)) $generated@@182)))
(let (($generated@@185  (=> (not $generated@@149) (and (=> (= (ControlFlow 0 49) 47) $generated@@184) (=> (= (ControlFlow 0 49) 48) $generated@@183)))))
(let (($generated@@186  (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (<= 0 $generated@@150) (= (- $generated@@151 $generated@@152) $generated@@150))) (=> (or (<= 0 $generated@@150) (= (- $generated@@151 $generated@@152) $generated@@150)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (< (- $generated@@151 $generated@@152) $generated@@150)) (=> (< (- $generated@@151 $generated@@152) $generated@@150) (and (=> (= (ControlFlow 0 18) (- 0 21)) (=> $generated@@149 (<= $generated@@152 $generated@@151))) (=> (=> $generated@@149 (<= $generated@@152 $generated@@151)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (=> $generated@@149 (<= $generated@@151 ($generated@@20 $generated@@145)))) (=> (=> $generated@@149 (<= $generated@@151 ($generated@@20 $generated@@145))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> $generated@@149 (forall (($generated@@187 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@187) (< $generated@@187 $generated@@152)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@187))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@187)))
)))) (=> (=> $generated@@149 (forall (($generated@@188 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@188) (< $generated@@188 $generated@@152)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@188))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@188)))
))) (=> (= (ControlFlow 0 18) (- 0 17)) (=> $generated@@149 (forall (($generated@@189 Int) ) (!  (=> (and (<= $generated@@151 $generated@@189) (< $generated@@189 ($generated@@20 $generated@@145))) (<= $generated@@153 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@189)))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@189)))
))))))))))))))))
(let (($generated@@190  (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (<= 0 (- $generated@@143 1)) (< (- $generated@@143 1) ($generated@@20 $generated@@145)))) (=> (and (<= 0 (- $generated@@143 1)) (< (- $generated@@143 1) ($generated@@20 $generated@@145))) (=> (<= $generated@@153 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 (- $generated@@143 1))))) (=> (and (and (= $generated@@154 (- $generated@@143 1)) (= $generated@@152 $generated@@146)) (and (= $generated@@151 $generated@@154) (= (ControlFlow 0 26) 18))) $generated@@186))))))
(let (($generated@@191  (and (=> (= (ControlFlow 0 24) (- 0 25)) (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@20 $generated@@145)))) (=> (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@20 $generated@@145))) (=> (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146))) $generated@@147) (=> (and (and (= $generated@@155 (+ $generated@@146 1)) (= $generated@@152 $generated@@155)) (and (= $generated@@151 $generated@@143) (= (ControlFlow 0 24) 18))) $generated@@186))))))
(let (($generated@@192  (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= ($generated@@52 0) $generated@@156)) (=> (<= ($generated@@52 0) $generated@@156) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= $generated@@156 $generated@@157)) (=> (<= $generated@@156 $generated@@157) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= $generated@@157 ($generated@@20 $generated@@145))) (=> (<= $generated@@157 ($generated@@20 $generated@@145)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall (($generated@@193 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@193) (< $generated@@193 ($generated@@20 $generated@@145))) (=  (and (<= $generated@@147 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@193)))) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@193))) $generated@@153))  (and (<= $generated@@156 $generated@@193) (< $generated@@193 $generated@@157))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@193)))
)))))))))))
(let (($generated@@194  (=> (= $generated@@157 $generated@@143) (=> (and (= $generated@@156 $generated@@146) (= (ControlFlow 0 9) 5)) $generated@@192))))
(let (($generated@@195  (=> (and (and (<= $generated@@147 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146)))) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 (- $generated@@143 1)))) $generated@@153)) (= (ControlFlow 0 11) 9)) $generated@@194)))
(let (($generated@@196  (=> (and (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146))) $generated@@147) (= (ControlFlow 0 14) 11)) $generated@@195)))
(let (($generated@@197  (=> (<= $generated@@147 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146)))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= 0 (- $generated@@143 1)) (< (- $generated@@143 1) ($generated@@20 $generated@@145)))) (=> (and (<= 0 (- $generated@@143 1)) (< (- $generated@@143 1) ($generated@@20 $generated@@145))) (=> (= (ControlFlow 0 12) 11) $generated@@195))))))
(let (($generated@@198  (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@20 $generated@@145)))) (=> (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@20 $generated@@145))) (and (=> (= (ControlFlow 0 15) 12) $generated@@197) (=> (= (ControlFlow 0 15) 14) $generated@@196))))))
(let (($generated@@199  (=> (and (<= $generated@@143 $generated@@146) (= (ControlFlow 0 10) 9)) $generated@@194)))
(let (($generated@@200  (=> (and (and (and (<= $generated@@147 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146)))) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 (- $generated@@143 1)))) $generated@@153)) (not (and (<= $generated@@147 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@146)))) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 (- $generated@@143 1)))) $generated@@153)))) (= (ControlFlow 0 3) (- 0 2))) false)))
(let (($generated@@201  (=> (and (< $generated@@146 $generated@@143) (= $generated@@150 (- $generated@@143 $generated@@146))) (and (and (and (=> (= (ControlFlow 0 28) 24) $generated@@191) (=> (= (ControlFlow 0 28) 26) $generated@@190)) (=> (= (ControlFlow 0 28) 15) $generated@@198)) (=> (= (ControlFlow 0 28) 3) $generated@@200)))))
(let (($generated@@202  (=> $generated@@149 (and (=> (= (ControlFlow 0 29) 10) $generated@@199) (=> (= (ControlFlow 0 29) 28) $generated@@201)))))
(let (($generated@@203  (and (=> (= (ControlFlow 0 50) 49) $generated@@185) (=> (= (ControlFlow 0 50) 29) $generated@@202))))
(let (($generated@@204 true))
(let (($generated@@205  (=> (and (and (<= 0 $generated@@146) (not false)) (= $generated@@158 0)) (=> (and (and (and (=> $generated@@149 (<= $generated@@146 $generated@@143)) (=> $generated@@149 (<= $generated@@143 ($generated@@20 $generated@@145)))) (and (=> $generated@@149 (forall (($generated@@206 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@206) (< $generated@@206 $generated@@146)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@206))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@206)))
))) (=> $generated@@149 (forall (($generated@@207 Int) ) (!  (=> (and (<= $generated@@143 $generated@@207) (< $generated@@207 ($generated@@20 $generated@@145))) (<= $generated@@153 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@207)))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@207)))
))))) (and (and (forall (($generated@@208 T@U) ) (!  (=> (and (or (not (= $generated@@208 $generated@@160)) (not true)) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@208) $generated@@2)))) (= ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@208) ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@208)))
 :pattern ( ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@208))
)) ($generated@@22 $generated@@159 $generated@@159)) (and (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (!  (=> (and (or (not (= $generated@@209 $generated@@160)) (not true)) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@209) $generated@@2)))) (or (= ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@209) $generated@@210) ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@209) $generated@@210)) ($generated@@8 ($generated@@97 $generated@@26 $generated@@24 $generated@@4 $generated@@161 $generated@@209 $generated@@210))))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@159 $generated@@209) $generated@@210))
)) (<= (- $generated@@143 $generated@@146) $generated@@162)))) (and (=> (= (ControlFlow 0 51) 1) $generated@@204) (=> (= (ControlFlow 0 51) 50) $generated@@203))))))
(let (($generated@@211  (=> (and (and (= $generated@@161 ($generated@@98 $generated@@160 $generated@@159 $generated@@2 false)) (= $generated@@158 ($generated@@52 0))) (and (= $generated@@163 ($generated@@20 $generated@@145)) (= $generated@@162 (- $generated@@163 $generated@@158)))) (and (=> (= (ControlFlow 0 52) (- 0 56)) (=> $generated@@149 (<= $generated@@158 $generated@@163))) (=> (=> $generated@@149 (<= $generated@@158 $generated@@163)) (and (=> (= (ControlFlow 0 52) (- 0 55)) (=> $generated@@149 (<= $generated@@163 ($generated@@20 $generated@@145)))) (=> (=> $generated@@149 (<= $generated@@163 ($generated@@20 $generated@@145))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (=> $generated@@149 (forall (($generated@@212 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@212) (< $generated@@212 $generated@@158)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@212))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@212)))
)))) (=> (=> $generated@@149 (forall (($generated@@213 Int) ) (!  (=> (and (<= ($generated@@52 0) $generated@@213) (< $generated@@213 $generated@@158)) (< ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@213))) $generated@@147))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@213)))
))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (=> $generated@@149 (forall (($generated@@214 Int) ) (!  (=> (and (<= $generated@@163 $generated@@214) (< $generated@@214 ($generated@@20 $generated@@145))) (<= $generated@@153 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@214)))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@214)))
)))) (=> (=> $generated@@149 (forall (($generated@@215 Int) ) (!  (=> (and (<= $generated@@163 $generated@@215) (< $generated@@215 ($generated@@20 $generated@@145))) (<= $generated@@153 ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@215)))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@215)))
))) (=> (= (ControlFlow 0 52) 51) $generated@@205))))))))))))
(let (($generated@@216  (=> (and (and (and ($generated@@164 $generated@@159) ($generated@@165 $generated@@159)) (and ($generated@@79 $generated@@85 $generated@@145 ($generated@@86 $generated)) ($generated@@61 $generated@@85 $generated@@145 ($generated@@86 $generated) $generated@@159))) (and (and (= 0 $generated@@166) (forall (($generated@@217 Int) ($generated@@218 Int) ) (!  (=> (and (and (<= ($generated@@52 0) $generated@@217) (< $generated@@217 $generated@@218)) (< $generated@@218 ($generated@@20 $generated@@145))) (<= ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@217))) ($generated@@10 ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@218)))))
 :pattern ( ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@218)) ($generated@@28 $generated@@5 ($generated@@87 $generated@@145 $generated@@217)))
))) (and (<= $generated@@147 $generated@@153) (= (ControlFlow 0 57) 52)))) $generated@@211)))
$generated@@216)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)