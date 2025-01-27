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
(declare-fun TReal () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.ListLibrary.List () T@U)
(declare-fun |##ListLibrary.List.Nil| () T@U)
(declare-fun |##ListLibrary.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#ListLibrary.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.ListLibrary.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |ListLibrary.List#Equal| (T@U T@U) Bool)
(declare-fun ListLibrary.List.Cons_q (T@U) Bool)
(declare-fun ListLibrary.List._h3 (T@U) T@U)
(declare-fun ListLibrary.List._h4 (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#ListLibrary.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun ListLibrary.List.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#ListLibrary.List| (T@U) Bool)
(declare-fun Tclass.ListLibrary.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TReal TagReal alloc Tagclass.ListLibrary.List |##ListLibrary.List.Nil| |##ListLibrary.List.Cons| tytagFamily$List)
)
(assert (= (Tag TReal) TagReal))
(assert (= (DatatypeCtorId |#ListLibrary.List.Nil|) |##ListLibrary.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((ListLibrary.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1604|
 :pattern ( ($IsAlloc DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$T) $h))
)))
(assert (forall ((ListLibrary.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1603|
 :pattern ( ($Is DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$T@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|ListLibrary.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1622|
 :pattern ( (|ListLibrary.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (ListLibrary.List.Cons_q a@@0) (ListLibrary.List.Cons_q b@@0)) (= (|ListLibrary.List#Equal| a@@0 b@@0)  (and (= (ListLibrary.List._h3 a@@0) (ListLibrary.List._h3 b@@0)) (|ListLibrary.List#Equal| (ListLibrary.List._h4 a@@0) (ListLibrary.List._h4 b@@0)))))
 :qid |unknown.0:0|
 :skolemid |1621|
 :pattern ( (|ListLibrary.List#Equal| a@@0 b@@0) (ListLibrary.List.Cons_q a@@0))
 :pattern ( (|ListLibrary.List#Equal| a@@0 b@@0) (ListLibrary.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1131|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((ListLibrary.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#ListLibrary.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.ListLibrary.List ListLibrary.List$T@@1))  (and ($IsBox |a#6#0#0| ListLibrary.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.ListLibrary.List ListLibrary.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1609|
 :pattern ( ($Is DatatypeTypeType (|#ListLibrary.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.ListLibrary.List ListLibrary.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (ListLibrary.List.Nil_q d) (= (DatatypeCtorId d) |##ListLibrary.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1601|
 :pattern ( (ListLibrary.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (ListLibrary.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##ListLibrary.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1606|
 :pattern ( (ListLibrary.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1142|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (ListLibrary.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#ListLibrary.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |SmallTestsdfy.860:33|
 :skolemid |1607|
)))
 :qid |unknown.0:0|
 :skolemid |1608|
 :pattern ( (ListLibrary.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (ListLibrary.List.Nil_q d@@2) (= d@@2 |#ListLibrary.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1602|
 :pattern ( (ListLibrary.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1155|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((ListLibrary.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.ListLibrary.List ListLibrary.List$T@@2)) Tagclass.ListLibrary.List) (= (TagFamily (Tclass.ListLibrary.List ListLibrary.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |1598|
 :pattern ( (Tclass.ListLibrary.List ListLibrary.List$T@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#ListLibrary.List| d@@3) (or (ListLibrary.List.Nil_q d@@3) (ListLibrary.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1618|
 :pattern ( (|$IsA#ListLibrary.List| d@@3))
)))
(assert (forall ((ListLibrary.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass.ListLibrary.List ListLibrary.List$T@@3)) (or (ListLibrary.List.Nil_q d@@4) (ListLibrary.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1619|
 :pattern ( (ListLibrary.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.ListLibrary.List ListLibrary.List$T@@3)))
 :pattern ( (ListLibrary.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.ListLibrary.List ListLibrary.List$T@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TReal) (and (= ($Box realType ($Unbox realType bx)) bx) ($Is realType ($Unbox realType bx) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |1144|
 :pattern ( ($IsBox bx TReal))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1154|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (ListLibrary.List.Nil_q a@@1) (ListLibrary.List.Nil_q b@@1)) (|ListLibrary.List#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1620|
 :pattern ( (|ListLibrary.List#Equal| a@@1 b@@1) (ListLibrary.List.Nil_q a@@1))
 :pattern ( (|ListLibrary.List#Equal| a@@1 b@@1) (ListLibrary.List.Nil_q b@@1))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#ListLibrary.List.Cons| |a#4#0#0| |a#4#1#0|)) |##ListLibrary.List.Cons|)
 :qid |SmallTestsdfy.860:33|
 :skolemid |1605|
 :pattern ( (|#ListLibrary.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (ListLibrary.List._h3 (|#ListLibrary.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SmallTestsdfy.860:33|
 :skolemid |1614|
 :pattern ( (|#ListLibrary.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (ListLibrary.List._h4 (|#ListLibrary.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SmallTestsdfy.860:33|
 :skolemid |1616|
 :pattern ( (|#ListLibrary.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((ListLibrary.List$T@@4 T@U) ) (! (= (Tclass.ListLibrary.List_0 (Tclass.ListLibrary.List ListLibrary.List$T@@4)) ListLibrary.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |1599|
 :pattern ( (Tclass.ListLibrary.List ListLibrary.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1141|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#ListLibrary.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |SmallTestsdfy.860:33|
 :skolemid |1615|
 :pattern ( (|#ListLibrary.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#ListLibrary.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |SmallTestsdfy.860:33|
 :skolemid |1617|
 :pattern ( (|#ListLibrary.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@5 T@U) (ListLibrary.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (ListLibrary.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.ListLibrary.List ListLibrary.List$T@@5) $h@@0))) ($IsAllocBox (ListLibrary.List._h3 d@@5) ListLibrary.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1611|
 :pattern ( ($IsAllocBox (ListLibrary.List._h3 d@@5) ListLibrary.List$T@@5 $h@@0))
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
 :skolemid |3846|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1200|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((ListLibrary.List$T@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.ListLibrary.List ListLibrary.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.ListLibrary.List ListLibrary.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1600|
 :pattern ( ($IsBox bx@@0 (Tclass.ListLibrary.List ListLibrary.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (ListLibrary.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (ListLibrary.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.ListLibrary.List ListLibrary.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (ListLibrary.List._h4 d@@7) (Tclass.ListLibrary.List ListLibrary.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1612|
 :pattern ( ($IsAlloc DatatypeTypeType (ListLibrary.List._h4 d@@7) (Tclass.ListLibrary.List ListLibrary.List$T@@7) $h@@1))
)))
(assert (= |#ListLibrary.List.Nil| (Lit DatatypeTypeType |#ListLibrary.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#ListLibrary.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#ListLibrary.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |SmallTestsdfy.860:33|
 :skolemid |1613|
 :pattern ( (|#ListLibrary.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1132|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc realType v@@1 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1178|
 :pattern ( ($IsAlloc realType v@@1 TReal h@@0))
)))
(assert (forall ((ListLibrary.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#ListLibrary.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.ListLibrary.List ListLibrary.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| ListLibrary.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.ListLibrary.List ListLibrary.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |1610|
 :pattern ( ($IsAlloc DatatypeTypeType (|#ListLibrary.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.ListLibrary.List ListLibrary.List$T@@8) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is realType v@@2 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1157|
 :pattern ( ($Is realType v@@2 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |bb#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$DatatypeTestZ.__default.Test)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |aa#0@0| (Lit DatatypeTypeType |#ListLibrary.List.Nil|)) (= |bb#0@0| (Lit DatatypeTypeType |#ListLibrary.List.Nil|))) (=> (and (and (|$IsA#ListLibrary.List| |aa#0@0|) (|$IsA#ListLibrary.List| |bb#0@0|)) (= (ControlFlow 0 2) (- 0 1))) (|ListLibrary.List#Equal| |aa#0@0| |bb#0@0|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |aa#0| (Tclass.ListLibrary.List TReal)) ($IsAlloc DatatypeTypeType |aa#0| (Tclass.ListLibrary.List TReal) $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |bb#0| (Tclass.ListLibrary.List TReal)) ($IsAlloc DatatypeTypeType |bb#0| (Tclass.ListLibrary.List TReal) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
