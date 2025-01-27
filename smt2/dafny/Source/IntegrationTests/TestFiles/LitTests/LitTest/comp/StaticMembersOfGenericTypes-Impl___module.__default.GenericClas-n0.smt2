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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass._System.___hPartialFunc3 () T@U)
(declare-fun Tagclass._System.___hTotalFunc3 () T@U)
(declare-fun Tagclass._module.Class () T@U)
(declare-fun Tagclass._module.Class? () T@U)
(declare-fun Tagclass._module.Trait () T@U)
(declare-fun Tagclass._module.Datatype () T@U)
(declare-fun Tagclass._module.Trait? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun |tytagFamily$_#PartialFunc3| () T@U)
(declare-fun |tytagFamily$_#TotalFunc3| () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$Datatype () T@U)
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
(declare-fun implements$_module.Trait (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Class? (T@U) T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_3 (T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType2Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
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
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Trait.F_k (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.Trait.F_k#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Class (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Trait? (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Class.F (T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Class.F#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Datatype.F (T@U T@U T@U T@U) T@U)
(declare-fun |_module.Datatype.F#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.Class.F#Handle| (T@U T@U) T@U)
(declare-fun |_module.Datatype.F#Handle| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Tclass._module.Trait (T@U T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._module.Datatype (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |_module.Class.F#requires| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Datatype.F#requires| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Trait.F_k#Handle| (T@U T@U T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |_module.Trait.F_k#requires| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass._module.Trait_0 (T@U) T@U)
(declare-fun Tclass._module.Trait_1 (T@U) T@U)
(declare-fun Tclass._module.Trait?_0 (T@U) T@U)
(declare-fun Tclass._module.Trait?_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Class_0 (T@U) T@U)
(declare-fun Tclass._module.Class?_0 (T@U) T@U)
(declare-fun Tclass._module.Datatype_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun MapType3Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType3Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U) T@U)
(declare-fun |lambda#7| () T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#2| () T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 Tagclass._System.___hFunc3 Tagclass._System.___hPartialFunc3 Tagclass._System.___hTotalFunc3 Tagclass._module.Class Tagclass._module.Class? Tagclass._module.Trait Tagclass._module.Datatype Tagclass._module.Trait? tytagFamily$object |tytagFamily$_tuple#2| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| |tytagFamily$_tuple#3| |tytagFamily$_#Func3| |tytagFamily$_#PartialFunc3| |tytagFamily$_#TotalFunc3| tytagFamily$Class tytagFamily$Trait tytagFamily$Datatype)
)
(assert (forall ((_module.Class$A T@U) ) (! (implements$_module.Trait (Tclass._module.Class? _module.Class$A) TBool _module.Class$A)
 :qid |unknown.0:0|
 :skolemid |739|
)))
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
 :skolemid |564|
 :pattern ( (|Set#IsMember| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap (Handle3 h r rd) bx0 bx1 bx2) bx))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc3_0 (Tclass._System.___hPartialFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc3_1 (Tclass._System.___hPartialFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$T2@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc3_2 (Tclass._System.___hPartialFunc3 |#$T0@@5| |#$T1@@5| |#$T2@@5| |#$R@@5|)) |#$T2@@5|)
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@5| |#$T1@@5| |#$T2@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$T2@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hPartialFunc3_3 (Tclass._System.___hPartialFunc3 |#$T0@@6| |#$T1@@6| |#$T2@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@6| |#$T1@@6| |#$T2@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$T2@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc3_0 (Tclass._System.___hTotalFunc3 |#$T0@@7| |#$T1@@7| |#$T2@@7| |#$R@@7|)) |#$T0@@7|)
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@7| |#$T1@@7| |#$T2@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$T2@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc3_1 (Tclass._System.___hTotalFunc3 |#$T0@@8| |#$T1@@8| |#$T2@@8| |#$R@@8|)) |#$T1@@8|)
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@8| |#$T1@@8| |#$T2@@8| |#$R@@8|))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$T2@@9| T@U) (|#$R@@9| T@U) ) (! (= (Tclass._System.___hTotalFunc3_2 (Tclass._System.___hTotalFunc3 |#$T0@@9| |#$T1@@9| |#$T2@@9| |#$R@@9|)) |#$T2@@9|)
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@9| |#$T1@@9| |#$T2@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$T2@@10| T@U) (|#$R@@10| T@U) ) (! (= (Tclass._System.___hTotalFunc3_3 (Tclass._System.___hTotalFunc3 |#$T0@@10| |#$T1@@10| |#$T2@@10| |#$R@@10|)) |#$R@@10|)
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@10| |#$T1@@10| |#$T2@@10| |#$R@@10|))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2@@1 T@T) (t3@@1 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (x2@@4 T@U) ) (! (= (MapType2Select t0@@2 t1@@2 t2@@1 t3@@1 (MapType2Store t0@@2 t1@@2 t2@@1 t3@@1 m@@6 x0@@6 x1@@4 x2@@4 val@@6) x0@@6 x1@@4 x2@@4) val@@6)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (u3@@3 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (x2@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) (y2@@3 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select u0@@4 u1@@4 u2@@3 u3@@3 (MapType2Store u0@@4 u1@@4 u2@@3 u3@@3 m@@7 x0@@7 x1@@5 x2@@5 val@@7) y0@@4 y1@@3 y2@@3) (MapType2Select u0@@4 u1@@4 u2@@3 u3@@3 m@@7 y0@@4 y1@@3 y2@@3)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (u3@@4 T@T) (val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@6 T@U) (x2@@6 T@U) (y0@@5 T@U) (y1@@4 T@U) (y2@@4 T@U) ) (!  (or (= x1@@6 y1@@4) (= (MapType2Select u0@@5 u1@@5 u2@@4 u3@@4 (MapType2Store u0@@5 u1@@5 u2@@4 u3@@4 m@@8 x0@@8 x1@@6 x2@@6 val@@8) y0@@5 y1@@4 y2@@4) (MapType2Select u0@@5 u1@@5 u2@@4 u3@@4 m@@8 y0@@5 y1@@4 y2@@4)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((u0@@6 T@T) (u1@@6 T@T) (u2@@5 T@T) (u3@@5 T@T) (val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (x1@@7 T@U) (x2@@7 T@U) (y0@@6 T@U) (y1@@5 T@U) (y2@@5 T@U) ) (!  (or (= x2@@7 y2@@5) (= (MapType2Select u0@@6 u1@@6 u2@@5 u3@@5 (MapType2Store u0@@6 u1@@6 u2@@5 u3@@5 m@@9 x0@@9 x1@@7 x2@@7 val@@9) y0@@6 y1@@5 y2@@5) (MapType2Select u0@@6 u1@@6 u2@@5 u3@@5 m@@9 y0@@6 y1@@5 y2@@5)))
 :qid |mapAx1:MapType2Select:2|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) (|$l#0#y#0| T@U) ) (! (= (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0| |l#1|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))  (and ($IsBox |$l#0#x#0| |l#0|) ($IsBox |$l#0#y#0| |l#1|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |872|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0| |l#1|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0@@11|) ($IsBox |x1#0| |#$T1@@11|)) (Requires2 |#$T0@@11| |#$T1@@11| |#$R@@11| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) |#$T0@@12|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) |#$T1@@13|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) |#$R@@14|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) |#$T0@@15|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@16| T@U) (|#$R@@16| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|)) |#$T1@@16|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@17| T@U) (|#$R@@17| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|)) |#$R@@17|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$T1@@18| T@U) (|#$R@@18| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@18| |#$T1@@18| |#$R@@18|)) |#$T0@@18|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@18| |#$T1@@18| |#$R@@18|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$T1@@19| T@U) (|#$R@@19| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@19| |#$T1@@19| |#$R@@19|)) |#$T1@@19|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@19| |#$T1@@19| |#$R@@19|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$T1@@20| T@U) (|#$R@@20| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@20| |#$T1@@20| |#$R@@20|)) |#$R@@20|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@20| |#$T1@@20| |#$R@@20|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 9))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Trait$G T@U) (_module.Trait$H T@U) (|_module.Trait.F'$B| T@U) (|g#0| T@U) (|h#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.Trait.F_k#canCall| _module.Trait$G _module.Trait$H |_module.Trait.F'$B| |g#0| |h#0| |b#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |g#0| _module.Trait$G) ($IsBox |h#0| _module.Trait$H)) ($IsBox |b#0| |_module.Trait.F'$B|)))) ($Is DatatypeTypeType (_module.Trait.F_k _module.Trait$G _module.Trait$H |_module.Trait.F'$B| |g#0| |h#0| |b#0|) (Tclass._System.Tuple3 _module.Trait$G _module.Trait$H |_module.Trait.F'$B|)))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Trait.F_k _module.Trait$G _module.Trait$H |_module.Trait.F'$B| |g#0| |h#0| |b#0|))
))))
(assert (forall ((_module.Class$A@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Class _module.Class$A@@0) $h) ($IsAlloc refType |c#0| (Tclass._module.Class? _module.Class$A@@0) $h))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Class _module.Class$A@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Class? _module.Class$A@@0) $h))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.Trait$G@@0 T@U) (_module.Trait$H@@0 T@U) (|_module.Trait.F'$B@@0| T@U) (|g#0@@0| T@U) (|h#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (or (|_module.Trait.F_k#canCall| _module.Trait$G@@0 _module.Trait$H@@0 |_module.Trait.F'$B@@0| |g#0@@0| |h#0@@0| |b#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsBox |g#0@@0| _module.Trait$G@@0) ($IsAllocBox |g#0@@0| _module.Trait$G@@0 $Heap)) (and ($IsBox |h#0@@0| _module.Trait$H@@0) ($IsAllocBox |h#0@@0| _module.Trait$H@@0 $Heap))) (and ($IsBox |b#0@@0| |_module.Trait.F'$B@@0|) ($IsAllocBox |b#0@@0| |_module.Trait.F'$B@@0| $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.Trait.F_k _module.Trait$G@@0 _module.Trait$H@@0 |_module.Trait.F'$B@@0| |g#0@@0| |h#0@@0| |b#0@@0|) (Tclass._System.Tuple3 _module.Trait$G@@0 _module.Trait$H@@0 |_module.Trait.F'$B@@0|) $Heap))
 :qid |StaticMembersOfGenericTypesdfy.66:19|
 :skolemid |728|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Trait.F_k _module.Trait$G@@0 _module.Trait$H@@0 |_module.Trait.F'$B@@0| |g#0@@0| |h#0@@0| |b#0@@0|) (Tclass._System.Tuple3 _module.Trait$G@@0 _module.Trait$H@@0 |_module.Trait.F'$B@@0|) $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((f T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (t3@@2 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2) h@@0) (forall ((bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0@@0 t0@@3) ($IsAllocBox bx0@@0 t0@@3 h@@0)) (and ($IsBox bx1@@0 t1@@3) ($IsAllocBox bx1@@0 t1@@3 h@@0))) (and ($IsBox bx2@@0 t2@@2) ($IsAllocBox bx2@@0 t2@@2 h@@0))) (Requires3 t0@@3 t1@@3 t2@@2 t3@@2 h@@0 f bx0@@0 bx1@@0 bx2@@0)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 h@@0 f bx0@@0 bx1@@0 bx2@@0) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (|Set#IsMember| (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 h@@0 f bx0@@0 bx1@@0 bx2@@0) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (Apply3 t0@@3 t1@@3 t2@@2 t3@@2 h@@0 f bx0@@0 bx1@@0 bx2@@0))
 :pattern ( (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 h@@0 f bx0@@0 bx1@@0 bx2@@0))
))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2) h@@0))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$T1@@21| T@U) (|#$R@@21| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$T1@@22| T@U) (|#$R@@22| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$T1@@23| T@U) (|#$R@@23| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|))
)))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$T1@@24| T@U) (|#$R@@24| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$T1@@25| T@U) (|#$R@@25| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|)))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$T1@@26| T@U) (|#$R@@26| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|)))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@3 (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((_module.Class$A@@1 T@U) ($o T@U) ) (!  (=> ($Is refType $o (Tclass._module.Class? _module.Class$A@@1)) ($Is refType $o (Tclass._module.Trait? TBool _module.Class$A@@1)))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( ($Is refType $o (Tclass._module.Class? _module.Class$A@@1)))
)))
(assert (forall ((_module.Class$A@@2 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Class? _module.Class$A@@2)) ($IsBox bx@@4 (Tclass._module.Trait? TBool _module.Class$A@@2)))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Class? _module.Class$A@@2)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((_module.Class$A@@3 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.Class? _module.Class$A@@3) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.Class? _module.Class$A@@3) $h@@1))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@1 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@1 t0@@4) ($IsBox bx1@@1 t1@@4)) ($IsBox bx2@@1 t2@@3)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@3)))) (= (|Set#Equal| (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@0 bx0@@1 bx1@@1 bx2@@1) |Set#Empty|) (|Set#Equal| (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@0 bx0@@1 bx1@@1 bx2@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@0 bx0@@1 bx1@@1 bx2@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@0 bx0@@1 bx1@@1 bx2@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall ((f@@1 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (t3@@4 T@U) (u0@@7 T@U) (u1@@7 T@U) (u2@@6 T@U) (u3@@6 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4)) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 u0@@7) ($IsBox bx@@5 t0@@5))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsBox bx@@5 u0@@7))
 :pattern ( ($IsBox bx@@5 t0@@5))
))) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 u1@@7) ($IsBox bx@@6 t1@@5))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($IsBox bx@@6 u1@@7))
 :pattern ( ($IsBox bx@@6 t1@@5))
))) (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 u2@@6) ($IsBox bx@@7 t2@@4))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsBox bx@@7 u2@@6))
 :pattern ( ($IsBox bx@@7 t2@@4))
))) (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 t3@@4) ($IsBox bx@@8 u3@@6))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($IsBox bx@@8 t3@@4))
 :pattern ( ($IsBox bx@@8 u3@@6))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@7 u1@@7 u2@@6 u3@@6)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@7 u1@@7 u2@@6 u3@@6)))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$T1@@27| T@U) (|#$T2@@11| T@U) (|#$R@@27| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) (|x2#0| T@U) ) (!  (=> (and (and ($IsBox |x0#0@@0| |#$T0@@27|) ($IsBox |x1#0@@0| |#$T1@@27|)) ($IsBox |x2#0| |#$T2@@11|)) (Requires3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27| $OneHeap |f#0@@0| |x0#0@@0| |x1#0@@0| |x2#0|))
 :qid |unknown.0:0|
 :skolemid |606|
))))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|)))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Class$A@@4 T@U) (_module.Class.F$B T@U) (|a#0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Class.F#canCall| _module.Class$A@@4 _module.Class.F$B (Lit BoxType |a#0|) (Lit BoxType |b#0@@1|)) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0| _module.Class$A@@4) ($IsBox |b#0@@1| _module.Class.F$B)))) (= (_module.Class.F _module.Class$A@@4 _module.Class.F$B (Lit BoxType |a#0|) (Lit BoxType |b#0@@1|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| (Lit BoxType |a#0|) (Lit BoxType |b#0@@1|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |749|
 :pattern ( (_module.Class.F _module.Class$A@@4 _module.Class.F$B (Lit BoxType |a#0|) (Lit BoxType |b#0@@1|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Datatype$A T@U) (_module.Datatype.F$B T@U) (|a#0@@0| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.Datatype.F#canCall| _module.Datatype$A _module.Datatype.F$B (Lit BoxType |a#0@@0|) (Lit BoxType |b#0@@2|)) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0@@0| _module.Datatype$A) ($IsBox |b#0@@2| _module.Datatype.F$B)))) (= (_module.Datatype.F _module.Datatype$A _module.Datatype.F$B (Lit BoxType |a#0@@0|) (Lit BoxType |b#0@@2|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| (Lit BoxType |a#0@@0|) (Lit BoxType |b#0@@2|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |772|
 :pattern ( (_module.Datatype.F _module.Datatype$A _module.Datatype.F$B (Lit BoxType |a#0@@0|) (Lit BoxType |b#0@@2|)))
))))
(assert (forall (($bx T@U) (_module.Class$A@@5 T@U) (_module.Class.F$B@@0 T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) ) (! (= (|Set#IsMember| (Reads2 _module.Class$A@@5 _module.Class.F$B@@0 (Tclass._System.Tuple2 _module.Class$A@@5 _module.Class.F$B@@0) $heap (|_module.Class.F#Handle| _module.Class$A@@5 _module.Class.F$B@@0) |$fh$0x#0| |$fh$0x#1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( (|Set#IsMember| (Reads2 _module.Class$A@@5 _module.Class.F$B@@0 (Tclass._System.Tuple2 _module.Class$A@@5 _module.Class.F$B@@0) $heap (|_module.Class.F#Handle| _module.Class$A@@5 _module.Class.F$B@@0) |$fh$0x#0| |$fh$0x#1|) $bx))
)))
(assert (forall (($bx@@0 T@U) (_module.Datatype$A@@0 T@U) (_module.Datatype.F$B@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (|Set#IsMember| (Reads2 _module.Datatype$A@@0 _module.Datatype.F$B@@0 (Tclass._System.Tuple2 _module.Datatype$A@@0 _module.Datatype.F$B@@0) $heap@@0 (|_module.Datatype.F#Handle| _module.Datatype$A@@0 _module.Datatype.F$B@@0) |$fh$0x#0@@0| |$fh$0x#1@@0|) $bx@@0) false)
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( (|Set#IsMember| (Reads2 _module.Datatype$A@@0 _module.Datatype.F$B@@0 (Tclass._System.Tuple2 _module.Datatype$A@@0 _module.Datatype.F$B@@0) $heap@@0 (|_module.Datatype.F#Handle| _module.Datatype$A@@0 _module.Datatype.F$B@@0) |$fh$0x#0@@0| |$fh$0x#1@@0|) $bx@@0))
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
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (t2@@5 T@U) (t3@@5 T@U) (heap@@1 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (! (= (Apply3 t0@@6 t1@@6 t2@@5 t3@@5 heap@@1 (Handle3 h@@2 r@@1 rd@@0) bx0@@2 bx1@@2 bx2@@2) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType h@@2 heap@@1 bx0@@2 bx1@@2 bx2@@2))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (Apply3 t0@@6 t1@@6 t2@@5 t3@@5 heap@@1 (Handle3 h@@2 r@@1 rd@@0) bx0@@2 bx1@@2 bx2@@2))
)))
(assert (forall ((|#$T0@@28| T@U) (|#$T1@@28| T@U) (|#$T2@@12| T@U) (|#$R@@28| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@29| T@U) (|#$T2@@13| T@U) (|#$R@@29| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|)) Tagclass._System.___hPartialFunc3) (= (TagFamily (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|)) |tytagFamily$_#PartialFunc3|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@30| T@U) (|#$T2@@14| T@U) (|#$R@@30| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|)) Tagclass._System.___hTotalFunc3) (= (TagFamily (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|)) |tytagFamily$_#TotalFunc3|))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|))
)))
(assert (forall ((|#$T0@@31| T@U) (|#$T1@@31| T@U) (|#$R@@31| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|)) (forall ((|x0#0@@1| T@U) (|x1#0@@1| T@U) ) (!  (=> (and ($IsBox |x0#0@@1| |#$T0@@31|) ($IsBox |x1#0@@1| |#$T1@@31|)) (|Set#Equal| (Reads2 |#$T0@@31| |#$T1@@31| |#$R@@31| $OneHeap |f#0@@1| |x0#0@@1| |x1#0@@1|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (t2@@6 T@U) (t3@@6 T@U) (heap@@2 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@3 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType r@@2 heap@@2 bx0@@3 bx1@@3 bx2@@3)) (Requires3 t0@@7 t1@@7 t2@@6 t3@@6 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@3 bx2@@3))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (Requires3 t0@@7 t1@@7 t2@@6 t3@@6 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@3 bx2@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@8 T@U) (t2@@7 T@U) (heap@@3 T@U) (h@@4 T@U) (r@@3 T@U) (rd@@2 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx@@9 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@8 t1@@8 t2@@7 heap@@3 (Handle2 h@@4 r@@3 rd@@2) bx0@@4 bx1@@4) bx@@9) (|Set#IsMember| (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType rd@@2 heap@@3 bx0@@4 bx1@@4) bx@@9))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads2 t0@@8 t1@@8 t2@@7 heap@@3 (Handle2 h@@4 r@@3 rd@@2) bx0@@4 bx1@@4) bx@@9))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (_System.Tuple3.___hMake3_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@2) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@2 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |530|
)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_System.Tuple3.___hMake3_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((v T@U) (t0@@9 T@U) ) (! (= ($Is SetType v (TSet t0@@9)) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v bx@@10) ($IsBox bx@@10 t0@@9))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@10))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@9)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Class$A@@6 T@U) (_module.Class.F$B@@1 T@U) (|a#0@@1| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Class.F#canCall| _module.Class$A@@6 _module.Class.F$B@@1 |a#0@@1| |b#0@@3|) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0@@1| _module.Class$A@@6) ($IsBox |b#0@@3| _module.Class.F$B@@1)))) (= (_module.Class.F _module.Class$A@@6 _module.Class.F$B@@1 |a#0@@1| |b#0@@3|) (|#_System._tuple#2._#Make2| |a#0@@1| |b#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( (_module.Class.F _module.Class$A@@6 _module.Class.F$B@@1 |a#0@@1| |b#0@@3|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Datatype$A@@1 T@U) (_module.Datatype.F$B@@1 T@U) (|a#0@@2| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Datatype.F#canCall| _module.Datatype$A@@1 _module.Datatype.F$B@@1 |a#0@@2| |b#0@@4|) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0@@2| _module.Datatype$A@@1) ($IsBox |b#0@@4| _module.Datatype.F$B@@1)))) (= (_module.Datatype.F _module.Datatype$A@@1 _module.Datatype.F$B@@1 |a#0@@2| |b#0@@4|) (|#_System._tuple#2._#Make2| |a#0@@2| |b#0@@4|)))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( (_module.Datatype.F _module.Datatype$A@@1 _module.Datatype.F$B@@1 |a#0@@2| |b#0@@4|))
))))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@2 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@2 ly) (MapType1Select LayerTypeType A f@@2 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@2 ly))
)))
(assert (forall ((_module.Trait$G@@1 T@U) (_module.Trait$H@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Trait _module.Trait$G@@1 _module.Trait$H@@1))  (and ($Is refType |c#0@@1| (Tclass._module.Trait? _module.Trait$G@@1 _module.Trait$H@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Trait _module.Trait$G@@1 _module.Trait$H@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Trait? _module.Trait$G@@1 _module.Trait$H@@1)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Trait$G@@2 T@U) (_module.Trait$H@@2 T@U) (|_module.Trait.F'$B@@1| T@U) (|g#0@@1| T@U) (|h#0@@1| T@U) (|b#0@@5| T@U) ) (!  (=> (or (|_module.Trait.F_k#canCall| _module.Trait$G@@2 _module.Trait$H@@2 |_module.Trait.F'$B@@1| (Lit BoxType |g#0@@1|) (Lit BoxType |h#0@@1|) (Lit BoxType |b#0@@5|)) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |g#0@@1| _module.Trait$G@@2) ($IsBox |h#0@@1| _module.Trait$H@@2)) ($IsBox |b#0@@5| |_module.Trait.F'$B@@1|)))) (= (_module.Trait.F_k _module.Trait$G@@2 _module.Trait$H@@2 |_module.Trait.F'$B@@1| (Lit BoxType |g#0@@1|) (Lit BoxType |h#0@@1|) (Lit BoxType |b#0@@5|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| (Lit BoxType |g#0@@1|) (Lit BoxType |h#0@@1|) (Lit BoxType |b#0@@5|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |731|
 :pattern ( (_module.Trait.F_k _module.Trait$G@@2 _module.Trait$H@@2 |_module.Trait.F'$B@@1| (Lit BoxType |g#0@@1|) (Lit BoxType |h#0@@1|) (Lit BoxType |b#0@@5|)))
))))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@4)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h@@4) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@4)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@4))
)))
(assert (forall ((_module.Class$A@@7 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Class _module.Class$A@@7))  (and ($Is refType |c#0@@2| (Tclass._module.Class? _module.Class$A@@7)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Class _module.Class$A@@7)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Class? _module.Class$A@@7)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@5 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@5) ($IsAlloc T@@1 v@@0 t h@@5))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (t2@@8 T@U) (heap@@4 T@U) (h@@6 T@U) (r@@4 T@U) (rd@@3 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (! (= (Apply2 t0@@10 t1@@9 t2@@8 heap@@4 (Handle2 h@@6 r@@4 rd@@3) bx0@@5 bx1@@5) (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType h@@6 heap@@4 bx0@@5 bx1@@5))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply2 t0@@10 t1@@9 t2@@8 heap@@4 (Handle2 h@@6 r@@4 rd@@3) bx0@@5 bx1@@5))
)))
(assert (forall ((h@@7 T@U) (k@@0 T@U) (bx@@11 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@7 k@@0) (=> ($IsAllocBox bx@@11 t@@0 h@@7) ($IsAllocBox bx@@11 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@7 k@@0) ($IsAllocBox bx@@11 t@@0 h@@7))
)))
(assert (forall ((h@@8 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@8 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@8) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@8 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@8))
)))
(assert (forall ((_module.Class$A@@8 T@U) ) (!  (and (= (Tag (Tclass._module.Class _module.Class$A@@8)) Tagclass._module.Class) (= (TagFamily (Tclass._module.Class _module.Class$A@@8)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Tclass._module.Class _module.Class$A@@8))
)))
(assert (forall ((_module.Class$A@@9 T@U) ) (!  (and (= (Tag (Tclass._module.Class? _module.Class$A@@9)) Tagclass._module.Class?) (= (TagFamily (Tclass._module.Class? _module.Class$A@@9)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (Tclass._module.Class? _module.Class$A@@9))
)))
(assert (forall ((_module.Datatype$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Datatype _module.Datatype$A@@2)) Tagclass._module.Datatype) (= (TagFamily (Tclass._module.Datatype _module.Datatype$A@@2)) tytagFamily$Datatype))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (Tclass._module.Datatype _module.Datatype$A@@2))
)))
(assert (forall ((s T@U) (bx@@12 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@12) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@12))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.Class$A@@10 T@U) (_module.Class.F$B@@2 T@U) (|a#0@@3| T@U) (|b#0@@6| T@U) ) (!  (=> (and (or (|_module.Class.F#canCall| _module.Class$A@@10 _module.Class.F$B@@2 |a#0@@3| |b#0@@6|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |a#0@@3| _module.Class$A@@10) ($IsAllocBox |a#0@@3| _module.Class$A@@10 $Heap@@0)) (and ($IsBox |b#0@@6| _module.Class.F$B@@2) ($IsAllocBox |b#0@@6| _module.Class.F$B@@2 $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.Class.F _module.Class$A@@10 _module.Class.F$B@@2 |a#0@@3| |b#0@@6|) (Tclass._System.Tuple2 _module.Class$A@@10 _module.Class.F$B@@2) $Heap@@0))
 :qid |StaticMembersOfGenericTypesdfy.77:19|
 :skolemid |746|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Class.F _module.Class$A@@10 _module.Class.F$B@@2 |a#0@@3| |b#0@@6|) (Tclass._System.Tuple2 _module.Class$A@@10 _module.Class.F$B@@2) $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module.Datatype$A@@3 T@U) (_module.Datatype.F$B@@2 T@U) (|a#0@@4| T@U) (|b#0@@7| T@U) ) (!  (=> (and (or (|_module.Datatype.F#canCall| _module.Datatype$A@@3 _module.Datatype.F$B@@2 |a#0@@4| |b#0@@7|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |a#0@@4| _module.Datatype$A@@3) ($IsAllocBox |a#0@@4| _module.Datatype$A@@3 $Heap@@1)) (and ($IsBox |b#0@@7| _module.Datatype.F$B@@2) ($IsAllocBox |b#0@@7| _module.Datatype.F$B@@2 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.Datatype.F _module.Datatype$A@@3 _module.Datatype.F$B@@2 |a#0@@4| |b#0@@7|) (Tclass._System.Tuple2 _module.Datatype$A@@3 _module.Datatype.F$B@@2) $Heap@@1))
 :qid |StaticMembersOfGenericTypesdfy.88:19|
 :skolemid |769|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Datatype.F _module.Datatype$A@@3 _module.Datatype.F$B@@2 |a#0@@4| |b#0@@7|) (Tclass._System.Tuple2 _module.Datatype$A@@3 _module.Datatype.F$B@@2) $Heap@@1))
))))
(assert (forall ((_module.Trait$G@@3 T@U) (_module.Trait$H@@3 T@U) (|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| (Tclass._module.Trait _module.Trait$G@@3 _module.Trait$H@@3) $h@@5) ($IsAlloc refType |c#0@@3| (Tclass._module.Trait? _module.Trait$G@@3 _module.Trait$H@@3) $h@@5))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.Trait _module.Trait$G@@3 _module.Trait$H@@3) $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.Trait? _module.Trait$G@@3 _module.Trait$H@@3) $h@@5))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$T1@@32| T@U) (|#$T2@@15| T@U) (|#$R@@32| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|)))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$T1@@33| T@U) (|#$T2@@16| T@U) (|#$R@@33| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|)))
)))
(assert (forall ((|#$T0@@34| T@U) (|#$T1@@34| T@U) (|#$T2@@17| T@U) (|#$R@@34| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@15)) bx@@15) ($Is HandleTypeType ($Unbox HandleTypeType bx@@15) (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsBox bx@@15 (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|)))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@16 Tclass._System.object?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@17 Tclass._System.object))
)))
(assert (forall ((_module.Class$A@@11 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._module.Class? _module.Class$A@@11))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._module.Class? _module.Class$A@@11))))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( ($Is refType $o@@2 (Tclass._module.Class? _module.Class$A@@11)))
)))
(assert (forall ((_module.Class$A@@12 T@U) (_module.Class.F$B@@3 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) ) (! (= (Requires2 _module.Class$A@@12 _module.Class.F$B@@3 (Tclass._System.Tuple2 _module.Class$A@@12 _module.Class.F$B@@3) $heap@@1 (|_module.Class.F#Handle| _module.Class$A@@12 _module.Class.F$B@@3) |$fh$0x#0@@1| |$fh$0x#1@@1|) (|_module.Class.F#requires| _module.Class$A@@12 _module.Class.F$B@@3 |$fh$0x#0@@1| |$fh$0x#1@@1|))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( (Requires2 _module.Class$A@@12 _module.Class.F$B@@3 (Tclass._System.Tuple2 _module.Class$A@@12 _module.Class.F$B@@3) $heap@@1 (|_module.Class.F#Handle| _module.Class$A@@12 _module.Class.F$B@@3) |$fh$0x#0@@1| |$fh$0x#1@@1|))
)))
(assert (forall ((_module.Datatype$A@@4 T@U) (_module.Datatype.F$B@@3 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (Requires2 _module.Datatype$A@@4 _module.Datatype.F$B@@3 (Tclass._System.Tuple2 _module.Datatype$A@@4 _module.Datatype.F$B@@3) $heap@@2 (|_module.Datatype.F#Handle| _module.Datatype$A@@4 _module.Datatype.F$B@@3) |$fh$0x#0@@2| |$fh$0x#1@@2|) (|_module.Datatype.F#requires| _module.Datatype$A@@4 _module.Datatype.F$B@@3 |$fh$0x#0@@2| |$fh$0x#1@@2|))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (Requires2 _module.Datatype$A@@4 _module.Datatype.F$B@@3 (Tclass._System.Tuple2 _module.Datatype$A@@4 _module.Datatype.F$B@@3) $heap@@2 (|_module.Datatype.F#Handle| _module.Datatype$A@@4 _module.Datatype.F$B@@3) |$fh$0x#0@@2| |$fh$0x#1@@2|))
)))
(assert (forall ((_module.Class$A@@13 T@U) (bx@@18 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx@@18 (Tclass._module.Class? _module.Class$A@@13) $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx@@18 (Tclass._module.Trait? TBool _module.Class$A@@13) $h@@6))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( ($IsAllocBox bx@@18 (Tclass._module.Class? _module.Class$A@@13) $h@@6))
)))
(assert (forall ((_module.Class$A@@14 T@U) ($o@@3 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@3 (Tclass._module.Class? _module.Class$A@@14) $heap@@3) ($IsAlloc refType $o@@3 (Tclass._module.Trait? TBool _module.Class$A@@14) $heap@@3))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Class? _module.Class$A@@14) $heap@@3))
)))
(assert (forall ((_module.Trait$G@@4 T@U) (_module.Trait$H@@4 T@U) (|_module.Trait.F'$B@@2| T@U) ($heap@@4 T@U) (|$fh$0x#0@@3| T@U) (|$fh$0x#1@@3| T@U) (|$fh$0x#2| T@U) ) (! (= (_module.Trait.F_k _module.Trait$G@@4 _module.Trait$H@@4 |_module.Trait.F'$B@@2| |$fh$0x#0@@3| |$fh$0x#1@@3| |$fh$0x#2|) ($Unbox DatatypeTypeType (Apply3 _module.Trait$G@@4 _module.Trait$H@@4 |_module.Trait.F'$B@@2| (Tclass._System.Tuple3 _module.Trait$G@@4 _module.Trait$H@@4 |_module.Trait.F'$B@@2|) $heap@@4 (|_module.Trait.F_k#Handle| _module.Trait$G@@4 _module.Trait$H@@4 |_module.Trait.F'$B@@2|) |$fh$0x#0@@3| |$fh$0x#1@@3| |$fh$0x#2|)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (_module.Trait.F_k _module.Trait$G@@4 _module.Trait$H@@4 |_module.Trait.F'$B@@2| |$fh$0x#0@@3| |$fh$0x#1@@3| |$fh$0x#2|) ($IsGoodHeap $heap@@4))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@4))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (_System.Tuple3.___hMake3_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall ((f@@3 T@U) (t0@@11 T@U) (t1@@10 T@U) (t2@@9 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@9) h@@9) (forall ((bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@6 t0@@11) ($IsAllocBox bx0@@6 t0@@11 h@@9)) (and ($IsBox bx1@@6 t1@@10) ($IsAllocBox bx1@@6 t1@@10 h@@9))) (Requires2 t0@@11 t1@@10 t2@@9 h@@9 f@@3 bx0@@6 bx1@@6)) (forall ((r@@5 T@U) ) (!  (=> (and (or (not (= r@@5 null)) (not true)) (|Set#IsMember| (Reads2 t0@@11 t1@@10 t2@@9 h@@9 f@@3 bx0@@6 bx1@@6) ($Box refType r@@5))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@5) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@11 t1@@10 t2@@9 h@@9 f@@3 bx0@@6 bx1@@6) ($Box refType r@@5)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@11 t1@@10 t2@@9 h@@9 f@@3 bx0@@6 bx1@@6))
 :pattern ( (Reads2 t0@@11 t1@@10 t2@@9 h@@9 f@@3 bx0@@6 bx1@@6))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@9) h@@9))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((f@@4 T@U) (t0@@12 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@7 T@U) ) (! (= ($Is HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@12 t1@@11 t2@@10 t3@@7)) (forall ((h@@10 T@U) (bx0@@7 T@U) (bx1@@7 T@U) (bx2@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@10) (and (and ($IsBox bx0@@7 t0@@12) ($IsBox bx1@@7 t1@@11)) ($IsBox bx2@@4 t2@@10))) (Requires3 t0@@12 t1@@11 t2@@10 t3@@7 h@@10 f@@4 bx0@@7 bx1@@7 bx2@@4)) ($IsBox (Apply3 t0@@12 t1@@11 t2@@10 t3@@7 h@@10 f@@4 bx0@@7 bx1@@7 bx2@@4) t3@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |579|
 :pattern ( (Apply3 t0@@12 t1@@11 t2@@10 t3@@7 h@@10 f@@4 bx0@@7 bx1@@7 bx2@@4))
)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@12 t1@@11 t2@@10 t3@@7)))
)))
(assert (forall ((_module.Trait$G@@5 T@U) (_module.Trait$H@@5 T@U) ($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.Trait? _module.Trait$G@@5 _module.Trait$H@@5) $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.Trait? _module.Trait$G@@5 _module.Trait$H@@5) $h@@7))
)))
(assert (forall (($bx@@1 T@U) (_module.Trait$G@@6 T@U) (_module.Trait$H@@6 T@U) (|_module.Trait.F'$B@@3| T@U) ($heap@@5 T@U) (|$fh$0x#0@@4| T@U) (|$fh$0x#1@@4| T@U) (|$fh$0x#2@@0| T@U) ) (! (= (|Set#IsMember| (Reads3 _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3| (Tclass._System.Tuple3 _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3|) $heap@@5 (|_module.Trait.F_k#Handle| _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3|) |$fh$0x#0@@4| |$fh$0x#1@@4| |$fh$0x#2@@0|) $bx@@1) false)
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (|Set#IsMember| (Reads3 _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3| (Tclass._System.Tuple3 _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3|) $heap@@5 (|_module.Trait.F_k#Handle| _module.Trait$G@@6 _module.Trait$H@@6 |_module.Trait.F'$B@@3|) |$fh$0x#0@@4| |$fh$0x#1@@4| |$fh$0x#2@@0|) $bx@@1))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |873|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |StaticMembersOfGenericTypesdfy.13:9|
 :skolemid |875|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((_module.Trait$G@@7 T@U) (_module.Trait$H@@7 T@U) (|_module.Trait.F'$B@@4| T@U) (|g#0@@2| T@U) (|h#0@@2| T@U) (|b#0@@8| T@U) ) (!  (=> (and (and ($IsBox |g#0@@2| _module.Trait$G@@7) ($IsBox |h#0@@2| _module.Trait$H@@7)) ($IsBox |b#0@@8| |_module.Trait.F'$B@@4|)) (= (|_module.Trait.F_k#requires| _module.Trait$G@@7 _module.Trait$H@@7 |_module.Trait.F'$B@@4| |g#0@@2| |h#0@@2| |b#0@@8|) true))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (|_module.Trait.F_k#requires| _module.Trait$G@@7 _module.Trait$H@@7 |_module.Trait.F'$B@@4| |g#0@@2| |h#0@@2| |b#0@@8|))
)))
(assert (forall ((f@@5 T@U) (t0@@13 T@U) (t1@@12 T@U) (t2@@11 T@U) ) (! (= ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@13 t1@@12 t2@@11)) (forall ((h@@11 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@11) (and ($IsBox bx0@@8 t0@@13) ($IsBox bx1@@8 t1@@12))) (Requires2 t0@@13 t1@@12 t2@@11 h@@11 f@@5 bx0@@8 bx1@@8)) ($IsBox (Apply2 t0@@13 t1@@12 t2@@11 h@@11 f@@5 bx0@@8 bx1@@8) t2@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@13 t1@@12 t2@@11 h@@11 f@@5 bx0@@8 bx1@@8))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@13 t1@@12 t2@@11)))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (t2@@12 T@U) (t3@@8 T@U) (heap@@5 T@U) (f@@6 T@U) (bx0@@9 T@U) (bx1@@9 T@U) (bx2@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@5) (and (and (and ($IsBox bx0@@9 t0@@14) ($IsBox bx1@@9 t1@@13)) ($IsBox bx2@@5 t2@@12)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc3 t0@@14 t1@@13 t2@@12 t3@@8)))) (|Set#Equal| (Reads3 t0@@14 t1@@13 t2@@12 t3@@8 $OneHeap f@@6 bx0@@9 bx1@@9 bx2@@5) |Set#Empty|)) (= (Requires3 t0@@14 t1@@13 t2@@12 t3@@8 $OneHeap f@@6 bx0@@9 bx1@@9 bx2@@5) (Requires3 t0@@14 t1@@13 t2@@12 t3@@8 heap@@5 f@@6 bx0@@9 bx1@@9 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (Requires3 t0@@14 t1@@13 t2@@12 t3@@8 $OneHeap f@@6 bx0@@9 bx1@@9 bx2@@5) ($IsGoodHeap heap@@5))
 :pattern ( (Requires3 t0@@14 t1@@13 t2@@12 t3@@8 heap@@5 f@@6 bx0@@9 bx1@@9 bx2@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (t2@@13 T@U) (heap@@6 T@U) (f@@7 T@U) (bx0@@10 T@U) (bx1@@10 T@U) ) (!  (=> (and ($IsGoodHeap heap@@6) (and (and ($IsBox bx0@@10 t0@@15) ($IsBox bx1@@10 t1@@14)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@15 t1@@14 t2@@13)))) (= (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@13 $OneHeap f@@7 bx0@@10 bx1@@10) |Set#Empty|) (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@13 heap@@6 f@@7 bx0@@10 bx1@@10) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@13 $OneHeap f@@7 bx0@@10 bx1@@10) ($IsGoodHeap heap@@6))
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@13 heap@@6 f@@7 bx0@@10 bx1@@10))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@8 T@U) (t0@@16 T@U) (t1@@15 T@U) (t2@@14 T@U) (h@@12 T@U) ) (!  (=> (and ($IsGoodHeap h@@12) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@16 t1@@15 t2@@14) h@@12)) (forall ((bx0@@11 T@U) (bx1@@11 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@11 t0@@16 h@@12) ($IsAllocBox bx1@@11 t1@@15 h@@12)) (Requires2 t0@@16 t1@@15 t2@@14 h@@12 f@@8 bx0@@11 bx1@@11)) ($IsAllocBox (Apply2 t0@@16 t1@@15 t2@@14 h@@12 f@@8 bx0@@11 bx1@@11) t2@@14 h@@12))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@16 t1@@15 t2@@14 h@@12 f@@8 bx0@@11 bx1@@11))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@16 t1@@15 t2@@14) h@@12))
)))
(assert (forall ((_module.Class$A@@15 T@U) (_module.Class.F$B@@4 T@U) ($heap@@6 T@U) (|$fh$0x#0@@5| T@U) (|$fh$0x#1@@5| T@U) ) (! (= (Apply2 _module.Class$A@@15 _module.Class.F$B@@4 (Tclass._System.Tuple2 _module.Class$A@@15 _module.Class.F$B@@4) $heap@@6 (|_module.Class.F#Handle| _module.Class$A@@15 _module.Class.F$B@@4) |$fh$0x#0@@5| |$fh$0x#1@@5|) ($Box DatatypeTypeType (_module.Class.F _module.Class$A@@15 _module.Class.F$B@@4 |$fh$0x#0@@5| |$fh$0x#1@@5|)))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (Apply2 _module.Class$A@@15 _module.Class.F$B@@4 (Tclass._System.Tuple2 _module.Class$A@@15 _module.Class.F$B@@4) $heap@@6 (|_module.Class.F#Handle| _module.Class$A@@15 _module.Class.F$B@@4) |$fh$0x#0@@5| |$fh$0x#1@@5|))
)))
(assert (forall ((_module.Datatype$A@@5 T@U) (_module.Datatype.F$B@@4 T@U) ($heap@@7 T@U) (|$fh$0x#0@@6| T@U) (|$fh$0x#1@@6| T@U) ) (! (= (Apply2 _module.Datatype$A@@5 _module.Datatype.F$B@@4 (Tclass._System.Tuple2 _module.Datatype$A@@5 _module.Datatype.F$B@@4) $heap@@7 (|_module.Datatype.F#Handle| _module.Datatype$A@@5 _module.Datatype.F$B@@4) |$fh$0x#0@@6| |$fh$0x#1@@6|) ($Box DatatypeTypeType (_module.Datatype.F _module.Datatype$A@@5 _module.Datatype.F$B@@4 |$fh$0x#0@@6| |$fh$0x#1@@6|)))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( (Apply2 _module.Datatype$A@@5 _module.Datatype.F$B@@4 (Tclass._System.Tuple2 _module.Datatype$A@@5 _module.Datatype.F$B@@4) $heap@@7 (|_module.Datatype.F#Handle| _module.Datatype$A@@5 _module.Datatype.F$B@@4) |$fh$0x#0@@6| |$fh$0x#1@@6|))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 TInt) (and (= ($Box intType ($Unbox intType bx@@19)) bx@@19) ($Is intType ($Unbox intType bx@@19) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@19 TInt))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 TBool) (and (= ($Box boolType ($Unbox boolType bx@@20)) bx@@20) ($Is boolType ($Unbox boolType bx@@20) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@20 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Trait$G@@8 T@U) (_module.Trait$H@@8 T@U) (|_module.Trait.F'$B@@5| T@U) (|g#0@@3| T@U) (|h#0@@3| T@U) (|b#0@@9| T@U) ) (!  (=> (or (|_module.Trait.F_k#canCall| _module.Trait$G@@8 _module.Trait$H@@8 |_module.Trait.F'$B@@5| |g#0@@3| |h#0@@3| |b#0@@9|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |g#0@@3| _module.Trait$G@@8) ($IsBox |h#0@@3| _module.Trait$H@@8)) ($IsBox |b#0@@9| |_module.Trait.F'$B@@5|)))) (= (_module.Trait.F_k _module.Trait$G@@8 _module.Trait$H@@8 |_module.Trait.F'$B@@5| |g#0@@3| |h#0@@3| |b#0@@9|) (|#_System._tuple#3._#Make3| |g#0@@3| |h#0@@3| |b#0@@9|)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (_module.Trait.F_k _module.Trait$G@@8 _module.Trait$H@@8 |_module.Trait.F'$B@@5| |g#0@@3| |h#0@@3| |b#0@@9|))
))))
(assert (forall ((v@@3 T@U) (t0@@17 T@U) (h@@13 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@17) h@@13) (forall ((bx@@21 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@21) ($IsAllocBox bx@@21 t0@@17 h@@13))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@21))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@17) h@@13))
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
(assert (forall ((_module.Trait$G@@9 T@U) (_module.Trait$H@@9 T@U) ) (! (= (Tclass._module.Trait_0 (Tclass._module.Trait _module.Trait$G@@9 _module.Trait$H@@9)) _module.Trait$G@@9)
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (Tclass._module.Trait _module.Trait$G@@9 _module.Trait$H@@9))
)))
(assert (forall ((_module.Trait$G@@10 T@U) (_module.Trait$H@@10 T@U) ) (! (= (Tclass._module.Trait_1 (Tclass._module.Trait _module.Trait$G@@10 _module.Trait$H@@10)) _module.Trait$H@@10)
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (Tclass._module.Trait _module.Trait$G@@10 _module.Trait$H@@10))
)))
(assert (forall ((_module.Trait$G@@11 T@U) (_module.Trait$H@@11 T@U) ) (! (= (Tclass._module.Trait?_0 (Tclass._module.Trait? _module.Trait$G@@11 _module.Trait$H@@11)) _module.Trait$G@@11)
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (Tclass._module.Trait? _module.Trait$G@@11 _module.Trait$H@@11))
)))
(assert (forall ((_module.Trait$G@@12 T@U) (_module.Trait$H@@12 T@U) ) (! (= (Tclass._module.Trait?_1 (Tclass._module.Trait? _module.Trait$G@@12 _module.Trait$H@@12)) _module.Trait$H@@12)
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (Tclass._module.Trait? _module.Trait$G@@12 _module.Trait$H@@12))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
)))
(assert (forall ((_module.Trait$G@@13 T@U) (_module.Trait$H@@13 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._module.Trait? _module.Trait$G@@13 _module.Trait$H@@13))  (or (= $o@@6 null) (implements$_module.Trait (dtype $o@@6) _module.Trait$G@@13 _module.Trait$H@@13)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( ($Is refType $o@@6 (Tclass._module.Trait? _module.Trait$G@@13 _module.Trait$H@@13)))
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
(assert (forall ((_module.Class$A@@16 T@U) ) (! (= (Tclass._module.Class_0 (Tclass._module.Class _module.Class$A@@16)) _module.Class$A@@16)
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (Tclass._module.Class _module.Class$A@@16))
)))
(assert (forall ((_module.Class$A@@17 T@U) ) (! (= (Tclass._module.Class?_0 (Tclass._module.Class? _module.Class$A@@17)) _module.Class$A@@17)
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (Tclass._module.Class? _module.Class$A@@17))
)))
(assert (forall ((_module.Datatype$A@@6 T@U) ) (! (= (Tclass._module.Datatype_0 (Tclass._module.Datatype _module.Datatype$A@@6)) _module.Datatype$A@@6)
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (Tclass._module.Datatype _module.Datatype$A@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert (forall ((t0@@18 T@U) (t1@@16 T@U) (t2@@15 T@U) (heap@@7 T@U) (f@@9 T@U) (bx0@@12 T@U) (bx1@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@7) (and (and ($IsBox bx0@@12 t0@@18) ($IsBox bx1@@12 t1@@16)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@18 t1@@16 t2@@15)))) (|Set#Equal| (Reads2 t0@@18 t1@@16 t2@@15 $OneHeap f@@9 bx0@@12 bx1@@12) |Set#Empty|)) (= (Requires2 t0@@18 t1@@16 t2@@15 $OneHeap f@@9 bx0@@12 bx1@@12) (Requires2 t0@@18 t1@@16 t2@@15 heap@@7 f@@9 bx0@@12 bx1@@12)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@18 t1@@16 t2@@15 $OneHeap f@@9 bx0@@12 bx1@@12) ($IsGoodHeap heap@@7))
 :pattern ( (Requires2 t0@@18 t1@@16 t2@@15 heap@@7 f@@9 bx0@@12 bx1@@12))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) (|$l#0#y#0@@0| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@2|) |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|) |l#0@@2|)
 :qid |StaticMembersOfGenericTypesdfy.13:9|
 :skolemid |874|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@2|) |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|))
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
(assert (forall ((f@@10 T@U) (t0@@19 T@U) (t1@@17 T@U) (t2@@16 T@U) (u0@@8 T@U) (u1@@8 T@U) (u2@@7 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@19 t1@@17 t2@@16)) (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 u0@@8) ($IsBox bx@@22 t0@@19))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@22 u0@@8))
 :pattern ( ($IsBox bx@@22 t0@@19))
))) (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 u1@@8) ($IsBox bx@@23 t1@@17))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@23 u1@@8))
 :pattern ( ($IsBox bx@@23 t1@@17))
))) (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 t2@@16) ($IsBox bx@@24 u2@@7))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@24 t2@@16))
 :pattern ( ($IsBox bx@@24 u2@@7))
))) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 u0@@8 u1@@8 u2@@7)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@19 t1@@17 t2@@16)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 u0@@8 u1@@8 u2@@7)))
)))
(assert (forall ((f@@11 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@11 ($LS ly@@0)) (AtLayer A@@0 f@@11 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@11 ($LS ly@@0)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Class$A@@18 T@U) (_module.Class.F$B@@5 T@U) (|a#0@@5| T@U) (|b#0@@10| T@U) ) (!  (=> (or (|_module.Class.F#canCall| _module.Class$A@@18 _module.Class.F$B@@5 |a#0@@5| |b#0@@10|) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0@@5| _module.Class$A@@18) ($IsBox |b#0@@10| _module.Class.F$B@@5)))) ($Is DatatypeTypeType (_module.Class.F _module.Class$A@@18 _module.Class.F$B@@5 |a#0@@5| |b#0@@10|) (Tclass._System.Tuple2 _module.Class$A@@18 _module.Class.F$B@@5)))
 :qid |unknown.0:0|
 :skolemid |745|
 :pattern ( (_module.Class.F _module.Class$A@@18 _module.Class.F$B@@5 |a#0@@5| |b#0@@10|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Datatype$A@@7 T@U) (_module.Datatype.F$B@@5 T@U) (|a#0@@6| T@U) (|b#0@@11| T@U) ) (!  (=> (or (|_module.Datatype.F#canCall| _module.Datatype$A@@7 _module.Datatype.F$B@@5 |a#0@@6| |b#0@@11|) (and (< 0 $FunctionContextHeight) (and ($IsBox |a#0@@6| _module.Datatype$A@@7) ($IsBox |b#0@@11| _module.Datatype.F$B@@5)))) ($Is DatatypeTypeType (_module.Datatype.F _module.Datatype$A@@7 _module.Datatype.F$B@@5 |a#0@@6| |b#0@@11|) (Tclass._System.Tuple2 _module.Datatype$A@@7 _module.Datatype.F$B@@5)))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( (_module.Datatype.F _module.Datatype$A@@7 _module.Datatype.F$B@@5 |a#0@@6| |b#0@@11|))
))))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@25)) bx@@25) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@25) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((_module.Trait$G@@14 T@U) (_module.Trait$H@@14 T@U) (bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (Tclass._module.Trait _module.Trait$G@@14 _module.Trait$H@@14)) (and (= ($Box refType ($Unbox refType bx@@26)) bx@@26) ($Is refType ($Unbox refType bx@@26) (Tclass._module.Trait _module.Trait$G@@14 _module.Trait$H@@14))))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsBox bx@@26 (Tclass._module.Trait _module.Trait$G@@14 _module.Trait$H@@14)))
)))
(assert (forall ((_module.Trait$G@@15 T@U) (_module.Trait$H@@15 T@U) (bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 (Tclass._module.Trait? _module.Trait$G@@15 _module.Trait$H@@15)) (and (= ($Box refType ($Unbox refType bx@@27)) bx@@27) ($Is refType ($Unbox refType bx@@27) (Tclass._module.Trait? _module.Trait$G@@15 _module.Trait$H@@15))))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( ($IsBox bx@@27 (Tclass._module.Trait? _module.Trait$G@@15 _module.Trait$H@@15)))
)))
(assert (forall ((f@@12 T@U) (t0@@20 T@U) (t1@@18 T@U) (t2@@17 T@U) (t3@@9 T@U) (h@@14 T@U) ) (!  (=> (and ($IsGoodHeap h@@14) ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc3 t0@@20 t1@@18 t2@@17 t3@@9) h@@14)) (forall ((bx0@@13 T@U) (bx1@@13 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@13 t0@@20 h@@14) ($IsAllocBox bx1@@13 t1@@18 h@@14)) ($IsAllocBox bx2@@6 t2@@17 h@@14)) (Requires3 t0@@20 t1@@18 t2@@17 t3@@9 h@@14 f@@12 bx0@@13 bx1@@13 bx2@@6)) ($IsAllocBox (Apply3 t0@@20 t1@@18 t2@@17 t3@@9 h@@14 f@@12 bx0@@13 bx1@@13 bx2@@6) t3@@9 h@@14))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (Apply3 t0@@20 t1@@18 t2@@17 t3@@9 h@@14 f@@12 bx0@@13 bx1@@13 bx2@@6))
)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc3 t0@@20 t1@@18 t2@@17 t3@@9) h@@14))
)))
(assert  (and (forall ((t0@@21 T@T) (t1@@19 T@T) (t2@@18 T@T) (val@@10 T@U) (m@@10 T@U) (x0@@10 T@U) (x1@@8 T@U) ) (! (= (MapType3Select t0@@21 t1@@19 t2@@18 (MapType3Store t0@@21 t1@@19 t2@@18 m@@10 x0@@10 x1@@8 val@@10) x0@@10 x1@@8) val@@10)
 :qid |mapAx0:MapType3Select|
 :weight 0
)) (and (forall ((u0@@9 T@T) (u1@@9 T@T) (u2@@8 T@T) (val@@11 T@U) (m@@11 T@U) (x0@@11 T@U) (x1@@9 T@U) (y0@@7 T@U) (y1@@6 T@U) ) (!  (or (= x0@@11 y0@@7) (= (MapType3Select u0@@9 u1@@9 u2@@8 (MapType3Store u0@@9 u1@@9 u2@@8 m@@11 x0@@11 x1@@9 val@@11) y0@@7 y1@@6) (MapType3Select u0@@9 u1@@9 u2@@8 m@@11 y0@@7 y1@@6)))
 :qid |mapAx1:MapType3Select:0|
 :weight 0
)) (forall ((u0@@10 T@T) (u1@@10 T@T) (u2@@9 T@T) (val@@12 T@U) (m@@12 T@U) (x0@@12 T@U) (x1@@10 T@U) (y0@@8 T@U) (y1@@7 T@U) ) (!  (or (= x1@@10 y1@@7) (= (MapType3Select u0@@10 u1@@10 u2@@9 (MapType3Store u0@@10 u1@@10 u2@@9 m@@12 x0@@12 x1@@10 val@@12) y0@@8 y1@@7) (MapType3Select u0@@10 u1@@10 u2@@9 m@@12 y0@@8 y1@@7)))
 :qid |mapAx1:MapType3Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType3Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |870|
 :pattern ( (MapType3Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((|#$T0@@35| T@U) (|#$T1@@35| T@U) (|#$R@@35| T@U) (|f#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@8) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@8))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@8))
)))
(assert (forall ((|#$T0@@36| T@U) (|#$T1@@36| T@U) (|#$R@@36| T@U) (|f#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@9) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@9))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@9))
)))
(assert (forall ((_module.Trait$G@@16 T@U) (_module.Trait$H@@16 T@U) (|_module.Trait.F'$B@@6| T@U) ($heap@@8 T@U) (|$fh$0x#0@@7| T@U) (|$fh$0x#1@@7| T@U) (|$fh$0x#2@@1| T@U) ) (! (= (Requires3 _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6| (Tclass._System.Tuple3 _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6|) $heap@@8 (|_module.Trait.F_k#Handle| _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6|) |$fh$0x#0@@7| |$fh$0x#1@@7| |$fh$0x#2@@1|) (|_module.Trait.F_k#requires| _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6| |$fh$0x#0@@7| |$fh$0x#1@@7| |$fh$0x#2@@1|))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (Requires3 _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6| (Tclass._System.Tuple3 _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6|) $heap@@8 (|_module.Trait.F_k#Handle| _module.Trait$G@@16 _module.Trait$H@@16 |_module.Trait.F'$B@@6|) |$fh$0x#0@@7| |$fh$0x#1@@7| |$fh$0x#2@@1|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((_module.Trait$G@@17 T@U) (_module.Trait$H@@17 T@U) ) (!  (and (= (Tag (Tclass._module.Trait _module.Trait$G@@17 _module.Trait$H@@17)) Tagclass._module.Trait) (= (TagFamily (Tclass._module.Trait _module.Trait$G@@17 _module.Trait$H@@17)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (Tclass._module.Trait _module.Trait$G@@17 _module.Trait$H@@17))
)))
(assert (forall ((_module.Trait$G@@18 T@U) (_module.Trait$H@@18 T@U) ) (!  (and (= (Tag (Tclass._module.Trait? _module.Trait$G@@18 _module.Trait$H@@18)) Tagclass._module.Trait?) (= (TagFamily (Tclass._module.Trait? _module.Trait$G@@18 _module.Trait$H@@18)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (Tclass._module.Trait? _module.Trait$G@@18 _module.Trait$H@@18))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|$l#2#heap#0| T@U) (|$l#2#x#0| T@U) (|$l#2#y#0| T@U) (|$l#2#z#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#8| |l#0@@4| |l#1@@1| |l#2@@0|) |$l#2#heap#0| |$l#2#x#0| |$l#2#y#0| |$l#2#z#0|))  (and (and ($IsBox |$l#2#x#0| |l#0@@4|) ($IsBox |$l#2#y#0| |l#1@@1|)) ($IsBox |$l#2#z#0| |l#2@@0|)))
 :qid |DafnyPreludebpl.21:1|
 :skolemid |877|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#8| |l#0@@4| |l#1@@1| |l#2@@0|) |$l#2#heap#0| |$l#2#x#0| |$l#2#y#0| |$l#2#z#0|))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((t0@@22 T@U) (t1@@20 T@U) (t2@@19 T@U) (h0 T@U) (h1 T@U) (f@@13 T@U) (bx0@@14 T@U) (bx1@@14 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@14 t0@@22) ($IsBox bx1@@14 t1@@20)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@22 t1@@20 t2@@19)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@22 t1@@20 t2@@19 h0 f@@13 bx0@@14 bx1@@14) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@22 t1@@20 t2@@19 h0 f@@13 bx0@@14 bx1@@14) (Requires2 t0@@22 t1@@20 t2@@19 h1 f@@13 bx0@@14 bx1@@14)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@22 t1@@20 t2@@19 h1 f@@13 bx0@@14 bx1@@14))
)))
(assert (forall ((t0@@23 T@U) (t1@@21 T@U) (t2@@20 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@14 T@U) (bx0@@15 T@U) (bx1@@15 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@15 t0@@23) ($IsBox bx1@@15 t1@@21)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc2 t0@@23 t1@@21 t2@@20)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads2 t0@@23 t1@@21 t2@@20 h1@@0 f@@14 bx0@@15 bx1@@15) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@23 t1@@21 t2@@20 h0@@0 f@@14 bx0@@15 bx1@@15) (Requires2 t0@@23 t1@@21 t2@@20 h1@@0 f@@14 bx0@@15 bx1@@15)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@23 t1@@21 t2@@20 h1@@0 f@@14 bx0@@15 bx1@@15))
)))
(assert (forall ((t0@@24 T@U) (t1@@22 T@U) (t2@@21 T@U) (t3@@10 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@15 T@U) (bx0@@16 T@U) (bx1@@16 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and (and ($IsBox bx0@@16 t0@@24) ($IsBox bx1@@16 t1@@22)) ($IsBox bx2@@7 t2@@21)) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc3 t0@@24 t1@@22 t2@@21 t3@@10)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads3 t0@@24 t1@@22 t2@@21 t3@@10 h0@@1 f@@15 bx0@@16 bx1@@16 bx2@@7) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |569|
))) (= (Requires3 t0@@24 t1@@22 t2@@21 t3@@10 h0@@1 f@@15 bx0@@16 bx1@@16 bx2@@7) (Requires3 t0@@24 t1@@22 t2@@21 t3@@10 h1@@1 f@@15 bx0@@16 bx1@@16 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Requires3 t0@@24 t1@@22 t2@@21 t3@@10 h1@@1 f@@15 bx0@@16 bx1@@16 bx2@@7))
)))
(assert (forall ((t0@@25 T@U) (t1@@23 T@U) (t2@@22 T@U) (t3@@11 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@16 T@U) (bx0@@17 T@U) (bx1@@17 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and (and ($IsBox bx0@@17 t0@@25) ($IsBox bx1@@17 t1@@23)) ($IsBox bx2@@8 t2@@22)) ($Is HandleTypeType f@@16 (Tclass._System.___hFunc3 t0@@25 t1@@23 t2@@22 t3@@11)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads3 t0@@25 t1@@23 t2@@22 t3@@11 h1@@2 f@@16 bx0@@17 bx1@@17 bx2@@8) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |571|
))) (= (Requires3 t0@@25 t1@@23 t2@@22 t3@@11 h0@@2 f@@16 bx0@@17 bx1@@17 bx2@@8) (Requires3 t0@@25 t1@@23 t2@@22 t3@@11 h1@@2 f@@16 bx0@@17 bx1@@17 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Requires3 t0@@25 t1@@23 t2@@22 t3@@11 h1@@2 f@@16 bx0@@17 bx1@@17 bx2@@8))
)))
(assert (forall ((bx@@28 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@28 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@28)) bx@@28) ($Is SetType ($Unbox SetType bx@@28) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@28 (TSet t@@5)))
)))
(assert (forall ((_module.Class$A@@19 T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass._module.Class _module.Class$A@@19)) (and (= ($Box refType ($Unbox refType bx@@29)) bx@@29) ($Is refType ($Unbox refType bx@@29) (Tclass._module.Class _module.Class$A@@19))))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( ($IsBox bx@@29 (Tclass._module.Class _module.Class$A@@19)))
)))
(assert (forall ((_module.Class$A@@20 T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass._module.Class? _module.Class$A@@20)) (and (= ($Box refType ($Unbox refType bx@@30)) bx@@30) ($Is refType ($Unbox refType bx@@30) (Tclass._module.Class? _module.Class$A@@20))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@30 (Tclass._module.Class? _module.Class$A@@20)))
)))
(assert (forall ((_module.Datatype$A@@8 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass._module.Datatype _module.Datatype$A@@8)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@31)) bx@@31) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@31) (Tclass._module.Datatype _module.Datatype$A@@8))))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( ($IsBox bx@@31 (Tclass._module.Datatype _module.Datatype$A@@8)))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple3.___hMake3_q d@@6) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple3._0 d@@6) |_System._tuple#3$T0@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@6) |_System._tuple#3$T0@@7| $h@@10))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple3.___hMake3_q d@@7) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@11))
)))) ($IsAllocBox (_System.Tuple3._1 d@@7) |_System._tuple#3$T1@@8| $h@@11))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@7) |_System._tuple#3$T1@@8| $h@@11))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple3.___hMake3_q d@@8) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@12))
)))) ($IsAllocBox (_System.Tuple3._2 d@@8) |_System._tuple#3$T2@@9| $h@@12))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@8) |_System._tuple#3$T2@@9| $h@@12))
)))
(assert (forall ((h@@15 T@U) (r@@6 T@U) (f@@17 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@6 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@6) f@@17 x@@6))) ($HeapSucc h@@15 (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@6 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@6) f@@17 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@6 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@6) f@@17 x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((|$l#2#heap#0@@0| T@U) (|$l#2#x#0@@0| T@U) (|$l#2#y#0@@0| T@U) (|$l#2#z#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType |lambda#7| |$l#2#heap#0@@0| |$l#2#x#0@@0| |$l#2#y#0@@0| |$l#2#z#0@@0|) ($Box DatatypeTypeType (|#_System._tuple#3._#Make3| |$l#2#x#0@@0| |$l#2#y#0@@0| |$l#2#z#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |876|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType |lambda#7| |$l#2#heap#0@@0| |$l#2#x#0@@0| |$l#2#y#0@@0| |$l#2#z#0@@0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@1 o@@5) (|Set#IsMember| b@@1 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@5))
 :pattern ( (|Set#IsMember| b@@1 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._0 d@@9) |_System._tuple#2$T0@@6| $h@@13))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@9) |_System._tuple#2$T0@@6| $h@@13))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@14))
)))) ($IsAllocBox (_System.Tuple2._1 d@@10) |_System._tuple#2$T1@@7| $h@@14))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@10) |_System._tuple#2$T1@@7| $h@@14))
)))
(assert (forall ((t0@@26 T@U) (t1@@24 T@U) (t2@@23 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@18 T@U) (bx0@@18 T@U) (bx1@@18 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@18 t0@@26) ($IsBox bx1@@18 t1@@24)) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc2 t0@@26 t1@@24 t2@@23)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@26 t1@@24 t2@@23 h0@@3 f@@18 bx0@@18 bx1@@18) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@26 t1@@24 t2@@23 h0@@3 f@@18 bx0@@18 bx1@@18) (Reads2 t0@@26 t1@@24 t2@@23 h1@@3 f@@18 bx0@@18 bx1@@18)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Reads2 t0@@26 t1@@24 t2@@23 h1@@3 f@@18 bx0@@18 bx1@@18))
)))
(assert (forall ((t0@@27 T@U) (t1@@25 T@U) (t2@@24 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@19 T@U) (bx0@@19 T@U) (bx1@@19 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@19 t0@@27) ($IsBox bx1@@19 t1@@25)) ($Is HandleTypeType f@@19 (Tclass._System.___hFunc2 t0@@27 t1@@25 t2@@24)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@27 t1@@25 t2@@24 h1@@4 f@@19 bx0@@19 bx1@@19) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@27 t1@@25 t2@@24 h0@@4 f@@19 bx0@@19 bx1@@19) (Reads2 t0@@27 t1@@25 t2@@24 h1@@4 f@@19 bx0@@19 bx1@@19)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Reads2 t0@@27 t1@@25 t2@@24 h1@@4 f@@19 bx0@@19 bx1@@19))
)))
(assert (forall ((t0@@28 T@U) (t1@@26 T@U) (t2@@25 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@20 T@U) (bx0@@20 T@U) (bx1@@20 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) (and (and ($IsBox bx0@@20 t0@@28) ($IsBox bx1@@20 t1@@26)) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc2 t0@@28 t1@@26 t2@@25)))) (forall ((o@@8 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads2 t0@@28 t1@@26 t2@@25 h0@@5 f@@20 bx0@@20 bx1@@20) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@5 o@@8) fld@@5) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@5 o@@8) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@28 t1@@26 t2@@25 h0@@5 f@@20 bx0@@20 bx1@@20) (Apply2 t0@@28 t1@@26 t2@@25 h1@@5 f@@20 bx0@@20 bx1@@20)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Apply2 t0@@28 t1@@26 t2@@25 h1@@5 f@@20 bx0@@20 bx1@@20))
)))
(assert (forall ((t0@@29 T@U) (t1@@27 T@U) (t2@@26 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@21 T@U) (bx0@@21 T@U) (bx1@@21 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) (and (and ($IsBox bx0@@21 t0@@29) ($IsBox bx1@@21 t1@@27)) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc2 t0@@29 t1@@27 t2@@26)))) (forall ((o@@9 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads2 t0@@29 t1@@27 t2@@26 h1@@6 f@@21 bx0@@21 bx1@@21) ($Box refType o@@9))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@6 o@@9) fld@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@6 o@@9) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@29 t1@@27 t2@@26 h0@@6 f@@21 bx0@@21 bx1@@21) (Apply2 t0@@29 t1@@27 t2@@26 h1@@6 f@@21 bx0@@21 bx1@@21)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Apply2 t0@@29 t1@@27 t2@@26 h1@@6 f@@21 bx0@@21 bx1@@21))
)))
(assert (forall ((t0@@30 T@U) (t1@@28 T@U) (t2@@27 T@U) (t3@@12 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@22 T@U) (bx0@@22 T@U) (bx1@@22 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) (and (and (and ($IsBox bx0@@22 t0@@30) ($IsBox bx1@@22 t1@@28)) ($IsBox bx2@@9 t2@@27)) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc3 t0@@30 t1@@28 t2@@27 t3@@12)))) (forall ((o@@10 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads3 t0@@30 t1@@28 t2@@27 t3@@12 h0@@7 f@@22 bx0@@22 bx1@@22 bx2@@9) ($Box refType o@@10))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@7 o@@10) fld@@7) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@7 o@@10) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |565|
))) (= (Reads3 t0@@30 t1@@28 t2@@27 t3@@12 h0@@7 f@@22 bx0@@22 bx1@@22 bx2@@9) (Reads3 t0@@30 t1@@28 t2@@27 t3@@12 h1@@7 f@@22 bx0@@22 bx1@@22 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads3 t0@@30 t1@@28 t2@@27 t3@@12 h1@@7 f@@22 bx0@@22 bx1@@22 bx2@@9))
)))
(assert (forall ((t0@@31 T@U) (t1@@29 T@U) (t2@@28 T@U) (t3@@13 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@23 T@U) (bx0@@23 T@U) (bx1@@23 T@U) (bx2@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) (and (and (and ($IsBox bx0@@23 t0@@31) ($IsBox bx1@@23 t1@@29)) ($IsBox bx2@@10 t2@@28)) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc3 t0@@31 t1@@29 t2@@28 t3@@13)))) (forall ((o@@11 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads3 t0@@31 t1@@29 t2@@28 t3@@13 h1@@8 f@@23 bx0@@23 bx1@@23 bx2@@10) ($Box refType o@@11))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@8 o@@11) fld@@8) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@8 o@@11) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |567|
))) (= (Reads3 t0@@31 t1@@29 t2@@28 t3@@13 h0@@8 f@@23 bx0@@23 bx1@@23 bx2@@10) (Reads3 t0@@31 t1@@29 t2@@28 t3@@13 h1@@8 f@@23 bx0@@23 bx1@@23 bx2@@10)))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads3 t0@@31 t1@@29 t2@@28 t3@@13 h1@@8 f@@23 bx0@@23 bx1@@23 bx2@@10))
)))
(assert (forall ((t0@@32 T@U) (t1@@30 T@U) (t2@@29 T@U) (t3@@14 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@24 T@U) (bx0@@24 T@U) (bx1@@24 T@U) (bx2@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) (and (and (and ($IsBox bx0@@24 t0@@32) ($IsBox bx1@@24 t1@@30)) ($IsBox bx2@@11 t2@@29)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc3 t0@@32 t1@@30 t2@@29 t3@@14)))) (forall ((o@@12 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads3 t0@@32 t1@@30 t2@@29 t3@@14 h0@@9 f@@24 bx0@@24 bx1@@24 bx2@@11) ($Box refType o@@12))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@9 o@@12) fld@@9) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@9 o@@12) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |573|
))) (= (Apply3 t0@@32 t1@@30 t2@@29 t3@@14 h0@@9 f@@24 bx0@@24 bx1@@24 bx2@@11) (Apply3 t0@@32 t1@@30 t2@@29 t3@@14 h1@@9 f@@24 bx0@@24 bx1@@24 bx2@@11)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply3 t0@@32 t1@@30 t2@@29 t3@@14 h1@@9 f@@24 bx0@@24 bx1@@24 bx2@@11))
)))
(assert (forall ((t0@@33 T@U) (t1@@31 T@U) (t2@@30 T@U) (t3@@15 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@25 T@U) (bx0@@25 T@U) (bx1@@25 T@U) (bx2@@12 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) (and (and (and ($IsBox bx0@@25 t0@@33) ($IsBox bx1@@25 t1@@31)) ($IsBox bx2@@12 t2@@30)) ($Is HandleTypeType f@@25 (Tclass._System.___hFunc3 t0@@33 t1@@31 t2@@30 t3@@15)))) (forall ((o@@13 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads3 t0@@33 t1@@31 t2@@30 t3@@15 h1@@10 f@@25 bx0@@25 bx1@@25 bx2@@12) ($Box refType o@@13))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@10 o@@13) fld@@10) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@10 o@@13) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |575|
))) (= (Apply3 t0@@33 t1@@31 t2@@30 t3@@15 h0@@10 f@@25 bx0@@25 bx1@@25 bx2@@12) (Apply3 t0@@33 t1@@31 t2@@30 t3@@15 h1@@10 f@@25 bx0@@25 bx1@@25 bx2@@12)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply3 t0@@33 t1@@31 t2@@30 t3@@15 h1@@10 f@@25 bx0@@25 bx1@@25 bx2@@12))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
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
(assert (forall ((t0@@34 T@U) (t1@@32 T@U) (t2@@31 T@U) (heap@@8 T@U) (h@@16 T@U) (r@@7 T@U) (rd@@4 T@U) (bx0@@26 T@U) (bx1@@26 T@U) ) (!  (=> (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType r@@7 heap@@8 bx0@@26 bx1@@26)) (Requires2 t0@@34 t1@@32 t2@@31 heap@@8 (Handle2 h@@16 r@@7 rd@@4) bx0@@26 bx1@@26))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires2 t0@@34 t1@@32 t2@@31 heap@@8 (Handle2 h@@16 r@@7 rd@@4) bx0@@26 bx1@@26))
)))
(assert (forall ((|#$T0@@37| T@U) (|#$T1@@37| T@U) (|#$T2@@18| T@U) (|#$R@@37| T@U) (|f#0@@4| T@U) ($h@@15 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@15) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@15))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@15))
)))
(assert (forall ((|#$T0@@38| T@U) (|#$T1@@38| T@U) (|#$T2@@19| T@U) (|#$R@@38| T@U) (|f#0@@5| T@U) ($h@@16 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@16) ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@16))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@16))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#2#heap#0@@1| T@U) (|$l#2#x#0@@1| T@U) (|$l#2#y#0@@1| T@U) (|$l#2#z#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#10| |l#0@@5|) |$l#2#heap#0@@1| |$l#2#x#0@@1| |$l#2#y#0@@1| |$l#2#z#0@@1|) |l#0@@5|)
 :qid |StaticMembersOfGenericTypesdfy.14:9|
 :skolemid |878|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#10| |l#0@@5|) |$l#2#heap#0@@1| |$l#2#x#0@@1| |$l#2#y#0@@1| |$l#2#z#0@@1|))
)))
(assert (forall ((_module.Class$A@@21 T@U) (_module.Class.F$B@@6 T@U) (|a#0@@7| T@U) (|b#0@@12| T@U) ) (!  (=> (and ($IsBox |a#0@@7| _module.Class$A@@21) ($IsBox |b#0@@12| _module.Class.F$B@@6)) (= (|_module.Class.F#requires| _module.Class$A@@21 _module.Class.F$B@@6 |a#0@@7| |b#0@@12|) true))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( (|_module.Class.F#requires| _module.Class$A@@21 _module.Class.F$B@@6 |a#0@@7| |b#0@@12|))
)))
(assert (forall ((_module.Datatype$A@@9 T@U) (_module.Datatype.F$B@@6 T@U) (|a#0@@8| T@U) (|b#0@@13| T@U) ) (!  (=> (and ($IsBox |a#0@@8| _module.Datatype$A@@9) ($IsBox |b#0@@13| _module.Datatype.F$B@@6)) (= (|_module.Datatype.F#requires| _module.Datatype$A@@9 _module.Datatype.F$B@@6 |a#0@@8| |b#0@@13|) true))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( (|_module.Datatype.F#requires| _module.Datatype$A@@9 _module.Datatype.F$B@@6 |a#0@@8| |b#0@@13|))
)))
(assert (forall ((|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) (|$l#0#y#0@@1| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#2| |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| |$l#0#x#0@@1| |$l#0#y#0@@1|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |871|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#2| |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|))
)))
(assert (forall ((_module.Class$A@@22 T@U) (_module.Class.F$B@@7 T@U) ($heap@@9 T@U) (|$fh$0x#0@@8| T@U) (|$fh$0x#1@@8| T@U) ) (! (= (_module.Class.F _module.Class$A@@22 _module.Class.F$B@@7 |$fh$0x#0@@8| |$fh$0x#1@@8|) ($Unbox DatatypeTypeType (Apply2 _module.Class$A@@22 _module.Class.F$B@@7 (Tclass._System.Tuple2 _module.Class$A@@22 _module.Class.F$B@@7) $heap@@9 (|_module.Class.F#Handle| _module.Class$A@@22 _module.Class.F$B@@7) |$fh$0x#0@@8| |$fh$0x#1@@8|)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (_module.Class.F _module.Class$A@@22 _module.Class.F$B@@7 |$fh$0x#0@@8| |$fh$0x#1@@8|) ($IsGoodHeap $heap@@9))
)))
(assert (forall ((_module.Datatype$A@@10 T@U) (_module.Datatype.F$B@@7 T@U) ($heap@@10 T@U) (|$fh$0x#0@@9| T@U) (|$fh$0x#1@@9| T@U) ) (! (= (_module.Datatype.F _module.Datatype$A@@10 _module.Datatype.F$B@@7 |$fh$0x#0@@9| |$fh$0x#1@@9|) ($Unbox DatatypeTypeType (Apply2 _module.Datatype$A@@10 _module.Datatype.F$B@@7 (Tclass._System.Tuple2 _module.Datatype$A@@10 _module.Datatype.F$B@@7) $heap@@10 (|_module.Datatype.F#Handle| _module.Datatype$A@@10 _module.Datatype.F$B@@7) |$fh$0x#0@@9| |$fh$0x#1@@9|)))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (_module.Datatype.F _module.Datatype$A@@10 _module.Datatype.F$B@@7 |$fh$0x#0@@9| |$fh$0x#1@@9|) ($IsGoodHeap $heap@@10))
)))
(assert (forall ((h@@17 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@17)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@17))
)))
(assert (forall ((h@@18 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@18)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@18))
)))
(assert (forall ((_module.Trait$G@@19 T@U) (_module.Trait$H@@19 T@U) (|_module.Trait.F'$B@@7| T@U) ($heap@@11 T@U) (|$fh$0x#0@@10| T@U) (|$fh$0x#1@@10| T@U) (|$fh$0x#2@@2| T@U) ) (! (= (Apply3 _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7| (Tclass._System.Tuple3 _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7|) $heap@@11 (|_module.Trait.F_k#Handle| _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7|) |$fh$0x#0@@10| |$fh$0x#1@@10| |$fh$0x#2@@2|) ($Box DatatypeTypeType (_module.Trait.F_k _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7| |$fh$0x#0@@10| |$fh$0x#1@@10| |$fh$0x#2@@2|)))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (Apply3 _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7| (Tclass._System.Tuple3 _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7|) $heap@@11 (|_module.Trait.F_k#Handle| _module.Trait$G@@19 _module.Trait$H@@19 |_module.Trait.F'$B@@7|) |$fh$0x#0@@10| |$fh$0x#1@@10| |$fh$0x#2@@2|))
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
(assert (forall ((|#$T0@@39| T@U) (|#$T1@@39| T@U) (|#$T2@@20| T@U) (|#$R@@39| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|)) (forall ((|x0#0@@2| T@U) (|x1#0@@2| T@U) (|x2#0@@0| T@U) ) (!  (=> (and (and ($IsBox |x0#0@@2| |#$T0@@39|) ($IsBox |x1#0@@2| |#$T1@@39|)) ($IsBox |x2#0@@0| |#$T2@@20|)) (|Set#Equal| (Reads3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39| $OneHeap |f#0@@6| |x0#0@@2| |x1#0@@2| |x2#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |597|
))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |f3#0@1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |a##0@0| () Int)
(declare-fun |b##0@0| () Int)
(declare-fun |call5formal@bb#0| () T@U)
(declare-fun call1formal@_module.Class.M$B () T@U)
(declare-fun |call6formal@aa#0| () T@U)
(declare-fun call0formal@_module.Class$A () T@U)
(declare-fun |call2formal@a#0@0| () T@U)
(declare-fun |call3formal@b#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call5formal@bb#0@0| () T@U)
(declare-fun |call6formal@aa#0@0| () T@U)
(declare-fun |$rhs##0@0| () Int)
(declare-fun |$rhs##1@0| () Int)
(declare-fun |f2#0@2| () T@U)
(declare-fun |##a#0@0| () Int)
(declare-fun |##b#0@0| () Int)
(declare-fun |a##1@0| () Int)
(declare-fun |b##1@0| () Int)
(declare-fun |call5formal@bb#0@@0| () T@U)
(declare-fun call1formal@_module.Datatype.M$B () T@U)
(declare-fun |call6formal@aa#0@@0| () T@U)
(declare-fun call0formal@_module.Datatype$A () T@U)
(declare-fun |call2formal@a#0@0@@0| () T@U)
(declare-fun |call3formal@b#0@0@@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call5formal@bb#0@0@@0| () T@U)
(declare-fun |call6formal@aa#0@0@@0| () T@U)
(declare-fun |$rhs##2@0| () Int)
(declare-fun |$rhs##3@0| () Int)
(declare-fun |f2#0@3| () T@U)
(declare-fun |##a#1@0| () Int)
(declare-fun |##b#1@0| () Int)
(declare-fun |g##0@0| () Bool)
(declare-fun |h##0@0| () Int)
(declare-fun |b##2@0| () Int)
(declare-fun |call7formal@gg#0| () T@U)
(declare-fun call0formal@_module.Trait$G () T@U)
(declare-fun |call8formal@hh#0| () T@U)
(declare-fun call1formal@_module.Trait$H () T@U)
(declare-fun |call9formal@bb#0| () T@U)
(declare-fun |call2formal@_module.Trait.M'$B| () T@U)
(declare-fun |call3formal@g#0@0| () T@U)
(declare-fun |call4formal@h#0@0| () T@U)
(declare-fun |call5formal@b#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call7formal@gg#0@0| () T@U)
(declare-fun |call8formal@hh#0@0| () T@U)
(declare-fun |call9formal@bb#0@0| () T@U)
(declare-fun |$rhs##4@0| () Bool)
(declare-fun |$rhs##5@0| () Int)
(declare-fun |$rhs##6@0| () Int)
(declare-fun |f3#0@2| () T@U)
(declare-fun |##g#0@0| () Bool)
(declare-fun |##h#0@0| () Int)
(declare-fun |##b#2@0| () Int)
(declare-fun |g##1@0| () Bool)
(declare-fun |h##1@0| () Int)
(declare-fun |b##3@0| () Int)
(declare-fun |call7formal@gg#0@@0| () T@U)
(declare-fun call0formal@_module.Trait$G@@0 () T@U)
(declare-fun |call8formal@hh#0@@0| () T@U)
(declare-fun call1formal@_module.Trait$H@@0 () T@U)
(declare-fun |call9formal@bb#0@@0| () T@U)
(declare-fun |call2formal@_module.Trait.M'$B@@0| () T@U)
(declare-fun |call3formal@g#0@0@@0| () T@U)
(declare-fun |call4formal@h#0@0@@0| () T@U)
(declare-fun |call5formal@b#0@0@@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call7formal@gg#0@0@@0| () T@U)
(declare-fun |call8formal@hh#0@0@@0| () T@U)
(declare-fun |call9formal@bb#0@0@@0| () T@U)
(declare-fun |$rhs##7@0| () Bool)
(declare-fun |$rhs##8@0| () Int)
(declare-fun |$rhs##9@0| () Int)
(declare-fun |f3#0@3| () T@U)
(declare-fun |##g#1@0| () Bool)
(declare-fun |##h#1@0| () Int)
(declare-fun |##b#3@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |a##2@0| () Int)
(declare-fun |b##4@0| () Int)
(declare-fun |call5formal@bb#0@@1| () T@U)
(declare-fun call1formal@_module.Class.M$B@@0 () T@U)
(declare-fun |call6formal@aa#0@@1| () T@U)
(declare-fun call0formal@_module.Class$A@@0 () T@U)
(declare-fun |call2formal@a#0@0@@1| () T@U)
(declare-fun |call3formal@b#0@0@@1| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call5formal@bb#0@0@@1| () T@U)
(declare-fun |call6formal@aa#0@0@@1| () T@U)
(declare-fun |$rhs##10@0| () Int)
(declare-fun |$rhs##11@0| () Int)
(declare-fun |f2#0@4| () T@U)
(declare-fun |##a#2@0| () Int)
(declare-fun |##b#4@0| () Int)
(declare-fun |a##3@0| () Int)
(declare-fun |b##5@0| () Int)
(declare-fun |call5formal@bb#0@@2| () T@U)
(declare-fun call1formal@_module.Datatype.M$B@@0 () T@U)
(declare-fun |call6formal@aa#0@@2| () T@U)
(declare-fun call0formal@_module.Datatype$A@@0 () T@U)
(declare-fun |call2formal@a#0@0@@2| () T@U)
(declare-fun |call3formal@b#0@0@@2| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call5formal@bb#0@0@@2| () T@U)
(declare-fun |call6formal@aa#0@0@@2| () T@U)
(declare-fun |$rhs##12@0| () Int)
(declare-fun |$rhs##13@0| () Int)
(declare-fun |f2#0@5| () T@U)
(declare-fun |##a#3@0| () Int)
(declare-fun |##b#5@0| () Int)
(declare-fun |g##2@0| () Bool)
(declare-fun |h##2@0| () Int)
(declare-fun |b##6@0| () Int)
(declare-fun |call7formal@gg#0@@1| () T@U)
(declare-fun call0formal@_module.Trait$G@@1 () T@U)
(declare-fun |call8formal@hh#0@@1| () T@U)
(declare-fun call1formal@_module.Trait$H@@1 () T@U)
(declare-fun |call9formal@bb#0@@1| () T@U)
(declare-fun |call2formal@_module.Trait.M'$B@@1| () T@U)
(declare-fun |call3formal@g#0@0@@1| () T@U)
(declare-fun |call4formal@h#0@0@@1| () T@U)
(declare-fun |call5formal@b#0@0@@1| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call7formal@gg#0@0@@1| () T@U)
(declare-fun |call8formal@hh#0@0@@1| () T@U)
(declare-fun |call9formal@bb#0@0@@1| () T@U)
(declare-fun |$rhs##14@0| () Bool)
(declare-fun |$rhs##15@0| () Int)
(declare-fun |$rhs##16@0| () Int)
(declare-fun |f3#0@4| () T@U)
(declare-fun |##g#2@0| () Bool)
(declare-fun |##h#2@0| () Int)
(declare-fun |##b#6@0| () Int)
(declare-fun |g##3@0| () Bool)
(declare-fun |h##3@0| () Int)
(declare-fun |b##7@0| () Int)
(declare-fun |call7formal@gg#0@@2| () T@U)
(declare-fun call0formal@_module.Trait$G@@2 () T@U)
(declare-fun |call8formal@hh#0@@2| () T@U)
(declare-fun call1formal@_module.Trait$H@@2 () T@U)
(declare-fun |call9formal@bb#0@@2| () T@U)
(declare-fun |call2formal@_module.Trait.M'$B@@2| () T@U)
(declare-fun |call3formal@g#0@0@@2| () T@U)
(declare-fun |call4formal@h#0@0@@2| () T@U)
(declare-fun |call5formal@b#0@0@@2| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call7formal@gg#0@0@@2| () T@U)
(declare-fun |call8formal@hh#0@0@@2| () T@U)
(declare-fun |call9formal@bb#0@0@@2| () T@U)
(declare-fun |$rhs##17@0| () Bool)
(declare-fun |$rhs##18@0| () Int)
(declare-fun |$rhs##19@0| () Int)
(declare-fun |f3#0@5| () T@U)
(declare-fun |f2#0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |f2#0@0| () T@U)
(declare-fun |f3#0@0| () T@U)
(declare-fun |f2#0| () T@U)
(declare-fun |f3#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@5| () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |d#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.GenericClass)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@2 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 32) 30) anon10_Then_correct) (=> (= (ControlFlow 0 32) 31) anon10_Else_correct)))))
(let ((anon12_Else_correct true))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@@2 |$lambdaHeap#1@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 28) 26) anon12_Then_correct) (=> (= (ControlFlow 0 28) 27) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (= |f3#0@1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle3 |lambda#7| (|lambda#8| TBool TInt TInt) (|lambda#10| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (= |a##0@0| (LitInt 22)) (= |b##0@0| (LitInt 23))) (=> (and (and (and (and ($IsBox |call5formal@bb#0| call1formal@_module.Class.M$B) ($IsAllocBox |call5formal@bb#0| call1formal@_module.Class.M$B $Heap@@2)) (and ($IsBox |call6formal@aa#0| call0formal@_module.Class$A) ($IsAllocBox |call6formal@aa#0| call0formal@_module.Class$A $Heap@@2))) (and (and (= |call2formal@a#0@0| ($Box intType (int_2_U |a##0@0|))) (= |call3formal@b#0@0| ($Box intType (int_2_U |b##0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and ($IsBox |call5formal@bb#0@0| TInt) ($IsAllocBox |call5formal@bb#0@0| TInt $Heap@0)) (and ($IsBox |call6formal@aa#0@0| TInt) ($IsAllocBox |call6formal@aa#0@0| TInt $Heap@0))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@2 $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@2 $o@@8)))
 :qid |StaticMembersOfGenericTypesdfy.80:17|
 :skolemid |751|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap@@2 $Heap@0)) (and (= |$rhs##0@0| (U_2_int ($Unbox intType |call5formal@bb#0@0|))) (= |$rhs##1@0| (U_2_int ($Unbox intType |call6formal@aa#0@0|))))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |f2#0@2| (|_module.Class.F#Handle| TInt TInt)) (= |##a#0@0| (LitInt 20))) (=> (and (and (and ($IsAlloc intType (int_2_U |##a#0@0|) TInt $Heap@0) (= |##b#0@0| (LitInt 21))) (and ($IsAlloc intType (int_2_U |##b#0@0|) TInt $Heap@0) (|_module.Class.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (_module.Class.F TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (|_module.Class.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))) (and (= |a##1@0| (LitInt 22)) (= |b##1@0| (LitInt 23))))) (=> (and (and (and (and ($IsBox |call5formal@bb#0@@0| call1formal@_module.Datatype.M$B) ($IsAllocBox |call5formal@bb#0@@0| call1formal@_module.Datatype.M$B $Heap@@2)) (and ($IsBox |call6formal@aa#0@@0| call0formal@_module.Datatype$A) ($IsAllocBox |call6formal@aa#0@@0| call0formal@_module.Datatype$A $Heap@@2))) (and (and (= |call2formal@a#0@0@@0| ($Box intType (int_2_U |a##1@0|))) (= |call3formal@b#0@0@@0| ($Box intType (int_2_U |b##1@0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and ($IsBox |call5formal@bb#0@0@@0| TInt) ($IsAllocBox |call5formal@bb#0@0@@0| TInt $Heap@1)) (and ($IsBox |call6formal@aa#0@0@@0| TInt) ($IsAllocBox |call6formal@aa#0@0@@0| TInt $Heap@1))) (and (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@9) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9)))
 :qid |StaticMembersOfGenericTypesdfy.91:17|
 :skolemid |774|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@9))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |$rhs##2@0| (U_2_int ($Unbox intType |call5formal@bb#0@0@@0|))) (= |$rhs##3@0| (U_2_int ($Unbox intType |call6formal@aa#0@0@@0|))))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |f2#0@3| (|_module.Datatype.F#Handle| TInt TInt)) (=> (and (= |##a#1@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##a#1@0|) TInt $Heap@1)) (=> (and (and (and (and (and (= |##b#1@0| (LitInt 21)) ($IsAlloc intType (int_2_U |##b#1@0|) TInt $Heap@1)) (and (|_module.Datatype.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (_module.Datatype.F TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))))) (and (and (|_module.Datatype.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))) (= |g##0@0| (U_2_bool (Lit boolType (bool_2_U true))))) (and (= |h##0@0| (LitInt 22)) (= |b##2@0| (LitInt 23))))) (and (and (and ($IsBox |call7formal@gg#0| call0formal@_module.Trait$G) ($IsAllocBox |call7formal@gg#0| call0formal@_module.Trait$G $Heap@@2)) (and ($IsBox |call8formal@hh#0| call1formal@_module.Trait$H) ($IsAllocBox |call8formal@hh#0| call1formal@_module.Trait$H $Heap@@2))) (and (and ($IsBox |call9formal@bb#0| |call2formal@_module.Trait.M'$B|) ($IsAllocBox |call9formal@bb#0| |call2formal@_module.Trait.M'$B| $Heap@@2)) (= |call3formal@g#0@0| ($Box boolType (bool_2_U |g##0@0|)))))) (and (and (and (and (= |call4formal@h#0@0| ($Box intType (int_2_U |h##0@0|))) (= |call5formal@b#0@0| ($Box intType (int_2_U |b##2@0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($IsBox |call7formal@gg#0@0| TBool) ($IsAllocBox |call7formal@gg#0@0| TBool $Heap@2)) (and ($IsBox |call8formal@hh#0@0| TInt) ($IsAllocBox |call8formal@hh#0@0| TInt $Heap@2)))) (and (and (and ($IsBox |call9formal@bb#0@0| TInt) ($IsAllocBox |call9formal@bb#0@0| TInt $Heap@2)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@10) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@10)))
 :qid |StaticMembersOfGenericTypesdfy.69:17|
 :skolemid |733|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@10))
))) (and (and ($HeapSucc $Heap@1 $Heap@2) (= |$rhs##4@0| (U_2_bool ($Unbox boolType |call7formal@gg#0@0|)))) (and (= |$rhs##5@0| (U_2_int ($Unbox intType |call8formal@hh#0@0|))) (= |$rhs##6@0| (U_2_int ($Unbox intType |call9formal@bb#0@0|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |f3#0@2| (|_module.Trait.F_k#Handle| TBool TInt TInt)) (=> (and (and (= |##g#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) ($IsAlloc boolType (bool_2_U |##g#0@0|) TBool $Heap@2)) (and (= |##h#0@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##h#0@0|) TInt $Heap@2))) (=> (and (and (and (and (and (= |##b#2@0| (LitInt 21)) ($IsAlloc intType (int_2_U |##b#2@0|) TInt $Heap@2)) (and (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))) (_System.Tuple3.___hMake3_q (Lit DatatypeTypeType (_module.Trait.F_k TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))))) (and (and (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))) (= |g##1@0| (U_2_bool (Lit boolType (bool_2_U true))))) (and (= |h##1@0| (LitInt 22)) (= |b##3@0| (LitInt 23))))) (and (and (and ($IsBox |call7formal@gg#0@@0| call0formal@_module.Trait$G@@0) ($IsAllocBox |call7formal@gg#0@@0| call0formal@_module.Trait$G@@0 $Heap@@2)) (and ($IsBox |call8formal@hh#0@@0| call1formal@_module.Trait$H@@0) ($IsAllocBox |call8formal@hh#0@@0| call1formal@_module.Trait$H@@0 $Heap@@2))) (and (and ($IsBox |call9formal@bb#0@@0| |call2formal@_module.Trait.M'$B@@0|) ($IsAllocBox |call9formal@bb#0@@0| |call2formal@_module.Trait.M'$B@@0| $Heap@@2)) (= |call3formal@g#0@0@@0| ($Box boolType (bool_2_U |g##1@0|)))))) (and (and (and (and (= |call4formal@h#0@0@@0| ($Box intType (int_2_U |h##1@0|))) (= |call5formal@b#0@0@@0| ($Box intType (int_2_U |b##3@0|)))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and ($IsBox |call7formal@gg#0@0@@0| TBool) ($IsAllocBox |call7formal@gg#0@0@@0| TBool $Heap@3)) (and ($IsBox |call8formal@hh#0@0@@0| TInt) ($IsAllocBox |call8formal@hh#0@0@@0| TInt $Heap@3)))) (and (and (and ($IsBox |call9formal@bb#0@0@@0| TInt) ($IsAllocBox |call9formal@bb#0@0@@0| TInt $Heap@3)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@11) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@11) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@11)))
 :qid |StaticMembersOfGenericTypesdfy.69:17|
 :skolemid |733|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@11))
))) (and (and ($HeapSucc $Heap@2 $Heap@3) (= |$rhs##7@0| (U_2_bool ($Unbox boolType |call7formal@gg#0@0@@0|)))) (and (= |$rhs##8@0| (U_2_int ($Unbox intType |call8formal@hh#0@0@@0|))) (= |$rhs##9@0| (U_2_int ($Unbox intType |call9formal@bb#0@0@@0|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (and (and (and (= |f3#0@3| (|_module.Trait.F_k#Handle| TBool TInt TInt)) (= |##g#1@0| (U_2_bool (Lit boolType (bool_2_U true))))) (and ($IsAlloc boolType (bool_2_U |##g#1@0|) TBool $Heap@3) (= |##h#1@0| (LitInt 20)))) (and (and ($IsAlloc intType (int_2_U |##h#1@0|) TInt $Heap@3) (= |##b#3@0| (LitInt 21))) (and ($IsAlloc intType (int_2_U |##b#3@0|) TInt $Heap@3) (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))))) (and (and (and (_System.Tuple3.___hMake3_q (Lit DatatypeTypeType (_module.Trait.F_k TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._module.Class? TInt)))) (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@0) alloc)))) (= $Heap@4 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@3 $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) true) (=> (and ($Is DatatypeTypeType |d#0@0| (Tclass._module.Datatype TInt)) ($IsAlloc DatatypeTypeType |d#0@0| (Tclass._module.Datatype TInt) $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (=> (and (= |a##2@0| (LitInt 22)) (= |b##4@0| (LitInt 23))) (=> (and (and (and (and ($IsBox |call5formal@bb#0@@1| call1formal@_module.Class.M$B@@0) ($IsAllocBox |call5formal@bb#0@@1| call1formal@_module.Class.M$B@@0 $Heap@@2)) (and ($IsBox |call6formal@aa#0@@1| call0formal@_module.Class$A@@0) ($IsAllocBox |call6formal@aa#0@@1| call0formal@_module.Class$A@@0 $Heap@@2))) (and (and (= |call2formal@a#0@0@@1| ($Box intType (int_2_U |a##2@0|))) (= |call3formal@b#0@0@@1| ($Box intType (int_2_U |b##4@0|)))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)))) (and (and (and ($IsBox |call5formal@bb#0@0@@1| TInt) ($IsAllocBox |call5formal@bb#0@0@@1| TInt $Heap@5)) (and ($IsBox |call6formal@aa#0@0@@1| TInt) ($IsAllocBox |call6formal@aa#0@0@@1| TInt $Heap@5))) (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@12) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@12) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@12)))
 :qid |StaticMembersOfGenericTypesdfy.80:17|
 :skolemid |751|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@12))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |$rhs##10@0| (U_2_int ($Unbox intType |call5formal@bb#0@0@@1|))) (= |$rhs##11@0| (U_2_int ($Unbox intType |call6formal@aa#0@0@@1|))))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (=> (= |f2#0@4| (|_module.Class.F#Handle| TInt TInt)) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (=> (= |##a#2@0| (LitInt 20)) (=> (and (and (and ($IsAlloc intType (int_2_U |##a#2@0|) TInt $Heap@5) (= |##b#4@0| (LitInt 21))) (and ($IsAlloc intType (int_2_U |##b#4@0|) TInt $Heap@5) (|_module.Class.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (_module.Class.F TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (|_module.Class.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))) (and (= |a##3@0| (LitInt 22)) (= |b##5@0| (LitInt 23))))) (=> (and (and (and (and ($IsBox |call5formal@bb#0@@2| call1formal@_module.Datatype.M$B@@0) ($IsAllocBox |call5formal@bb#0@@2| call1formal@_module.Datatype.M$B@@0 $Heap@@2)) (and ($IsBox |call6formal@aa#0@@2| call0formal@_module.Datatype$A@@0) ($IsAllocBox |call6formal@aa#0@@2| call0formal@_module.Datatype$A@@0 $Heap@@2))) (and (and (= |call2formal@a#0@0@@2| ($Box intType (int_2_U |a##3@0|))) (= |call3formal@b#0@0@@2| ($Box intType (int_2_U |b##5@0|)))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)))) (and (and (and ($IsBox |call5formal@bb#0@0@@2| TInt) ($IsAllocBox |call5formal@bb#0@0@@2| TInt $Heap@6)) (and ($IsBox |call6formal@aa#0@0@@2| TInt) ($IsAllocBox |call6formal@aa#0@0@@2| TInt $Heap@6))) (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@13) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@13) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@13)))
 :qid |StaticMembersOfGenericTypesdfy.91:17|
 :skolemid |774|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@13))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= |$rhs##12@0| (U_2_int ($Unbox intType |call5formal@bb#0@0@@2|))) (= |$rhs##13@0| (U_2_int ($Unbox intType |call6formal@aa#0@0@@2|))))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (and (and (= |f2#0@5| (|_module.Datatype.F#Handle| TInt TInt)) (= |##a#3@0| (LitInt 20))) (and ($IsAlloc intType (int_2_U |##a#3@0|) TInt $Heap@6) (= |##b#5@0| (LitInt 21)))) (and (and ($IsAlloc intType (int_2_U |##b#5@0|) TInt $Heap@6) (|_module.Datatype.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (_module.Datatype.F TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (|_module.Datatype.F#canCall| TInt TInt ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (=> (= |g##2@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |h##2@0| (LitInt 22)) (= |b##6@0| (LitInt 23))) (=> (and (and (and ($IsBox |call7formal@gg#0@@1| call0formal@_module.Trait$G@@1) ($IsAllocBox |call7formal@gg#0@@1| call0formal@_module.Trait$G@@1 $Heap@@2)) (and ($IsBox |call8formal@hh#0@@1| call1formal@_module.Trait$H@@1) ($IsAllocBox |call8formal@hh#0@@1| call1formal@_module.Trait$H@@1 $Heap@@2))) (and (and ($IsBox |call9formal@bb#0@@1| |call2formal@_module.Trait.M'$B@@1|) ($IsAllocBox |call9formal@bb#0@@1| |call2formal@_module.Trait.M'$B@@1| $Heap@@2)) (= |call3formal@g#0@0@@1| ($Box boolType (bool_2_U |g##2@0|))))) (=> (and (and (and (and (= |call4formal@h#0@0@@1| ($Box intType (int_2_U |h##2@0|))) (= |call5formal@b#0@0@@1| ($Box intType (int_2_U |b##6@0|)))) (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7))) (and (and ($IsBox |call7formal@gg#0@0@@1| TBool) ($IsAllocBox |call7formal@gg#0@0@@1| TBool $Heap@7)) (and ($IsBox |call8formal@hh#0@0@@1| TInt) ($IsAllocBox |call8formal@hh#0@0@@1| TInt $Heap@7)))) (and (and (and ($IsBox |call9formal@bb#0@0@@1| TInt) ($IsAllocBox |call9formal@bb#0@0@@1| TInt $Heap@7)) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@14) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@14) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@14)))
 :qid |StaticMembersOfGenericTypesdfy.69:17|
 :skolemid |733|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@14))
))) (and (and ($HeapSucc $Heap@6 $Heap@7) (= |$rhs##14@0| (U_2_bool ($Unbox boolType |call7formal@gg#0@0@@1|)))) (and (= |$rhs##15@0| (U_2_int ($Unbox intType |call8formal@hh#0@0@@1|))) (= |$rhs##16@0| (U_2_int ($Unbox intType |call9formal@bb#0@0@@1|))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (=> (= |f3#0@4| (|_module.Trait.F_k#Handle| TBool TInt TInt)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (= |##g#2@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (and (and ($IsAlloc boolType (bool_2_U |##g#2@0|) TBool $Heap@7) (= |##h#2@0| (LitInt 20))) (and ($IsAlloc intType (int_2_U |##h#2@0|) TInt $Heap@7) (= |##b#6@0| (LitInt 21)))) (and (and ($IsAlloc intType (int_2_U |##b#6@0|) TInt $Heap@7) (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))) (and (_System.Tuple3.___hMake3_q (Lit DatatypeTypeType (_module.Trait.F_k TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21)))))) (|_module.Trait.F_k#canCall| TBool TInt TInt ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 20))) ($Box intType (int_2_U (LitInt 21))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (=> (= |g##3@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |h##3@0| (LitInt 22)) (= |b##7@0| (LitInt 23))) (=> (and (and (and ($IsBox |call7formal@gg#0@@2| call0formal@_module.Trait$G@@2) ($IsAllocBox |call7formal@gg#0@@2| call0formal@_module.Trait$G@@2 $Heap@@2)) (and ($IsBox |call8formal@hh#0@@2| call1formal@_module.Trait$H@@2) ($IsAllocBox |call8formal@hh#0@@2| call1formal@_module.Trait$H@@2 $Heap@@2))) (and (and ($IsBox |call9formal@bb#0@@2| |call2formal@_module.Trait.M'$B@@2|) ($IsAllocBox |call9formal@bb#0@@2| |call2formal@_module.Trait.M'$B@@2| $Heap@@2)) (= |call3formal@g#0@0@@2| ($Box boolType (bool_2_U |g##3@0|))))) (=> (and (and (and (and (= |call4formal@h#0@0@@2| ($Box intType (int_2_U |h##3@0|))) (= |call5formal@b#0@0@@2| ($Box intType (int_2_U |b##7@0|)))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8))) (and (and ($IsBox |call7formal@gg#0@0@@2| TBool) ($IsAllocBox |call7formal@gg#0@0@@2| TBool $Heap@8)) (and ($IsBox |call8formal@hh#0@0@@2| TInt) ($IsAllocBox |call8formal@hh#0@0@@2| TInt $Heap@8)))) (and (and (and ($IsBox |call9formal@bb#0@0@@2| TInt) ($IsAllocBox |call9formal@bb#0@0@@2| TInt $Heap@8)) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@15) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@15) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@15)))
 :qid |StaticMembersOfGenericTypesdfy.69:17|
 :skolemid |733|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@15))
))) (and (and ($HeapSucc $Heap@7 $Heap@8) (= |$rhs##17@0| (U_2_bool ($Unbox boolType |call7formal@gg#0@0@@2|)))) (and (= |$rhs##18@0| (U_2_int ($Unbox intType |call8formal@hh#0@0@@2|))) (= |$rhs##19@0| (U_2_int ($Unbox intType |call9formal@bb#0@0@@2|))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (= |f3#0@5| (|_module.Trait.F_k#Handle| TBool TInt TInt)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon9_Else_correct  (=> (= |f2#0@1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle2 |lambda#2| (|lambda#3| TInt TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 29) 28) anon11_Then_correct) (=> (= (ControlFlow 0 29) 2) anon11_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and ($Is HandleTypeType |f2#0@0| (Tclass._System.___hTotalFunc2 TInt TInt (Tclass._System.Tuple2 TInt TInt))) ($IsAlloc HandleTypeType |f2#0@0| (Tclass._System.___hTotalFunc2 TInt TInt (Tclass._System.Tuple2 TInt TInt)) $Heap@@2)) (and ($Is HandleTypeType |f3#0@0| (Tclass._System.___hTotalFunc3 TBool TInt TInt (Tclass._System.Tuple3 TBool TInt TInt))) ($IsAlloc HandleTypeType |f3#0@0| (Tclass._System.___hTotalFunc3 TBool TInt TInt (Tclass._System.Tuple3 TBool TInt TInt)) $Heap@@2))) (and (=> (= (ControlFlow 0 33) 32) anon9_Then_correct) (=> (= (ControlFlow 0 33) 29) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is HandleTypeType |f2#0| (Tclass._System.___hTotalFunc2 TInt TInt (Tclass._System.Tuple2 TInt TInt))) ($IsAlloc HandleTypeType |f2#0| (Tclass._System.___hTotalFunc2 TInt TInt (Tclass._System.Tuple2 TInt TInt)) $Heap@@2)) true) (=> (and (and (and (and ($Is HandleTypeType |f3#0| (Tclass._System.___hTotalFunc3 TBool TInt TInt (Tclass._System.Tuple3 TBool TInt TInt))) ($IsAlloc HandleTypeType |f3#0| (Tclass._System.___hTotalFunc3 TBool TInt TInt (Tclass._System.Tuple3 TBool TInt TInt)) $Heap@@2)) true) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@5| (Tclass._module.Class TInt)) ($IsAlloc refType |c#0@@5| (Tclass._module.Class TInt) $Heap@@2))) true) (and (=> |defass#t#0| (and ($Is refType |t#0| (Tclass._module.Trait TBool TInt)) ($IsAlloc refType |t#0| (Tclass._module.Trait TBool TInt) $Heap@@2))) true))) (and (and (and ($Is DatatypeTypeType |d#0| (Tclass._module.Datatype TInt)) ($IsAlloc DatatypeTypeType |d#0| (Tclass._module.Datatype TInt) $Heap@@2)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 34) 33)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
