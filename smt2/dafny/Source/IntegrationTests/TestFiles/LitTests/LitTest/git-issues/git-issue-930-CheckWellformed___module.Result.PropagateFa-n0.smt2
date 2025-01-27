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
(declare-fun TagChar () T@U)
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
(declare-fun |Seq#Empty| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Result.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun |_module.Result.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Result.error (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._module.Result |##_module.Result.Success| |##_module.Result.Failure| tytagFamily$Result)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |gitissue930dfy.4:50|
 :skolemid |545|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.Result$T T@U) (_module.Result.PropagateFailure$U T@U) (this T@U) ) (!  (=> (and (or (|_module.Result.PropagateFailure#canCall| _module.Result$T _module.Result.PropagateFailure$U this) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this (Tclass._module.Result _module.Result$T) $Heap) (_module.Result.Failure_q this)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T _module.Result.PropagateFailure$U this) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap))
 :qid |gitissue930dfy.9:12|
 :skolemid |557|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T _module.Result.PropagateFailure$U this) (Tclass._module.Result _module.Result.PropagateFailure$U) $Heap))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
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
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@0 T@U) (_module.Result.PropagateFailure$U@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@0 _module.Result.PropagateFailure$U@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 (Tclass._module.Result _module.Result$T@@0)) (_module.Result.Failure_q this@@0)))) (= (_module.Result.PropagateFailure _module.Result$T@@0 _module.Result.PropagateFailure$U@@0 this@@0) (|#_module.Result.Failure| (_module.Result.error this@@0))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@0 _module.Result.PropagateFailure$U@@0 this@@0))
))))
(assert (forall ((_module.Result$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T@@1)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T@@1)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Result _module.Result$T@@1))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#2#0#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@2) $h) ($IsAllocBox |a#2#0#0| _module.Result$T@@2 $h)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@2) $h))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((d@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Result.Failure_q d@@3) (exists ((_module.Result$T@@3 T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@3) $h@@0)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Result _module.Result$T@@3) $h@@0))
)))) ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@0))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc SeqType (_module.Result.error d@@3) (TSeq TChar) $h@@0))
)))
(assert (forall ((_module.Result$T@@4 T@U) (|a#8#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@4) $h@@1) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@1)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@4) $h@@1))
)))
(assert (forall ((_module.Result$T@@5 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@5)) (or (_module.Result.Success_q d@@4) (_module.Result.Failure_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Result.Failure_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@5)))
 :pattern ( (_module.Result.Success_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Result _module.Result$T@@5)))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TChar) (and (= ($Box charType ($Unbox charType bx)) bx) ($Is charType ($Unbox charType bx) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx TChar))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((_module.Result$T@@6 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@6)) _module.Result$T@@6)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Result _module.Result$T@@6))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@7 T@U) (_module.Result.PropagateFailure$U@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@7 _module.Result.PropagateFailure$U@@1 this@@1) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 (Tclass._module.Result _module.Result$T@@7)) (_module.Result.Failure_q this@@1)))) ($Is DatatypeTypeType (_module.Result.PropagateFailure _module.Result$T@@7 _module.Result.PropagateFailure$U@@1 this@@1) (Tclass._module.Result _module.Result.PropagateFailure$U@@1)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@7 _module.Result.PropagateFailure$U@@1 this@@1))
))))
(assert (forall ((_module.Result$T@@8 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)) ($IsBox |a#2#0#0@@0| _module.Result$T@@8))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)))
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
(assert (forall ((d@@5 T@U) (_module.Result$T@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Success_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Result _module.Result$T@@9) $h@@2))) ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@9 $h@@2))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAllocBox (_module.Result.value d@@5) _module.Result$T@@9 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |584|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((_module.Result$T@@10 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Result _module.Result$T@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Result _module.Result$T@@10))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Result _module.Result$T@@10)))
)))
(assert (forall ((_module.Result$T@@11 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@11)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@11)))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Result$T@@12 T@U) (_module.Result.PropagateFailure$U@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Result.PropagateFailure#canCall| _module.Result$T@@12 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@2)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@2 (Tclass._module.Result _module.Result$T@@12)) (U_2_bool (Lit boolType (bool_2_U (_module.Result.Failure_q (Lit DatatypeTypeType this@@2)))))))) (= (_module.Result.PropagateFailure _module.Result$T@@12 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@2)) (Lit DatatypeTypeType (|#_module.Result.Failure| (Lit SeqType (_module.Result.error (Lit DatatypeTypeType this@@2)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |560|
 :pattern ( (_module.Result.PropagateFailure _module.Result$T@@12 _module.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@2)))
))))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc charType v@@2 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@2 TChar h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is charType v@@4 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@4 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Result$T@@13 () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Result.PropagateFailure)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (_module.Result.Failure_q this@@3))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (_module.Result.Failure_q this@@3)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is DatatypeTypeType this@@3 (Tclass._module.Result _module.Result$T@@13)) ($IsAlloc DatatypeTypeType this@@3 (Tclass._module.Result _module.Result$T@@13) $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
