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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 () Int)
(declare-fun $generated@@21 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@T T@U) T@U)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 (T@U T@U T@U) Bool)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U T@U) T@U)
(declare-fun $generated@@40 (T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@56 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) Bool)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@75 (T@U) Bool)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@84 (T@U T@U T@U) Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@122 (T@U) Int)
(declare-fun $generated@@123 (T@U) Int)
(declare-fun $generated@@131 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@132 () T@T)
(declare-fun $generated@@133 () T@T)
(declare-fun $generated@@134 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@135 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@136 (T@T T@T) T@T)
(declare-fun $generated@@137 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@T) T@T)
(declare-fun $generated@@140 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert  (and (= ($generated@@4 $generated@@24) 3) (= ($generated@@4 $generated@@30) 4)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> (or ($generated@@25 $generated@@33 ($generated@@23 $generated@@24 $generated@@35) ($generated@@23 $generated@@24 $generated@@36)) (and (< 1 $generated@@20) (and ($generated@@26 $generated@@24 $generated@@35 ($generated@@27 $generated@@33)) ($generated@@26 $generated@@24 $generated@@36 ($generated@@27 $generated@@33))))) (and (=> (not ($generated@@9 ($generated@@23 $generated@@5 ($generated@@8 ($generated@@28 ($generated@@23 $generated@@24 $generated@@35)))))) (let (($generated@@37 ($generated@@23 $generated@@24 ($generated@@29 ($generated@@23 $generated@@24 $generated@@35)))))
($generated@@25 $generated@@33 $generated@@37 ($generated@@23 $generated@@24 $generated@@36)))) (= ($generated@@21 $generated@@33 ($generated@@22 $generated@@34) ($generated@@23 $generated@@24 $generated@@35) ($generated@@23 $generated@@24 $generated@@36)) (ite ($generated@@28 ($generated@@23 $generated@@24 $generated@@35)) $generated@@36 (let (($generated@@38 ($generated@@23 $generated@@24 ($generated@@29 ($generated@@23 $generated@@24 $generated@@35)))))
(let (($generated@@39 ($generated@@23 $generated@@30 ($generated@@31 ($generated@@23 $generated@@24 $generated@@35)))))
($generated@@23 $generated@@24 ($generated@@32 $generated@@39 ($generated@@23 $generated@@24 ($generated@@21 $generated@@33 ($generated@@22 $generated@@34) $generated@@38 ($generated@@23 $generated@@24 $generated@@36)))))))))))
 :weight 3
 :pattern ( ($generated@@21 $generated@@33 ($generated@@22 $generated@@34) ($generated@@23 $generated@@24 $generated@@35) ($generated@@23 $generated@@24 $generated@@36)))
))))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@40 $generated@@41 ($generated@@22 $generated@@42) $generated@@43) ($generated@@40 $generated@@41 $generated@@42 $generated@@43))
 :pattern ( ($generated@@40 $generated@@41 ($generated@@22 $generated@@42) $generated@@43))
)))
(assert (= ($generated@@44 $generated@@45) $generated@@1))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (or ($generated@@46 $generated@@49 ($generated@@23 $generated@@24 $generated@@51)) (and (< 2 $generated@@20) ($generated@@26 $generated@@24 $generated@@51 ($generated@@27 ($generated@@27 $generated@@49))))) (and (=> (not ($generated@@9 ($generated@@23 $generated@@5 ($generated@@8 ($generated@@28 ($generated@@23 $generated@@24 $generated@@51)))))) (let (($generated@@52 ($generated@@23 $generated@@24 ($generated@@29 ($generated@@23 $generated@@24 $generated@@51)))))
(let (($generated@@53 ($generated@@23 $generated@@24 ($generated@@47 $generated@@24 ($generated@@31 ($generated@@23 $generated@@24 $generated@@51))))))
 (and ($generated@@46 $generated@@49 $generated@@52) ($generated@@25 $generated@@49 $generated@@53 ($generated@@40 $generated@@49 ($generated@@22 $generated@@50) $generated@@52)))))) (= ($generated@@40 $generated@@49 ($generated@@22 $generated@@50) ($generated@@23 $generated@@24 $generated@@51)) (ite ($generated@@28 ($generated@@23 $generated@@24 $generated@@51)) $generated@@45 (let (($generated@@54 ($generated@@23 $generated@@24 ($generated@@29 ($generated@@23 $generated@@24 $generated@@51)))))
(let (($generated@@55 ($generated@@23 $generated@@24 ($generated@@47 $generated@@24 ($generated@@31 ($generated@@23 $generated@@24 $generated@@51))))))
($generated@@23 $generated@@24 ($generated@@21 $generated@@49 ($generated@@22 $generated@@48) $generated@@55 ($generated@@23 $generated@@24 ($generated@@40 $generated@@49 ($generated@@22 $generated@@50) $generated@@54))))))))))
 :weight 3
 :pattern ( ($generated@@40 $generated@@49 ($generated@@22 $generated@@50) ($generated@@23 $generated@@24 $generated@@51)))
))))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (!  (=> ($generated@@57 $generated@@59) ($generated@@56 $generated@@24 $generated@@45 ($generated@@27 $generated@@58) $generated@@59))
 :pattern ( ($generated@@56 $generated@@24 $generated@@45 ($generated@@27 $generated@@58) $generated@@59))
)))
(assert (forall (($generated@@60 T@U) ) (! ($generated@@26 $generated@@24 $generated@@45 ($generated@@27 $generated@@60))
 :pattern ( ($generated@@26 $generated@@24 $generated@@45 ($generated@@27 $generated@@60)))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@23 $generated@@62 $generated@@61) $generated@@61)
 :pattern ( ($generated@@23 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@26 $generated@@24 ($generated@@32 $generated@@65 $generated@@66) ($generated@@27 $generated@@64))  (and ($generated@@63 $generated@@65 $generated@@64) ($generated@@26 $generated@@24 $generated@@66 ($generated@@27 $generated@@64))))
 :pattern ( ($generated@@26 $generated@@24 ($generated@@32 $generated@@65 $generated@@66) ($generated@@27 $generated@@64)))
)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> (or ($generated@@25 $generated@@67 $generated@@69 $generated@@70) (and (< 1 $generated@@20) (and ($generated@@26 $generated@@24 $generated@@69 ($generated@@27 $generated@@67)) ($generated@@26 $generated@@24 $generated@@70 ($generated@@27 $generated@@67))))) (and (=> (not ($generated@@28 $generated@@69)) (let (($generated@@71 ($generated@@29 $generated@@69)))
($generated@@25 $generated@@67 $generated@@71 $generated@@70))) (= ($generated@@21 $generated@@67 ($generated@@22 $generated@@68) $generated@@69 $generated@@70) (ite ($generated@@28 $generated@@69) $generated@@70 (let (($generated@@72 ($generated@@29 $generated@@69)))
(let (($generated@@73 ($generated@@31 $generated@@69)))
($generated@@32 $generated@@73 ($generated@@21 $generated@@67 $generated@@68 $generated@@72 $generated@@70))))))))
 :pattern ( ($generated@@21 $generated@@67 ($generated@@22 $generated@@68) $generated@@69 $generated@@70))
))))
(assert (forall (($generated@@74 T@U) ) (! (= ($generated@@28 $generated@@74) (= ($generated@@44 $generated@@74) $generated@@1))
 :pattern ( ($generated@@28 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ) (! (= ($generated@@75 $generated@@76) (= ($generated@@44 $generated@@76) $generated@@2))
 :pattern ( ($generated@@75 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 ($generated@@47 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@47 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@75 $generated@@80) (exists (($generated@@81 T@U) ($generated@@82 T@U) ) (= $generated@@80 ($generated@@32 $generated@@81 $generated@@82))))
 :pattern ( ($generated@@75 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ) (!  (=> ($generated@@28 $generated@@83) (= $generated@@83 $generated@@45))
 :pattern ( ($generated@@28 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@84 ($generated@@77 $generated@@88 $generated@@85) $generated@@86 $generated@@87) ($generated@@56 $generated@@88 $generated@@85 $generated@@86 $generated@@87))
 :pattern ( ($generated@@84 ($generated@@77 $generated@@88 $generated@@85) $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@91 T@U) ) (!  (and (= ($generated@@89 ($generated@@27 $generated@@91)) $generated@@0) (= ($generated@@90 ($generated@@27 $generated@@91)) $generated@@3))
 :pattern ( ($generated@@27 $generated@@91))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (or ($generated@@46 $generated@@92 $generated@@94) (and (< 2 $generated@@20) ($generated@@26 $generated@@24 $generated@@94 ($generated@@27 ($generated@@27 $generated@@92))))) (and (=> (not ($generated@@28 $generated@@94)) (let (($generated@@95 ($generated@@29 $generated@@94)))
(let (($generated@@96 ($generated@@47 $generated@@24 ($generated@@31 $generated@@94))))
 (and ($generated@@46 $generated@@92 $generated@@95) ($generated@@25 $generated@@92 $generated@@96 ($generated@@40 $generated@@92 $generated@@93 $generated@@95)))))) (= ($generated@@40 $generated@@92 ($generated@@22 $generated@@93) $generated@@94) (ite ($generated@@28 $generated@@94) $generated@@45 (let (($generated@@97 ($generated@@29 $generated@@94)))
(let (($generated@@98 ($generated@@47 $generated@@24 ($generated@@31 $generated@@94))))
($generated@@21 $generated@@92 ($generated@@22 $generated@@48) $generated@@98 ($generated@@40 $generated@@92 $generated@@93 $generated@@97))))))))
 :pattern ( ($generated@@40 $generated@@92 ($generated@@22 $generated@@93) $generated@@94))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> (and (or ($generated@@46 $generated@@100 $generated@@102) (and (< 2 $generated@@20) (and ($generated@@26 $generated@@24 $generated@@102 ($generated@@27 ($generated@@27 $generated@@100))) ($generated@@56 $generated@@24 $generated@@102 ($generated@@27 ($generated@@27 $generated@@100)) $generated@@99)))) ($generated@@57 $generated@@99)) ($generated@@56 $generated@@24 ($generated@@40 $generated@@100 $generated@@101 $generated@@102) ($generated@@27 $generated@@100) $generated@@99))
 :pattern ( ($generated@@56 $generated@@24 ($generated@@40 $generated@@100 $generated@@101 $generated@@102) ($generated@@27 $generated@@100) $generated@@99))
))))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> ($generated@@26 $generated@@24 $generated@@104 ($generated@@27 $generated@@103)) (or ($generated@@28 $generated@@104) ($generated@@75 $generated@@104)))
 :pattern ( ($generated@@75 $generated@@104) ($generated@@26 $generated@@24 $generated@@104 ($generated@@27 $generated@@103)))
 :pattern ( ($generated@@28 $generated@@104) ($generated@@26 $generated@@24 $generated@@104 ($generated@@27 $generated@@103)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@T) ) (! (= ($generated@@63 ($generated@@77 $generated@@107 $generated@@105) $generated@@106) ($generated@@26 $generated@@107 $generated@@105 $generated@@106))
 :pattern ( ($generated@@63 ($generated@@77 $generated@@107 $generated@@105) $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@44 ($generated@@32 $generated@@108 $generated@@109)) $generated@@2)
 :pattern ( ($generated@@32 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@31 ($generated@@32 $generated@@110 $generated@@111)) $generated@@110)
 :pattern ( ($generated@@32 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@29 ($generated@@32 $generated@@112 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@32 $generated@@112 $generated@@113))
)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (or ($generated@@25 $generated@@114 $generated@@116 $generated@@117) (and (< 1 $generated@@20) (and ($generated@@26 $generated@@24 $generated@@116 ($generated@@27 $generated@@114)) ($generated@@26 $generated@@24 $generated@@117 ($generated@@27 $generated@@114))))) ($generated@@26 $generated@@24 ($generated@@21 $generated@@114 $generated@@115 $generated@@116 $generated@@117) ($generated@@27 $generated@@114)))
 :pattern ( ($generated@@21 $generated@@114 $generated@@115 $generated@@116 $generated@@117))
))))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@27 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@27 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@47 $generated@@121 ($generated@@77 $generated@@121 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@77 $generated@@121 $generated@@120))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (! (< ($generated@@122 $generated@@124) ($generated@@123 ($generated@@32 $generated@@124 $generated@@125)))
 :pattern ( ($generated@@32 $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (< ($generated@@123 $generated@@127) ($generated@@123 ($generated@@32 $generated@@126 $generated@@127)))
 :pattern ( ($generated@@32 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (and ($generated@@57 $generated@@130) (and ($generated@@75 $generated@@128) ($generated@@56 $generated@@24 $generated@@128 ($generated@@27 $generated@@129) $generated@@130))) ($generated@@84 ($generated@@31 $generated@@128) $generated@@129 $generated@@130))
 :pattern ( ($generated@@84 ($generated@@31 $generated@@128) $generated@@129 $generated@@130))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@131 $generated@@141 $generated@@142 $generated@@143 ($generated@@137 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@146 $generated@@147) $generated@@144)
 :weight 0
)) (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@131 $generated@@148 $generated@@149 $generated@@150 ($generated@@137 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@155 $generated@@156) ($generated@@131 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@155 $generated@@156)))
 :weight 0
)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@163 $generated@@165) (= ($generated@@131 $generated@@157 $generated@@158 $generated@@159 ($generated@@137 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@131 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)))) (= ($generated@@4 $generated@@132) 5)) (= ($generated@@4 $generated@@133) 6)) (forall (($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@135 $generated@@166 $generated@@167 ($generated@@138 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@168) $generated@@170) $generated@@168)
 :weight 0
))) (forall (($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@175 $generated@@176) (= ($generated@@135 $generated@@171 $generated@@172 ($generated@@138 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@173) $generated@@176) ($generated@@135 $generated@@171 $generated@@172 $generated@@174 $generated@@176)))
 :weight 0
))) (forall (($generated@@177 T@T) ($generated@@178 T@T) ) (= ($generated@@4 ($generated@@136 $generated@@177 $generated@@178)) 7))) (forall (($generated@@179 T@T) ($generated@@180 T@T) ) (! (= ($generated@@139 ($generated@@136 $generated@@179 $generated@@180)) $generated@@179)
 :pattern ( ($generated@@136 $generated@@179 $generated@@180))
))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (! (= ($generated@@140 ($generated@@136 $generated@@181 $generated@@182)) $generated@@182)
 :pattern ( ($generated@@136 $generated@@181 $generated@@182))
))))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 Bool) ($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@9 ($generated@@131 $generated@@132 $generated@@133 $generated@@5 ($generated@@134 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))  (=> (and (or (not (= $generated@@187 $generated@@183)) (not true)) ($generated@@9 ($generated@@47 $generated@@5 ($generated@@135 $generated@@133 $generated@@30 ($generated@@135 $generated@@132 ($generated@@136 $generated@@133 $generated@@30) $generated@@184 $generated@@187) $generated@@185)))) $generated@@186))
 :pattern ( ($generated@@131 $generated@@132 $generated@@133 $generated@@5 ($generated@@134 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))
)))
(assert  (=> (<= 1 $generated@@20) (forall (($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> (and (or ($generated@@25 $generated@@190 $generated@@192 $generated@@193) (and (< 1 $generated@@20) (and (and ($generated@@26 $generated@@24 $generated@@192 ($generated@@27 $generated@@190)) ($generated@@56 $generated@@24 $generated@@192 ($generated@@27 $generated@@190) $generated@@189)) (and ($generated@@26 $generated@@24 $generated@@193 ($generated@@27 $generated@@190)) ($generated@@56 $generated@@24 $generated@@193 ($generated@@27 $generated@@190) $generated@@189))))) ($generated@@57 $generated@@189)) ($generated@@56 $generated@@24 ($generated@@21 $generated@@190 $generated@@191 $generated@@192 $generated@@193) ($generated@@27 $generated@@190) $generated@@189))
 :pattern ( ($generated@@56 $generated@@24 ($generated@@21 $generated@@190 $generated@@191 $generated@@192 $generated@@193) ($generated@@27 $generated@@190) $generated@@189))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (or ($generated@@46 $generated@@194 $generated@@196) (and (< 2 $generated@@20) ($generated@@26 $generated@@24 $generated@@196 ($generated@@27 ($generated@@27 $generated@@194))))) ($generated@@26 $generated@@24 ($generated@@40 $generated@@194 $generated@@195 $generated@@196) ($generated@@27 $generated@@194)))
 :pattern ( ($generated@@40 $generated@@194 $generated@@195 $generated@@196))
))))
(assert (forall (($generated@@197 T@U) ) (! (= ($generated@@122 ($generated@@77 $generated@@24 $generated@@197)) ($generated@@123 $generated@@197))
 :pattern ( ($generated@@122 ($generated@@77 $generated@@24 $generated@@197)))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (! (= ($generated@@21 $generated@@198 ($generated@@22 $generated@@199) $generated@@200 $generated@@201) ($generated@@21 $generated@@198 $generated@@199 $generated@@200 $generated@@201))
 :pattern ( ($generated@@21 $generated@@198 ($generated@@22 $generated@@199) $generated@@200 $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (!  (=> ($generated@@63 $generated@@203 ($generated@@27 $generated@@202)) (and (= ($generated@@77 $generated@@24 ($generated@@47 $generated@@24 $generated@@203)) $generated@@203) ($generated@@26 $generated@@24 ($generated@@47 $generated@@24 $generated@@203) ($generated@@27 $generated@@202))))
 :pattern ( ($generated@@63 $generated@@203 ($generated@@27 $generated@@202)))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ) (!  (=> (and ($generated@@57 $generated@@206) (and ($generated@@75 $generated@@204) ($generated@@56 $generated@@24 $generated@@204 ($generated@@27 $generated@@205) $generated@@206))) ($generated@@56 $generated@@24 ($generated@@29 $generated@@204) ($generated@@27 $generated@@205) $generated@@206))
 :pattern ( ($generated@@56 $generated@@24 ($generated@@29 $generated@@204) ($generated@@27 $generated@@205) $generated@@206))
)))
(assert (= $generated@@45 ($generated@@23 $generated@@24 $generated@@45)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ) (! (= ($generated@@32 ($generated@@23 $generated@@30 $generated@@207) ($generated@@23 $generated@@24 $generated@@208)) ($generated@@23 $generated@@24 ($generated@@32 $generated@@207 $generated@@208)))
 :pattern ( ($generated@@32 ($generated@@23 $generated@@30 $generated@@207) ($generated@@23 $generated@@24 $generated@@208)))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@T) ) (! (= ($generated@@77 $generated@@210 ($generated@@23 $generated@@210 $generated@@209)) ($generated@@23 $generated@@30 ($generated@@77 $generated@@210 $generated@@209)))
 :pattern ( ($generated@@77 $generated@@210 ($generated@@23 $generated@@210 $generated@@209)))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> ($generated@@57 $generated@@214) (= ($generated@@56 $generated@@24 ($generated@@32 $generated@@212 $generated@@213) ($generated@@27 $generated@@211) $generated@@214)  (and ($generated@@84 $generated@@212 $generated@@211 $generated@@214) ($generated@@56 $generated@@24 $generated@@213 ($generated@@27 $generated@@211) $generated@@214))))
 :pattern ( ($generated@@56 $generated@@24 ($generated@@32 $generated@@212 $generated@@213) ($generated@@27 $generated@@211) $generated@@214))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 () T@U)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@227 true))
(let (($generated@@228  (=> (and (and (= $generated@@215 ($generated@@32 ($generated@@77 $generated@@24 $generated@@216) $generated@@217)) ($generated@@26 $generated@@24 $generated@@216 ($generated@@27 $generated@@218))) (and ($generated@@26 $generated@@24 $generated@@217 ($generated@@27 ($generated@@27 $generated@@218))) (= $generated@@219 $generated@@217))) (=> (and (and (and ($generated@@26 $generated@@24 $generated@@219 ($generated@@27 ($generated@@27 $generated@@218))) (= $generated@@220 $generated@@219)) (and (= $generated@@221 $generated@@216) ($generated@@26 $generated@@24 $generated@@221 ($generated@@27 $generated@@218)))) (and (and (= $generated@@222 $generated@@221) ($generated@@56 $generated@@24 $generated@@222 ($generated@@27 $generated@@218) $generated@@223)) (and ($generated@@56 $generated@@24 $generated@@220 ($generated@@27 ($generated@@27 $generated@@218)) $generated@@223) (= (ControlFlow 0 4) (- 0 3))))) (< ($generated@@123 $generated@@220) ($generated@@123 $generated@@215))))))
(let (($generated@@229  (=> (or (not (= $generated@@215 $generated@@45)) (not true)) (and (=> (= (ControlFlow 0 6) 4) $generated@@228) (=> (= (ControlFlow 0 6) 5) $generated@@227)))))
(let (($generated@@230 true))
(let (($generated@@231 true))
(let (($generated@@232  (=> (= $generated@@224 ($generated@@134 $generated@@225 $generated@@223 $generated false)) (and (and (=> (= (ControlFlow 0 7) 1) $generated@@231) (=> (= (ControlFlow 0 7) 2) $generated@@230)) (=> (= (ControlFlow 0 7) 6) $generated@@229)))))
(let (($generated@@233  (=> (and (and (and ($generated@@57 $generated@@223) ($generated@@226 $generated@@223)) ($generated@@26 $generated@@24 $generated@@215 ($generated@@27 ($generated@@27 $generated@@218)))) (and (= 2 $generated@@20) (= (ControlFlow 0 8) 7))) $generated@@232)))
$generated@@233))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)