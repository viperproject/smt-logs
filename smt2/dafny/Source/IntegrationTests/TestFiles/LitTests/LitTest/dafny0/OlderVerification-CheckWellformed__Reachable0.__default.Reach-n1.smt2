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
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 () Int)
(declare-fun $generated@@34 (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@35 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@37 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@53 (T@U T@U) Bool)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@56 (T@U) Int)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@58 () T@U)
(declare-fun $generated@@59 () T@U)
(declare-fun $generated@@60 () T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@68 (T@U T@U) T@U)
(declare-fun $generated@@69 (T@U) Bool)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@72 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@73 () T@T)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 (T@T T@T) T@T)
(declare-fun $generated@@76 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@77 (T@T) T@T)
(declare-fun $generated@@78 (T@T) T@T)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@101 (T@U T@U) T@U)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@106 (T@U) Bool)
(declare-fun $generated@@108 (T@U) Bool)
(declare-fun $generated@@110 (T@T T@U) T@U)
(declare-fun $generated@@117 (T@U T@U) Bool)
(declare-fun $generated@@121 (T@U T@U T@U) Bool)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@129 () T@T)
(declare-fun $generated@@140 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@141 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@149 (T@U) T@U)
(declare-fun $generated@@154 (T@U Int) T@U)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@171 (T@U) T@U)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@196 (T@U) T@U)
(declare-fun $generated@@199 (T@U) T@U)
(declare-fun $generated@@203 (T@U) Int)
(declare-fun $generated@@206 (T@U) Int)
(declare-fun $generated@@227 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@228 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@229 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@270 (T@U) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (= ($generated@@30 $generated@@3) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@32 $generated@@3) $generated@@4))
(assert  (and (and (= ($generated@@14 $generated@@38) 3) (= ($generated@@14 $generated@@41) 4)) (= ($generated@@14 $generated@@43) 5)))
(assert  (=> (<= 1 $generated@@33) (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (or ($generated@@35 $generated@@47 $generated@@48 $generated@@49 $generated@@50 $generated@@51) (and (< 1 $generated@@33) (and (and (and (and ($generated@@36 $generated@@47) (and ($generated@@37 $generated@@38 $generated@@48 $generated@@39) ($generated@@40 $generated@@38 $generated@@48 $generated@@39 $generated@@47))) (and ($generated@@37 $generated@@41 $generated@@49 ($generated@@42 $generated@@39)) ($generated@@40 $generated@@41 $generated@@49 ($generated@@42 $generated@@39) $generated@@47))) (and ($generated@@37 $generated@@38 $generated@@50 $generated@@39) ($generated@@40 $generated@@38 $generated@@50 $generated@@39 $generated@@47))) (and ($generated@@37 $generated@@43 $generated@@51 ($generated@@44 $generated@@39)) ($generated@@40 $generated@@43 $generated@@51 ($generated@@44 $generated@@39) $generated@@47))))) (forall (($generated@@52 T@U) ) (!  (=> (and (and ($generated@@36 $generated@@52) ($generated@@45 $generated@@52)) (and ($generated@@34 $generated@@46 $generated@@47 $generated@@48 $generated@@49 $generated@@50 $generated@@51) (and (and ($generated@@40 $generated@@38 $generated@@48 $generated@@39 $generated@@52) ($generated@@40 $generated@@38 $generated@@50 $generated@@39 $generated@@52)) ($generated@@40 $generated@@43 $generated@@51 ($generated@@44 $generated@@39) $generated@@52)))) ($generated@@40 $generated@@41 $generated@@49 ($generated@@42 $generated@@39) $generated@@52))
 :pattern ( ($generated@@45 $generated@@52))
)))
 :pattern ( ($generated@@34 $generated@@46 $generated@@47 $generated@@48 $generated@@49 $generated@@50 $generated@@51))
))))
(assert (forall (($generated@@55 T@U) ) (!  (not ($generated@@53 $generated@@54 $generated@@55))
 :pattern ( ($generated@@53 $generated@@54 $generated@@55))
)))
(assert (= ($generated@@56 $generated@@54) 0))
(assert (= ($generated@@57 $generated@@58) $generated@@9))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@37 $generated@@38 $generated@@62 $generated@@59)  (or (= $generated@@62 $generated@@60) (= ($generated@@61 $generated@@62) $generated@@59)))
 :pattern ( ($generated@@37 $generated@@38 $generated@@62 $generated@@59))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@40 $generated@@38 $generated@@63 $generated@@39 $generated@@64) ($generated@@40 $generated@@38 $generated@@63 $generated@@59 $generated@@64))
 :pattern ( ($generated@@40 $generated@@38 $generated@@63 $generated@@39 $generated@@64))
 :pattern ( ($generated@@40 $generated@@38 $generated@@63 $generated@@59 $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> ($generated@@36 $generated@@66) ($generated@@40 $generated@@41 $generated@@58 ($generated@@42 $generated@@65) $generated@@66))
 :pattern ( ($generated@@40 $generated@@41 $generated@@58 ($generated@@42 $generated@@65) $generated@@66))
)))
(assert (= ($generated@@30 $generated@@67) 0))
(assert (= ($generated@@68 $generated@@7 $generated@@13) $generated@@67))
(assert  (not ($generated@@69 $generated@@67)))
(assert (forall (($generated@@70 T@U) ) (! ($generated@@37 $generated@@41 $generated@@58 ($generated@@42 $generated@@70))
 :pattern ( ($generated@@37 $generated@@41 $generated@@58 ($generated@@42 $generated@@70)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@79 T@T) ($generated@@80 T@T) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@72 $generated@@79 $generated@@80 ($generated@@76 $generated@@79 $generated@@80 $generated@@82 $generated@@83 $generated@@81) $generated@@83) $generated@@81)
 :weight 0
)) (forall (($generated@@84 T@T) ($generated@@85 T@T) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (or (= $generated@@88 $generated@@89) (= ($generated@@72 $generated@@84 $generated@@85 ($generated@@76 $generated@@84 $generated@@85 $generated@@87 $generated@@88 $generated@@86) $generated@@89) ($generated@@72 $generated@@84 $generated@@85 $generated@@87 $generated@@89)))
 :weight 0
))) (= ($generated@@14 $generated@@73) 6)) (= ($generated@@14 $generated@@74) 7)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (= ($generated@@14 ($generated@@75 $generated@@90 $generated@@91)) 8))) (forall (($generated@@92 T@T) ($generated@@93 T@T) ) (! (= ($generated@@77 ($generated@@75 $generated@@92 $generated@@93)) $generated@@92)
 :pattern ( ($generated@@75 $generated@@92 $generated@@93))
))) (forall (($generated@@94 T@T) ($generated@@95 T@T) ) (! (= ($generated@@78 ($generated@@75 $generated@@94 $generated@@95)) $generated@@95)
 :pattern ( ($generated@@75 $generated@@94 $generated@@95))
))))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@40 $generated@@38 $generated@@96 $generated@@59 $generated@@97)  (or (= $generated@@96 $generated@@60) ($generated@@19 ($generated@@71 $generated@@15 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@97 $generated@@96) $generated@@3)))))
 :pattern ( ($generated@@40 $generated@@38 $generated@@96 $generated@@59 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 $generated@@99) $generated@@99)
 :pattern ( ($generated@@98 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@37 $generated@@41 ($generated@@101 $generated@@104 $generated@@105) ($generated@@42 $generated@@103))  (and ($generated@@37 $generated@@41 $generated@@104 ($generated@@42 $generated@@103)) ($generated@@102 $generated@@105 $generated@@103)))
 :pattern ( ($generated@@37 $generated@@41 ($generated@@101 $generated@@104 $generated@@105) ($generated@@42 $generated@@103)))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@106 $generated@@107) (= ($generated@@57 $generated@@107) $generated@@9))
 :pattern ( ($generated@@106 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@108 $generated@@109) (= ($generated@@57 $generated@@109) $generated@@10))
 :pattern ( ($generated@@108 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@110 $generated@@112 ($generated@@71 $generated@@112 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@71 $generated@@112 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ) (!  (=> ($generated@@108 $generated@@113) (exists (($generated@@114 T@U) ($generated@@115 T@U) ) (= $generated@@113 ($generated@@101 $generated@@114 $generated@@115))))
 :pattern ( ($generated@@108 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ) (!  (=> ($generated@@106 $generated@@116) (= $generated@@116 $generated@@58))
 :pattern ( ($generated@@106 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@37 $generated@@43 $generated@@118 ($generated@@44 $generated@@119)) (forall (($generated@@120 T@U) ) (!  (=> ($generated@@117 $generated@@118 $generated@@120) ($generated@@102 $generated@@120 $generated@@119))
 :pattern ( ($generated@@117 $generated@@118 $generated@@120))
)))
 :pattern ( ($generated@@37 $generated@@43 $generated@@118 ($generated@@44 $generated@@119)))
)))
(assert ($generated@@69 $generated@@3))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@121 ($generated@@110 $generated@@125 $generated@@122) $generated@@123 $generated@@124) ($generated@@40 $generated@@125 $generated@@122 $generated@@123 $generated@@124))
 :pattern ( ($generated@@121 ($generated@@110 $generated@@125 $generated@@122) $generated@@123 $generated@@124))
)))
(assert (= ($generated@@14 $generated@@129) 9))
(assert  (=> (<= 1 $generated@@33) (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (or ($generated@@35 $generated@@131 $generated@@132 $generated@@133 $generated@@134 $generated@@135) (and (< 1 $generated@@33) (and (and (and (and ($generated@@36 $generated@@131) ($generated@@37 $generated@@38 $generated@@132 $generated@@39)) ($generated@@37 $generated@@41 $generated@@133 ($generated@@42 $generated@@39))) ($generated@@37 $generated@@38 $generated@@134 $generated@@39)) ($generated@@37 $generated@@43 $generated@@135 ($generated@@44 $generated@@39))))) (and (=> (not ($generated@@106 $generated@@133)) (let (($generated@@136 ($generated@@71 $generated@@38 ($generated@@127 $generated@@133))))
(let (($generated@@137 ($generated@@128 $generated@@133)))
 (=> ($generated@@117 $generated@@135 ($generated@@110 $generated@@38 $generated@@136)) (=> ($generated@@53 ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@131 $generated@@136) $generated@@67)) ($generated@@110 $generated@@38 $generated@@134)) ($generated@@35 $generated@@131 $generated@@132 $generated@@137 $generated@@136 $generated@@135)))))) (= ($generated@@34 ($generated@@126 $generated@@130) $generated@@131 $generated@@132 $generated@@133 $generated@@134 $generated@@135) (ite ($generated@@106 $generated@@133) (= $generated@@132 $generated@@134) (let (($generated@@138 ($generated@@71 $generated@@38 ($generated@@127 $generated@@133))))
(let (($generated@@139 ($generated@@128 $generated@@133)))
 (and (and ($generated@@117 $generated@@135 ($generated@@110 $generated@@38 $generated@@138)) ($generated@@53 ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@131 $generated@@138) $generated@@67)) ($generated@@110 $generated@@38 $generated@@134))) ($generated@@34 $generated@@130 $generated@@131 $generated@@132 $generated@@139 $generated@@138 $generated@@135))))))))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@130) $generated@@131 $generated@@132 $generated@@133 $generated@@134 $generated@@135) ($generated@@36 $generated@@131))
))))
(assert  (=> (<= 2 $generated@@33) (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (or ($generated@@141 $generated@@143 $generated@@144 $generated@@145 $generated@@146) (and (< 2 $generated@@33) (and (and (and ($generated@@36 $generated@@143) ($generated@@37 $generated@@38 $generated@@144 $generated@@39)) ($generated@@37 $generated@@38 $generated@@145 $generated@@39)) ($generated@@37 $generated@@43 $generated@@146 ($generated@@44 $generated@@39))))) (and (forall (($generated@@147 T@U) ) (!  (=> ($generated@@37 $generated@@41 $generated@@147 ($generated@@42 $generated@@39)) ($generated@@35 $generated@@143 $generated@@144 $generated@@147 $generated@@145 $generated@@146))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@142) $generated@@143 $generated@@144 $generated@@147 $generated@@145 $generated@@146))
)) (= ($generated@@140 $generated@@143 $generated@@144 $generated@@145 $generated@@146) (exists (($generated@@148 T@U) ) (!  (and ($generated@@37 $generated@@41 $generated@@148 ($generated@@42 $generated@@39)) ($generated@@34 ($generated@@126 $generated@@142) $generated@@143 $generated@@144 $generated@@148 $generated@@145 $generated@@146))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@142) $generated@@143 $generated@@144 $generated@@148 $generated@@145 $generated@@146))
)))))
 :pattern ( ($generated@@140 $generated@@143 $generated@@144 $generated@@145 $generated@@146) ($generated@@36 $generated@@143))
))))
(assert (forall (($generated@@150 T@U) ) (!  (and (= ($generated@@31 ($generated@@42 $generated@@150)) $generated@@6) (= ($generated@@149 ($generated@@42 $generated@@150)) $generated@@12))
 :pattern ( ($generated@@42 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (!  (=> ($generated@@102 $generated@@151 $generated@@39) (and (= ($generated@@110 $generated@@38 ($generated@@71 $generated@@38 $generated@@151)) $generated@@151) ($generated@@37 $generated@@38 ($generated@@71 $generated@@38 $generated@@151) $generated@@39)))
 :pattern ( ($generated@@102 $generated@@151 $generated@@39))
)))
(assert (forall (($generated@@152 T@U) ) (!  (=> ($generated@@102 $generated@@152 $generated@@59) (and (= ($generated@@110 $generated@@38 ($generated@@71 $generated@@38 $generated@@152)) $generated@@152) ($generated@@37 $generated@@38 ($generated@@71 $generated@@38 $generated@@152) $generated@@59)))
 :pattern ( ($generated@@102 $generated@@152 $generated@@59))
)))
(assert (forall (($generated@@153 T@U) ) (! (= ($generated@@37 $generated@@38 $generated@@153 $generated@@39)  (and ($generated@@37 $generated@@38 $generated@@153 $generated@@59) (or (not (= $generated@@153 $generated@@60)) (not true))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@153 $generated@@39))
 :pattern ( ($generated@@37 $generated@@38 $generated@@153 $generated@@59))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@53 $generated@@155 $generated@@156) (exists (($generated@@157 Int) ) (!  (and (and (<= 0 $generated@@157) (< $generated@@157 ($generated@@56 $generated@@155))) (= ($generated@@154 $generated@@155 $generated@@157) $generated@@156))
 :pattern ( ($generated@@154 $generated@@155 $generated@@157))
)))
 :pattern ( ($generated@@53 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> (and ($generated@@36 $generated@@159) (and (or (not (= $generated@@160 $generated@@60)) (not true)) (= ($generated@@61 $generated@@160) $generated@@59))) ($generated@@37 $generated@@129 ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@159 $generated@@160) $generated@@67)) ($generated@@158 $generated@@39)))
 :pattern ( ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@159 $generated@@160) $generated@@67)))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> (and (and ($generated@@36 $generated@@161) (and (or (not (= $generated@@162 $generated@@60)) (not true)) (= ($generated@@61 $generated@@162) $generated@@59))) ($generated@@19 ($generated@@71 $generated@@15 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@161 $generated@@162) $generated@@3)))) ($generated@@40 $generated@@129 ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@161 $generated@@162) $generated@@67)) ($generated@@158 $generated@@39) $generated@@161))
 :pattern ( ($generated@@71 $generated@@129 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@161 $generated@@162) $generated@@67)))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@37 $generated@@41 $generated@@164 ($generated@@42 $generated@@163)) (or ($generated@@106 $generated@@164) ($generated@@108 $generated@@164)))
 :pattern ( ($generated@@108 $generated@@164) ($generated@@37 $generated@@41 $generated@@164 ($generated@@42 $generated@@163)))
 :pattern ( ($generated@@106 $generated@@164) ($generated@@37 $generated@@41 $generated@@164 ($generated@@42 $generated@@163)))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@34 ($generated@@126 $generated@@165) $generated@@166 $generated@@167 $generated@@168 $generated@@169 $generated@@170) ($generated@@34 $generated@@165 $generated@@166 $generated@@167 $generated@@168 $generated@@169 $generated@@170))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@165) $generated@@166 $generated@@167 $generated@@168 $generated@@169 $generated@@170))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (!  (and (= ($generated@@171 ($generated@@68 $generated@@172 $generated@@173)) $generated@@172) (= ($generated@@32 ($generated@@68 $generated@@172 $generated@@173)) $generated@@173))
 :pattern ( ($generated@@68 $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@174 T@U) ) (!  (=> ($generated@@102 $generated@@174 $generated) (and (= ($generated@@110 $generated@@15 ($generated@@71 $generated@@15 $generated@@174)) $generated@@174) ($generated@@37 $generated@@15 ($generated@@71 $generated@@15 $generated@@174) $generated)))
 :pattern ( ($generated@@102 $generated@@174 $generated))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@T) ) (! (= ($generated@@102 ($generated@@110 $generated@@177 $generated@@175) $generated@@176) ($generated@@37 $generated@@177 $generated@@175 $generated@@176))
 :pattern ( ($generated@@102 ($generated@@110 $generated@@177 $generated@@175) $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ) (! (<= 0 ($generated@@56 $generated@@178))
 :pattern ( ($generated@@56 $generated@@178))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@40 $generated@@43 $generated@@179 ($generated@@44 $generated@@180) $generated@@181) (forall (($generated@@182 T@U) ) (!  (=> ($generated@@117 $generated@@179 $generated@@182) ($generated@@121 $generated@@182 $generated@@180 $generated@@181))
 :pattern ( ($generated@@117 $generated@@179 $generated@@182))
)))
 :pattern ( ($generated@@40 $generated@@43 $generated@@179 ($generated@@44 $generated@@180) $generated@@181))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@57 ($generated@@101 $generated@@183 $generated@@184)) $generated@@10)
 :pattern ( ($generated@@101 $generated@@183 $generated@@184))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! (= ($generated@@128 ($generated@@101 $generated@@185 $generated@@186)) $generated@@185)
 :pattern ( ($generated@@101 $generated@@185 $generated@@186))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@127 ($generated@@101 $generated@@187 $generated@@188)) $generated@@188)
 :pattern ( ($generated@@101 $generated@@187 $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@40 $generated@@129 $generated@@189 ($generated@@158 $generated@@190) $generated@@191) (forall (($generated@@192 Int) ) (!  (=> (and (<= 0 $generated@@192) (< $generated@@192 ($generated@@56 $generated@@189))) ($generated@@121 ($generated@@154 $generated@@189 $generated@@192) $generated@@190 $generated@@191))
 :pattern ( ($generated@@154 $generated@@189 $generated@@192))
)))
 :pattern ( ($generated@@40 $generated@@129 $generated@@189 ($generated@@158 $generated@@190) $generated@@191))
)))
(assert (forall (($generated@@194 T@U) ) (! (= ($generated@@193 ($generated@@44 $generated@@194)) $generated@@194)
 :pattern ( ($generated@@44 $generated@@194))
)))
(assert (forall (($generated@@195 T@U) ) (! (= ($generated@@31 ($generated@@44 $generated@@195)) $generated@@1)
 :pattern ( ($generated@@44 $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ) (! (= ($generated@@196 ($generated@@158 $generated@@197)) $generated@@197)
 :pattern ( ($generated@@158 $generated@@197))
)))
(assert (forall (($generated@@198 T@U) ) (! (= ($generated@@31 ($generated@@158 $generated@@198)) $generated@@2)
 :pattern ( ($generated@@158 $generated@@198))
)))
(assert (forall (($generated@@200 T@U) ) (! (= ($generated@@199 ($generated@@42 $generated@@200)) $generated@@200)
 :pattern ( ($generated@@42 $generated@@200))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@T) ) (! (= ($generated@@71 $generated@@202 ($generated@@110 $generated@@202 $generated@@201)) $generated@@201)
 :pattern ( ($generated@@110 $generated@@202 $generated@@201))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! (< ($generated@@203 $generated@@204) ($generated@@203 ($generated@@101 $generated@@204 $generated@@205)))
 :pattern ( ($generated@@101 $generated@@204 $generated@@205))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ) (! (< ($generated@@206 $generated@@208) ($generated@@203 ($generated@@101 $generated@@207 $generated@@208)))
 :pattern ( ($generated@@101 $generated@@207 $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (=> (and ($generated@@36 $generated@@211) (and ($generated@@108 $generated@@209) ($generated@@40 $generated@@41 $generated@@209 ($generated@@42 $generated@@210) $generated@@211))) ($generated@@121 ($generated@@127 $generated@@209) $generated@@210 $generated@@211))
 :pattern ( ($generated@@121 ($generated@@127 $generated@@209) $generated@@210 $generated@@211))
)))
(assert (forall (($generated@@212 T@U) ) (! (= ($generated@@206 ($generated@@110 $generated@@41 $generated@@212)) ($generated@@203 $generated@@212))
 :pattern ( ($generated@@206 ($generated@@110 $generated@@41 $generated@@212)))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> ($generated@@102 $generated@@213 ($generated@@44 $generated@@214)) (and (= ($generated@@110 $generated@@43 ($generated@@71 $generated@@43 $generated@@213)) $generated@@213) ($generated@@37 $generated@@43 ($generated@@71 $generated@@43 $generated@@213) ($generated@@44 $generated@@214))))
 :pattern ( ($generated@@102 $generated@@213 ($generated@@44 $generated@@214)))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> ($generated@@102 $generated@@215 ($generated@@158 $generated@@216)) (and (= ($generated@@110 $generated@@129 ($generated@@71 $generated@@129 $generated@@215)) $generated@@215) ($generated@@37 $generated@@129 ($generated@@71 $generated@@129 $generated@@215) ($generated@@158 $generated@@216))))
 :pattern ( ($generated@@102 $generated@@215 ($generated@@158 $generated@@216)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> ($generated@@102 $generated@@218 ($generated@@42 $generated@@217)) (and (= ($generated@@110 $generated@@41 ($generated@@71 $generated@@41 $generated@@218)) $generated@@218) ($generated@@37 $generated@@41 ($generated@@71 $generated@@41 $generated@@218) ($generated@@42 $generated@@217))))
 :pattern ( ($generated@@102 $generated@@218 ($generated@@42 $generated@@217)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (and ($generated@@36 $generated@@221) (and ($generated@@108 $generated@@219) ($generated@@40 $generated@@41 $generated@@219 ($generated@@42 $generated@@220) $generated@@221))) ($generated@@40 $generated@@41 ($generated@@128 $generated@@219) ($generated@@42 $generated@@220) $generated@@221))
 :pattern ( ($generated@@40 $generated@@41 ($generated@@128 $generated@@219) ($generated@@42 $generated@@220) $generated@@221))
)))
(assert (= ($generated@@31 $generated@@39) $generated@@5))
(assert (= ($generated@@149 $generated@@39) $generated@@11))
(assert (= ($generated@@31 $generated@@59) $generated@@8))
(assert (= ($generated@@149 $generated@@59) $generated@@11))
(assert (= $generated@@58 ($generated@@98 $generated@@41 $generated@@58)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (! (= ($generated@@101 ($generated@@98 $generated@@41 $generated@@222) ($generated@@98 $generated@@74 $generated@@223)) ($generated@@98 $generated@@41 ($generated@@101 $generated@@222 $generated@@223)))
 :pattern ( ($generated@@101 ($generated@@98 $generated@@41 $generated@@222) ($generated@@98 $generated@@74 $generated@@223)))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@T) ) (! (= ($generated@@110 $generated@@225 ($generated@@98 $generated@@225 $generated@@224)) ($generated@@98 $generated@@74 ($generated@@110 $generated@@225 $generated@@224)))
 :pattern ( ($generated@@110 $generated@@225 ($generated@@98 $generated@@225 $generated@@224)))
)))
(assert (forall (($generated@@226 T@U) ) (!  (=> (= ($generated@@56 $generated@@226) 0) (= $generated@@226 $generated@@54))
 :pattern ( ($generated@@56 $generated@@226))
)))
(assert  (and (forall (($generated@@230 T@T) ($generated@@231 T@T) ($generated@@232 T@T) ($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (! (= ($generated@@227 $generated@@230 $generated@@231 $generated@@232 ($generated@@229 $generated@@230 $generated@@231 $generated@@232 $generated@@234 $generated@@235 $generated@@236 $generated@@233) $generated@@235 $generated@@236) $generated@@233)
 :weight 0
)) (and (forall (($generated@@237 T@T) ($generated@@238 T@T) ($generated@@239 T@T) ($generated@@240 T@U) ($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ($generated@@244 T@U) ($generated@@245 T@U) ) (!  (or (= $generated@@242 $generated@@244) (= ($generated@@227 $generated@@237 $generated@@238 $generated@@239 ($generated@@229 $generated@@237 $generated@@238 $generated@@239 $generated@@241 $generated@@242 $generated@@243 $generated@@240) $generated@@244 $generated@@245) ($generated@@227 $generated@@237 $generated@@238 $generated@@239 $generated@@241 $generated@@244 $generated@@245)))
 :weight 0
)) (forall (($generated@@246 T@T) ($generated@@247 T@T) ($generated@@248 T@T) ($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ) (!  (or (= $generated@@252 $generated@@254) (= ($generated@@227 $generated@@246 $generated@@247 $generated@@248 ($generated@@229 $generated@@246 $generated@@247 $generated@@248 $generated@@250 $generated@@251 $generated@@252 $generated@@249) $generated@@253 $generated@@254) ($generated@@227 $generated@@246 $generated@@247 $generated@@248 $generated@@250 $generated@@253 $generated@@254)))
 :weight 0
)))))
(assert (forall (($generated@@255 T@U) ($generated@@256 T@U) ($generated@@257 T@U) ($generated@@258 T@U) ($generated@@259 T@U) ($generated@@260 T@U) ) (! (= ($generated@@19 ($generated@@227 $generated@@38 $generated@@73 $generated@@15 ($generated@@228 $generated@@255 $generated@@256 $generated@@257 $generated@@258) $generated@@259 $generated@@260))  (=> (and (or (not (= $generated@@259 $generated@@255)) (not true)) ($generated@@19 ($generated@@71 $generated@@15 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@256 $generated@@259) $generated@@257)))) ($generated@@117 $generated@@258 ($generated@@110 $generated@@38 $generated@@259))))
 :pattern ( ($generated@@227 $generated@@38 $generated@@73 $generated@@15 ($generated@@228 $generated@@255 $generated@@256 $generated@@257 $generated@@258) $generated@@259 $generated@@260))
)))
(assert (forall (($generated@@261 T@U) ($generated@@262 T@U) ($generated@@263 T@U) ($generated@@264 T@U) ) (!  (=> ($generated@@36 $generated@@264) (= ($generated@@40 $generated@@41 ($generated@@101 $generated@@262 $generated@@263) ($generated@@42 $generated@@261) $generated@@264)  (and ($generated@@40 $generated@@41 $generated@@262 ($generated@@42 $generated@@261) $generated@@264) ($generated@@121 $generated@@263 $generated@@261 $generated@@264))))
 :pattern ( ($generated@@40 $generated@@41 ($generated@@101 $generated@@262 $generated@@263) ($generated@@42 $generated@@261) $generated@@264))
)))
(assert (forall (($generated@@265 T@U) ($generated@@266 T@U) ) (! ($generated@@40 $generated@@15 $generated@@266 $generated $generated@@265)
 :pattern ( ($generated@@40 $generated@@15 $generated@@266 $generated $generated@@265))
)))
(assert (forall (($generated@@267 T@U) ($generated@@268 T@U) ) (! (= ($generated@@37 $generated@@129 $generated@@267 ($generated@@158 $generated@@268)) (forall (($generated@@269 Int) ) (!  (=> (and (<= 0 $generated@@269) (< $generated@@269 ($generated@@56 $generated@@267))) ($generated@@102 ($generated@@154 $generated@@267 $generated@@269) $generated@@268))
 :pattern ( ($generated@@154 $generated@@267 $generated@@269))
)))
 :pattern ( ($generated@@37 $generated@@129 $generated@@267 ($generated@@158 $generated@@268)))
)))
(assert (forall (($generated@@271 T@U) ($generated@@272 Int) ) (!  (=> (and (<= 0 $generated@@272) (< $generated@@272 ($generated@@56 $generated@@271))) (< ($generated@@203 ($generated@@71 $generated@@41 ($generated@@154 $generated@@271 $generated@@272))) ($generated@@270 $generated@@271)))
 :pattern ( ($generated@@203 ($generated@@71 $generated@@41 ($generated@@154 $generated@@271 $generated@@272))))
)))
(assert (forall (($generated@@273 T@U) ) (! ($generated@@37 $generated@@15 $generated@@273 $generated)
 :pattern ( ($generated@@37 $generated@@15 $generated@@273 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@274 () T@U)
(declare-fun $generated@@275 () T@U)
(declare-fun $generated@@276 () T@U)
(declare-fun $generated@@277 () T@U)
(declare-fun $generated@@278 () Bool)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () Bool)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@283  (=> (and (and (= ($generated@@140 $generated@@274 $generated@@275 $generated@@276 $generated@@277) (exists (($generated@@284 T@U) ) (!  (and ($generated@@37 $generated@@41 $generated@@284 ($generated@@42 $generated@@39)) ($generated@@34 ($generated@@126 $generated@@142) $generated@@274 $generated@@275 $generated@@284 $generated@@276 $generated@@277))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@142) $generated@@274 $generated@@275 $generated@@284 $generated@@276 $generated@@277))
))) (forall (($generated@@285 T@U) ) (!  (=> ($generated@@37 $generated@@41 $generated@@285 ($generated@@42 $generated@@39)) ($generated@@35 $generated@@274 $generated@@275 $generated@@285 $generated@@276 $generated@@277))
 :pattern ( ($generated@@34 ($generated@@126 $generated@@142) $generated@@274 $generated@@275 $generated@@285 $generated@@276 $generated@@277))
))) (and ($generated@@37 $generated@@15 ($generated@@18 ($generated@@140 $generated@@274 $generated@@275 $generated@@276 $generated@@277)) $generated) (= (ControlFlow 0 3) (- 0 2)))) $generated@@278)))
(let (($generated@@286  (=> (not (and ($generated@@37 $generated@@41 $generated@@279 ($generated@@42 $generated@@39)) ($generated@@40 $generated@@41 $generated@@279 ($generated@@42 $generated@@39) $generated@@274))) (=> (and (= $generated@@278 true) (= (ControlFlow 0 5) 3)) $generated@@283))))
(let (($generated@@287  (=> (and ($generated@@37 $generated@@41 $generated@@279 ($generated@@42 $generated@@39)) ($generated@@40 $generated@@41 $generated@@279 ($generated@@42 $generated@@39) $generated@@274)) (=> (and (and (and ($generated@@40 $generated@@38 $generated@@275 $generated@@39 $generated@@274) ($generated@@40 $generated@@41 $generated@@279 ($generated@@42 $generated@@39) $generated@@274)) (and ($generated@@40 $generated@@38 $generated@@276 $generated@@39 $generated@@274) ($generated@@40 $generated@@43 $generated@@277 ($generated@@44 $generated@@39) $generated@@274))) (and (and (= $generated@@280 (forall (($generated@@288 T@U) ($generated@@289 T@U) )  (=> (and (and (or (not (= $generated@@288 $generated@@60)) (not true)) ($generated@@19 ($generated@@71 $generated@@15 ($generated@@72 $generated@@73 $generated@@74 ($generated@@72 $generated@@38 ($generated@@75 $generated@@73 $generated@@74) $generated@@274 $generated@@288) $generated@@3)))) ($generated@@117 $generated@@277 ($generated@@110 $generated@@38 $generated@@288))) ($generated@@19 ($generated@@227 $generated@@38 $generated@@73 $generated@@15 $generated@@281 $generated@@288 $generated@@289))))) ($generated@@35 $generated@@274 $generated@@275 $generated@@279 $generated@@276 $generated@@277)) (and (= $generated@@278 $generated@@280) (= (ControlFlow 0 4) 3)))) $generated@@283))))
(let (($generated@@290 true))
(let (($generated@@291  (=> (= $generated@@281 ($generated@@228 $generated@@60 $generated@@274 $generated@@3 $generated@@277)) (and (and (=> (= (ControlFlow 0 6) 1) $generated@@290) (=> (= (ControlFlow 0 6) 4) $generated@@287)) (=> (= (ControlFlow 0 6) 5) $generated@@286)))))
(let (($generated@@292  (=> (and (and (and ($generated@@36 $generated@@274) ($generated@@282 $generated@@274)) ($generated@@37 $generated@@38 $generated@@275 $generated@@39)) (and (and ($generated@@37 $generated@@38 $generated@@276 $generated@@39) ($generated@@37 $generated@@43 $generated@@277 ($generated@@44 $generated@@39))) (and (= 2 $generated@@33) (= (ControlFlow 0 7) 6)))) $generated@@291)))
$generated@@292)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)