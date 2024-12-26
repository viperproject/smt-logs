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
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@46 () T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@51 () T@T)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 (T@T T@T) T@T)
(declare-fun $generated@@54 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@77 () T@U)
(declare-fun $generated@@78 (T@U T@U) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@84 (T@U T@U) Bool)
(declare-fun $generated@@85 (T@U T@U) Bool)
(declare-fun $generated@@86 (T@U) Bool)
(declare-fun $generated@@95 (Int) Int)
(declare-fun $generated@@97 (T@T T@U) T@U)
(declare-fun $generated@@100 (T@T T@U) T@U)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@120 () Int)
(declare-fun $generated@@121 (T@U T@U) Bool)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
(declare-fun $generated@@133 (T@U) T@U)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@142 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated@@1) 0))
(assert (= ($generated@@29 $generated) $generated@@0))
(assert (= ($generated@@30 $generated@@1) $generated@@2))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> (and (or (not (= $generated@@37 $generated@@33)) (not true)) (= ($generated@@34 $generated@@37) ($generated@@32 $generated@@36))) ($generated@@35 $generated@@14 ($generated@@18 ($generated@@31 $generated@@37)) $generated))
 :pattern ( ($generated@@31 $generated@@37) ($generated@@32 $generated@@36))
)))
(assert (= ($generated@@12 $generated@@39) 3))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@42 ($generated@@40 $generated@@41) $generated@@43) ($generated@@38 $generated@@39 $generated@@42 ($generated@@32 $generated@@41) $generated@@43))
 :pattern ( ($generated@@38 $generated@@39 $generated@@42 ($generated@@40 $generated@@41) $generated@@43))
 :pattern ( ($generated@@38 $generated@@39 $generated@@42 ($generated@@32 $generated@@41) $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ) (! (= ($generated@@35 $generated@@39 $generated@@45 $generated@@44)  (or (= $generated@@45 $generated@@33) (= ($generated@@34 $generated@@45) $generated@@44)))
 :pattern ( ($generated@@35 $generated@@39 $generated@@45 $generated@@44))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@47 $generated@@46 $generated@@48) ($generated@@38 $generated@@39 $generated@@47 $generated@@44 $generated@@48))
 :pattern ( ($generated@@38 $generated@@39 $generated@@47 $generated@@46 $generated@@48))
 :pattern ( ($generated@@38 $generated@@39 $generated@@47 $generated@@44 $generated@@48))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@50 $generated@@57 $generated@@58 ($generated@@54 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@50 $generated@@62 $generated@@63 ($generated@@54 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@50 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@12 $generated@@51) 4)) (= ($generated@@12 $generated@@52) 5)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (= ($generated@@12 ($generated@@53 $generated@@68 $generated@@69)) 6))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@55 ($generated@@53 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@53 $generated@@70 $generated@@71))
))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@56 ($generated@@53 $generated@@72 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@53 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@75 ($generated@@32 $generated@@74) $generated@@76)  (or (= $generated@@75 $generated@@33) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@76 $generated@@75) $generated@@1)))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@75 ($generated@@32 $generated@@74) $generated@@76))
)))
(assert (= ($generated@@28 $generated@@77) 0))
(assert (= ($generated@@78 $generated@@6 $generated@@10) $generated@@77))
(assert  (not ($generated@@79 $generated@@77)))
(assert (= ($generated@@28 $generated@@80) 0))
(assert (= ($generated@@78 $generated@@6 $generated@@11) $generated@@80))
(assert  (not ($generated@@79 $generated@@80)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@81 $generated@@44 $generated@@82)  (or (= $generated@@81 $generated@@33) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@82 $generated@@81) $generated@@1)))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@81 $generated@@44 $generated@@82))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (and (and (and ($generated@@86 $generated@@87) ($generated@@86 $generated@@88)) (and (or (not (= $generated@@89 $generated@@33)) (not true)) ($generated@@35 $generated@@39 $generated@@89 $generated@@46))) (and ($generated@@83 $generated@@87) ($generated@@84 $generated@@87 $generated@@88))) (=> (forall (($generated@@90 T@U) ($generated@@91 T@U) )  (=> (and (or (not (= $generated@@90 $generated@@33)) (not true)) (or (or (= $generated@@90 $generated@@89) (= $generated@@90 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@87 $generated@@89) $generated@@77)))) (= $generated@@90 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@87 $generated@@89) $generated@@80))))) (= ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@87 $generated@@90) $generated@@91) ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@88 $generated@@90) $generated@@91)))) (= ($generated@@85 $generated@@87 $generated@@89) ($generated@@85 $generated@@88 $generated@@89))))
 :pattern ( ($generated@@83 $generated@@87) ($generated@@84 $generated@@87 $generated@@88) ($generated@@85 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (!  (=> ($generated@@84 $generated@@92 $generated@@93) (forall (($generated@@94 T@U) ) (!  (=> ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@92 $generated@@94) $generated@@1))) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@93 $generated@@94) $generated@@1))))
 :pattern ( ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@93 $generated@@94) $generated@@1))
)))
 :pattern ( ($generated@@84 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@96 Int) ) (! (= ($generated@@95 $generated@@96) $generated@@96)
 :pattern ( ($generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@97 $generated@@99 $generated@@98) $generated@@98)
 :pattern ( ($generated@@97 $generated@@99 $generated@@98))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@100 $generated@@102 ($generated@@49 $generated@@102 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@49 $generated@@102 $generated@@101))
)))
(assert ($generated@@79 $generated@@1))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@35 $generated@@39 $generated@@104 ($generated@@40 $generated@@103))  (and ($generated@@35 $generated@@39 $generated@@104 ($generated@@32 $generated@@103)) (or (not (= $generated@@104 $generated@@33)) (not true))))
 :pattern ( ($generated@@35 $generated@@39 $generated@@104 ($generated@@40 $generated@@103)))
 :pattern ( ($generated@@35 $generated@@39 $generated@@104 ($generated@@32 $generated@@103)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (!  (=> ($generated@@84 $generated@@105 $generated@@106) (=> ($generated@@38 $generated@@109 $generated@@107 $generated@@108 $generated@@105) ($generated@@38 $generated@@109 $generated@@107 $generated@@108 $generated@@106)))
 :pattern ( ($generated@@84 $generated@@105 $generated@@106) ($generated@@38 $generated@@109 $generated@@107 $generated@@108 $generated@@105))
)))
(assert (forall (($generated@@111 T@U) ) (!  (and (= ($generated@@29 ($generated@@32 $generated@@111)) $generated@@3) (= ($generated@@110 ($generated@@32 $generated@@111)) $generated@@8))
 :pattern ( ($generated@@32 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ) (!  (and (= ($generated@@29 ($generated@@40 $generated@@112)) $generated@@4) (= ($generated@@110 ($generated@@40 $generated@@112)) $generated@@8))
 :pattern ( ($generated@@40 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> (and (and ($generated@@86 $generated@@113) (and (or (not (= $generated@@114 $generated@@33)) (not true)) (= ($generated@@34 $generated@@114) $generated@@44))) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@113 $generated@@114) $generated@@1)))) ($generated@@38 $generated@@39 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@113 $generated@@114) $generated@@77)) ($generated@@40 $generated) $generated@@113))
 :pattern ( ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@113 $generated@@114) $generated@@77)))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> (and (and ($generated@@86 $generated@@115) (and (or (not (= $generated@@116 $generated@@33)) (not true)) (= ($generated@@34 $generated@@116) $generated@@44))) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@115 $generated@@116) $generated@@1)))) ($generated@@38 $generated@@39 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@115 $generated@@116) $generated@@80)) ($generated@@40 $generated) $generated@@115))
 :pattern ( ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@115 $generated@@116) $generated@@80)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@35 $generated@@39 $generated@@118 ($generated@@32 $generated@@117))  (or (= $generated@@118 $generated@@33) (= ($generated@@34 $generated@@118) ($generated@@32 $generated@@117))))
 :pattern ( ($generated@@35 $generated@@39 $generated@@118 ($generated@@32 $generated@@117)))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@35 $generated@@39 $generated@@119 $generated@@46)  (and ($generated@@35 $generated@@39 $generated@@119 $generated@@44) (or (not (= $generated@@119 $generated@@33)) (not true))))
 :pattern ( ($generated@@35 $generated@@39 $generated@@119 $generated@@46))
 :pattern ( ($generated@@35 $generated@@39 $generated@@119 $generated@@44))
)))
(assert  (=> (<= 0 $generated@@120) (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (or ($generated@@121 $generated@@122 $generated@@123) (and (< 0 $generated@@120) (and ($generated@@86 $generated@@122) (and (or (not (= $generated@@123 $generated@@33)) (not true)) (and ($generated@@35 $generated@@39 $generated@@123 $generated@@46) ($generated@@38 $generated@@39 $generated@@123 $generated@@46 $generated@@122)))))) (= ($generated@@85 $generated@@122 $generated@@123)  (and (= ($generated@@31 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@122 $generated@@123) $generated@@77))) ($generated@@95 5)) (= ($generated@@31 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@122 $generated@@123) $generated@@80))) ($generated@@95 5)))))
 :pattern ( ($generated@@85 $generated@@122 $generated@@123) ($generated@@86 $generated@@122))
))))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or (not (= $generated@@124 $generated@@126)) (not true)) (=> (and ($generated@@84 $generated@@124 $generated@@125) ($generated@@84 $generated@@125 $generated@@126)) ($generated@@84 $generated@@124 $generated@@126)))
 :pattern ( ($generated@@84 $generated@@124 $generated@@125) ($generated@@84 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (and (= ($generated@@127 ($generated@@78 $generated@@128 $generated@@129)) $generated@@128) (= ($generated@@30 ($generated@@78 $generated@@128 $generated@@129)) $generated@@129))
 :pattern ( ($generated@@78 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ) (! (<= 0 ($generated@@31 $generated@@130))
 :pattern ( ($generated@@31 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@131 ($generated@@32 $generated@@132)) $generated@@132)
 :pattern ( ($generated@@32 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ) (! (= ($generated@@133 ($generated@@40 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@40 $generated@@134))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@T) ) (! (= ($generated@@49 $generated@@136 ($generated@@100 $generated@@136 $generated@@135)) $generated@@135)
 :pattern ( ($generated@@100 $generated@@136 $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> (and (and ($generated@@86 $generated@@138) (and (or (not (= $generated@@139 $generated@@33)) (not true)) (= ($generated@@34 $generated@@139) ($generated@@32 $generated@@137)))) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@138 $generated@@139) $generated@@1)))) ($generated@@38 $generated@@14 ($generated@@18 ($generated@@31 $generated@@139)) $generated $generated@@138))
 :pattern ( ($generated@@31 $generated@@139) ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@138 $generated@@139) $generated@@1)) ($generated@@32 $generated@@137))
)))
(assert  (and (forall (($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@140 $generated@@143 $generated@@144 $generated@@145 ($generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@149 $generated@@146) $generated@@148 $generated@@149) $generated@@146)
 :weight 0
)) (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@140 $generated@@150 $generated@@151 $generated@@152 ($generated@@142 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@140 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)) (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@140 $generated@@159 $generated@@160 $generated@@161 ($generated@@142 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@140 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)))))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 Bool) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@17 ($generated@@140 $generated@@39 $generated@@51 $generated@@13 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))  (=> (and (or (not (= $generated@@172 $generated@@168)) (not true)) ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@169 $generated@@172) $generated@@170)))) $generated@@171))
 :pattern ( ($generated@@140 $generated@@39 $generated@@51 $generated@@13 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> (and ($generated@@86 $generated@@174) (and (or (not (= $generated@@175 $generated@@33)) (not true)) (= ($generated@@34 $generated@@175) $generated@@44))) ($generated@@35 $generated@@39 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@174 $generated@@175) $generated@@77)) ($generated@@40 $generated)))
 :pattern ( ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@174 $generated@@175) $generated@@77)))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> (and ($generated@@86 $generated@@176) (and (or (not (= $generated@@177 $generated@@33)) (not true)) (= ($generated@@34 $generated@@177) $generated@@44))) ($generated@@35 $generated@@39 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@176 $generated@@177) $generated@@80)) ($generated@@40 $generated)))
 :pattern ( ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@176 $generated@@177) $generated@@80)))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> ($generated@@86 ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179) $generated@@180 $generated@@181))) ($generated@@84 $generated@@178 ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179) $generated@@180 $generated@@181))))
 :pattern ( ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@178 $generated@@179) $generated@@180 $generated@@181)))
)))
(assert (= ($generated@@29 $generated@@46) $generated@@5))
(assert (= ($generated@@110 $generated@@46) $generated@@9))
(assert (= ($generated@@29 $generated@@44) $generated@@7))
(assert (= ($generated@@110 $generated@@44) $generated@@9))
(assert (forall (($generated@@182 Int) ) (! (= ($generated@@100 $generated@@14 ($generated@@18 ($generated@@95 $generated@@182))) ($generated@@97 $generated@@52 ($generated@@100 $generated@@14 ($generated@@18 $generated@@182))))
 :pattern ( ($generated@@100 $generated@@14 ($generated@@18 ($generated@@95 $generated@@182))))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@T) ) (! (= ($generated@@100 $generated@@184 ($generated@@97 $generated@@184 $generated@@183)) ($generated@@97 $generated@@52 ($generated@@100 $generated@@184 $generated@@183)))
 :pattern ( ($generated@@100 $generated@@184 ($generated@@97 $generated@@184 $generated@@183)))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! ($generated@@38 $generated@@14 $generated@@186 $generated $generated@@185)
 :pattern ( ($generated@@38 $generated@@14 $generated@@186 $generated $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ) (! ($generated@@35 $generated@@14 $generated@@187 $generated)
 :pattern ( ($generated@@35 $generated@@14 $generated@@187 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@196  (=> (= $generated@@188 ($generated@@141 $generated@@33 $generated@@189 $generated@@1 false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (<= 0 ($generated@@95 5))) (=> (<= 0 ($generated@@95 5)) (=> (and (and (and (or (not (= $generated@@190 $generated@@33)) (not true)) ($generated@@35 $generated@@39 $generated@@190 ($generated@@32 $generated))) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 $generated@@190) $generated@@1))))) (and (and (= ($generated@@31 $generated@@190) ($generated@@95 5)) (= $generated@@191 ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 $generated@@190 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 $generated@@190) $generated@@1 ($generated@@100 $generated@@13 ($generated@@16 true)))))) (and ($generated@@86 $generated@@191) ($generated@@83 $generated@@191)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= 0 ($generated@@95 5))) (=> (<= 0 ($generated@@95 5)) (=> (and (and (and (and (or (not (= $generated@@192 $generated@@33)) (not true)) ($generated@@35 $generated@@39 $generated@@192 ($generated@@32 $generated))) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@191 $generated@@192) $generated@@1))))) (and (and (= ($generated@@31 $generated@@192) ($generated@@95 5)) (= $generated@@193 ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@191 $generated@@192 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@191 $generated@@192) $generated@@1 ($generated@@100 $generated@@13 ($generated@@16 true)))))) (and ($generated@@86 $generated@@193) ($generated@@83 $generated@@193)))) (and (and (and (or (not (= $generated@@194 $generated@@33)) (not true)) ($generated@@35 $generated@@39 $generated@@194 $generated@@44)) (and (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@193 $generated@@194) $generated@@1)))) (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@193 $generated@@194) $generated@@77)) $generated@@190))) (and (and (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@193 $generated@@194) $generated@@80)) $generated@@192) (= $generated@@195 ($generated@@54 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@193 $generated@@194 ($generated@@54 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@193 $generated@@194) $generated@@1 ($generated@@100 $generated@@13 ($generated@@16 true)))))) (and ($generated@@86 $generated@@195) ($generated@@83 $generated@@195))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (or (not (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77)) $generated@@33)) (not true)) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77))) $generated@@1)))))) (=> (and (or (not (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77)) $generated@@33)) (not true)) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77))) $generated@@1))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (or (not (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@80)) $generated@@33)) (not true)) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@80))) $generated@@1)))))) (=> (and (or (not (= ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@80)) $generated@@33)) (not true)) (not ($generated@@17 ($generated@@49 $generated@@13 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@189 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@80))) $generated@@1))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@121 $generated@@195 $generated@@194) (or ($generated@@85 $generated@@195 $generated@@194) (= ($generated@@31 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77))) ($generated@@95 5))))) (=> (=> ($generated@@121 $generated@@195 $generated@@194) (or ($generated@@85 $generated@@195 $generated@@194) (= ($generated@@31 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@77))) ($generated@@95 5)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@121 $generated@@195 $generated@@194) (or ($generated@@85 $generated@@195 $generated@@194) (= ($generated@@31 ($generated@@49 $generated@@39 ($generated@@50 $generated@@51 $generated@@52 ($generated@@50 $generated@@39 ($generated@@53 $generated@@51 $generated@@52) $generated@@195 $generated@@194) $generated@@80))) ($generated@@95 5))))))))))))))))))))
(let (($generated@@197  (=> (and (and ($generated@@86 $generated@@189) ($generated@@83 $generated@@189)) (and (= 1 $generated@@120) (= (ControlFlow 0 8) 2))) $generated@@196)))
$generated@@197)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)