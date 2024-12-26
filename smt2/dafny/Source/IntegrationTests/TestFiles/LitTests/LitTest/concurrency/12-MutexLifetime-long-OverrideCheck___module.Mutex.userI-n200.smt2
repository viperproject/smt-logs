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
(declare-fun $generated@@7 () T@U)
(declare-fun $generated@@8 () T@U)
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 (T@T) Int)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 (Bool) T@U)
(declare-fun $generated@@20 (T@U) Bool)
(declare-fun $generated@@21 (Int) T@U)
(declare-fun $generated@@22 (T@U) Int)
(declare-fun $generated@@23 (Real) T@U)
(declare-fun $generated@@24 (T@U) Real)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@U T@U) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@39 (T@T T@U T@U) Bool)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@45 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@46 () T@U)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@60 () T@U)
(declare-fun $generated@@61 (T@U T@U) T@U)
(declare-fun $generated@@62 (T@U) Bool)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@64 (T@U T@U) Bool)
(declare-fun $generated@@65 (T@U T@U T@U) Bool)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@69 () T@T)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@T T@T) T@T)
(declare-fun $generated@@72 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T) T@T)
(declare-fun $generated@@74 (T@T) T@T)
(declare-fun $generated@@98 (T@U T@U T@U) Bool)
(declare-fun $generated@@116 (T@T T@U) T@U)
(declare-fun $generated@@119 (T@U T@U) Bool)
(declare-fun $generated@@123 (T@T T@U) T@U)
(declare-fun $generated@@126 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@128 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@161 () Int)
(declare-fun $generated@@162 (T@U T@U T@U) Bool)
(declare-fun $generated@@185 (T@U T@U T@U) Bool)
(declare-fun $generated@@192 (T@U) T@U)
(declare-fun $generated@@200 (T@U) T@U)
(declare-fun $generated@@201 (T@U) T@U)
(declare-fun $generated@@202 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@15 $generated@@16) 0) (= ($generated@@15 $generated@@17) 1)) (= ($generated@@15 $generated@@18) 2)) (forall (($generated@@25 Bool) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Int) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 Real) ) (! (= ($generated@@24 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 T@U) ) (! (= ($generated@@23 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14)
)
(assert (= ($generated@@31 $generated) 0))
(assert (= ($generated@@32 $generated) $generated@@0))
(assert ($generated@@33 $generated@@34))
(assert ($generated@@33 $generated@@35))
(assert (forall (($generated@@38 T@U) ) (!  (not ($generated@@36 $generated@@37 $generated@@38))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38))
)))
(assert (= ($generated@@15 $generated@@40) 3))
(assert (forall (($generated@@43 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@43 $generated@@34)  (or (= $generated@@43 $generated@@41) (= ($generated@@42 $generated@@43) $generated@@34)))
 :pattern ( ($generated@@39 $generated@@40 $generated@@43 $generated@@34))
)))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@44 $generated@@35)  (or (= $generated@@44 $generated@@41) (= ($generated@@42 $generated@@44) $generated@@35)))
 :pattern ( ($generated@@39 $generated@@40 $generated@@44 $generated@@35))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@48 $generated@@46 $generated@@49) ($generated@@45 $generated@@40 $generated@@48 $generated@@47 $generated@@49))
 :pattern ( ($generated@@45 $generated@@40 $generated@@48 $generated@@46 $generated@@49))
 :pattern ( ($generated@@45 $generated@@40 $generated@@48 $generated@@47 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@52 $generated@@50 $generated@@53) ($generated@@45 $generated@@40 $generated@@52 $generated@@51 $generated@@53))
 :pattern ( ($generated@@45 $generated@@40 $generated@@52 $generated@@50 $generated@@53))
 :pattern ( ($generated@@45 $generated@@40 $generated@@52 $generated@@51 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@55 $generated@@54 $generated@@56) ($generated@@45 $generated@@40 $generated@@55 $generated@@34 $generated@@56))
 :pattern ( ($generated@@45 $generated@@40 $generated@@55 $generated@@54 $generated@@56))
 :pattern ( ($generated@@45 $generated@@40 $generated@@55 $generated@@34 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@58 $generated@@57 $generated@@59) ($generated@@45 $generated@@40 $generated@@58 $generated@@35 $generated@@59))
 :pattern ( ($generated@@45 $generated@@40 $generated@@58 $generated@@57 $generated@@59))
 :pattern ( ($generated@@45 $generated@@40 $generated@@58 $generated@@35 $generated@@59))
)))
(assert (= ($generated@@31 $generated@@60) 0))
(assert (= ($generated@@61 $generated@@8 $generated@@14) $generated@@60))
(assert  (not ($generated@@62 $generated@@60)))
(assert  (and (and (and (and (and (and (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@68 $generated@@75 $generated@@76 ($generated@@72 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@79) $generated@@77)
 :weight 0
)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@84 $generated@@85) (= ($generated@@68 $generated@@80 $generated@@81 ($generated@@72 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@85) ($generated@@68 $generated@@80 $generated@@81 $generated@@83 $generated@@85)))
 :weight 0
))) (= ($generated@@15 $generated@@69) 4)) (= ($generated@@15 $generated@@70) 5)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (= ($generated@@15 ($generated@@71 $generated@@86 $generated@@87)) 6))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@73 ($generated@@71 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@71 $generated@@88 $generated@@89))
))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@74 ($generated@@71 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@71 $generated@@90 $generated@@91))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (and (and (and ($generated@@66 $generated@@93) ($generated@@66 $generated@@94)) (and (or (not (= $generated@@95 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@95 $generated@@57) ($generated@@45 $generated@@40 $generated@@95 $generated@@57 $generated@@93)))) (and ($generated@@63 $generated@@93) ($generated@@64 $generated@@93 $generated@@94))) (=> (forall (($generated@@96 T@U) ($generated@@97 T@U) )  (=> (and (or (not (= $generated@@96 $generated@@41)) (not true)) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@93 $generated@@96) $generated)))) (= ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@93 $generated@@96) $generated@@97) ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@94 $generated@@96) $generated@@97)))) (= ($generated@@65 $generated@@92 $generated@@93 $generated@@95) ($generated@@65 $generated@@92 $generated@@94 $generated@@95))))
 :pattern ( ($generated@@63 $generated@@93) ($generated@@64 $generated@@93 $generated@@94) ($generated@@65 $generated@@92 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> (and (and (and ($generated@@66 $generated@@100) ($generated@@66 $generated@@101)) (and (or (not (= $generated@@102 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@102 $generated@@57) ($generated@@45 $generated@@40 $generated@@102 $generated@@57 $generated@@100)))) (and ($generated@@63 $generated@@100) ($generated@@64 $generated@@100 $generated@@101))) (=> (forall (($generated@@103 T@U) ($generated@@104 T@U) )  (=> (and (or (not (= $generated@@103 $generated@@41)) (not true)) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@100 $generated@@103) $generated)))) (= ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@100 $generated@@103) $generated@@104) ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@101 $generated@@103) $generated@@104)))) (= ($generated@@98 $generated@@99 $generated@@100 $generated@@102) ($generated@@98 $generated@@99 $generated@@101 $generated@@102))))
 :pattern ( ($generated@@63 $generated@@100) ($generated@@64 $generated@@100 $generated@@101) ($generated@@98 $generated@@99 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@105 $generated@@47 $generated@@106)  (or (= $generated@@105 $generated@@41) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@106 $generated@@105) $generated)))))
 :pattern ( ($generated@@45 $generated@@40 $generated@@105 $generated@@47 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@107 $generated@@51 $generated@@108)  (or (= $generated@@107 $generated@@41) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@108 $generated@@107) $generated)))))
 :pattern ( ($generated@@45 $generated@@40 $generated@@107 $generated@@51 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@109 $generated@@34 $generated@@110)  (or (= $generated@@109 $generated@@41) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@110 $generated@@109) $generated)))))
 :pattern ( ($generated@@45 $generated@@40 $generated@@109 $generated@@34 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@45 $generated@@40 $generated@@111 $generated@@35 $generated@@112)  (or (= $generated@@111 $generated@@41) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@112 $generated@@111) $generated)))))
 :pattern ( ($generated@@45 $generated@@40 $generated@@111 $generated@@35 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> ($generated@@64 $generated@@113 $generated@@114) (forall (($generated@@115 T@U) ) (!  (=> ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@113 $generated@@115) $generated))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@114 $generated@@115) $generated))))
 :pattern ( ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@114 $generated@@115) $generated))
)))
 :pattern ( ($generated@@64 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@116 $generated@@118 $generated@@117) $generated@@117)
 :pattern ( ($generated@@116 $generated@@118 $generated@@117))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 $generated@@120 $generated@@121) (forall (($generated@@122 T@U) ) (!  (=> ($generated@@36 $generated@@120 $generated@@122) ($generated@@36 $generated@@121 $generated@@122))
 :pattern ( ($generated@@36 $generated@@120 $generated@@122))
 :pattern ( ($generated@@36 $generated@@121 $generated@@122))
)))
 :pattern ( ($generated@@119 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@123 $generated@@125 ($generated@@67 $generated@@125 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@67 $generated@@125 $generated@@124))
)))
(assert  (and (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@126 $generated@@129 $generated@@130 $generated@@131 ($generated@@128 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@134 $generated@@135) $generated@@132)
 :weight 0
)) (and (forall (($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (or (= $generated@@141 $generated@@143) (= ($generated@@126 $generated@@136 $generated@@137 $generated@@138 ($generated@@128 $generated@@136 $generated@@137 $generated@@138 $generated@@140 $generated@@141 $generated@@142 $generated@@139) $generated@@143 $generated@@144) ($generated@@126 $generated@@136 $generated@@137 $generated@@138 $generated@@140 $generated@@143 $generated@@144)))
 :weight 0
)) (forall (($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (!  (or (= $generated@@151 $generated@@153) (= ($generated@@126 $generated@@145 $generated@@146 $generated@@147 ($generated@@128 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@151 $generated@@148) $generated@@152 $generated@@153) ($generated@@126 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@152 $generated@@153)))
 :weight 0
)))))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@20 ($generated@@126 $generated@@40 $generated@@69 $generated@@16 ($generated@@127 $generated@@154 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))  (=> (and (or (not (= $generated@@159 $generated@@154)) (not true)) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@155 $generated@@159) $generated@@156)))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@157 $generated@@159) $generated@@158)))))
 :pattern ( ($generated@@126 $generated@@40 $generated@@69 $generated@@16 ($generated@@127 $generated@@154 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))
)))
(assert ($generated@@62 $generated))
(assert  (=> (<= 0 $generated@@161) (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (=> (or ($generated@@162 $generated@@163 $generated@@164 $generated@@165) (and (< 0 $generated@@161) (and (and (and ($generated@@66 $generated@@163) ($generated@@66 $generated@@164)) ($generated@@64 $generated@@163 $generated@@164)) (and (or (not (= $generated@@165 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@165 $generated@@57) ($generated@@45 $generated@@40 $generated@@165 $generated@@57 $generated@@163)))))) (= ($generated@@65 $generated@@163 $generated@@164 $generated@@165)  (and true (= ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@163 $generated@@165) $generated@@60)) ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@164 $generated@@165) $generated@@60))))))
 :pattern ( ($generated@@65 $generated@@163 $generated@@164 $generated@@165) ($generated@@66 $generated@@164))
))))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@T) ) (!  (=> ($generated@@64 $generated@@166 $generated@@167) (=> ($generated@@45 $generated@@170 $generated@@168 $generated@@169 $generated@@166) ($generated@@45 $generated@@170 $generated@@168 $generated@@169 $generated@@167)))
 :pattern ( ($generated@@64 $generated@@166 $generated@@167) ($generated@@45 $generated@@170 $generated@@168 $generated@@169 $generated@@166))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@66 $generated@@171) (and (or (not (= $generated@@172 $generated@@41)) (not true)) (= ($generated@@42 $generated@@172) $generated@@35))) ($generated@@39 $generated@@40 ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@171 $generated@@172) $generated@@60)) $generated@@54))
 :pattern ( ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@171 $generated@@172) $generated@@60)))
)))
(assert (forall (($generated@@173 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@173 $generated@@46)  (and ($generated@@39 $generated@@40 $generated@@173 $generated@@47) (or (not (= $generated@@173 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@173 $generated@@46))
 :pattern ( ($generated@@39 $generated@@40 $generated@@173 $generated@@47))
)))
(assert (forall (($generated@@174 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@174 $generated@@50)  (and ($generated@@39 $generated@@40 $generated@@174 $generated@@51) (or (not (= $generated@@174 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@174 $generated@@50))
 :pattern ( ($generated@@39 $generated@@40 $generated@@174 $generated@@51))
)))
(assert (forall (($generated@@175 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@175 $generated@@54)  (and ($generated@@39 $generated@@40 $generated@@175 $generated@@34) (or (not (= $generated@@175 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@175 $generated@@54))
 :pattern ( ($generated@@39 $generated@@40 $generated@@175 $generated@@34))
)))
(assert (forall (($generated@@176 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@176 $generated@@57)  (and ($generated@@39 $generated@@40 $generated@@176 $generated@@35) (or (not (= $generated@@176 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@176 $generated@@57))
 :pattern ( ($generated@@39 $generated@@40 $generated@@176 $generated@@35))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and (and ($generated@@66 $generated@@177) (and (or (not (= $generated@@178 $generated@@41)) (not true)) (= ($generated@@42 $generated@@178) $generated@@35))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@177 $generated@@178) $generated)))) ($generated@@45 $generated@@40 ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@177 $generated@@178) $generated@@60)) $generated@@54 $generated@@177))
 :pattern ( ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@177 $generated@@178) $generated@@60)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@45 $generated@@40 $generated@@179 $generated@@51 $generated@@180) ($generated@@45 $generated@@40 $generated@@179 $generated@@47 $generated@@180))
 :pattern ( ($generated@@45 $generated@@40 $generated@@179 $generated@@51 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@45 $generated@@40 $generated@@181 $generated@@34 $generated@@182) ($generated@@45 $generated@@40 $generated@@181 $generated@@51 $generated@@182))
 :pattern ( ($generated@@45 $generated@@40 $generated@@181 $generated@@34 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> ($generated@@45 $generated@@40 $generated@@183 $generated@@35 $generated@@184) ($generated@@45 $generated@@40 $generated@@183 $generated@@51 $generated@@184))
 :pattern ( ($generated@@45 $generated@@40 $generated@@183 $generated@@35 $generated@@184))
)))
(assert  (=> (<= 1 $generated@@161) (forall (($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> (or ($generated@@185 $generated@@186 $generated@@187 $generated@@188) (and (< 1 $generated@@161) (and (and (and ($generated@@66 $generated@@186) ($generated@@66 $generated@@187)) ($generated@@64 $generated@@186 $generated@@187)) (and (or (not (= $generated@@188 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@188 $generated@@57) ($generated@@45 $generated@@40 $generated@@188 $generated@@57 $generated@@186)))))) (and (=> ($generated@@20 ($generated@@116 $generated@@16 ($generated@@19 true))) ($generated@@162 $generated@@186 $generated@@187 $generated@@188)) (= ($generated@@98 $generated@@186 $generated@@187 $generated@@188)  (and true ($generated@@65 $generated@@186 $generated@@187 $generated@@188)))))
 :pattern ( ($generated@@98 $generated@@186 $generated@@187 $generated@@188) ($generated@@66 $generated@@187))
))))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (!  (=> (or (not (= $generated@@189 $generated@@191)) (not true)) (=> (and ($generated@@64 $generated@@189 $generated@@190) ($generated@@64 $generated@@190 $generated@@191)) ($generated@@64 $generated@@189 $generated@@191)))
 :pattern ( ($generated@@64 $generated@@189 $generated@@190) ($generated@@64 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (!  (and (= ($generated@@192 ($generated@@61 $generated@@193 $generated@@194)) $generated@@193) (= ($generated@@32 ($generated@@61 $generated@@193 $generated@@194)) $generated@@194))
 :pattern ( ($generated@@61 $generated@@193 $generated@@194))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@T) ) (! (= ($generated@@67 $generated@@196 ($generated@@123 $generated@@196 $generated@@195)) $generated@@195)
 :pattern ( ($generated@@123 $generated@@196 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ) (!  (=> ($generated@@39 $generated@@40 $generated@@197 $generated@@51) ($generated@@39 $generated@@40 $generated@@197 $generated@@47))
 :pattern ( ($generated@@39 $generated@@40 $generated@@197 $generated@@51))
)))
(assert (forall (($generated@@198 T@U) ) (!  (=> ($generated@@39 $generated@@40 $generated@@198 $generated@@34) ($generated@@39 $generated@@40 $generated@@198 $generated@@51))
 :pattern ( ($generated@@39 $generated@@40 $generated@@198 $generated@@34))
)))
(assert (forall (($generated@@199 T@U) ) (!  (=> ($generated@@39 $generated@@40 $generated@@199 $generated@@35) ($generated@@39 $generated@@40 $generated@@199 $generated@@51))
 :pattern ( ($generated@@39 $generated@@40 $generated@@199 $generated@@35))
)))
(assert (= ($generated@@200 $generated@@46) $generated@@1))
(assert (= ($generated@@201 $generated@@46) $generated@@10))
(assert (= ($generated@@200 $generated@@50) $generated@@2))
(assert (= ($generated@@201 $generated@@50) $generated@@11))
(assert (= ($generated@@200 $generated@@47) $generated@@3))
(assert (= ($generated@@201 $generated@@47) $generated@@10))
(assert (= ($generated@@200 $generated@@57) $generated@@4))
(assert (= ($generated@@201 $generated@@57) $generated@@12))
(assert (= ($generated@@200 $generated@@51) $generated@@5))
(assert (= ($generated@@201 $generated@@51) $generated@@11))
(assert (= ($generated@@200 $generated@@54) $generated@@6))
(assert (= ($generated@@201 $generated@@54) $generated@@13))
(assert (= ($generated@@200 $generated@@34) $generated@@7))
(assert (= ($generated@@201 $generated@@34) $generated@@13))
(assert (= ($generated@@200 $generated@@35) $generated@@9))
(assert (= ($generated@@201 $generated@@35) $generated@@12))
(assert (forall (($generated@@203 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@203 $generated@@47)  (or (= $generated@@203 $generated@@41) ($generated@@202 ($generated@@42 $generated@@203))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@203 $generated@@47))
)))
(assert (forall (($generated@@204 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@204 $generated@@51)  (or (= $generated@@204 $generated@@41) ($generated@@33 ($generated@@42 $generated@@204))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@204 $generated@@51))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@T) ) (! (= ($generated@@123 $generated@@206 ($generated@@116 $generated@@206 $generated@@205)) ($generated@@116 $generated@@70 ($generated@@123 $generated@@206 $generated@@205)))
 :pattern ( ($generated@@123 $generated@@206 ($generated@@116 $generated@@206 $generated@@205)))
)))
(assert  (=> (<= 1 $generated@@161) (forall (($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (!  (=> (or ($generated@@185 $generated@@207 $generated@@208 $generated@@209) (and (< 1 $generated@@161) (and (and (and ($generated@@66 $generated@@207) ($generated@@66 $generated@@208)) ($generated@@64 $generated@@207 $generated@@208)) (and (or (not (= $generated@@209 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@209 $generated@@57) ($generated@@45 $generated@@40 $generated@@209 $generated@@57 $generated@@207)))))) (=> ($generated@@98 $generated@@207 $generated@@208 $generated@@209) ($generated@@65 $generated@@207 $generated@@208 $generated@@209)))
 :pattern ( ($generated@@98 $generated@@207 $generated@@208 $generated@@209))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@210 () T@T)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(assert (= ($generated@@15 $generated@@210) 7))
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@217  (and (=> (= (ControlFlow 0 2) (- 0 5)) ($generated@@119 ($generated@@116 $generated@@210 $generated@@37) ($generated@@116 $generated@@210 $generated@@37))) (=> ($generated@@119 ($generated@@116 $generated@@210 $generated@@37) ($generated@@116 $generated@@210 $generated@@37)) (=> (= $generated@@211 ($generated@@127 $generated@@41 $generated@@212 $generated $generated@@212 $generated)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($generated@@218 T@U) ($generated@@219 T@U) )  (=> (and (and (or (not (= $generated@@218 $generated@@41)) (not true)) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@218) $generated)))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@218) $generated)))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@218) $generated)))))) (=> (forall (($generated@@220 T@U) ($generated@@221 T@U) )  (=> (and (and (or (not (= $generated@@220 $generated@@41)) (not true)) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@220) $generated)))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@220) $generated)))) ($generated@@20 ($generated@@67 $generated@@16 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@220) $generated))))) (=> (=> ($generated@@98 $generated@@213 $generated@@212 $generated@@214) ($generated@@65 $generated@@213 $generated@@212 $generated@@214)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@98 $generated@@213 $generated@@212 $generated@@214) (=> ($generated@@162 $generated@@213 $generated@@212 $generated@@214) (or ($generated@@65 $generated@@213 $generated@@212 $generated@@214) ($generated@@20 ($generated@@116 $generated@@16 ($generated@@19 true))))))) (=> (=> ($generated@@98 $generated@@213 $generated@@212 $generated@@214) (=> ($generated@@162 $generated@@213 $generated@@212 $generated@@214) (or ($generated@@65 $generated@@213 $generated@@212 $generated@@214) ($generated@@20 ($generated@@116 $generated@@16 ($generated@@19 true)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@98 $generated@@213 $generated@@212 $generated@@214) (=> ($generated@@162 $generated@@213 $generated@@212 $generated@@214) (or ($generated@@65 $generated@@213 $generated@@212 $generated@@214) (= ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@213 $generated@@214) $generated@@60)) ($generated@@67 $generated@@40 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@40 ($generated@@71 $generated@@69 $generated@@70) $generated@@212 $generated@@214) $generated@@60)))))))))))))))))
(let (($generated@@222  (=> (and ($generated@@66 $generated@@213) ($generated@@63 $generated@@213)) (=> (and (and (and (or (not (= $generated@@214 $generated@@41)) (not true)) (and ($generated@@39 $generated@@40 $generated@@214 $generated@@57) ($generated@@45 $generated@@40 $generated@@214 $generated@@57 $generated@@215))) (= 1 $generated@@161)) (and (and (= $generated@@216 $generated@@213) (and ($generated@@64 $generated@@216 $generated@@215) ($generated@@66 $generated@@215))) (= (ControlFlow 0 6) 2))) $generated@@217))))
$generated@@222)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)