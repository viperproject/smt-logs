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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct alloc Tagclass._System.nat tytagFamily$nat)
)
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|)))
 :qid |unknown.0:0|
 :skolemid |2726|
 :pattern ( ($Is intType |x#0| Tclass._System.nat))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@0| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |a#0@1| () Int)
(declare-fun |$decr$loop#01@1| () Int)
(declare-fun |b#0@2| () Int)
(declare-fun |$rhs#0_1_0@1| () Int)
(declare-fun |$rhs#0_1_1@1| () Int)
(declare-fun |b#0@1| () Int)
(declare-fun |$rhs#0_1_1@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$decr_init$loop#01@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |A#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () Int)
(declare-fun |b#0| () Int)
(declare-fun |$rhs#1| () Int)
(declare-fun |$rhs#0_1_1| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.NegationNormalForm0)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon10_correct true))
(let ((anon23_Else_correct  (=> (and (< (LitInt 0) |b#0@0|) (= (ControlFlow 0 19) 16)) anon10_correct)))
(let ((anon23_Then_correct  (=> (and (<= |b#0@0| (LitInt 0)) (= (ControlFlow 0 18) 16)) anon10_correct)))
(let ((anon22_Then_correct  (=> (or (not (= |a#0@0| 0)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon23_Then_correct) (=> (= (ControlFlow 0 20) 19) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (= |a#0@0| 0) (= (ControlFlow 0 17) 16)) anon10_correct)))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 21) 20) anon22_Then_correct) (=> (= (ControlFlow 0 21) 17) anon22_Else_correct))))
(let ((anon21_Else_correct  (=> (and (< (LitInt 0) |a#0@0|) (= (ControlFlow 0 23) 21)) anon5_correct)))
(let ((anon21_Then_correct  (=> (and (<= |a#0@0| (LitInt 0)) (= (ControlFlow 0 22) 21)) anon5_correct)))
(let ((anon20_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 24) 22) anon21_Then_correct) (=> (= (ControlFlow 0 24) 23) anon21_Else_correct)))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (<= 0 |$decr$loop#01@1|) (< (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|)) (= (ite  (or (not (= |a#0@1| 0)) (not true)) (ite (<= |b#0@2| (LitInt 0)) (- 0 |b#0@2|) (- |b#0@2| 0)) (- 0 1)) |$decr$loop#01@1|))) (=> (or (or (<= 0 |$decr$loop#01@1|) (< (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|)) (= (ite  (or (not (= |a#0@1| 0)) (not true)) (ite (<= |b#0@2| (LitInt 0)) (- 0 |b#0@2|) (- |b#0@2| 0)) (- 0 1)) |$decr$loop#01@1|)) (=> (= (ControlFlow 0 4) (- 0 3)) (or (< (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|) (and (= (ite (<= |a#0@1| (LitInt 0)) (- 0 |a#0@1|) (- |a#0@1| 0)) |$decr$loop#00@1|) (< (ite  (or (not (= |a#0@1| 0)) (not true)) (ite (<= |b#0@2| (LitInt 0)) (- 0 |b#0@2|) (- |b#0@2| 0)) (- 0 1)) |$decr$loop#01@1|))))))))))
(let ((anon26_Else_correct  (=> (<= |b#0@0| 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) ($Is intType (int_2_U (- |a#0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |a#0@0| 1)) Tclass._System.nat) (=> (= |$rhs#0_1_0@1| (- |a#0@0| 1)) (=> (and (and (<= (LitInt 0) |$rhs#0_1_1@1|) (= |a#0@1| |$rhs#0_1_0@1|)) (and (= |b#0@2| |$rhs#0_1_1@1|) (= (ControlFlow 0 9) 4))) anon18_correct)))))))
(let ((anon26_Then_correct  (=> (< 0 |b#0@0|) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($Is intType (int_2_U (- |b#0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |b#0@0| 1)) Tclass._System.nat) (=> (and (and (= |b#0@1| (- |b#0@0| 1)) (= |a#0@1| |a#0@0|)) (and (= |b#0@2| |b#0@1|) (= (ControlFlow 0 7) 4))) anon18_correct))))))
(let ((anon25_Else_correct  (=> (not (or (= |a#0@0| (LitInt 0)) (= |b#0@0| (LitInt 0)))) (=> (and (= |$decr$loop#00@1| (ite (<= |a#0@0| (LitInt 0)) (- 0 |a#0@0|) (- |a#0@0| 0))) (= |$decr$loop#01@1| (ite  (or (not (= |a#0@0| 0)) (not true)) (ite (<= |b#0@0| (LitInt 0)) (- 0 |b#0@0|) (- |b#0@0| 0)) (- 0 1)))) (and (=> (= (ControlFlow 0 11) 7) anon26_Then_correct) (=> (= (ControlFlow 0 11) 9) anon26_Else_correct))))))
(let ((anon25_Then_correct true))
(let ((anon13_correct  (and (=> (= (ControlFlow 0 12) 2) anon25_Then_correct) (=> (= (ControlFlow 0 12) 11) anon25_Else_correct))))
(let ((anon24_Else_correct  (=> (and (= |a#0@0| (LitInt 0)) (= (ControlFlow 0 14) 12)) anon13_correct)))
(let ((anon24_Then_correct  (=> (and (or (not (= |a#0@0| (LitInt 0))) (not true)) (= (ControlFlow 0 13) 12)) anon13_correct)))
(let ((anon20_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 15) 13) anon24_Then_correct) (=> (= (ControlFlow 0 15) 14) anon24_Else_correct)))))
(let ((anon19_LoopBody_correct  (and (=> (= (ControlFlow 0 25) 24) anon20_Then_correct) (=> (= (ControlFlow 0 25) 15) anon20_Else_correct))))
(let ((anon19_LoopDone_correct true))
(let ((anon19_LoopHead_correct  (=> (<= (LitInt 0) |$rhs#0_1_1@0|) (=> (and (and (and (<= (LitInt 0) |a#0@0|) (<= (LitInt 0) |b#0@0|)) (and (not false) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.1039:3|
 :skolemid |3366|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)))) (and (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.1039:3|
 :skolemid |3367|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))) (and (<= (ite (<= |a#0@0| (LitInt 0)) (- 0 |a#0@0|) (- |a#0@0| 0)) |$decr_init$loop#00@0|) (=> (= (ite (<= |a#0@0| (LitInt 0)) (- 0 |a#0@0|) (- |a#0@0| 0)) |$decr_init$loop#00@0|) (<= (ite  (or (not (= |a#0@0| 0)) (not true)) (ite (<= |b#0@0| (LitInt 0)) (- 0 |b#0@0|) (- |b#0@0| 0)) (- 0 1)) |$decr_init$loop#01@0|))))) (and (=> (= (ControlFlow 0 26) 1) anon19_LoopDone_correct) (=> (= (ControlFlow 0 26) 25) anon19_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (<= (LitInt 0) |$rhs#1@0|) (= |$decr_init$loop#00@0| (ite (<= |A#0| (LitInt 0)) (- 0 |A#0|) (- |A#0| 0)))) (and (= |$decr_init$loop#01@0| (ite  (or (not (= |A#0| 0)) (not true)) (ite (<= |$rhs#1@0| (LitInt 0)) (- 0 |$rhs#1@0|) (- |$rhs#1@0| 0)) (- 0 1))) (= (ControlFlow 0 27) 26))) anon19_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |A#0|)) (and (<= (LitInt 0) |a#0|) true)) (and (and (and (<= (LitInt 0) |b#0|) true) (and (<= (LitInt 0) |$rhs#1|) true)) (and (and (<= (LitInt 0) |$rhs#0_1_1|) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 28) 27))))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
