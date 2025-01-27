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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.FailureCompatible.c (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.FailureCompatible () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _module.FailureCompatible.IsFailure (T@U) Bool)
(declare-fun |_module.FailureCompatible.IsFailure#canCall| (T@U) Bool)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.FailureCompatible.Extract (T@U) Real)
(declare-fun |_module.FailureCompatible.Extract#canCall| (T@U) Bool)
(declare-fun q@Real (Int) Real)
(declare-fun _module.FailureCompatible.PropagateFailure (T@U) Int)
(declare-fun |_module.FailureCompatible.PropagateFailure#canCall| (T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc)
)
(assert (= (Tag TInt) TagInt))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) ($IsBox $o Tclass._module.FailureCompatible)) ($IsAllocBox $o Tclass._module.FailureCompatible $h)) ($IsAlloc intType (int_2_U (_module.FailureCompatible.c $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |487|
 :pattern ( (_module.FailureCompatible.c $o) ($IsAllocBox $o Tclass._module.FailureCompatible $h))
))))
(assert ($AlwaysAllocated Tclass._module.FailureCompatible))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.FailureCompatible.IsFailure#canCall| this) (and (< 1 $FunctionContextHeight) ($IsBox this Tclass._module.FailureCompatible))) (= (_module.FailureCompatible.IsFailure this) (< (_module.FailureCompatible.c this) 10)))
 :qid |OpaqueTypeWithMembersEdfy.6:13|
 :skolemid |490|
 :pattern ( (_module.FailureCompatible.IsFailure this))
))))
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.FailureCompatible.Extract#canCall| (Lit BoxType this@@0)) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@0 Tclass._module.FailureCompatible) (not (U_2_bool (Lit boolType (bool_2_U (_module.FailureCompatible.IsFailure (Lit BoxType this@@0))))))))) (= (_module.FailureCompatible.Extract (Lit BoxType this@@0)) (/ 100.0 (q@Real (_module.FailureCompatible.c (Lit BoxType this@@0))))))
 :qid |OpaqueTypeWithMembersEdfy.12:12|
 :weight 3
 :skolemid |500|
 :pattern ( (_module.FailureCompatible.Extract (Lit BoxType this@@0)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.FailureCompatible.PropagateFailure#canCall| this@@1) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@1 Tclass._module.FailureCompatible) (_module.FailureCompatible.IsFailure this@@1)))) (= (_module.FailureCompatible.PropagateFailure this@@1) (Div 100 (- (_module.FailureCompatible.c this@@1) 10))))
 :qid |OpaqueTypeWithMembersEdfy.7:12|
 :skolemid |494|
 :pattern ( (_module.FailureCompatible.PropagateFailure this@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.FailureCompatible.IsFailure#canCall| (Lit BoxType this@@2)) (and (< 1 $FunctionContextHeight) ($IsBox this@@2 Tclass._module.FailureCompatible))) (= (_module.FailureCompatible.IsFailure (Lit BoxType this@@2)) (< (_module.FailureCompatible.c (Lit BoxType this@@2)) 10)))
 :qid |OpaqueTypeWithMembersEdfy.6:13|
 :weight 3
 :skolemid |491|
 :pattern ( (_module.FailureCompatible.IsFailure (Lit BoxType this@@2)))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@0 T@U) ) (!  (=> ($IsBox $o@@0 Tclass._module.FailureCompatible) ($Is intType (int_2_U (_module.FailureCompatible.c $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (_module.FailureCompatible.c $o@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|_module.FailureCompatible.PropagateFailure#canCall| (Lit BoxType this@@3)) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@3 Tclass._module.FailureCompatible) (U_2_bool (Lit boolType (bool_2_U (_module.FailureCompatible.IsFailure (Lit BoxType this@@3)))))))) (= (_module.FailureCompatible.PropagateFailure (Lit BoxType this@@3)) (Div 100 (- (_module.FailureCompatible.c (Lit BoxType this@@3)) 10))))
 :qid |OpaqueTypeWithMembersEdfy.7:12|
 :weight 3
 :skolemid |495|
 :pattern ( (_module.FailureCompatible.PropagateFailure (Lit BoxType this@@3)))
))))
(assert (forall ((x@@4 Int) (y Int) ) (! (= (Div x@@4 y) (div x@@4 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@4 y))
)))
(assert (forall ((x@@5 Int) ) (! (= (q@Real x@@5) (to_real x@@5))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@5))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@3 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@3))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@3))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |502|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@4 T@U) ) (!  (=> (or (|_module.FailureCompatible.Extract#canCall| this@@4) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@4 Tclass._module.FailureCompatible) (not (_module.FailureCompatible.IsFailure this@@4))))) (= (_module.FailureCompatible.Extract this@@4) (/ 100.0 (q@Real (_module.FailureCompatible.c this@@4)))))
 :qid |OpaqueTypeWithMembersEdfy.12:12|
 :skolemid |499|
 :pattern ( (_module.FailureCompatible.Extract this@@4))
))))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call1formal@r#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun |call1formal@r#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |valueOrError0#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.N)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (=> (not (_module.FailureCompatible.IsFailure |call1formal@r#0@0|)) (=> (and ($IsAllocBox |call1formal@r#0@0| Tclass._module.FailureCompatible $Heap@0) (= (ControlFlow 0 4) (- 0 3))) (not (_module.FailureCompatible.IsFailure |call1formal@r#0@0|))))))
(let ((anon5_Then_correct  (=> (_module.FailureCompatible.IsFailure |call1formal@r#0@0|) (=> (and (and ($IsAllocBox |call1formal@r#0@0| Tclass._module.FailureCompatible $Heap@0) (= (ControlFlow 0 2) (- 0 1))) (|_module.FailureCompatible.IsFailure#canCall| |call1formal@r#0@0|)) (or (_module.FailureCompatible.IsFailure |call1formal@r#0@0|) (< (_module.FailureCompatible.c |call1formal@r#0@0|) 10))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($IsBox |valueOrError0#0@0| Tclass._module.FailureCompatible) ($IsAllocBox |valueOrError0#0@0| Tclass._module.FailureCompatible $Heap)) (=> (and (and ($IsBox |call1formal@r#0| Tclass._module.FailureCompatible) ($IsAllocBox |call1formal@r#0| Tclass._module.FailureCompatible $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and ($IsBox |call1formal@r#0@0| Tclass._module.FailureCompatible) ($IsAllocBox |call1formal@r#0@0| Tclass._module.FailureCompatible $Heap@0)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |OpaqueTypeWithMembersEdfy.19:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
))) (and (and ($HeapSucc $Heap $Heap@0) ($IsAllocBox |call1formal@r#0@0| Tclass._module.FailureCompatible $Heap@0)) (and (|_module.FailureCompatible.IsFailure#canCall| |call1formal@r#0@0|) (|_module.FailureCompatible.IsFailure#canCall| |call1formal@r#0@0|)))) (and (=> (= (ControlFlow 0 5) 2) anon5_Then_correct) (=> (= (ControlFlow 0 5) 4) anon5_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($IsBox |valueOrError0#0| Tclass._module.FailureCompatible) ($IsAllocBox |valueOrError0#0| Tclass._module.FailureCompatible $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
