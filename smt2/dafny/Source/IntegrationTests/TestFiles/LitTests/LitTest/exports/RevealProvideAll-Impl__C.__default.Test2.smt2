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
(declare-fun Tagclass.A.T () T@U)
(declare-fun |##A.T.CT1| () T@U)
(declare-fun |##A.T.CT2| () T@U)
(declare-fun tytagFamily$T () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#A.T.CT1| () T@U)
(declare-fun |#A.T.CT2| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun A.__default.getCT1 () T@U)
(declare-fun Tclass.A.T () T@U)
(declare-fun A.__default.getCT2 () T@U)
(declare-fun |A.T#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun A.T.CT1_q (T@U) Bool)
(declare-fun A.T.CT2_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$IsA#A.T| (T@U) Bool)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct alloc Tagclass.A.T |##A.T.CT1| |##A.T.CT2| tytagFamily$T)
)
(assert (= (DatatypeCtorId |#A.T.CT1|) |##A.T.CT1|))
(assert (= (DatatypeCtorId |#A.T.CT2|) |##A.T.CT2|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType A.__default.getCT1 Tclass.A.T))
(assert ($Is DatatypeTypeType A.__default.getCT2 Tclass.A.T))
(assert ($Is DatatypeTypeType |#A.T.CT1| Tclass.A.T))
(assert ($Is DatatypeTypeType |#A.T.CT2| Tclass.A.T))
(assert (forall ((a T@U) (b T@U) ) (! (= (|A.T#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( (|A.T#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1015|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (A.T.CT1_q d) (= (DatatypeCtorId d) |##A.T.CT1|))
 :qid |unknown.0:0|
 :skolemid |1486|
 :pattern ( (A.T.CT1_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (A.T.CT2_q d@@0) (= (DatatypeCtorId d@@0) |##A.T.CT2|))
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( (A.T.CT2_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1026|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (A.T.CT1_q d@@1) (= d@@1 |#A.T.CT1|))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( (A.T.CT1_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (A.T.CT2_q d@@2) (= d@@2 |#A.T.CT2|))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( (A.T.CT2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#A.T| d@@3) (or (A.T.CT1_q d@@3) (A.T.CT2_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( (|$IsA#A.T| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.A.T) (or (A.T.CT1_q d@@4) (A.T.CT2_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( (A.T.CT2_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.A.T))
 :pattern ( (A.T.CT1_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.A.T))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (A.T.CT1_q a@@0) (A.T.CT1_q b@@0)) (|A.T#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( (|A.T#Equal| a@@0 b@@0) (A.T.CT1_q a@@0))
 :pattern ( (|A.T#Equal| a@@0 b@@0) (A.T.CT1_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (A.T.CT2_q a@@1) (A.T.CT2_q b@@1)) (|A.T#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( (|A.T#Equal| a@@1 b@@1) (A.T.CT2_q a@@1))
 :pattern ( (|A.T#Equal| a@@1 b@@1) (A.T.CT2_q b@@1))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1025|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |1506|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass.A.T)) ($IsAlloc DatatypeTypeType d@@5 Tclass.A.T $h))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.A.T $h))
)))
(assert (= (Tag Tclass.A.T) Tagclass.A.T))
(assert (= (TagFamily Tclass.A.T) tytagFamily$T))
(assert (= A.__default.getCT1 (Lit DatatypeTypeType |#A.T.CT1|)))
(assert (= A.__default.getCT1 (Lit DatatypeTypeType |#A.T.CT1|)))
(assert (= A.__default.getCT2 (Lit DatatypeTypeType |#A.T.CT2|)))
(assert (= A.__default.getCT2 (Lit DatatypeTypeType |#A.T.CT2|)))
(assert (= |#A.T.CT1| (Lit DatatypeTypeType |#A.T.CT1|)))
(assert (= |#A.T.CT2| (Lit DatatypeTypeType |#A.T.CT2|)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1016|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$C.__default.Test2)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (or (|A.T#Equal| |x#0| A.__default.getCT1) (|A.T#Equal| |x#0| A.__default.getCT2)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |x#0| Tclass.A.T) ($IsAlloc DatatypeTypeType |x#0| Tclass.A.T $Heap)) (|$IsA#A.T| |x#0|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
