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
(declare-fun $generated@@22 (T@U T@U) T@U)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@41 (T@U) Int)
(declare-fun $generated@@44 (Int) Int)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@53 (T@T T@U T@U) Bool)
(declare-fun $generated@@54 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U T@U T@U) Bool)
(declare-fun $generated@@63 (T@U) T@U)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@81 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 () T@T)
(declare-fun $generated@@84 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@85 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@86 () T@T)
(declare-fun $generated@@87 (T@T T@T) T@T)
(declare-fun $generated@@88 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@90 (T@T) T@T)
(declare-fun $generated@@91 (T@T) T@T)
(declare-fun $generated@@140 (Int Int) Int)
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
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ) (! ($generated@@23 ($generated@@22 $generated@@24 $generated@@25) $generated@@25)
 :pattern ( ($generated@@22 $generated@@24 $generated@@25))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (!  (=> ($generated@@23 $generated@@26 $generated@@28) ($generated@@23 ($generated@@22 $generated@@26 $generated@@27) $generated@@28))
 :pattern ( ($generated@@22 $generated@@26 $generated@@27) ($generated@@23 $generated@@26 $generated@@28))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (! (= ($generated@@23 ($generated@@22 $generated@@29 $generated@@30) $generated@@31)  (or (= $generated@@31 $generated@@30) ($generated@@23 $generated@@29 $generated@@31)))
 :pattern ( ($generated@@23 ($generated@@22 $generated@@29 $generated@@30) $generated@@31))
)))
(assert (= ($generated@@5 $generated@@33) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@37 ($generated@@34 $generated@@36) $generated@@38) ($generated@@32 $generated@@33 $generated@@37 ($generated@@35 $generated@@36) $generated@@38))
 :pattern ( ($generated@@32 $generated@@33 $generated@@37 ($generated@@34 $generated@@36) $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ) (!  (not ($generated@@23 $generated@@39 $generated@@40))
 :pattern ( ($generated@@23 $generated@@39 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ) (!  (and (= (= ($generated@@41 $generated@@42) 0) (= $generated@@42 $generated@@39)) (=> (or (not (= ($generated@@41 $generated@@42) 0)) (not true)) (exists (($generated@@43 T@U) ) (! ($generated@@23 $generated@@42 $generated@@43)
 :pattern ( ($generated@@23 $generated@@42 $generated@@43))
))))
 :pattern ( ($generated@@41 $generated@@42))
)))
(assert (forall (($generated@@45 Int) ) (! (= ($generated@@44 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@T) ) (! (= ($generated@@46 $generated@@48 $generated@@47) $generated@@47)
 :pattern ( ($generated@@46 $generated@@48 $generated@@47))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@T) ) (! (= ($generated@@50 $generated@@52 ($generated@@49 $generated@@52 $generated@@51)) $generated@@51)
 :pattern ( ($generated@@49 $generated@@52 $generated@@51))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@53 $generated@@33 $generated@@55 ($generated@@35 $generated@@56)) (forall (($generated@@57 T@U) ) (!  (=> ($generated@@23 $generated@@55 $generated@@57) ($generated@@54 $generated@@57 $generated@@56))
 :pattern ( ($generated@@23 $generated@@55 $generated@@57))
)))
 :pattern ( ($generated@@53 $generated@@33 $generated@@55 ($generated@@35 $generated@@56)))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@58 ($generated@@50 $generated@@62 $generated@@59) $generated@@60 $generated@@61) ($generated@@32 $generated@@62 $generated@@59 $generated@@60 $generated@@61))
 :pattern ( ($generated@@58 ($generated@@50 $generated@@62 $generated@@59) $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ) (!  (and (= ($generated@@21 ($generated@@34 $generated@@64)) $generated@@3) (= ($generated@@63 ($generated@@34 $generated@@64)) $generated@@4))
 :pattern ( ($generated@@34 $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ) (!  (=> ($generated@@54 $generated@@65 $generated) (and (= ($generated@@50 $generated@@7 ($generated@@49 $generated@@7 $generated@@65)) $generated@@65) ($generated@@53 $generated@@7 ($generated@@49 $generated@@7 $generated@@65) $generated)))
 :pattern ( ($generated@@54 $generated@@65 $generated))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@54 ($generated@@50 $generated@@68 $generated@@66) $generated@@67) ($generated@@53 $generated@@68 $generated@@66 $generated@@67))
 :pattern ( ($generated@@54 ($generated@@50 $generated@@68 $generated@@66) $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (! (<= 0 ($generated@@41 $generated@@69))
 :pattern ( ($generated@@41 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@70 ($generated@@35 $generated@@71) $generated@@72) (forall (($generated@@73 T@U) ) (!  (=> ($generated@@23 $generated@@70 $generated@@73) ($generated@@58 $generated@@73 $generated@@71 $generated@@72))
 :pattern ( ($generated@@23 $generated@@70 $generated@@73))
)))
 :pattern ( ($generated@@32 $generated@@33 $generated@@70 ($generated@@35 $generated@@71) $generated@@72))
)))
(assert (forall (($generated@@75 T@U) ) (! (= ($generated@@74 ($generated@@35 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@35 $generated@@75))
)))
(assert (forall (($generated@@76 T@U) ) (! (= ($generated@@21 ($generated@@35 $generated@@76)) $generated@@1)
 :pattern ( ($generated@@35 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ) (! (= ($generated@@77 ($generated@@34 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@34 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@49 $generated@@80 ($generated@@50 $generated@@80 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@50 $generated@@80 $generated@@79))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@81 $generated@@92 $generated@@93 $generated@@94 ($generated@@88 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@98 $generated@@95) $generated@@97 $generated@@98) $generated@@95)
 :weight 0
)) (and (forall (($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (or (= $generated@@104 $generated@@106) (= ($generated@@81 $generated@@99 $generated@@100 $generated@@101 ($generated@@88 $generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@105 $generated@@102) $generated@@106 $generated@@107) ($generated@@81 $generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@106 $generated@@107)))
 :weight 0
)) (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (or (= $generated@@114 $generated@@116) (= ($generated@@81 $generated@@108 $generated@@109 $generated@@110 ($generated@@88 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@115 $generated@@116) ($generated@@81 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@115 $generated@@116)))
 :weight 0
)))) (= ($generated@@5 $generated@@82) 4)) (= ($generated@@5 $generated@@83) 5)) (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@85 $generated@@117 $generated@@118 ($generated@@89 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@119) $generated@@121) $generated@@119)
 :weight 0
))) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@126 $generated@@127) (= ($generated@@85 $generated@@122 $generated@@123 ($generated@@89 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@127) ($generated@@85 $generated@@122 $generated@@123 $generated@@125 $generated@@127)))
 :weight 0
))) (= ($generated@@5 $generated@@86) 6)) (forall (($generated@@128 T@T) ($generated@@129 T@T) ) (= ($generated@@5 ($generated@@87 $generated@@128 $generated@@129)) 7))) (forall (($generated@@130 T@T) ($generated@@131 T@T) ) (! (= ($generated@@90 ($generated@@87 $generated@@130 $generated@@131)) $generated@@130)
 :pattern ( ($generated@@87 $generated@@130 $generated@@131))
))) (forall (($generated@@132 T@T) ($generated@@133 T@T) ) (! (= ($generated@@91 ($generated@@87 $generated@@132 $generated@@133)) $generated@@133)
 :pattern ( ($generated@@87 $generated@@132 $generated@@133))
))))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 Bool) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@10 ($generated@@81 $generated@@82 $generated@@83 $generated@@6 ($generated@@84 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))  (=> (and (or (not (= $generated@@138 $generated@@134)) (not true)) ($generated@@10 ($generated@@49 $generated@@6 ($generated@@85 $generated@@83 $generated@@86 ($generated@@85 $generated@@82 ($generated@@87 $generated@@83 $generated@@86) $generated@@135 $generated@@138) $generated@@136)))) $generated@@137))
 :pattern ( ($generated@@81 $generated@@82 $generated@@83 $generated@@6 ($generated@@84 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 Int) ($generated@@142 Int) ) (! (= ($generated@@140 $generated@@141 $generated@@142) (mod $generated@@141 $generated@@142))
 :pattern ( ($generated@@140 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@53 $generated@@33 $generated@@144 ($generated@@34 $generated@@143))  (and ($generated@@53 $generated@@33 $generated@@144 ($generated@@35 $generated@@143)) (or (= ($generated@@41 $generated@@144) ($generated@@44 0)) (= ($generated@@140 ($generated@@41 $generated@@144) ($generated@@44 2)) ($generated@@44 0)))))
 :pattern ( ($generated@@53 $generated@@33 $generated@@144 ($generated@@34 $generated@@143)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> ($generated@@54 $generated@@145 ($generated@@35 $generated@@146)) (and (= ($generated@@50 $generated@@33 ($generated@@49 $generated@@33 $generated@@145)) $generated@@145) ($generated@@53 $generated@@33 ($generated@@49 $generated@@33 $generated@@145) ($generated@@35 $generated@@146))))
 :pattern ( ($generated@@54 $generated@@145 ($generated@@35 $generated@@146)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@54 $generated@@148 ($generated@@34 $generated@@147)) (and (= ($generated@@50 $generated@@33 ($generated@@49 $generated@@33 $generated@@148)) $generated@@148) ($generated@@53 $generated@@33 ($generated@@49 $generated@@33 $generated@@148) ($generated@@34 $generated@@147))))
 :pattern ( ($generated@@54 $generated@@148 ($generated@@34 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@23 $generated@@149 $generated@@150) (= ($generated@@41 ($generated@@22 $generated@@149 $generated@@150)) ($generated@@41 $generated@@149)))
 :pattern ( ($generated@@41 ($generated@@22 $generated@@149 $generated@@150)))
)))
(assert (forall (($generated@@151 Int) ) (! (= ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 $generated@@151))) ($generated@@46 $generated@@86 ($generated@@50 $generated@@7 ($generated@@11 $generated@@151))))
 :pattern ( ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 $generated@@151))))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@50 $generated@@153 ($generated@@46 $generated@@153 $generated@@152)) ($generated@@46 $generated@@86 ($generated@@50 $generated@@153 $generated@@152)))
 :pattern ( ($generated@@50 $generated@@153 ($generated@@46 $generated@@153 $generated@@152)))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (! ($generated@@32 $generated@@7 $generated@@155 $generated $generated@@154)
 :pattern ( ($generated@@32 $generated@@7 $generated@@155 $generated $generated@@154))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (!  (=> (not ($generated@@23 $generated@@156 $generated@@157)) (= ($generated@@41 ($generated@@22 $generated@@156 $generated@@157)) (+ ($generated@@41 $generated@@156) 1)))
 :pattern ( ($generated@@41 ($generated@@22 $generated@@156 $generated@@157)))
)))
(assert (forall (($generated@@158 T@U) ) (! ($generated@@53 $generated@@7 $generated@@158 $generated)
 :pattern ( ($generated@@53 $generated@@7 $generated@@158 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 (T@U) Bool)
(declare-fun $generated@@164 (T@U) Bool)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@168  (=> (= $generated@@159 ($generated@@84 $generated@@160 $generated@@161 $generated@@2 false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@53 $generated@@33 ($generated@@46 $generated@@33 ($generated@@22 ($generated@@22 ($generated@@22 $generated@@39 ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 24)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36))))) ($generated@@34 $generated))) (=> ($generated@@53 $generated@@33 ($generated@@46 $generated@@33 ($generated@@22 ($generated@@22 ($generated@@22 $generated@@39 ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 24)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36))))) ($generated@@34 $generated)) (=> (and (= $generated@@162 ($generated@@46 $generated@@33 ($generated@@22 ($generated@@22 ($generated@@22 $generated@@39 ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 24)))) ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 36)))))) (= (ControlFlow 0 2) (- 0 1))) ($generated@@53 $generated@@33 ($generated@@46 $generated@@33 ($generated@@22 $generated@@39 ($generated@@50 $generated@@7 ($generated@@11 ($generated@@44 12))))) ($generated@@34 $generated))))))))
(let (($generated@@169  (=> (and ($generated@@163 $generated@@161) ($generated@@164 $generated@@161)) (=> (and (and ($generated@@53 $generated@@33 $generated@@165 ($generated@@34 $generated)) ($generated@@32 $generated@@33 $generated@@165 ($generated@@34 $generated) $generated@@161)) true) (=> (and (and (and ($generated@@53 $generated@@33 $generated@@166 ($generated@@34 $generated)) ($generated@@32 $generated@@33 $generated@@166 ($generated@@34 $generated) $generated@@161)) true) (and (= 1 $generated@@167) (= (ControlFlow 0 4) 2))) $generated@@168)))))
$generated@@169)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)