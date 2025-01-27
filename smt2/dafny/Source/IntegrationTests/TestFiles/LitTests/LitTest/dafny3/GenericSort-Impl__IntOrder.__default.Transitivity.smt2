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
(declare-fun Tagclass.IntOrder.T () T@U)
(declare-fun |##IntOrder.T.Int| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |$IsA#IntOrder.T| (T@U) Bool)
(declare-fun IntOrder.T.Int_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun IntOrder.__default.Leq (T@U T@U) Bool)
(declare-fun |IntOrder.__default.Leq#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.IntOrder.T () T@U)
(declare-fun IntOrder.T.i (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#IntOrder.T.Int| (Int) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.IntOrder.T |##IntOrder.T.Int| tytagFamily$T)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#IntOrder.T| d) (IntOrder.T.Int_q d))
 :qid |unknown.0:0|
 :skolemid |2400|
 :pattern ( (|$IsA#IntOrder.T| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|IntOrder.__default.Leq#canCall| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass.IntOrder.T) ($Is DatatypeTypeType |b#0| Tclass.IntOrder.T)))) (=> (IntOrder.__default.Leq |a#0| |b#0|) (<= (IntOrder.T.i |a#0|) (IntOrder.T.i |b#0|))))
 :qid |GenericSortdfy.6:17|
 :skolemid |2387|
 :pattern ( (IntOrder.__default.Leq |a#0| |b#0|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.IntOrder.T) (IntOrder.T.Int_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2401|
 :pattern ( (IntOrder.T.Int_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.IntOrder.T))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1822|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1820|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (IntOrder.T.Int_q d@@1) (= (DatatypeCtorId d@@1) |##IntOrder.T.Int|))
 :qid |unknown.0:0|
 :skolemid |2392|
 :pattern ( (IntOrder.T.Int_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1831|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (IntOrder.T.Int_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#IntOrder.T.Int| |a#1#0#0|))
 :qid |GenericSortdfy.96:20|
 :skolemid |2393|
)))
 :qid |unknown.0:0|
 :skolemid |2394|
 :pattern ( (IntOrder.T.Int_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|IntOrder.__default.Leq#canCall| |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| Tclass.IntOrder.T) ($Is DatatypeTypeType |b#0@@0| Tclass.IntOrder.T)))) (and (and (IntOrder.T.Int_q |a#0@@0|) (IntOrder.T.Int_q |b#0@@0|)) (= (IntOrder.__default.Leq |a#0@@0| |b#0@@0|) (<= (IntOrder.T.i |a#0@@0|) (IntOrder.T.i |b#0@@0|)))))
 :qid |GenericSortdfy.6:17|
 :skolemid |2389|
 :pattern ( (IntOrder.__default.Leq |a#0@@0| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|IntOrder.__default.Leq#canCall| (Lit DatatypeTypeType |a#0@@1|) (Lit DatatypeTypeType |b#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@1| Tclass.IntOrder.T) ($Is DatatypeTypeType |b#0@@1| Tclass.IntOrder.T)))) (and (and (IntOrder.T.Int_q (Lit DatatypeTypeType |a#0@@1|)) (IntOrder.T.Int_q (Lit DatatypeTypeType |b#0@@1|))) (= (IntOrder.__default.Leq (Lit DatatypeTypeType |a#0@@1|) (Lit DatatypeTypeType |b#0@@1|)) (<= (LitInt (IntOrder.T.i (Lit DatatypeTypeType |a#0@@1|))) (LitInt (IntOrder.T.i (Lit DatatypeTypeType |b#0@@1|)))))))
 :qid |GenericSortdfy.6:17|
 :weight 3
 :skolemid |2390|
 :pattern ( (IntOrder.__default.Leq (Lit DatatypeTypeType |a#0@@1|) (Lit DatatypeTypeType |b#0@@1|)))
))))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#IntOrder.T.Int| |a#0#0#0|)) |##IntOrder.T.Int|)
 :qid |GenericSortdfy.96:20|
 :skolemid |2391|
 :pattern ( (|#IntOrder.T.Int| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (IntOrder.T.i (|#IntOrder.T.Int| |a#4#0#0|)) |a#4#0#0|)
 :qid |GenericSortdfy.96:20|
 :skolemid |2398|
 :pattern ( (|#IntOrder.T.Int| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1830|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#IntOrder.T.Int| |a#2#0#0|) Tclass.IntOrder.T) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |GenericSortdfy.96:20|
 :skolemid |2395|
 :pattern ( ($Is DatatypeTypeType (|#IntOrder.T.Int| |a#2#0#0|) Tclass.IntOrder.T))
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
 :skolemid |6793|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (IntOrder.T.Int_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.IntOrder.T $h))) ($IsAlloc intType (int_2_U (IntOrder.T.i d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2396|
 :pattern ( ($IsAlloc intType (int_2_U (IntOrder.T.i d@@3)) TInt $h))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass.IntOrder.T)) ($IsAlloc DatatypeTypeType d@@4 Tclass.IntOrder.T $h@@0))
 :qid |unknown.0:0|
 :skolemid |2399|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.IntOrder.T $h@@0))
)))
(assert (= (Tag Tclass.IntOrder.T) Tagclass.IntOrder.T))
(assert (= (TagFamily Tclass.IntOrder.T) tytagFamily$T))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1823|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#IntOrder.T.Int| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#IntOrder.T.Int| |a#3#0#0|)))
 :qid |GenericSortdfy.96:20|
 :skolemid |2397|
 :pattern ( (|#IntOrder.T.Int| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1821|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1866|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1845|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@@2| () T@U)
(declare-fun |c#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |b#0@@2| () T@U)
(set-info :boogie-vc-id Impl$$IntOrder.__default.Transitivity)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (|IntOrder.__default.Leq#canCall| |a#0@@2| |c#0|)) (or (IntOrder.__default.Leq |a#0@@2| |c#0|) (<= (IntOrder.T.i |a#0@@2|) (IntOrder.T.i |c#0|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |a#0@@2| Tclass.IntOrder.T) ($IsAlloc DatatypeTypeType |a#0@@2| Tclass.IntOrder.T $Heap)) (|$IsA#IntOrder.T| |a#0@@2|)) (and (and ($Is DatatypeTypeType |b#0@@2| Tclass.IntOrder.T) ($IsAlloc DatatypeTypeType |b#0@@2| Tclass.IntOrder.T $Heap)) (|$IsA#IntOrder.T| |b#0@@2|))) (and (and (and ($Is DatatypeTypeType |c#0| Tclass.IntOrder.T) ($IsAlloc DatatypeTypeType |c#0| Tclass.IntOrder.T $Heap)) (|$IsA#IntOrder.T| |c#0|)) (and (and (= 2 $FunctionContextHeight) (IntOrder.__default.Leq |a#0@@2| |b#0@@2|)) (and (IntOrder.__default.Leq |b#0@@2| |c#0|) (= (ControlFlow 0 3) 2))))) anon0_correct))))
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
