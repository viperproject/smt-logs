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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |lambda#43| (T@U T@U T@U T@U T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LayerTypeType () T@T)
(declare-fun |lambda#57| (Int T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#53| (T@U Int T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.Sum (T@U Int T@U) Int)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (Int T@U) Bool)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 tytagFamily$nat tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2|)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
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
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#9#heap#0| T@U) (|$l#9#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#9#heap#0| |$l#9#x#0|)) ($IsBox |$l#9#x#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |685|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#9#heap#0| |$l#9#x#0|))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)))
)))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u0@@2) ($IsBox bx@@3 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@3 u0@@2))
 :pattern ( ($IsBox bx@@3 t0@@2))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 t1@@2) ($IsBox bx@@4 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@4 t1@@2))
 :pattern ( ($IsBox bx@@4 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|$l#32#heap#0| T@U) (|$l#32#y#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#43| |l#0@@0| |l#1| |l#2| |l#3| |l#4|) |$l#32#heap#0| |$l#32#y#0|) ($Box intType ($Unbox intType (Apply2 |l#0@@0| |l#1| |l#2| |$l#32#heap#0| |l#3| |l#4| ($Box intType ($Unbox intType |$l#32#y#0|))))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |689|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#43| |l#0@@0| |l#1| |l#2| |l#3| |l#4|) |$l#32#heap#0| |$l#32#y#0|))
)))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|$l#33#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#57| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5| |l#6| |l#7| |l#8|) |$l#33#ly#0|) (Handle1 (|lambda#53| |$l#33#ly#0| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5| |l#6| |$l#33#ly#0|) |l#7| |l#8|))
 :qid |SumSumdfy.26:27|
 :skolemid |691|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#57| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5| |l#6| |l#7| |l#8|) |$l#33#ly#0|))
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
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@15| $OneHeap |f#0@@0| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| Int) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@1| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|l#8@@0| T@U) (|$l#33#heap#0| T@U) (|$l#33#x#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#53| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0|) |$l#33#heap#0| |$l#33#x#0|) ($Box intType (int_2_U (_module.__default.Sum |l#0@@2| |l#1@@1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@0| ($Box intType ($Unbox intType |$l#33#x#0|))) |l#6@@0| |l#7@@0|)) |l#8@@0|))))))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#53| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0|) |$l#33#heap#0| |$l#33#x#0|))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@5))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@2) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@6 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((s T@U) (bx@@7 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@7) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@7))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@7))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@16| T@U) (|f#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|) $h@@2) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@16|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|) $h@@2))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@17| T@U) (|f#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|) $h@@3) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@17|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|) $h@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|n#0| Int) (|f#0@@3| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (LitInt |n#0|) |f#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (<= (LitInt 0) |n#0|)) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (|_module.__default.Sum#canCall| (LitInt (- |n#0| 1)) |f#0@@3|)) (= (_module.__default.Sum ($LS $ly) (LitInt |n#0|) |f#0@@3|) (ite (= (LitInt |n#0|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f#0@@3| ($Box intType (int_2_U (LitInt (- |n#0| 1))))))) (_module.__default.Sum ($LS $ly) (LitInt (- |n#0| 1)) |f#0@@3|))))))
 :qid |SumSumdfy.8:16|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.Sum ($LS $ly) (LitInt |n#0|) |f#0@@3|) ($IsGoodHeap $Heap))
))))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@8 Tclass._System.nat))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@9 Tclass._System.object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@10 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall (($ly@@0 T@U) (|n#0@@0| Int) (|f#0@@4| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@0) |n#0@@0| |f#0@@4|) (_module.__default.Sum $ly@@0 |n#0@@0| |f#0@@4|))
 :qid |SumSumdfy.8:16|
 :skolemid |528|
 :pattern ( (_module.__default.Sum ($LS $ly@@0) |n#0@@0| |f#0@@4|))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (t2@@0 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@0) h@@5) (forall ((bx0@@8 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@8 t0@@12) ($IsAllocBox bx0@@8 t0@@12 h@@5)) (and ($IsBox bx1 t1@@11) ($IsAllocBox bx1 t1@@11 h@@5))) (Requires2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@5 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1))
 :pattern ( (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@0) h@@5))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) (h@@6 T@U) ) (!  (=> (and ($IsGoodHeap h@@6) ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12) h@@6)) (forall ((bx0@@9 T@U) ) (!  (=> (and ($IsAllocBox bx0@@9 t0@@13 h@@6) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsAllocBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12 h@@6))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12) h@@6))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#9#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#9#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#9#o#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#9#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#9#ly#0|) |l#0@@4|)
 :qid |SumSumdfy.21:18|
 :skolemid |688|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#9#ly#0|))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) (t1@@13 T@U) (t2@@1 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@1)) (forall ((h@@7 T@U) (bx0@@10 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) (and ($IsBox bx0@@10 t0@@14) ($IsBox bx1@@0 t1@@13))) (Requires2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0)) ($IsBox (Apply2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0) t2@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@1)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (t2@@2 T@U) (heap@@2 T@U) (f@@11 T@U) (bx0@@11 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@11 t0@@15) ($IsBox bx1@@1 t1@@14)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@15 t1@@14 t2@@2)))) (= (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@2 $OneHeap f@@11 bx0@@11 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@2 heap@@2 f@@11 bx0@@11 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@2 $OneHeap f@@11 bx0@@11 bx1@@1) ($IsGoodHeap heap@@2))
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@2 heap@@2 f@@11 bx0@@11 bx1@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@12 T@U) (t0@@16 T@U) (t1@@15 T@U) ) (! (= ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@16 t1@@15)) (forall ((h@@8 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@8) ($IsBox bx0@@12 t0@@16)) (Requires1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12)) ($IsBox (Apply1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12) t1@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@16 t1@@15)))
)))
(assert (forall ((f@@13 T@U) (t0@@17 T@U) (t1@@16 T@U) (t2@@3 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@17 t1@@16 t2@@3) h@@9)) (forall ((bx0@@13 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@13 t0@@17 h@@9) ($IsAllocBox bx1@@2 t1@@16 h@@9)) (Requires2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2)) ($IsAllocBox (Apply2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2) t2@@3 h@@9))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@17 t1@@16 t2@@3) h@@9))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@18 T@U) (t1@@17 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@14 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@2 heap@@3 bx0@@14)) (Requires1 t0@@18 t1@@17 heap@@3 (Handle1 h@@10 r@@2 rd@@1) bx0@@14))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@18 t1@@17 heap@@3 (Handle1 h@@10 r@@2 rd@@1) bx0@@14))
)))
(assert (forall ((v@@3 T@U) (t0@@19 T@U) (h@@11 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@19) h@@11) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@19 h@@11))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@19) h@@11))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@18| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@18|)) |#$T0@@18|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@18|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@19| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|)) |#$R@@19|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@20| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|)) |#$T0@@20|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@21| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|)) |#$R@@21|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@22| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|)) |#$T0@@22|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$R@@23| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|)) |#$R@@23|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@20 T@U) (t1@@18 T@U) (t2@@4 T@U) (heap@@4 T@U) (f@@14 T@U) (bx0@@15 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@4) (and (and ($IsBox bx0@@15 t0@@20) ($IsBox bx1@@3 t1@@18)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc2 t0@@20 t1@@18 t2@@4)))) (|Set#Equal| (Reads2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) (Requires2 t0@@20 t1@@18 t2@@4 heap@@4 f@@14 bx0@@15 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) ($IsGoodHeap heap@@4))
 :pattern ( (Requires2 t0@@20 t1@@18 t2@@4 heap@@4 f@@14 bx0@@15 bx1@@3))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$R@@24| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@24|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@24| |#$R@@24|)) (forall ((|x0#0@@1| T@U) ) (!  (=> ($IsBox |x0#0@@1| |#$T0@@24|) (Requires1 |#$T0@@24| |#$R@@24| $OneHeap |f#0@@5| |x0#0@@1|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@24|)))
)))
(assert (forall ((f@@15 T@U) (t0@@21 T@U) (t1@@19 T@U) (t2@@5 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@1 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@21 t1@@19 t2@@5)) (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 u0@@3) ($IsBox bx@@13 t0@@21))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@13 u0@@3))
 :pattern ( ($IsBox bx@@13 t0@@21))
))) (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 u1@@3) ($IsBox bx@@14 t1@@19))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@14 u1@@3))
 :pattern ( ($IsBox bx@@14 t1@@19))
))) (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 t2@@5) ($IsBox bx@@15 u2@@1))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@15 t2@@5))
 :pattern ( ($IsBox bx@@15 u2@@1))
))) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@1)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@21 t1@@19 t2@@5)) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@1)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$R@@25| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 |#$T0@@25| |#$R@@25|)) (forall ((|x0#0@@2| T@U) ) (!  (=> ($IsBox |x0#0@@2| |#$T0@@25|) (|Set#Equal| (Reads1 |#$T0@@25| |#$R@@25| $OneHeap |f#0@@6| |x0#0@@2|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|)))
)))
(assert (forall ((f@@16 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@16 ($LS ly@@0)) (AtLayer A@@0 f@@16 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@16 ($LS ly@@0)))
)))
(assert (forall ((f@@17 T@U) (t0@@22 T@U) (t1@@20 T@U) (h@@12 T@U) ) (!  (=> ($IsGoodHeap h@@12) (= ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@22 t1@@20) h@@12) (forall ((bx0@@16 T@U) ) (!  (=> (and (and ($IsBox bx0@@16 t0@@22) ($IsAllocBox bx0@@16 t0@@22 h@@12)) (Requires1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16)) (forall ((r@@3 T@U) ) (!  (=> (and (or (not (= r@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16) ($Box refType r@@3))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@12 r@@3) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16) ($Box refType r@@3)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16))
 :pattern ( (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@22 t1@@20) h@@12))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$R@@26| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|)))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$R@@27| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@17)) bx@@17) ($Is HandleTypeType ($Unbox HandleTypeType bx@@17) (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|)))
)))
(assert (forall ((|#$T0@@28| T@U) (|#$R@@28| T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@18)) bx@@18) ($Is HandleTypeType ($Unbox HandleTypeType bx@@18) (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|)))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@5|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@2| $o@@1) |l#2@@2|)))) |l#3@@2|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |683|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@16| T@U) (|#$R@@29| T@U) (|f#0@@7| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@4) ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@4))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@17| T@U) (|#$R@@30| T@U) (|f#0@@8| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@5) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@0 T@U) (|n#0@@1| Int) (|f#0@@9| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (LitInt |n#0@@1|) (Lit HandleTypeType |f#0@@9|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (<= (LitInt 0) |n#0@@1|)) ($Is HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= (LitInt |n#0@@1|) (LitInt 0))) (not true)) (|_module.__default.Sum#canCall| (LitInt (- |n#0@@1| 1)) (Lit HandleTypeType |f#0@@9|))) (= (_module.__default.Sum ($LS $ly@@1) (LitInt |n#0@@1|) (Lit HandleTypeType |f#0@@9|)) (ite (= (LitInt |n#0@@1|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType |f#0@@9|) ($Box intType (int_2_U (LitInt (- |n#0@@1| 1))))))) (_module.__default.Sum ($LS $ly@@1) (LitInt (- |n#0@@1| 1)) (Lit HandleTypeType |f#0@@9|)))))))
 :qid |SumSumdfy.8:16|
 :weight 3
 :skolemid |534|
 :pattern ( (_module.__default.Sum ($LS $ly@@1) (LitInt |n#0@@1|) (Lit HandleTypeType |f#0@@9|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|#$T0@@31| T@U) (|#$R@@31| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$R@@32| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$R@@33| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|))
)))
(assert (forall ((t0@@23 T@U) (t1@@21 T@U) (heap@@5 T@U) (f@@18 T@U) (bx0@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@5) (and ($IsBox bx0@@17 t0@@23) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc1 t0@@23 t1@@21)))) (|Set#Equal| (Reads1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) |Set#Empty|)) (= (Requires1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) (Requires1 t0@@23 t1@@21 heap@@5 f@@18 bx0@@17)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) ($IsGoodHeap heap@@5))
 :pattern ( (Requires1 t0@@23 t1@@21 heap@@5 f@@18 bx0@@17))
)))
(assert (forall ((t0@@24 T@U) (t1@@22 T@U) (t2@@6 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@19 T@U) (bx0@@18 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) (and (and ($IsBox bx0@@18 t0@@24) ($IsBox bx1@@4 t1@@22)) ($Is HandleTypeType f@@19 (Tclass._System.___hFunc2 t0@@24 t1@@22 t2@@6)))) (forall ((o@@7 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@24 t1@@22 t2@@6 h0@@5 f@@19 bx0@@18 bx1@@4) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@5 o@@7) fld@@5) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@5 o@@7) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@24 t1@@22 t2@@6 h0@@5 f@@19 bx0@@18 bx1@@4) (Requires2 t0@@24 t1@@22 t2@@6 h1@@5 f@@19 bx0@@18 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires2 t0@@24 t1@@22 t2@@6 h1@@5 f@@19 bx0@@18 bx1@@4))
)))
(assert (forall ((t0@@25 T@U) (t1@@23 T@U) (t2@@7 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@20 T@U) (bx0@@19 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) (and (and ($IsBox bx0@@19 t0@@25) ($IsBox bx1@@5 t1@@23)) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc2 t0@@25 t1@@23 t2@@7)))) (forall ((o@@8 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@6 o@@8) fld@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@6 o@@8) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@25 t1@@23 t2@@7 h0@@6 f@@20 bx0@@19 bx1@@5) (Requires2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5))
)))
(assert (forall ((bx@@19 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@19 (TSet t@@5)))
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
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@1 o@@9) (|Set#IsMember| b@@1 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@9))
 :pattern ( (|Set#IsMember| b@@1 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@1 T@U) (|n#0@@2| Int) (|f#0@@10| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |n#0@@2| |f#0@@10|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (<= (LitInt 0) |n#0@@2|)) ($Is HandleTypeType |f#0@@10| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (|_module.__default.Sum#canCall| (- |n#0@@2| 1) |f#0@@10|)) (= (_module.__default.Sum ($LS $ly@@2) |n#0@@2| |f#0@@10|) (ite (= |n#0@@2| (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 |f#0@@10| ($Box intType (int_2_U (- |n#0@@2| 1)))))) (_module.__default.Sum $ly@@2 (- |n#0@@2| 1) |f#0@@10|))))))
 :qid |SumSumdfy.8:16|
 :skolemid |532|
 :pattern ( (_module.__default.Sum ($LS $ly@@2) |n#0@@2| |f#0@@10|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((t0@@26 T@U) (t1@@24 T@U) (t2@@8 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@21 T@U) (bx0@@20 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) (and (and ($IsBox bx0@@20 t0@@26) ($IsBox bx1@@6 t1@@24)) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc2 t0@@26 t1@@24 t2@@8)))) (forall ((o@@10 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads2 t0@@26 t1@@24 t2@@8 h0@@7 f@@21 bx0@@20 bx1@@6) ($Box refType o@@10))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@7 o@@10) fld@@7) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@7 o@@10) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@26 t1@@24 t2@@8 h0@@7 f@@21 bx0@@20 bx1@@6) (Reads2 t0@@26 t1@@24 t2@@8 h1@@7 f@@21 bx0@@20 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads2 t0@@26 t1@@24 t2@@8 h1@@7 f@@21 bx0@@20 bx1@@6))
)))
(assert (forall ((t0@@27 T@U) (t1@@25 T@U) (t2@@9 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@22 T@U) (bx0@@21 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) (and (and ($IsBox bx0@@21 t0@@27) ($IsBox bx1@@7 t1@@25)) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc2 t0@@27 t1@@25 t2@@9)))) (forall ((o@@11 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7) ($Box refType o@@11))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@8 o@@11) fld@@8) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@8 o@@11) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@27 t1@@25 t2@@9 h0@@8 f@@22 bx0@@21 bx1@@7) (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7))
)))
(assert (forall ((t0@@28 T@U) (t1@@26 T@U) (t2@@10 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@23 T@U) (bx0@@22 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) (and (and ($IsBox bx0@@22 t0@@28) ($IsBox bx1@@8 t1@@26)) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 t0@@28 t1@@26 t2@@10)))) (forall ((o@@12 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads2 t0@@28 t1@@26 t2@@10 h0@@9 f@@23 bx0@@22 bx1@@8) ($Box refType o@@12))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@9 o@@12) fld@@9) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@9 o@@12) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@28 t1@@26 t2@@10 h0@@9 f@@23 bx0@@22 bx1@@8) (Apply2 t0@@28 t1@@26 t2@@10 h1@@9 f@@23 bx0@@22 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply2 t0@@28 t1@@26 t2@@10 h1@@9 f@@23 bx0@@22 bx1@@8))
)))
(assert (forall ((t0@@29 T@U) (t1@@27 T@U) (t2@@11 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@24 T@U) (bx0@@23 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) (and (and ($IsBox bx0@@23 t0@@29) ($IsBox bx1@@9 t1@@27)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 t0@@29 t1@@27 t2@@11)))) (forall ((o@@13 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9) ($Box refType o@@13))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@10 o@@13) fld@@10) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@10 o@@13) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@29 t1@@27 t2@@11 h0@@10 f@@24 bx0@@23 bx1@@9) (Apply2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9))
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
(assert (forall ((h@@13 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@13)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@13))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#9#heap#0@@0| T@U) (|$l#9#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#9#heap#0@@0| |$l#9#x#0@@0|) |l#0@@6|)
 :qid |SumSumdfy.21:18|
 :skolemid |687|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#9#heap#0@@0| |$l#9#x#0@@0|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0_0_0_0@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |##f#0_0_0_0@0| () T@U)
(declare-fun |g#0| () T@U)
(declare-fun |i#0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |n#0@@3| () Int)
(declare-fun |$lambdaHeap#0_0_1_1@0| () T@U)
(declare-fun |$lambdaHeap#0_0_1_0@0| () T@U)
(declare-fun |$_Frame#l0_0_1_0@0| () T@U)
(declare-fun |$lambdaHeap#0_0_1@0| () T@U)
(declare-fun |$lambdaHeap#0_0_0@0| () T@U)
(declare-fun |$_Frame#l0_0_0@0| () T@U)
(declare-fun |$lambdaHeap#1_0_1_0@0| () T@U)
(declare-fun |$lambdaHeap#1_0_1_1@0| () T@U)
(declare-fun |$lambdaHeap#1_0_1_2@0| () T@U)
(declare-fun |##f#1_0_1_1@0| () T@U)
(declare-fun |##n#1_0_1_1@0| () Int)
(declare-fun |##f#1_0_1_0@0| () T@U)
(declare-fun |##n#1_0_1_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$lambdaHeap#1_0_0_0@0| () T@U)
(declare-fun |$lambdaHeap#1_0_0_1@0| () T@U)
(declare-fun |$lambdaHeap#1_0_0_2@0| () T@U)
(declare-fun |##f#1_0_0_1@0| () T@U)
(declare-fun |##f#1_0_0_0@0| () T@U)
(declare-fun |##n#1_0_0_0@0| () Int)
(declare-fun |$lambdaHeap#1_0_2_1@0| () T@U)
(declare-fun |$lambdaHeap#1_0_2_0@0| () T@U)
(declare-fun |$_Frame#l1_0_2_0@0| () T@U)
(declare-fun |##n#1_0_2_0@0| () Int)
(declare-fun |$lambdaHeap#1_0_2_2@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##f#1_0_2_1@0| () T@U)
(declare-fun |n##1_0_2_0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##n#1_0_2_1@0| () Int)
(declare-fun |$lambdaHeap#1_0_3_1@0| () T@U)
(declare-fun |$lambdaHeap#1_0_3_0@0| () T@U)
(declare-fun |$_Frame#l1_0_3_0@0| () T@U)
(declare-fun |$lambdaHeap#1_0_3_3@0| () T@U)
(declare-fun |$lambdaHeap#1_0_3_2@0| () T@U)
(declare-fun |$_Frame#l1_0_3_2@0| () T@U)
(declare-fun |##n#1_0_3_1@0| () Int)
(declare-fun |$lambdaHeap#1_0_1@0| () T@U)
(declare-fun |$lambdaHeap#1_0_0@0| () T@U)
(declare-fun |$_Frame#l1_0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.PrettyBasicBetaReduction)
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
 (=> (= (ControlFlow 0 0) 103) (let ((anon106_Else_correct true))
(let ((anon106_Then_correct true))
(let ((anon105_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_0_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_0_0@0|))) (and (=> (= (ControlFlow 0 99) 97) anon106_Then_correct) (=> (= (ControlFlow 0 99) 98) anon106_Else_correct)))))
(let ((anon105_Else_correct  (=> (= |##f#0_0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#0_0_0_0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2) (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (= (ControlFlow 0 96) (- 0 95)))) (= (LitInt 0) (_module.__default.Sum ($LS ($LS $LZ)) |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))))))
(let ((anon104_Then_correct  (=> ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat $Heap@@2) (and (=> (= (ControlFlow 0 100) 99) anon105_Then_correct) (=> (= (ControlFlow 0 100) 96) anon105_Else_correct)))))
(let ((anon103_Else_correct true))
(let ((anon103_Then_correct true))
(let ((anon102_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_1_1@0|) (or (= |$lambdaHeap#0_0_1_0@0| |$lambdaHeap#0_0_1_1@0|) ($HeapSucc |$lambdaHeap#0_0_1_0@0| |$lambdaHeap#0_0_1_1@0|))) (and (=> (= (ControlFlow 0 92) 90) anon103_Then_correct) (=> (= (ControlFlow 0 92) 91) anon103_Else_correct)))))
(let ((anon102_Else_correct true))
(let ((anon101_Then_correct  (=> (and (= |$_Frame#l0_0_1_0@0| (|lambda#0| null |$lambdaHeap#0_0_1_0@0| alloc false)) ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat |$lambdaHeap#0_0_1_0@0|)) (and (=> (= (ControlFlow 0 93) 92) anon102_Then_correct) (=> (= (ControlFlow 0 93) 89) anon102_Else_correct)))))
(let ((anon101_Else_correct true))
(let ((anon100_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_1_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_1_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_1_0@0|))) (and (=> (= (ControlFlow 0 94) 93) anon101_Then_correct) (=> (= (ControlFlow 0 94) 88) anon101_Else_correct)))))
(let ((anon98_Else_correct true))
(let ((anon98_Then_correct true))
(let ((anon97_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_1@0|) (or (= |$lambdaHeap#0_0_0@0| |$lambdaHeap#0_0_1@0|) ($HeapSucc |$lambdaHeap#0_0_0@0| |$lambdaHeap#0_0_1@0|))) (and (=> (= (ControlFlow 0 85) 83) anon98_Then_correct) (=> (= (ControlFlow 0 85) 84) anon98_Else_correct)))))
(let ((anon97_Else_correct true))
(let ((anon96_Then_correct  (=> (and (= |$_Frame#l0_0_0@0| (|lambda#0| null |$lambdaHeap#0_0_0@0| alloc false)) ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat |$lambdaHeap#0_0_0@0|)) (and (=> (= (ControlFlow 0 86) 85) anon97_Then_correct) (=> (= (ControlFlow 0 86) 82) anon97_Else_correct)))))
(let ((anon96_Else_correct true))
(let ((anon95_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_0@0|))) (and (=> (= (ControlFlow 0 87) 86) anon96_Then_correct) (=> (= (ControlFlow 0 87) 81) anon96_Else_correct)))))
(let ((anon95_Else_correct true))
(let ((anon100_Else_correct  (=> (and (forall ((|$l#0_0_1_9#x#0| T@U) ) (! (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType |$l#0_0_1_9#x#0|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))
 :qid |unknown.0:0|
 :skolemid |557|
)) (= (ControlFlow 0 79) (- 0 78))) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n#0@@3| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (LitInt 0)))))
(let ((anon130_Else_correct true))
(let ((anon130_Then_correct true))
(let ((anon129_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_1_0@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_1_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_1_0@0|))) (and (=> (= (ControlFlow 0 74) 72) anon130_Then_correct) (=> (= (ControlFlow 0 74) 73) anon130_Else_correct)))))
(let ((anon132_Else_correct true))
(let ((anon132_Then_correct true))
(let ((anon131_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_1_1@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_1_1@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_1_1@0|))) (and (=> (= (ControlFlow 0 70) 68) anon132_Then_correct) (=> (= (ControlFlow 0 70) 69) anon132_Else_correct)))))
(let ((anon134_Else_correct true))
(let ((anon134_Then_correct true))
(let ((anon133_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_1_2@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_1_2@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_1_2@0|))) (and (=> (= (ControlFlow 0 65) 63) anon134_Then_correct) (=> (= (ControlFlow 0 65) 64) anon134_Else_correct)))))
(let ((anon133_Else_correct  (=> (= |##f#1_0_1_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1_0_1_1@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2) (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (= (ControlFlow 0 62) (- 0 61)))) (= (+ (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $Heap@@2 |g#0| ($Box intType (int_2_U |i#0|)) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (_module.__default.Sum ($LS ($LS $LZ)) (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (_module.__default.Sum ($LS ($LS $LZ)) (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))))
(let ((anon131_Else_correct  (and (=> (= (ControlFlow 0 66) (- 0 67)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#1_0_1_1@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_1_1@0|) Tclass._System.nat $Heap@@2)) (and (=> (= (ControlFlow 0 66) 65) anon133_Then_correct) (=> (= (ControlFlow 0 66) 62) anon133_Else_correct)))))))
(let ((anon129_Else_correct  (=> (and (and (= |##f#1_0_1_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#1_0_1_0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2)) (and (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))) (and (=> (= (ControlFlow 0 71) 70) anon131_Then_correct) (=> (= (ControlFlow 0 71) 66) anon131_Else_correct)))))
(let ((anon128_Then_correct  (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#1_0_1_0@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_1_0@0|) Tclass._System.nat $Heap@@2)) (and (=> (= (ControlFlow 0 75) 74) anon129_Then_correct) (=> (= (ControlFlow 0 75) 71) anon129_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 59) (- 0 58)) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n#0@@3| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (_module.__default.Sum ($LS ($LS $LZ)) |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))
(let ((anon104_Else_correct  (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n#0@@3| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (_module.__default.Sum ($LS $LZ) |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (=> (and (= $Heap@1 $Heap@@2) (= (ControlFlow 0 77) 59)) GeneratedUnifiedExit_correct))))
(let ((anon93_Then_correct  (=> (= |n#0@@3| (LitInt 0)) (and (and (and (and (and (=> (= (ControlFlow 0 101) 100) anon104_Then_correct) (=> (= (ControlFlow 0 101) 77) anon104_Else_correct)) (=> (= (ControlFlow 0 101) 94) anon100_Then_correct)) (=> (= (ControlFlow 0 101) 79) anon100_Else_correct)) (=> (= (ControlFlow 0 101) 87) anon95_Then_correct)) (=> (= (ControlFlow 0 101) 80) anon95_Else_correct)))))
(let ((anon135_Else_correct  (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n#0@@3| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (_module.__default.Sum ($LS $LZ) |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (=> (and (= $Heap@1 $Heap@@2) (= (ControlFlow 0 60) 59)) GeneratedUnifiedExit_correct))))
(let ((anon137_Else_correct true))
(let ((anon137_Then_correct true))
(let ((anon136_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_0_0@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_0_0@0|))) (and (=> (= (ControlFlow 0 57) 55) anon137_Then_correct) (=> (= (ControlFlow 0 57) 56) anon137_Else_correct)))))
(let ((anon139_Else_correct true))
(let ((anon139_Then_correct true))
(let ((anon138_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_0_1@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_0_1@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_0_1@0|))) (and (=> (= (ControlFlow 0 53) 51) anon139_Then_correct) (=> (= (ControlFlow 0 53) 52) anon139_Else_correct)))))
(let ((anon141_Else_correct true))
(let ((anon141_Then_correct true))
(let ((anon140_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_0_2@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_0_2@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_0_2@0|))) (and (=> (= (ControlFlow 0 49) 47) anon141_Then_correct) (=> (= (ControlFlow 0 49) 48) anon141_Else_correct)))))
(let ((anon140_Else_correct  (=> (= |##f#1_0_0_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1_0_0_1@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2) (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (= (ControlFlow 0 46) (- 0 45)))) (= (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (_module.__default.Sum ($LS ($LS $LZ)) (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (_module.__default.Sum ($LS ($LS $LZ)) |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))))))
(let ((anon138_Else_correct  (=> (= |##f#1_0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1_0_0_0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2) (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat $Heap@@2))) (and (=> (= (ControlFlow 0 50) 49) anon140_Then_correct) (=> (= (ControlFlow 0 50) 46) anon140_Else_correct))))))
(let ((anon136_Else_correct  (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#1_0_0_0@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_0_0@0|) Tclass._System.nat $Heap@@2)) (and (=> (= (ControlFlow 0 54) 53) anon138_Then_correct) (=> (= (ControlFlow 0 54) 50) anon138_Else_correct))))))
(let ((anon125_Else_correct true))
(let ((anon125_Then_correct true))
(let ((anon124_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_2_1@0|) (or (= |$lambdaHeap#1_0_2_0@0| |$lambdaHeap#1_0_2_1@0|) ($HeapSucc |$lambdaHeap#1_0_2_0@0| |$lambdaHeap#1_0_2_1@0|))) (and (=> (= (ControlFlow 0 42) 40) anon125_Then_correct) (=> (= (ControlFlow 0 42) 41) anon125_Else_correct)))))
(let ((anon124_Else_correct true))
(let ((anon123_Then_correct  (=> (and (and (= |$_Frame#l1_0_2_0@0| (|lambda#0| null |$lambdaHeap#1_0_2_0@0| alloc false)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (and (= |##n#1_0_2_0@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_2_0@0|) Tclass._System.nat |$lambdaHeap#1_0_2_0@0|))) (and (=> (= (ControlFlow 0 43) 42) anon124_Then_correct) (=> (= (ControlFlow 0 43) 39) anon124_Else_correct)))))
(let ((anon123_Else_correct true))
(let ((anon122_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_2_0@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_2_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_2_0@0|))) (and (=> (= (ControlFlow 0 44) 43) anon123_Then_correct) (=> (= (ControlFlow 0 44) 38) anon123_Else_correct)))))
(let ((anon127_Else_correct true))
(let ((anon127_Then_correct true))
(let ((anon126_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_2_2@0|) (or (= $Heap@0 |$lambdaHeap#1_0_2_2@0|) ($HeapSucc $Heap@0 |$lambdaHeap#1_0_2_2@0|))) (and (=> (= (ControlFlow 0 31) 29) anon127_Then_correct) (=> (= (ControlFlow 0 31) 30) anon127_Else_correct)))))
(let ((anon126_Else_correct  (=> (= |##f#1_0_2_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1_0_2_1@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@0) (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (= (ControlFlow 0 28) (- 0 27)))) (= (+ (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $Heap@0 |g#0| ($Box intType (int_2_U |i#0|)) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| (- |n#0@@3| 1) TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|)))))) (+ (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $Heap@0 |g#0| ($Box intType (int_2_U |i#0|)) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (_module.__default.Sum ($LS ($LS $LZ)) (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))))
(let ((anon122_Else_correct  (=> (forall ((|$l#1_0_2_9#x#0| T@U) ) (! (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType |$l#1_0_2_9#x#0|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))
 :qid |unknown.0:0|
 :skolemid |561|
)) (and (=> (= (ControlFlow 0 32) (- 0 37)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (= |n##1_0_2_0@0| (- |n#0@@3| 1)) (and (=> (= (ControlFlow 0 32) (- 0 36)) (or (<= 0 |n#0@@3|) (= |n##1_0_2_0@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |n##1_0_2_0@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (or (or (<= 0 |i#0|) (< |n##1_0_2_0@0| |n#0@@3|)) (= |i#0| |i#0|))) (=> (or (or (<= 0 |i#0|) (< |n##1_0_2_0@0| |n#0@@3|)) (= |i#0| |i#0|)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (or (< |n##1_0_2_0@0| |n#0@@3|) (and (= |n##1_0_2_0@0| |n#0@@3|) (< |i#0| |i#0|)))) (=> (or (< |n##1_0_2_0@0| |n#0@@3|) (and (= |n##1_0_2_0@0| |n#0@@3|) (< |i#0| |i#0|))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall ((|$l#15#x#0| T@U) ) (! (|_module.__default.Sum#canCall| |n##1_0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType |$l#15#x#0|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))
 :qid |unknown.0:0|
 :skolemid |554|
)) (|_module.__default.Sum#canCall| |n##1_0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n##1_0_2_0@0| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (_module.__default.Sum ($LS ($LS $LZ)) |n##1_0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType (int_2_U |i#0|))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (= $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#1_0_2_1@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_2_1@0|) Tclass._System.nat $Heap@0)) (and (=> (= (ControlFlow 0 32) 31) anon126_Then_correct) (=> (= (ControlFlow 0 32) 28) anon126_Else_correct)))))))))))))))))))
(let ((anon116_Else_correct true))
(let ((anon116_Then_correct true))
(let ((anon115_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_3_1@0|) (or (= |$lambdaHeap#1_0_3_0@0| |$lambdaHeap#1_0_3_1@0|) ($HeapSucc |$lambdaHeap#1_0_3_0@0| |$lambdaHeap#1_0_3_1@0|))) (and (=> (= (ControlFlow 0 24) 22) anon116_Then_correct) (=> (= (ControlFlow 0 24) 23) anon116_Else_correct)))))
(let ((anon115_Else_correct true))
(let ((anon114_Then_correct  (=> (and (= |$_Frame#l1_0_3_0@0| (|lambda#0| null |$lambdaHeap#1_0_3_0@0| alloc false)) ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat |$lambdaHeap#1_0_3_0@0|)) (and (=> (= (ControlFlow 0 25) 24) anon115_Then_correct) (=> (= (ControlFlow 0 25) 21) anon115_Else_correct)))))
(let ((anon114_Else_correct true))
(let ((anon113_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_3_0@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_3_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_3_0@0|))) (and (=> (= (ControlFlow 0 26) 25) anon114_Then_correct) (=> (= (ControlFlow 0 26) 20) anon114_Else_correct)))))
(let ((anon120_Else_correct true))
(let ((anon120_Then_correct true))
(let ((anon119_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_3_3@0|) (or (= |$lambdaHeap#1_0_3_2@0| |$lambdaHeap#1_0_3_3@0|) ($HeapSucc |$lambdaHeap#1_0_3_2@0| |$lambdaHeap#1_0_3_3@0|))) (and (=> (= (ControlFlow 0 15) 13) anon120_Then_correct) (=> (= (ControlFlow 0 15) 14) anon120_Else_correct)))))
(let ((anon119_Else_correct true))
(let ((anon118_Then_correct  (=> (= |$_Frame#l1_0_3_2@0| (|lambda#0| null |$lambdaHeap#1_0_3_2@0| alloc false)) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#1_0_3_1@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#1_0_3_1@0|) Tclass._System.nat |$lambdaHeap#1_0_3_2@0|)) (and (=> (= (ControlFlow 0 16) 15) anon119_Then_correct) (=> (= (ControlFlow 0 16) 12) anon119_Else_correct))))))))
(let ((anon118_Else_correct true))
(let ((anon117_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_3_2@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_3_2@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_3_2@0|))) (and (=> (= (ControlFlow 0 18) 16) anon118_Then_correct) (=> (= (ControlFlow 0 18) 11) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (forall ((|$l#1_0_3_21#x#0| T@U) ) (! (|_module.__default.Sum#canCall| (- |n#0@@3| 1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType |$l#1_0_3_21#x#0|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))
 :qid |unknown.0:0|
 :skolemid |566|
)) (= (ControlFlow 0 10) (- 0 9))) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| |n#0@@3| TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))) (+ (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $Heap@@2 |g#0| ($Box intType (int_2_U |i#0|)) ($Box intType (int_2_U (- |n#0@@3| 1)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#57| (- |n#0@@3| 1) TInt TInt TInt |g#0| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box intType (int_2_U |i#0|))))))))))
(let ((anon113_Else_correct  (=> (forall ((|$l#1_0_3_9#x#0| T@U) ) (! (|_module.__default.Sum#canCall| |n#0@@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#43| TInt TInt TInt |g#0| ($Box intType |$l#1_0_3_9#x#0|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))
 :qid |unknown.0:0|
 :skolemid |564|
)) (and (=> (= (ControlFlow 0 19) 18) anon117_Then_correct) (=> (= (ControlFlow 0 19) 10) anon117_Else_correct)))))
(let ((anon111_Else_correct true))
(let ((anon111_Then_correct true))
(let ((anon110_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_1@0|) (or (= |$lambdaHeap#1_0_0@0| |$lambdaHeap#1_0_1@0|) ($HeapSucc |$lambdaHeap#1_0_0@0| |$lambdaHeap#1_0_1@0|))) (and (=> (= (ControlFlow 0 6) 4) anon111_Then_correct) (=> (= (ControlFlow 0 6) 5) anon111_Else_correct)))))
(let ((anon110_Else_correct true))
(let ((anon109_Then_correct  (=> (and (= |$_Frame#l1_0_0@0| (|lambda#0| null |$lambdaHeap#1_0_0@0| alloc false)) ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat |$lambdaHeap#1_0_0@0|)) (and (=> (= (ControlFlow 0 7) 6) anon110_Then_correct) (=> (= (ControlFlow 0 7) 3) anon110_Else_correct)))))
(let ((anon109_Else_correct true))
(let ((anon108_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_0@0|) (or (= $Heap@@2 |$lambdaHeap#1_0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#1_0_0@0|))) (and (=> (= (ControlFlow 0 8) 7) anon109_Then_correct) (=> (= (ControlFlow 0 8) 2) anon109_Else_correct)))))
(let ((anon108_Else_correct true))
(let ((anon93_Else_correct  (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 76) 75) anon128_Then_correct) (=> (= (ControlFlow 0 76) 60) anon135_Else_correct)) (=> (= (ControlFlow 0 76) 57) anon136_Then_correct)) (=> (= (ControlFlow 0 76) 54) anon136_Else_correct)) (=> (= (ControlFlow 0 76) 44) anon122_Then_correct)) (=> (= (ControlFlow 0 76) 32) anon122_Else_correct)) (=> (= (ControlFlow 0 76) 26) anon113_Then_correct)) (=> (= (ControlFlow 0 76) 19) anon113_Else_correct)) (=> (= (ControlFlow 0 76) 8) anon108_Then_correct)) (=> (= (ControlFlow 0 76) 1) anon108_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (=> (= (ControlFlow 0 102) 101) anon93_Then_correct) (=> (= (ControlFlow 0 102) 76) anon93_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (<= (LitInt 0) |n#0@@3|)) (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hTotalFunc2 TInt TInt TInt)) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc2 TInt TInt TInt) $Heap@@2)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 103) 102)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
