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
(declare-fun Tagclass.IntLexOrder.T () T@U)
(declare-fun |##IntLexOrder.T.Int| () T@U)
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
(declare-fun |$IsA#IntLexOrder.T| (T@U) Bool)
(declare-fun IntLexOrder.T.Int_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun IntLexOrder.__default.Leq (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |IntLexOrder.__default.Leq#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.IntLexOrder.T () T@U)
(declare-fun IntLexOrder.T.i (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun IntLexOrder.T.j (T@U) Int)
(declare-fun |#IntLexOrder.T.Int| (Int Int) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.IntLexOrder.T |##IntLexOrder.T.Int| tytagFamily$T)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#IntLexOrder.T| d) (IntLexOrder.T.Int_q d))
 :qid |unknown.0:0|
 :skolemid |3001|
 :pattern ( (|$IsA#IntLexOrder.T| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|IntLexOrder.__default.Leq#canCall| (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass.IntLexOrder.T) ($Is DatatypeTypeType |b#0| Tclass.IntLexOrder.T)))) (and (and (and (IntLexOrder.T.Int_q (Lit DatatypeTypeType |a#0|)) (IntLexOrder.T.Int_q (Lit DatatypeTypeType |b#0|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (< (IntLexOrder.T.i (Lit DatatypeTypeType |a#0|)) (IntLexOrder.T.i (Lit DatatypeTypeType |b#0|))))))) (and (and (IntLexOrder.T.Int_q (Lit DatatypeTypeType |a#0|)) (IntLexOrder.T.Int_q (Lit DatatypeTypeType |b#0|))) (=> (= (LitInt (IntLexOrder.T.i (Lit DatatypeTypeType |a#0|))) (LitInt (IntLexOrder.T.i (Lit DatatypeTypeType |b#0|)))) (and (IntLexOrder.T.Int_q (Lit DatatypeTypeType |a#0|)) (IntLexOrder.T.Int_q (Lit DatatypeTypeType |b#0|))))))) (= (IntLexOrder.__default.Leq (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|)) (ite (< (IntLexOrder.T.i (Lit DatatypeTypeType |a#0|)) (IntLexOrder.T.i (Lit DatatypeTypeType |b#0|))) true (ite (= (LitInt (IntLexOrder.T.i (Lit DatatypeTypeType |a#0|))) (LitInt (IntLexOrder.T.i (Lit DatatypeTypeType |b#0|)))) (<= (LitInt (IntLexOrder.T.j (Lit DatatypeTypeType |a#0|))) (LitInt (IntLexOrder.T.j (Lit DatatypeTypeType |b#0|)))) false)))))
 :qid |GenericSortdfy.6:17|
 :weight 3
 :skolemid |2989|
 :pattern ( (IntLexOrder.__default.Leq (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|)))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.IntLexOrder.T) (IntLexOrder.T.Int_q d@@0))
 :qid |unknown.0:0|
 :skolemid |3002|
 :pattern ( (IntLexOrder.T.Int_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.IntLexOrder.T))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#IntLexOrder.T.Int| |a#2#0#0| |a#2#1#0|) Tclass.IntLexOrder.T)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is intType (int_2_U |a#2#1#0|) TInt)))
 :qid |GenericSortdfy.113:20|
 :skolemid |2994|
 :pattern ( ($Is DatatypeTypeType (|#IntLexOrder.T.Int| |a#2#0#0| |a#2#1#0|) Tclass.IntLexOrder.T))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2421|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2419|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (IntLexOrder.T.Int_q d@@1) (= (DatatypeCtorId d@@1) |##IntLexOrder.T.Int|))
 :qid |unknown.0:0|
 :skolemid |2991|
 :pattern ( (IntLexOrder.T.Int_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2430|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|IntLexOrder.__default.Leq#canCall| |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| Tclass.IntLexOrder.T) ($Is DatatypeTypeType |b#0@@0| Tclass.IntLexOrder.T)))) (and (and (and (IntLexOrder.T.Int_q |a#0@@0|) (IntLexOrder.T.Int_q |b#0@@0|)) (=> (<= (IntLexOrder.T.i |b#0@@0|) (IntLexOrder.T.i |a#0@@0|)) (and (and (IntLexOrder.T.Int_q |a#0@@0|) (IntLexOrder.T.Int_q |b#0@@0|)) (=> (= (IntLexOrder.T.i |a#0@@0|) (IntLexOrder.T.i |b#0@@0|)) (and (IntLexOrder.T.Int_q |a#0@@0|) (IntLexOrder.T.Int_q |b#0@@0|)))))) (= (IntLexOrder.__default.Leq |a#0@@0| |b#0@@0|) (ite (< (IntLexOrder.T.i |a#0@@0|) (IntLexOrder.T.i |b#0@@0|)) true (ite (= (IntLexOrder.T.i |a#0@@0|) (IntLexOrder.T.i |b#0@@0|)) (<= (IntLexOrder.T.j |a#0@@0|) (IntLexOrder.T.j |b#0@@0|)) false)))))
 :qid |GenericSortdfy.6:17|
 :skolemid |2988|
 :pattern ( (IntLexOrder.__default.Leq |a#0@@0| |b#0@@0|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (IntLexOrder.T.Int_q d@@2) (exists ((|a#1#0#0| Int) (|a#1#1#0| Int) ) (! (= d@@2 (|#IntLexOrder.T.Int| |a#1#0#0| |a#1#1#0|))
 :qid |GenericSortdfy.113:20|
 :skolemid |2992|
)))
 :qid |unknown.0:0|
 :skolemid |2993|
 :pattern ( (IntLexOrder.T.Int_q d@@2))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Int) ) (! (= (DatatypeCtorId (|#IntLexOrder.T.Int| |a#0#0#0| |a#0#1#0|)) |##IntLexOrder.T.Int|)
 :qid |GenericSortdfy.113:20|
 :skolemid |2990|
 :pattern ( (|#IntLexOrder.T.Int| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) ) (! (= (IntLexOrder.T.i (|#IntLexOrder.T.Int| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |GenericSortdfy.113:20|
 :skolemid |2998|
 :pattern ( (|#IntLexOrder.T.Int| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) ) (! (= (IntLexOrder.T.j (|#IntLexOrder.T.Int| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |GenericSortdfy.113:20|
 :skolemid |2999|
 :pattern ( (|#IntLexOrder.T.Int| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2429|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |6798|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (IntLexOrder.T.Int_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.IntLexOrder.T $h))) ($IsAlloc intType (int_2_U (IntLexOrder.T.i d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2995|
 :pattern ( ($IsAlloc intType (int_2_U (IntLexOrder.T.i d@@3)) TInt $h))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (IntLexOrder.T.Int_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.IntLexOrder.T $h@@0))) ($IsAlloc intType (int_2_U (IntLexOrder.T.j d@@4)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |2996|
 :pattern ( ($IsAlloc intType (int_2_U (IntLexOrder.T.j d@@4)) TInt $h@@0))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@5 Tclass.IntLexOrder.T)) ($IsAlloc DatatypeTypeType d@@5 Tclass.IntLexOrder.T $h@@1))
 :qid |unknown.0:0|
 :skolemid |3000|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.IntLexOrder.T $h@@1))
)))
(assert (= (Tag Tclass.IntLexOrder.T) Tagclass.IntLexOrder.T))
(assert (= (TagFamily Tclass.IntLexOrder.T) tytagFamily$T))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) ) (! (= (|#IntLexOrder.T.Int| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|)) (Lit DatatypeTypeType (|#IntLexOrder.T.Int| |a#3#0#0| |a#3#1#0|)))
 :qid |GenericSortdfy.113:20|
 :skolemid |2997|
 :pattern ( (|#IntLexOrder.T.Int| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2422|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2420|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2465|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2444|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@@1| () T@U)
(declare-fun |b#0@@1| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$IntLexOrder.__default.Totality)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (or (IntLexOrder.__default.Leq |a#0@@1| |b#0@@1|) (IntLexOrder.__default.Leq |b#0@@1| |a#0@@1|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a#0@@1| Tclass.IntLexOrder.T) ($IsAlloc DatatypeTypeType |a#0@@1| Tclass.IntLexOrder.T $Heap)) (|$IsA#IntLexOrder.T| |a#0@@1|)) (=> (and (and (and ($Is DatatypeTypeType |b#0@@1| Tclass.IntLexOrder.T) ($IsAlloc DatatypeTypeType |b#0@@1| Tclass.IntLexOrder.T $Heap)) (|$IsA#IntLexOrder.T| |b#0@@1|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
