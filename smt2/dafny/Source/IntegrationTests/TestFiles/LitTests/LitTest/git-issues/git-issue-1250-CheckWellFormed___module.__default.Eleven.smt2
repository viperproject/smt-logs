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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () Int)
(declare-fun $generated@@28 (T@U Int T@U) Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (Int T@U) Bool)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@47 (T@U Int) Int)
(declare-fun $generated@@48 (Int) Bool)
(declare-fun $generated@@49 () Int)
(declare-fun $generated@@50 () Int)
(declare-fun $generated@@53 (T@U T@U) Bool)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@56 (T@U T@U) T@U)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@65 (T@U Int) Bool)
(declare-fun $generated@@68 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 (T@U T@U) Bool)
(declare-fun $generated@@92 (T@U T@U T@U) Bool)
(declare-fun $generated@@97 (T@U T@U) T@U)
(declare-fun $generated@@110 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@143 (T@U) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@149 (T@U) T@U)
(declare-fun $generated@@167 () T@T)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@170 () T@T)
(declare-fun $generated@@171 () T@T)
(declare-fun $generated@@172 (T@T T@T) T@T)
(declare-fun $generated@@173 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@174 (T@T) T@T)
(declare-fun $generated@@175 (T@T) T@T)
(declare-fun $generated@@208 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@209 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@210 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@242 (T@U) T@U)
(declare-fun $generated@@249 (Int Int) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (= ($generated@@10 $generated@@34) 3))
(assert  (=> (<= 0 $generated@@27) (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 Int) ($generated@@43 T@U) ) (!  (=> (or ($generated@@31 $generated@@42 $generated@@43) (and (< 0 $generated@@27) (and (and ($generated@@30 $generated@@41) (<= ($generated@@32 0) $generated@@42)) ($generated@@33 $generated@@34 $generated@@43 ($generated@@35 $generated@@36 $generated))))) (and (=> (or (not (= $generated@@42 ($generated@@32 0))) (not true)) ($generated@@31 (- $generated@@42 1) $generated@@43)) (= ($generated@@28 ($generated@@29 $generated@@40) $generated@@42 $generated@@43) (+ ($generated@@17 ($generated@@37 $generated@@12 ($generated@@38 $generated@@36 $generated $generated@@41 $generated@@43 ($generated@@39 $generated@@12 ($generated@@16 $generated@@42))))) (ite (= $generated@@42 ($generated@@32 0)) 0 ($generated@@28 $generated@@40 (- $generated@@42 1) $generated@@43))))))
 :pattern ( ($generated@@28 ($generated@@29 $generated@@40) $generated@@42 $generated@@43) ($generated@@30 $generated@@41))
))))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ) (! ($generated@@44 $generated@@12 $generated@@45 $generated@@36 $generated@@46)
 :pattern ( ($generated@@44 $generated@@12 $generated@@45 $generated@@36 $generated@@46))
)))
(assert  (=> (<= 1 $generated@@27) (forall (($generated@@51 T@U) ($generated@@52 Int) ) (!  (=> (or ($generated@@48 $generated@@52) (and (< 1 $generated@@27) (<= ($generated@@32 0) $generated@@52))) (and (=> (or (not (= $generated@@52 ($generated@@32 0))) (not true)) (=> (or (not (= $generated@@52 ($generated@@32 1))) (not true)) (and ($generated@@48 (- $generated@@52 2)) ($generated@@48 (- $generated@@52 1))))) (= ($generated@@47 ($generated@@29 $generated@@51) $generated@@52) (ite (= $generated@@52 ($generated@@32 0)) $generated@@49 (ite (= $generated@@52 ($generated@@32 1)) $generated@@50 (+ ($generated@@47 $generated@@51 (- $generated@@52 2)) ($generated@@47 $generated@@51 (- $generated@@52 1))))))))
 :pattern ( ($generated@@47 ($generated@@29 $generated@@51) $generated@@52))
))))
(assert (forall (($generated@@55 T@U) ) (!  (not ($generated@@53 $generated@@54 $generated@@55))
 :pattern ( ($generated@@53 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (!  (=> (and (and ($generated@@33 $generated@@34 $generated@@58 ($generated@@56 $generated@@59 $generated@@60)) (forall (($generated@@63 T@U) ) (!  (=> ($generated@@57 $generated@@63 $generated@@61) ($generated@@57 $generated@@63 $generated@@59))
 :pattern ( ($generated@@57 $generated@@63 $generated@@61))
 :pattern ( ($generated@@57 $generated@@63 $generated@@59))
))) (forall (($generated@@64 T@U) ) (!  (=> ($generated@@57 $generated@@64 $generated@@60) ($generated@@57 $generated@@64 $generated@@62))
 :pattern ( ($generated@@57 $generated@@64 $generated@@60))
 :pattern ( ($generated@@57 $generated@@64 $generated@@62))
))) ($generated@@33 $generated@@34 $generated@@58 ($generated@@56 $generated@@61 $generated@@62)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@58 ($generated@@56 $generated@@59 $generated@@60)) ($generated@@33 $generated@@34 $generated@@58 ($generated@@56 $generated@@61 $generated@@62)))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 Int) ) (!  (=> (<= ($generated@@32 0) $generated@@67) (= ($generated@@65 $generated@@66 $generated@@67) true))
 :pattern ( ($generated@@65 $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@53 ($generated@@68 $generated@@36 $generated $generated@@72 ($generated@@69 $generated@@71) $generated@@73) $generated@@70) false)
 :pattern ( ($generated@@53 ($generated@@68 $generated@@36 $generated $generated@@72 ($generated@@69 $generated@@71) $generated@@73) $generated@@70))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@32 $generated@@74) $generated@@74)
 :pattern ( ($generated@@32 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (and ($generated@@30 $generated@@82) (and ($generated@@57 $generated@@84 $generated@@80) ($generated@@33 $generated@@34 $generated@@83 ($generated@@56 $generated@@80 $generated@@81)))) (= ($generated@@79 ($generated@@68 $generated@@80 $generated@@81 $generated@@78 $generated@@83 $generated@@84) $generated@@54) ($generated@@79 ($generated@@68 $generated@@80 $generated@@81 $generated@@82 $generated@@83 $generated@@84) $generated@@54)))
 :pattern ( ($generated@@68 $generated@@80 $generated@@81 $generated@@78 $generated@@83 $generated@@84) ($generated@@30 $generated@@82))
 :pattern ( ($generated@@68 $generated@@80 $generated@@81 $generated@@82 $generated@@83 $generated@@84))
)))
(assert  (=> (<= 1 $generated@@27) (forall (($generated@@85 T@U) ($generated@@86 Int) ) (!  (=> (or ($generated@@48 ($generated@@32 $generated@@86)) (and (< 1 $generated@@27) (<= ($generated@@32 0) $generated@@86))) (and (=> (or (not (= ($generated@@32 $generated@@86) ($generated@@32 0))) (not true)) (=> (or (not (= ($generated@@32 $generated@@86) ($generated@@32 1))) (not true)) (and ($generated@@48 ($generated@@32 (- $generated@@86 2))) ($generated@@48 ($generated@@32 (- $generated@@86 1)))))) (= ($generated@@47 ($generated@@29 $generated@@85) ($generated@@32 $generated@@86)) (ite (= ($generated@@32 $generated@@86) ($generated@@32 0)) $generated@@49 (ite (= ($generated@@32 $generated@@86) ($generated@@32 1)) $generated@@50 (+ ($generated@@47 ($generated@@29 $generated@@85) ($generated@@32 (- $generated@@86 2))) ($generated@@47 ($generated@@29 $generated@@85) ($generated@@32 (- $generated@@86 1)))))))))
 :weight 3
 :pattern ( ($generated@@47 ($generated@@29 $generated@@85) ($generated@@32 $generated@@86)))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@39 $generated@@88 ($generated@@37 $generated@@88 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@37 $generated@@88 $generated@@87))
)))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@89 T@U) ) (!  (=> ($generated@@30 $generated@@89) ($generated@@44 $generated@@12 ($generated@@16 $generated@@49) $generated $generated@@89))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@16 $generated@@49) $generated $generated@@89))
))))
(assert  (=> (< 0 $generated@@27) (forall (($generated@@90 T@U) ) (!  (=> ($generated@@30 $generated@@90) ($generated@@44 $generated@@12 ($generated@@16 $generated@@50) $generated $generated@@90))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@16 $generated@@50) $generated $generated@@90))
))))
(assert (forall (($generated@@91 T@U) ) (! (= ($generated@@33 $generated@@12 $generated@@91 $generated@@36) (<= ($generated@@32 0) ($generated@@17 $generated@@91)))
 :pattern ( ($generated@@33 $generated@@12 $generated@@91 $generated@@36))
)))
(assert ($generated@@30 $generated@@78))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@92 ($generated@@39 $generated@@96 $generated@@93) $generated@@94 $generated@@95) ($generated@@44 $generated@@96 $generated@@93 $generated@@94 $generated@@95))
 :pattern ( ($generated@@92 ($generated@@39 $generated@@96 $generated@@93) $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@100 ($generated@@97 $generated@@98 $generated@@99) $generated@@101) ($generated@@44 $generated@@34 $generated@@100 ($generated@@56 $generated@@98 $generated@@99) $generated@@101))
 :pattern ( ($generated@@44 $generated@@34 $generated@@100 ($generated@@97 $generated@@98 $generated@@99) $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@44 $generated@@34 $generated@@104 ($generated@@35 $generated@@102 $generated@@103) $generated@@105) ($generated@@44 $generated@@34 $generated@@104 ($generated@@97 $generated@@102 $generated@@103) $generated@@105))
 :pattern ( ($generated@@44 $generated@@34 $generated@@104 ($generated@@35 $generated@@102 $generated@@103) $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@57 $generated@@106 $generated@@36) (and (= ($generated@@39 $generated@@12 ($generated@@37 $generated@@12 $generated@@106)) $generated@@106) ($generated@@33 $generated@@12 ($generated@@37 $generated@@12 $generated@@106) $generated@@36)))
 :pattern ( ($generated@@57 $generated@@106 $generated@@36))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 Int) ($generated@@109 T@U) ) (! (= ($generated@@28 ($generated@@29 $generated@@107) $generated@@108 $generated@@109) ($generated@@28 $generated@@107 $generated@@108 $generated@@109))
 :pattern ( ($generated@@28 ($generated@@29 $generated@@107) $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (=> (and ($generated@@30 $generated@@114) ($generated@@44 $generated@@34 $generated@@111 ($generated@@56 $generated@@112 $generated@@113) $generated@@114)) (forall (($generated@@115 T@U) ) (!  (=> (and ($generated@@92 $generated@@115 $generated@@112 $generated@@114) ($generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111 $generated@@115)) ($generated@@92 ($generated@@38 $generated@@112 $generated@@113 $generated@@114 $generated@@111 $generated@@115) $generated@@113 $generated@@114))
 :pattern ( ($generated@@38 $generated@@112 $generated@@113 $generated@@114 $generated@@111 $generated@@115))
)))
 :pattern ( ($generated@@44 $generated@@34 $generated@@111 ($generated@@56 $generated@@112 $generated@@113) $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> ($generated@@79 $generated@@116 $generated@@117) (= $generated@@116 $generated@@117))
 :pattern ( ($generated@@79 $generated@@116 $generated@@117))
)))
(assert  (=> (<= 0 $generated@@27) (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 Int) ($generated@@121 T@U) ) (!  (=> (or ($generated@@31 ($generated@@32 $generated@@120) $generated@@121) (and (< 0 $generated@@27) (and (and ($generated@@30 $generated@@119) (<= ($generated@@32 0) $generated@@120)) ($generated@@33 $generated@@34 $generated@@121 ($generated@@35 $generated@@36 $generated))))) (and (=> (or (not (= ($generated@@32 $generated@@120) ($generated@@32 0))) (not true)) ($generated@@31 ($generated@@32 (- $generated@@120 1)) $generated@@121)) (= ($generated@@28 ($generated@@29 $generated@@118) ($generated@@32 $generated@@120) $generated@@121) (+ ($generated@@17 ($generated@@37 $generated@@12 ($generated@@38 $generated@@36 $generated $generated@@119 $generated@@121 ($generated@@39 $generated@@12 ($generated@@16 ($generated@@32 $generated@@120)))))) (ite (= ($generated@@32 $generated@@120) ($generated@@32 0)) 0 ($generated@@28 ($generated@@29 $generated@@118) ($generated@@32 (- $generated@@120 1)) $generated@@121))))))
 :weight 3
 :pattern ( ($generated@@28 ($generated@@29 $generated@@118) ($generated@@32 $generated@@120) $generated@@121) ($generated@@30 $generated@@119))
))))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@122 ($generated@@56 $generated@@123 $generated@@124)) (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (and (and ($generated@@30 $generated@@125) ($generated@@57 $generated@@126 $generated@@123)) ($generated@@110 $generated@@123 $generated@@124 $generated@@125 $generated@@122 $generated@@126)) ($generated@@57 ($generated@@38 $generated@@123 $generated@@124 $generated@@125 $generated@@122 $generated@@126) $generated@@124))
 :pattern ( ($generated@@38 $generated@@123 $generated@@124 $generated@@125 $generated@@122 $generated@@126))
)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@122 ($generated@@56 $generated@@123 $generated@@124)))
)))
(assert (forall (($generated@@127 T@U) ) (!  (=> ($generated@@57 $generated@@127 $generated) (and (= ($generated@@39 $generated@@12 ($generated@@37 $generated@@12 $generated@@127)) $generated@@127) ($generated@@33 $generated@@12 ($generated@@37 $generated@@12 $generated@@127) $generated)))
 :pattern ( ($generated@@57 $generated@@127 $generated))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@T) ) (! (= ($generated@@57 ($generated@@39 $generated@@130 $generated@@128) $generated@@129) ($generated@@33 $generated@@130 $generated@@128 $generated@@129))
 :pattern ( ($generated@@57 ($generated@@39 $generated@@130 $generated@@128) $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@110 $generated@@36 $generated $generated@@132 ($generated@@69 $generated@@131) $generated@@133) ($generated@@65 $generated@@131 ($generated@@17 ($generated@@37 $generated@@12 $generated@@133))))
 :pattern ( ($generated@@110 $generated@@36 $generated $generated@@132 ($generated@@69 $generated@@131) $generated@@133))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@134 ($generated@@56 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@56 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@137 ($generated@@56 $generated@@138 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@56 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@140 ($generated@@97 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@97 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@143 ($generated@@97 $generated@@144 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@97 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@146 ($generated@@35 $generated@@147 $generated@@148)) $generated@@147)
 :pattern ( ($generated@@35 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@149 ($generated@@35 $generated@@150 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@35 $generated@@150 $generated@@151))
)))
(assert  (=> (< 0 $generated@@27) ($generated@@33 $generated@@12 ($generated@@16 $generated@@49) $generated)))
(assert  (=> (< 0 $generated@@27) ($generated@@33 $generated@@12 ($generated@@16 $generated@@50) $generated)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@37 $generated@@153 ($generated@@39 $generated@@153 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@39 $generated@@153 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 Int) ) (! (= ($generated@@47 $generated@@154 $generated@@156) ($generated@@17 ($generated@@37 $generated@@12 ($generated@@38 $generated@@36 $generated $generated@@155 ($generated@@69 $generated@@154) ($generated@@39 $generated@@12 ($generated@@16 $generated@@156))))))
 :pattern ( ($generated@@47 $generated@@154 $generated@@156) ($generated@@30 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 Int) ) (! (= ($generated@@47 ($generated@@29 $generated@@157) $generated@@158) ($generated@@47 $generated@@157 $generated@@158))
 :pattern ( ($generated@@47 ($generated@@29 $generated@@157) $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@161 ($generated@@35 $generated@@159 $generated@@160))  (and ($generated@@33 $generated@@34 $generated@@161 ($generated@@97 $generated@@159 $generated@@160)) (forall (($generated@@162 T@U) )  (=> ($generated@@57 $generated@@162 $generated@@159) ($generated@@110 $generated@@159 $generated@@160 $generated@@78 $generated@@161 $generated@@162)))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@161 ($generated@@35 $generated@@159 $generated@@160)))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@165 ($generated@@97 $generated@@163 $generated@@164))  (and ($generated@@33 $generated@@34 $generated@@165 ($generated@@56 $generated@@163 $generated@@164)) (forall (($generated@@166 T@U) )  (=> ($generated@@57 $generated@@166 $generated@@163) ($generated@@79 ($generated@@68 $generated@@163 $generated@@164 $generated@@78 $generated@@165 $generated@@166) $generated@@54)))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@165 ($generated@@97 $generated@@163 $generated@@164)))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@10 $generated@@167) 4) (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@169 $generated@@176 $generated@@177 ($generated@@173 $generated@@176 $generated@@177 $generated@@179 $generated@@180 $generated@@178) $generated@@180) $generated@@178)
 :weight 0
))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (or (= $generated@@185 $generated@@186) (= ($generated@@169 $generated@@181 $generated@@182 ($generated@@173 $generated@@181 $generated@@182 $generated@@184 $generated@@185 $generated@@183) $generated@@186) ($generated@@169 $generated@@181 $generated@@182 $generated@@184 $generated@@186)))
 :weight 0
))) (= ($generated@@10 $generated@@170) 5)) (= ($generated@@10 $generated@@171) 6)) (forall (($generated@@187 T@T) ($generated@@188 T@T) ) (= ($generated@@10 ($generated@@172 $generated@@187 $generated@@188)) 7))) (forall (($generated@@189 T@T) ($generated@@190 T@T) ) (! (= ($generated@@174 ($generated@@172 $generated@@189 $generated@@190)) $generated@@189)
 :pattern ( ($generated@@172 $generated@@189 $generated@@190))
))) (forall (($generated@@191 T@T) ($generated@@192 T@T) ) (! (= ($generated@@175 ($generated@@172 $generated@@191 $generated@@192)) $generated@@192)
 :pattern ( ($generated@@172 $generated@@191 $generated@@192))
))))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> ($generated@@30 $generated@@196) (= ($generated@@44 $generated@@34 $generated@@193 ($generated@@56 $generated@@194 $generated@@195) $generated@@196) (forall (($generated@@197 T@U) ) (!  (=> (and (and ($generated@@57 $generated@@197 $generated@@194) ($generated@@92 $generated@@197 $generated@@194 $generated@@196)) ($generated@@110 $generated@@194 $generated@@195 $generated@@196 $generated@@193 $generated@@197)) (forall (($generated@@198 T@U) ) (!  (=> (and (or (not (= $generated@@198 $generated@@168)) (not true)) ($generated@@53 ($generated@@68 $generated@@194 $generated@@195 $generated@@196 $generated@@193 $generated@@197) ($generated@@39 $generated@@167 $generated@@198))) ($generated@@15 ($generated@@37 $generated@@11 ($generated@@169 $generated@@170 $generated@@171 ($generated@@169 $generated@@167 ($generated@@172 $generated@@170 $generated@@171) $generated@@196 $generated@@198) $generated@@1))))
 :pattern ( ($generated@@53 ($generated@@68 $generated@@194 $generated@@195 $generated@@196 $generated@@193 $generated@@197) ($generated@@39 $generated@@167 $generated@@198)))
)))
 :pattern ( ($generated@@38 $generated@@194 $generated@@195 $generated@@196 $generated@@193 $generated@@197))
 :pattern ( ($generated@@68 $generated@@194 $generated@@195 $generated@@196 $generated@@193 $generated@@197))
))))
 :pattern ( ($generated@@44 $generated@@34 $generated@@193 ($generated@@56 $generated@@194 $generated@@195) $generated@@196))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> ($generated@@57 $generated@@201 ($generated@@56 $generated@@199 $generated@@200)) (and (= ($generated@@39 $generated@@34 ($generated@@37 $generated@@34 $generated@@201)) $generated@@201) ($generated@@33 $generated@@34 ($generated@@37 $generated@@34 $generated@@201) ($generated@@56 $generated@@199 $generated@@200))))
 :pattern ( ($generated@@57 $generated@@201 ($generated@@56 $generated@@199 $generated@@200)))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (!  (=> ($generated@@57 $generated@@204 ($generated@@97 $generated@@202 $generated@@203)) (and (= ($generated@@39 $generated@@34 ($generated@@37 $generated@@34 $generated@@204)) $generated@@204) ($generated@@33 $generated@@34 ($generated@@37 $generated@@34 $generated@@204) ($generated@@97 $generated@@202 $generated@@203))))
 :pattern ( ($generated@@57 $generated@@204 ($generated@@97 $generated@@202 $generated@@203)))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> ($generated@@57 $generated@@207 ($generated@@35 $generated@@205 $generated@@206)) (and (= ($generated@@39 $generated@@34 ($generated@@37 $generated@@34 $generated@@207)) $generated@@207) ($generated@@33 $generated@@34 ($generated@@37 $generated@@34 $generated@@207) ($generated@@35 $generated@@205 $generated@@206))))
 :pattern ( ($generated@@57 $generated@@207 ($generated@@35 $generated@@205 $generated@@206)))
)))
(assert  (and (forall (($generated@@211 T@T) ($generated@@212 T@T) ($generated@@213 T@T) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@208 $generated@@211 $generated@@212 $generated@@213 ($generated@@210 $generated@@211 $generated@@212 $generated@@213 $generated@@215 $generated@@216 $generated@@217 $generated@@214) $generated@@216 $generated@@217) $generated@@214)
 :weight 0
)) (and (forall (($generated@@218 T@T) ($generated@@219 T@T) ($generated@@220 T@T) ($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ) (!  (or (= $generated@@223 $generated@@225) (= ($generated@@208 $generated@@218 $generated@@219 $generated@@220 ($generated@@210 $generated@@218 $generated@@219 $generated@@220 $generated@@222 $generated@@223 $generated@@224 $generated@@221) $generated@@225 $generated@@226) ($generated@@208 $generated@@218 $generated@@219 $generated@@220 $generated@@222 $generated@@225 $generated@@226)))
 :weight 0
)) (forall (($generated@@227 T@T) ($generated@@228 T@T) ($generated@@229 T@T) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ) (!  (or (= $generated@@233 $generated@@235) (= ($generated@@208 $generated@@227 $generated@@228 $generated@@229 ($generated@@210 $generated@@227 $generated@@228 $generated@@229 $generated@@231 $generated@@232 $generated@@233 $generated@@230) $generated@@234 $generated@@235) ($generated@@208 $generated@@227 $generated@@228 $generated@@229 $generated@@231 $generated@@234 $generated@@235)))
 :weight 0
)))))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 Bool) ($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@15 ($generated@@208 $generated@@167 $generated@@170 $generated@@11 ($generated@@209 $generated@@236 $generated@@237 $generated@@238 $generated@@239) $generated@@240 $generated@@241))  (=> (and (or (not (= $generated@@240 $generated@@236)) (not true)) ($generated@@15 ($generated@@37 $generated@@11 ($generated@@169 $generated@@170 $generated@@171 ($generated@@169 $generated@@167 ($generated@@172 $generated@@170 $generated@@171) $generated@@237 $generated@@240) $generated@@238)))) $generated@@239))
 :pattern ( ($generated@@208 $generated@@167 $generated@@170 $generated@@11 ($generated@@209 $generated@@236 $generated@@237 $generated@@238 $generated@@239) $generated@@240 $generated@@241))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ) (!  (and (= ($generated@@26 ($generated@@56 $generated@@243 $generated@@244)) $generated@@3) (= ($generated@@242 ($generated@@56 $generated@@243 $generated@@244)) $generated@@7))
 :pattern ( ($generated@@56 $generated@@243 $generated@@244))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ) (!  (and (= ($generated@@26 ($generated@@97 $generated@@245 $generated@@246)) $generated@@4) (= ($generated@@242 ($generated@@97 $generated@@245 $generated@@246)) $generated@@8))
 :pattern ( ($generated@@97 $generated@@245 $generated@@246))
)))
(assert (forall (($generated@@247 T@U) ($generated@@248 T@U) ) (!  (and (= ($generated@@26 ($generated@@35 $generated@@247 $generated@@248)) $generated@@5) (= ($generated@@242 ($generated@@35 $generated@@247 $generated@@248)) $generated@@9))
 :pattern ( ($generated@@35 $generated@@247 $generated@@248))
)))
(assert (forall (($generated@@250 Int) ($generated@@251 Int) ) (! (= ($generated@@249 $generated@@250 $generated@@251) (* $generated@@250 $generated@@251))
 :pattern ( ($generated@@249 $generated@@250 $generated@@251))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ($generated@@255 T@U) ($generated@@256 T@U) ) (!  (=> (and (and ($generated@@30 $generated@@254) (and ($generated@@57 $generated@@256 $generated@@252) ($generated@@33 $generated@@34 $generated@@255 ($generated@@56 $generated@@252 $generated@@253)))) ($generated@@79 ($generated@@68 $generated@@252 $generated@@253 $generated@@78 $generated@@255 $generated@@256) $generated@@54)) (= ($generated@@110 $generated@@252 $generated@@253 $generated@@78 $generated@@255 $generated@@256) ($generated@@110 $generated@@252 $generated@@253 $generated@@254 $generated@@255 $generated@@256)))
 :pattern ( ($generated@@110 $generated@@252 $generated@@253 $generated@@78 $generated@@255 $generated@@256) ($generated@@30 $generated@@254))
 :pattern ( ($generated@@110 $generated@@252 $generated@@253 $generated@@254 $generated@@255 $generated@@256))
)))
(assert (forall (($generated@@257 T@U) ) (! (= ($generated@@69 ($generated@@29 $generated@@257)) ($generated@@69 $generated@@257))
 :pattern ( ($generated@@69 ($generated@@29 $generated@@257)))
)))
(assert (= ($generated@@26 $generated@@36) $generated@@2))
(assert (= ($generated@@242 $generated@@36) $generated@@6))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@U) ($generated@@260 T@U) ) (! (= ($generated@@38 $generated@@36 $generated $generated@@259 ($generated@@69 $generated@@258) $generated@@260) ($generated@@39 $generated@@12 ($generated@@16 ($generated@@47 $generated@@258 ($generated@@17 ($generated@@37 $generated@@12 $generated@@260))))))
 :pattern ( ($generated@@38 $generated@@36 $generated $generated@@259 ($generated@@69 $generated@@258) $generated@@260))
)))
(assert (forall (($generated@@261 T@U) ($generated@@262 T@U) ) (! (= ($generated@@79 $generated@@261 $generated@@262) (forall (($generated@@263 T@U) ) (! (= ($generated@@53 $generated@@261 $generated@@263) ($generated@@53 $generated@@262 $generated@@263))
 :pattern ( ($generated@@53 $generated@@261 $generated@@263))
 :pattern ( ($generated@@53 $generated@@262 $generated@@263))
)))
 :pattern ( ($generated@@79 $generated@@261 $generated@@262))
)))
(assert (forall (($generated@@264 Int) ) (! (= ($generated@@39 $generated@@12 ($generated@@16 ($generated@@32 $generated@@264))) ($generated@@75 $generated@@171 ($generated@@39 $generated@@12 ($generated@@16 $generated@@264))))
 :pattern ( ($generated@@39 $generated@@12 ($generated@@16 ($generated@@32 $generated@@264))))
)))
(assert (forall (($generated@@265 T@U) ($generated@@266 T@T) ) (! (= ($generated@@39 $generated@@266 ($generated@@75 $generated@@266 $generated@@265)) ($generated@@75 $generated@@171 ($generated@@39 $generated@@266 $generated@@265)))
 :pattern ( ($generated@@39 $generated@@266 ($generated@@75 $generated@@266 $generated@@265)))
)))
(assert  (=> (<= 0 $generated@@27) (forall (($generated@@267 T@U) ($generated@@268 T@U) ($generated@@269 Int) ($generated@@270 T@U) ) (!  (=> (or ($generated@@31 ($generated@@32 $generated@@269) ($generated@@75 $generated@@34 $generated@@270)) (and (< 0 $generated@@27) (and (and ($generated@@30 $generated@@268) (<= ($generated@@32 0) $generated@@269)) ($generated@@33 $generated@@34 $generated@@270 ($generated@@35 $generated@@36 $generated))))) (and (=> (or (not (= ($generated@@32 $generated@@269) ($generated@@32 0))) (not true)) ($generated@@31 ($generated@@32 (- $generated@@269 1)) ($generated@@75 $generated@@34 $generated@@270))) (= ($generated@@28 ($generated@@29 $generated@@267) ($generated@@32 $generated@@269) ($generated@@75 $generated@@34 $generated@@270)) (+ ($generated@@17 ($generated@@37 $generated@@12 ($generated@@38 $generated@@36 $generated $generated@@268 ($generated@@75 $generated@@34 $generated@@270) ($generated@@39 $generated@@12 ($generated@@16 ($generated@@32 $generated@@269)))))) (ite (= ($generated@@32 $generated@@269) ($generated@@32 0)) 0 ($generated@@28 ($generated@@29 $generated@@267) ($generated@@32 (- $generated@@269 1)) ($generated@@75 $generated@@34 $generated@@270)))))))
 :weight 3
 :pattern ( ($generated@@28 ($generated@@29 $generated@@267) ($generated@@32 $generated@@269) ($generated@@75 $generated@@34 $generated@@270)) ($generated@@30 $generated@@268))
))))
(assert (forall (($generated@@271 T@U) ($generated@@272 T@U) ) (! ($generated@@44 $generated@@12 $generated@@272 $generated $generated@@271)
 :pattern ( ($generated@@44 $generated@@12 $generated@@272 $generated $generated@@271))
)))
(assert (forall (($generated@@273 T@U) ) (! ($generated@@33 $generated@@12 $generated@@273 $generated)
 :pattern ( ($generated@@33 $generated@@12 $generated@@273 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@274 () T@U)
(declare-fun $generated@@275 () T@U)
(declare-fun $generated@@276 () T@U)
(declare-fun $generated@@277 (T@U) Bool)
(declare-fun $generated@@278 () Int)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () T@U)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@281  (=> (= $generated@@274 ($generated@@209 $generated@@168 $generated@@275 $generated@@1 false)) (=> (and (and ($generated@@30 $generated@@276) ($generated@@277 $generated@@276)) (= $generated@@275 $generated@@276)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@33 $generated@@12 ($generated@@16 ($generated@@32 9)) $generated@@36)) (=> ($generated@@33 $generated@@12 ($generated@@16 ($generated@@32 9)) $generated@@36) (=> (and (= $generated@@278 ($generated@@32 9)) ($generated@@44 $generated@@12 ($generated@@16 $generated@@278) $generated@@36 $generated@@276)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= 1 $generated@@27)) (not true))) (=> (or (not (= 1 $generated@@27)) (not true)) (=> (and (and (= $generated@@279 ($generated@@69 ($generated@@29 $generated@@280))) ($generated@@44 $generated@@34 $generated@@279 ($generated@@35 $generated@@36 $generated) $generated@@276)) (and ($generated@@31 ($generated@@32 9) ($generated@@69 ($generated@@29 $generated@@280))) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@33 $generated@@12 ($generated@@16 ($generated@@32 6)) $generated@@36)))))))))))
(let (($generated@@282  (=> (and (and ($generated@@30 $generated@@275) ($generated@@277 $generated@@275)) (and (= 2 $generated@@27) (= (ControlFlow 0 5) 2))) $generated@@281)))
$generated@@282)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)