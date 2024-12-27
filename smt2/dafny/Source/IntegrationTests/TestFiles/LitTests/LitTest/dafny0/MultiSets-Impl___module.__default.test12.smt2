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
(declare-fun $generated@@20 (Int Int) Int)
(declare-fun $generated@@23 (T@U T@U) Int)
(declare-fun $generated@@24 (T@U T@U Int) T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@38 (Int) Int)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@50 (T@U T@U) T@U)
(declare-fun $generated@@54 (T@U) Int)
(declare-fun $generated@@57 (T@U T@U T@U) Bool)
(declare-fun $generated@@58 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@63 (T@U T@U) T@U)
(declare-fun $generated@@66 (T@U T@U) Bool)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@96 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@97 () T@T)
(declare-fun $generated@@98 () T@T)
(declare-fun $generated@@99 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@100 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@101 () T@T)
(declare-fun $generated@@102 (T@T T@T) T@T)
(declare-fun $generated@@103 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@105 (T@T) T@T)
(declare-fun $generated@@106 (T@T) T@T)
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
(assert (forall (($generated@@21 Int) ($generated@@22 Int) ) (!  (or (= ($generated@@20 $generated@@21 $generated@@22) $generated@@21) (= ($generated@@20 $generated@@21 $generated@@22) $generated@@22))
 :pattern ( ($generated@@20 $generated@@21 $generated@@22))
)))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ($generated@@27 Int) ($generated@@28 T@U) ) (!  (=> (<= 0 $generated@@27) (and (=> (= $generated@@26 $generated@@28) (= ($generated@@23 ($generated@@24 $generated@@25 $generated@@26 $generated@@27) $generated@@28) $generated@@27)) (=> (or (not (= $generated@@26 $generated@@28)) (not true)) (= ($generated@@23 ($generated@@24 $generated@@25 $generated@@26 $generated@@27) $generated@@28) ($generated@@23 $generated@@25 $generated@@28)))))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@25 $generated@@26 $generated@@27) $generated@@28))
)))
(assert (= ($generated@@3 $generated@@30) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@34)) ($generated@@32 $generated@@33))
 :pattern ( ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@34)))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@35 ($generated@@35 $generated@@36 $generated@@37) $generated@@37) ($generated@@35 $generated@@36 $generated@@37))
 :pattern ( ($generated@@35 ($generated@@35 $generated@@36 $generated@@37) $generated@@37))
)))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@38 $generated@@39) $generated@@39)
 :pattern ( ($generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 $generated@@41) $generated@@41)
 :pattern ( ($generated@@40 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@23 ($generated@@35 $generated@@43 $generated@@44) $generated@@45) ($generated@@20 ($generated@@23 $generated@@43 $generated@@45) ($generated@@23 $generated@@44 $generated@@45)))
 :pattern ( ($generated@@23 ($generated@@35 $generated@@43 $generated@@44) $generated@@45))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@T) ) (! (= ($generated@@47 $generated@@49 ($generated@@46 $generated@@49 $generated@@48)) $generated@@48)
 :pattern ( ($generated@@46 $generated@@49 $generated@@48))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> (or (not (= $generated@@52 $generated@@53)) (not true)) (= ($generated@@23 $generated@@51 $generated@@53) ($generated@@23 ($generated@@50 $generated@@51 $generated@@52) $generated@@53)))
 :pattern ( ($generated@@50 $generated@@51 $generated@@52) ($generated@@23 $generated@@51 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@54 ($generated@@50 $generated@@55 $generated@@56)) (+ ($generated@@54 $generated@@55) 1))
 :pattern ( ($generated@@54 ($generated@@50 $generated@@55 $generated@@56)))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@57 ($generated@@47 $generated@@62 $generated@@59) $generated@@60 $generated@@61) ($generated@@58 $generated@@62 $generated@@59 $generated@@60 $generated@@61))
 :pattern ( ($generated@@57 ($generated@@47 $generated@@62 $generated@@59) $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@54 ($generated@@63 $generated@@64 $generated@@65)) (+ ($generated@@54 $generated@@64) ($generated@@54 $generated@@65)))
 :pattern ( ($generated@@54 ($generated@@63 $generated@@64 $generated@@65)))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@67 ($generated@@31 $generated@@68)) (forall (($generated@@69 T@U) ) (!  (=> (< 0 ($generated@@23 $generated@@67 $generated@@69)) ($generated@@66 $generated@@69 $generated@@68))
 :pattern ( ($generated@@23 $generated@@67 $generated@@69))
)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@67 ($generated@@31 $generated@@68)))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 Int) ) (!  (=> (<= 0 $generated@@72) (= ($generated@@54 ($generated@@24 $generated@@70 $generated@@71 $generated@@72)) (+ (- ($generated@@54 $generated@@70) ($generated@@23 $generated@@70 $generated@@71)) $generated@@72)))
 :pattern ( ($generated@@54 ($generated@@24 $generated@@70 $generated@@71 $generated@@72)))
)))
(assert (forall (($generated@@73 T@U) ) (!  (=> ($generated@@66 $generated@@73 $generated) (and (= ($generated@@47 $generated@@4 ($generated@@46 $generated@@4 $generated@@73)) $generated@@73) ($generated@@29 $generated@@4 ($generated@@46 $generated@@4 $generated@@73) $generated)))
 :pattern ( ($generated@@66 $generated@@73 $generated))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@66 ($generated@@47 $generated@@76 $generated@@74) $generated@@75) ($generated@@29 $generated@@76 $generated@@74 $generated@@75))
 :pattern ( ($generated@@66 ($generated@@47 $generated@@76 $generated@@74) $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ) (! (= ($generated@@32 $generated@@77) (forall (($generated@@78 T@U) ) (!  (and (<= 0 ($generated@@23 $generated@@77 $generated@@78)) (<= ($generated@@23 $generated@@77 $generated@@78) ($generated@@54 $generated@@77)))
 :pattern ( ($generated@@23 $generated@@77 $generated@@78))
)))
 :pattern ( ($generated@@32 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ) (! (<= 0 ($generated@@54 $generated@@79))
 :pattern ( ($generated@@54 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@23 $generated@@80 $generated@@81) 0)
 :pattern ( ($generated@@23 $generated@@80 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@23 ($generated@@50 $generated@@82 $generated@@83) $generated@@83) (+ ($generated@@23 $generated@@82 $generated@@83) 1))
 :pattern ( ($generated@@50 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@84 ($generated@@31 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@31 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ) (! (= ($generated@@19 ($generated@@31 $generated@@86)) $generated@@1)
 :pattern ( ($generated@@31 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@46 $generated@@88 ($generated@@47 $generated@@88 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@47 $generated@@88 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@35 $generated@@89 ($generated@@35 $generated@@89 $generated@@90)) ($generated@@35 $generated@@89 $generated@@90))
 :pattern ( ($generated@@35 $generated@@89 ($generated@@35 $generated@@89 $generated@@90)))
)))
(assert (forall (($generated@@91 T@U) ) (!  (and (= (= ($generated@@54 $generated@@91) 0) (= $generated@@91 $generated@@80)) (=> (or (not (= ($generated@@54 $generated@@91) 0)) (not true)) (exists (($generated@@92 T@U) ) (! (< 0 ($generated@@23 $generated@@91 $generated@@92))
 :pattern ( ($generated@@23 $generated@@91 $generated@@92))
))))
 :pattern ( ($generated@@54 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@23 ($generated@@63 $generated@@93 $generated@@94) $generated@@95) (+ ($generated@@23 $generated@@93 $generated@@95) ($generated@@23 $generated@@94 $generated@@95)))
 :pattern ( ($generated@@23 ($generated@@63 $generated@@93 $generated@@94) $generated@@95))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@96 $generated@@107 $generated@@108 $generated@@109 ($generated@@103 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@112 $generated@@113) $generated@@110)
 :weight 0
)) (and (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@96 $generated@@114 $generated@@115 $generated@@116 ($generated@@103 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@96 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)) (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@96 $generated@@123 $generated@@124 $generated@@125 ($generated@@103 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@130 $generated@@131) ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@130 $generated@@131)))
 :weight 0
)))) (= ($generated@@3 $generated@@97) 4)) (= ($generated@@3 $generated@@98) 5)) (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@100 $generated@@132 $generated@@133 ($generated@@104 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@134) $generated@@136) $generated@@134)
 :weight 0
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (or (= $generated@@141 $generated@@142) (= ($generated@@100 $generated@@137 $generated@@138 ($generated@@104 $generated@@137 $generated@@138 $generated@@140 $generated@@141 $generated@@139) $generated@@142) ($generated@@100 $generated@@137 $generated@@138 $generated@@140 $generated@@142)))
 :weight 0
))) (= ($generated@@3 $generated@@101) 6)) (forall (($generated@@143 T@T) ($generated@@144 T@T) ) (= ($generated@@3 ($generated@@102 $generated@@143 $generated@@144)) 7))) (forall (($generated@@145 T@T) ($generated@@146 T@T) ) (! (= ($generated@@105 ($generated@@102 $generated@@145 $generated@@146)) $generated@@145)
 :pattern ( ($generated@@102 $generated@@145 $generated@@146))
))) (forall (($generated@@147 T@T) ($generated@@148 T@T) ) (! (= ($generated@@106 ($generated@@102 $generated@@147 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@102 $generated@@147 $generated@@148))
))))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 Bool) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@8 ($generated@@96 $generated@@97 $generated@@98 $generated@@4 ($generated@@99 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))  (=> (and (or (not (= $generated@@153 $generated@@149)) (not true)) ($generated@@8 ($generated@@46 $generated@@4 ($generated@@100 $generated@@98 $generated@@101 ($generated@@100 $generated@@97 ($generated@@102 $generated@@98 $generated@@101) $generated@@150 $generated@@153) $generated@@151)))) $generated@@152))
 :pattern ( ($generated@@96 $generated@@97 $generated@@98 $generated@@4 ($generated@@99 $generated@@149 $generated@@150 $generated@@151 $generated@@152) $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 Int) ($generated@@156 Int) ) (! (= (<= $generated@@155 $generated@@156) (= ($generated@@20 $generated@@155 $generated@@156) $generated@@155))
 :pattern ( ($generated@@20 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@157 Int) ($generated@@158 Int) ) (! (= (<= $generated@@158 $generated@@157) (= ($generated@@20 $generated@@157 $generated@@158) $generated@@158))
 :pattern ( ($generated@@20 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> ($generated@@66 $generated@@159 ($generated@@31 $generated@@160)) (and (= ($generated@@47 $generated@@30 ($generated@@46 $generated@@30 $generated@@159)) $generated@@159) ($generated@@29 $generated@@30 ($generated@@46 $generated@@30 $generated@@159) ($generated@@31 $generated@@160))))
 :pattern ( ($generated@@66 $generated@@159 ($generated@@31 $generated@@160)))
)))
(assert (forall (($generated@@161 Int) ) (! (= ($generated@@47 $generated@@5 ($generated@@9 ($generated@@38 $generated@@161))) ($generated@@40 $generated@@101 ($generated@@47 $generated@@5 ($generated@@9 $generated@@161))))
 :pattern ( ($generated@@47 $generated@@5 ($generated@@9 ($generated@@38 $generated@@161))))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@47 $generated@@163 ($generated@@40 $generated@@163 $generated@@162)) ($generated@@40 $generated@@101 ($generated@@47 $generated@@163 $generated@@162)))
 :pattern ( ($generated@@47 $generated@@163 ($generated@@40 $generated@@163 $generated@@162)))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (< 0 ($generated@@23 $generated@@164 $generated@@166)) (< 0 ($generated@@23 ($generated@@50 $generated@@164 $generated@@165) $generated@@166)))
 :pattern ( ($generated@@50 $generated@@164 $generated@@165) ($generated@@23 $generated@@164 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (! (= (< 0 ($generated@@23 ($generated@@50 $generated@@167 $generated@@168) $generated@@169))  (or (= $generated@@169 $generated@@168) (< 0 ($generated@@23 $generated@@167 $generated@@169))))
 :pattern ( ($generated@@23 ($generated@@50 $generated@@167 $generated@@168) $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@58 $generated@@30 $generated@@170 ($generated@@31 $generated@@171) $generated@@172) (forall (($generated@@173 T@U) ) (!  (=> (< 0 ($generated@@23 $generated@@170 $generated@@173)) ($generated@@57 $generated@@173 $generated@@171 $generated@@172))
 :pattern ( ($generated@@23 $generated@@170 $generated@@173))
)))
 :pattern ( ($generated@@58 $generated@@30 $generated@@170 ($generated@@31 $generated@@171) $generated@@172))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (! ($generated@@58 $generated@@4 $generated@@175 $generated $generated@@174)
 :pattern ( ($generated@@58 $generated@@4 $generated@@175 $generated $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ) (! ($generated@@29 $generated@@4 $generated@@176 $generated)
 :pattern ( ($generated@@29 $generated@@4 $generated@@176 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () Int)
(declare-fun $generated@@180 () Int)
(declare-fun $generated@@181 () Int)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 (T@U) Bool)
(declare-fun $generated@@190 (T@U) Bool)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () Int)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@195  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ($generated@@23 ($generated@@35 $generated@@177 $generated@@178) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 false)))) (ite (<= $generated@@179 $generated@@180) $generated@@179 $generated@@180))) (=> (= ($generated@@23 ($generated@@35 $generated@@177 $generated@@178) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 false)))) (ite (<= $generated@@179 $generated@@180) $generated@@179 $generated@@180)) (=> (= (ControlFlow 0 2) (- 0 1)) (<= 0 $generated@@181))))))
(let (($generated@@196  (=> (and (< $generated@@180 $generated@@179) (= (ControlFlow 0 5) 2)) $generated@@195)))
(let (($generated@@197  (=> (and (<= $generated@@179 $generated@@180) (= (ControlFlow 0 4) 2)) $generated@@195)))
(let (($generated@@198  (=> (= $generated@@182 ($generated@@99 $generated@@183 $generated@@184 $generated@@2 false)) (=> (and (and (and ($generated@@29 $generated@@30 $generated@@185 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@185 ($generated@@31 $generated) $generated@@184)) (and ($generated@@29 $generated@@30 $generated@@186 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@186 ($generated@@31 $generated) $generated@@184))) (and (and ($generated@@29 $generated@@30 $generated@@187 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@187 ($generated@@31 $generated) $generated@@184)) (= $generated@@188 ($generated@@40 $generated@@30 ($generated@@50 ($generated@@50 ($generated@@50 $generated@@80 ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 false)))) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 true)))) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 true)))))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (<= 0 $generated@@179)) (=> (<= 0 $generated@@179) (=> (= $generated@@177 ($generated@@24 ($generated@@40 $generated@@30 ($generated@@50 $generated@@80 ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 true))))) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 false))) $generated@@179)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (<= 0 $generated@@180)) (=> (<= 0 $generated@@180) (=> (= $generated@@178 ($generated@@24 ($generated@@40 $generated@@30 $generated@@80) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 false))) $generated@@180)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= ($generated@@23 ($generated@@63 ($generated@@63 $generated@@188 $generated@@177) $generated@@178) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 true)))) ($generated@@38 3))) (=> (= ($generated@@23 ($generated@@63 ($generated@@63 $generated@@188 $generated@@177) $generated@@178) ($generated@@47 $generated@@4 ($generated@@40 $generated@@4 ($generated@@7 true)))) ($generated@@38 3)) (and (=> (= (ControlFlow 0 6) 4) $generated@@197) (=> (= (ControlFlow 0 6) 5) $generated@@196))))))))))))))
(let (($generated@@199  (=> (and (and ($generated@@189 $generated@@184) ($generated@@190 $generated@@184)) (and (<= ($generated@@38 0) $generated@@179) (<= ($generated@@38 0) $generated@@180))) (=> (and (and (and (and ($generated@@29 $generated@@30 $generated@@191 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@191 ($generated@@31 $generated) $generated@@184)) true) (and (and ($generated@@29 $generated@@30 $generated@@192 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@192 ($generated@@31 $generated) $generated@@184)) true)) (and (and (and ($generated@@29 $generated@@30 $generated@@193 ($generated@@31 $generated)) ($generated@@58 $generated@@30 $generated@@193 ($generated@@31 $generated) $generated@@184)) true) (and (= 0 $generated@@194) (= (ControlFlow 0 10) 6)))) $generated@@198))))
$generated@@199))))))
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