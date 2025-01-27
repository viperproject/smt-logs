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
(declare-fun Tagclass._module.MStatus () T@U)
(declare-fun |##_module.MStatus.Okay| () T@U)
(declare-fun |##_module.MStatus.Error| () T@U)
(declare-fun tytagFamily$MStatus () T@U)
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
(declare-fun |_module.MStatus#Equal| (T@U T@U) Bool)
(declare-fun _module.MStatus.Error_q (T@U) Bool)
(declare-fun _module.MStatus.code (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.MStatus.Okay| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.MStatus () T@U)
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
(declare-fun _module.MStatus.Okay_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.MStatus.Error| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.MStatus.IsFailure (T@U) Bool)
(declare-fun |_module.MStatus.IsFailure#canCall| (T@U) Bool)
(declare-fun _module.MStatus.PropagateFailure (T@U) T@U)
(declare-fun |_module.MStatus.PropagateFailure#canCall| (T@U) Bool)
(declare-fun |$IsA#_module.MStatus| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.MStatus |##_module.MStatus.Okay| |##_module.MStatus.Error| tytagFamily$MStatus)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.MStatus.Error_q a) (_module.MStatus.Error_q b)) (= (|_module.MStatus#Equal| a b) (= (_module.MStatus.code a) (_module.MStatus.code b))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (|_module.MStatus#Equal| a b) (_module.MStatus.Error_q a))
 :pattern ( (|_module.MStatus#Equal| a b) (_module.MStatus.Error_q b))
)))
(assert (= (DatatypeCtorId |#_module.MStatus.Okay|) |##_module.MStatus.Okay|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.MStatus.Okay| Tclass._module.MStatus))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.MStatus#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (|_module.MStatus#Equal| a@@0 b@@0))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (_module.MStatus.Okay_q d) (= (DatatypeCtorId d) |##_module.MStatus.Okay|))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.MStatus.Okay_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.MStatus.Error_q d@@0) (= (DatatypeCtorId d@@0) |##_module.MStatus.Error|))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (_module.MStatus.Error_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.MStatus.Okay_q d@@1) (= d@@1 |#_module.MStatus.Okay|))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (_module.MStatus.Okay_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.MStatus.Error_q d@@2) (exists ((|a#5#0#0| Int) ) (! (= d@@2 (|#_module.MStatus.Error| |a#5#0#0|))
 :qid |gitissue1094dfy.97:33|
 :skolemid |555|
)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.MStatus.Error_q d@@2))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.MStatus.IsFailure#canCall| this) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this Tclass._module.MStatus))) (= (_module.MStatus.IsFailure this) (_module.MStatus.Error_q this)))
 :qid |gitissue1094dfy.98:13|
 :skolemid |569|
 :pattern ( (_module.MStatus.IsFailure this))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.MStatus.PropagateFailure#canCall| this@@0) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 Tclass._module.MStatus) (_module.MStatus.Error_q this@@0)))) (= (_module.MStatus.PropagateFailure this@@0) this@@0))
 :qid |gitissue1094dfy.101:12|
 :skolemid |573|
 :pattern ( (_module.MStatus.PropagateFailure this@@0))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.MStatus| d@@3) (or (_module.MStatus.Okay_q d@@3) (_module.MStatus.Error_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (|$IsA#_module.MStatus| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.MStatus) (or (_module.MStatus.Okay_q d@@4) (_module.MStatus.Error_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (_module.MStatus.Error_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.MStatus))
 :pattern ( (_module.MStatus.Okay_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.MStatus))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.MStatus.PropagateFailure#canCall| this@@1) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 Tclass._module.MStatus) (_module.MStatus.Error_q this@@1)))) ($Is DatatypeTypeType (_module.MStatus.PropagateFailure this@@1) Tclass._module.MStatus))
 :qid |gitissue1094dfy.101:12|
 :skolemid |571|
 :pattern ( (_module.MStatus.PropagateFailure this@@1))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.MStatus.Okay_q a@@2) (_module.MStatus.Okay_q b@@2)) (|_module.MStatus#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (|_module.MStatus#Equal| a@@2 b@@2) (_module.MStatus.Okay_q a@@2))
 :pattern ( (|_module.MStatus#Equal| a@@2 b@@2) (_module.MStatus.Okay_q b@@2))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.MStatus.Error| |a#4#0#0|)) |##_module.MStatus.Error|)
 :qid |gitissue1094dfy.97:33|
 :skolemid |553|
 :pattern ( (|#_module.MStatus.Error| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (_module.MStatus.code (|#_module.MStatus.Error| |a#8#0#0|)) |a#8#0#0|)
 :qid |gitissue1094dfy.97:33|
 :skolemid |560|
 :pattern ( (|#_module.MStatus.Error| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#6#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.MStatus.Error| |a#6#0#0|) Tclass._module.MStatus) ($Is intType (int_2_U |a#6#0#0|) TInt))
 :qid |gitissue1094dfy.97:33|
 :skolemid |557|
 :pattern ( ($Is DatatypeTypeType (|#_module.MStatus.Error| |a#6#0#0|) Tclass._module.MStatus))
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
 :skolemid |653|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.MStatus.Error_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.MStatus $h))) ($IsAlloc intType (int_2_U (_module.MStatus.code d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc intType (int_2_U (_module.MStatus.code d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@6 Tclass._module.MStatus)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.MStatus $h@@0))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.MStatus $h@@0))
)))
(assert (= (Tag Tclass._module.MStatus) Tagclass._module.MStatus))
(assert (= (TagFamily Tclass._module.MStatus) tytagFamily$MStatus))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.MStatus.IsFailure#canCall| (Lit DatatypeTypeType this@@2)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass._module.MStatus))) (= (_module.MStatus.IsFailure (Lit DatatypeTypeType this@@2)) (U_2_bool (Lit boolType (bool_2_U (_module.MStatus.Error_q (Lit DatatypeTypeType this@@2)))))))
 :qid |gitissue1094dfy.98:13|
 :weight 3
 :skolemid |570|
 :pattern ( (_module.MStatus.IsFailure (Lit DatatypeTypeType this@@2)))
))))
(assert (= |#_module.MStatus.Okay| (Lit DatatypeTypeType |#_module.MStatus.Okay|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|_module.MStatus.PropagateFailure#canCall| (Lit DatatypeTypeType this@@3)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@3 Tclass._module.MStatus) (U_2_bool (Lit boolType (bool_2_U (_module.MStatus.Error_q (Lit DatatypeTypeType this@@3)))))))) (= (_module.MStatus.PropagateFailure (Lit DatatypeTypeType this@@3)) (Lit DatatypeTypeType this@@3)))
 :qid |gitissue1094dfy.101:12|
 :weight 3
 :skolemid |574|
 :pattern ( (_module.MStatus.PropagateFailure (Lit DatatypeTypeType this@@3)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= (|#_module.MStatus.Error| (LitInt |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.MStatus.Error| |a#7#0#0|)))
 :qid |gitissue1094dfy.97:33|
 :skolemid |559|
 :pattern ( (|#_module.MStatus.Error| (LitInt |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call1formal@status#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun |call1formal@status#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () T@U)
(declare-fun |valueOrError0#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.MP)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (_module.MStatus.IsFailure |call1formal@status#0@0|) (=> (and ($IsAllocBox ($Box DatatypeTypeType |call1formal@status#0@0|) Tclass._module.MStatus $Heap@0) (= (ControlFlow 0 2) (- 0 1))) (_module.MStatus.Error_q |call1formal@status#0@0|)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($Is DatatypeTypeType |valueOrError0#0@0| Tclass._module.MStatus) ($IsAlloc DatatypeTypeType |valueOrError0#0@0| Tclass._module.MStatus $Heap)) (=> (and (and ($Is DatatypeTypeType |call1formal@status#0| Tclass._module.MStatus) ($IsAlloc DatatypeTypeType |call1formal@status#0| Tclass._module.MStatus $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (and ($Is DatatypeTypeType |call1formal@status#0@0| Tclass._module.MStatus) ($IsAlloc DatatypeTypeType |call1formal@status#0@0| Tclass._module.MStatus $Heap@0)) (|$IsA#_module.MStatus| |call1formal@status#0@0|)) (and (|_module.MStatus#Equal| |call1formal@status#0@0| (|#_module.MStatus.Error| (LitInt 5))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |gitissue1094dfy.83:8|
 :skolemid |522|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)))) (and (and ($HeapSucc $Heap $Heap@0) ($IsAllocBox ($Box DatatypeTypeType |call1formal@status#0@0|) Tclass._module.MStatus $Heap@0)) (and (|_module.MStatus.IsFailure#canCall| |call1formal@status#0@0|) (|_module.MStatus.IsFailure#canCall| |call1formal@status#0@0|)))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is DatatypeTypeType |r#0| Tclass._module.MStatus) ($IsAlloc DatatypeTypeType |r#0| Tclass._module.MStatus $Heap))) (=> (and (and (and ($Is DatatypeTypeType |valueOrError0#0| Tclass._module.MStatus) ($IsAlloc DatatypeTypeType |valueOrError0#0| Tclass._module.MStatus $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
