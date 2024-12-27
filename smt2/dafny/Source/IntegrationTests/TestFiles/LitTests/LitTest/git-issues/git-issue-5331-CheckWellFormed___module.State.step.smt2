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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@28 () Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 (T@T T@T) T@T)
(declare-fun $generated@@50 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@51 (T@T) T@T)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@72 (Int) Int)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@79 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@84 (Int) T@U)
(declare-fun $generated@@88 (T@U T@U T@U) Bool)
(declare-fun $generated@@95 (T@U) Bool)
(declare-fun $generated@@100 (T@U) Int)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U T@U) T@U)
(declare-fun $generated@@139 (T@U T@U) Bool)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@146 (T@U) Bool)
(declare-fun $generated@@147 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (! ($generated@@24 $generated@@10 $generated@@26 $generated@@25 $generated@@27)
 :pattern ( ($generated@@24 $generated@@10 $generated@@26 $generated@@25 $generated@@27))
)))
(assert  (and (= ($generated@@8 $generated@@30) 3) (= ($generated@@8 $generated@@34) 4)))
(assert  (=> (< 2 $generated@@28) (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@36) ($generated@@33 $generated@@30 $generated@@37 $generated@@31)) ($generated@@24 $generated@@30 $generated@@37 $generated@@31 $generated@@36)) ($generated@@24 $generated@@34 ($generated@@29 $generated@@37) $generated@@35 $generated@@36))
 :pattern ( ($generated@@29 $generated@@37) ($generated@@24 $generated@@30 $generated@@37 $generated@@31 $generated@@36))
))))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@24 $generated@@34 $generated@@39 $generated@@35 $generated@@40) ($generated@@24 $generated@@34 $generated@@39 $generated@@38 $generated@@40))
 :pattern ( ($generated@@24 $generated@@34 $generated@@39 $generated@@35 $generated@@40))
 :pattern ( ($generated@@24 $generated@@34 $generated@@39 $generated@@38 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ) (!  (=> ($generated@@33 $generated@@30 $generated@@42 $generated@@31) ($generated@@41 $generated@@42))
 :pattern ( ($generated@@41 $generated@@42) ($generated@@33 $generated@@30 $generated@@42 $generated@@31))
)))
(assert  (=> (< 2 $generated@@28) (forall (($generated@@43 T@U) ) (!  (=> ($generated@@33 $generated@@30 $generated@@43 $generated@@31) ($generated@@33 $generated@@34 ($generated@@29 $generated@@43) $generated@@35))
 :pattern ( ($generated@@29 $generated@@43))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (! (= ($generated@@46 $generated@@53 $generated@@54 ($generated@@50 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@57) $generated@@55)
 :weight 0
)) (forall (($generated@@58 T@T) ($generated@@59 T@T) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (!  (or (= $generated@@62 $generated@@63) (= ($generated@@46 $generated@@58 $generated@@59 ($generated@@50 $generated@@58 $generated@@59 $generated@@61 $generated@@62 $generated@@60) $generated@@63) ($generated@@46 $generated@@58 $generated@@59 $generated@@61 $generated@@63)))
 :weight 0
))) (= ($generated@@8 $generated@@47) 5)) (= ($generated@@8 $generated@@48) 6)) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (= ($generated@@8 ($generated@@49 $generated@@64 $generated@@65)) 7))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@51 ($generated@@49 $generated@@66 $generated@@67)) $generated@@66)
 :pattern ( ($generated@@49 $generated@@66 $generated@@67))
))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@52 ($generated@@49 $generated@@68 $generated@@69)) $generated@@69)
 :pattern ( ($generated@@49 $generated@@68 $generated@@69))
))))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (! (= ($generated@@24 $generated@@34 $generated@@70 $generated@@38 $generated@@71)  (or (= $generated@@70 $generated@@44) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@34 ($generated@@49 $generated@@47 $generated@@48) $generated@@71 $generated@@70) $generated)))))
 :pattern ( ($generated@@24 $generated@@34 $generated@@70 $generated@@38 $generated@@71))
)))
(assert (forall (($generated@@73 Int) ) (! (= ($generated@@72 $generated@@73) $generated@@73)
 :pattern ( ($generated@@72 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 $generated@@75) $generated@@75)
 :pattern ( ($generated@@74 $generated@@76 $generated@@75))
)))
(assert (forall (($generated@@78 T@U) ) (! (= ($generated@@41 $generated@@78) (= ($generated@@77 $generated@@78) $generated@@4))
 :pattern ( ($generated@@41 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@79 $generated@@81 ($generated@@45 $generated@@81 $generated@@80)) $generated@@80)
 :pattern ( ($generated@@45 $generated@@81 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@29 $generated@@83) ($generated@@82 $generated@@83))
 :pattern ( ($generated@@29 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (!  (=> ($generated@@41 $generated@@85) (exists (($generated@@86 Int) ) (= $generated@@85 ($generated@@84 $generated@@86))))
 :pattern ( ($generated@@41 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (! (= ($generated@@33 $generated@@10 $generated@@87 $generated@@25) (<= ($generated@@72 0) ($generated@@15 $generated@@87)))
 :pattern ( ($generated@@33 $generated@@10 $generated@@87 $generated@@25))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@T) ) (! (= ($generated@@88 ($generated@@79 $generated@@92 $generated@@89) $generated@@90 $generated@@91) ($generated@@24 $generated@@92 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@88 ($generated@@79 $generated@@92 $generated@@89) $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 Int) ) (! (= ($generated@@33 $generated@@30 ($generated@@84 $generated@@93) $generated@@31) ($generated@@33 $generated@@10 ($generated@@14 $generated@@93) $generated@@25))
 :pattern ( ($generated@@33 $generated@@30 ($generated@@84 $generated@@93) $generated@@31))
)))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@94 $generated@@35)  (and ($generated@@33 $generated@@34 $generated@@94 $generated@@38) (or (not (= $generated@@94 $generated@@44)) (not true))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@94 $generated@@35))
 :pattern ( ($generated@@33 $generated@@34 $generated@@94 $generated@@38))
)))
(assert  (=> (<= 1 $generated@@28) (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (and (or ($generated@@95 $generated@@97) (and (< 1 $generated@@28) ($generated@@24 $generated@@30 $generated@@97 $generated@@31 $generated@@96))) ($generated@@32 $generated@@96)) ($generated@@24 $generated@@34 ($generated@@82 $generated@@97) $generated@@35 $generated@@96))
 :pattern ( ($generated@@24 $generated@@34 ($generated@@82 $generated@@97) $generated@@35 $generated@@96))
))))
(assert  (=> (<= 1 $generated@@28) (forall (($generated@@98 T@U) ) (!  (=> (or ($generated@@95 $generated@@98) (and (< 1 $generated@@28) ($generated@@33 $generated@@30 $generated@@98 $generated@@31))) ($generated@@33 $generated@@34 ($generated@@82 $generated@@98) $generated@@35))
 :pattern ( ($generated@@82 $generated@@98))
))))
(assert (forall (($generated@@99 Int) ) (! (= ($generated@@77 ($generated@@84 $generated@@99)) $generated@@4)
 :pattern ( ($generated@@84 $generated@@99))
)))
(assert (forall (($generated@@101 Int) ) (! (= ($generated@@100 ($generated@@84 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@84 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@45 $generated@@103 ($generated@@79 $generated@@103 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@79 $generated@@103 $generated@@102))
)))
(assert  (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@104 $generated@@107 $generated@@108 $generated@@109 ($generated@@106 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@112 $generated@@113) $generated@@110)
 :weight 0
)) (and (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@104 $generated@@114 $generated@@115 $generated@@116 ($generated@@106 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@104 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)) (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@104 $generated@@123 $generated@@124 $generated@@125 ($generated@@106 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@130 $generated@@131) ($generated@@104 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@130 $generated@@131)))
 :weight 0
)))))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 Bool) ($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@13 ($generated@@104 $generated@@34 $generated@@47 $generated@@9 ($generated@@105 $generated@@132 $generated@@133 $generated@@134 $generated@@135) $generated@@136 $generated@@137))  (=> (and (or (not (= $generated@@136 $generated@@132)) (not true)) ($generated@@13 ($generated@@45 $generated@@9 ($generated@@46 $generated@@47 $generated@@48 ($generated@@46 $generated@@34 ($generated@@49 $generated@@47 $generated@@48) $generated@@133 $generated@@136) $generated@@134)))) $generated@@135))
 :pattern ( ($generated@@104 $generated@@34 $generated@@47 $generated@@9 ($generated@@105 $generated@@132 $generated@@133 $generated@@134 $generated@@135) $generated@@136 $generated@@137))
)))
(assert  (=> (<= 1 $generated@@28) (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> (or ($generated@@139 $generated@@140 $generated@@141) (and (< 1 $generated@@28) (and (and (or (not (= $generated@@140 $generated@@44)) (not true)) ($generated@@33 $generated@@34 $generated@@140 $generated@@35)) ($generated@@33 $generated@@30 $generated@@141 $generated@@31)))) ($generated@@33 $generated@@30 ($generated@@138 $generated@@140 $generated@@141) $generated@@31))
 :pattern ( ($generated@@138 $generated@@140 $generated@@141))
))))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (and ($generated@@32 $generated@@143) ($generated@@33 $generated@@30 $generated@@142 $generated@@31)) ($generated@@24 $generated@@30 $generated@@142 $generated@@31 $generated@@143))
 :pattern ( ($generated@@24 $generated@@30 $generated@@142 $generated@@31 $generated@@143))
)))
(assert (= ($generated@@144 $generated@@25) $generated@@0))
(assert (= ($generated@@145 $generated@@25) $generated@@5))
(assert (= ($generated@@144 $generated@@38) $generated@@1))
(assert (= ($generated@@145 $generated@@38) $generated@@6))
(assert (= ($generated@@144 $generated@@35) $generated@@2))
(assert (= ($generated@@145 $generated@@35) $generated@@6))
(assert (= ($generated@@144 $generated@@31) $generated@@3))
(assert (= ($generated@@145 $generated@@31) $generated@@7))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@148 $generated@@38)  (or (= $generated@@148 $generated@@44) ($generated@@146 ($generated@@147 $generated@@148))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@148 $generated@@38))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> (and ($generated@@32 $generated@@150) (and ($generated@@41 $generated@@149) ($generated@@24 $generated@@30 $generated@@149 $generated@@31 $generated@@150))) ($generated@@24 $generated@@10 ($generated@@14 ($generated@@100 $generated@@149)) $generated@@25 $generated@@150))
 :pattern ( ($generated@@24 $generated@@10 ($generated@@14 ($generated@@100 $generated@@149)) $generated@@25 $generated@@150))
)))
(assert (forall (($generated@@151 Int) ) (! (= ($generated@@79 $generated@@10 ($generated@@14 ($generated@@72 $generated@@151))) ($generated@@74 $generated@@48 ($generated@@79 $generated@@10 ($generated@@14 $generated@@151))))
 :pattern ( ($generated@@79 $generated@@10 ($generated@@14 ($generated@@72 $generated@@151))))
)))
(assert (forall (($generated@@152 Int) ) (! (= ($generated@@84 ($generated@@72 $generated@@152)) ($generated@@74 $generated@@30 ($generated@@84 $generated@@152)))
 :pattern ( ($generated@@84 ($generated@@72 $generated@@152)))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@T) ) (! (= ($generated@@79 $generated@@154 ($generated@@74 $generated@@154 $generated@@153)) ($generated@@74 $generated@@48 ($generated@@79 $generated@@154 $generated@@153)))
 :pattern ( ($generated@@79 $generated@@154 ($generated@@74 $generated@@154 $generated@@153)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@159  (=> (and (= $generated@@155 ($generated@@105 $generated@@44 $generated@@156 $generated false)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= ($generated@@29 $generated@@157) $generated@@44)) (not true)))))
(let (($generated@@160  (=> (and ($generated@@32 $generated@@156) ($generated@@158 $generated@@156)) (=> (and (and ($generated@@33 $generated@@30 $generated@@157 $generated@@31) ($generated@@24 $generated@@30 $generated@@157 $generated@@31 $generated@@156)) (and (= 3 $generated@@28) (= (ControlFlow 0 3) 2))) $generated@@159))))
$generated@@160)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)