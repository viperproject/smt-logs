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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Result () T@U)
(declare-fun Tagclass._module.ClassA () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun Tagclass._module.ClassA? () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$ClassA () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Result.Extract (T@U T@U) T@U)
(declare-fun |_module.Result.Extract#canCall| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ClassA (T@U) T@U)
(declare-fun Tclass._module.ClassA? (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Result.IsFailure (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Result.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun |_module.Result.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun _module.Result.error (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun Tclass._module.ClassA_0 (T@U) T@U)
(declare-fun Tclass._module.ClassA?_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._module.Result Tagclass._module.ClassA |##_module.Result.Success| |##_module.Result.Failure| Tagclass._module.ClassA? tytagFamily$Result tytagFamily$ClassA)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |gitissue930dfy.4:50|
 :skolemid |545|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.Result$T T@U) (this T@U) ) (!  (=> (and (or (|_module.Result.Extract#canCall| _module.Result$T this) (and (< 0 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this (Tclass._module.Result _module.Result$T) $Heap) (_module.Result.Success_q this)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.Result.Extract _module.Result$T this) _module.Result$T $Heap))
 :qid |gitissue930dfy.14:12|
 :skolemid |562|
 :pattern ( ($IsAllocBox (_module.Result.Extract _module.Result$T this) _module.Result$T $Heap))
))))
(assert (= (Ctor refType) 4))
(assert (forall ((_module.ClassA$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.ClassA _module.ClassA$T) $h) ($IsAlloc refType |c#0| (Tclass._module.ClassA? _module.ClassA$T) $h))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.ClassA _module.ClassA$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.ClassA? _module.ClassA$T) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.ClassA$T@@0 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.ClassA? _module.ClassA$T@@0) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc refType $o (Tclass._module.ClassA? _module.ClassA$T@@0) $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Result.IsFailure#canCall| _module.Result$T@@0 (Lit DatatypeTypeType this@@0)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 (Tclass._module.Result _module.Result$T@@0)))) (= (_module.Result.IsFailure _module.Result$T@@0 (Lit DatatypeTypeType this@@0)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Failure_q (Lit DatatypeTypeType this@@0)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |555|
 :pattern ( (_module.Result.IsFailure _module.Result$T@@0 (Lit DatatypeTypeType this@@0)))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 (Tclass._module.Result _module.Result$T@@1)) (_module.Result.Success_q this@@1)))) ($IsBox (_module.Result.Extract _module.Result$T@@1 this@@1) _module.Result$T@@1))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (_module.Result.Extract _module.Result$T@@1 this@@1))
))))
(assert (forall ((d T@U) ) (! (= (_module.Result.Success_q d) (= (DatatypeCtorId d) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Result.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.Result.Failure_q d@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.Result$T@@2 T@U) (_module.Result.PropagateFailure$U T@U) (this@@2 T@U) ) (!  (=> (and (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@2 (Tclass._module.Result _module.Result$T@@2) $Heap@@0) (_module.Result.Failure_q this@@2)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap@@0))
 :qid |gitissue930dfy.9:12|
 :skolemid |557|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap@@0))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Result.Success_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.Result.Success| |a#1#0#0|))
 :qid |gitissue930dfy.4:30|
 :skolemid |527|
)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.Result.Success_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Result.Failure_q d@@2) (exists ((|a#7#0#0| T@U) ) (! (= d@@2 (|#_module.Result.Failure| |a#7#0#0|))
 :qid |gitissue930dfy.4:50|
 :skolemid |537|
)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.Result.Failure_q d@@2))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((_module.ClassA$T@@1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.ClassA _module.ClassA$T@@1))  (and ($Is refType |c#0@@0| (Tclass._module.ClassA? _module.ClassA$T@@1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.ClassA _module.ClassA$T@@1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.ClassA? _module.ClassA$T@@1)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@3 T@U) (_module.Result.PropagateFailure$U@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@3 (Tclass._module.Result _module.Result$T@@3)) (_module.Result.Failure_q this@@3)))) (= (_module.Result.PropagateFailure _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3) (|#_module.Result.Failure| (_module.Result.error this@@3))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3))
))))
(assert (forall ((_module.Result$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T@@4)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T@@4)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Result _module.Result$T@@4))
)))
(assert (forall ((_module.ClassA$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.ClassA _module.ClassA$T@@2)) Tagclass._module.ClassA) (= (TagFamily (Tclass._module.ClassA _module.ClassA$T@@2)) tytagFamily$ClassA))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.ClassA _module.ClassA$T@@2))
)))
(assert (forall ((_module.ClassA$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.ClassA? _module.ClassA$T@@3)) Tagclass._module.ClassA?) (= (TagFamily (Tclass._module.ClassA? _module.ClassA$T@@3)) tytagFamily$ClassA))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._module.ClassA? _module.ClassA$T@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@5 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@5 (Lit DatatypeTypeType this@@4)) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@4 (Tclass._module.Result _module.Result$T@@5)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Success_q (Lit DatatypeTypeType this@@4)))))))) (= (_module.Result.Extract _module.Result$T@@5 (Lit DatatypeTypeType this@@4)) (Lit BoxType (_module.Result.value (Lit DatatypeTypeType this@@4)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |565|
 :pattern ( (_module.Result.Extract _module.Result$T@@5 (Lit DatatypeTypeType this@@4)))
))))
(assert (forall ((_module.ClassA$T@@4 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.ClassA? _module.ClassA$T@@4))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.ClassA? _module.ClassA$T@@4))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($Is refType $o@@0 (Tclass._module.ClassA? _module.ClassA$T@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@2 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) v@@2)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0))
)))
(assert (forall ((_module.Result$T@@6 T@U) (|a#2#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@6) $h@@1) ($IsAllocBox |a#2#0#0| _module.Result$T@@6 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@6) $h@@1))
)))
(assert (forall ((d@@3 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Failure_q d@@3) (exists ((_module.Result$T@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@7) $h@@2)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@7) $h@@2))
)))) ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@2))
)))
(assert (forall ((_module.Result$T@@8 T@U) (|a#8#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@8) $h@@3) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@3)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@8) $h@@3))
)))
(assert (forall ((_module.Result$T@@9 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)) (or (_module.Result.Success_q d@@4) (_module.Result.Failure_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Result.Failure_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)))
 :pattern ( (_module.Result.Success_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((_module.Result$T@@10 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@10)) _module.Result$T@@10)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Result _module.Result$T@@10))
)))
(assert (forall ((_module.ClassA$T@@5 T@U) ) (! (= (Tclass._module.ClassA_0 (Tclass._module.ClassA _module.ClassA$T@@5)) _module.ClassA$T@@5)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.ClassA _module.ClassA$T@@5))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0|)) |##_module.Result.Success|)
 :qid |gitissue930dfy.4:30|
 :skolemid |525|
 :pattern ( (|#_module.Result.Success| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue930dfy.4:30|
 :skolemid |533|
 :pattern ( (|#_module.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0|)) |##_module.Result.Failure|)
 :qid |gitissue930dfy.4:50|
 :skolemid |535|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.error (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue930dfy.4:50|
 :skolemid |544|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((_module.ClassA$T@@6 T@U) ) (! (= (Tclass._module.ClassA?_0 (Tclass._module.ClassA? _module.ClassA$T@@6)) _module.ClassA$T@@6)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass._module.ClassA? _module.ClassA$T@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@11 T@U) (_module.Result.PropagateFailure$U@@1 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@5 (Tclass._module.Result _module.Result$T@@11)) (_module.Result.Failure_q this@@5)))) ($Is DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5) (Tclass._module.Result _module.Result.PropagateFailure$U@@1)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5))
))))
(assert (forall ((_module.Result$T@@12 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@12)) ($IsBox |a#2#0#0@@0| _module.Result$T@@12))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@12)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Result.Success| |a#5#0#0|)))
 :qid |gitissue930dfy.4:30|
 :skolemid |534|
 :pattern ( (|#_module.Result.Success| |a#5#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Result.Failure| |a#12#0#0|)))
 :qid |gitissue930dfy.4:50|
 :skolemid |546|
 :pattern ( (|#_module.Result.Failure| |a#12#0#0|))
)))
(assert (forall ((d@@5 T@U) (_module.Result$T@@13 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Result.Success_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Result _module.Result$T@@13) $h@@4))) ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@13 $h@@4))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@13 $h@@4))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |584|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@3 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@6)))
)))
(assert (forall ((_module.Result$T@@14 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Result _module.Result$T@@14)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.Result _module.Result$T@@14))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Result _module.Result$T@@14)))
)))
(assert (forall ((_module.ClassA$T@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.ClassA _module.ClassA$T@@7)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.ClassA _module.ClassA$T@@7))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 (Tclass._module.ClassA _module.ClassA$T@@7)))
)))
(assert (forall ((_module.ClassA$T@@8 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.ClassA? _module.ClassA$T@@8)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.ClassA? _module.ClassA$T@@8))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsBox bx@@6 (Tclass._module.ClassA? _module.ClassA$T@@8)))
)))
(assert (forall ((_module.Result$T@@15 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@15)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@15)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@16 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Result.IsFailure#canCall| _module.Result$T@@16 this@@6) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@6 (Tclass._module.Result _module.Result$T@@16)))) (= (_module.Result.IsFailure _module.Result$T@@16 this@@6) (_module.Result.Failure_q this@@6)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (_module.Result.IsFailure _module.Result$T@@16 this@@6))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0|)))
 :qid |gitissue930dfy.4:30|
 :skolemid |532|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0|)))
 :qid |gitissue930dfy.4:50|
 :skolemid |543|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@17 T@U) (_module.Result.PropagateFailure$U@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@7 (Tclass._module.Result _module.Result$T@@17)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Failure_q (Lit DatatypeTypeType this@@7)))))))) (= (_module.Result.PropagateFailure _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)) (Lit DatatypeTypeType (|#_module.Result.Failure| (Lit SeqType (_module.Result.error (Lit DatatypeTypeType this@@7)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |560|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)))
))))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@9 TChar))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@18 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@18 this@@8) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@8 (Tclass._module.Result _module.Result$T@@18)) (_module.Result.Success_q this@@8)))) (= (_module.Result.Extract _module.Result$T@@18 this@@8) (_module.Result.value this@@8)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (_module.Result.Extract _module.Result$T@@18 this@@8))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call6formal@res#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |numbers#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@_module.ClassA$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |y##0@0| () Int)
(declare-fun |call6formal@res#0| () T@U)
(declare-fun call1formal@_module.ClassA.ReadX$U () T@U)
(declare-fun |call3formal@x#0@0| () T@U)
(declare-fun |call4formal@y#0@0| () T@U)
(declare-fun |res#0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |result#0| () T@U)
(declare-fun |numbers#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Q1)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_Else_correct  (=> (and (not (_module.Result.IsFailure (TSeq TInt) |call6formal@res#0@0|)) ($IsAllocBox ($Box DatatypeTypeType |call6formal@res#0@0|) (Tclass._module.Result (TSeq TInt)) $Heap@1)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (_module.Result.Success_q |call6formal@res#0@0|)) (=> (_module.Result.Success_q |call6formal@res#0@0|) (=> (and (and (|_module.Result.Extract#canCall| (TSeq TInt) |call6formal@res#0@0|) (|_module.Result.Extract#canCall| (TSeq TInt) |call6formal@res#0@0|)) (and (= |numbers#0@0| ($Unbox SeqType (_module.Result.Extract (TSeq TInt) |call6formal@res#0@0|))) (= (ControlFlow 0 4) (- 0 3)))) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |numbers#0@0|)))))))))
(let ((anon5_Then_correct  (=> (_module.Result.IsFailure (TSeq TInt) |call6formal@res#0@0|) (=> (and ($IsAllocBox ($Box DatatypeTypeType |call6formal@res#0@0|) (Tclass._module.Result (TSeq TInt)) $Heap@1) (= (ControlFlow 0 2) (- 0 1))) (_module.Result.Failure_q |call6formal@res#0@0|)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (= |s##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 57)))) ($Box intType (int_2_U (LitInt 58)))) ($Box intType (int_2_U (LitInt 59))))))) (=> (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass._module.ClassA call0formal@_module.ClassA$T)) ($IsAlloc refType call3formal@this (Tclass._module.ClassA call0formal@_module.ClassA$T) $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass._module.ClassA TInt)) ($IsAlloc refType call3formal@this@0 (Tclass._module.ClassA TInt) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call3formal@this@0) alloc))))) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@2)))
 :qid |gitissue930dfy.24:3|
 :skolemid |574|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap@@1 $Heap@0))) (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and (and (and (= |x##0@0| (LitInt 50)) (= |y##0@0| (LitInt 50))) (and ($Is DatatypeTypeType |call6formal@res#0| (Tclass._module.Result (TSeq call1formal@_module.ClassA.ReadX$U))) ($IsAlloc DatatypeTypeType |call6formal@res#0| (Tclass._module.Result (TSeq call1formal@_module.ClassA.ReadX$U)) $Heap@@1))) (and (and (= |call3formal@x#0@0| ($Box intType (int_2_U |x##0@0|))) (= |call4formal@y#0@0| ($Box intType (int_2_U |y##0@0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and ($Is DatatypeTypeType |call6formal@res#0@0| (Tclass._module.Result (TSeq TInt))) ($IsAlloc DatatypeTypeType |call6formal@res#0@0| (Tclass._module.Result (TSeq TInt)) $Heap@1)) (and (=> (_module.Result.Success_q |call6formal@res#0@0|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (_module.Result.value |call6formal@res#0@0|))))) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |gitissue930dfy.39:10|
 :skolemid |580|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)))) (and (and ($HeapSucc $Heap@0 $Heap@1) ($IsAllocBox ($Box DatatypeTypeType |call6formal@res#0@0|) (Tclass._module.Result (TSeq TInt)) $Heap@1)) (and (|_module.Result.IsFailure#canCall| (TSeq TInt) |call6formal@res#0@0|) (|_module.Result.IsFailure#canCall| (TSeq TInt) |call6formal@res#0@0|))))) (and (=> (= (ControlFlow 0 6) 2) anon5_Then_correct) (=> (= (ControlFlow 0 6) 4) anon5_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (and ($Is DatatypeTypeType |res#0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |res#0| (Tclass._module.Result TInt) $Heap@@1)) (and (=> |defass#a#0| (and ($Is refType |a#0| (Tclass._module.ClassA TInt)) ($IsAlloc refType |a#0| (Tclass._module.ClassA TInt) $Heap@@1))) true)) (and (and ($Is DatatypeTypeType |result#0| (Tclass._module.Result (TSeq TInt))) ($IsAlloc DatatypeTypeType |result#0| (Tclass._module.Result (TSeq TInt)) $Heap@@1)) true)) (and (and (and ($Is SeqType |numbers#0| (TSeq TInt)) ($IsAlloc SeqType |numbers#0| (TSeq TInt) $Heap@@1)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 6)))) anon0_correct))))
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
