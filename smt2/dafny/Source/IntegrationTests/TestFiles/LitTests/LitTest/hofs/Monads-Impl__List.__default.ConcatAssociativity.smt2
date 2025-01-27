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
(declare-fun Tagclass.List.M () T@U)
(declare-fun |##List.M.Cons| () T@U)
(declare-fun |##List.M.Nil| () T@U)
(declare-fun tytagFamily$M () T@U)
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
(declare-fun |#List.M.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.List.M (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |List.M#Equal| (T@U T@U) Bool)
(declare-fun List.M.Cons_q (T@U) Bool)
(declare-fun List.M.hd (T@U) T@U)
(declare-fun List.M.tl (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#List.M.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun List.M.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#List.M| (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun List.__default.Concat (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |List.__default.Concat#canCall| (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun Tclass.List.M_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct alloc Tagclass.List.M |##List.M.Cons| |##List.M.Nil| tytagFamily$M)
)
(assert (= (DatatypeCtorId |#List.M.Nil|) |##List.M.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((List.M$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A) $h))
 :qid |unknown.0:0|
 :skolemid |2306|
 :pattern ( ($IsAlloc DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A) $h))
)))
(assert (forall ((List.M$A@@0 T@U) ) (! ($Is DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A@@0))
 :qid |unknown.0:0|
 :skolemid |2305|
 :pattern ( ($Is DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|List.M#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |2311|
 :pattern ( (|List.M#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (List.M.Cons_q a@@0) (List.M.Cons_q b@@0)) (= (|List.M#Equal| a@@0 b@@0)  (and (= (List.M.hd a@@0) (List.M.hd b@@0)) (|List.M#Equal| (List.M.tl a@@0) (List.M.tl b@@0)))))
 :qid |unknown.0:0|
 :skolemid |2309|
 :pattern ( (|List.M#Equal| a@@0 b@@0) (List.M.Cons_q a@@0))
 :pattern ( (|List.M#Equal| a@@0 b@@0) (List.M.Cons_q b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1690|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((List.M$A@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#List.M.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.List.M List.M$A@@1))  (and ($IsBox |a#2#0#0| List.M$A@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass.List.M List.M$A@@1))))
 :qid |unknown.0:0|
 :skolemid |2294|
 :pattern ( ($Is DatatypeTypeType (|#List.M.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.List.M List.M$A@@1)))
)))
(assert (forall ((d T@U) ) (! (= (List.M.Cons_q d) (= (DatatypeCtorId d) |##List.M.Cons|))
 :qid |unknown.0:0|
 :skolemid |2291|
 :pattern ( (List.M.Cons_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (List.M.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##List.M.Nil|))
 :qid |unknown.0:0|
 :skolemid |2303|
 :pattern ( (List.M.Nil_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1701|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (List.M.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#List.M.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Monadsdfy.85:24|
 :skolemid |2292|
)))
 :qid |unknown.0:0|
 :skolemid |2293|
 :pattern ( (List.M.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (List.M.Nil_q d@@2) (= d@@2 |#List.M.Nil|))
 :qid |unknown.0:0|
 :skolemid |2304|
 :pattern ( (List.M.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1714|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((List.M$A@@2 T@U) ) (!  (and (= (Tag (Tclass.List.M List.M$A@@2)) Tagclass.List.M) (= (TagFamily (Tclass.List.M List.M$A@@2)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |2203|
 :pattern ( (Tclass.List.M List.M$A@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#List.M| d@@3) (or (List.M.Cons_q d@@3) (List.M.Nil_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2307|
 :pattern ( (|$IsA#List.M| d@@3))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Concat$A T@U) ($ly T@U) (|xs#0| T@U) (|ys#0| T@U) ) (!  (=> (or (|List.__default.Concat#canCall| List._default.Concat$A (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| (Tclass.List.M List._default.Concat$A)) ($Is DatatypeTypeType |ys#0| (Tclass.List.M List._default.Concat$A))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (List.M.Cons_q (Lit DatatypeTypeType |xs#0|))))) (let ((|xs#4| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0|)))))
(|List.__default.Concat#canCall| List._default.Concat$A |xs#4| (Lit DatatypeTypeType |ys#0|)))) (= (List.__default.Concat List._default.Concat$A ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (ite (List.M.Cons_q (Lit DatatypeTypeType |xs#0|)) (let ((|xs#3| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit BoxType (List.M.hd (Lit DatatypeTypeType |xs#0|)))))
(Lit DatatypeTypeType (|#List.M.Cons| |x#2| (Lit DatatypeTypeType (List.__default.Concat List._default.Concat$A ($LS $ly) |xs#3| (Lit DatatypeTypeType |ys#0|))))))) |ys#0|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2217|
 :pattern ( (List.__default.Concat List._default.Concat$A ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Concat$A@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|List.__default.Concat#canCall| List._default.Concat$A@@0 |xs#0@@0| |ys#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@0| (Tclass.List.M List._default.Concat$A@@0)) ($Is DatatypeTypeType |ys#0@@0| (Tclass.List.M List._default.Concat$A@@0))))) (and (=> (List.M.Cons_q |xs#0@@0|) (let ((|xs#2| (List.M.tl |xs#0@@0|)))
(|List.__default.Concat#canCall| List._default.Concat$A@@0 |xs#2| |ys#0@@0|))) (= (List.__default.Concat List._default.Concat$A@@0 ($LS $ly@@0) |xs#0@@0| |ys#0@@0|) (ite (List.M.Cons_q |xs#0@@0|) (let ((|xs#1| (List.M.tl |xs#0@@0|)))
(let ((|x#0| (List.M.hd |xs#0@@0|)))
(|#List.M.Cons| |x#0| (List.__default.Concat List._default.Concat$A@@0 $ly@@0 |xs#1| |ys#0@@0|)))) |ys#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( (List.__default.Concat List._default.Concat$A@@0 ($LS $ly@@0) |xs#0@@0| |ys#0@@0|))
))))
(assert (forall ((List.M$A@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass.List.M List.M$A@@3)) (or (List.M.Cons_q d@@4) (List.M.Nil_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2308|
 :pattern ( (List.M.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.List.M List.M$A@@3)))
 :pattern ( (List.M.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.List.M List.M$A@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1713|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (List.M.Nil_q a@@1) (List.M.Nil_q b@@1)) (|List.M#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |2310|
 :pattern ( (|List.M#Equal| a@@1 b@@1) (List.M.Nil_q a@@1))
 :pattern ( (|List.M#Equal| a@@1 b@@1) (List.M.Nil_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#List.M.Cons| |a#0#0#0| |a#0#1#0|)) |##List.M.Cons|)
 :qid |Monadsdfy.85:24|
 :skolemid |2290|
 :pattern ( (|#List.M.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (List.M.hd (|#List.M.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Monadsdfy.85:24|
 :skolemid |2299|
 :pattern ( (|#List.M.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (List.M.tl (|#List.M.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Monadsdfy.85:24|
 :skolemid |2301|
 :pattern ( (|#List.M.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Concat$A@@1 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|List.__default.Concat#canCall| List._default.Concat$A@@1 |xs#0@@1| |ys#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@1| (Tclass.List.M List._default.Concat$A@@1)) ($Is DatatypeTypeType |ys#0@@1| (Tclass.List.M List._default.Concat$A@@1))))) ($Is DatatypeTypeType (List.__default.Concat List._default.Concat$A@@1 $ly@@1 |xs#0@@1| |ys#0@@1|) (Tclass.List.M List._default.Concat$A@@1)))
 :qid |unknown.0:0|
 :skolemid |2213|
 :pattern ( (List.__default.Concat List._default.Concat$A@@1 $ly@@1 |xs#0@@1| |ys#0@@1|))
))))
(assert (forall ((List.M$A@@4 T@U) ) (! (= (Tclass.List.M_0 (Tclass.List.M List.M$A@@4)) List.M$A@@4)
 :qid |unknown.0:0|
 :skolemid |2204|
 :pattern ( (Tclass.List.M List.M$A@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1700|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#List.M.Cons| |a#5#0#0| |a#5#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2300|
 :pattern ( (|#List.M.Cons| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#List.M.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2302|
 :pattern ( (|#List.M.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((d@@5 T@U) (List.M$A@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (List.M.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.List.M List.M$A@@5) $h@@0))) ($IsAllocBox (List.M.hd d@@5) List.M$A@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |2296|
 :pattern ( ($IsAllocBox (List.M.hd d@@5) List.M$A@@5 $h@@0))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |2330|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (List._default.Concat$A@@2 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) (|ys#0@@2| T@U) ) (!  (=> (and (or (|List.__default.Concat#canCall| List._default.Concat$A@@2 |xs#0@@2| |ys#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@2| (Tclass.List.M List._default.Concat$A@@2)) ($IsAlloc DatatypeTypeType |xs#0@@2| (Tclass.List.M List._default.Concat$A@@2) $Heap)) (and ($Is DatatypeTypeType |ys#0@@2| (Tclass.List.M List._default.Concat$A@@2)) ($IsAlloc DatatypeTypeType |ys#0@@2| (Tclass.List.M List._default.Concat$A@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (List.__default.Concat List._default.Concat$A@@2 $ly@@2 |xs#0@@2| |ys#0@@2|) (Tclass.List.M List._default.Concat$A@@2) $Heap))
 :qid |Monadsdfy.90:12|
 :skolemid |2214|
 :pattern ( ($IsAlloc DatatypeTypeType (List.__default.Concat List._default.Concat$A@@2 $ly@@2 |xs#0@@2| |ys#0@@2|) (Tclass.List.M List._default.Concat$A@@2) $Heap))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1759|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((List._default.Concat$A@@3 T@U) ($ly@@3 T@U) (|xs#0@@3| T@U) (|ys#0@@3| T@U) ) (! (= (List.__default.Concat List._default.Concat$A@@3 ($LS $ly@@3) |xs#0@@3| |ys#0@@3|) (List.__default.Concat List._default.Concat$A@@3 $ly@@3 |xs#0@@3| |ys#0@@3|))
 :qid |unknown.0:0|
 :skolemid |2211|
 :pattern ( (List.__default.Concat List._default.Concat$A@@3 ($LS $ly@@3) |xs#0@@3| |ys#0@@3|))
)))
(assert (forall ((List.M$A@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.List.M List.M$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.List.M List.M$A@@6))))
 :qid |unknown.0:0|
 :skolemid |2205|
 :pattern ( ($IsBox bx (Tclass.List.M List.M$A@@6)))
)))
(assert (forall ((d@@7 T@U) (List.M$A@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (List.M.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.List.M List.M$A@@7) $h@@1))) ($IsAlloc DatatypeTypeType (List.M.tl d@@7) (Tclass.List.M List.M$A@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2297|
 :pattern ( ($IsAlloc DatatypeTypeType (List.M.tl d@@7) (Tclass.List.M List.M$A@@7) $h@@1))
)))
(assert (= |#List.M.Nil| (Lit DatatypeTypeType |#List.M.Nil|)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#List.M.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#List.M.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2298|
 :pattern ( (|#List.M.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1691|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((List.M$A@@8 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#List.M.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.List.M List.M$A@@8) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| List.M$A@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.List.M List.M$A@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |2295|
 :pattern ( ($IsAlloc DatatypeTypeType (|#List.M.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.List.M List.M$A@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |xs#0@@4| () T@U)
(declare-fun |ys#0@@4| () T@U)
(declare-fun |zs#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun List._default.ConcatAssociativity$A () T@U)
(declare-fun $LZ () T@U)
(set-info :boogie-vc-id Impl$$List.__default.ConcatAssociativity)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#List.M| |xs#0@@4|)) (and (|$IsA#List.M| |ys#0@@4|) (|$IsA#List.M| |zs#0|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@0 $Heap@0)) (and (forall ((|$ih#xs0#0| T@U) (|$ih#ys0#0| T@U) (|$ih#zs0#0| T@U) ) (!  (=> (and (and (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass.List.M List._default.ConcatAssociativity$A)) ($Is DatatypeTypeType |$ih#ys0#0| (Tclass.List.M List._default.ConcatAssociativity$A))) ($Is DatatypeTypeType |$ih#zs0#0| (Tclass.List.M List._default.ConcatAssociativity$A))) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@4|)) (and (= (DtRank |$ih#xs0#0|) (DtRank |xs#0@@4|)) (or (< (DtRank |$ih#ys0#0|) (DtRank |ys#0@@4|)) (and (= (DtRank |$ih#ys0#0|) (DtRank |ys#0@@4|)) (< (DtRank |$ih#zs0#0|) (DtRank |zs#0|))))))) (|List.M#Equal| (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|) |$ih#zs0#0|) (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#xs0#0| (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#ys0#0| |$ih#zs0#0|))))
 :qid |Monadsdfy.154:32|
 :skolemid |2257|
 :pattern ( (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#xs0#0| (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#ys0#0| |$ih#zs0#0|)))
 :pattern ( (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) (List.__default.Concat List._default.ConcatAssociativity$A ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|) |$ih#zs0#0|))
)) (= (ControlFlow 0 2) (- 0 1)))) (|List.M#Equal| (List.__default.Concat List._default.ConcatAssociativity$A ($LS ($LS $LZ)) (List.__default.Concat List._default.ConcatAssociativity$A ($LS ($LS $LZ)) |xs#0@@4| |ys#0@@4|) |zs#0|) (List.__default.Concat List._default.ConcatAssociativity$A ($LS ($LS $LZ)) |xs#0@@4| (List.__default.Concat List._default.ConcatAssociativity$A ($LS ($LS $LZ)) |ys#0@@4| |zs#0|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and ($Is DatatypeTypeType |xs#0@@4| (Tclass.List.M List._default.ConcatAssociativity$A)) ($IsAlloc DatatypeTypeType |xs#0@@4| (Tclass.List.M List._default.ConcatAssociativity$A) $Heap@@0)) (|$IsA#List.M| |xs#0@@4|)) (and (and ($Is DatatypeTypeType |ys#0@@4| (Tclass.List.M List._default.ConcatAssociativity$A)) ($IsAlloc DatatypeTypeType |ys#0@@4| (Tclass.List.M List._default.ConcatAssociativity$A) $Heap@@0)) (|$IsA#List.M| |ys#0@@4|))) (and (and (and ($Is DatatypeTypeType |zs#0| (Tclass.List.M List._default.ConcatAssociativity$A)) ($IsAlloc DatatypeTypeType |zs#0| (Tclass.List.M List._default.ConcatAssociativity$A) $Heap@@0)) (|$IsA#List.M| |zs#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
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
