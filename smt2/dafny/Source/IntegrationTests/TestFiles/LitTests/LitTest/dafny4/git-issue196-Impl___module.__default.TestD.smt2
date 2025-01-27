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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$array3 () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle3 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@T T@T T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun _System.array3.Length0 (T@U) Int)
(declare-fun Tclass._System.array3? (T@U) T@U)
(declare-fun _System.array3.Length1 (T@U) Int)
(declare-fun _System.array3.Length2 (T@U) Int)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#10| (Bool) T@U)
(declare-fun |lambda#12| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |lambda#14| (T@U T@U T@U) T@U)
(declare-fun |lambda#13| (T@U) T@U)
(declare-fun |lambda#16| (T@U) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |lambda#11| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._System.array2? Tagclass._System.array2 Tagclass._System.array3? Tagclass._System.array3 Tagclass._System.___hFunc3 tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| tytagFamily$array2 tytagFamily$array3 |tytagFamily$_#Func3|)
)
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (t3 T@T) (t4 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) (x2 T@U) (x3 T@U) ) (! (= (MapType0Select t0 t1 t2 t3 t4 (MapType0Store t0 t1 t2 t3 t4 m x0 x1 x2 x3 val) x0 x1 x2 x3) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (and (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (u3 T@T) (u4 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (x2@@0 T@U) (x3@@0 T@U) (y0 T@U) (y1 T@U) (y2 T@U) (y3 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 u3 u4 (MapType0Store u0 u1 u2 u3 u4 m@@0 x0@@0 x1@@0 x2@@0 x3@@0 val@@0) y0 y1 y2 y3) (MapType0Select u0 u1 u2 u3 u4 m@@0 y0 y1 y2 y3)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (u3@@0 T@T) (u4@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (x2@@1 T@U) (x3@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) (y2@@0 T@U) (y3@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 u4@@0 (MapType0Store u0@@0 u1@@0 u2@@0 u3@@0 u4@@0 m@@1 x0@@1 x1@@1 x2@@1 x3@@1 val@@1) y0@@0 y1@@0 y2@@0 y3@@0) (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 u4@@0 m@@1 y0@@0 y1@@0 y2@@0 y3@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@1 T@T) (u3@@1 T@T) (u4@@1 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (x2@@2 T@U) (x3@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) (y2@@1 T@U) (y3@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 u4@@1 (MapType0Store u0@@1 u1@@1 u2@@1 u3@@1 u4@@1 m@@2 x0@@2 x1@@2 x2@@2 x3@@2 val@@2) y0@@1 y1@@1 y2@@1 y3@@1) (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 u4@@1 m@@2 y0@@1 y1@@1 y2@@1 y3@@1)))
 :qid |mapAx1:MapType0Select:2|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@2 T@T) (u3@@2 T@T) (u4@@2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@3 T@U) (x2@@3 T@U) (x3@@3 T@U) (y0@@2 T@U) (y1@@2 T@U) (y2@@2 T@U) (y3@@2 T@U) ) (!  (or (= x3@@3 y3@@2) (= (MapType0Select u0@@2 u1@@2 u2@@2 u3@@2 u4@@2 (MapType0Store u0@@2 u1@@2 u2@@2 u3@@2 u4@@2 m@@3 x0@@3 x1@@3 x2@@3 x3@@3 val@@3) y0@@2 y1@@2 y2@@2 y3@@2) (MapType0Select u0@@2 u1@@2 u2@@2 u3@@2 u4@@2 m@@3 y0@@2 y1@@2 y2@@2 y3@@2)))
 :qid |mapAx1:MapType0Select:3|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@4 x0@@4 val@@4) x0@@4) val@@4)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@3 T@T) (u1@@3 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (y0@@3 T@U) ) (!  (or (= x0@@5 y0@@3) (= (MapType1Select u0@@3 u1@@3 (MapType1Store u0@@3 u1@@3 m@@5 x0@@5 val@@5) y0@@3) (MapType1Select u0@@3 u1@@3 m@@5 y0@@3)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (t3@@0 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx1 T@U) (bx2 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap (Handle3 h r rd) bx0 bx1 bx2) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType rd heap bx0 bx1 bx2) bx))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (|Set#IsMember| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap (Handle3 h r rd) bx0 bx1 bx2) bx))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2@@1 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) ) (! (= (MapType2Select t0@@2 t1@@2 t2@@1 (MapType2Store t0@@2 t1@@2 t2@@1 m@@6 x0@@6 x1@@4 val@@6) x0@@6 x1@@4) val@@6)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@4 u1@@4 u2@@3 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@6 T@U) (y0@@5 T@U) (y1@@4 T@U) ) (!  (or (= x1@@6 y1@@4) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@8 x0@@8 x1@@6 val@@8) y0@@5 y1@@4) (MapType2Select u0@@5 u1@@5 u2@@4 m@@8 y0@@5 y1@@4)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (h@@0 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@0 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@3 t1@@3 heap@@0 (Handle1 h@@0 r@@0 rd@@0) bx0@@0) bx@@0) (|Set#IsMember| (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd@@0 heap@@0 bx0@@0) bx@@0))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@3 t1@@3 heap@@0 (Handle1 h@@0 r@@0 rd@@0) bx0@@0) bx@@0))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((_System.array3$arg T@U) ($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array3? _System.array3$arg))) ($Is intType (int_2_U (_System.array3.Length0 $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_System.array3.Length0 $o@@2) (Tclass._System.array3? _System.array3$arg))
)))
(assert (forall ((_System.array3$arg@@0 T@U) ($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array3? _System.array3$arg@@0))) ($Is intType (int_2_U (_System.array3.Length1 $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_System.array3.Length1 $o@@3) (Tclass._System.array3? _System.array3$arg@@0))
)))
(assert (forall ((_System.array3$arg@@1 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array3? _System.array3$arg@@1))) ($Is intType (int_2_U (_System.array3.Length2 $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_System.array3.Length2 $o@@4) (Tclass._System.array3? _System.array3$arg@@1))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#_v0#0| T@U) ) (! (= (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#9| |l#0|) |$l#0#heap#0| |$l#0#_v0#0|)) ($IsBox |$l#0#_v0#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#9| |l#0|) |$l#0#heap#0| |$l#0#_v0#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
)))
(assert (forall ((_System.array3$arg@@2 T@U) (|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._System.array3 _System.array3$arg@@2) $h@@2) ($IsAlloc refType |c#0@@1| (Tclass._System.array3? _System.array3$arg@@2) $h@@2))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._System.array3 _System.array3$arg@@2) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._System.array3? _System.array3$arg@@2) $h@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@4 T@U) (t1@@4 T@U) (t2@@2 T@U) (t3@@1 T@U) (h@@1 T@U) ) (!  (=> ($IsGoodHeap h@@1) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@2 t3@@1) h@@1) (forall ((bx0@@1 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0@@1 t0@@4) ($IsAllocBox bx0@@1 t0@@4 h@@1)) (and ($IsBox bx1@@0 t1@@4) ($IsAllocBox bx1@@0 t1@@4 h@@1))) (and ($IsBox bx2@@0 t2@@2) ($IsAllocBox bx2@@0 t2@@2 h@@1))) (Requires3 t0@@4 t1@@4 t2@@2 t3@@1 h@@1 f bx0@@1 bx1@@0 bx2@@0)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads3 t0@@4 t1@@4 t2@@2 t3@@1 h@@1 f bx0@@1 bx1@@0 bx2@@0) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@1 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (|Set#IsMember| (Reads3 t0@@4 t1@@4 t2@@2 t3@@1 h@@1 f bx0@@1 bx1@@0 bx2@@0) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (Apply3 t0@@4 t1@@4 t2@@2 t3@@1 h@@1 f bx0@@1 bx1@@0 bx2@@0))
 :pattern ( (Reads3 t0@@4 t1@@4 t2@@2 t3@@1 h@@1 f bx0@@1 bx1@@0 bx2@@0))
))))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@2 t3@@1) h@@1))
)))
(assert (forall ((f@@0 T@U) (t0@@5 T@U) (t1@@5 T@U) (u0@@6 T@U) (u1@@6 T@U) ) (!  (=> (and (and ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@5 t1@@5)) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u0@@6) ($IsBox bx@@1 t0@@5))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@1 u0@@6))
 :pattern ( ($IsBox bx@@1 t0@@5))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t1@@5) ($IsBox bx@@2 u1@@6))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@2 t1@@5))
 :pattern ( ($IsBox bx@@2 u1@@6))
))) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@6 u1@@6)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@5 t1@@5)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@6 u1@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@3))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass._System.array2? _System.array2$arg@@2) $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass._System.array2? _System.array2$arg@@2) $h@@5))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ($o@@7 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@7 (Tclass._System.array3? _System.array3$arg@@3) $h@@6)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass._System.array3? _System.array3$arg@@3) $h@@6))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (t2@@3 T@U) (t3@@2 T@U) (heap@@1 T@U) (f@@1 T@U) (bx0@@2 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and (and ($IsBox bx0@@2 t0@@6) ($IsBox bx1@@1 t1@@6)) ($IsBox bx2@@1 t2@@3)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@6 t1@@6 t2@@3 t3@@2)))) (= (|Set#Equal| (Reads3 t0@@6 t1@@6 t2@@3 t3@@2 $OneHeap f@@1 bx0@@2 bx1@@1 bx2@@1) |Set#Empty|) (|Set#Equal| (Reads3 t0@@6 t1@@6 t2@@3 t3@@2 heap@@1 f@@1 bx0@@2 bx1@@1 bx2@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (Reads3 t0@@6 t1@@6 t2@@3 t3@@2 $OneHeap f@@1 bx0@@2 bx1@@1 bx2@@1) ($IsGoodHeap heap@@1))
 :pattern ( (Reads3 t0@@6 t1@@6 t2@@3 t3@@2 heap@@1 f@@1 bx0@@2 bx1@@1 bx2@@1))
)))
(assert (forall (($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7))
)))
(assert (forall ((f@@2 T@U) (t0@@7 T@U) (t1@@7 T@U) (t2@@4 T@U) (t3@@3 T@U) (u0@@7 T@U) (u1@@7 T@U) (u2@@5 T@U) (u3@@3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@7 t1@@7 t2@@4 t3@@3)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u0@@7) ($IsBox bx@@3 t0@@7))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@3 u0@@7))
 :pattern ( ($IsBox bx@@3 t0@@7))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 u1@@7) ($IsBox bx@@4 t1@@7))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsBox bx@@4 u1@@7))
 :pattern ( ($IsBox bx@@4 t1@@7))
))) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 u2@@5) ($IsBox bx@@5 t2@@4))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx@@5 u2@@5))
 :pattern ( ($IsBox bx@@5 t2@@4))
))) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 t3@@3) ($IsBox bx@@6 u3@@3))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsBox bx@@6 t3@@3))
 :pattern ( ($IsBox bx@@6 u3@@3))
))) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 u0@@7 u1@@7 u2@@5 u3@@3)))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@7 t1@@7 t2@@4 t3@@3)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 u0@@7 u1@@7 u2@@5 u3@@3)))
)))
(assert (forall ((h@@2 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@2 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@2 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
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
(assert (forall ((t0@@8 T@U) (t1@@8 T@U) (t2@@5 T@U) (t3@@4 T@U) (heap@@2 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@3 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (! (= (Apply3 t0@@8 t1@@8 t2@@5 t3@@4 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@2 bx2@@2) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType h@@3 heap@@2 bx0@@3 bx1@@2 bx2@@2))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Apply3 t0@@8 t1@@8 t2@@5 t3@@4 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@2 bx2@@2))
)))
(assert (forall ((t0@@9 T@U) (t1@@9 T@U) (heap@@3 T@U) (f@@3 T@U) (bx0@@4 T@U) ) (!  (=> (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@4 t0@@9) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@9 t1@@9)))) (= (|Set#Equal| (Reads1 t0@@9 t1@@9 $OneHeap f@@3 bx0@@4) |Set#Empty|) (|Set#Equal| (Reads1 t0@@9 t1@@9 heap@@3 f@@3 bx0@@4) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@9 t1@@9 $OneHeap f@@3 bx0@@4) ($IsGoodHeap heap@@3))
 :pattern ( (Reads1 t0@@9 t1@@9 heap@@3 f@@3 bx0@@4))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((t0@@10 T@U) (t1@@10 T@U) (t2@@6 T@U) (t3@@5 T@U) (heap@@4 T@U) (h@@4 T@U) (r@@3 T@U) (rd@@2 T@U) (bx0@@5 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType r@@3 heap@@4 bx0@@5 bx1@@3 bx2@@3)) (Requires3 t0@@10 t1@@10 t2@@6 t3@@5 heap@@4 (Handle3 h@@4 r@@3 rd@@2) bx0@@5 bx1@@3 bx2@@3))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (Requires3 t0@@10 t1@@10 t2@@6 t3@@5 heap@@4 (Handle3 h@@4 r@@3 rd@@2) bx0@@5 bx1@@3 bx2@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@8 T@U) ($o@@9 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) _System.array$arg@@2 $h@@8))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@11 T@U) (h0 T@U) (h1 T@U) (f@@4 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@6 t0@@11) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@11 t1@@11)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@11 t1@@11 h0 f@@4 bx0@@6) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@11 t1@@11 h0 f@@4 bx0@@6) (Requires1 t0@@11 t1@@11 h1 f@@4 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@11 t1@@11 h1 f@@4 bx0@@6))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@5 T@U) (bx0@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@7 t0@@12) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@12 t1@@12)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@12 t1@@12 h1@@0 f@@5 bx0@@7) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@12 t1@@12 h0@@0 f@@5 bx0@@7) (Requires1 t0@@12 t1@@12 h1@@0 f@@5 bx0@@7)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@12 t1@@12 h1@@0 f@@5 bx0@@7))
)))
(assert (forall ((v T@U) (t0@@13 T@U) ) (! (= ($Is SetType v (TSet t0@@13)) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v bx@@7) ($IsBox bx@@7 t0@@13))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@7))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@13)))
)))
(assert (forall ((f@@6 T@U) (i Int) ) (! (= (FDim (MultiIndexField f@@6 i)) (+ (FDim f@@6) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f@@6 i))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@7 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@7 ly) (MapType1Select LayerTypeType A f@@7 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@7 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@4| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((_System.array3$arg@@4 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@4))  (and ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@4)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@4)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@5 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@5) ($IsAlloc T@@1 v@@0 t h@@5))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@5))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@9 T@U) ($o@@10 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@10))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@10))))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@9))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@6 T@U) (k@@0 T@U) (bx@@8 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@6 k@@0) (=> ($IsAllocBox bx@@8 t@@0 h@@6) ($IsAllocBox bx@@8 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@6 k@@0) ($IsAllocBox bx@@8 t@@0 h@@6))
)))
(assert (forall ((h@@7 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@7 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@7) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@7 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@7))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@8 T@U) (bx0@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@8 t0@@14) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@14 t1@@13)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@14 t1@@13 h0@@1 f@@8 bx0@@8) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@14 t1@@13 h0@@1 f@@8 bx0@@8) (Reads1 t0@@14 t1@@13 h1@@1 f@@8 bx0@@8)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@14 t1@@13 h1@@1 f@@8 bx0@@8))
)))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@9 T@U) (bx0@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@9 t0@@15) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@15 t1@@14)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@15 t1@@14 h1@@2 f@@9 bx0@@9) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@15 t1@@14 h0@@2 f@@9 bx0@@9) (Reads1 t0@@15 t1@@14 h1@@2 f@@9 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@15 t1@@14 h1@@2 f@@9 bx0@@9))
)))
(assert (forall ((t0@@16 T@U) (t1@@15 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@10 T@U) (bx0@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@10 t0@@16) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@16 t1@@15)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@15 h0@@3 f@@10 bx0@@10) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@16 t1@@15 h0@@3 f@@10 bx0@@10) (Apply1 t0@@16 t1@@15 h1@@3 f@@10 bx0@@10)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@16 t1@@15 h1@@3 f@@10 bx0@@10))
)))
(assert (forall ((t0@@17 T@U) (t1@@16 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@11 T@U) (bx0@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@11 t0@@17) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@16)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@16 h1@@4 f@@11 bx0@@11) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@17 t1@@16 h0@@4 f@@11 bx0@@11) (Apply1 t0@@17 t1@@16 h1@@4 f@@11 bx0@@11)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@17 t1@@16 h1@@4 f@@11 bx0@@11))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((_System.array3$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@5)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@5)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@6)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@6)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((s T@U) (bx@@9 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@9) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@9))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@9))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)))
)))
(assert (forall ((t0@@18 T@U) (t1@@17 T@U) (heap@@5 T@U) (h@@8 T@U) (r@@4 T@U) (rd@@3 T@U) (bx0@@12 T@U) ) (! (= (Apply1 t0@@18 t1@@17 heap@@5 (Handle1 h@@8 r@@4 rd@@3) bx0@@12) (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@8 heap@@5 bx0@@12))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@18 t1@@17 heap@@5 (Handle1 h@@8 r@@4 rd@@3) bx0@@12))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@11 Tclass._System.nat))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@12 Tclass._System.object?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@13 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@12 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((_System.array3$arg@@7 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._System.array3? _System.array3$arg@@7))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._System.array3? _System.array3$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is refType $o@@13 (Tclass._System.array3? _System.array3$arg@@7)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((f@@12 T@U) (t0@@19 T@U) (t1@@18 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@19 t1@@18) h@@9)) (forall ((bx0@@13 T@U) ) (!  (=> (and ($IsAllocBox bx0@@13 t0@@19 h@@9) (Requires1 t0@@19 t1@@18 h@@9 f@@12 bx0@@13)) ($IsAllocBox (Apply1 t0@@19 t1@@18 h@@9 f@@12 bx0@@13) t1@@18 h@@9))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@19 t1@@18 h@@9 f@@12 bx0@@13))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@19 t1@@18) h@@9))
)))
(assert (forall ((f@@13 T@U) (t0@@20 T@U) (t1@@19 T@U) (t2@@7 T@U) (t3@@6 T@U) ) (! (= ($Is HandleTypeType f@@13 (Tclass._System.___hFunc3 t0@@20 t1@@19 t2@@7 t3@@6)) (forall ((h@@10 T@U) (bx0@@14 T@U) (bx1@@4 T@U) (bx2@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@10) (and (and ($IsBox bx0@@14 t0@@20) ($IsBox bx1@@4 t1@@19)) ($IsBox bx2@@4 t2@@7))) (Requires3 t0@@20 t1@@19 t2@@7 t3@@6 h@@10 f@@13 bx0@@14 bx1@@4 bx2@@4)) ($IsBox (Apply3 t0@@20 t1@@19 t2@@7 t3@@6 h@@10 f@@13 bx0@@14 bx1@@4 bx2@@4) t3@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |590|
 :pattern ( (Apply3 t0@@20 t1@@19 t2@@7 t3@@6 h@@10 f@@13 bx0@@14 bx1@@4 bx2@@4))
)))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($Is HandleTypeType f@@13 (Tclass._System.___hFunc3 t0@@20 t1@@19 t2@@7 t3@@6)))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#10| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( (MapType1Select refType boolType (|lambda#10| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#12| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |gitissue196dfy.79:27|
 :skolemid |1080|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#12| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((t0@@21 T@U) (t1@@20 T@U) (t2@@8 T@U) (t3@@7 T@U) (heap@@6 T@U) (f@@14 T@U) (bx0@@15 T@U) (bx1@@5 T@U) (bx2@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@6) (and (and (and ($IsBox bx0@@15 t0@@21) ($IsBox bx1@@5 t1@@20)) ($IsBox bx2@@5 t2@@8)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc3 t0@@21 t1@@20 t2@@8 t3@@7)))) (|Set#Equal| (Reads3 t0@@21 t1@@20 t2@@8 t3@@7 $OneHeap f@@14 bx0@@15 bx1@@5 bx2@@5) |Set#Empty|)) (= (Requires3 t0@@21 t1@@20 t2@@8 t3@@7 $OneHeap f@@14 bx0@@15 bx1@@5 bx2@@5) (Requires3 t0@@21 t1@@20 t2@@8 t3@@7 heap@@6 f@@14 bx0@@15 bx1@@5 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (Requires3 t0@@21 t1@@20 t2@@8 t3@@7 $OneHeap f@@14 bx0@@15 bx1@@5 bx2@@5) ($IsGoodHeap heap@@6))
 :pattern ( (Requires3 t0@@21 t1@@20 t2@@8 t3@@7 heap@@6 f@@14 bx0@@15 bx1@@5 bx2@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@10 T@U) ($o@@14 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@14))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@14))))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@14) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@14) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((f@@15 T@U) (t0@@22 T@U) (t1@@21 T@U) ) (! (= ($Is HandleTypeType f@@15 (Tclass._System.___hFunc1 t0@@22 t1@@21)) (forall ((h@@11 T@U) (bx0@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@11) ($IsBox bx0@@16 t0@@22)) (Requires1 t0@@22 t1@@21 h@@11 f@@15 bx0@@16)) ($IsBox (Apply1 t0@@22 t1@@21 h@@11 f@@15 bx0@@16) t1@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@22 t1@@21 h@@11 f@@15 bx0@@16))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@15 (Tclass._System.___hFunc1 t0@@22 t1@@21)))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 TInt) (and (= ($Box intType ($Unbox intType bx@@14)) bx@@14) ($Is intType ($Unbox intType bx@@14) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@14 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@23 T@U) (t1@@22 T@U) (heap@@7 T@U) (h@@12 T@U) (r@@5 T@U) (rd@@4 T@U) (bx0@@17 T@U) ) (!  (=> (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@5 heap@@7 bx0@@17)) (Requires1 t0@@23 t1@@22 heap@@7 (Handle1 h@@12 r@@5 rd@@4) bx0@@17))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@23 t1@@22 heap@@7 (Handle1 h@@12 r@@5 rd@@4) bx0@@17))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((o@@8 T@U) ) (! (<= 0 (_System.array2.Length0 o@@8))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.array2.Length0 o@@8))
)))
(assert (forall ((o@@9 T@U) ) (! (<= 0 (_System.array2.Length1 o@@9))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_System.array2.Length1 o@@9))
)))
(assert (forall ((o@@10 T@U) ) (! (<= 0 (_System.array3.Length0 o@@10))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (_System.array3.Length0 o@@10))
)))
(assert (forall ((o@@11 T@U) ) (! (<= 0 (_System.array3.Length1 o@@11))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_System.array3.Length1 o@@11))
)))
(assert (forall ((o@@12 T@U) ) (! (<= 0 (_System.array3.Length2 o@@12))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_System.array3.Length2 o@@12))
)))
(assert (forall ((v@@3 T@U) (t0@@24 T@U) (h@@13 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@24) h@@13) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@15) ($IsAllocBox bx@@15 t0@@24 h@@13))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@15))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@24) h@@13))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall (($o@@15 T@U) ) (! ($Is refType $o@@15 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@15 Tclass._System.object?))
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
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((_System.array3$arg@@8 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@8)) _System.array3$arg@@8)
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@8))
)))
(assert (forall ((_System.array3$arg@@9 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@9)) _System.array3$arg@@9)
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@9))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@11 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@16)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@16) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@16) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@12 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@17) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@17)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@17) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@17) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@13 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@18)) TInt $h@@13))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@18) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@18) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array3$arg@@10 T@U) ($h@@14 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._System.array3? _System.array3$arg@@10)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@19) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length0 $o@@19)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_System.array3.Length0 $o@@19) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@19) alloc)) (Tclass._System.array3? _System.array3$arg@@10))
)))
(assert (forall ((_System.array3$arg@@11 T@U) ($h@@15 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._System.array3? _System.array3$arg@@11)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length1 $o@@20)) TInt $h@@15))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (_System.array3.Length1 $o@@20) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) alloc)) (Tclass._System.array3? _System.array3$arg@@11))
)))
(assert (forall ((_System.array3$arg@@12 T@U) ($h@@16 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._System.array3? _System.array3$arg@@12)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@21) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length2 $o@@21)) TInt $h@@16))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (_System.array3.Length2 $o@@21) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@21) alloc)) (Tclass._System.array3? _System.array3$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@17 T@U) ($o@@22 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@22)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@22) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@22) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((_System.array3$arg@@13 T@U) ($h@@18 T@U) ($o@@23 T@U) ($i0@@3 Int) ($i1@@1 Int) ($i2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._System.array3? _System.array3$arg@@13)))) (and (and (and (<= 0 $i0@@3) (< $i0@@3 (_System.array3.Length0 $o@@23))) (and (<= 0 $i1@@1) (< $i1@@1 (_System.array3.Length1 $o@@23)))) (and (<= 0 $i2) (< $i2 (_System.array3.Length2 $o@@23))))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@23) (MultiIndexField (MultiIndexField (IndexField $i0@@3) $i1@@1) $i2)) _System.array3$arg@@13))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@23) (MultiIndexField (MultiIndexField (IndexField $i0@@3) $i1@@1) $i2)) (Tclass._System.array3? _System.array3$arg@@13))
)))
(assert (forall ((f@@16 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@16 ($LS ly@@0)) (AtLayer A@@0 f@@16 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@16 ($LS ly@@0)))
)))
(assert (forall ((f@@17 T@U) (t0@@25 T@U) (t1@@23 T@U) (h@@14 T@U) ) (!  (=> ($IsGoodHeap h@@14) (= ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@25 t1@@23) h@@14) (forall ((bx0@@18 T@U) ) (!  (=> (and (and ($IsBox bx0@@18 t0@@25) ($IsAllocBox bx0@@18 t0@@25 h@@14)) (Requires1 t0@@25 t1@@23 h@@14 f@@17 bx0@@18)) (forall ((r@@6 T@U) ) (!  (=> (and (or (not (= r@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@25 t1@@23 h@@14 f@@17 bx0@@18) ($Box refType r@@6))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@14 r@@6) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@25 t1@@23 h@@14 f@@17 bx0@@18) ($Box refType r@@6)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@25 t1@@23 h@@14 f@@17 bx0@@18))
 :pattern ( (Reads1 t0@@25 t1@@23 h@@14 f@@17 bx0@@18))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@25 t1@@23) h@@14))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((f@@18 T@U) (t0@@26 T@U) (t1@@24 T@U) (t2@@9 T@U) (t3@@8 T@U) (h@@15 T@U) ) (!  (=> (and ($IsGoodHeap h@@15) ($IsAlloc HandleTypeType f@@18 (Tclass._System.___hFunc3 t0@@26 t1@@24 t2@@9 t3@@8) h@@15)) (forall ((bx0@@19 T@U) (bx1@@6 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@19 t0@@26 h@@15) ($IsAllocBox bx1@@6 t1@@24 h@@15)) ($IsAllocBox bx2@@6 t2@@9 h@@15)) (Requires3 t0@@26 t1@@24 t2@@9 t3@@8 h@@15 f@@18 bx0@@19 bx1@@6 bx2@@6)) ($IsAllocBox (Apply3 t0@@26 t1@@24 t2@@9 t3@@8 h@@15 f@@18 bx0@@19 bx1@@6 bx2@@6) t3@@8 h@@15))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Apply3 t0@@26 t1@@24 t2@@9 t3@@8 h@@15 f@@18 bx0@@19 bx1@@6 bx2@@6))
)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc HandleTypeType f@@18 (Tclass._System.___hFunc3 t0@@26 t1@@24 t2@@9 t3@@8) h@@15))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@24 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@24 $f))  (=> (and (or (not (= $o@@24 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@24) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1075|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@24 $f))
)))
(assert (forall ((f@@19 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@19 i@@2)) f@@19) (= (MultiIndexField_Inverse1 (MultiIndexField f@@19 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@19 i@@2))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|))
)))
(assert (forall ((t0@@27 T@U) (t1@@25 T@U) (heap@@8 T@U) (f@@20 T@U) (bx0@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@8) (and ($IsBox bx0@@20 t0@@27) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc1 t0@@27 t1@@25)))) (|Set#Equal| (Reads1 t0@@27 t1@@25 $OneHeap f@@20 bx0@@20) |Set#Empty|)) (= (Requires1 t0@@27 t1@@25 $OneHeap f@@20 bx0@@20) (Requires1 t0@@27 t1@@25 heap@@8 f@@20 bx0@@20)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@27 t1@@25 $OneHeap f@@20 bx0@@20) ($IsGoodHeap heap@@8))
 :pattern ( (Requires1 t0@@27 t1@@25 heap@@8 f@@20 bx0@@20))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|$l#1#heap#0| T@U) (|$l#1#_v1#0| T@U) (|$l#1#_v2#0| T@U) (|$l#1#_v3#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#14| |l#0@@3| |l#1@@0| |l#2@@0|) |$l#1#heap#0| |$l#1#_v1#0| |$l#1#_v2#0| |$l#1#_v3#0|))  (and (and ($IsBox |$l#1#_v1#0| |l#0@@3|) ($IsBox |$l#1#_v2#0| |l#1@@0|)) ($IsBox |$l#1#_v3#0| |l#2@@0|)))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#14| |l#0@@3| |l#1@@0| |l#2@@0|) |$l#1#heap#0| |$l#1#_v1#0| |$l#1#_v2#0| |$l#1#_v3#0|))
)))
(assert (forall ((t0@@28 T@U) (t1@@26 T@U) (t2@@10 T@U) (t3@@9 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@21 T@U) (bx0@@21 T@U) (bx1@@7 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) (and (and (and ($IsBox bx0@@21 t0@@28) ($IsBox bx1@@7 t1@@26)) ($IsBox bx2@@7 t2@@10)) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc3 t0@@28 t1@@26 t2@@10 t3@@9)))) (forall ((o@@13 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads3 t0@@28 t1@@26 t2@@10 t3@@9 h0@@5 f@@21 bx0@@21 bx1@@7 bx2@@7) ($Box refType o@@13))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@5 o@@13) fld@@5) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@5 o@@13) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |580|
))) (= (Requires3 t0@@28 t1@@26 t2@@10 t3@@9 h0@@5 f@@21 bx0@@21 bx1@@7 bx2@@7) (Requires3 t0@@28 t1@@26 t2@@10 t3@@9 h1@@5 f@@21 bx0@@21 bx1@@7 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires3 t0@@28 t1@@26 t2@@10 t3@@9 h1@@5 f@@21 bx0@@21 bx1@@7 bx2@@7))
)))
(assert (forall ((t0@@29 T@U) (t1@@27 T@U) (t2@@11 T@U) (t3@@10 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@22 T@U) (bx0@@22 T@U) (bx1@@8 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) (and (and (and ($IsBox bx0@@22 t0@@29) ($IsBox bx1@@8 t1@@27)) ($IsBox bx2@@8 t2@@11)) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc3 t0@@29 t1@@27 t2@@11 t3@@10)))) (forall ((o@@14 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@14 null)) (not true)) (|Set#IsMember| (Reads3 t0@@29 t1@@27 t2@@11 t3@@10 h1@@6 f@@22 bx0@@22 bx1@@8 bx2@@8) ($Box refType o@@14))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@6 o@@14) fld@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@6 o@@14) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |582|
))) (= (Requires3 t0@@29 t1@@27 t2@@11 t3@@10 h0@@6 f@@22 bx0@@22 bx1@@8 bx2@@8) (Requires3 t0@@29 t1@@27 t2@@11 t3@@10 h1@@6 f@@22 bx0@@22 bx1@@8 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires3 t0@@29 t1@@27 t2@@11 t3@@10 h1@@6 f@@22 bx0@@22 bx1@@8 bx2@@8))
)))
(assert (forall ((bx@@17 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@18 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@19 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@20 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@21 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((_System.array3$arg@@14 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.array3? _System.array3$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) (Tclass._System.array3? _System.array3$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsBox bx@@22 (Tclass._System.array3? _System.array3$arg@@14)))
)))
(assert (forall ((_System.array3$arg@@15 T@U) (bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (Tclass._System.array3 _System.array3$arg@@15)) (and (= ($Box refType ($Unbox refType bx@@23)) bx@@23) ($Is refType ($Unbox refType bx@@23) (Tclass._System.array3 _System.array3$arg@@15))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsBox bx@@23 (Tclass._System.array3 _System.array3$arg@@15)))
)))
(assert (forall ((h@@16 T@U) (r@@7 T@U) (f@@23 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@16 r@@7 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@16 r@@7) f@@23 x@@6))) ($HeapSucc h@@16 (MapType1Store refType (MapType1Type FieldType BoxType) h@@16 r@@7 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@16 r@@7) f@@23 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@16 r@@7 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@16 r@@7) f@@23 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
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
(assert (forall ((t0@@30 T@U) (t1@@28 T@U) (t2@@12 T@U) (t3@@11 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@24 T@U) (bx0@@23 T@U) (bx1@@9 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) (and (and (and ($IsBox bx0@@23 t0@@30) ($IsBox bx1@@9 t1@@28)) ($IsBox bx2@@9 t2@@12)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc3 t0@@30 t1@@28 t2@@12 t3@@11)))) (forall ((o@@16 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@16 null)) (not true)) (|Set#IsMember| (Reads3 t0@@30 t1@@28 t2@@12 t3@@11 h0@@7 f@@24 bx0@@23 bx1@@9 bx2@@9) ($Box refType o@@16))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@7 o@@16) fld@@7) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@7 o@@16) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |576|
))) (= (Reads3 t0@@30 t1@@28 t2@@12 t3@@11 h0@@7 f@@24 bx0@@23 bx1@@9 bx2@@9) (Reads3 t0@@30 t1@@28 t2@@12 t3@@11 h1@@7 f@@24 bx0@@23 bx1@@9 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads3 t0@@30 t1@@28 t2@@12 t3@@11 h1@@7 f@@24 bx0@@23 bx1@@9 bx2@@9))
)))
(assert (forall ((t0@@31 T@U) (t1@@29 T@U) (t2@@13 T@U) (t3@@12 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@25 T@U) (bx0@@24 T@U) (bx1@@10 T@U) (bx2@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) (and (and (and ($IsBox bx0@@24 t0@@31) ($IsBox bx1@@10 t1@@29)) ($IsBox bx2@@10 t2@@13)) ($Is HandleTypeType f@@25 (Tclass._System.___hFunc3 t0@@31 t1@@29 t2@@13 t3@@12)))) (forall ((o@@17 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@17 null)) (not true)) (|Set#IsMember| (Reads3 t0@@31 t1@@29 t2@@13 t3@@12 h1@@8 f@@25 bx0@@24 bx1@@10 bx2@@10) ($Box refType o@@17))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@8 o@@17) fld@@8) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@8 o@@17) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |578|
))) (= (Reads3 t0@@31 t1@@29 t2@@13 t3@@12 h0@@8 f@@25 bx0@@24 bx1@@10 bx2@@10) (Reads3 t0@@31 t1@@29 t2@@13 t3@@12 h1@@8 f@@25 bx0@@24 bx1@@10 bx2@@10)))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads3 t0@@31 t1@@29 t2@@13 t3@@12 h1@@8 f@@25 bx0@@24 bx1@@10 bx2@@10))
)))
(assert (forall ((t0@@32 T@U) (t1@@30 T@U) (t2@@14 T@U) (t3@@13 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@26 T@U) (bx0@@25 T@U) (bx1@@11 T@U) (bx2@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) (and (and (and ($IsBox bx0@@25 t0@@32) ($IsBox bx1@@11 t1@@30)) ($IsBox bx2@@11 t2@@14)) ($Is HandleTypeType f@@26 (Tclass._System.___hFunc3 t0@@32 t1@@30 t2@@14 t3@@13)))) (forall ((o@@18 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@18 null)) (not true)) (|Set#IsMember| (Reads3 t0@@32 t1@@30 t2@@14 t3@@13 h0@@9 f@@26 bx0@@25 bx1@@11 bx2@@11) ($Box refType o@@18))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@9 o@@18) fld@@9) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@9 o@@18) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |584|
))) (= (Apply3 t0@@32 t1@@30 t2@@14 t3@@13 h0@@9 f@@26 bx0@@25 bx1@@11 bx2@@11) (Apply3 t0@@32 t1@@30 t2@@14 t3@@13 h1@@9 f@@26 bx0@@25 bx1@@11 bx2@@11)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply3 t0@@32 t1@@30 t2@@14 t3@@13 h1@@9 f@@26 bx0@@25 bx1@@11 bx2@@11))
)))
(assert (forall ((t0@@33 T@U) (t1@@31 T@U) (t2@@15 T@U) (t3@@14 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@27 T@U) (bx0@@26 T@U) (bx1@@12 T@U) (bx2@@12 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) (and (and (and ($IsBox bx0@@26 t0@@33) ($IsBox bx1@@12 t1@@31)) ($IsBox bx2@@12 t2@@15)) ($Is HandleTypeType f@@27 (Tclass._System.___hFunc3 t0@@33 t1@@31 t2@@15 t3@@14)))) (forall ((o@@19 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@19 null)) (not true)) (|Set#IsMember| (Reads3 t0@@33 t1@@31 t2@@15 t3@@14 h1@@10 f@@27 bx0@@26 bx1@@12 bx2@@12) ($Box refType o@@19))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@10 o@@19) fld@@10) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@10 o@@19) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |586|
))) (= (Apply3 t0@@33 t1@@31 t2@@15 t3@@14 h0@@10 f@@27 bx0@@26 bx1@@12 bx2@@12) (Apply3 t0@@33 t1@@31 t2@@15 t3@@14 h1@@10 f@@27 bx0@@26 bx1@@12 bx2@@12)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply3 t0@@33 t1@@31 t2@@15 t3@@14 h1@@10 f@@27 bx0@@26 bx1@@12 bx2@@12))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#1#heap#0@@0| T@U) (|$l#1#_v1#0@@0| T@U) (|$l#1#_v2#0@@0| T@U) (|$l#1#_v3#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType (|lambda#13| |l#0@@4|) |$l#1#heap#0@@0| |$l#1#_v1#0@@0| |$l#1#_v2#0@@0| |$l#1#_v3#0@@0|) |l#0@@4|)
 :qid |gitissue196dfy.81:49|
 :skolemid |1081|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType (|lambda#13| |l#0@@4|) |$l#1#heap#0@@0| |$l#1#_v1#0@@0| |$l#1#_v2#0@@0| |$l#1#_v3#0@@0|))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#1#heap#0@@1| T@U) (|$l#1#_v1#0@@1| T@U) (|$l#1#_v2#0@@1| T@U) (|$l#1#_v3#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#16| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#_v1#0@@1| |$l#1#_v2#0@@1| |$l#1#_v3#0@@1|) |l#0@@5|)
 :qid |gitissue196dfy.81:38|
 :skolemid |1083|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#16| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#_v1#0@@1| |$l#1#_v2#0@@1| |$l#1#_v3#0@@1|))
)))
(assert (forall ((_System.array3$arg@@16 T@U) ($h@@19 T@U) ($o@@25 T@U) ($i0@@4 Int) ($i1@@2 Int) ($i2@@0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._System.array3? _System.array3$arg@@16)))) (and (and (and (<= 0 $i0@@4) (< $i0@@4 (_System.array3.Length0 $o@@25))) (and (<= 0 $i1@@2) (< $i1@@2 (_System.array3.Length1 $o@@25)))) (and (<= 0 $i2@@0) (< $i2@@0 (_System.array3.Length2 $o@@25))))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) (MultiIndexField (MultiIndexField (IndexField $i0@@4) $i1@@2) $i2@@0)) _System.array3$arg@@16 $h@@19))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) (MultiIndexField (MultiIndexField (IndexField $i0@@4) $i1@@2) $i2@@0)) (Tclass._System.array3? _System.array3$arg@@16))
)))
(assert (forall ((h@@17 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@17)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@17))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#_v0#0@@0| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#8| |l#0@@6|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0|) |l#0@@6|)
 :qid |gitissue196dfy.79:32|
 :skolemid |1076|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#8| |l#0@@6|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0|))
)))
(assert (forall ((|l#0@@7| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#_v0#0@@1| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#11| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1|) |l#0@@7|)
 :qid |gitissue196dfy.79:27|
 :skolemid |1079|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#11| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_v0#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |_v1#0@0| () Int)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |lambdaResult#1| () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@4 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@7| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestD)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (< |_v0#0@0| (LitInt 0)) (= (ControlFlow 0 17) 15)) anon3_correct)))
(let ((anon10_Then_correct  (=> (<= (LitInt 0) |_v0#0@0|) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| $nw@0)) (and ($Is refType |lambdaResult#0| (Tclass._System.array2 TInt)) (= (ControlFlow 0 16) 15))) anon3_correct))))
(let ((anon9_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@2 |$lambdaHeap#0@0|) ($HeapSucc $Heap@2 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 18) 16) anon10_Then_correct) (=> (= (ControlFlow 0 18) 17) anon10_Else_correct)))))
(let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (< |_v1#0@0| (LitInt 0)) (= (ControlFlow 0 5) 3)) anon7_correct)))
(let ((anon12_Then_correct  (=> (<= (LitInt 0) |_v1#0@0|) (=> (and (and (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false)) (= |lambdaResult#1| $nw@3)) (and ($Is refType |lambdaResult#1| (Tclass._System.array (Tclass._System.array2 TInt))) (= (ControlFlow 0 4) 3))) anon7_correct))))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@4 |$lambdaHeap#1@0|) ($HeapSucc $Heap@4 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 6) 4) anon12_Then_correct) (=> (= (ControlFlow 0 6) 5) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array3? (Tclass._System.array (Tclass._System.array2 TInt))))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $nw@5) alloc))))) (and (and (= (_System.array3.Length0 $nw@5) (LitInt 5)) (= (_System.array3.Length1 $nw@5) (LitInt 4))) (and (= (_System.array3.Length2 $nw@5) (LitInt 3)) (= (ControlFlow 0 2) (- 0 1))))) (forall ((|arrayinit#1#i0#0| Int) (|arrayinit#1#i1#0| Int) (|arrayinit#1#i2#0| Int) ) (!  (=> (and (and (and (<= 0 |arrayinit#1#i0#0|) (< |arrayinit#1#i0#0| (LitInt 5))) (and (<= 0 |arrayinit#1#i1#0|) (< |arrayinit#1#i1#0| (LitInt 4)))) (and (<= 0 |arrayinit#1#i2#0|) (< |arrayinit#1#i2#0| (LitInt 3)))) (Requires3 Tclass._System.nat TInt TInt (Tclass._System.array (Tclass._System.array2 TInt)) $Heap@4 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| (Handle3 (|lambda#13| ($Box refType $nw@3)) (|lambda#14| Tclass._System.nat TInt TInt) (|lambda#16| (SetRef_to_SetBox (|lambda#10| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#1#i0#0|)) ($Box intType (int_2_U |arrayinit#1#i1#0|)) ($Box intType (int_2_U |arrayinit#1#i2#0|))))
 :qid |gitissue196dfy.81:8|
 :skolemid |1056|
)))))
(let ((anon9_Else_correct  (=> (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array? (Tclass._System.array2 TInt)))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@3) alloc)))) (= (_System.array.Length $nw@3) (LitInt 5)))) (and (=> (= (ControlFlow 0 7) (- 0 14)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 5))) (Requires1 Tclass._System.nat (Tclass._System.array2 TInt) $Heap@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| (Handle1 (|lambda#8| ($Box refType $nw@0)) (|lambda#9| Tclass._System.nat) (|lambda#11| (SetRef_to_SetBox (|lambda#10| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |gitissue196dfy.79:8|
 :skolemid |1054|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 5))) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@3) (IndexField |arrayinit#0#i0#0@@0|))) ($Unbox refType (Apply1 Tclass._System.nat (Tclass._System.array2 TInt) $Heap@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| (Handle1 (|lambda#8| ($Box refType $nw@0)) (|lambda#9| Tclass._System.nat) (|lambda#11| (SetRef_to_SetBox (|lambda#10| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|))))))
 :qid |gitissue196dfy.79:8|
 :skolemid |1055|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@3) (IndexField |arrayinit#0#i0#0@@0|)))
)) (= $Heap@3 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@2 $nw@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 7) (- 0 12)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array3? (Tclass._System.array (Tclass._System.array2 TInt))))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@4) alloc))))) (and (= (_System.array3.Length0 $nw@4) (LitInt 5)) (= (_System.array3.Length1 $nw@4) (LitInt 4)))) (and (and (= (_System.array3.Length2 $nw@4) (LitInt 3)) (= $Heap@4 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@3 $nw@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@4) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 7) 6) anon11_Then_correct) (=> (= (ControlFlow 0 7) 2) anon11_Else_correct))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 19) (- 0 25)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 19) (- 0 24)) (<= 0 (LitInt 2))) (=> (<= 0 (LitInt 2)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array2.Length0 $nw@0) (LitInt 3)))) (and (and (= (_System.array2.Length1 $nw@0) (LitInt 2)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 19) (- 0 23)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? (Tclass._System.array2 TInt)))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 5)) (= $Heap@1 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@0 $nw@1 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 19) (- 0 21)) (= (LitInt 5) 5)) (=> (= (LitInt 5) 5) (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? (Tclass._System.array2 TInt)))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 5)))) (=> (and (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) (IndexField 0))) $nw@0) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) (IndexField 1))) $nw@0)) (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) (IndexField 2))) $nw@0) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) (IndexField 3))) $nw@0))) (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) (IndexField 4))) $nw@0) (= $Heap@2 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 19) 18) anon9_Then_correct) (=> (= (ControlFlow 0 19) 7) anon9_Else_correct)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |a#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |a#0| (Tclass._System.array2 TInt) $Heap)) true) (and (and ($Is refType |b#0| (Tclass._System.array (Tclass._System.array2 TInt))) ($IsAlloc refType |b#0| (Tclass._System.array (Tclass._System.array2 TInt)) $Heap)) true)) (and (and (and ($Is refType |c#0@@7| (Tclass._System.array3 (Tclass._System.array (Tclass._System.array2 TInt)))) ($IsAlloc refType |c#0@@7| (Tclass._System.array3 (Tclass._System.array (Tclass._System.array2 TInt))) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 26) 19)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
