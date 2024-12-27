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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@36 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 (T@T T@T) T@T)
(declare-fun $generated@@40 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@41 (T@T) T@T)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@66 (Int) Int)
(declare-fun $generated@@68 (T@T T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U T@U) T@U)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@74 (T@U T@U) Bool)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@U T@U T@U) Bool)
(declare-fun $generated@@100 (T@U Int) T@U)
(declare-fun $generated@@107 () T@T)
(declare-fun $generated@@117 (T@U) T@U)
(declare-fun $generated@@122 (Int) T@U)
(declare-fun $generated@@123 (T@U) Int)
(declare-fun $generated@@125 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@126 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@127 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (= ($generated@@23 $generated@@24) 0))
(assert (= ($generated@@6 $generated@@26) 3))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@30 $generated@@27)  (or (= $generated@@30 $generated@@28) (= ($generated@@29 $generated@@30) $generated@@27)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@30 $generated@@27))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34) ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@32 $generated@@34))
 :pattern ( ($generated@@31 $generated@@26 $generated@@33 $generated@@27 $generated@@34))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@43 T@T) ($generated@@44 T@T) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@36 $generated@@43 $generated@@44 ($generated@@40 $generated@@43 $generated@@44 $generated@@46 $generated@@47 $generated@@45) $generated@@47) $generated@@45)
 :weight 0
)) (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (or (= $generated@@52 $generated@@53) (= ($generated@@36 $generated@@48 $generated@@49 ($generated@@40 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@53) ($generated@@36 $generated@@48 $generated@@49 $generated@@51 $generated@@53)))
 :weight 0
))) (= ($generated@@6 $generated@@37) 4)) (= ($generated@@6 $generated@@38) 5)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ) (= ($generated@@6 ($generated@@39 $generated@@54 $generated@@55)) 6))) (forall (($generated@@56 T@T) ($generated@@57 T@T) ) (! (= ($generated@@41 ($generated@@39 $generated@@56 $generated@@57)) $generated@@56)
 :pattern ( ($generated@@39 $generated@@56 $generated@@57))
))) (forall (($generated@@58 T@T) ($generated@@59 T@T) ) (! (= ($generated@@42 ($generated@@39 $generated@@58 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@39 $generated@@58 $generated@@59))
))))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@31 $generated@@26 $generated@@60 $generated@@27 $generated@@61)  (or (= $generated@@60 $generated@@28) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@61 $generated@@60) $generated@@2)))))
 :pattern ( ($generated@@31 $generated@@26 $generated@@60 $generated@@27 $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> ($generated@@62 $generated@@63 $generated@@64) (forall (($generated@@65 T@U) ) (!  (=> ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@63 $generated@@65) $generated@@2))) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@64 $generated@@65) $generated@@2))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@64 $generated@@65) $generated@@2))
)))
 :pattern ( ($generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@67 Int) ) (! (= ($generated@@66 $generated@@67) $generated@@67)
 :pattern ( ($generated@@66 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@68 $generated@@70 $generated@@69) $generated@@69)
 :pattern ( ($generated@@68 $generated@@70 $generated@@69))
)))
(assert (= ($generated@@6 $generated@@71) 7))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (and ($generated@@25 $generated@@71 $generated@@75 ($generated@@73 $generated@@77)) ($generated@@74 $generated@@76 $generated@@77)) ($generated@@25 $generated@@71 ($generated@@72 $generated@@75 $generated@@76) ($generated@@73 $generated@@77)))
 :pattern ( ($generated@@25 $generated@@71 ($generated@@72 $generated@@75 $generated@@76) ($generated@@73 $generated@@77)))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 ($generated@@35 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@35 $generated@@80 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@23 ($generated@@72 $generated@@81 $generated@@82)) (+ 1 ($generated@@23 $generated@@81)))
 :pattern ( ($generated@@72 $generated@@81 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@83 ($generated@@78 $generated@@87 $generated@@84) $generated@@85 $generated@@86) ($generated@@31 $generated@@87 $generated@@84 $generated@@85 $generated@@86))
 :pattern ( ($generated@@83 ($generated@@78 $generated@@87 $generated@@84) $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@62 $generated@@88 $generated@@89) (=> ($generated@@83 $generated@@90 $generated@@91 $generated@@88) ($generated@@83 $generated@@90 $generated@@91 $generated@@89)))
 :pattern ( ($generated@@62 $generated@@88 $generated@@89) ($generated@@83 $generated@@90 $generated@@91 $generated@@88))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (!  (=> ($generated@@62 $generated@@92 $generated@@93) (=> ($generated@@31 $generated@@96 $generated@@94 $generated@@95 $generated@@92) ($generated@@31 $generated@@96 $generated@@94 $generated@@95 $generated@@93)))
 :pattern ( ($generated@@62 $generated@@92 $generated@@93) ($generated@@31 $generated@@96 $generated@@94 $generated@@95 $generated@@92))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@74 $generated@@97 $generated@@27) (and (= ($generated@@78 $generated@@26 ($generated@@35 $generated@@26 $generated@@97)) $generated@@97) ($generated@@25 $generated@@26 ($generated@@35 $generated@@26 $generated@@97) $generated@@27)))
 :pattern ( ($generated@@74 $generated@@97 $generated@@27))
)))
(assert (forall (($generated@@98 T@U) ) (!  (=> ($generated@@74 $generated@@98 $generated@@32) (and (= ($generated@@78 $generated@@26 ($generated@@35 $generated@@26 $generated@@98)) $generated@@98) ($generated@@25 $generated@@26 ($generated@@35 $generated@@26 $generated@@98) $generated@@32)))
 :pattern ( ($generated@@74 $generated@@98 $generated@@32))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@99 $generated@@32)  (and ($generated@@25 $generated@@26 $generated@@99 $generated@@27) (or (not (= $generated@@99 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@99 $generated@@32))
 :pattern ( ($generated@@25 $generated@@26 $generated@@99 $generated@@27))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 Int) ($generated@@103 T@U) ) (!  (and (=> (= $generated@@102 ($generated@@23 $generated@@101)) (= ($generated@@100 ($generated@@72 $generated@@101 $generated@@103) $generated@@102) $generated@@103)) (=> (or (not (= $generated@@102 ($generated@@23 $generated@@101))) (not true)) (= ($generated@@100 ($generated@@72 $generated@@101 $generated@@103) $generated@@102) ($generated@@100 $generated@@101 $generated@@102))))
 :pattern ( ($generated@@100 ($generated@@72 $generated@@101 $generated@@103) $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (or (not (= $generated@@104 $generated@@106)) (not true)) (=> (and ($generated@@62 $generated@@104 $generated@@105) ($generated@@62 $generated@@105 $generated@@106)) ($generated@@62 $generated@@104 $generated@@106)))
 :pattern ( ($generated@@62 $generated@@104 $generated@@105) ($generated@@62 $generated@@105 $generated@@106))
)))
(assert (= ($generated@@6 $generated@@107) 8))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@74 $generated@@108 $generated) (and (= ($generated@@78 $generated@@107 ($generated@@35 $generated@@107 $generated@@108)) $generated@@108) ($generated@@25 $generated@@107 ($generated@@35 $generated@@107 $generated@@108) $generated)))
 :pattern ( ($generated@@74 $generated@@108 $generated))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@T) ) (! (= ($generated@@74 ($generated@@78 $generated@@111 $generated@@109) $generated@@110) ($generated@@25 $generated@@111 $generated@@109 $generated@@110))
 :pattern ( ($generated@@74 ($generated@@78 $generated@@111 $generated@@109) $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ) (! (<= 0 ($generated@@23 $generated@@112))
 :pattern ( ($generated@@23 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@31 $generated@@71 $generated@@113 ($generated@@73 $generated@@114) $generated@@115) (forall (($generated@@116 Int) ) (!  (=> (and (<= 0 $generated@@116) (< $generated@@116 ($generated@@23 $generated@@113))) ($generated@@83 ($generated@@100 $generated@@113 $generated@@116) $generated@@114 $generated@@115))
 :pattern ( ($generated@@100 $generated@@113 $generated@@116))
)))
 :pattern ( ($generated@@31 $generated@@71 $generated@@113 ($generated@@73 $generated@@114) $generated@@115))
)))
(assert (forall (($generated@@118 T@U) ) (! (= ($generated@@117 ($generated@@73 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@73 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@22 ($generated@@73 $generated@@119)) $generated@@1)
 :pattern ( ($generated@@73 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@35 $generated@@121 ($generated@@78 $generated@@121 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@78 $generated@@121 $generated@@120))
)))
(assert (forall (($generated@@124 Int) ) (!  (=> (or (and (<= 0 $generated@@124) (< $generated@@124 55296)) (and (<= 57344 $generated@@124) (< $generated@@124 1114112))) (= ($generated@@123 ($generated@@122 $generated@@124)) $generated@@124))
 :pattern ( ($generated@@122 $generated@@124))
)))
(assert  (and (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@125 $generated@@128 $generated@@129 $generated@@130 ($generated@@127 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@133 $generated@@134 $generated@@131) $generated@@133 $generated@@134) $generated@@131)
 :weight 0
)) (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (or (= $generated@@140 $generated@@142) (= ($generated@@125 $generated@@135 $generated@@136 $generated@@137 ($generated@@127 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@142 $generated@@143) ($generated@@125 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@142 $generated@@143)))
 :weight 0
)) (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (!  (or (= $generated@@150 $generated@@152) (= ($generated@@125 $generated@@144 $generated@@145 $generated@@146 ($generated@@127 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@149 $generated@@150 $generated@@147) $generated@@151 $generated@@152) ($generated@@125 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@151 $generated@@152)))
 :weight 0
)))))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 Bool) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@11 ($generated@@125 $generated@@26 $generated@@37 $generated@@7 ($generated@@126 $generated@@153 $generated@@154 $generated@@155 $generated@@156) $generated@@157 $generated@@158))  (=> (and (or (not (= $generated@@157 $generated@@153)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@154 $generated@@157) $generated@@155)))) $generated@@156))
 :pattern ( ($generated@@125 $generated@@26 $generated@@37 $generated@@7 ($generated@@126 $generated@@153 $generated@@154 $generated@@155 $generated@@156) $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (and (= ($generated@@159 ($generated@@72 $generated@@161 $generated@@162)) $generated@@161) (= ($generated@@160 ($generated@@72 $generated@@161 $generated@@162)) $generated@@162))
 :pattern ( ($generated@@72 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@74 $generated@@163 ($generated@@73 $generated@@164)) (and (= ($generated@@78 $generated@@71 ($generated@@35 $generated@@71 $generated@@163)) $generated@@163) ($generated@@25 $generated@@71 ($generated@@35 $generated@@71 $generated@@163) ($generated@@73 $generated@@164))))
 :pattern ( ($generated@@74 $generated@@163 ($generated@@73 $generated@@164)))
)))
(assert (forall (($generated@@165 T@U) ) (!  (and (= ($generated@@122 ($generated@@123 $generated@@165)) $generated@@165) (or (and (<= 0 ($generated@@123 $generated@@165)) (< ($generated@@123 $generated@@165) 55296)) (and (<= 57344 ($generated@@123 $generated@@165)) (< ($generated@@123 $generated@@165) 1114112))))
 :pattern ( ($generated@@123 $generated@@165))
)))
(assert (= ($generated@@22 $generated@@27) $generated@@3))
(assert (= ($generated@@166 $generated@@27) $generated@@5))
(assert (= ($generated@@22 $generated@@32) $generated@@4))
(assert (= ($generated@@166 $generated@@32) $generated@@5))
(assert (forall (($generated@@167 Int) ) (! (= ($generated@@78 $generated@@8 ($generated@@12 ($generated@@66 $generated@@167))) ($generated@@68 $generated@@38 ($generated@@78 $generated@@8 ($generated@@12 $generated@@167))))
 :pattern ( ($generated@@78 $generated@@8 ($generated@@12 ($generated@@66 $generated@@167))))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@T) ) (! (= ($generated@@78 $generated@@169 ($generated@@68 $generated@@169 $generated@@168)) ($generated@@68 $generated@@38 ($generated@@78 $generated@@169 $generated@@168)))
 :pattern ( ($generated@@78 $generated@@169 ($generated@@68 $generated@@169 $generated@@168)))
)))
(assert (forall (($generated@@170 T@U) ) (!  (=> (= ($generated@@23 $generated@@170) 0) (= $generated@@170 $generated@@24))
 :pattern ( ($generated@@23 $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (! ($generated@@31 $generated@@107 $generated@@172 $generated $generated@@171)
 :pattern ( ($generated@@31 $generated@@107 $generated@@172 $generated $generated@@171))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@25 $generated@@71 $generated@@173 ($generated@@73 $generated@@174)) (forall (($generated@@175 Int) ) (!  (=> (and (<= 0 $generated@@175) (< $generated@@175 ($generated@@23 $generated@@173))) ($generated@@74 ($generated@@100 $generated@@173 $generated@@175) $generated@@174))
 :pattern ( ($generated@@100 $generated@@173 $generated@@175))
)))
 :pattern ( ($generated@@25 $generated@@71 $generated@@173 ($generated@@73 $generated@@174)))
)))
(assert (forall (($generated@@176 T@U) ) (! ($generated@@25 $generated@@107 $generated@@176 $generated)
 :pattern ( ($generated@@25 $generated@@107 $generated@@176 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@177 () Int)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () Int)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 (T@U) Bool)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 (T@U) Bool)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () Int)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () Bool)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Int)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () Int)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@196  (=> (and (< $generated@@177 ($generated@@23 $generated@@178)) (= $generated@@179 (- ($generated@@23 $generated@@178) $generated@@177))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (and (<= 0 $generated@@177) (< $generated@@177 ($generated@@23 $generated@@178)))) (=> (and (<= 0 $generated@@177) (< $generated@@177 ($generated@@23 $generated@@178))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= ($generated@@35 $generated@@26 ($generated@@100 $generated@@178 $generated@@177)) $generated@@28)) (not true))) (=> (or (not (= ($generated@@35 $generated@@26 ($generated@@100 $generated@@178 $generated@@177)) $generated@@28)) (not true)) (=> (= $generated@@180 ($generated@@35 $generated@@26 ($generated@@100 $generated@@178 $generated@@177))) (=> (and ($generated@@181 $generated@@182) ($generated@@183 $generated@@182)) (=> (and (and (forall (($generated@@197 T@U) ) (!  (=> (and (or (not (= $generated@@197 $generated@@28)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@197) $generated@@2)))) (= ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@182 $generated@@197) ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@197)))
 :pattern ( ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@182 $generated@@197))
)) ($generated@@62 $generated@@184 $generated@@182)) (and (= $generated@@185 (+ $generated@@177 1)) (= $generated@@186 ($generated@@68 $generated@@71 ($generated@@72 ($generated@@72 $generated@@24 ($generated@@78 $generated@@107 ($generated@@122 44))) ($generated@@78 $generated@@107 ($generated@@122 32))))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 $generated@@179) (= (- ($generated@@23 $generated@@178) $generated@@185) $generated@@179))) (=> (or (<= 0 $generated@@179) (= (- ($generated@@23 $generated@@178) $generated@@185) $generated@@179)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- ($generated@@23 $generated@@178) $generated@@185) $generated@@179))))))))))))))
(let (($generated@@198 true))
(let (($generated@@199  (=> $generated@@187 (and (=> (= (ControlFlow 0 9) 3) $generated@@198) (=> (= (ControlFlow 0 9) 5) $generated@@196)))))
(let (($generated@@200 true))
(let (($generated@@201  (and (=> (= (ControlFlow 0 10) 2) $generated@@200) (=> (= (ControlFlow 0 10) 9) $generated@@199))))
(let (($generated@@202 true))
(let (($generated@@203  (=> (and ($generated@@181 $generated@@184) ($generated@@183 $generated@@184)) (=> (and (and (and ($generated@@25 $generated@@71 $generated@@188 ($generated@@73 $generated)) ($generated@@31 $generated@@71 $generated@@188 ($generated@@73 $generated) $generated@@184)) (and (not false) (<= 0 $generated@@177))) (and (and (forall (($generated@@204 T@U) ) (!  (=> (and (or (not (= $generated@@204 $generated@@28)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@189 $generated@@204) $generated@@2)))) (= ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@204) ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@189 $generated@@204)))
 :pattern ( ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@204))
)) ($generated@@62 $generated@@189 $generated@@184)) (and (forall (($generated@@205 T@U) ($generated@@206 T@U) ) (!  (=> (and (or (not (= $generated@@205 $generated@@28)) (not true)) ($generated@@11 ($generated@@35 $generated@@7 ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@189 $generated@@205) $generated@@2)))) (or (= ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@205) $generated@@206) ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@189 $generated@@205) $generated@@206)) ($generated@@11 ($generated@@125 $generated@@26 $generated@@37 $generated@@7 $generated@@190 $generated@@205 $generated@@206))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38 ($generated@@36 $generated@@26 ($generated@@39 $generated@@37 $generated@@38) $generated@@184 $generated@@205) $generated@@206))
)) (<= (- ($generated@@23 $generated@@178) $generated@@177) $generated@@191)))) (and (=> (= (ControlFlow 0 11) 1) $generated@@202) (=> (= (ControlFlow 0 11) 10) $generated@@201))))))
(let (($generated@@207  (=> (= $generated@@190 ($generated@@126 $generated@@28 $generated@@189 $generated@@2 false)) (=> (and (and (= $generated@@192 ($generated@@66 0)) (= $generated@@193 ($generated@@68 $generated@@71 $generated@@24))) (and (= $generated@@191 (- ($generated@@23 $generated@@178) $generated@@192)) (= (ControlFlow 0 12) 11))) $generated@@203))))
(let (($generated@@208  (=> (and (and ($generated@@181 $generated@@189) ($generated@@183 $generated@@189)) (and ($generated@@25 $generated@@71 $generated@@178 ($generated@@73 $generated@@32)) ($generated@@31 $generated@@71 $generated@@178 ($generated@@73 $generated@@32) $generated@@189))) (=> (and (and (and ($generated@@25 $generated@@71 $generated@@194 ($generated@@73 $generated)) ($generated@@31 $generated@@71 $generated@@194 ($generated@@73 $generated) $generated@@189)) true) (and (= 1 $generated@@195) (= (ControlFlow 0 13) 12))) $generated@@207))))
$generated@@208))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)