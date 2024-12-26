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
(declare-fun $generated@@2 (T@T) Int)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 (Bool) T@U)
(declare-fun $generated@@7 (T@U) Bool)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun $generated@@9 (T@U) Int)
(declare-fun $generated@@10 (Real) T@U)
(declare-fun $generated@@11 (T@U) Real)
(declare-fun $generated@@18 (T@U) T@U)
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U Int) Int)
(declare-fun $generated@@21 (Int) Bool)
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@25 (Int) Int)
(declare-fun $generated@@26 (Int) Bool)
(declare-fun $generated@@27 (Int Int) Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (Int) Bool)
(declare-fun $generated@@31 (T@T T@U) T@U)
(declare-fun $generated@@32 (Int) Bool)
(declare-fun $generated@@33 (Int Int) Int)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@58 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@T T@T) T@T)
(declare-fun $generated@@61 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@62 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@63 (T@T) T@T)
(declare-fun $generated@@64 (T@T) T@T)
(declare-fun $generated@@119 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@122 (T@T T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@2 $generated@@3) 0) (= ($generated@@2 $generated@@4) 1)) (= ($generated@@2 $generated@@5) 2)) (forall (($generated@@12 Bool) ) (! (= ($generated@@7 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 T@U) ) (! (= ($generated@@6 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 Int) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Real) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))))
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert (= ($generated@@18 $generated) $generated@@0))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@23 T@U) ($generated@@24 Int) ) (!  (=> (or ($generated@@21 $generated@@24) (and (< 1 $generated@@19) (<= ($generated@@22 0) $generated@@24))) (<= ($generated@@22 0) ($generated@@20 $generated@@23 $generated@@24)))
 :pattern ( ($generated@@20 $generated@@23 $generated@@24))
))))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@28 Int) ) (!  (=> (or ($generated@@26 ($generated@@22 $generated@@28)) (< 0 $generated@@19)) (= ($generated@@25 ($generated@@22 $generated@@28)) ($generated@@22 ($generated@@27 ($generated@@22 $generated@@28) ($generated@@22 $generated@@28)))))
 :weight 3
 :pattern ( ($generated@@25 ($generated@@22 $generated@@28)))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@34 T@U) ($generated@@35 Int) ) (!  (=> (or ($generated@@21 ($generated@@22 $generated@@35)) (and (< 1 $generated@@19) (<= ($generated@@22 0) ($generated@@22 $generated@@35)))) (and (=> (or (not (= ($generated@@22 $generated@@35) ($generated@@22 0))) (not true)) (and (and ($generated@@30 ($generated@@22 $generated@@35)) (=> ($generated@@7 ($generated@@31 $generated@@3 ($generated@@6 ($generated@@32 ($generated@@22 $generated@@35))))) (and ($generated@@21 ($generated@@22 ($generated@@33 $generated@@35 ($generated@@22 2)))) ($generated@@26 ($generated@@22 ($generated@@20 ($generated@@29 $generated@@34) ($generated@@22 ($generated@@33 $generated@@35 ($generated@@22 2))))))))) (=> (not ($generated@@7 ($generated@@31 $generated@@3 ($generated@@6 ($generated@@32 ($generated@@22 $generated@@35)))))) ($generated@@21 ($generated@@22 (- $generated@@35 1)))))) (= ($generated@@20 ($generated@@29 $generated@@34) ($generated@@22 $generated@@35)) (ite (= ($generated@@22 $generated@@35) ($generated@@22 0)) 1 (ite ($generated@@32 ($generated@@22 $generated@@35)) ($generated@@25 ($generated@@22 ($generated@@20 ($generated@@29 $generated@@34) ($generated@@22 ($generated@@33 $generated@@35 ($generated@@22 2)))))) ($generated@@27 ($generated@@22 2) ($generated@@22 ($generated@@20 ($generated@@29 $generated@@34) ($generated@@22 (- $generated@@35 1))))))))))
 :weight 3
 :pattern ( ($generated@@20 ($generated@@29 $generated@@34) ($generated@@22 $generated@@35)))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@36 T@U) ($generated@@37 Int) ) (!  (=> (or ($generated@@21 $generated@@37) (and (< 1 $generated@@19) (<= ($generated@@22 0) $generated@@37))) (and (=> (or (not (= $generated@@37 ($generated@@22 0))) (not true)) (and (and ($generated@@30 $generated@@37) (=> ($generated@@32 $generated@@37) (and ($generated@@21 ($generated@@33 $generated@@37 ($generated@@22 2))) ($generated@@26 ($generated@@20 $generated@@36 ($generated@@33 $generated@@37 ($generated@@22 2))))))) (=> (not ($generated@@32 $generated@@37)) ($generated@@21 (- $generated@@37 1))))) (= ($generated@@20 ($generated@@29 $generated@@36) $generated@@37) (ite (= $generated@@37 ($generated@@22 0)) 1 (ite ($generated@@32 $generated@@37) ($generated@@25 ($generated@@20 $generated@@36 ($generated@@33 $generated@@37 ($generated@@22 2)))) ($generated@@27 ($generated@@22 2) ($generated@@20 $generated@@36 (- $generated@@37 1))))))))
 :pattern ( ($generated@@20 ($generated@@29 $generated@@36) $generated@@37))
))))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@38 Int) ) (!  (=> (or ($generated@@30 $generated@@38) (and (< 0 $generated@@19) (<= ($generated@@22 0) $generated@@38))) (= ($generated@@32 $generated@@38) (= ($generated@@27 ($generated@@33 $generated@@38 ($generated@@22 2)) ($generated@@22 2)) $generated@@38)))
 :pattern ( ($generated@@32 $generated@@38))
))))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@22 $generated@@39) $generated@@39)
 :pattern ( ($generated@@22 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@31 $generated@@41 $generated@@40) $generated@@40)
 :pattern ( ($generated@@31 $generated@@41 $generated@@40))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@T) ) (! (= ($generated@@43 $generated@@45 ($generated@@42 $generated@@45 $generated@@44)) $generated@@44)
 :pattern ( ($generated@@42 $generated@@45 $generated@@44))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@46 Int) ) (!  (=> (or ($generated@@30 ($generated@@22 $generated@@46)) (and (< 0 $generated@@19) (<= ($generated@@22 0) ($generated@@22 $generated@@46)))) (= ($generated@@32 ($generated@@22 $generated@@46)) (= ($generated@@22 ($generated@@27 ($generated@@22 ($generated@@33 $generated@@46 ($generated@@22 2))) ($generated@@22 2))) ($generated@@22 $generated@@46))))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@22 $generated@@46)))
))))
(assert (forall (($generated@@47 Int) ($generated@@48 Int) ) (! (= ($generated@@33 $generated@@47 $generated@@48) (div $generated@@47 $generated@@48))
 :pattern ( ($generated@@33 $generated@@47 $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@42 $generated@@50 ($generated@@43 $generated@@50 $generated@@49)) $generated@@49)
 :pattern ( ($generated@@43 $generated@@50 $generated@@49))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@51 Int) ) (!  (=> (or ($generated@@26 $generated@@51) (< 0 $generated@@19)) (= ($generated@@25 $generated@@51) ($generated@@27 $generated@@51 $generated@@51)))
 :pattern ( ($generated@@25 $generated@@51))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 Int) ) (! (= ($generated@@20 ($generated@@29 $generated@@52) $generated@@53) ($generated@@20 $generated@@52 $generated@@53))
 :pattern ( ($generated@@20 ($generated@@29 $generated@@52) $generated@@53))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (! (= ($generated@@54 $generated@@65 $generated@@66 $generated@@67 ($generated@@61 $generated@@65 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@71 $generated@@68) $generated@@70 $generated@@71) $generated@@68)
 :weight 0
)) (and (forall (($generated@@72 T@T) ($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (!  (or (= $generated@@77 $generated@@79) (= ($generated@@54 $generated@@72 $generated@@73 $generated@@74 ($generated@@61 $generated@@72 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@78 $generated@@75) $generated@@79 $generated@@80) ($generated@@54 $generated@@72 $generated@@73 $generated@@74 $generated@@76 $generated@@79 $generated@@80)))
 :weight 0
)) (forall (($generated@@81 T@T) ($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (or (= $generated@@87 $generated@@89) (= ($generated@@54 $generated@@81 $generated@@82 $generated@@83 ($generated@@61 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@87 $generated@@84) $generated@@88 $generated@@89) ($generated@@54 $generated@@81 $generated@@82 $generated@@83 $generated@@85 $generated@@88 $generated@@89)))
 :weight 0
)))) (= ($generated@@2 $generated@@55) 3)) (= ($generated@@2 $generated@@56) 4)) (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@58 $generated@@90 $generated@@91 ($generated@@62 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@92) $generated@@94) $generated@@92)
 :weight 0
))) (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (= $generated@@99 $generated@@100) (= ($generated@@58 $generated@@95 $generated@@96 ($generated@@62 $generated@@95 $generated@@96 $generated@@98 $generated@@99 $generated@@97) $generated@@100) ($generated@@58 $generated@@95 $generated@@96 $generated@@98 $generated@@100)))
 :weight 0
))) (= ($generated@@2 $generated@@59) 5)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ) (= ($generated@@2 ($generated@@60 $generated@@101 $generated@@102)) 6))) (forall (($generated@@103 T@T) ($generated@@104 T@T) ) (! (= ($generated@@63 ($generated@@60 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@60 $generated@@103 $generated@@104))
))) (forall (($generated@@105 T@T) ($generated@@106 T@T) ) (! (= ($generated@@64 ($generated@@60 $generated@@105 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@60 $generated@@105 $generated@@106))
))))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 Bool) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@7 ($generated@@54 $generated@@55 $generated@@56 $generated@@3 ($generated@@57 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))  (=> (and (or (not (= $generated@@111 $generated@@107)) (not true)) ($generated@@7 ($generated@@42 $generated@@3 ($generated@@58 $generated@@56 $generated@@59 ($generated@@58 $generated@@55 ($generated@@60 $generated@@56 $generated@@59) $generated@@108 $generated@@111) $generated@@109)))) $generated@@110))
 :pattern ( ($generated@@54 $generated@@55 $generated@@56 $generated@@3 ($generated@@57 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@113 Int) ($generated@@114 Int) ) (! (= ($generated@@27 $generated@@113 $generated@@114) (* $generated@@113 $generated@@114))
 :pattern ( ($generated@@27 $generated@@113 $generated@@114))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@115 Int) ) (!  (=> (or ($generated@@30 $generated@@115) (and (< 0 $generated@@19) (<= ($generated@@22 0) $generated@@115))) (=> ($generated@@32 $generated@@115) (= $generated@@115 (+ ($generated@@33 $generated@@115 ($generated@@22 2)) ($generated@@33 $generated@@115 ($generated@@22 2))))))
 :pattern ( ($generated@@32 $generated@@115))
))))
(assert (forall (($generated@@116 Int) ) (! (= ($generated@@43 $generated@@4 ($generated@@8 ($generated@@22 $generated@@116))) ($generated@@31 $generated@@59 ($generated@@43 $generated@@4 ($generated@@8 $generated@@116))))
 :pattern ( ($generated@@43 $generated@@4 ($generated@@8 ($generated@@22 $generated@@116))))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@43 $generated@@118 ($generated@@31 $generated@@118 $generated@@117)) ($generated@@31 $generated@@59 ($generated@@43 $generated@@118 $generated@@117)))
 :pattern ( ($generated@@43 $generated@@118 ($generated@@31 $generated@@118 $generated@@117)))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! ($generated@@119 $generated@@4 $generated@@121 $generated $generated@@120)
 :pattern ( ($generated@@119 $generated@@4 $generated@@121 $generated $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ) (! ($generated@@122 $generated@@4 $generated@@123 $generated)
 :pattern ( ($generated@@122 $generated@@4 $generated@@123 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@124 () T@U)
(declare-fun $generated@@125 () Int)
(declare-fun $generated@@126 () Int)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 () Int)
(declare-fun $generated@@129 () Int)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 () T@U)
(declare-fun $generated@@132 (T@U) Bool)
(declare-fun $generated@@133 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 20) (let (($generated@@134  (=> (= (ControlFlow 0 6) (- 0 5)) (<= ($generated@@22 0) ($generated@@20 ($generated@@29 ($generated@@29 $generated@@124)) $generated@@125)))))
(let (($generated@@135  (=> (not ($generated@@32 $generated@@125)) (=> (and (= $generated@@126 (- $generated@@125 1)) ($generated@@119 $generated@@4 ($generated@@8 $generated@@126) $generated $generated@@127)) (and (=> (= (ControlFlow 0 13) (- 0 16)) (<= ($generated@@22 0) $generated@@126)) (=> (<= ($generated@@22 0) $generated@@126) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (<= 0 $generated@@125) (= $generated@@126 $generated@@125))) (=> (or (<= 0 $generated@@125) (= $generated@@126 $generated@@125)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< $generated@@126 $generated@@125)) (=> (< $generated@@126 $generated@@125) (=> ($generated@@21 (- $generated@@125 1)) (=> (and (and (= ($generated@@20 ($generated@@29 $generated@@124) $generated@@125) ($generated@@27 ($generated@@22 2) ($generated@@20 ($generated@@29 $generated@@124) (- $generated@@125 1)))) ($generated@@21 (- $generated@@125 1))) (and ($generated@@122 $generated@@4 ($generated@@8 ($generated@@20 ($generated@@29 $generated@@124) $generated@@125)) $generated) (= (ControlFlow 0 13) 6))) $generated@@134))))))))))))
(let (($generated@@136  (=> ($generated@@32 $generated@@125) (and (=> (= (ControlFlow 0 8) (- 0 12)) (or (not (= ($generated@@22 2) 0)) (not true))) (=> (or (not (= ($generated@@22 2) 0)) (not true)) (=> (and (= $generated@@128 ($generated@@33 $generated@@125 ($generated@@22 2))) ($generated@@119 $generated@@4 ($generated@@8 $generated@@128) $generated $generated@@127)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (<= ($generated@@22 0) $generated@@128)) (=> (<= ($generated@@22 0) $generated@@128) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (<= 0 $generated@@125) (= $generated@@128 $generated@@125))) (=> (or (<= 0 $generated@@125) (= $generated@@128 $generated@@125)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< $generated@@128 $generated@@125)) (=> (< $generated@@128 $generated@@125) (=> ($generated@@21 ($generated@@33 $generated@@125 ($generated@@22 2))) (=> (and (and (and (= $generated@@129 ($generated@@20 ($generated@@29 $generated@@124) ($generated@@33 $generated@@125 ($generated@@22 2)))) ($generated@@119 $generated@@4 ($generated@@8 $generated@@129) $generated $generated@@127)) (and ($generated@@26 ($generated@@20 ($generated@@29 $generated@@124) ($generated@@33 $generated@@125 ($generated@@22 2)))) (= ($generated@@20 ($generated@@29 $generated@@124) $generated@@125) ($generated@@25 ($generated@@20 ($generated@@29 $generated@@124) ($generated@@33 $generated@@125 ($generated@@22 2))))))) (and (and ($generated@@21 ($generated@@33 $generated@@125 ($generated@@22 2))) ($generated@@26 ($generated@@20 ($generated@@29 $generated@@124) ($generated@@33 $generated@@125 ($generated@@22 2))))) (and ($generated@@122 $generated@@4 ($generated@@8 ($generated@@20 ($generated@@29 $generated@@124) $generated@@125)) $generated) (= (ControlFlow 0 8) 6)))) $generated@@134))))))))))))))
(let (($generated@@137  (=> (and (or (not (= $generated@@125 ($generated@@22 0))) (not true)) ($generated@@119 $generated@@4 ($generated@@8 $generated@@125) $generated $generated@@127)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= ($generated@@22 0) $generated@@125)) (=> (and (<= ($generated@@22 0) $generated@@125) ($generated@@30 $generated@@125)) (and (=> (= (ControlFlow 0 17) 8) $generated@@136) (=> (= (ControlFlow 0 17) 13) $generated@@135)))))))
(let (($generated@@138  (=> (and (and (= $generated@@125 ($generated@@22 0)) (= ($generated@@20 ($generated@@29 $generated@@124) $generated@@125) ($generated@@22 1))) (and ($generated@@122 $generated@@4 ($generated@@8 ($generated@@20 ($generated@@29 $generated@@124) $generated@@125)) $generated) (= (ControlFlow 0 7) 6))) $generated@@134)))
(let (($generated@@139  (=> ($generated@@119 $generated@@4 ($generated@@8 $generated@@125) $generated $generated@@127) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= ($generated@@22 0) $generated@@125)) (=> (<= ($generated@@22 0) $generated@@125) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (<= 0 $generated@@125) (= $generated@@125 $generated@@125))) (=> (or (<= 0 $generated@@125) (= $generated@@125 $generated@@125)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (= $generated@@125 $generated@@125) (< $generated@@125 $generated@@125))))))))))
(let (($generated@@140  (=> (and (= $generated@@130 ($generated@@57 $generated@@131 $generated@@127 $generated@@1 false)) (<= ($generated@@22 0) $generated@@125)) (and (and (=> (= (ControlFlow 0 19) 2) $generated@@139) (=> (= (ControlFlow 0 19) 7) $generated@@138)) (=> (= (ControlFlow 0 19) 17) $generated@@137)))))
(let (($generated@@141  (=> (and (and ($generated@@132 $generated@@127) ($generated@@133 $generated@@127)) (and (= 1 $generated@@19) (= (ControlFlow 0 20) 19))) $generated@@140)))
$generated@@141)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)