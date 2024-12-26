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
(declare-fun $generated@@27 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@31 () Int)
(declare-fun $generated@@32 (T@U Int) Int)
(declare-fun $generated@@33 (Int) Int)
(declare-fun $generated@@34 (T@U Int) Bool)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@T T@U T@U) Bool)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@U) Int)
(declare-fun $generated@@42 (T@U T@U T@U) Bool)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 (T@U) Bool)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@T T@T) T@T)
(declare-fun $generated@@58 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@T) T@T)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@86 (T@T T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@143 (T@U) Bool)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@146 (T@U) Bool)
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
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ) (! ($generated@@27 $generated@@12 $generated@@29 $generated@@28 $generated@@30)
 :pattern ( ($generated@@27 $generated@@12 $generated@@29 $generated@@28 $generated@@30))
)))
(assert (= ($generated@@10 $generated@@37) 3))
(assert  (=> (<= 1 $generated@@31) (forall (($generated@@40 T@U) ($generated@@41 Int) ) (!  (=> (or ($generated@@34 $generated@@40 ($generated@@33 $generated@@41)) (and (< 1 $generated@@31) (and (and (or (not (= $generated@@40 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@40 $generated@@38)) (< ($generated@@39 $generated@@40) 800)))) (= ($generated@@32 $generated@@40 ($generated@@33 $generated@@41)) ($generated@@33 2)))
 :weight 3
 :pattern ( ($generated@@32 $generated@@40 ($generated@@33 $generated@@41)))
))))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> (and ($generated@@42 $generated@@46 $generated@@43 $generated@@47) ($generated@@44 $generated@@47)) ($generated@@42 $generated@@46 $generated@@45 $generated@@47))
 :pattern ( ($generated@@42 $generated@@46 $generated@@43 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@49 $generated@@48 $generated@@50) ($generated@@27 $generated@@37 $generated@@49 $generated@@45 $generated@@50))
 :pattern ( ($generated@@27 $generated@@37 $generated@@49 $generated@@48 $generated@@50))
 :pattern ( ($generated@@27 $generated@@37 $generated@@49 $generated@@45 $generated@@50))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@51 $generated@@38 $generated@@52) ($generated@@27 $generated@@37 $generated@@51 $generated@@43 $generated@@52))
 :pattern ( ($generated@@27 $generated@@37 $generated@@51 $generated@@38 $generated@@52))
 :pattern ( ($generated@@27 $generated@@37 $generated@@51 $generated@@43 $generated@@52))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@61 T@T) ($generated@@62 T@T) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@54 $generated@@61 $generated@@62 ($generated@@58 $generated@@61 $generated@@62 $generated@@64 $generated@@65 $generated@@63) $generated@@65) $generated@@63)
 :weight 0
)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (or (= $generated@@70 $generated@@71) (= ($generated@@54 $generated@@66 $generated@@67 ($generated@@58 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@68) $generated@@71) ($generated@@54 $generated@@66 $generated@@67 $generated@@69 $generated@@71)))
 :weight 0
))) (= ($generated@@10 $generated@@55) 4)) (= ($generated@@10 $generated@@56) 5)) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (= ($generated@@10 ($generated@@57 $generated@@72 $generated@@73)) 6))) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (! (= ($generated@@59 ($generated@@57 $generated@@74 $generated@@75)) $generated@@74)
 :pattern ( ($generated@@57 $generated@@74 $generated@@75))
))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@60 ($generated@@57 $generated@@76 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@57 $generated@@76 $generated@@77))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@78 $generated@@45 $generated@@79)  (or (= $generated@@78 $generated@@35) ($generated@@15 ($generated@@53 $generated@@11 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@37 ($generated@@57 $generated@@55 $generated@@56) $generated@@79 $generated@@78) $generated@@1)))))
 :pattern ( ($generated@@27 $generated@@37 $generated@@78 $generated@@45 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@27 $generated@@37 $generated@@80 $generated@@43 $generated@@81)  (or (= $generated@@80 $generated@@35) ($generated@@15 ($generated@@53 $generated@@11 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@37 ($generated@@57 $generated@@55 $generated@@56) $generated@@81 $generated@@80) $generated@@1)))))
 :pattern ( ($generated@@27 $generated@@37 $generated@@80 $generated@@43 $generated@@81))
)))
(assert (forall (($generated@@82 Int) ) (! (= ($generated@@33 $generated@@82) $generated@@82)
 :pattern ( ($generated@@33 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 $generated@@84) $generated@@84)
 :pattern ( ($generated@@83 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@86 $generated@@88 ($generated@@53 $generated@@88 $generated@@87)) $generated@@87)
 :pattern ( ($generated@@53 $generated@@88 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ) (! (= ($generated@@36 $generated@@12 $generated@@89 $generated@@28) (<= ($generated@@33 0) ($generated@@17 $generated@@89)))
 :pattern ( ($generated@@36 $generated@@12 $generated@@89 $generated@@28))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@42 ($generated@@86 $generated@@93 $generated@@90) $generated@@91 $generated@@92) ($generated@@27 $generated@@93 $generated@@90 $generated@@91 $generated@@92))
 :pattern ( ($generated@@42 ($generated@@86 $generated@@93 $generated@@90) $generated@@91 $generated@@92))
)))
(assert  (=> (< 0 $generated@@31) (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (and (and ($generated@@44 $generated@@94) (and (or (not (= $generated@@95 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@95 $generated@@45))) ($generated@@15 ($generated@@53 $generated@@11 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@37 ($generated@@57 $generated@@55 $generated@@56) $generated@@94 $generated@@95) $generated@@1)))) ($generated@@27 $generated@@12 ($generated@@16 ($generated@@39 $generated@@95)) $generated@@28 $generated@@94))
 :pattern ( ($generated@@39 $generated@@95) ($generated@@53 $generated@@11 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@37 ($generated@@57 $generated@@55 $generated@@56) $generated@@94 $generated@@95) $generated@@1)))
))))
(assert  (=> (< 0 $generated@@31) (forall (($generated@@96 T@U) ) (!  (=> (and (or (not (= $generated@@96 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@96 $generated@@45)) ($generated@@36 $generated@@12 ($generated@@16 ($generated@@39 $generated@@96)) $generated@@28))
 :pattern ( ($generated@@39 $generated@@96))
))))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@97 $generated@@48)  (and ($generated@@36 $generated@@37 $generated@@97 $generated@@45) (or (not (= $generated@@97 $generated@@35)) (not true))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@97 $generated@@48))
 :pattern ( ($generated@@36 $generated@@37 $generated@@97 $generated@@45))
)))
(assert (forall (($generated@@98 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@98 $generated@@38)  (and ($generated@@36 $generated@@37 $generated@@98 $generated@@43) (or (not (= $generated@@98 $generated@@35)) (not true))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@98 $generated@@38))
 :pattern ( ($generated@@36 $generated@@37 $generated@@98 $generated@@43))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> ($generated@@27 $generated@@37 $generated@@99 $generated@@43 $generated@@100) ($generated@@27 $generated@@37 $generated@@99 $generated@@45 $generated@@100))
 :pattern ( ($generated@@27 $generated@@37 $generated@@99 $generated@@43 $generated@@100))
)))
(assert  (=> (<= 1 $generated@@31) (forall (($generated@@101 T@U) ($generated@@102 Int) ) (!  (=> (or ($generated@@34 ($generated@@83 $generated@@37 $generated@@101) ($generated@@33 $generated@@102)) (and (< 1 $generated@@31) (and (and (or (not (= $generated@@101 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@101 $generated@@38)) (< ($generated@@39 ($generated@@83 $generated@@37 $generated@@101)) 800)))) (= ($generated@@32 ($generated@@83 $generated@@37 $generated@@101) ($generated@@33 $generated@@102)) ($generated@@33 2)))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@83 $generated@@37 $generated@@101) ($generated@@33 $generated@@102)))
))))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@53 $generated@@104 ($generated@@86 $generated@@104 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@86 $generated@@104 $generated@@103))
)))
(assert  (=> (<= 1 $generated@@31) (forall (($generated@@105 T@U) ($generated@@106 Int) ) (!  (=> (or ($generated@@34 $generated@@105 $generated@@106) (and (< 1 $generated@@31) (and (and (or (not (= $generated@@105 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@105 $generated@@38)) (< ($generated@@39 $generated@@105) 800)))) (and (< ($generated@@32 $generated@@105 $generated@@106) ($generated@@39 $generated@@105)) (<= ($generated@@33 0) ($generated@@32 $generated@@105 $generated@@106))))
 :pattern ( ($generated@@32 $generated@@105 $generated@@106))
))))
(assert  (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@107 $generated@@110 $generated@@111 $generated@@112 ($generated@@109 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@107 $generated@@117 $generated@@118 $generated@@119 ($generated@@109 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@107 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@107 $generated@@126 $generated@@127 $generated@@128 ($generated@@109 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@107 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 Bool) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@15 ($generated@@107 $generated@@37 $generated@@55 $generated@@11 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))  (=> (and (or (not (= $generated@@139 $generated@@135)) (not true)) ($generated@@15 ($generated@@53 $generated@@11 ($generated@@54 $generated@@55 $generated@@56 ($generated@@54 $generated@@37 ($generated@@57 $generated@@55 $generated@@56) $generated@@136 $generated@@139) $generated@@137)))) $generated@@138))
 :pattern ( ($generated@@107 $generated@@37 $generated@@55 $generated@@11 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ) (!  (=> ($generated@@36 $generated@@37 $generated@@141 $generated@@43) ($generated@@36 $generated@@37 $generated@@141 $generated@@45))
 :pattern ( ($generated@@36 $generated@@37 $generated@@141 $generated@@43))
)))
(assert (= ($generated@@26 $generated@@28) $generated@@2))
(assert (= ($generated@@142 $generated@@28) $generated@@7))
(assert (= ($generated@@26 $generated@@48) $generated@@3))
(assert (= ($generated@@142 $generated@@48) $generated@@8))
(assert (= ($generated@@26 $generated@@45) $generated@@4))
(assert (= ($generated@@142 $generated@@45) $generated@@8))
(assert (= ($generated@@26 $generated@@43) $generated@@5))
(assert (= ($generated@@142 $generated@@43) $generated@@9))
(assert (= ($generated@@26 $generated@@38) $generated@@6))
(assert (= ($generated@@142 $generated@@38) $generated@@9))
(assert (forall (($generated@@145 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@145 $generated@@45)  (or (= $generated@@145 $generated@@35) ($generated@@143 ($generated@@144 $generated@@145))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@145 $generated@@45))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@36 $generated@@37 $generated@@147 $generated@@43)  (or (= $generated@@147 $generated@@35) ($generated@@146 ($generated@@144 $generated@@147))))
 :pattern ( ($generated@@36 $generated@@37 $generated@@147 $generated@@43))
)))
(assert (forall (($generated@@148 Int) ) (! (= ($generated@@86 $generated@@12 ($generated@@16 ($generated@@33 $generated@@148))) ($generated@@83 $generated@@56 ($generated@@86 $generated@@12 ($generated@@16 $generated@@148))))
 :pattern ( ($generated@@86 $generated@@12 ($generated@@16 ($generated@@33 $generated@@148))))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@T) ) (! (= ($generated@@86 $generated@@150 ($generated@@83 $generated@@150 $generated@@149)) ($generated@@83 $generated@@56 ($generated@@86 $generated@@150 $generated@@149)))
 :pattern ( ($generated@@86 $generated@@150 ($generated@@83 $generated@@150 $generated@@149)))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! ($generated@@27 $generated@@12 $generated@@152 $generated $generated@@151)
 :pattern ( ($generated@@27 $generated@@12 $generated@@152 $generated $generated@@151))
)))
(assert  (=> (<= 1 $generated@@31) (forall (($generated@@153 T@U) ($generated@@154 Int) ) (!  (=> (or ($generated@@34 $generated@@153 $generated@@154) (and (< 1 $generated@@31) (and (and (or (not (= $generated@@153 $generated@@35)) (not true)) ($generated@@36 $generated@@37 $generated@@153 $generated@@38)) (< ($generated@@39 $generated@@153) 800)))) (= ($generated@@32 $generated@@153 $generated@@154) ($generated@@33 2)))
 :pattern ( ($generated@@32 $generated@@153 $generated@@154))
))))
(assert (forall (($generated@@155 T@U) ) (! ($generated@@36 $generated@@12 $generated@@155 $generated)
 :pattern ( ($generated@@36 $generated@@12 $generated@@155 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () Int)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@161  (=> (= (ControlFlow 0 6) (- 0 5)) (< ($generated@@32 $generated@@156 $generated@@157) ($generated@@39 $generated@@156)))))
(let (($generated@@162  (and (=> (= (ControlFlow 0 7) (- 0 8)) ($generated@@36 $generated@@12 ($generated@@16 ($generated@@33 2)) $generated@@28)) (=> ($generated@@36 $generated@@12 ($generated@@16 ($generated@@33 2)) $generated@@28) (=> (= ($generated@@32 $generated@@156 $generated@@157) ($generated@@33 2)) (=> (and ($generated@@36 $generated@@12 ($generated@@16 ($generated@@32 $generated@@156 $generated@@157)) $generated@@28) (= (ControlFlow 0 7) 6)) $generated@@161))))))
(let (($generated@@163  (=> (<= ($generated@@33 0) ($generated@@32 $generated@@156 $generated@@157)) (=> (and ($generated@@42 ($generated@@86 $generated@@37 $generated@@156) $generated@@43 $generated@@158) ($generated@@27 $generated@@12 ($generated@@16 $generated@@157) $generated $generated@@158)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (< ($generated@@39 $generated@@156) 800)) (=> (< ($generated@@39 $generated@@156) 800) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (<= 0 $generated@@157) (= $generated@@157 $generated@@157))) (=> (or (<= 0 $generated@@157) (= $generated@@157 $generated@@157)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= $generated@@156 $generated@@156) (= $generated@@157 $generated@@157)) (< $generated@@157 $generated@@157)))))))))))
(let (($generated@@164  (=> (and (= $generated@@159 ($generated@@108 $generated@@35 $generated@@158 $generated@@1 false)) (< ($generated@@39 $generated@@156) 800)) (and (=> (= (ControlFlow 0 9) 2) $generated@@163) (=> (= (ControlFlow 0 9) 7) $generated@@162)))))
(let (($generated@@165  (=> (and ($generated@@44 $generated@@158) ($generated@@160 $generated@@158)) (=> (and (and (or (not (= $generated@@156 $generated@@35)) (not true)) (and ($generated@@36 $generated@@37 $generated@@156 $generated@@38) ($generated@@27 $generated@@37 $generated@@156 $generated@@38 $generated@@158))) (and (= 1 $generated@@31) (= (ControlFlow 0 10) 9))) $generated@@164))))
$generated@@165))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)