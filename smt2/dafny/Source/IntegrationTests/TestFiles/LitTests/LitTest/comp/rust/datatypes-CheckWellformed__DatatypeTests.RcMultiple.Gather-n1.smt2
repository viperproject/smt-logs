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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.DatatypeTests.u8 () T@U)
(declare-fun Tagclass.DatatypeTests.RcMultiple () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorA| () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorB| () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorAB| () T@U)
(declare-fun tytagFamily$u8 () T@U)
(declare-fun tytagFamily$RcMultiple () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.DatatypeTests.u8 () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun DatatypeTests.RcMultiple.Gather (T@U T@U) T@U)
(declare-fun |DatatypeTests.RcMultiple.Gather#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.DatatypeTests.RcMultiple () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTests.RcMultiple.RcConstructorA_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun DatatypeTests.RcMultiple.RcConstructorB_q (T@U) Bool)
(declare-fun DatatypeTests.RcMultiple.RcConstructorAB_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorAB| (Int Bool) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorA| (Int) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorB| (Bool) T@U)
(declare-fun DatatypeTests.RcMultiple.a (T@U) Int)
(declare-fun DatatypeTests.RcMultiple.b (T@U) Bool)
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
(assert (distinct TBool TagBool alloc Tagclass.DatatypeTests.u8 Tagclass.DatatypeTests.RcMultiple |##DatatypeTests.RcMultiple.RcConstructorA| |##DatatypeTests.RcMultiple.RcConstructorB| |##DatatypeTests.RcMultiple.RcConstructorAB| tytagFamily$u8 tytagFamily$RcMultiple)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.DatatypeTests.u8 $h)
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( ($IsAlloc intType |x#0| Tclass.DatatypeTests.u8 $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this T@U) (|other#0| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| this |other#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0| Tclass.DatatypeTests.RcMultiple)))) ($Is DatatypeTypeType (DatatypeTests.RcMultiple.Gather this |other#0|) Tclass.DatatypeTests.RcMultiple))
 :qid |datatypesdfy.89:14|
 :skolemid |1700|
 :pattern ( (DatatypeTests.RcMultiple.Gather this |other#0|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1019|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1017|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorA_q d) (= (DatatypeCtorId d) |##DatatypeTests.RcMultiple.RcConstructorA|))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorB_q d@@0) (= (DatatypeCtorId d@@0) |##DatatypeTests.RcMultiple.RcConstructorB|))
 :qid |unknown.0:0|
 :skolemid |1676|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorAB_q d@@1) (= (DatatypeCtorId d@@1) |##DatatypeTests.RcMultiple.RcConstructorAB|))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1028|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#12#0#0| |a#12#1#0|) Tclass.DatatypeTests.RcMultiple)  (and ($Is intType (int_2_U |a#12#0#0|) Tclass.DatatypeTests.u8) ($Is boolType (bool_2_U |a#12#1#0|) TBool)))
 :qid |datatypesdfy.87:23|
 :skolemid |1687|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#12#0#0| |a#12#1#0|) Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorAB_q d@@2) (exists ((|a#11#0#0| Int) (|a#11#1#0| Bool) ) (! (= d@@2 (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#11#0#0| |a#11#1#0|))
 :qid |datatypesdfy.87:23|
 :skolemid |1685|
)))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorA_q d@@3) (exists ((|a#1#0#0| Int) ) (! (= d@@3 (|#DatatypeTests.RcMultiple.RcConstructorA| |a#1#0#0|))
 :qid |datatypesdfy.85:22|
 :skolemid |1669|
)))
 :qid |unknown.0:0|
 :skolemid |1670|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorB_q d@@4) (exists ((|a#6#0#0| Bool) ) (! (= d@@4 (|#DatatypeTests.RcMultiple.RcConstructorB| |a#6#0#0|))
 :qid |datatypesdfy.86:22|
 :skolemid |1677|
)))
 :qid |unknown.0:0|
 :skolemid |1678|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) (|other#0@@0| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |other#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0@@0| Tclass.DatatypeTests.RcMultiple)))) (= (DatatypeTests.RcMultiple.Gather (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |other#0@@0|)) (ite (DatatypeTests.RcMultiple.RcConstructorAB_q (Lit DatatypeTypeType this@@0)) this@@0 (ite (DatatypeTests.RcMultiple.RcConstructorA_q (Lit DatatypeTypeType this@@0)) (ite (DatatypeTests.RcMultiple.RcConstructorB_q (Lit DatatypeTypeType |other#0@@0|)) (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt (DatatypeTests.RcMultiple.a (Lit DatatypeTypeType this@@0))) (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.RcMultiple.b (Lit DatatypeTypeType |other#0@@0|)))))) this@@0) (ite (DatatypeTests.RcMultiple.RcConstructorB_q (Lit DatatypeTypeType this@@0)) (ite (DatatypeTests.RcMultiple.RcConstructorA_q (Lit DatatypeTypeType |other#0@@0|)) (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt (DatatypeTests.RcMultiple.a (Lit DatatypeTypeType |other#0@@0|))) (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.RcMultiple.b (Lit DatatypeTypeType this@@0)))))) this@@0) this@@0)))))
 :qid |datatypesdfy.89:14|
 :weight 3
 :skolemid |1703|
 :pattern ( (DatatypeTests.RcMultiple.Gather (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |other#0@@0|)))
))))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#2#0#0|) Tclass.DatatypeTests.RcMultiple) ($Is intType (int_2_U |a#2#0#0|) Tclass.DatatypeTests.u8))
 :qid |datatypesdfy.85:22|
 :skolemid |1671|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#2#0#0|) Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| Bool) ) (! (= (DatatypeTests.RcMultiple.b (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |datatypesdfy.87:23|
 :skolemid |1692|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#9#0#0| Bool) ) (! (= (DatatypeTests.RcMultiple.b (|#DatatypeTests.RcMultiple.RcConstructorB| |a#9#0#0|)) |a#9#0#0|)
 :qid |datatypesdfy.86:22|
 :skolemid |1682|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| |a#9#0#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#10#0#0| |a#10#1#0|)) |##DatatypeTests.RcMultiple.RcConstructorAB|)
 :qid |datatypesdfy.87:23|
 :skolemid |1683|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Bool) ) (! (= (DatatypeTests.RcMultiple.a (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |datatypesdfy.87:23|
 :skolemid |1691|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorA| |a#0#0#0|)) |##DatatypeTests.RcMultiple.RcConstructorA|)
 :qid |datatypesdfy.85:22|
 :skolemid |1667|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (DatatypeTests.RcMultiple.a (|#DatatypeTests.RcMultiple.RcConstructorA| |a#4#0#0|)) |a#4#0#0|)
 :qid |datatypesdfy.85:22|
 :skolemid |1674|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorB| |a#5#0#0|)) |##DatatypeTests.RcMultiple.RcConstructorB|)
 :qid |datatypesdfy.86:22|
 :skolemid |1675|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| |a#5#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1027|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#7#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| |a#7#0#0|) Tclass.DatatypeTests.RcMultiple) ($Is boolType (bool_2_U |a#7#0#0|) TBool))
 :qid |datatypesdfy.86:22|
 :skolemid |1679|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| |a#7#0#0|) Tclass.DatatypeTests.RcMultiple))
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
 :skolemid |1758|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (DatatypeTests.RcMultiple.RcConstructorB_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.DatatypeTests.RcMultiple $h@@0))) ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@5)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@5)) TBool $h@@0))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (DatatypeTests.RcMultiple.RcConstructorAB_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.DatatypeTests.RcMultiple $h@@1))) ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@6)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@6)) TBool $h@@1))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass.DatatypeTests.RcMultiple) (or (or (DatatypeTests.RcMultiple.RcConstructorA_q d@@7) (DatatypeTests.RcMultiple.RcConstructorB_q d@@7)) (DatatypeTests.RcMultiple.RcConstructorAB_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.DatatypeTests.RcMultiple))
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.DatatypeTests.RcMultiple))
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@8 Tclass.DatatypeTests.RcMultiple)) ($IsAlloc DatatypeTypeType d@@8 Tclass.DatatypeTests.RcMultiple $h@@2))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 Tclass.DatatypeTests.RcMultiple $h@@2))
)))
(assert (= (Tag Tclass.DatatypeTests.u8) Tagclass.DatatypeTests.u8))
(assert (= (TagFamily Tclass.DatatypeTests.u8) tytagFamily$u8))
(assert (= (Tag Tclass.DatatypeTests.RcMultiple) Tagclass.DatatypeTests.RcMultiple))
(assert (= (TagFamily Tclass.DatatypeTests.RcMultiple) tytagFamily$RcMultiple))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (DatatypeTests.RcMultiple.RcConstructorA_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.DatatypeTests.RcMultiple $h@@3))) ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@9)) Tclass.DatatypeTests.u8 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@9)) Tclass.DatatypeTests.u8 $h@@3))
)))
(assert (forall ((d@@10 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (DatatypeTests.RcMultiple.RcConstructorAB_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.DatatypeTests.RcMultiple $h@@4))) ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@10)) Tclass.DatatypeTests.u8 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1688|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@10)) Tclass.DatatypeTests.u8 $h@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.DatatypeTests.u8)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 255)))
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( ($Is intType |x#0@@0| Tclass.DatatypeTests.u8))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| T@U) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|))) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#13#0#0| (U_2_bool |a#13#1#0|))))
 :qid |datatypesdfy.87:23|
 :skolemid |1690|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|))))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1020|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#3#0#0|)))
 :qid |datatypesdfy.85:22|
 :skolemid |1673|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType |a#8#0#0|))) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool |a#8#0#0|))))
 :qid |datatypesdfy.86:22|
 :skolemid |1681|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType |a#8#0#0|))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1018|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@1 T@U) (|other#0@@1| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| this@@1 |other#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0@@1| Tclass.DatatypeTests.RcMultiple)))) (= (DatatypeTests.RcMultiple.Gather this@@1 |other#0@@1|) (ite (DatatypeTests.RcMultiple.RcConstructorAB_q this@@1) this@@1 (ite (DatatypeTests.RcMultiple.RcConstructorA_q this@@1) (ite (DatatypeTests.RcMultiple.RcConstructorB_q |other#0@@1|) (|#DatatypeTests.RcMultiple.RcConstructorAB| (DatatypeTests.RcMultiple.a this@@1) (DatatypeTests.RcMultiple.b |other#0@@1|)) this@@1) (ite (DatatypeTests.RcMultiple.RcConstructorB_q this@@1) (ite (DatatypeTests.RcMultiple.RcConstructorA_q |other#0@@1|) (|#DatatypeTests.RcMultiple.RcConstructorAB| (DatatypeTests.RcMultiple.a |other#0@@1|) (DatatypeTests.RcMultiple.b this@@1)) this@@1) this@@1)))))
 :qid |datatypesdfy.89:14|
 :skolemid |1702|
 :pattern ( (DatatypeTests.RcMultiple.Gather this@@1 |other#0@@1|))
))))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1065|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1044|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |other#0@@2| () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$DatatypeTests.RcMultiple.Gather)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon18_Else_correct true))
(let ((anon18_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorB_q |other#0@@2|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (DatatypeTests.RcMultiple.RcConstructorA_q this@@2) (DatatypeTests.RcMultiple.RcConstructorAB_q this@@2))) (=> (or (DatatypeTests.RcMultiple.RcConstructorA_q this@@2) (DatatypeTests.RcMultiple.RcConstructorAB_q this@@2)) (=> (= (ControlFlow 0 11) (- 0 10)) (or (DatatypeTests.RcMultiple.RcConstructorB_q |other#0@@2|) (DatatypeTests.RcMultiple.RcConstructorAB_q |other#0@@2|))))))))
(let ((anon17_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorA_q this@@2) (and (=> (= (ControlFlow 0 14) 11) anon18_Then_correct) (=> (= (ControlFlow 0 14) 13) anon18_Else_correct)))))
(let ((anon20_Else_correct true))
(let ((anon20_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorA_q |other#0@@2|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (DatatypeTests.RcMultiple.RcConstructorA_q |other#0@@2|) (DatatypeTests.RcMultiple.RcConstructorAB_q |other#0@@2|))) (=> (or (DatatypeTests.RcMultiple.RcConstructorA_q |other#0@@2|) (DatatypeTests.RcMultiple.RcConstructorAB_q |other#0@@2|)) (=> (= (ControlFlow 0 5) (- 0 4)) (or (DatatypeTests.RcMultiple.RcConstructorB_q this@@2) (DatatypeTests.RcMultiple.RcConstructorAB_q this@@2))))))))
(let ((anon19_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorB_q this@@2) (and (=> (= (ControlFlow 0 8) 5) anon20_Then_correct) (=> (= (ControlFlow 0 8) 7) anon20_Else_correct)))))
(let ((anon19_Else_correct true))
(let ((anon17_Else_correct  (=> (not (DatatypeTests.RcMultiple.RcConstructorA_q this@@2)) (and (=> (= (ControlFlow 0 9) 8) anon19_Then_correct) (=> (= (ControlFlow 0 9) 3) anon19_Else_correct)))))
(let ((anon16_Else_correct  (=> (not (DatatypeTests.RcMultiple.RcConstructorAB_q this@@2)) (and (=> (= (ControlFlow 0 15) 14) anon17_Then_correct) (=> (= (ControlFlow 0 15) 9) anon17_Else_correct)))))
(let ((anon16_Then_correct true))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon15_Then_correct) (=> (= (ControlFlow 0 16) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType this@@2 Tclass.DatatypeTests.RcMultiple) ($IsAlloc DatatypeTypeType this@@2 Tclass.DatatypeTests.RcMultiple $Heap)) ($Is DatatypeTypeType |other#0@@2| Tclass.DatatypeTests.RcMultiple)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
