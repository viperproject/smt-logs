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
(declare-fun $generated@@20 (T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U T@U) Bool)
(declare-fun $generated@@25 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@T T@T) T@T)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@32 (T@T) T@T)
(declare-fun $generated@@33 (T@T) T@T)
(declare-fun $generated@@54 (Int) Int)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@U T@U T@U) Bool)
(declare-fun $generated@@63 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@77 (T@U Int) T@U)
(declare-fun $generated@@84 (T@U T@U) Bool)
(declare-fun $generated@@85 (T@T T@U T@U) Bool)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@103 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall (($generated@@22 T@U) ) (!  (not ($generated@@20 $generated@@21 $generated@@22))
 :pattern ( ($generated@@20 $generated@@21 $generated@@22))
)))
(assert (= ($generated@@23 $generated@@21) 0))
(assert  (and (and (and (and (and (and (and (forall (($generated@@34 T@T) ($generated@@35 T@T) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@25 $generated@@34 $generated@@35 ($generated@@31 $generated@@34 $generated@@35 $generated@@37 $generated@@38 $generated@@36) $generated@@38) $generated@@36)
 :weight 0
)) (forall (($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (!  (or (= $generated@@43 $generated@@44) (= ($generated@@25 $generated@@39 $generated@@40 ($generated@@31 $generated@@39 $generated@@40 $generated@@42 $generated@@43 $generated@@41) $generated@@44) ($generated@@25 $generated@@39 $generated@@40 $generated@@42 $generated@@44)))
 :weight 0
))) (= ($generated@@3 $generated@@26) 3)) (= ($generated@@3 $generated@@27) 4)) (= ($generated@@3 $generated@@28) 5)) (forall (($generated@@45 T@T) ($generated@@46 T@T) ) (= ($generated@@3 ($generated@@29 $generated@@45 $generated@@46)) 6))) (forall (($generated@@47 T@T) ($generated@@48 T@T) ) (! (= ($generated@@32 ($generated@@29 $generated@@47 $generated@@48)) $generated@@47)
 :pattern ( ($generated@@29 $generated@@47 $generated@@48))
))) (forall (($generated@@49 T@T) ($generated@@50 T@T) ) (! (= ($generated@@33 ($generated@@29 $generated@@49 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@29 $generated@@49 $generated@@50))
))))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> ($generated@@24 $generated@@51 $generated@@52) (forall (($generated@@53 T@U) ) (!  (=> ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@51 $generated@@53) $generated@@2))) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@52 $generated@@53) $generated@@2))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@52 $generated@@53) $generated@@2))
)))
 :pattern ( ($generated@@24 $generated@@51 $generated@@52))
)))
(assert (forall (($generated@@55 Int) ) (! (= ($generated@@54 $generated@@55) $generated@@55)
 :pattern ( ($generated@@54 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 $generated@@57) $generated@@57)
 :pattern ( ($generated@@56 $generated@@58 $generated@@57))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@59 $generated@@61 ($generated@@30 $generated@@61 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@30 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@62 ($generated@@59 $generated@@67 $generated@@64) $generated@@65 $generated@@66) ($generated@@63 $generated@@67 $generated@@64 $generated@@65 $generated@@66))
 :pattern ( ($generated@@62 ($generated@@59 $generated@@67 $generated@@64) $generated@@65 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@24 $generated@@68 $generated@@69) (=> ($generated@@62 $generated@@70 $generated@@71 $generated@@68) ($generated@@62 $generated@@70 $generated@@71 $generated@@69)))
 :pattern ( ($generated@@24 $generated@@68 $generated@@69) ($generated@@62 $generated@@70 $generated@@71 $generated@@68))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@T) ) (!  (=> ($generated@@24 $generated@@72 $generated@@73) (=> ($generated@@63 $generated@@76 $generated@@74 $generated@@75 $generated@@72) ($generated@@63 $generated@@76 $generated@@74 $generated@@75 $generated@@73)))
 :pattern ( ($generated@@24 $generated@@72 $generated@@73) ($generated@@63 $generated@@76 $generated@@74 $generated@@75 $generated@@72))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@20 $generated@@78 $generated@@79) (exists (($generated@@80 Int) ) (!  (and (and (<= 0 $generated@@80) (< $generated@@80 ($generated@@23 $generated@@78))) (= ($generated@@77 $generated@@78 $generated@@80) $generated@@79))
 :pattern ( ($generated@@77 $generated@@78 $generated@@80))
)))
 :pattern ( ($generated@@20 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> (or (not (= $generated@@81 $generated@@83)) (not true)) (=> (and ($generated@@24 $generated@@81 $generated@@82) ($generated@@24 $generated@@82 $generated@@83)) ($generated@@24 $generated@@81 $generated@@83)))
 :pattern ( ($generated@@24 $generated@@81 $generated@@82) ($generated@@24 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ) (!  (=> ($generated@@84 $generated@@86 $generated) (and (= ($generated@@59 $generated@@5 ($generated@@30 $generated@@5 $generated@@86)) $generated@@86) ($generated@@85 $generated@@5 ($generated@@30 $generated@@5 $generated@@86) $generated)))
 :pattern ( ($generated@@84 $generated@@86 $generated))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@84 ($generated@@59 $generated@@89 $generated@@87) $generated@@88) ($generated@@85 $generated@@89 $generated@@87 $generated@@88))
 :pattern ( ($generated@@84 ($generated@@59 $generated@@89 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (! (<= 0 ($generated@@23 $generated@@90))
 :pattern ( ($generated@@23 $generated@@90))
)))
(assert (= ($generated@@3 $generated@@91) 7))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@63 $generated@@91 $generated@@93 ($generated@@92 $generated@@94) $generated@@95) (forall (($generated@@96 Int) ) (!  (=> (and (<= 0 $generated@@96) (< $generated@@96 ($generated@@23 $generated@@93))) ($generated@@62 ($generated@@77 $generated@@93 $generated@@96) $generated@@94 $generated@@95))
 :pattern ( ($generated@@77 $generated@@93 $generated@@96))
)))
 :pattern ( ($generated@@63 $generated@@91 $generated@@93 ($generated@@92 $generated@@94) $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@97 ($generated@@92 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@92 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@19 ($generated@@92 $generated@@99)) $generated@@1)
 :pattern ( ($generated@@92 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@30 $generated@@101 ($generated@@59 $generated@@101 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@59 $generated@@101 $generated@@100))
)))
(assert  (and (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@102 $generated@@105 $generated@@106 $generated@@107 ($generated@@104 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@111 $generated@@108) $generated@@110 $generated@@111) $generated@@108)
 :weight 0
)) (and (forall (($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (!  (or (= $generated@@117 $generated@@119) (= ($generated@@102 $generated@@112 $generated@@113 $generated@@114 ($generated@@104 $generated@@112 $generated@@113 $generated@@114 $generated@@116 $generated@@117 $generated@@118 $generated@@115) $generated@@119 $generated@@120) ($generated@@102 $generated@@112 $generated@@113 $generated@@114 $generated@@116 $generated@@119 $generated@@120)))
 :weight 0
)) (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (or (= $generated@@127 $generated@@129) (= ($generated@@102 $generated@@121 $generated@@122 $generated@@123 ($generated@@104 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@127 $generated@@124) $generated@@128 $generated@@129) ($generated@@102 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@128 $generated@@129)))
 :weight 0
)))))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 Bool) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@8 ($generated@@102 $generated@@28 $generated@@26 $generated@@4 ($generated@@103 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))  (=> (and (or (not (= $generated@@134 $generated@@130)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@131 $generated@@134) $generated@@132)))) $generated@@133))
 :pattern ( ($generated@@102 $generated@@28 $generated@@26 $generated@@4 ($generated@@103 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@84 $generated@@136 ($generated@@92 $generated@@137)) (and (= ($generated@@59 $generated@@91 ($generated@@30 $generated@@91 $generated@@136)) $generated@@136) ($generated@@85 $generated@@91 ($generated@@30 $generated@@91 $generated@@136) ($generated@@92 $generated@@137))))
 :pattern ( ($generated@@84 $generated@@136 ($generated@@92 $generated@@137)))
)))
(assert (forall (($generated@@138 Int) ) (! (= ($generated@@59 $generated@@5 ($generated@@9 ($generated@@54 $generated@@138))) ($generated@@56 $generated@@27 ($generated@@59 $generated@@5 ($generated@@9 $generated@@138))))
 :pattern ( ($generated@@59 $generated@@5 ($generated@@9 ($generated@@54 $generated@@138))))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@59 $generated@@140 ($generated@@56 $generated@@140 $generated@@139)) ($generated@@56 $generated@@27 ($generated@@59 $generated@@140 $generated@@139)))
 :pattern ( ($generated@@59 $generated@@140 ($generated@@56 $generated@@140 $generated@@139)))
)))
(assert (forall (($generated@@141 T@U) ) (!  (=> (= ($generated@@23 $generated@@141) 0) (= $generated@@141 $generated@@21))
 :pattern ( ($generated@@23 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! ($generated@@63 $generated@@5 $generated@@143 $generated $generated@@142)
 :pattern ( ($generated@@63 $generated@@5 $generated@@143 $generated $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@85 $generated@@91 $generated@@144 ($generated@@92 $generated@@145)) (forall (($generated@@146 Int) ) (!  (=> (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@23 $generated@@144))) ($generated@@84 ($generated@@77 $generated@@144 $generated@@146) $generated@@145))
 :pattern ( ($generated@@77 $generated@@144 $generated@@146))
)))
 :pattern ( ($generated@@85 $generated@@91 $generated@@144 ($generated@@92 $generated@@145)))
)))
(assert (forall (($generated@@147 T@U) ) (! ($generated@@85 $generated@@5 $generated@@147 $generated)
 :pattern ( ($generated@@85 $generated@@5 $generated@@147 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 (T@U) Bool)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 (T@U) Bool)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () Int)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () Int)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () Int)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () Int)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@179  (=> (= $generated@@148 ($generated@@103 $generated@@149 $generated@@150 $generated@@2 false)) (=> (and ($generated@@85 $generated@@91 $generated@@151 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@151 ($generated@@92 $generated) $generated@@150)) (=> (and (and (and ($generated@@152 $generated@@153) ($generated@@154 $generated@@153)) (and ($generated@@85 $generated@@91 $generated@@155 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@155 ($generated@@92 $generated) $generated@@153))) (and (and (= ($generated@@23 $generated@@155) ($generated@@54 0)) (forall (($generated@@180 T@U) ) (!  (=> (and (or (not (= $generated@@180 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@150 $generated@@180) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@153 $generated@@180) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@150 $generated@@180)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@153 $generated@@180))
))) (and ($generated@@24 $generated@@150 $generated@@153) (= $generated@@156 ($generated@@54 0))))) (=> (and (and (and (and (and ($generated@@85 $generated@@91 $generated@@157 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@157 ($generated@@92 $generated) $generated@@150)) (and ($generated@@152 $generated@@158) ($generated@@154 $generated@@158))) (and (and ($generated@@85 $generated@@91 $generated@@159 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@159 ($generated@@92 $generated) $generated@@158)) (and (= ($generated@@23 $generated@@159) (+ ($generated@@23 $generated@@155) 1)) (forall (($generated@@181 T@U) ) (!  (=> (and (or (not (= $generated@@181 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@153 $generated@@181) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@158 $generated@@181) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@153 $generated@@181)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@158 $generated@@181))
))))) (and (and (and ($generated@@24 $generated@@153 $generated@@158) (= $generated@@160 ($generated@@54 1))) (and ($generated@@85 $generated@@91 $generated@@161 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@161 ($generated@@92 $generated) $generated@@150))) (and (and ($generated@@152 $generated@@162) ($generated@@154 $generated@@162)) (and ($generated@@85 $generated@@91 $generated@@163 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@163 ($generated@@92 $generated) $generated@@162))))) (and (and (and (and (= ($generated@@23 $generated@@163) (+ ($generated@@23 $generated@@159) 1)) (forall (($generated@@182 T@U) ) (!  (=> (and (or (not (= $generated@@182 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@158 $generated@@182) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@162 $generated@@182) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@158 $generated@@182)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@162 $generated@@182))
))) (and ($generated@@24 $generated@@158 $generated@@162) (= $generated@@164 ($generated@@54 2)))) (and (and ($generated@@85 $generated@@91 $generated@@165 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@165 ($generated@@92 $generated) $generated@@150)) (and ($generated@@152 $generated@@166) ($generated@@154 $generated@@166)))) (and (and (and ($generated@@85 $generated@@91 $generated@@167 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@167 ($generated@@92 $generated) $generated@@166)) (= ($generated@@23 $generated@@167) (+ ($generated@@23 $generated@@163) 1))) (and (and (forall (($generated@@183 T@U) ) (!  (=> (and (or (not (= $generated@@183 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@162 $generated@@183) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@166 $generated@@183) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@162 $generated@@183)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@166 $generated@@183))
)) ($generated@@24 $generated@@162 $generated@@166)) (and ($generated@@85 $generated@@91 $generated@@168 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@168 ($generated@@92 $generated) $generated@@150)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (> ($generated@@23 $generated@@167) 0)) (=> (> ($generated@@23 $generated@@167) 0) (=> (and ($generated@@152 $generated@@169) ($generated@@154 $generated@@169)) (=> (and (and (and (and ($generated@@85 $generated@@91 $generated@@170 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@170 ($generated@@92 $generated) $generated@@169)) ($generated@@20 $generated@@167 ($generated@@59 $generated@@5 ($generated@@9 $generated@@171)))) (and (= ($generated@@23 $generated@@170) (- ($generated@@23 $generated@@167) 1)) (= $generated@@171 ($generated@@10 ($generated@@30 $generated@@5 ($generated@@77 $generated@@167 ($generated@@54 0))))))) (and (and (forall (($generated@@184 T@U) ) (!  (=> (and (or (not (= $generated@@184 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@166 $generated@@184) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@169 $generated@@184) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@166 $generated@@184)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@169 $generated@@184))
)) ($generated@@24 $generated@@166 $generated@@169)) (and ($generated@@85 $generated@@91 $generated@@172 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@172 ($generated@@92 $generated) $generated@@150)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (> ($generated@@23 $generated@@170) 0)) (=> (> ($generated@@23 $generated@@170) 0) (=> (and ($generated@@152 $generated@@173) ($generated@@154 $generated@@173)) (=> (and (and ($generated@@85 $generated@@91 $generated@@174 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@174 ($generated@@92 $generated) $generated@@173)) ($generated@@20 $generated@@170 ($generated@@59 $generated@@5 ($generated@@9 $generated@@175)))) (=> (and (and (and (= ($generated@@23 $generated@@174) (- ($generated@@23 $generated@@170) 1)) (= $generated@@175 ($generated@@10 ($generated@@30 $generated@@5 ($generated@@77 $generated@@170 ($generated@@54 0)))))) (and (forall (($generated@@185 T@U) ) (!  (=> (and (or (not (= $generated@@185 $generated@@149)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@169 $generated@@185) $generated@@2)))) (= ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@173 $generated@@185) ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@169 $generated@@185)))
 :pattern ( ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@173 $generated@@185))
)) ($generated@@24 $generated@@169 $generated@@173))) (and (and ($generated@@85 $generated@@91 $generated@@176 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@176 ($generated@@92 $generated) $generated@@150)) (= (ControlFlow 0 2) (- 0 1)))) (> ($generated@@23 $generated@@174) 0))))))))))))))))
(let (($generated@@186  (=> (and ($generated@@152 $generated@@150) ($generated@@154 $generated@@150)) (=> (and (and (and ($generated@@85 $generated@@91 $generated@@177 ($generated@@92 $generated)) ($generated@@63 $generated@@91 $generated@@177 ($generated@@92 $generated) $generated@@150)) true) (and (= 0 $generated@@178) (= (ControlFlow 0 5) 2))) $generated@@179))))
$generated@@186)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid