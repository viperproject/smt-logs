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
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M2.Cl () T@U)
(declare-fun Tagclass.M2.Tr? () T@U)
(declare-fun Tagclass.M2.Tr () T@U)
(declare-fun Tagclass.M2.Cl? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$Tr () T@U)
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
(declare-fun implements$M2.Tr (T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Cl? (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M2.Cl (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.M2.Tr? (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.Tr.F (T@U T@U T@U T@U T@U) (_ BitVec 10))
(declare-fun |M2.Tr.F#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Tr (T@U T@U) T@U)
(declare-fun U_2_bv10 (T@U) (_ BitVec 10))
(declare-fun bv10Type () T@T)
(declare-fun bv10_2_U ((_ BitVec 10)) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Tclass.M2.Tr?_0 (T@U) T@U)
(declare-fun Tclass.M2.Tr?_1 (T@U) T@U)
(declare-fun Tclass.M2.Tr_0 (T@U) T@U)
(declare-fun Tclass.M2.Tr_1 (T@U) T@U)
(declare-fun Tclass.M2.Cl_0 (T@U) T@U)
(declare-fun Tclass.M2.Cl?_0 (T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass._System.Tuple2 Tagclass.M2.Cl Tagclass.M2.Tr? Tagclass.M2.Tr Tagclass.M2.Cl? |tytagFamily$_tuple#2| tytagFamily$Cl tytagFamily$Tr)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((M2.Cl$Y T@U) ) (! (implements$M2.Tr (Tclass.M2.Cl? M2.Cl$Y) (Tclass._System.Tuple2 M2.Cl$Y M2.Cl$Y) TReal)
 :qid |unknown.0:0|
 :skolemid |1680|
)))
(assert (= (Ctor refType) 3))
(assert (forall ((M2.Cl$Y@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.M2.Cl M2.Cl$Y@@0) $h) ($IsAlloc refType |c#0| (Tclass.M2.Cl? M2.Cl$Y@@0) $h))
 :qid |unknown.0:0|
 :skolemid |1682|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M2.Cl M2.Cl$Y@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M2.Cl? M2.Cl$Y@@0) $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((M2.Cl$Y@@1 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass.M2.Cl? M2.Cl$Y@@1) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1679|
 :pattern ( ($IsAlloc refType $o (Tclass.M2.Cl? M2.Cl$Y@@1) $h@@0))
)))
(assert (forall ((M2.Cl$Y@@2 T@U) ($o@@0 T@U) ) (!  (=> ($Is refType $o@@0 (Tclass.M2.Cl? M2.Cl$Y@@2)) ($Is refType $o@@0 (Tclass.M2.Tr? (Tclass._System.Tuple2 M2.Cl$Y@@2 M2.Cl$Y@@2) TReal)))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( ($Is refType $o@@0 (Tclass.M2.Cl? M2.Cl$Y@@2)))
)))
(assert (forall ((M2.Cl$Y@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.M2.Cl? M2.Cl$Y@@3)) ($IsBox bx (Tclass.M2.Tr? (Tclass._System.Tuple2 M2.Cl$Y@@3 M2.Cl$Y@@3) TReal)))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( ($IsBox bx (Tclass.M2.Cl? M2.Cl$Y@@3)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1139|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1150|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert  (and (and (= (Ctor bv10Type) 7) (forall ((arg0@@5 (_ BitVec 10)) ) (! (= (U_2_bv10 (bv10_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv10|
 :pattern ( (bv10_2_U arg0@@5))
))) (forall ((x@@4 T@U) ) (! (= (bv10_2_U (U_2_bv10 x@@4)) x@@4)
 :qid |cast:U_2_bv10|
 :pattern ( (U_2_bv10 x@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2.Tr$X T@U) (M2.Tr$W T@U) (this T@U) (|x#0| T@U) (|w#0| T@U) ) (!  (=> (or (|M2.Tr.F#canCall| M2.Tr$X M2.Tr$W this |x#0| |w#0|) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.M2.Tr M2.Tr$X M2.Tr$W))) ($IsBox |x#0| M2.Tr$X)) ($IsBox |w#0| M2.Tr$W)))) (= (M2.Tr.F M2.Tr$X M2.Tr$W this |x#0| |w#0|) (U_2_bv10 (Lit bv10Type (bv10_2_U #b0000001111)))))
 :qid |unknown.0:0|
 :skolemid |1671|
 :pattern ( (M2.Tr.F M2.Tr$X M2.Tr$W this |x#0| |w#0|))
))))
(assert (forall ((M2.Tr$X@@0 T@U) (M2.Tr$W@@0 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.M2.Tr M2.Tr$X@@0 M2.Tr$W@@0))  (and ($Is refType |c#0@@0| (Tclass.M2.Tr? M2.Tr$X@@0 M2.Tr$W@@0)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1673|
 :pattern ( ($Is refType |c#0@@0| (Tclass.M2.Tr M2.Tr$X@@0 M2.Tr$W@@0)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.M2.Tr? M2.Tr$X@@0 M2.Tr$W@@0)))
)))
(assert (forall ((M2.Cl$Y@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.M2.Cl M2.Cl$Y@@4))  (and ($Is refType |c#0@@1| (Tclass.M2.Cl? M2.Cl$Y@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1681|
 :pattern ( ($Is refType |c#0@@1| (Tclass.M2.Cl M2.Cl$Y@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.M2.Cl? M2.Cl$Y@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1163|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((M2.Cl$Y@@5 T@U) ) (!  (and (= (Tag (Tclass.M2.Cl M2.Cl$Y@@5)) Tagclass.M2.Cl) (= (TagFamily (Tclass.M2.Cl M2.Cl$Y@@5)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |1656|
 :pattern ( (Tclass.M2.Cl M2.Cl$Y@@5))
)))
(assert (forall ((M2.Cl$Y@@6 T@U) ) (!  (and (= (Tag (Tclass.M2.Cl? M2.Cl$Y@@6)) Tagclass.M2.Cl?) (= (TagFamily (Tclass.M2.Cl? M2.Cl$Y@@6)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |1675|
 :pattern ( (Tclass.M2.Cl? M2.Cl$Y@@6))
)))
(assert (forall ((M2.Tr$X@@1 T@U) (M2.Tr$W@@1 T@U) (|c#0@@2| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.M2.Tr M2.Tr$X@@1 M2.Tr$W@@1) $h@@1) ($IsAlloc refType |c#0@@2| (Tclass.M2.Tr? M2.Tr$X@@1 M2.Tr$W@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1674|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.M2.Tr M2.Tr$X@@1 M2.Tr$W@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.M2.Tr? M2.Tr$X@@1 M2.Tr$W@@1) $h@@1))
)))
(assert (forall ((M2.Cl$Y@@7 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass.M2.Cl? M2.Cl$Y@@7))  (or (= $o@@1 null) (= (dtype $o@@1) (Tclass.M2.Cl? M2.Cl$Y@@7))))
 :qid |unknown.0:0|
 :skolemid |1678|
 :pattern ( ($Is refType $o@@1 (Tclass.M2.Cl? M2.Cl$Y@@7)))
)))
(assert (forall ((M2.Tr$X@@2 T@U) (M2.Tr$W@@2 T@U) ($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.M2.Tr? M2.Tr$X@@2 M2.Tr$W@@2) $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1664|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.M2.Tr? M2.Tr$X@@2 M2.Tr$W@@2) $h@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1151|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TReal) (and (= ($Box realType ($Unbox realType bx@@1)) bx@@1) ($Is realType ($Unbox realType bx@@1) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |1152|
 :pattern ( ($IsBox bx@@1 TReal))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1162|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) |_System._tuple#2$T0|)
 :qid |unknown.0:0|
 :skolemid |1581|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |1582|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((M2.Tr$X@@3 T@U) (M2.Tr$W@@3 T@U) ) (! (= (Tclass.M2.Tr?_0 (Tclass.M2.Tr? M2.Tr$X@@3 M2.Tr$W@@3)) M2.Tr$X@@3)
 :qid |unknown.0:0|
 :skolemid |1660|
 :pattern ( (Tclass.M2.Tr? M2.Tr$X@@3 M2.Tr$W@@3))
)))
(assert (forall ((M2.Tr$X@@4 T@U) (M2.Tr$W@@4 T@U) ) (! (= (Tclass.M2.Tr?_1 (Tclass.M2.Tr? M2.Tr$X@@4 M2.Tr$W@@4)) M2.Tr$W@@4)
 :qid |unknown.0:0|
 :skolemid |1661|
 :pattern ( (Tclass.M2.Tr? M2.Tr$X@@4 M2.Tr$W@@4))
)))
(assert (forall ((M2.Tr$X@@5 T@U) (M2.Tr$W@@5 T@U) ) (! (= (Tclass.M2.Tr_0 (Tclass.M2.Tr M2.Tr$X@@5 M2.Tr$W@@5)) M2.Tr$X@@5)
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( (Tclass.M2.Tr M2.Tr$X@@5 M2.Tr$W@@5))
)))
(assert (forall ((M2.Tr$X@@6 T@U) (M2.Tr$W@@6 T@U) ) (! (= (Tclass.M2.Tr_1 (Tclass.M2.Tr M2.Tr$X@@6 M2.Tr$W@@6)) M2.Tr$W@@6)
 :qid |unknown.0:0|
 :skolemid |1667|
 :pattern ( (Tclass.M2.Tr M2.Tr$X@@6 M2.Tr$W@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2.Tr$X@@7 T@U) (M2.Tr$W@@7 T@U) (this@@0 T@U) (|x#0@@0| T@U) (|w#0@@0| T@U) ) (!  (=> (or (|M2.Tr.F#canCall| M2.Tr$X@@7 M2.Tr$W@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |w#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.M2.Tr M2.Tr$X@@7 M2.Tr$W@@7))) ($IsBox |x#0@@0| M2.Tr$X@@7)) ($IsBox |w#0@@0| M2.Tr$W@@7)))) (= (M2.Tr.F M2.Tr$X@@7 M2.Tr$W@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |w#0@@0|)) (U_2_bv10 (Lit bv10Type (bv10_2_U #b0000001111)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1672|
 :pattern ( (M2.Tr.F M2.Tr$X@@7 M2.Tr$W@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |w#0@@0|)))
))))
(assert (forall ((M2.Tr$X@@8 T@U) (M2.Tr$W@@8 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.M2.Tr? M2.Tr$X@@8 M2.Tr$W@@8))  (or (= $o@@3 null) (implements$M2.Tr (dtype $o@@3) M2.Tr$X@@8 M2.Tr$W@@8)))
 :qid |unknown.0:0|
 :skolemid |1663|
 :pattern ( ($Is refType $o@@3 (Tclass.M2.Tr? M2.Tr$X@@8 M2.Tr$W@@8)))
)))
(assert (forall ((M2.Cl$Y@@8 T@U) ) (! (= (Tclass.M2.Cl_0 (Tclass.M2.Cl M2.Cl$Y@@8)) M2.Cl$Y@@8)
 :qid |unknown.0:0|
 :skolemid |1657|
 :pattern ( (Tclass.M2.Cl M2.Cl$Y@@8))
)))
(assert (forall ((M2.Cl$Y@@9 T@U) ) (! (= (Tclass.M2.Cl?_0 (Tclass.M2.Cl? M2.Cl$Y@@9)) M2.Cl$Y@@9)
 :qid |unknown.0:0|
 :skolemid |1676|
 :pattern ( (Tclass.M2.Cl? M2.Cl$Y@@9))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1149|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))))
 :qid |unknown.0:0|
 :skolemid |1583|
 :pattern ( ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)))
)))
(assert (forall ((M2.Tr$X@@9 T@U) (M2.Tr$W@@9 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.M2.Tr? M2.Tr$X@@9 M2.Tr$W@@9)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.M2.Tr? M2.Tr$X@@9 M2.Tr$W@@9))))
 :qid |unknown.0:0|
 :skolemid |1662|
 :pattern ( ($IsBox bx@@3 (Tclass.M2.Tr? M2.Tr$X@@9 M2.Tr$W@@9)))
)))
(assert (forall ((M2.Tr$X@@10 T@U) (M2.Tr$W@@10 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.M2.Tr M2.Tr$X@@10 M2.Tr$W@@10)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.M2.Tr M2.Tr$X@@10 M2.Tr$W@@10))))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( ($IsBox bx@@4 (Tclass.M2.Tr M2.Tr$X@@10 M2.Tr$W@@10)))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3418|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1580|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((M2.Tr$X@@11 T@U) (M2.Tr$W@@11 T@U) ) (!  (and (= (Tag (Tclass.M2.Tr? M2.Tr$X@@11 M2.Tr$W@@11)) Tagclass.M2.Tr?) (= (TagFamily (Tclass.M2.Tr? M2.Tr$X@@11 M2.Tr$W@@11)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( (Tclass.M2.Tr? M2.Tr$X@@11 M2.Tr$W@@11))
)))
(assert (forall ((M2.Tr$X@@12 T@U) (M2.Tr$W@@12 T@U) ) (!  (and (= (Tag (Tclass.M2.Tr M2.Tr$X@@12 M2.Tr$W@@12)) Tagclass.M2.Tr) (= (TagFamily (Tclass.M2.Tr M2.Tr$X@@12 M2.Tr$W@@12)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1665|
 :pattern ( (Tclass.M2.Tr M2.Tr$X@@12 M2.Tr$W@@12))
)))
(assert (forall ((M2.Cl$Y@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.M2.Cl M2.Cl$Y@@10)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.M2.Cl M2.Cl$Y@@10))))
 :qid |unknown.0:0|
 :skolemid |1658|
 :pattern ( ($IsBox bx@@5 (Tclass.M2.Cl M2.Cl$Y@@10)))
)))
(assert (forall ((M2.Cl$Y@@11 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.M2.Cl? M2.Cl$Y@@11)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.M2.Cl? M2.Cl$Y@@11))))
 :qid |unknown.0:0|
 :skolemid |1677|
 :pattern ( ($IsBox bx@@6 (Tclass.M2.Cl? M2.Cl$Y@@11)))
)))
(assert (forall ((M2.Cl$Y@@12 T@U) (bx@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@7 (Tclass.M2.Cl? M2.Cl$Y@@12) $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@7 (Tclass.M2.Tr? (Tclass._System.Tuple2 M2.Cl$Y@@12 M2.Cl$Y@@12) TReal) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( ($IsAllocBox bx@@7 (Tclass.M2.Cl? M2.Cl$Y@@12) $h@@3))
)))
(assert (forall ((M2.Cl$Y@@13 T@U) ($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 (Tclass.M2.Cl? M2.Cl$Y@@13) $heap) ($IsAlloc refType $o@@5 (Tclass.M2.Tr? (Tclass._System.Tuple2 M2.Cl$Y@@13 M2.Cl$Y@@13) TReal) $heap))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.M2.Cl? M2.Cl$Y@@13) $heap))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@6)) (Lit BoxType ($Box T@@4 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1140|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@6)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1185|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1186|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1164|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1165|
 :pattern ( ($Is realType v@@4 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |c#0@@3| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |aa#0| () T@U)
(set-info :boogie-vc-id Impl$$M2.__default.M)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is DatatypeTypeType |aa#0@0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |aa#0@0| (Tclass._System.Tuple2 TInt TInt) $Heap)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |c#0@@3| null)) (not true))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |c#0@@3| (Tclass.M2.Cl TInt)) ($IsAlloc refType |c#0@@3| (Tclass.M2.Cl TInt) $Heap))) (=> (and (and (and ($Is DatatypeTypeType |aa#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |aa#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
