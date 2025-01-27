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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.FailureCompatible.PropagateFailure (T@U) Int)
(declare-fun |_module.FailureCompatible.PropagateFailure#canCall| (T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun BoxType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.FailureCompatible.PropagateFailure#canCall| this@@0) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@0 Tclass._module.FailureCompatible) (_module.FailureCompatible.IsFailure this@@0)))) (= (_module.FailureCompatible.PropagateFailure this@@0) (Div 100 (- (_module.FailureCompatible.c this@@0) 10))))
 :qid |OpaqueTypeWithMembersEdfy.7:12|
 :skolemid |494|
 :pattern ( (_module.FailureCompatible.PropagateFailure this@@0))
))))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.FailureCompatible.IsFailure#canCall| (Lit BoxType this@@1)) (and (< 1 $FunctionContextHeight) ($IsBox this@@1 Tclass._module.FailureCompatible))) (= (_module.FailureCompatible.IsFailure (Lit BoxType this@@1)) (< (_module.FailureCompatible.c (Lit BoxType this@@1)) 10)))
 :qid |OpaqueTypeWithMembersEdfy.6:13|
 :weight 3
 :skolemid |491|
 :pattern ( (_module.FailureCompatible.IsFailure (Lit BoxType this@@1)))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@0 T@U) ) (!  (=> ($IsBox $o@@0 Tclass._module.FailureCompatible) ($Is intType (int_2_U (_module.FailureCompatible.c $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (_module.FailureCompatible.c $o@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.FailureCompatible.PropagateFailure#canCall| (Lit BoxType this@@2)) (and (< 2 $FunctionContextHeight) (and ($IsBox this@@2 Tclass._module.FailureCompatible) (U_2_bool (Lit boolType (bool_2_U (_module.FailureCompatible.IsFailure (Lit BoxType this@@2)))))))) (= (_module.FailureCompatible.PropagateFailure (Lit BoxType this@@2)) (Div 100 (- (_module.FailureCompatible.c (Lit BoxType this@@2)) 10))))
 :qid |OpaqueTypeWithMembersEdfy.7:12|
 :weight 3
 :skolemid |495|
 :pattern ( (_module.FailureCompatible.PropagateFailure (Lit BoxType this@@2)))
))))
(assert (forall ((x@@4 Int) (y Int) ) (! (= (Div x@@4 y) (div x@@4 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@4 y))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |502|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@6)) (Lit BoxType ($Box T@@4 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@6)))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.FailureCompatible.PropagateFailure)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (or (not (= (- (_module.FailureCompatible.c this@@3) 10) 0)) (not true)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAllocBox this@@3 Tclass._module.FailureCompatible $Heap)) (and (|_module.FailureCompatible.IsFailure#canCall| this@@3) (_module.FailureCompatible.IsFailure this@@3))) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($IsBox this@@3 Tclass._module.FailureCompatible) ($IsAllocBox this@@3 Tclass._module.FailureCompatible $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
