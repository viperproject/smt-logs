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
(declare-fun Tagclass.ProvablyEmpty.BadList () T@U)
(declare-fun |##ProvablyEmpty.BadList.Cons| () T@U)
(declare-fun tytagFamily$BadList () T@U)
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
(declare-fun |$IsA#ProvablyEmpty.BadList| (T@U) Bool)
(declare-fun ProvablyEmpty.BadList.Cons_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.ProvablyEmpty.BadList (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#ProvablyEmpty.BadList.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun ProvablyEmpty.BadList.head (T@U) T@U)
(declare-fun ProvablyEmpty.BadList.tail (T@U) T@U)
(declare-fun Tclass.ProvablyEmpty.BadList_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct alloc Tagclass.ProvablyEmpty.BadList |##ProvablyEmpty.BadList.Cons| tytagFamily$BadList)
)
(assert (forall ((d T@U) ) (!  (=> (|$IsA#ProvablyEmpty.BadList| d) (ProvablyEmpty.BadList.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (|$IsA#ProvablyEmpty.BadList| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((ProvablyEmpty.BadList$X T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X)) (ProvablyEmpty.BadList.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (ProvablyEmpty.BadList.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |541|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((ProvablyEmpty.BadList$X@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#ProvablyEmpty.BadList.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@0))  (and ($IsBox |a#2#0#0| ProvablyEmpty.BadList$X@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@0))))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( ($Is DatatypeTypeType (|#ProvablyEmpty.BadList.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (ProvablyEmpty.BadList.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##ProvablyEmpty.BadList.Cons|))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (ProvablyEmpty.BadList.Cons_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |552|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (ProvablyEmpty.BadList.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#ProvablyEmpty.BadList.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1011|
)))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (ProvablyEmpty.BadList.Cons_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |565|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((ProvablyEmpty.BadList$X@@1 T@U) ) (!  (and (= (Tag (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@1)) Tagclass.ProvablyEmpty.BadList) (= (TagFamily (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@1)) tytagFamily$BadList))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@1))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |564|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#ProvablyEmpty.BadList.Cons| |a#0#0#0| |a#0#1#0|)) |##ProvablyEmpty.BadList.Cons|)
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1009|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (ProvablyEmpty.BadList.head (|#ProvablyEmpty.BadList.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1018|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (ProvablyEmpty.BadList.tail (|#ProvablyEmpty.BadList.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1020|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((ProvablyEmpty.BadList$X@@2 T@U) ) (! (= (Tclass.ProvablyEmpty.BadList_0 (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@2)) ProvablyEmpty.BadList$X@@2)
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |551|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#ProvablyEmpty.BadList.Cons| |a#5#0#0| |a#5#1#0|)))
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1019|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#ProvablyEmpty.BadList.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1021|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((d@@3 T@U) (ProvablyEmpty.BadList$X@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (ProvablyEmpty.BadList.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@3) $h))) ($IsAllocBox (ProvablyEmpty.BadList.head d@@3) ProvablyEmpty.BadList$X@@3 $h))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( ($IsAllocBox (ProvablyEmpty.BadList.head d@@3) ProvablyEmpty.BadList$X@@3 $h))
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
 :skolemid |1026|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |610|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((ProvablyEmpty.BadList$X@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@4))))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( ($IsBox bx (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@4)))
)))
(assert (forall ((d@@5 T@U) (ProvablyEmpty.BadList$X@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (ProvablyEmpty.BadList.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@5) $h@@0))) ($IsAlloc DatatypeTypeType (ProvablyEmpty.BadList.tail d@@5) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( ($IsAlloc DatatypeTypeType (ProvablyEmpty.BadList.tail d@@5) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@5) $h@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#ProvablyEmpty.BadList.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#ProvablyEmpty.BadList.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |gitissue4939bdfy.24:30|
 :skolemid |1017|
 :pattern ( (|#ProvablyEmpty.BadList.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |542|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((ProvablyEmpty.BadList$X@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#ProvablyEmpty.BadList.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| ProvablyEmpty.BadList$X@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( ($IsAlloc DatatypeTypeType (|#ProvablyEmpty.BadList.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.ProvablyEmpty.BadList ProvablyEmpty.BadList$X@@6) $h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |xs#0| () T@U)
(declare-fun |xs##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun ProvablyEmpty._default.NeverGetHere$X () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ProvablyEmpty.__default.NeverGetHere)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (ProvablyEmpty.BadList.Cons_q |xs#0|)) (and (ProvablyEmpty.BadList.Cons_q |xs#0|) (= |xs##0@0| (ProvablyEmpty.BadList.tail |xs#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< (DtRank |xs##0@0|) (DtRank |xs#0|))) (=> (< (DtRank |xs##0@0|) (DtRank |xs#0|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (U_2_bool (Lit boolType (bool_2_U false)))) (and (= $Heap $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (U_2_bool (Lit boolType (bool_2_U false)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |xs#0| (Tclass.ProvablyEmpty.BadList ProvablyEmpty._default.NeverGetHere$X)) ($IsAlloc DatatypeTypeType |xs#0| (Tclass.ProvablyEmpty.BadList ProvablyEmpty._default.NeverGetHere$X) $Heap)) (|$IsA#ProvablyEmpty.BadList| |xs#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
