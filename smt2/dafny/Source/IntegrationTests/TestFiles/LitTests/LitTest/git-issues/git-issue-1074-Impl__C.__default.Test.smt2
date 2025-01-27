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
(declare-fun Tagclass.C.Node () T@U)
(declare-fun |##C.InnerT.Inner| () T@U)
(declare-fun Tagclass.C.InnerT () T@U)
(declare-fun |##C.Node.Leaf| () T@U)
(declare-fun |##C.Node.Node| () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$InnerT () T@U)
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
(declare-fun |#C.Node.Leaf| () T@U)
(declare-fun C.InnerT.Inner_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.C.InnerT (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.C.Node (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun C.Node.Leaf_q (T@U) Bool)
(declare-fun C.Node.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#C.InnerT.Inner| (T@U) T@U)
(declare-fun |#C.Node.Node| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#C.Node| (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.C.Node_0 (T@U) T@U)
(declare-fun Tclass.C.InnerT_0 (T@U) T@U)
(declare-fun C.InnerT.x (T@U) T@U)
(declare-fun C.Node.children (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.C.Node |##C.InnerT.Inner| Tagclass.C.InnerT |##C.Node.Leaf| |##C.Node.Node| tytagFamily$Node tytagFamily$InnerT)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#C.Node.Leaf|) |##C.Node.Leaf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((C.InnerT$X T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.C.InnerT C.InnerT$X)) (C.InnerT.Inner_q d))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( (C.InnerT.Inner_q d) ($Is DatatypeTypeType d (Tclass.C.InnerT C.InnerT$X)))
)))
(assert (forall ((C.Node$X T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#C.Node.Leaf| (Tclass.C.Node C.Node$X) $h))
 :qid |unknown.0:0|
 :skolemid |1538|
 :pattern ( ($IsAlloc DatatypeTypeType |#C.Node.Leaf| (Tclass.C.Node C.Node$X) $h))
)))
(assert (forall ((C.Node$X@@0 T@U) ) (! ($Is DatatypeTypeType |#C.Node.Leaf| (Tclass.C.Node C.Node$X@@0))
 :qid |unknown.0:0|
 :skolemid |1537|
 :pattern ( ($Is DatatypeTypeType |#C.Node.Leaf| (Tclass.C.Node C.Node$X@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1048|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (C.InnerT.Inner_q d@@0) (= (DatatypeCtorId d@@0) |##C.InnerT.Inner|))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( (C.InnerT.Inner_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (C.Node.Leaf_q d@@1) (= (DatatypeCtorId d@@1) |##C.Node.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1535|
 :pattern ( (C.Node.Leaf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (C.Node.Node_q d@@2) (= (DatatypeCtorId d@@2) |##C.Node.Node|))
 :qid |unknown.0:0|
 :skolemid |1540|
 :pattern ( (C.Node.Node_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1059|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (C.Node.Leaf_q d@@3) (= d@@3 |#C.Node.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1536|
 :pattern ( (C.Node.Leaf_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (C.InnerT.Inner_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#C.InnerT.Inner| |a#1#0#0|))
 :qid |gitissue1074dfy.40:30|
 :skolemid |1520|
)))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( (C.InnerT.Inner_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (C.Node.Node_q d@@5) (exists ((|a#11#0#0| T@U) ) (! (= d@@5 (|#C.Node.Node| |a#11#0#0|))
 :qid |gitissue1074dfy.41:34|
 :skolemid |1541|
)))
 :qid |unknown.0:0|
 :skolemid |1542|
 :pattern ( (C.Node.Node_q d@@5))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1072|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((C.Node$X@@1 T@U) ) (!  (and (= (Tag (Tclass.C.Node C.Node$X@@1)) Tagclass.C.Node) (= (TagFamily (Tclass.C.Node C.Node$X@@1)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( (Tclass.C.Node C.Node$X@@1))
)))
(assert (forall ((C.InnerT$X@@0 T@U) ) (!  (and (= (Tag (Tclass.C.InnerT C.InnerT$X@@0)) Tagclass.C.InnerT) (= (TagFamily (Tclass.C.InnerT C.InnerT$X@@0)) tytagFamily$InnerT))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( (Tclass.C.InnerT C.InnerT$X@@0))
)))
(assert (forall ((C.InnerT$X@@1 T@U) (|a#2#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#C.InnerT.Inner| |a#2#0#0|) (Tclass.C.InnerT C.InnerT$X@@1) $h@@0) ($IsAllocBox |a#2#0#0| C.InnerT$X@@1 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc DatatypeTypeType (|#C.InnerT.Inner| |a#2#0#0|) (Tclass.C.InnerT C.InnerT$X@@1) $h@@0))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#C.Node| d@@6) (or (C.Node.Leaf_q d@@6) (C.Node.Node_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1549|
 :pattern ( (|$IsA#C.Node| d@@6))
)))
(assert (forall ((C.Node$X@@2 T@U) (|a#12#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#C.Node.Node| |a#12#0#0|) (Tclass.C.Node C.Node$X@@2) $h@@1) ($IsAlloc DatatypeTypeType |a#12#0#0| (Tclass.C.InnerT C.Node$X@@2) $h@@1)))
 :qid |unknown.0:0|
 :skolemid |1544|
 :pattern ( ($IsAlloc DatatypeTypeType (|#C.Node.Node| |a#12#0#0|) (Tclass.C.Node C.Node$X@@2) $h@@1))
)))
(assert (forall ((C.Node$X@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.C.Node C.Node$X@@3)) (or (C.Node.Leaf_q d@@7) (C.Node.Node_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1550|
 :pattern ( (C.Node.Node_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.C.Node C.Node$X@@3)))
 :pattern ( (C.Node.Leaf_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.C.Node C.Node$X@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1060|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1071|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((C.Node$X@@4 T@U) ) (! (= (Tclass.C.Node_0 (Tclass.C.Node C.Node$X@@4)) C.Node$X@@4)
 :qid |unknown.0:0|
 :skolemid |1513|
 :pattern ( (Tclass.C.Node C.Node$X@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#C.InnerT.Inner| |a#0#0#0|)) |##C.InnerT.Inner|)
 :qid |gitissue1074dfy.40:30|
 :skolemid |1518|
 :pattern ( (|#C.InnerT.Inner| |a#0#0#0|))
)))
(assert (forall ((C.InnerT$X@@2 T@U) ) (! (= (Tclass.C.InnerT_0 (Tclass.C.InnerT C.InnerT$X@@2)) C.InnerT$X@@2)
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( (Tclass.C.InnerT C.InnerT$X@@2))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (C.InnerT.x (|#C.InnerT.Inner| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue1074dfy.40:30|
 :skolemid |1529|
 :pattern ( (|#C.InnerT.Inner| |a#4#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#C.Node.Node| |a#10#0#0|)) |##C.Node.Node|)
 :qid |gitissue1074dfy.41:34|
 :skolemid |1539|
 :pattern ( (|#C.Node.Node| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (C.Node.children (|#C.Node.Node| |a#14#0#0|)) |a#14#0#0|)
 :qid |gitissue1074dfy.41:34|
 :skolemid |1547|
 :pattern ( (|#C.Node.Node| |a#14#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1058|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((C.InnerT$X@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#C.InnerT.Inner| |a#2#0#0@@0|) (Tclass.C.InnerT C.InnerT$X@@3)) ($IsBox |a#2#0#0@@0| C.InnerT$X@@3))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($Is DatatypeTypeType (|#C.InnerT.Inner| |a#2#0#0@@0|) (Tclass.C.InnerT C.InnerT$X@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#C.InnerT.Inner| |a#5#0#0|)))
 :qid |gitissue1074dfy.40:30|
 :skolemid |1530|
 :pattern ( (|#C.InnerT.Inner| |a#5#0#0|))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#C.Node.Node| |a#15#0#0|)))
 :qid |gitissue1074dfy.41:34|
 :skolemid |1548|
 :pattern ( (|#C.Node.Node| |a#15#0#0|))
)))
(assert (forall ((d@@8 T@U) (C.InnerT$X@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (C.InnerT.Inner_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.C.InnerT C.InnerT$X@@4) $h@@2))) ($IsAllocBox (C.InnerT.x d@@8) C.InnerT$X@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1527|
 :pattern ( ($IsAllocBox (C.InnerT.x d@@8) C.InnerT$X@@4 $h@@2))
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
 :skolemid |1555|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1117|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((C.Node$X@@5 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.C.Node C.Node$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.C.Node C.Node$X@@5))))
 :qid |unknown.0:0|
 :skolemid |1514|
 :pattern ( ($IsBox bx@@0 (Tclass.C.Node C.Node$X@@5)))
)))
(assert (forall ((C.InnerT$X@@5 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.C.InnerT C.InnerT$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.C.InnerT C.InnerT$X@@5))))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsBox bx@@1 (Tclass.C.InnerT C.InnerT$X@@5)))
)))
(assert (forall ((C.Node$X@@6 T@U) (|a#12#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#C.Node.Node| |a#12#0#0@@0|) (Tclass.C.Node C.Node$X@@6)) ($Is DatatypeTypeType |a#12#0#0@@0| (Tclass.C.InnerT C.Node$X@@6)))
 :qid |unknown.0:0|
 :skolemid |1543|
 :pattern ( ($Is DatatypeTypeType (|#C.Node.Node| |a#12#0#0@@0|) (Tclass.C.Node C.Node$X@@6)))
)))
(assert (forall ((d@@10 T@U) (C.Node$X@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (C.Node.Node_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass.C.Node C.Node$X@@7) $h@@3))) ($IsAlloc DatatypeTypeType (C.Node.children d@@10) (Tclass.C.InnerT C.Node$X@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1545|
 :pattern ( ($IsAlloc DatatypeTypeType (C.Node.children d@@10) (Tclass.C.InnerT C.Node$X@@7) $h@@3))
)))
(assert (= |#C.Node.Leaf| (Lit DatatypeTypeType |#C.Node.Leaf|)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#C.InnerT.Inner| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#C.InnerT.Inner| |a#3#0#0|)))
 :qid |gitissue1074dfy.40:30|
 :skolemid |1528|
 :pattern ( (|#C.InnerT.Inner| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#C.Node.Node| (Lit DatatypeTypeType |a#13#0#0|)) (Lit DatatypeTypeType (|#C.Node.Node| |a#13#0#0|)))
 :qid |gitissue1074dfy.41:34|
 :skolemid |1546|
 :pattern ( (|#C.Node.Node| (Lit DatatypeTypeType |a#13#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1049|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1094|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1073|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |node#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$C.__default.Test)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |let#0#0#0| |node#0|)) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.C.Node TInt)) (= (ControlFlow 0 2) (- 0 1)))) (C.Node.Node_q |let#0#0#0|))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |node#0| (Tclass.C.Node TInt)) ($IsAlloc DatatypeTypeType |node#0| (Tclass.C.Node TInt) $Heap)) (|$IsA#C.Node| |node#0|)) (= 2 $FunctionContextHeight)) (and (C.Node.Node_q |node#0|) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
