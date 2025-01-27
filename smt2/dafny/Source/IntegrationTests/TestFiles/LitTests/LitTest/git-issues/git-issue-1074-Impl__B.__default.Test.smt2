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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.B.InnerT () T@U)
(declare-fun Tagclass.B.Node () T@U)
(declare-fun |##B.InnerT.Inner| () T@U)
(declare-fun |##B.Node.Leaf| () T@U)
(declare-fun |##B.Node.Node| () T@U)
(declare-fun tytagFamily$InnerT () T@U)
(declare-fun tytagFamily$Node () T@U)
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
(declare-fun |#B.Node.Leaf| () T@U)
(declare-fun B.InnerT.Inner_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.B.InnerT (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.B.Node (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun B.Node.Leaf_q (T@U) Bool)
(declare-fun B.Node.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#B.InnerT.Inner| (T@U) T@U)
(declare-fun |#B.Node.Node| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#B.Node| (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.B.Node_0 (T@U) T@U)
(declare-fun Tclass.B.Node_1 (T@U) T@U)
(declare-fun Tclass.B.InnerT_0 (T@U) T@U)
(declare-fun B.InnerT.x (T@U) T@U)
(declare-fun B.Node.children (T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass.B.InnerT Tagclass.B.Node |##B.InnerT.Inner| |##B.Node.Leaf| |##B.Node.Node| tytagFamily$InnerT tytagFamily$Node)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DatatypeCtorId |#B.Node.Leaf|) |##B.Node.Leaf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((B.InnerT$X T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.B.InnerT B.InnerT$X)) (B.InnerT.Inner_q d))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (B.InnerT.Inner_q d) ($Is DatatypeTypeType d (Tclass.B.InnerT B.InnerT$X)))
)))
(assert (forall ((B.Node$X T@U) (B.Node$Y T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#B.Node.Leaf| (Tclass.B.Node B.Node$X B.Node$Y) $h))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( ($IsAlloc DatatypeTypeType |#B.Node.Leaf| (Tclass.B.Node B.Node$X B.Node$Y) $h))
)))
(assert (forall ((B.Node$X@@0 T@U) (B.Node$Y@@0 T@U) ) (! ($Is DatatypeTypeType |#B.Node.Leaf| (Tclass.B.Node B.Node$X@@0 B.Node$Y@@0))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( ($Is DatatypeTypeType |#B.Node.Leaf| (Tclass.B.Node B.Node$X@@0 B.Node$Y@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |525|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (B.InnerT.Inner_q d@@0) (= (DatatypeCtorId d@@0) |##B.InnerT.Inner|))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (B.InnerT.Inner_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (B.Node.Leaf_q d@@1) (= (DatatypeCtorId d@@1) |##B.Node.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (B.Node.Leaf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (B.Node.Node_q d@@2) (= (DatatypeCtorId d@@2) |##B.Node.Node|))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( (B.Node.Node_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |536|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (B.Node.Leaf_q d@@3) (= d@@3 |#B.Node.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (B.Node.Leaf_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (B.InnerT.Inner_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#B.InnerT.Inner| |a#1#0#0|))
 :qid |gitissue1074dfy.29:30|
 :skolemid |1001|
)))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (B.InnerT.Inner_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (B.Node.Node_q d@@5) (exists ((|a#11#0#0| T@U) ) (! (= d@@5 (|#B.Node.Node| |a#11#0#0|))
 :qid |gitissue1074dfy.30:37|
 :skolemid |1019|
)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (B.Node.Node_q d@@5))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |549|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((B.InnerT$X@@0 T@U) ) (!  (and (= (Tag (Tclass.B.InnerT B.InnerT$X@@0)) Tagclass.B.InnerT) (= (TagFamily (Tclass.B.InnerT B.InnerT$X@@0)) tytagFamily$InnerT))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (Tclass.B.InnerT B.InnerT$X@@0))
)))
(assert (forall ((B.InnerT$X@@1 T@U) (|a#2#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#B.InnerT.Inner| |a#2#0#0|) (Tclass.B.InnerT B.InnerT$X@@1) $h@@0) ($IsAllocBox |a#2#0#0| B.InnerT$X@@1 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( ($IsAlloc DatatypeTypeType (|#B.InnerT.Inner| |a#2#0#0|) (Tclass.B.InnerT B.InnerT$X@@1) $h@@0))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#B.Node| d@@6) (or (B.Node.Leaf_q d@@6) (B.Node.Node_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( (|$IsA#B.Node| d@@6))
)))
(assert (forall ((B.Node$X@@1 T@U) (B.Node$Y@@1 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.B.Node B.Node$X@@1 B.Node$Y@@1)) (or (B.Node.Leaf_q d@@7) (B.Node.Node_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1029|
 :pattern ( (B.Node.Node_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.B.Node B.Node$X@@1 B.Node$Y@@1)))
 :pattern ( (B.Node.Leaf_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.B.Node B.Node$X@@1 B.Node$Y@@1)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |537|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TReal) (and (= ($Box realType ($Unbox realType bx@@0)) bx@@0) ($Is realType ($Unbox realType bx@@0) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |538|
 :pattern ( ($IsBox bx@@0 TReal))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |548|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((B.Node$X@@2 T@U) (B.Node$Y@@2 T@U) ) (! (= (Tclass.B.Node_0 (Tclass.B.Node B.Node$X@@2 B.Node$Y@@2)) B.Node$X@@2)
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (Tclass.B.Node B.Node$X@@2 B.Node$Y@@2))
)))
(assert (forall ((B.Node$X@@3 T@U) (B.Node$Y@@3 T@U) ) (! (= (Tclass.B.Node_1 (Tclass.B.Node B.Node$X@@3 B.Node$Y@@3)) B.Node$Y@@3)
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( (Tclass.B.Node B.Node$X@@3 B.Node$Y@@3))
)))
(assert (forall ((B.Node$X@@4 T@U) (B.Node$Y@@4 T@U) (|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#B.Node.Node| |a#12#0#0|) (Tclass.B.Node B.Node$X@@4 B.Node$Y@@4)) ($IsBox |a#12#0#0| B.Node$Y@@4))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($Is DatatypeTypeType (|#B.Node.Node| |a#12#0#0|) (Tclass.B.Node B.Node$X@@4 B.Node$Y@@4)))
)))
(assert (forall ((B.InnerT$X@@2 T@U) ) (! (= (Tclass.B.InnerT_0 (Tclass.B.InnerT B.InnerT$X@@2)) B.InnerT$X@@2)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (Tclass.B.InnerT B.InnerT$X@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#B.InnerT.Inner| |a#0#0#0|)) |##B.InnerT.Inner|)
 :qid |gitissue1074dfy.29:30|
 :skolemid |999|
 :pattern ( (|#B.InnerT.Inner| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (B.InnerT.x (|#B.InnerT.Inner| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue1074dfy.29:30|
 :skolemid |1007|
 :pattern ( (|#B.InnerT.Inner| |a#4#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#B.Node.Node| |a#10#0#0|)) |##B.Node.Node|)
 :qid |gitissue1074dfy.30:37|
 :skolemid |1017|
 :pattern ( (|#B.Node.Node| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (B.Node.children (|#B.Node.Node| |a#14#0#0|)) |a#14#0#0|)
 :qid |gitissue1074dfy.30:37|
 :skolemid |1026|
 :pattern ( (|#B.Node.Node| |a#14#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |535|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((B.InnerT$X@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#B.InnerT.Inner| |a#2#0#0@@0|) (Tclass.B.InnerT B.InnerT$X@@3)) ($IsBox |a#2#0#0@@0| B.InnerT$X@@3))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($Is DatatypeTypeType (|#B.InnerT.Inner| |a#2#0#0@@0|) (Tclass.B.InnerT B.InnerT$X@@3)))
)))
(assert (forall ((B.Node$X@@5 T@U) (B.Node$Y@@5 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.B.Node B.Node$X@@5 B.Node$Y@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.B.Node B.Node$X@@5 B.Node$Y@@5))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($IsBox bx@@1 (Tclass.B.Node B.Node$X@@5 B.Node$Y@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#B.InnerT.Inner| |a#5#0#0|)))
 :qid |gitissue1074dfy.29:30|
 :skolemid |1008|
 :pattern ( (|#B.InnerT.Inner| |a#5#0#0|))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (BoxRank |a#15#0#0|) (DtRank (|#B.Node.Node| |a#15#0#0|)))
 :qid |gitissue1074dfy.30:37|
 :skolemid |1027|
 :pattern ( (|#B.Node.Node| |a#15#0#0|))
)))
(assert (forall ((d@@8 T@U) (B.InnerT$X@@4 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (B.InnerT.Inner_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.B.InnerT B.InnerT$X@@4) $h@@1))) ($IsAllocBox (B.InnerT.x d@@8) B.InnerT$X@@4 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( ($IsAllocBox (B.InnerT.x d@@8) B.InnerT$X@@4 $h@@1))
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
 :skolemid |1556|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((B.Node$X@@6 T@U) (B.Node$Y@@6 T@U) ) (!  (and (= (Tag (Tclass.B.Node B.Node$X@@6 B.Node$Y@@6)) Tagclass.B.Node) (= (TagFamily (Tclass.B.Node B.Node$X@@6 B.Node$Y@@6)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (Tclass.B.Node B.Node$X@@6 B.Node$Y@@6))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |594|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((B.InnerT$X@@5 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.B.InnerT B.InnerT$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass.B.InnerT B.InnerT$X@@5))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsBox bx@@2 (Tclass.B.InnerT B.InnerT$X@@5)))
)))
(assert (= |#B.Node.Leaf| (Lit DatatypeTypeType |#B.Node.Leaf|)))
(assert (forall ((d@@10 T@U) (B.Node$Y@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (B.Node.Node_q d@@10) (exists ((B.Node$X@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass.B.Node B.Node$X@@7 B.Node$Y@@7) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass.B.Node B.Node$X@@7 B.Node$Y@@7) $h@@2))
)))) ($IsAllocBox (B.Node.children d@@10) B.Node$Y@@7 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($IsAllocBox (B.Node.children d@@10) B.Node$Y@@7 $h@@2))
)))
(assert (forall ((B.Node$X@@8 T@U) (B.Node$Y@@8 T@U) (|a#12#0#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#B.Node.Node| |a#12#0#0@@0|) (Tclass.B.Node B.Node$X@@8 B.Node$Y@@8) $h@@3) ($IsAllocBox |a#12#0#0@@0| B.Node$Y@@8 $h@@3)))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( ($IsAlloc DatatypeTypeType (|#B.Node.Node| |a#12#0#0@@0|) (Tclass.B.Node B.Node$X@@8 B.Node$Y@@8) $h@@3))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#B.InnerT.Inner| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#B.InnerT.Inner| |a#3#0#0|)))
 :qid |gitissue1074dfy.29:30|
 :skolemid |1006|
 :pattern ( (|#B.InnerT.Inner| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#B.Node.Node| (Lit BoxType |a#13#0#0|)) (Lit DatatypeTypeType (|#B.Node.Node| |a#13#0#0|)))
 :qid |gitissue1074dfy.30:37|
 :skolemid |1025|
 :pattern ( (|#B.Node.Node| (Lit BoxType |a#13#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |526|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |571|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |572|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |550|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |551|
 :pattern ( ($Is realType v@@4 TReal))
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
(set-info :boogie-vc-id Impl$$B.__default.Test)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |let#0#0#0| |node#0|)) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.B.Node TInt (Tclass.B.InnerT TReal))) (= (ControlFlow 0 2) (- 0 1)))) (B.Node.Node_q |let#0#0#0|))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |node#0| (Tclass.B.Node TInt (Tclass.B.InnerT TReal))) ($IsAlloc DatatypeTypeType |node#0| (Tclass.B.Node TInt (Tclass.B.InnerT TReal)) $Heap)) (|$IsA#B.Node| |node#0|)) (= 1 $FunctionContextHeight)) (and (B.Node.Node_q |node#0|) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
