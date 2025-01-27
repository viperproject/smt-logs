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
(declare-fun TagISet () T@U)
(declare-fun alloc () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |ISet#UnionOne| (T@U T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagISet alloc)
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |2426|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |2427|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|ISet#Equal| a b) (forall ((o@@0 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType a o@@0)) (U_2_bool (MapType0Select BoxType boolType b o@@0)))
 :qid |DafnyPreludebpl.869:32|
 :skolemid |2550|
 :pattern ( (MapType0Select BoxType boolType a o@@0))
 :pattern ( (MapType0Select BoxType boolType b o@@0))
)))
 :qid |DafnyPreludebpl.868:15|
 :skolemid |2551|
 :pattern ( (|ISet#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@0 b@@0) o@@1))  (and (U_2_bool (MapType0Select BoxType boolType a@@0 o@@1)) (not (U_2_bool (MapType0Select BoxType boolType b@@0 o@@1)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |2546|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@0 b@@0) o@@1))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@2 (TISet t0@@1) h@@3) (forall ((bx@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@2 bx@@1)) ($IsAllocBox bx@@1 t0@@1 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |2447|
 :pattern ( (MapType0Select BoxType boolType v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |2448|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@2 (TISet t0@@1) h@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|ISet#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.870:15|
 :skolemid |2552|
 :pattern ( (|ISet#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@2 y)) (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@2 x@@3) y)))
 :qid |DafnyPreludebpl.828:15|
 :skolemid |2536|
 :pattern ( (|ISet#UnionOne| a@@2 x@@3) (MapType0Select BoxType boolType a@@2 y))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o@@2 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@3 x@@4) o@@2))  (or (= o@@2 x@@4) (U_2_bool (MapType0Select BoxType boolType a@@3 o@@2))))
 :qid |DafnyPreludebpl.824:15|
 :skolemid |2534|
 :pattern ( (MapType0Select BoxType boolType (|ISet#UnionOne| a@@3 x@@4) o@@2))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@4 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((a@@5 T@U) (b@@3 T@U) (y@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@3 y@@0)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@5 b@@3) y@@0))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |2547|
 :pattern ( (|ISet#Difference| a@@5 b@@3) (MapType0Select BoxType boolType b@@3 y@@0))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@2) ($Is T@@2 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@2))
)))
(assert (forall ((a@@6 T@U) (x@@5 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@6 x@@5) x@@5))
 :qid |DafnyPreludebpl.826:15|
 :skolemid |2535|
 :pattern ( (|ISet#UnionOne| a@@6 x@@5))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TISet (TISet t@@3)) t@@3)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |2381|
 :pattern ( (TISet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TISet t@@4)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |2382|
 :pattern ( (TISet t@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((o@@3 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@3)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |2532|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@3))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TISet t@@5)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@2)) bx@@2) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@2) (TISet t@@5))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |2411|
 :pattern ( ($IsBox bx@@2 (TISet t@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.ISets2$_T0 () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |x#0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |x#0_1@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |defass#x#0_0| () Bool)
(declare-fun |x#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ISets2)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon7_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (exists ((|$as#x0_0#0_0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0| _module._default.ISets2$_T0) (U_2_bool (MapType0Select BoxType boolType |S#0| |$as#x0_0#0_0|)))
 :qid |Terminationdfy.733:9|
 :skolemid |3201|
))) (=> (exists ((|$as#x0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0@@0| _module._default.ISets2$_T0) (U_2_bool (MapType0Select BoxType boolType |S#0| |$as#x0_0#0_0@@0|)))
 :qid |Terminationdfy.733:9|
 :skolemid |3201|
)) (=> (and (=> true (and ($IsBox |x#0_0@0| _module._default.ISets2$_T0) ($IsAllocBox |x#0_0@0| _module._default.ISets2$_T0 $Heap))) (U_2_bool (MapType0Select BoxType boolType |S#0| |x#0_0@0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) true) (=> (and (= |s#0@0| (|ISet#Difference| |S#0| (|ISet#UnionOne| |ISet#Empty| |x#0_0@0|))) (= (ControlFlow 0 5) (- 0 4))) false)))))))
(let ((anon11_Else_correct  (=> (and (not (and ($IsBox |x#0_1@0| _module._default.ISets2$_T0) ($IsAllocBox |x#0_1@0| _module._default.ISets2$_T0 $Heap))) (= (ControlFlow 0 9) 5)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (and ($IsBox |x#0_1@0| _module._default.ISets2$_T0) ($IsAllocBox |x#0_1@0| _module._default.ISets2$_T0 $Heap)) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon10_Else_correct  (=> (not (|ISet#Equal| |S#0| |ISet#Empty|)) (and (=> (= (ControlFlow 0 10) 8) anon11_Then_correct) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 11) 3) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_LoopBody_correct  (and (=> (= (ControlFlow 0 12) 2) anon9_Then_correct) (=> (= (ControlFlow 0 12) 11) anon9_Else_correct))))
(let ((anon8_LoopDone_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.730:3|
 :skolemid |3199|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.730:3|
 :skolemid |3200|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (|ISet#Equal| |S#0| |S#0|))) (and (=> (= (ControlFlow 0 13) 1) anon8_LoopDone_correct) (=> (= (ControlFlow 0 13) 12) anon8_LoopBody_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is (MapType0Type BoxType boolType) |S#0| (TISet _module._default.ISets2$_T0)) ($IsAlloc (MapType0Type BoxType boolType) |S#0| (TISet _module._default.ISets2$_T0) $Heap))) (=> (and (and (and ($Is (MapType0Type BoxType boolType) |s#0| (TISet _module._default.ISets2$_T0)) ($IsAlloc (MapType0Type BoxType boolType) |s#0| (TISet _module._default.ISets2$_T0) $Heap)) true) (and (and (=> |defass#x#0_0| (and ($IsBox |x#0_0| _module._default.ISets2$_T0) ($IsAllocBox |x#0_0| _module._default.ISets2$_T0 $Heap))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 14) 13)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
