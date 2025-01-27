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
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun tytagFamily$Result () T@U)
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
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.Result.IsFailure (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Result.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun |_module.Result.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun _module.Result.error (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._module.Result |##_module.Result.Success| |##_module.Result.Failure| tytagFamily$Result)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |gitissue446dfy.3:50|
 :skolemid |523|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.Result$T T@U) (this T@U) ) (!  (=> (and (or (|_module.Result.Extract#canCall| _module.Result$T this) (and (< 0 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this (Tclass._module.Result _module.Result$T) $Heap) (_module.Result.Success_q this)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.Result.Extract _module.Result$T this) _module.Result$T $Heap))
 :qid |gitissue446dfy.13:12|
 :skolemid |540|
 :pattern ( ($IsAllocBox (_module.Result.Extract _module.Result$T this) _module.Result$T $Heap))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Result.IsFailure#canCall| _module.Result$T@@0 (Lit DatatypeTypeType this@@0)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 (Tclass._module.Result _module.Result$T@@0)))) (= (_module.Result.IsFailure _module.Result$T@@0 (Lit DatatypeTypeType this@@0)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Failure_q (Lit DatatypeTypeType this@@0)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.Result.IsFailure _module.Result$T@@0 (Lit DatatypeTypeType this@@0)))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 (Tclass._module.Result _module.Result$T@@1)) (_module.Result.Success_q this@@1)))) ($IsBox (_module.Result.Extract _module.Result$T@@1 this@@1) _module.Result$T@@1))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (_module.Result.Extract _module.Result$T@@1 this@@1))
))))
(assert (forall ((d T@U) ) (! (= (_module.Result.Success_q d) (= (DatatypeCtorId d) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_module.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Result.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (_module.Result.Failure_q d@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.Result$T@@2 T@U) (_module.Result.PropagateFailure$U T@U) (this@@2 T@U) ) (!  (=> (and (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@2 (Tclass._module.Result _module.Result$T@@2) $Heap@@0) (_module.Result.Failure_q this@@2)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap@@0))
 :qid |gitissue446dfy.8:12|
 :skolemid |535|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@2 _module.Result.PropagateFailure$U this@@2) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap@@0))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Result.Success_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.Result.Success| |a#1#0#0|))
 :qid |gitissue446dfy.3:30|
 :skolemid |505|
)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (_module.Result.Success_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Result.Failure_q d@@2) (exists ((|a#7#0#0| T@U) ) (! (= d@@2 (|#_module.Result.Failure| |a#7#0#0|))
 :qid |gitissue446dfy.3:50|
 :skolemid |515|
)))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.Result.Failure_q d@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@3 T@U) (_module.Result.PropagateFailure$U@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@3 (Tclass._module.Result _module.Result$T@@3)) (_module.Result.Failure_q this@@3)))) (= (_module.Result.PropagateFailure _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3) (|#_module.Result.Failure| (_module.Result.error this@@3))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@3 _module.Result.PropagateFailure$U@@0 this@@3))
))))
(assert (forall ((_module.Result$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T@@4)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T@@4)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Result _module.Result$T@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@5 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@5 (Lit DatatypeTypeType this@@4)) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@4 (Tclass._module.Result _module.Result$T@@5)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Success_q (Lit DatatypeTypeType this@@4)))))))) (= (_module.Result.Extract _module.Result$T@@5 (Lit DatatypeTypeType this@@4)) (Lit BoxType (_module.Result.value (Lit DatatypeTypeType this@@4)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |543|
 :pattern ( (_module.Result.Extract _module.Result$T@@5 (Lit DatatypeTypeType this@@4)))
))))
(assert (forall ((_module.Result$T@@6 T@U) (|a#2#0#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@6) $h) ($IsAllocBox |a#2#0#0| _module.Result$T@@6 $h)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@6) $h))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((d@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Result.Failure_q d@@3) (exists ((_module.Result$T@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@7) $h@@0)
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@7) $h@@0))
)))) ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@0))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@0))
)))
(assert (forall ((_module.Result$T@@8 T@U) (|a#8#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@8) $h@@1) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@1)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@8) $h@@1))
)))
(assert (forall ((_module.Result$T@@9 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)) (or (_module.Result.Success_q d@@4) (_module.Result.Failure_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Result.Failure_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)))
 :pattern ( (_module.Result.Success_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@9)))
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
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((_module.Result$T@@10 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@10)) _module.Result$T@@10)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Result _module.Result$T@@10))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0|)) |##_module.Result.Success|)
 :qid |gitissue446dfy.3:30|
 :skolemid |503|
 :pattern ( (|#_module.Result.Success| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue446dfy.3:30|
 :skolemid |511|
 :pattern ( (|#_module.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0|)) |##_module.Result.Failure|)
 :qid |gitissue446dfy.3:50|
 :skolemid |513|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.error (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue446dfy.3:50|
 :skolemid |522|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@11 T@U) (_module.Result.PropagateFailure$U@@1 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@5 (Tclass._module.Result _module.Result$T@@11)) (_module.Result.Failure_q this@@5)))) ($Is DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5) (Tclass._module.Result _module.Result.PropagateFailure$U@@1)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@11 _module.Result.PropagateFailure$U@@1 this@@5))
))))
(assert (forall ((_module.Result$T@@12 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@12)) ($IsBox |a#2#0#0@@0| _module.Result$T@@12))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@12)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Result.Success| |a#5#0#0|)))
 :qid |gitissue446dfy.3:30|
 :skolemid |512|
 :pattern ( (|#_module.Result.Success| |a#5#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Result.Failure| |a#12#0#0|)))
 :qid |gitissue446dfy.3:50|
 :skolemid |524|
 :pattern ( (|#_module.Result.Failure| |a#12#0#0|))
)))
(assert (forall ((d@@5 T@U) (_module.Result$T@@13 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Success_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Result _module.Result$T@@13) $h@@2))) ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@13 $h@@2))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@13 $h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |544|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@5)))
)))
(assert (forall ((_module.Result$T@@14 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Result _module.Result$T@@14)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Result _module.Result$T@@14))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Result _module.Result$T@@14)))
)))
(assert (forall ((_module.Result$T@@15 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@15)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@15)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@16 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Result.IsFailure#canCall| _module.Result$T@@16 this@@6) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@6 (Tclass._module.Result _module.Result$T@@16)))) (= (_module.Result.IsFailure _module.Result$T@@16 this@@6) (_module.Result.Failure_q this@@6)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.Result.IsFailure _module.Result$T@@16 this@@6))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0|)))
 :qid |gitissue446dfy.3:30|
 :skolemid |510|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0|)))
 :qid |gitissue446dfy.3:50|
 :skolemid |521|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@17 T@U) (_module.Result.PropagateFailure$U@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@7 (Tclass._module.Result _module.Result$T@@17)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Failure_q (Lit DatatypeTypeType this@@7)))))))) (= (_module.Result.PropagateFailure _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)) (Lit DatatypeTypeType (|#_module.Result.Failure| (Lit SeqType (_module.Result.error (Lit DatatypeTypeType this@@7)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |538|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@17 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@7)))
))))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@5))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@7 TChar))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Result$T@@18 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Result.Extract#canCall| _module.Result$T@@18 this@@8) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@8 (Tclass._module.Result _module.Result$T@@18)) (_module.Result.Success_q this@@8)))) (= (_module.Result.Extract _module.Result$T@@18 this@@8) (_module.Result.value this@@8)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.Result.Extract _module.Result$T@@18 this@@8))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |r#0@2| () T@U)
(declare-fun |out#0@2| () Int)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |out#0@1| () Int)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |k#0@0| () Int)
(declare-fun |r#0@1| () T@U)
(declare-fun |out#0@0| () Int)
(declare-fun |call2formal@r#0@0@@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |valueOrError1#0@0| () T@U)
(declare-fun |i##1@0| () Int)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun |i##0@0| () Int)
(declare-fun |call2formal@r#0@@0| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |valueOrError0#0| () T@U)
(declare-fun |valueOrError1#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.mn1)
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
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.Result.Failure_q |r#0@2|)) (=> (_module.Result.Failure_q |r#0@2|) (=> (= (ControlFlow 0 2) (- 0 1)) (= |out#0@2| (LitInt 42)))))))
(let ((anon10_Else_correct  (=> (and (not (_module.Result.IsFailure TInt |call2formal@r#0@0|)) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0|) (Tclass._module.Result TInt) $Heap@1)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (_module.Result.Success_q |call2formal@r#0@0|)) (=> (and (and (and (_module.Result.Success_q |call2formal@r#0@0|) (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0|)) (and (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0|) (= |out#0@1| (U_2_int ($Unbox intType (_module.Result.Extract TInt |call2formal@r#0@0|)))))) (and (and (= |$rhs#0@0| (|#_module.Result.Success| ($Box intType (int_2_U |k#0@0|)))) (= |out#0@2| |out#0@1|)) (and (= |r#0@2| |$rhs#0@0|) (= (ControlFlow 0 8) 2)))) GeneratedUnifiedExit_correct)))))
(let ((anon10_Then_correct  (=> (and (_module.Result.IsFailure TInt |call2formal@r#0@0|) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0|) (Tclass._module.Result TInt) $Heap@1)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (_module.Result.Failure_q |call2formal@r#0@0|)) (=> (_module.Result.Failure_q |call2formal@r#0@0|) (=> (and (|_module.Result.PropagateFailure#canCall| TInt TInt |call2formal@r#0@0|) (|_module.Result.PropagateFailure#canCall| TInt TInt |call2formal@r#0@0|)) (=> (and (and (= |r#0@1| (_module.Result.PropagateFailure TInt TInt |call2formal@r#0@0|)) (= |out#0@2| |out#0@0|)) (and (= |r#0@2| |r#0@1|) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct)))))))
(let ((anon9_Else_correct  (=> (and (not (_module.Result.IsFailure TInt |call2formal@r#0@0@@0|)) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0@@0|) (Tclass._module.Result TInt) $Heap@0)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (_module.Result.Success_q |call2formal@r#0@0@@0|)) (=> (and (and (_module.Result.Success_q |call2formal@r#0@0@@0|) (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0@@0|)) (and (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0@@0|) (= |k#0@0| (U_2_int ($Unbox intType (_module.Result.Extract TInt |call2formal@r#0@0@@0|)))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= |k#0@0| (LitInt 1))) (=> (= |k#0@0| (LitInt 1)) (=> (and (and ($Is DatatypeTypeType |valueOrError1#0@0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |valueOrError1#0@0| (Tclass._module.Result TInt) $Heap@0)) (= |i##1@0| (LitInt (- 0 1)))) (=> (and (and (and (and ($Is DatatypeTypeType |call2formal@r#0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |call2formal@r#0| (Tclass._module.Result TInt) $Heap@@1)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is DatatypeTypeType |call2formal@r#0@0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |call2formal@r#0@0| (Tclass._module.Result TInt) $Heap@1)) (=> (<= (LitInt 0) |i##1@0|) (=> (_module.Result.Success_q |call2formal@r#0@0|) (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0|))))) (and (and (and (=> (<= (LitInt 0) |i##1@0|) (_module.Result.Success_q |call2formal@r#0@0|)) (=> (<= (LitInt 0) |i##1@0|) (= (U_2_int ($Unbox intType (_module.Result.Extract TInt |call2formal@r#0@0|))) |i##1@0|))) (and (=> (< |i##1@0| 0) (_module.Result.Failure_q |call2formal@r#0@0|)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0)))
 :qid |gitissue446dfy.49:8|
 :skolemid |496|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0))
)))) (and (and ($HeapSucc $Heap@0 $Heap@1) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0|) (Tclass._module.Result TInt) $Heap@1)) (and (|_module.Result.IsFailure#canCall| TInt |call2formal@r#0@0|) (|_module.Result.IsFailure#canCall| TInt |call2formal@r#0@0|))))) (and (=> (= (ControlFlow 0 10) 6) anon10_Then_correct) (=> (= (ControlFlow 0 10) 8) anon10_Else_correct)))))))))))
(let ((anon9_Then_correct  (=> (and (_module.Result.IsFailure TInt |call2formal@r#0@0@@0|) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0@@0|) (Tclass._module.Result TInt) $Heap@0)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (_module.Result.Failure_q |call2formal@r#0@0@@0|)) (=> (_module.Result.Failure_q |call2formal@r#0@0@@0|) (=> (and (|_module.Result.PropagateFailure#canCall| TInt TInt |call2formal@r#0@0@@0|) (|_module.Result.PropagateFailure#canCall| TInt TInt |call2formal@r#0@0@@0|)) (=> (and (and (= |r#0@0| (_module.Result.PropagateFailure TInt TInt |call2formal@r#0@0@@0|)) (= |out#0@2| |out#0@0|)) (and (= |r#0@2| |r#0@0|) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (= |out#0@0| (LitInt 42))) (=> (and (and ($Is DatatypeTypeType |valueOrError0#0@0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |valueOrError0#0@0| (Tclass._module.Result TInt) $Heap@@1)) (= |i##0@0| (LitInt 1))) (=> (and (and (and (and ($Is DatatypeTypeType |call2formal@r#0@@0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |call2formal@r#0@@0| (Tclass._module.Result TInt) $Heap@@1)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is DatatypeTypeType |call2formal@r#0@0@@0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |call2formal@r#0@0@@0| (Tclass._module.Result TInt) $Heap@0)) (=> (<= (LitInt 0) |i##0@0|) (=> (_module.Result.Success_q |call2formal@r#0@0@@0|) (|_module.Result.Extract#canCall| TInt |call2formal@r#0@0@@0|))))) (and (and (and (=> (<= (LitInt 0) |i##0@0|) (_module.Result.Success_q |call2formal@r#0@0@@0|)) (=> (<= (LitInt 0) |i##0@0|) (= (U_2_int ($Unbox intType (_module.Result.Extract TInt |call2formal@r#0@0@@0|))) |i##0@0|))) (and (=> (< |i##0@0| 0) (_module.Result.Failure_q |call2formal@r#0@0@@0|)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@1)))
 :qid |gitissue446dfy.49:8|
 :skolemid |496|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1))
)))) (and (and ($HeapSucc $Heap@@1 $Heap@0) ($IsAllocBox ($Box DatatypeTypeType |call2formal@r#0@0@@0|) (Tclass._module.Result TInt) $Heap@0)) (and (|_module.Result.IsFailure#canCall| TInt |call2formal@r#0@0@@0|) (|_module.Result.IsFailure#canCall| TInt |call2formal@r#0@0@@0|))))) (and (=> (= (ControlFlow 0 13) 4) anon9_Then_correct) (=> (= (ControlFlow 0 13) 10) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and ($Is DatatypeTypeType |r#0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |r#0| (Tclass._module.Result TInt) $Heap@@1))) (and (and ($Is DatatypeTypeType |valueOrError0#0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |valueOrError0#0| (Tclass._module.Result TInt) $Heap@@1)) true)) (and (and (and ($Is DatatypeTypeType |valueOrError1#0| (Tclass._module.Result TInt)) ($IsAlloc DatatypeTypeType |valueOrError1#0| (Tclass._module.Result TInt) $Heap@@1)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 13)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
