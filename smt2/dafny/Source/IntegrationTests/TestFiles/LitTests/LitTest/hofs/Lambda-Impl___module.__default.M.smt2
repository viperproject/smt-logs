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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType2Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#17| (T@U T@U) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#27| (T@U Int Int) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun |lambda#12| (Bool) T@U)
(declare-fun |lambda#14| (T@U) T@U)
(declare-fun |lambda#1| () T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun |lambda#19| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#32| (T@U Int Int) T@U)
(declare-fun |lambda#21| () T@U)
(declare-fun |lambda#16| () T@U)
(declare-fun |lambda#4| (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2|)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor SetType) 8)))
(assert (forall ((t0@@2 T@U) (t1@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@2 t1@@1 heap (Handle1 h@@0 r@@0 rd) bx0) bx) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@2 t1@@1 heap (Handle1 h@@0 r@@0 rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#x#0|)) ($IsBox |$l#0#x#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#x#0|))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@2 T@T) (t2@@0 T@T) (t3 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@2 T@U) (x2 T@U) ) (! (= (MapType2Select t0@@3 t1@@2 t2@@0 t3 (MapType2Store t0@@3 t1@@2 t2@@0 t3 m@@4 x0@@4 x1@@2 x2 val@@4) x0@@4 x1@@2 x2) val@@4)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (and (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (u3 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) (x2@@0 T@U) (y0@@2 T@U) (y1@@1 T@U) (y2 T@U) ) (!  (or (= x0@@5 y0@@2) (= (MapType2Select u0@@2 u1@@2 u2@@1 u3 (MapType2Store u0@@2 u1@@2 u2@@1 u3 m@@5 x0@@5 x1@@3 x2@@0 val@@5) y0@@2 y1@@1 y2) (MapType2Select u0@@2 u1@@2 u2@@1 u3 m@@5 y0@@2 y1@@1 y2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@2 T@T) (u3@@0 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (x2@@1 T@U) (y0@@3 T@U) (y1@@2 T@U) (y2@@0 T@U) ) (!  (or (= x1@@4 y1@@2) (= (MapType2Select u0@@3 u1@@3 u2@@2 u3@@0 (MapType2Store u0@@3 u1@@3 u2@@2 u3@@0 m@@6 x0@@6 x1@@4 x2@@1 val@@6) y0@@3 y1@@2 y2@@0) (MapType2Select u0@@3 u1@@3 u2@@2 u3@@0 m@@6 y0@@3 y1@@2 y2@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (u3@@1 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (x2@@2 T@U) (y0@@4 T@U) (y1@@3 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType2Select u0@@4 u1@@4 u2@@3 u3@@1 (MapType2Store u0@@4 u1@@4 u2@@3 u3@@1 m@@7 x0@@7 x1@@5 x2@@2 val@@7) y0@@4 y1@@3 y2@@1) (MapType2Select u0@@4 u1@@4 u2@@3 u3@@1 m@@7 y0@@4 y1@@3 y2@@1)))
 :qid |mapAx1:MapType2Select:2|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|$l#6#heap#0| T@U) (|$l#6#x#0| T@U) (|$l#6#y#0| T@U) ) (! (= (U_2_bool (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#17| |l#0@@0| |l#1|) |$l#6#heap#0| |$l#6#x#0| |$l#6#y#0|))  (and ($IsBox |$l#6#x#0| |l#0@@0|) ($IsBox |$l#6#y#0| |l#1|)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#17| |l#0@@0| |l#1|) |$l#6#heap#0| |$l#6#x#0| |$l#6#y#0|))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |#$T0@@6|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) |#$T1@@7|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))
)))
(assert (forall ((|#$R@@9| T@U) (|f#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@9|) $h) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hFunc0 |#$R@@9|) $h))
 :qid |unknown.0:0|
 :skolemid |442|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@9|) $h))
)))
(assert (forall ((|#$R@@10| T@U) (|f#0@@1| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@10|) $h@@0) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@10|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |447|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@10|) $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 9))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@11|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@11|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@11|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@12|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@12|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@12|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@13|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@13|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@13|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@14| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@14|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@15| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@15|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@15|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@15|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@16| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@16|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@16|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@16|)))
)))
(assert (forall ((f@@0 T@U) (t0@@4 T@U) (t1@@3 T@U) (u0@@5 T@U) (u1@@5 T@U) ) (!  (=> (and (and ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@4 t1@@3)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u0@@5) ($IsBox bx@@3 t0@@4))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@3 u0@@5))
 :pattern ( ($IsBox bx@@3 t0@@4))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 t1@@3) ($IsBox bx@@4 u1@@5))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@4 t1@@3))
 :pattern ( ($IsBox bx@@4 u1@@5))
))) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@5 u1@@5)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@4 t1@@3)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@5 u1@@5)))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall ((t0@@5 T@U) (heap@@0 T@U) (h@@1 T@U) (r@@1 T@U) (rd@@0 T@U) ) (! (= (Apply0 t0@@5 heap@@0 (Handle0 h@@1 r@@1 rd@@0)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@1 heap@@0))
 :qid |unknown.0:0|
 :skolemid |414|
 :pattern ( (Apply0 t0@@5 heap@@0 (Handle0 h@@1 r@@1 rd@@0)))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((h@@2 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@2 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@2 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@6 T@U) (t1@@4 T@U) (heap@@1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and ($IsBox bx0@@0 t0@@6) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@6 t1@@4)))) (= (|Set#Equal| (Reads1 t0@@6 t1@@4 $OneHeap f@@1 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@6 t1@@4 heap@@1 f@@1 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@6 t1@@4 $OneHeap f@@1 bx0@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Reads1 t0@@6 t1@@4 heap@@1 f@@1 bx0@@0))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@17| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@17|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@17|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@17| $OneHeap |f#0@@2| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@17|)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@5 T@U) (t2@@1 T@U) (heap@@2 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@1 T@U) (bx1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@7 t1@@5 t2@@1 heap@@2 (Handle2 h@@3 r@@2 rd@@1) bx0@@1 bx1) bx@@5) (|Set#IsMember| (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType rd@@1 heap@@2 bx0@@1 bx1) bx@@5))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads2 t0@@7 t1@@5 t2@@1 heap@@2 (Handle2 h@@3 r@@2 rd@@1) bx0@@1 bx1) bx@@5))
)))
(assert (forall ((t0@@8 T@U) (heap@@3 T@U) (h@@4 T@U) (r@@3 T@U) (rd@@2 T@U) (bx@@6 T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@8 heap@@3 (Handle0 h@@4 r@@3 rd@@2)) bx@@6) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@2 heap@@3) bx@@6))
 :qid |unknown.0:0|
 :skolemid |416|
 :pattern ( (|Set#IsMember| (Reads0 t0@@8 heap@@3 (Handle0 h@@4 r@@3 rd@@2)) bx@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@9 T@U) (heap@@4 T@U) (f@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@4) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@9))) (|Set#Equal| (Reads0 t0@@9 $OneHeap f@@2) |Set#Empty|)) (= (Requires0 t0@@9 $OneHeap f@@2) (Requires0 t0@@9 heap@@4 f@@2)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@9 $OneHeap f@@2) ($IsGoodHeap heap@@4))
 :pattern ( (Requires0 t0@@9 heap@@4 f@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((t0@@10 T@U) (t1@@6 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@2 t0@@10) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@10 t1@@6)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@6 h0 f@@3 bx0@@2) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@10 t1@@6 h0 f@@3 bx0@@2) (Requires1 t0@@10 t1@@6 h1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@10 t1@@6 h1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@11 T@U) (t1@@7 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@3 t0@@11) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@11 t1@@7)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@11 t1@@7 h1@@0 f@@4 bx0@@3) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@11 t1@@7 h0@@0 f@@4 bx0@@3) (Requires1 t0@@11 t1@@7 h1@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@11 t1@@7 h1@@0 f@@4 bx0@@3))
)))
(assert (forall ((v T@U) (t0@@12 T@U) ) (! (= ($Is SetType v (TSet t0@@12)) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v bx@@7) ($IsBox bx@@7 t0@@12))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@7))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@12)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@5 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@5 ly) (MapType0Select LayerTypeType A f@@5 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@5 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@5 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@5) ($IsAlloc T@@1 v@@0 t h@@5))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@5))
)))
(assert (forall ((t0@@13 T@U) (t1@@8 T@U) (t2@@2 T@U) (heap@@5 T@U) (h@@6 T@U) (r@@4 T@U) (rd@@3 T@U) (bx0@@4 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@13 t1@@8 t2@@2 heap@@5 (Handle2 h@@6 r@@4 rd@@3) bx0@@4 bx1@@0) (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType h@@6 heap@@5 bx0@@4 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply2 t0@@13 t1@@8 t2@@2 heap@@5 (Handle2 h@@6 r@@4 rd@@3) bx0@@4 bx1@@0))
)))
(assert (forall ((h@@7 T@U) (k@@0 T@U) (bx@@8 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@7 k@@0) (=> ($IsAllocBox bx@@8 t@@0 h@@7) ($IsAllocBox bx@@8 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@7 k@@0) ($IsAllocBox bx@@8 t@@0 h@@7))
)))
(assert (forall ((h@@8 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@8 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@8) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@8 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@8))
)))
(assert (forall ((t0@@14 T@U) (t1@@9 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@5 t0@@14) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@14 t1@@9)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@14 t1@@9 h0@@1 f@@6 bx0@@5) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@14 t1@@9 h0@@1 f@@6 bx0@@5) (Reads1 t0@@14 t1@@9 h1@@1 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@14 t1@@9 h1@@1 f@@6 bx0@@5))
)))
(assert (forall ((t0@@15 T@U) (t1@@10 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@6 t0@@15) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@15 t1@@10)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@15 t1@@10 h1@@2 f@@7 bx0@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@15 t1@@10 h0@@2 f@@7 bx0@@6) (Reads1 t0@@15 t1@@10 h1@@2 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@15 t1@@10 h1@@2 f@@7 bx0@@6))
)))
(assert (forall ((t0@@16 T@U) (t1@@11 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@8 T@U) (bx0@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@7 t0@@16) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@16 t1@@11)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@11 h0@@3 f@@8 bx0@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@16 t1@@11 h0@@3 f@@8 bx0@@7) (Apply1 t0@@16 t1@@11 h1@@3 f@@8 bx0@@7)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@16 t1@@11 h1@@3 f@@8 bx0@@7))
)))
(assert (forall ((t0@@17 T@U) (t1@@12 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@9 T@U) (bx0@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@8 t0@@17) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@17 t1@@12)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@12 h1@@4 f@@9 bx0@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@17 t1@@12 h0@@4 f@@9 bx0@@8) (Apply1 t0@@17 t1@@12 h1@@4 f@@9 bx0@@8)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@17 t1@@12 h1@@4 f@@9 bx0@@8))
)))
(assert (forall ((|#$R@@18| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@18|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@18|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@18|))
)))
(assert (forall ((|#$R@@19| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@19|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@19|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |438|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@19|))
)))
(assert (forall ((|#$R@@20| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@20|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@20|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |443|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@20|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| Int) (|l#2| Int) (|$l#10#heap#0| T@U) (|$l#10#x#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#27| |l#0@@1| |l#1@@0| |l#2|) |$l#10#heap#0| |$l#10#x#0|))  (and ($IsBox |$l#10#x#0| |l#0@@1|) (and (or (not (= (U_2_int ($Unbox intType |$l#10#x#0|)) |l#1@@0|)) (not true)) (or (not (= (U_2_int ($Unbox intType |$l#10#x#0|)) |l#2|)) (not true)))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |587|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#27| |l#0@@1| |l#1@@0| |l#2|) |$l#10#heap#0| |$l#10#x#0|))
)))
(assert (forall ((s T@U) (bx@@9 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@9) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@9))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@9))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@21| T@U) (|f#0@@3| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@21|) $h@@4) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@21|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@21|) $h@@4))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@22| T@U) (|f#0@@4| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@22|) $h@@5) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@22|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@22|) $h@@5))
)))
(assert (forall ((t0@@18 T@U) (t1@@13 T@U) (heap@@6 T@U) (h@@9 T@U) (r@@5 T@U) (rd@@4 T@U) (bx0@@9 T@U) ) (! (= (Apply1 t0@@18 t1@@13 heap@@6 (Handle1 h@@9 r@@5 rd@@4) bx0@@9) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType h@@9 heap@@6 bx0@@9))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@18 t1@@13 heap@@6 (Handle1 h@@9 r@@5 rd@@4) bx0@@9))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@10 Tclass._System.object?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@11 Tclass._System.object))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( ($IsBox bx@@12 Tclass._System.Tuple0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@10 T@U) (t0@@19 T@U) (t1@@14 T@U) (t2@@3 T@U) (h@@10 T@U) ) (!  (=> ($IsGoodHeap h@@10) (= ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@19 t1@@14 t2@@3) h@@10) (forall ((bx0@@10 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@10 t0@@19) ($IsAllocBox bx0@@10 t0@@19 h@@10)) (and ($IsBox bx1@@1 t1@@14) ($IsAllocBox bx1@@1 t1@@14 h@@10))) (Requires2 t0@@19 t1@@14 t2@@3 h@@10 f@@10 bx0@@10 bx1@@1)) (forall ((r@@6 T@U) ) (!  (=> (and (or (not (= r@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@19 t1@@14 t2@@3 h@@10 f@@10 bx0@@10 bx1@@1) ($Box refType r@@6))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@6) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@19 t1@@14 t2@@3 h@@10 f@@10 bx0@@10 bx1@@1) ($Box refType r@@6)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@19 t1@@14 t2@@3 h@@10 f@@10 bx0@@10 bx1@@1))
 :pattern ( (Reads2 t0@@19 t1@@14 t2@@3 h@@10 f@@10 bx0@@10 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@19 t1@@14 t2@@3) h@@10))
)))
(assert (forall ((f@@11 T@U) (t0@@20 T@U) (t1@@15 T@U) (h@@11 T@U) ) (!  (=> (and ($IsGoodHeap h@@11) ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@20 t1@@15) h@@11)) (forall ((bx0@@11 T@U) ) (!  (=> (and ($IsAllocBox bx0@@11 t0@@20 h@@11) (Requires1 t0@@20 t1@@15 h@@11 f@@11 bx0@@11)) ($IsAllocBox (Apply1 t0@@20 t1@@15 h@@11 f@@11 bx0@@11) t1@@15 h@@11))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@20 t1@@15 h@@11 f@@11 bx0@@11))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@20 t1@@15) h@@11))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#3| |l#0@@2|) |$l#0#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (MapType0Select refType boolType (|lambda#3| |l#0@@2|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|) |l#0@@3|)
 :qid |Lambdadfy.6:24|
 :skolemid |579|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#4#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#11| |l#0@@4|) |$l#4#heap#0|) |l#0@@4|)
 :qid |Lambdadfy.8:32|
 :skolemid |580|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#11| |l#0@@4|) |$l#4#heap#0|))
)))
(assert (forall ((|l#0@@5| Bool) (|$l#4#heap#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#12| |l#0@@5|) |$l#4#heap#0@@0|)) |l#0@@5|)
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#12| |l#0@@5|) |$l#4#heap#0@@0|))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#4#heap#0@@1| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#14| |l#0@@6|) |$l#4#heap#0@@1|) |l#0@@6|)
 :qid |Lambdadfy.8:26|
 :skolemid |582|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#14| |l#0@@6|) |$l#4#heap#0@@1|))
)))
(assert (forall ((f@@12 T@U) (t0@@21 T@U) (t1@@16 T@U) (t2@@4 T@U) ) (! (= ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@21 t1@@16 t2@@4)) (forall ((h@@12 T@U) (bx0@@12 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@12) (and ($IsBox bx0@@12 t0@@21) ($IsBox bx1@@2 t1@@16))) (Requires2 t0@@21 t1@@16 t2@@4 h@@12 f@@12 bx0@@12 bx1@@2)) ($IsBox (Apply2 t0@@21 t1@@16 t2@@4 h@@12 f@@12 bx0@@12 bx1@@2) t2@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@21 t1@@16 t2@@4 h@@12 f@@12 bx0@@12 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@21 t1@@16 t2@@4)))
)))
(assert (forall ((t0@@22 T@U) (heap@@7 T@U) (f@@13 T@U) ) (!  (=> (and ($IsGoodHeap heap@@7) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@22))) (= (|Set#Equal| (Reads0 t0@@22 $OneHeap f@@13) |Set#Empty|) (|Set#Equal| (Reads0 t0@@22 heap@@7 f@@13) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@22 $OneHeap f@@13) ($IsGoodHeap heap@@7))
 :pattern ( (Reads0 t0@@22 heap@@7 f@@13))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#x#0@@0|) |$l#0#x#0@@0|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |575|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#x#0@@0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@23 T@U) (t1@@17 T@U) (t2@@5 T@U) (heap@@8 T@U) (f@@14 T@U) (bx0@@13 T@U) (bx1@@3 T@U) ) (!  (=> (and ($IsGoodHeap heap@@8) (and (and ($IsBox bx0@@13 t0@@23) ($IsBox bx1@@3 t1@@17)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc2 t0@@23 t1@@17 t2@@5)))) (= (|Set#Equal| (Reads2 t0@@23 t1@@17 t2@@5 $OneHeap f@@14 bx0@@13 bx1@@3) |Set#Empty|) (|Set#Equal| (Reads2 t0@@23 t1@@17 t2@@5 heap@@8 f@@14 bx0@@13 bx1@@3) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@23 t1@@17 t2@@5 $OneHeap f@@14 bx0@@13 bx1@@3) ($IsGoodHeap heap@@8))
 :pattern ( (Reads2 t0@@23 t1@@17 t2@@5 heap@@8 f@@14 bx0@@13 bx1@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@15 T@U) (t0@@24 T@U) (t1@@18 T@U) ) (! (= ($Is HandleTypeType f@@15 (Tclass._System.___hFunc1 t0@@24 t1@@18)) (forall ((h@@13 T@U) (bx0@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@13) ($IsBox bx0@@14 t0@@24)) (Requires1 t0@@24 t1@@18 h@@13 f@@15 bx0@@14)) ($IsBox (Apply1 t0@@24 t1@@18 h@@13 f@@15 bx0@@14) t1@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@24 t1@@18 h@@13 f@@15 bx0@@14))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@15 (Tclass._System.___hFunc1 t0@@24 t1@@18)))
)))
(assert (forall ((f@@16 T@U) (t0@@25 T@U) (t1@@19 T@U) (t2@@6 T@U) (h@@14 T@U) ) (!  (=> (and ($IsGoodHeap h@@14) ($IsAlloc HandleTypeType f@@16 (Tclass._System.___hFunc2 t0@@25 t1@@19 t2@@6) h@@14)) (forall ((bx0@@15 T@U) (bx1@@4 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@15 t0@@25 h@@14) ($IsAllocBox bx1@@4 t1@@19 h@@14)) (Requires2 t0@@25 t1@@19 t2@@6 h@@14 f@@16 bx0@@15 bx1@@4)) ($IsAllocBox (Apply2 t0@@25 t1@@19 t2@@6 h@@14 f@@16 bx0@@15 bx1@@4) t2@@6 h@@14))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@25 t1@@19 t2@@6 h@@14 f@@16 bx0@@15 bx1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@16 (Tclass._System.___hFunc2 t0@@25 t1@@19 t2@@6) h@@14))
)))
(assert (forall ((t0@@26 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@17 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) ($Is HandleTypeType f@@17 (Tclass._System.___hFunc0 t0@@26))) (forall ((o@@7 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@26 h0@@5 f@@17) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@5 o@@7) fld@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@5 o@@7) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |421|
))) (= (Requires0 t0@@26 h0@@5 f@@17) (Requires0 t0@@26 h1@@5 f@@17)))
 :qid |unknown.0:0|
 :skolemid |422|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires0 t0@@26 h1@@5 f@@17))
)))
(assert (forall ((t0@@27 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@18 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc0 t0@@27))) (forall ((o@@8 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads0 t0@@27 h1@@6 f@@18) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@6 o@@8) fld@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@6 o@@8) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |423|
))) (= (Requires0 t0@@27 h0@@6 f@@18) (Requires0 t0@@27 h1@@6 f@@18)))
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires0 t0@@27 h1@@6 f@@18))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@13 TInt))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 TBool) (and (= ($Box boolType ($Unbox boolType bx@@14)) bx@@14) ($Is boolType ($Unbox boolType bx@@14) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@14 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@28 T@U) (t1@@20 T@U) (heap@@9 T@U) (h@@15 T@U) (r@@7 T@U) (rd@@5 T@U) (bx0@@16 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType r@@7 heap@@9 bx0@@16)) (Requires1 t0@@28 t1@@20 heap@@9 (Handle1 h@@15 r@@7 rd@@5) bx0@@16))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@28 t1@@20 heap@@9 (Handle1 h@@15 r@@7 rd@@5) bx0@@16))
)))
(assert (forall ((v@@3 T@U) (t0@@29 T@U) (h@@16 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@29) h@@16) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@15) ($IsAllocBox bx@@15 t0@@29 h@@16))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@15))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@29) h@@16))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@23| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@23|)) |#$T0@@18|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@23|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@24| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@24|)) |#$R@@24|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@24|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@25| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@25|)) |#$T0@@20|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@25|))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@26| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@26|)) |#$R@@26|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@26|))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@27| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@27|)) |#$T0@@22|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@27|))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$R@@28| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@28|)) |#$R@@28|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@28|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((|#$R@@29| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@29|)) |#$R@@29|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@29|))
)))
(assert (forall ((|#$R@@30| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@30|)) |#$R@@30|)
 :qid |unknown.0:0|
 :skolemid |439|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@30|))
)))
(assert (forall ((|#$R@@31| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@31|)) |#$R@@31|)
 :qid |unknown.0:0|
 :skolemid |444|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@31|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@30 T@U) (t1@@21 T@U) (t2@@7 T@U) (heap@@10 T@U) (f@@19 T@U) (bx0@@17 T@U) (bx1@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@10) (and (and ($IsBox bx0@@17 t0@@30) ($IsBox bx1@@5 t1@@21)) ($Is HandleTypeType f@@19 (Tclass._System.___hFunc2 t0@@30 t1@@21 t2@@7)))) (|Set#Equal| (Reads2 t0@@30 t1@@21 t2@@7 $OneHeap f@@19 bx0@@17 bx1@@5) |Set#Empty|)) (= (Requires2 t0@@30 t1@@21 t2@@7 $OneHeap f@@19 bx0@@17 bx1@@5) (Requires2 t0@@30 t1@@21 t2@@7 heap@@10 f@@19 bx0@@17 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@30 t1@@21 t2@@7 $OneHeap f@@19 bx0@@17 bx1@@5) ($IsGoodHeap heap@@10))
 :pattern ( (Requires2 t0@@30 t1@@21 t2@@7 heap@@10 f@@19 bx0@@17 bx1@@5))
)))
(assert (forall ((|l#0@@7| T@U) (|$l#6#heap#0@@0| T@U) (|$l#6#x#0@@0| T@U) (|$l#6#y#0@@0| T@U) ) (! (= (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#19| |l#0@@7|) |$l#6#heap#0@@0| |$l#6#x#0@@0| |$l#6#y#0@@0|) |l#0@@7|)
 :qid |Lambdadfy.10:34|
 :skolemid |585|
 :pattern ( (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#19| |l#0@@7|) |$l#6#heap#0@@0| |$l#6#x#0@@0| |$l#6#y#0@@0|))
)))
(assert (forall ((t0@@31 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@20 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc0 t0@@31))) (forall ((o@@9 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads0 t0@@31 h0@@7 f@@20) ($Box refType o@@9))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@7 o@@9) fld@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@7 o@@9) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |417|
))) (= (Reads0 t0@@31 h0@@7 f@@20) (Reads0 t0@@31 h1@@7 f@@20)))
 :qid |unknown.0:0|
 :skolemid |418|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads0 t0@@31 h1@@7 f@@20))
)))
(assert (forall ((t0@@32 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@21 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc0 t0@@32))) (forall ((o@@10 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads0 t0@@32 h1@@8 f@@21) ($Box refType o@@10))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@8 o@@10) fld@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@8 o@@10) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |419|
))) (= (Reads0 t0@@32 h0@@8 f@@21) (Reads0 t0@@32 h1@@8 f@@21)))
 :qid |unknown.0:0|
 :skolemid |420|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads0 t0@@32 h1@@8 f@@21))
)))
(assert (forall ((t0@@33 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@22 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc0 t0@@33))) (forall ((o@@11 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads0 t0@@33 h0@@9 f@@22) ($Box refType o@@11))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@9 o@@11) fld@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@9 o@@11) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |425|
))) (= (Apply0 t0@@33 h0@@9 f@@22) (Apply0 t0@@33 h1@@9 f@@22)))
 :qid |unknown.0:0|
 :skolemid |426|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply0 t0@@33 h1@@9 f@@22))
)))
(assert (forall ((t0@@34 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@23 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc0 t0@@34))) (forall ((o@@12 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads0 t0@@34 h1@@10 f@@23) ($Box refType o@@12))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@10 o@@12) fld@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@10 o@@12) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |427|
))) (= (Apply0 t0@@34 h0@@10 f@@23) (Apply0 t0@@34 h1@@10 f@@23)))
 :qid |unknown.0:0|
 :skolemid |428|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply0 t0@@34 h1@@10 f@@23))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$R@@32| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@32|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@24| |#$R@@32|)) (forall ((|x0#0@@1| T@U) ) (!  (=> ($IsBox |x0#0@@1| |#$T0@@24|) (Requires1 |#$T0@@24| |#$R@@32| $OneHeap |f#0@@5| |x0#0@@1|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@32|)))
)))
(assert (forall ((f@@24 T@U) (t0@@35 T@U) (t1@@22 T@U) (t2@@8 T@U) (u0@@6 T@U) (u1@@6 T@U) (u2@@4 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 t0@@35 t1@@22 t2@@8)) (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 u0@@6) ($IsBox bx@@16 t0@@35))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@16 u0@@6))
 :pattern ( ($IsBox bx@@16 t0@@35))
))) (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 u1@@6) ($IsBox bx@@17 t1@@22))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@17 u1@@6))
 :pattern ( ($IsBox bx@@17 t1@@22))
))) (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 t2@@8) ($IsBox bx@@18 u2@@4))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@18 t2@@8))
 :pattern ( ($IsBox bx@@18 u2@@4))
))) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 u0@@6 u1@@6 u2@@4)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 t0@@35 t1@@22 t2@@8)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 u0@@6 u1@@6 u2@@4)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$R@@33| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@33|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 |#$T0@@25| |#$R@@33|)) (forall ((|x0#0@@2| T@U) ) (!  (=> ($IsBox |x0#0@@2| |#$T0@@25|) (|Set#Equal| (Reads1 |#$T0@@25| |#$R@@33| $OneHeap |f#0@@6| |x0#0@@2|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@33|)))
)))
(assert (forall ((f@@25 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@25 ($LS ly@@0)) (AtLayer A@@0 f@@25 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@25 ($LS ly@@0)))
)))
(assert (forall ((f@@26 T@U) (t0@@36 T@U) (t1@@23 T@U) (h@@17 T@U) ) (!  (=> ($IsGoodHeap h@@17) (= ($IsAlloc HandleTypeType f@@26 (Tclass._System.___hFunc1 t0@@36 t1@@23) h@@17) (forall ((bx0@@18 T@U) ) (!  (=> (and (and ($IsBox bx0@@18 t0@@36) ($IsAllocBox bx0@@18 t0@@36 h@@17)) (Requires1 t0@@36 t1@@23 h@@17 f@@26 bx0@@18)) (forall ((r@@8 T@U) ) (!  (=> (and (or (not (= r@@8 null)) (not true)) (|Set#IsMember| (Reads1 t0@@36 t1@@23 h@@17 f@@26 bx0@@18) ($Box refType r@@8))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@17 r@@8) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@36 t1@@23 h@@17 f@@26 bx0@@18) ($Box refType r@@8)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@36 t1@@23 h@@17 f@@26 bx0@@18))
 :pattern ( (Reads1 t0@@36 t1@@23 h@@17 f@@26 bx0@@18))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@26 (Tclass._System.___hFunc1 t0@@36 t1@@23) h@@17))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$R@@34| T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@34|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@19)) bx@@19) ($Is HandleTypeType ($Unbox HandleTypeType bx@@19) (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@34|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@19 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@34|)))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$R@@35| T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@35|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@20)) bx@@20) ($Is HandleTypeType ($Unbox HandleTypeType bx@@20) (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@35|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@20 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@35|)))
)))
(assert (forall ((|#$T0@@28| T@U) (|#$R@@36| T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@36|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@21)) bx@@21) ($Is HandleTypeType ($Unbox HandleTypeType bx@@21) (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@36|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@21 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@36|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|l#0@@8| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@8| |l#1@@1| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@8|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |574|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@8| |l#1@@1| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert (forall ((|l#0@@9| T@U) (|l#1@@2| Int) (|l#2@@1| Int) (|$l#12#heap#0| T@U) (|$l#12#x#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#32| |l#0@@9| |l#1@@2| |l#2@@1|) |$l#12#heap#0| |$l#12#x#0|))  (and ($IsBox |$l#12#x#0| |l#0@@9|) (and (or (not (= |l#1@@2| (U_2_int ($Unbox intType |$l#12#x#0|)))) (not true)) (or (not (= (U_2_int ($Unbox intType |$l#12#x#0|)) |l#2@@1|)) (not true)))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |588|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#32| |l#0@@9| |l#1@@2| |l#2@@1|) |$l#12#heap#0| |$l#12#x#0|))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@16| T@U) (|#$R@@37| T@U) (|f#0@@7| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@37|) $h@@6) ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hFunc2 |#$T0@@29| |#$T1@@16| |#$R@@37|) $h@@6))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@37|) $h@@6))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@17| T@U) (|#$R@@38| T@U) (|f#0@@8| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@38|) $h@@7) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@30| |#$T1@@17| |#$R@@38|) $h@@7))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@38|) $h@@7))
)))
(assert (forall ((|#$R@@39| T@U) (|f#0@@9| T@U) ) (! (= ($Is HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc0 |#$R@@39|))  (and ($Is HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc0 |#$R@@39|)) (Requires0 |#$R@@39| $OneHeap |f#0@@9|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc0 |#$R@@39|)))
)))
(assert (forall ((|#$T0@@31| T@U) (|#$R@@40| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@40|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@40|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@40|))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$R@@41| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@41|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@41|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@41|))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$R@@42| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@42|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@42|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@42|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|$l#8#heap#0| T@U) (|$l#8#x#0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType |lambda#21| |$l#8#heap#0| |$l#8#x#0|) ($Box intType ($Unbox intType |$l#8#x#0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |586|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType |lambda#21| |$l#8#heap#0| |$l#8#x#0|))
)))
(assert (forall ((t0@@37 T@U) (t1@@24 T@U) (heap@@11 T@U) (f@@27 T@U) (bx0@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@11) (and ($IsBox bx0@@19 t0@@37) ($Is HandleTypeType f@@27 (Tclass._System.___hFunc1 t0@@37 t1@@24)))) (|Set#Equal| (Reads1 t0@@37 t1@@24 $OneHeap f@@27 bx0@@19) |Set#Empty|)) (= (Requires1 t0@@37 t1@@24 $OneHeap f@@27 bx0@@19) (Requires1 t0@@37 t1@@24 heap@@11 f@@27 bx0@@19)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@37 t1@@24 $OneHeap f@@27 bx0@@19) ($IsGoodHeap heap@@11))
 :pattern ( (Requires1 t0@@37 t1@@24 heap@@11 f@@27 bx0@@19))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((f@@28 T@U) (t0@@38 T@U) ) (! (= ($Is HandleTypeType f@@28 (Tclass._System.___hFunc0 t0@@38)) (forall ((h@@18 T@U) ) (!  (=> (and ($IsGoodHeap h@@18) (Requires0 t0@@38 h@@18 f@@28)) ($IsBox (Apply0 t0@@38 h@@18 f@@28) t0@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@38 h@@18 f@@28))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@28 (Tclass._System.___hFunc0 t0@@38)))
)))
(assert (forall ((t0@@39 T@U) (t1@@25 T@U) (t2@@9 T@U) (h0@@11 T@U) (h1@@11 T@U) (f@@29 T@U) (bx0@@20 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@11 h1@@11) (and ($IsGoodHeap h0@@11) ($IsGoodHeap h1@@11))) (and (and ($IsBox bx0@@20 t0@@39) ($IsBox bx1@@6 t1@@25)) ($Is HandleTypeType f@@29 (Tclass._System.___hFunc2 t0@@39 t1@@25 t2@@9)))) (forall ((o@@13 T@U) (fld@@11 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads2 t0@@39 t1@@25 t2@@9 h0@@11 f@@29 bx0@@20 bx1@@6) ($Box refType o@@13))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@11 o@@13) fld@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@11 o@@13) fld@@11)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@39 t1@@25 t2@@9 h0@@11 f@@29 bx0@@20 bx1@@6) (Requires2 t0@@39 t1@@25 t2@@9 h1@@11 f@@29 bx0@@20 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0@@11 h1@@11) (Requires2 t0@@39 t1@@25 t2@@9 h1@@11 f@@29 bx0@@20 bx1@@6))
)))
(assert (forall ((t0@@40 T@U) (t1@@26 T@U) (t2@@10 T@U) (h0@@12 T@U) (h1@@12 T@U) (f@@30 T@U) (bx0@@21 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@12 h1@@12) (and ($IsGoodHeap h0@@12) ($IsGoodHeap h1@@12))) (and (and ($IsBox bx0@@21 t0@@40) ($IsBox bx1@@7 t1@@26)) ($Is HandleTypeType f@@30 (Tclass._System.___hFunc2 t0@@40 t1@@26 t2@@10)))) (forall ((o@@14 T@U) (fld@@12 T@U) ) (!  (=> (and (or (not (= o@@14 null)) (not true)) (|Set#IsMember| (Reads2 t0@@40 t1@@26 t2@@10 h1@@12 f@@30 bx0@@21 bx1@@7) ($Box refType o@@14))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@12 o@@14) fld@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@12 o@@14) fld@@12)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@40 t1@@26 t2@@10 h0@@12 f@@30 bx0@@21 bx1@@7) (Requires2 t0@@40 t1@@26 t2@@10 h1@@12 f@@30 bx0@@21 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@12 h1@@12) (Requires2 t0@@40 t1@@26 t2@@10 h1@@12 f@@30 bx0@@21 bx1@@7))
)))
(assert (forall ((bx@@23 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@23 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@23)) bx@@23) ($Is SetType ($Unbox SetType bx@@23) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@23 (TSet t@@5)))
)))
(assert (forall ((|#$R@@43| T@U) (bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 (Tclass._System.___hFunc0 |#$R@@43|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@24)) bx@@24) ($Is HandleTypeType ($Unbox HandleTypeType bx@@24) (Tclass._System.___hFunc0 |#$R@@43|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@24 (Tclass._System.___hFunc0 |#$R@@43|)))
)))
(assert (forall ((|#$R@@44| T@U) (bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (Tclass._System.___hPartialFunc0 |#$R@@44|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@25)) bx@@25) ($Is HandleTypeType ($Unbox HandleTypeType bx@@25) (Tclass._System.___hPartialFunc0 |#$R@@44|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@25 (Tclass._System.___hPartialFunc0 |#$R@@44|)))
)))
(assert (forall ((|#$R@@45| T@U) (bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (Tclass._System.___hTotalFunc0 |#$R@@45|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@26)) bx@@26) ($Is HandleTypeType ($Unbox HandleTypeType bx@@26) (Tclass._System.___hTotalFunc0 |#$R@@45|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@26 (Tclass._System.___hTotalFunc0 |#$R@@45|)))
)))
(assert (forall ((d@@3 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@3 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@3 Tclass._System.Tuple0 $h@@8))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._System.Tuple0 $h@@8))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((f@@31 T@U) (t0@@41 T@U) (h@@19 T@U) ) (!  (=> (and ($IsGoodHeap h@@19) ($IsAlloc HandleTypeType f@@31 (Tclass._System.___hFunc0 t0@@41) h@@19)) (=> (Requires0 t0@@41 h@@19 f@@31) ($IsAllocBox (Apply0 t0@@41 h@@19 f@@31) t0@@41 h@@19)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@31 (Tclass._System.___hFunc0 t0@@41) h@@19))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@15 T@U) ) (! (= (|Set#IsMember| a@@1 o@@15) (|Set#IsMember| b@@1 o@@15))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@15))
 :pattern ( (|Set#IsMember| b@@1 o@@15))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@5) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert (forall ((f@@32 T@U) (t0@@42 T@U) (u0@@7 T@U) ) (!  (=> (and ($Is HandleTypeType f@@32 (Tclass._System.___hFunc0 t0@@42)) (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 t0@@42) ($IsBox bx@@27 u0@@7))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@27 t0@@42))
 :pattern ( ($IsBox bx@@27 u0@@7))
))) ($Is HandleTypeType f@@32 (Tclass._System.___hFunc0 u0@@7)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@32 (Tclass._System.___hFunc0 t0@@42)) ($Is HandleTypeType f@@32 (Tclass._System.___hFunc0 u0@@7)))
)))
(assert (forall ((t0@@43 T@U) (t1@@27 T@U) (t2@@11 T@U) (h0@@13 T@U) (h1@@13 T@U) (f@@33 T@U) (bx0@@22 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@13 h1@@13) (and ($IsGoodHeap h0@@13) ($IsGoodHeap h1@@13))) (and (and ($IsBox bx0@@22 t0@@43) ($IsBox bx1@@8 t1@@27)) ($Is HandleTypeType f@@33 (Tclass._System.___hFunc2 t0@@43 t1@@27 t2@@11)))) (forall ((o@@16 T@U) (fld@@13 T@U) ) (!  (=> (and (or (not (= o@@16 null)) (not true)) (|Set#IsMember| (Reads2 t0@@43 t1@@27 t2@@11 h0@@13 f@@33 bx0@@22 bx1@@8) ($Box refType o@@16))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@13 o@@16) fld@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@13 o@@16) fld@@13)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@43 t1@@27 t2@@11 h0@@13 f@@33 bx0@@22 bx1@@8) (Reads2 t0@@43 t1@@27 t2@@11 h1@@13 f@@33 bx0@@22 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@13 h1@@13) (Reads2 t0@@43 t1@@27 t2@@11 h1@@13 f@@33 bx0@@22 bx1@@8))
)))
(assert (forall ((t0@@44 T@U) (t1@@28 T@U) (t2@@12 T@U) (h0@@14 T@U) (h1@@14 T@U) (f@@34 T@U) (bx0@@23 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@14 h1@@14) (and ($IsGoodHeap h0@@14) ($IsGoodHeap h1@@14))) (and (and ($IsBox bx0@@23 t0@@44) ($IsBox bx1@@9 t1@@28)) ($Is HandleTypeType f@@34 (Tclass._System.___hFunc2 t0@@44 t1@@28 t2@@12)))) (forall ((o@@17 T@U) (fld@@14 T@U) ) (!  (=> (and (or (not (= o@@17 null)) (not true)) (|Set#IsMember| (Reads2 t0@@44 t1@@28 t2@@12 h1@@14 f@@34 bx0@@23 bx1@@9) ($Box refType o@@17))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@14 o@@17) fld@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@14 o@@17) fld@@14)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@44 t1@@28 t2@@12 h0@@14 f@@34 bx0@@23 bx1@@9) (Reads2 t0@@44 t1@@28 t2@@12 h1@@14 f@@34 bx0@@23 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@14 h1@@14) (Reads2 t0@@44 t1@@28 t2@@12 h1@@14 f@@34 bx0@@23 bx1@@9))
)))
(assert (forall ((t0@@45 T@U) (t1@@29 T@U) (t2@@13 T@U) (h0@@15 T@U) (h1@@15 T@U) (f@@35 T@U) (bx0@@24 T@U) (bx1@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@15 h1@@15) (and ($IsGoodHeap h0@@15) ($IsGoodHeap h1@@15))) (and (and ($IsBox bx0@@24 t0@@45) ($IsBox bx1@@10 t1@@29)) ($Is HandleTypeType f@@35 (Tclass._System.___hFunc2 t0@@45 t1@@29 t2@@13)))) (forall ((o@@18 T@U) (fld@@15 T@U) ) (!  (=> (and (or (not (= o@@18 null)) (not true)) (|Set#IsMember| (Reads2 t0@@45 t1@@29 t2@@13 h0@@15 f@@35 bx0@@24 bx1@@10) ($Box refType o@@18))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@15 o@@18) fld@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@15 o@@18) fld@@15)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@45 t1@@29 t2@@13 h0@@15 f@@35 bx0@@24 bx1@@10) (Apply2 t0@@45 t1@@29 t2@@13 h1@@15 f@@35 bx0@@24 bx1@@10)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@15 h1@@15) (Apply2 t0@@45 t1@@29 t2@@13 h1@@15 f@@35 bx0@@24 bx1@@10))
)))
(assert (forall ((t0@@46 T@U) (t1@@30 T@U) (t2@@14 T@U) (h0@@16 T@U) (h1@@16 T@U) (f@@36 T@U) (bx0@@25 T@U) (bx1@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@16 h1@@16) (and ($IsGoodHeap h0@@16) ($IsGoodHeap h1@@16))) (and (and ($IsBox bx0@@25 t0@@46) ($IsBox bx1@@11 t1@@30)) ($Is HandleTypeType f@@36 (Tclass._System.___hFunc2 t0@@46 t1@@30 t2@@14)))) (forall ((o@@19 T@U) (fld@@16 T@U) ) (!  (=> (and (or (not (= o@@19 null)) (not true)) (|Set#IsMember| (Reads2 t0@@46 t1@@30 t2@@14 h1@@16 f@@36 bx0@@25 bx1@@11) ($Box refType o@@19))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@16 o@@19) fld@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@16 o@@19) fld@@16)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@46 t1@@30 t2@@14 h0@@16 f@@36 bx0@@25 bx1@@11) (Apply2 t0@@46 t1@@30 t2@@14 h1@@16 f@@36 bx0@@25 bx1@@11)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@16 h1@@16) (Apply2 t0@@46 t1@@30 t2@@14 h1@@16 f@@36 bx0@@25 bx1@@11))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((t0@@47 T@U) (t1@@31 T@U) (t2@@15 T@U) (heap@@12 T@U) (h@@20 T@U) (r@@9 T@U) (rd@@6 T@U) (bx0@@26 T@U) (bx1@@12 T@U) ) (!  (=> (U_2_bool (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType r@@9 heap@@12 bx0@@26 bx1@@12)) (Requires2 t0@@47 t1@@31 t2@@15 heap@@12 (Handle2 h@@20 r@@9 rd@@6) bx0@@26 bx1@@12))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires2 t0@@47 t1@@31 t2@@15 heap@@12 (Handle2 h@@20 r@@9 rd@@6) bx0@@26 bx1@@12))
)))
(assert (forall ((t0@@48 T@U) (heap@@13 T@U) (h@@21 T@U) (r@@10 T@U) (rd@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@10 heap@@13)) (Requires0 t0@@48 heap@@13 (Handle0 h@@21 r@@10 rd@@7)))
 :qid |unknown.0:0|
 :skolemid |415|
 :pattern ( (Requires0 t0@@48 heap@@13 (Handle0 h@@21 r@@10 rd@@7)))
)))
(assert (forall ((|$l#6#heap#0@@1| T@U) (|$l#6#x#0@@1| T@U) (|$l#6#y#0@@1| T@U) ) (! (= (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType |lambda#16| |$l#6#heap#0@@1| |$l#6#x#0@@1| |$l#6#y#0@@1|) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| |$l#6#y#0@@1| |$l#6#x#0@@1|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |583|
 :pattern ( (MapType2Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType |lambda#16| |$l#6#heap#0@@1| |$l#6#x#0@@1| |$l#6#y#0@@1|))
)))
(assert (forall ((h@@22 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@22)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@22))
)))
(assert (forall ((h@@23 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@23)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@23))
)))
(assert (forall ((|#$R@@46| T@U) (|f#0@@10| T@U) ) (! (= ($Is HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc0 |#$R@@46|))  (and ($Is HandleTypeType |f#0@@10| (Tclass._System.___hFunc0 |#$R@@46|)) (|Set#Equal| (Reads0 |#$R@@46| $OneHeap |f#0@@10|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc0 |#$R@@46|)))
)))
(assert (forall ((|l#0@@10| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@10|) |$l#0#heap#0@@1| |$l#0#x#0@@1|) |l#0@@10|)
 :qid |Lambdadfy.6:24|
 :skolemid |578|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@10|) |$l#0#heap#0@@1| |$l#0#x#0@@1|))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@0| () T@U)
(declare-fun _module._default.M$A () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#1@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |lambdaResult#1| () T@U)
(declare-fun |$lambdaHeap#2@0| () T@U)
(declare-fun |x#2@0| () T@U)
(declare-fun |$lambdaHeap#3@0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |$_Frame#l3@0| () T@U)
(declare-fun |lambdaResult#3| () T@U)
(declare-fun |$lambdaHeap#4@0| () T@U)
(declare-fun |x#4@0| () Int)
(declare-fun |lambdaResult#5| () Int)
(declare-fun |$_Frame#l5@0| () T@U)
(declare-fun |$lambdaHeap#5@0| () T@U)
(declare-fun |x#5@0| () Int)
(declare-fun |lambdaResult#6| () Int)
(declare-fun |$_Frame#l6@0| () T@U)
(declare-fun |$lambdaHeap#6@0| () T@U)
(declare-fun |u#0@0| () Int)
(declare-fun |lambdaResult#7| () Bool)
(declare-fun |$_Frame#l7@0| () T@U)
(declare-fun |$lambdaHeap#7@0| () T@U)
(declare-fun |u#0@1| () Int)
(declare-fun |lambdaResult#8| () Bool)
(declare-fun |$_Frame#l8@0| () T@U)
(declare-fun |$lambdaHeap#8@0| () T@U)
(declare-fun |f9#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |f8#0@0| () T@U)
(declare-fun |f7#0@0| () T@U)
(declare-fun |f6#0@0| () T@U)
(declare-fun |f5#0@0| () T@U)
(declare-fun |f4#0@0| () T@U)
(declare-fun |f3#0@0| () T@U)
(declare-fun |tt#0@0| () T@U)
(declare-fun |f2#0@0| () T@U)
(declare-fun |f1#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#f1#0| () Bool)
(declare-fun |f1#0| () T@U)
(declare-fun |defass#f2#0| () Bool)
(declare-fun |f2#0| () T@U)
(declare-fun |f3#0| () T@U)
(declare-fun |tt#0| () T@U)
(declare-fun |defass#f4#0| () Bool)
(declare-fun |f4#0| () T@U)
(declare-fun |f5#0| () T@U)
(declare-fun |f6#0| () T@U)
(declare-fun |f7#0| () T@U)
(declare-fun |f8#0| () T@U)
(declare-fun |f9#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 65) (let ((anon3_correct true))
(let ((anon46_Else_correct  (=> (and (not (and ($IsBox |x#0@0| _module._default.M$A) ($IsAllocBox |x#0@0| _module._default.M$A |$lambdaHeap#0@0|))) (= (ControlFlow 0 62) 60)) anon3_correct)))
(let ((anon46_Then_correct  (=> (and ($IsBox |x#0@0| _module._default.M$A) ($IsAllocBox |x#0@0| _module._default.M$A |$lambdaHeap#0@0|)) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| |x#0@0|)) (and ($IsBox |lambdaResult#0| _module._default.M$A) (= (ControlFlow 0 61) 60))) anon3_correct))))
(let ((anon45_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 63) 61) anon46_Then_correct) (=> (= (ControlFlow 0 63) 62) anon46_Else_correct)))))
(let ((anon7_correct true))
(let ((anon48_Else_correct  (=> (and (not (and ($IsBox |x#1@0| _module._default.M$A) ($IsAllocBox |x#1@0| _module._default.M$A |$lambdaHeap#1@0|))) (= (ControlFlow 0 57) 55)) anon7_correct)))
(let ((anon48_Then_correct  (=> (and ($IsBox |x#1@0| _module._default.M$A) ($IsAllocBox |x#1@0| _module._default.M$A |$lambdaHeap#1@0|)) (=> (and (and (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false)) (= |lambdaResult#1| |x#1@0|)) (and ($IsBox |lambdaResult#1| _module._default.M$A) (= (ControlFlow 0 56) 55))) anon7_correct))))
(let ((anon47_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap |$lambdaHeap#1@0|) ($HeapSucc $Heap |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 58) 56) anon48_Then_correct) (=> (= (ControlFlow 0 58) 57) anon48_Else_correct)))))
(let ((anon50_Else_correct true))
(let ((anon50_Then_correct true))
(let ((anon49_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#2@0|) (or (= $Heap |$lambdaHeap#2@0|) ($HeapSucc $Heap |$lambdaHeap#2@0|))) (and (=> (= (ControlFlow 0 53) 51) anon50_Then_correct) (=> (= (ControlFlow 0 53) 52) anon50_Else_correct)))))
(let ((anon15_correct true))
(let ((anon52_Else_correct  (=> (and (not (and (and ($IsBox |x#2@0| _module._default.M$A) ($IsAllocBox |x#2@0| _module._default.M$A |$lambdaHeap#3@0|)) (and ($IsBox |y#0@0| _module._default.M$A) ($IsAllocBox |y#0@0| _module._default.M$A |$lambdaHeap#3@0|)))) (= (ControlFlow 0 48) 46)) anon15_correct)))
(let ((anon52_Then_correct  (=> (and (and (and ($IsBox |x#2@0| _module._default.M$A) ($IsAllocBox |x#2@0| _module._default.M$A |$lambdaHeap#3@0|)) (and ($IsBox |y#0@0| _module._default.M$A) ($IsAllocBox |y#0@0| _module._default.M$A |$lambdaHeap#3@0|))) (and (and (= |$_Frame#l3@0| (|lambda#0| null |$lambdaHeap#3@0| alloc false)) (= |lambdaResult#3| (|#_System._tuple#2._#Make2| |y#0@0| |x#2@0|))) (and ($Is DatatypeTypeType |lambdaResult#3| (Tclass._System.Tuple2 _module._default.M$A _module._default.M$A)) (= (ControlFlow 0 47) 46)))) anon15_correct)))
(let ((anon51_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#3@0|) (or (= $Heap |$lambdaHeap#3@0|) ($HeapSucc $Heap |$lambdaHeap#3@0|))) (and (=> (= (ControlFlow 0 49) 47) anon52_Then_correct) (=> (= (ControlFlow 0 49) 48) anon52_Else_correct)))))
(let ((anon54_Else_correct true))
(let ((anon54_Then_correct true))
(let ((anon53_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#4@0|) (or (= $Heap |$lambdaHeap#4@0|) ($HeapSucc $Heap |$lambdaHeap#4@0|))) (and (=> (= (ControlFlow 0 44) 42) anon54_Then_correct) (=> (= (ControlFlow 0 44) 43) anon54_Else_correct)))))
(let ((anon26_correct true))
(let ((anon58_Else_correct  (=> (and (not (and (or (not (= |x#4@0| 0)) (not true)) (or (not (= |x#4@0| 1)) (not true)))) (= (ControlFlow 0 36) 34)) anon26_correct)))
(let ((anon58_Then_correct  (=> (and (and (and (or (not (= |x#4@0| 0)) (not true)) (or (not (= |x#4@0| 1)) (not true))) (= |lambdaResult#5| |x#4@0|)) (and ($Is intType (int_2_U |lambdaResult#5|) TInt) (= (ControlFlow 0 35) 34))) anon26_correct)))
(let ((anon57_Else_correct  (=> (= |x#4@0| 0) (and (=> (= (ControlFlow 0 38) 35) anon58_Then_correct) (=> (= (ControlFlow 0 38) 36) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (or (not (= |x#4@0| 0)) (not true)) (and (=> (= (ControlFlow 0 37) 35) anon58_Then_correct) (=> (= (ControlFlow 0 37) 36) anon58_Else_correct)))))
(let ((anon56_Then_correct  (=> (= |$_Frame#l5@0| (|lambda#0| null |$lambdaHeap#5@0| alloc false)) (and (=> (= (ControlFlow 0 39) 37) anon57_Then_correct) (=> (= (ControlFlow 0 39) 38) anon57_Else_correct)))))
(let ((anon56_Else_correct true))
(let ((anon55_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#5@0|) (or (= $Heap |$lambdaHeap#5@0|) ($HeapSucc $Heap |$lambdaHeap#5@0|))) (and (=> (= (ControlFlow 0 40) 39) anon56_Then_correct) (=> (= (ControlFlow 0 40) 33) anon56_Else_correct)))))
(let ((anon33_correct true))
(let ((anon62_Else_correct  (=> (and (not (and (or (not (= 0 |x#5@0|)) (not true)) (or (not (= |x#5@0| 1)) (not true)))) (= (ControlFlow 0 27) 25)) anon33_correct)))
(let ((anon62_Then_correct  (=> (and (and (and (or (not (= 0 |x#5@0|)) (not true)) (or (not (= |x#5@0| 1)) (not true))) (= |lambdaResult#6| |x#5@0|)) (and ($Is intType (int_2_U |lambdaResult#6|) TInt) (= (ControlFlow 0 26) 25))) anon33_correct)))
(let ((anon61_Else_correct  (=> (= 0 |x#5@0|) (and (=> (= (ControlFlow 0 29) 26) anon62_Then_correct) (=> (= (ControlFlow 0 29) 27) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (or (not (= 0 |x#5@0|)) (not true)) (and (=> (= (ControlFlow 0 28) 26) anon62_Then_correct) (=> (= (ControlFlow 0 28) 27) anon62_Else_correct)))))
(let ((anon60_Then_correct  (=> (= |$_Frame#l6@0| (|lambda#0| null |$lambdaHeap#6@0| alloc false)) (and (=> (= (ControlFlow 0 30) 28) anon61_Then_correct) (=> (= (ControlFlow 0 30) 29) anon61_Else_correct)))))
(let ((anon60_Else_correct true))
(let ((anon59_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#6@0|) (or (= $Heap |$lambdaHeap#6@0|) ($HeapSucc $Heap |$lambdaHeap#6@0|))) (and (=> (= (ControlFlow 0 31) 30) anon60_Then_correct) (=> (= (ControlFlow 0 31) 24) anon60_Else_correct)))))
(let ((anon38_correct true))
(let ((anon65_Else_correct  (=> (and (or (not (= |u#0@0| (LitInt 0))) (not true)) (= (ControlFlow 0 17) 15)) anon38_correct)))
(let ((anon65_Then_correct  (=> (and (and (= |u#0@0| (LitInt 0)) (= |lambdaResult#7| (U_2_bool (Lit boolType (bool_2_U true))))) (and ($Is boolType (bool_2_U |lambdaResult#7|) TBool) (= (ControlFlow 0 16) 15))) anon38_correct)))
(let ((anon64_Then_correct  (=> (= |$_Frame#l7@0| (|lambda#0| null |$lambdaHeap#7@0| alloc false)) (and (=> (= (ControlFlow 0 18) 16) anon65_Then_correct) (=> (= (ControlFlow 0 18) 17) anon65_Else_correct)))))
(let ((anon64_Else_correct true))
(let ((anon63_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#7@0|) (or (= $Heap |$lambdaHeap#7@0|) ($HeapSucc $Heap |$lambdaHeap#7@0|))) (and (=> (= (ControlFlow 0 19) 18) anon64_Then_correct) (=> (= (ControlFlow 0 19) 14) anon64_Else_correct)))))
(let ((anon43_correct true))
(let ((anon68_Else_correct  (=> (and (or (not (= |u#0@1| (LitInt 0))) (not true)) (= (ControlFlow 0 6) 4)) anon43_correct)))
(let ((anon68_Then_correct  (=> (and (and (= |u#0@1| (LitInt 0)) (= |lambdaResult#8| (U_2_bool (Lit boolType (bool_2_U true))))) (and ($Is boolType (bool_2_U |lambdaResult#8|) TBool) (= (ControlFlow 0 5) 4))) anon43_correct)))
(let ((anon67_Then_correct  (=> (= |$_Frame#l8@0| (|lambda#0| null |$lambdaHeap#8@0| alloc false)) (and (=> (= (ControlFlow 0 7) 5) anon68_Then_correct) (=> (= (ControlFlow 0 7) 6) anon68_Else_correct)))))
(let ((anon67_Else_correct true))
(let ((anon66_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#8@0|) (or (= $Heap |$lambdaHeap#8@0|) ($HeapSucc $Heap |$lambdaHeap#8@0|))) (and (=> (= (ControlFlow 0 8) 7) anon67_Then_correct) (=> (= (ControlFlow 0 8) 3) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (= |f9#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#11| ($Box boolType (Lit boolType (bool_2_U true)))) (|lambda#12| (= |u#0@1| (LitInt 0))) (|lambda#14| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (=> (and ($IsAllocBox ($Box HandleTypeType |f9#0@0|) (Tclass._System.___hFunc0 TBool) $Heap) (= (ControlFlow 0 2) (- 0 1))) (not (Requires0 TBool $Heap |f9#0@0|))))))
(let ((anon63_Else_correct  (=> (= |f8#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#11| ($Box boolType (Lit boolType (bool_2_U true)))) (|lambda#12| (= |u#0@0| (LitInt 0))) (|lambda#14| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (Requires0 TBool $Heap |f8#0@0|)) (=> (Requires0 TBool $Heap |f8#0@0|) (and (=> (= (ControlFlow 0 9) (- 0 12)) (U_2_bool ($Unbox boolType (Apply0 TBool $Heap |f8#0@0|)))) (=> (U_2_bool ($Unbox boolType (Apply0 TBool $Heap |f8#0@0|))) (=> (= |u#0@1| (LitInt 1)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (Requires0 TBool $Heap |f8#0@0|)) (=> (Requires0 TBool $Heap |f8#0@0|) (and (=> (= (ControlFlow 0 9) (- 0 10)) (U_2_bool ($Unbox boolType (Apply0 TBool $Heap |f8#0@0|)))) (=> (U_2_bool ($Unbox boolType (Apply0 TBool $Heap |f8#0@0|))) (and (=> (= (ControlFlow 0 9) 8) anon66_Then_correct) (=> (= (ControlFlow 0 9) 2) anon66_Else_correct))))))))))))))
(let ((anon59_Else_correct  (=> (= |f7#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#21| (|lambda#32| TInt 0 1) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 20) (- 0 23)) (Requires1 TInt TInt $Heap |f6#0@0| ($Box intType (int_2_U (LitInt 2))))) (=> (Requires1 TInt TInt $Heap |f6#0@0| ($Box intType (int_2_U (LitInt 2)))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (Requires1 TInt TInt $Heap |f7#0@0| ($Box intType (int_2_U (LitInt 2))))) (=> (Requires1 TInt TInt $Heap |f7#0@0| ($Box intType (int_2_U (LitInt 2)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f6#0@0| ($Box intType (int_2_U (LitInt 2)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f7#0@0| ($Box intType (int_2_U (LitInt 2)))))))) (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f6#0@0| ($Box intType (int_2_U (LitInt 2)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f7#0@0| ($Box intType (int_2_U (LitInt 2))))))) (=> (= |u#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 20) 19) anon63_Then_correct) (=> (= (ControlFlow 0 20) 9) anon63_Else_correct))))))))))))
(let ((anon55_Else_correct  (=> (= |f6#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#21| (|lambda#27| TInt 0 1) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 32) 31) anon59_Then_correct) (=> (= (ControlFlow 0 32) 20) anon59_Else_correct)))))
(let ((anon53_Else_correct  (=> (= |f5#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#21| (|lambda#2| TInt) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 41) 40) anon55_Then_correct) (=> (= (ControlFlow 0 41) 32) anon55_Else_correct)))))
(let ((anon51_Else_correct  (=> (= |f4#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle2 |lambda#16| (|lambda#17| _module._default.M$A _module._default.M$A) (|lambda#19| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 45) 44) anon53_Then_correct) (=> (= (ControlFlow 0 45) 41) anon53_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (= |f3#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#11| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))) (|lambda#12| true) (|lambda#14| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (= |tt#0@0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))) (and (=> (= (ControlFlow 0 50) 49) anon51_Then_correct) (=> (= (ControlFlow 0 50) 45) anon51_Else_correct)))))
(let ((anon47_Else_correct  (=> (= |f2#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| _module._default.M$A) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 54) 53) anon49_Then_correct) (=> (= (ControlFlow 0 54) 50) anon49_Else_correct)))))
(let ((anon45_Else_correct  (=> (= |f1#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| _module._default.M$A) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 59) 58) anon47_Then_correct) (=> (= (ControlFlow 0 59) 54) anon47_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 64) 63) anon45_Then_correct) (=> (= (ControlFlow 0 64) 59) anon45_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#f1#0| (and ($Is HandleTypeType |f1#0| (Tclass._System.___hTotalFunc1 _module._default.M$A _module._default.M$A)) ($IsAlloc HandleTypeType |f1#0| (Tclass._System.___hTotalFunc1 _module._default.M$A _module._default.M$A) $Heap))) true) (and (=> |defass#f2#0| (and ($Is HandleTypeType |f2#0| (Tclass._System.___hTotalFunc1 _module._default.M$A _module._default.M$A)) ($IsAlloc HandleTypeType |f2#0| (Tclass._System.___hTotalFunc1 _module._default.M$A _module._default.M$A) $Heap))) true)) (and (and ($Is HandleTypeType |f3#0| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) ($IsAlloc HandleTypeType |f3#0| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0) $Heap)) true)) (=> (and (and (and (and (and ($Is DatatypeTypeType |tt#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |tt#0| Tclass._System.Tuple0 $Heap)) true) (and (=> |defass#f4#0| (and ($Is HandleTypeType |f4#0| (Tclass._System.___hTotalFunc2 _module._default.M$A _module._default.M$A (Tclass._System.Tuple2 _module._default.M$A _module._default.M$A))) ($IsAlloc HandleTypeType |f4#0| (Tclass._System.___hTotalFunc2 _module._default.M$A _module._default.M$A (Tclass._System.Tuple2 _module._default.M$A _module._default.M$A)) $Heap))) true)) (and (and (and ($Is HandleTypeType |f5#0| (Tclass._System.___hTotalFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f5#0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap)) true) (and (and ($Is HandleTypeType |f6#0| (Tclass._System.___hPartialFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f6#0| (Tclass._System.___hPartialFunc1 TInt TInt) $Heap)) true))) (and (and (and (and ($Is HandleTypeType |f7#0| (Tclass._System.___hPartialFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f7#0| (Tclass._System.___hPartialFunc1 TInt TInt) $Heap)) true) (and (and ($Is HandleTypeType |f8#0| (Tclass._System.___hPartialFunc0 TBool)) ($IsAlloc HandleTypeType |f8#0| (Tclass._System.___hPartialFunc0 TBool) $Heap)) true)) (and (and (and ($Is HandleTypeType |f9#0| (Tclass._System.___hPartialFunc0 TBool)) ($IsAlloc HandleTypeType |f9#0| (Tclass._System.___hPartialFunc0 TBool) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 65) 64))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
