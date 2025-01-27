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
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#7| (Bool) T@U)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |lambda#13| (T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U) T@U)
(declare-fun |lambda#15| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass._System.array3? Tagclass._System.array3 Tagclass._System.___hFunc3 tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$array2 tytagFamily$array3 |tytagFamily$_#Func3|)
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
 :skolemid |7344|
 :pattern ( (|Set#IsMember| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap (Handle3 h r rd) bx0 bx1 bx2) bx))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |7337|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |7338|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |7339|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |7340|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7128|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |7257|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |7259|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((_System.array3$arg T@U) ($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array3? _System.array3$arg))) ($Is intType (int_2_U (_System.array3.Length0 $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |7325|
 :pattern ( (_System.array3.Length0 $o@@2) (Tclass._System.array3? _System.array3$arg))
)))
(assert (forall ((_System.array3$arg@@0 T@U) ($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array3? _System.array3$arg@@0))) ($Is intType (int_2_U (_System.array3.Length1 $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |7327|
 :pattern ( (_System.array3.Length1 $o@@3) (Tclass._System.array3? _System.array3$arg@@0))
)))
(assert (forall ((_System.array3$arg@@1 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array3? _System.array3$arg@@1))) ($Is intType (int_2_U (_System.array3.Length2 $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |7329|
 :pattern ( (_System.array3.Length2 $o@@4) (Tclass._System.array3? _System.array3$arg@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |7114|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |7134|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |7265|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
)))
(assert (forall ((_System.array3$arg@@2 T@U) (|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._System.array3 _System.array3$arg@@2) $h@@2) ($IsAlloc refType |c#0@@1| (Tclass._System.array3? _System.array3$arg@@2) $h@@2))
 :qid |unknown.0:0|
 :skolemid |7335|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._System.array3 _System.array3$arg@@2) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._System.array3? _System.array3$arg@@2) $h@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |6878|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (t3@@1 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1) h@@0) (forall ((bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0@@0 t0@@2) ($IsAllocBox bx0@@0 t0@@2 h@@0)) (and ($IsBox bx1@@0 t1@@2) ($IsAllocBox bx1@@0 t1@@2 h@@0))) (and ($IsBox bx2@@0 t2@@1) ($IsAllocBox bx2@@0 t2@@1 h@@0))) (Requires3 t0@@2 t1@@2 t2@@1 t3@@1 h@@0 f bx0@@0 bx1@@0 bx2@@0)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads3 t0@@2 t1@@2 t2@@1 t3@@1 h@@0 f bx0@@0 bx1@@0 bx2@@0) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |7366|
 :pattern ( (|Set#IsMember| (Reads3 t0@@2 t1@@2 t2@@1 t3@@1 h@@0 f bx0@@0 bx1@@0 bx2@@0) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |7367|
 :pattern ( (Apply3 t0@@2 t1@@2 t2@@1 t3@@1 h@@0 f bx0@@0 bx1@@0 bx2@@0))
 :pattern ( (Reads3 t0@@2 t1@@2 t2@@1 t3@@1 h@@0 f bx0@@0 bx1@@0 bx2@@0))
))))
 :qid |unknown.0:0|
 :skolemid |7368|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1) h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |7120|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@3))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7127|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass._System.array2? _System.array2$arg@@2) $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7256|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass._System.array2? _System.array2$arg@@2) $h@@5))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ($o@@7 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@7 (Tclass._System.array3? _System.array3$arg@@3) $h@@6)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7324|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass._System.array3? _System.array3$arg@@3) $h@@6))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (t3@@2 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@1 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@1 t0@@3) ($IsBox bx1@@1 t1@@3)) ($IsBox bx2@@1 t2@@2)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2)))) (= (|Set#Equal| (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 $OneHeap f@@0 bx0@@1 bx1@@1 bx2@@1) |Set#Empty|) (|Set#Equal| (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 heap@@0 f@@0 bx0@@1 bx1@@1 bx2@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |7357|
 :pattern ( (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 $OneHeap f@@0 bx0@@1 bx1@@1 bx2@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads3 t0@@3 t1@@3 t2@@2 t3@@2 heap@@0 f@@0 bx0@@1 bx1@@1 bx2@@1))
)))
(assert (forall (($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7117|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7))
)))
(assert (forall ((f@@1 T@U) (t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@3 T@U) (u0@@4 T@U) (u1@@4 T@U) (u2@@3 T@U) (u3@@3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@3)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@4) ($IsBox bx@@0 t0@@4))
 :qid |unknown.0:0|
 :skolemid |7361|
 :pattern ( ($IsBox bx@@0 u0@@4))
 :pattern ( ($IsBox bx@@0 t0@@4))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u1@@4) ($IsBox bx@@1 t1@@4))
 :qid |unknown.0:0|
 :skolemid |7362|
 :pattern ( ($IsBox bx@@1 u1@@4))
 :pattern ( ($IsBox bx@@1 t1@@4))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 u2@@3) ($IsBox bx@@2 t2@@3))
 :qid |unknown.0:0|
 :skolemid |7363|
 :pattern ( ($IsBox bx@@2 u2@@3))
 :pattern ( ($IsBox bx@@2 t2@@3))
))) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 t3@@3) ($IsBox bx@@3 u3@@3))
 :qid |unknown.0:0|
 :skolemid |7364|
 :pattern ( ($IsBox bx@@3 t3@@3))
 :pattern ( ($IsBox bx@@3 u3@@3))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@4 u1@@4 u2@@3 u3@@3)))
 :qid |unknown.0:0|
 :skolemid |7365|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@3)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@4 u1@@4 u2@@3 u3@@3)))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |6871|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |6872|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6770|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6768|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (t3@@4 T@U) (heap@@1 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (! (= (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 heap@@1 (Handle3 h@@2 r@@1 rd@@0) bx0@@2 bx1@@2 bx2@@2) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType h@@2 heap@@1 bx0@@2 bx1@@2 bx2@@2))
 :qid |unknown.0:0|
 :skolemid |7342|
 :pattern ( (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 heap@@1 (Handle3 h@@2 r@@1 rd@@0) bx0@@2 bx1@@2 bx2@@2))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |7336|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (t2@@5 T@U) (t3@@5 T@U) (heap@@2 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@3 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType r@@2 heap@@2 bx0@@3 bx1@@3 bx2@@3)) (Requires3 t0@@6 t1@@6 t2@@5 t3@@5 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@3 bx2@@3))
 :qid |unknown.0:0|
 :skolemid |7343|
 :pattern ( (Requires3 t0@@6 t1@@6 t2@@5 t3@@5 heap@@2 (Handle3 h@@3 r@@2 rd@@1) bx0@@3 bx1@@3 bx2@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@8 T@U) ($o@@9 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) _System.array$arg@@2 $h@@8))
 :qid |unknown.0:0|
 :skolemid |7125|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6779|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@7 T@U) ) (! (= ($Is SetType v (TSet t0@@7)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@7))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |6799|
 :pattern ( (|Set#IsMember| v bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |6800|
 :pattern ( ($Is SetType v (TSet t0@@7)))
)))
(assert (forall ((f@@2 T@U) (i Int) ) (! (= (FDim (MultiIndexField f@@2 i)) (+ (FDim f@@2) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |6858|
 :pattern ( (MultiIndexField f@@2 i))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |6854|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |7113|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7133|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@4| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7264|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((_System.array3$arg@@4 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@4))  (and ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@4)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7334|
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@4)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@4 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@4) ($IsAlloc T@@1 v@@0 t h@@4))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6792|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@4))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@9 T@U) ($o@@10 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@10))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@10))))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@9))
 :qid |unknown.0:0|
 :skolemid |7254|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@5 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@5 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@5) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |6864|
 :pattern ( ($HeapSucc h@@5 k@@0) ($IsAllocBox bx@@5 t@@0 h@@5))
)))
(assert (forall ((h@@6 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@6 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@6) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |6863|
 :pattern ( ($HeapSucc h@@6 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@6))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7121|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7130|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7248|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7261|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((_System.array3$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@5)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@5)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |7315|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@6)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@6)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |7331|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((s T@U) (bx@@6 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@6) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@6))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |6835|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@6))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |7341|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |7112|
 :pattern ( ($IsBox bx@@8 Tclass._System.nat))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |7115|
 :pattern ( ($IsBox bx@@9 Tclass._System.object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |7118|
 :pattern ( ($IsBox bx@@10 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |7126|
 :pattern ( ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |7255|
 :pattern ( ($Is refType $o@@12 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((_System.array3$arg@@7 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._System.array3? _System.array3$arg@@7))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._System.array3? _System.array3$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |7323|
 :pattern ( ($Is refType $o@@13 (Tclass._System.array3? _System.array3$arg@@7)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7119|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((f@@4 T@U) (t0@@8 T@U) (t1@@7 T@U) (t2@@6 T@U) (t3@@6 T@U) ) (! (= ($Is HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@8 t1@@7 t2@@6 t3@@6)) (forall ((h@@7 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx2@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) (and (and ($IsBox bx0@@4 t0@@8) ($IsBox bx1@@4 t1@@7)) ($IsBox bx2@@4 t2@@6))) (Requires3 t0@@8 t1@@7 t2@@6 t3@@6 h@@7 f@@4 bx0@@4 bx1@@4 bx2@@4)) ($IsBox (Apply3 t0@@8 t1@@7 t2@@6 t3@@6 h@@7 f@@4 bx0@@4 bx1@@4 bx2@@4) t3@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7359|
 :pattern ( (Apply3 t0@@8 t1@@7 t2@@6 t3@@6 h@@7 f@@4 bx0@@4 bx1@@4 bx2@@4))
)))
 :qid |unknown.0:0|
 :skolemid |7360|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@8 t1@@7 t2@@6 t3@@6)))
)))
(assert (forall ((|l#0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#7| |l#0|) |$l#0#o#0|)) |l#0|)
 :qid |unknown.0:0|
 :skolemid |7826|
 :pattern ( (MapType1Select refType boolType (|lambda#7| |l#0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@0|) |$l#0#ly#0|) |l#0@@0|)
 :qid |Arraysdfy.88:28|
 :skolemid |7828|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@0|) |$l#0#ly#0|))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (t2@@7 T@U) (t3@@7 T@U) (heap@@3 T@U) (f@@5 T@U) (bx0@@5 T@U) (bx1@@5 T@U) (bx2@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and (and (and ($IsBox bx0@@5 t0@@9) ($IsBox bx1@@5 t1@@8)) ($IsBox bx2@@5 t2@@7)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@9 t1@@8 t2@@7 t3@@7)))) (|Set#Equal| (Reads3 t0@@9 t1@@8 t2@@7 t3@@7 $OneHeap f@@5 bx0@@5 bx1@@5 bx2@@5) |Set#Empty|)) (= (Requires3 t0@@9 t1@@8 t2@@7 t3@@7 $OneHeap f@@5 bx0@@5 bx1@@5 bx2@@5) (Requires3 t0@@9 t1@@8 t2@@7 t3@@7 heap@@3 f@@5 bx0@@5 bx1@@5 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |7358|
 :pattern ( (Requires3 t0@@9 t1@@8 t2@@7 t3@@7 $OneHeap f@@5 bx0@@5 bx1@@5 bx2@@5) ($IsGoodHeap heap@@3))
 :pattern ( (Requires3 t0@@9 t1@@8 t2@@7 t3@@7 heap@@3 f@@5 bx0@@5 bx1@@5 bx2@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |6903|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |6870|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@10 T@U) ($o@@14 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@14))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@14))))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@14) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |7253|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@14) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6780|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6791|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |6865|
 :pattern ( (_System.array.Length o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length0 o@@2))
 :qid |unknown.0:0|
 :skolemid |7251|
 :pattern ( (_System.array2.Length0 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (_System.array2.Length1 o@@3))
 :qid |unknown.0:0|
 :skolemid |7252|
 :pattern ( (_System.array2.Length1 o@@3))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (_System.array3.Length0 o@@4))
 :qid |unknown.0:0|
 :skolemid |7318|
 :pattern ( (_System.array3.Length0 o@@4))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (_System.array3.Length1 o@@5))
 :qid |unknown.0:0|
 :skolemid |7319|
 :pattern ( (_System.array3.Length1 o@@5))
)))
(assert (forall ((o@@6 T@U) ) (! (<= 0 (_System.array3.Length2 o@@6))
 :qid |unknown.0:0|
 :skolemid |7320|
 :pattern ( (_System.array3.Length2 o@@6))
)))
(assert (forall ((v@@3 T@U) (t0@@10 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@10) h@@8) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@10 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |6820|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |6821|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@10) h@@8))
)))
(assert (forall (($o@@15 T@U) ) (! ($Is refType $o@@15 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |7116|
 :pattern ( ($Is refType $o@@15 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |6754|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |6755|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |6856|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |6857|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |7122|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7131|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |7249|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |7262|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((_System.array3$arg@@8 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@8)) _System.array3$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7316|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@8))
)))
(assert (forall ((_System.array3$arg@@9 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@9)) _System.array3$arg@@9)
 :qid |unknown.0:0|
 :skolemid |7332|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@9))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6778|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@11 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@16)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |7129|
 :pattern ( (_System.array.Length $o@@16) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@16) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@12 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@17) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@17)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |7258|
 :pattern ( (_System.array2.Length0 $o@@17) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@17) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@13 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@18)) TInt $h@@13))
 :qid |unknown.0:0|
 :skolemid |7260|
 :pattern ( (_System.array2.Length1 $o@@18) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@18) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array3$arg@@10 T@U) ($h@@14 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._System.array3? _System.array3$arg@@10)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@19) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length0 $o@@19)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |7326|
 :pattern ( (_System.array3.Length0 $o@@19) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@19) alloc)) (Tclass._System.array3? _System.array3$arg@@10))
)))
(assert (forall ((_System.array3$arg@@11 T@U) ($h@@15 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._System.array3? _System.array3$arg@@11)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length1 $o@@20)) TInt $h@@15))
 :qid |unknown.0:0|
 :skolemid |7328|
 :pattern ( (_System.array3.Length1 $o@@20) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) alloc)) (Tclass._System.array3? _System.array3$arg@@11))
)))
(assert (forall ((_System.array3$arg@@12 T@U) ($h@@16 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._System.array3? _System.array3$arg@@12)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@21) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length2 $o@@21)) TInt $h@@16))
 :qid |unknown.0:0|
 :skolemid |7330|
 :pattern ( (_System.array3.Length2 $o@@21) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@21) alloc)) (Tclass._System.array3? _System.array3$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@17 T@U) ($o@@22 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@22)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@22) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |7124|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@22) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((_System.array3$arg@@13 T@U) ($h@@18 T@U) ($o@@23 T@U) ($i0@@3 Int) ($i1@@1 Int) ($i2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._System.array3? _System.array3$arg@@13)))) (and (and (and (<= 0 $i0@@3) (< $i0@@3 (_System.array3.Length0 $o@@23))) (and (<= 0 $i1@@1) (< $i1@@1 (_System.array3.Length1 $o@@23)))) (and (<= 0 $i2) (< $i2 (_System.array3.Length2 $o@@23))))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@23) (MultiIndexField (MultiIndexField (IndexField $i0@@3) $i1@@1) $i2)) _System.array3$arg@@13))
 :qid |unknown.0:0|
 :skolemid |7321|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@23) (MultiIndexField (MultiIndexField (IndexField $i0@@3) $i1@@1) $i2)) (Tclass._System.array3? _System.array3$arg@@13))
)))
(assert (forall ((f@@6 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@6 ($LS ly@@0)) (AtLayer A@@0 f@@6 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |6855|
 :pattern ( (AtLayer A@@0 f@@6 ($LS ly@@0)))
)))
(assert (forall ((f@@7 T@U) (t0@@11 T@U) (t1@@9 T@U) (t2@@8 T@U) (t3@@8 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc3 t0@@11 t1@@9 t2@@8 t3@@8) h@@9)) (forall ((bx0@@6 T@U) (bx1@@6 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@6 t0@@11 h@@9) ($IsAllocBox bx1@@6 t1@@9 h@@9)) ($IsAllocBox bx2@@6 t2@@8 h@@9)) (Requires3 t0@@11 t1@@9 t2@@8 t3@@8 h@@9 f@@7 bx0@@6 bx1@@6 bx2@@6)) ($IsAllocBox (Apply3 t0@@11 t1@@9 t2@@8 t3@@8 h@@9 f@@7 bx0@@6 bx1@@6 bx2@@6) t3@@8 h@@9))
 :qid |unknown.0:0|
 :skolemid |7369|
 :pattern ( (Apply3 t0@@11 t1@@9 t2@@8 t3@@8 h@@9 f@@7 bx0@@6 bx1@@6 bx2@@6))
)))
 :qid |unknown.0:0|
 :skolemid |7370|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc3 t0@@11 t1@@9 t2@@8 t3@@8) h@@9))
)))
(assert  (and (forall ((t0@@12 T@T) (t1@@10 T@T) (t2@@9 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) ) (! (= (MapType2Select t0@@12 t1@@10 t2@@9 (MapType2Store t0@@12 t1@@10 t2@@9 m@@6 x0@@6 x1@@4 val@@6) x0@@6 x1@@4) val@@6)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@5 u1@@5 u2@@4 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@6 T@T) (u1@@6 T@T) (u2@@5 T@T) (val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@6 T@U) (y0@@5 T@U) (y1@@4 T@U) ) (!  (or (= x1@@6 y1@@4) (= (MapType2Select u0@@6 u1@@6 u2@@5 (MapType2Store u0@@6 u1@@6 u2@@5 m@@8 x0@@8 x1@@6 val@@8) y0@@5 y1@@4) (MapType2Select u0@@6 u1@@6 u2@@5 m@@8 y0@@5 y1@@4)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@24 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o@@24 $f))  (=> (and (or (not (= $o@@24 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@24) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7823|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o@@24 $f))
)))
(assert (forall ((f@@8 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@8 i@@2)) f@@8) (= (MultiIndexField_Inverse1 (MultiIndexField f@@8 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |6859|
 :pattern ( (MultiIndexField f@@8 i@@2))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|$l#0#heap#0| T@U) (|$l#0#_v0#0| T@U) (|$l#0#_v1#0| T@U) (|$l#0#_v2#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#13| |l#0@@2| |l#1@@0| |l#2@@0|) |$l#0#heap#0| |$l#0#_v0#0| |$l#0#_v1#0| |$l#0#_v2#0|))  (and (and ($IsBox |$l#0#_v0#0| |l#0@@2|) ($IsBox |$l#0#_v1#0| |l#1@@0|)) ($IsBox |$l#0#_v2#0| |l#2@@0|)))
 :qid |unknown.0:0|
 :skolemid |7830|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType boolType (|lambda#13| |l#0@@2| |l#1@@0| |l#2@@0|) |$l#0#heap#0| |$l#0#_v0#0| |$l#0#_v1#0| |$l#0#_v2#0|))
)))
(assert (forall ((t0@@13 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@9 T@U) (h0 T@U) (h1 T@U) (f@@9 T@U) (bx0@@7 T@U) (bx1@@7 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and (and ($IsBox bx0@@7 t0@@13) ($IsBox bx1@@7 t1@@11)) ($IsBox bx2@@7 t2@@10)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc3 t0@@13 t1@@11 t2@@10 t3@@9)))) (forall ((o@@7 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads3 t0@@13 t1@@11 t2@@10 t3@@9 h0 f@@9 bx0@@7 bx1@@7 bx2@@7) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@7) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@7) fld)))
 :qid |unknown.0:0|
 :skolemid |7349|
))) (= (Requires3 t0@@13 t1@@11 t2@@10 t3@@9 h0 f@@9 bx0@@7 bx1@@7 bx2@@7) (Requires3 t0@@13 t1@@11 t2@@10 t3@@9 h1 f@@9 bx0@@7 bx1@@7 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |7350|
 :pattern ( ($HeapSucc h0 h1) (Requires3 t0@@13 t1@@11 t2@@10 t3@@9 h1 f@@9 bx0@@7 bx1@@7 bx2@@7))
)))
(assert (forall ((t0@@14 T@U) (t1@@12 T@U) (t2@@11 T@U) (t3@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@10 T@U) (bx0@@8 T@U) (bx1@@8 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and (and ($IsBox bx0@@8 t0@@14) ($IsBox bx1@@8 t1@@12)) ($IsBox bx2@@8 t2@@11)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@14 t1@@12 t2@@11 t3@@10)))) (forall ((o@@8 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads3 t0@@14 t1@@12 t2@@11 t3@@10 h1@@0 f@@10 bx0@@8 bx1@@8 bx2@@8) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@8) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@8) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |7351|
))) (= (Requires3 t0@@14 t1@@12 t2@@11 t3@@10 h0@@0 f@@10 bx0@@8 bx1@@8 bx2@@8) (Requires3 t0@@14 t1@@12 t2@@11 t3@@10 h1@@0 f@@10 bx0@@8 bx1@@8 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |7352|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires3 t0@@14 t1@@12 t2@@11 t3@@10 h1@@0 f@@10 bx0@@8 bx1@@8 bx2@@8))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |6785|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |7123|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |7132|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |7250|
 :pattern ( ($IsBox bx@@16 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |7263|
 :pattern ( ($IsBox bx@@17 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((_System.array3$arg@@14 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.array3? _System.array3$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) (Tclass._System.array3? _System.array3$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |7317|
 :pattern ( ($IsBox bx@@18 (Tclass._System.array3? _System.array3$arg@@14)))
)))
(assert (forall ((_System.array3$arg@@15 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.array3 _System.array3$arg@@15)) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) (Tclass._System.array3 _System.array3$arg@@15))))
 :qid |unknown.0:0|
 :skolemid |7333|
 :pattern ( ($IsBox bx@@19 (Tclass._System.array3 _System.array3$arg@@15)))
)))
(assert (forall ((h@@10 T@U) (r@@3 T@U) (f@@11 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@11 x@@6))) ($HeapSucc h@@10 (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@11 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |6869|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@11 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |6836|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@1 o@@9) (|Set#IsMember| b@@1 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |6901|
 :pattern ( (|Set#IsMember| a@@1 o@@9))
 :pattern ( (|Set#IsMember| b@@1 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |6902|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@15 T@U) (t1@@13 T@U) (t2@@12 T@U) (t3@@11 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@12 T@U) (bx0@@9 T@U) (bx1@@9 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and (and ($IsBox bx0@@9 t0@@15) ($IsBox bx1@@9 t1@@13)) ($IsBox bx2@@9 t2@@12)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc3 t0@@15 t1@@13 t2@@12 t3@@11)))) (forall ((o@@10 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads3 t0@@15 t1@@13 t2@@12 t3@@11 h0@@1 f@@12 bx0@@9 bx1@@9 bx2@@9) ($Box refType o@@10))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@10) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@10) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |7345|
))) (= (Reads3 t0@@15 t1@@13 t2@@12 t3@@11 h0@@1 f@@12 bx0@@9 bx1@@9 bx2@@9) (Reads3 t0@@15 t1@@13 t2@@12 t3@@11 h1@@1 f@@12 bx0@@9 bx1@@9 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |7346|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads3 t0@@15 t1@@13 t2@@12 t3@@11 h1@@1 f@@12 bx0@@9 bx1@@9 bx2@@9))
)))
(assert (forall ((t0@@16 T@U) (t1@@14 T@U) (t2@@13 T@U) (t3@@12 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@13 T@U) (bx0@@10 T@U) (bx1@@10 T@U) (bx2@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and (and ($IsBox bx0@@10 t0@@16) ($IsBox bx1@@10 t1@@14)) ($IsBox bx2@@10 t2@@13)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc3 t0@@16 t1@@14 t2@@13 t3@@12)))) (forall ((o@@11 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads3 t0@@16 t1@@14 t2@@13 t3@@12 h1@@2 f@@13 bx0@@10 bx1@@10 bx2@@10) ($Box refType o@@11))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@11) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@11) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |7347|
))) (= (Reads3 t0@@16 t1@@14 t2@@13 t3@@12 h0@@2 f@@13 bx0@@10 bx1@@10 bx2@@10) (Reads3 t0@@16 t1@@14 t2@@13 t3@@12 h1@@2 f@@13 bx0@@10 bx1@@10 bx2@@10)))
 :qid |unknown.0:0|
 :skolemid |7348|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads3 t0@@16 t1@@14 t2@@13 t3@@12 h1@@2 f@@13 bx0@@10 bx1@@10 bx2@@10))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (t2@@14 T@U) (t3@@13 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@14 T@U) (bx0@@11 T@U) (bx1@@11 T@U) (bx2@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and (and ($IsBox bx0@@11 t0@@17) ($IsBox bx1@@11 t1@@15)) ($IsBox bx2@@11 t2@@14)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc3 t0@@17 t1@@15 t2@@14 t3@@13)))) (forall ((o@@12 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads3 t0@@17 t1@@15 t2@@14 t3@@13 h0@@3 f@@14 bx0@@11 bx1@@11 bx2@@11) ($Box refType o@@12))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@12) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@12) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |7353|
))) (= (Apply3 t0@@17 t1@@15 t2@@14 t3@@13 h0@@3 f@@14 bx0@@11 bx1@@11 bx2@@11) (Apply3 t0@@17 t1@@15 t2@@14 t3@@13 h1@@3 f@@14 bx0@@11 bx1@@11 bx2@@11)))
 :qid |unknown.0:0|
 :skolemid |7354|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply3 t0@@17 t1@@15 t2@@14 t3@@13 h1@@3 f@@14 bx0@@11 bx1@@11 bx2@@11))
)))
(assert (forall ((t0@@18 T@U) (t1@@16 T@U) (t2@@15 T@U) (t3@@14 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@15 T@U) (bx0@@12 T@U) (bx1@@12 T@U) (bx2@@12 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and (and ($IsBox bx0@@12 t0@@18) ($IsBox bx1@@12 t1@@16)) ($IsBox bx2@@12 t2@@15)) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc3 t0@@18 t1@@16 t2@@15 t3@@14)))) (forall ((o@@13 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads3 t0@@18 t1@@16 t2@@15 t3@@14 h1@@4 f@@15 bx0@@12 bx1@@12 bx2@@12) ($Box refType o@@13))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@13) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@13) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |7355|
))) (= (Apply3 t0@@18 t1@@16 t2@@15 t3@@14 h0@@4 f@@15 bx0@@12 bx1@@12 bx2@@12) (Apply3 t0@@18 t1@@16 t2@@15 t3@@14 h1@@4 f@@15 bx0@@12 bx1@@12 bx2@@12)))
 :qid |unknown.0:0|
 :skolemid |7356|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply3 t0@@18 t1@@16 t2@@15 t3@@14 h1@@4 f@@15 bx0@@12 bx1@@12 bx2@@12))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6771|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6769|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#_v0#0@@0| T@U) (|$l#0#_v1#0@@0| T@U) (|$l#0#_v2#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType (|lambda#12| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0| |$l#0#_v1#0@@0| |$l#0#_v2#0@@0|) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |7829|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType BoxType (|lambda#12| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0| |$l#0#_v1#0@@0| |$l#0#_v2#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#_v0#0@@1| T@U) (|$l#0#_v1#0@@1| T@U) (|$l#0#_v2#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#15| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1| |$l#0#_v1#0@@1| |$l#0#_v2#0@@1|) |l#0@@4|)
 :qid |Arraysdfy.98:30|
 :skolemid |7831|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType SetType (|lambda#15| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1| |$l#0#_v1#0@@1| |$l#0#_v2#0@@1|))
)))
(assert (forall ((_System.array3$arg@@16 T@U) ($h@@19 T@U) ($o@@25 T@U) ($i0@@4 Int) ($i1@@2 Int) ($i2@@0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._System.array3? _System.array3$arg@@16)))) (and (and (and (<= 0 $i0@@4) (< $i0@@4 (_System.array3.Length0 $o@@25))) (and (<= 0 $i1@@2) (< $i1@@2 (_System.array3.Length1 $o@@25)))) (and (<= 0 $i2@@0) (< $i2@@0 (_System.array3.Length2 $o@@25))))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) (MultiIndexField (MultiIndexField (IndexField $i0@@4) $i1@@2) $i2@@0)) _System.array3$arg@@16 $h@@19))
 :qid |unknown.0:0|
 :skolemid |7322|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@25) (MultiIndexField (MultiIndexField (IndexField $i0@@4) $i1@@2) $i2@@0)) (Tclass._System.array3? _System.array3$arg@@16))
)))
(assert (forall ((h@@11 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6814|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@11))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6793|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_v0#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |i#0@1| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $nw@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@9 () T@U)
(declare-fun |i#0@2| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |rows##0@0| () Int)
(declare-fun |cols##0@0| () Int)
(declare-fun |zero##0@0| () Int)
(declare-fun |one##0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call6formal@a#0| () T@U)
(declare-fun call0formal@_module._default.DiagMatrix$A () T@U)
(declare-fun |call3formal@zero#0@0| () T@U)
(declare-fun |call4formal@one#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call6formal@a#0@0| () T@U)
(declare-fun |matrix#0| () T@U)
(declare-fun |cube#0| () T@U)
(declare-fun |jagged#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MultipleDimensions)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon3_correct true))
(let ((anon12_Else_correct  (=> (and (< |_v0#0@0| (LitInt 0)) (= (ControlFlow 0 22) 20)) anon3_correct)))
(let ((anon12_Then_correct  (=> (<= (LitInt 0) |_v0#0@0|) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| (LitInt 16))) (and ($Is intType (int_2_U |lambdaResult#0|) TInt) (= (ControlFlow 0 21) 20))) anon3_correct))))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@3 |$lambdaHeap#0@0|) ($HeapSucc $Heap@3 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 23) 21) anon12_Then_correct) (=> (= (ControlFlow 0 23) 22) anon12_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (< |i#0@1| 5) (= |$decr$loop#00@1| (- 5 |i#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (and (<= 0 |i#0@1|) (< |i#0@1| (_System.array.Length $nw@2)))) (=> (and (<= 0 |i#0@1|) (< |i#0@1| (_System.array.Length $nw@2))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (U_2_bool (MapType2Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 (IndexField |i#0@1|)))) (=> (U_2_bool (MapType2Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 (IndexField |i#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= 0 |i#0@1|)) (=> (<= 0 |i#0@1|) (=> (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array? TInt))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $nw@4) alloc)))) (= (_System.array.Length $nw@4) |i#0@1|)) (and (= $Heap@8 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@6 $nw@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $nw@4) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@8))) (and (and ($IsHeapAnchor $Heap@8) (= $Heap@9 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@8 $nw@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $nw@2) (IndexField |i#0@1|) ($Box refType $nw@4))))) (and ($IsGoodHeap $Heap@9) (= |i#0@2| (+ |i#0@1| 1))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- 5 |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 5 |i#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- 5 |i#0@2|) |$decr$loop#00@1|)))))))))))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 11) 3) anon15_Then_correct) (=> (= (ControlFlow 0 11) 5) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_LoopBody_correct  (and (=> (= (ControlFlow 0 12) 2) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))
(let ((anon13_LoopDone_correct true))
(let ((anon13_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (and (and (and (not false) (= |rows##0@0| 3)) (= |cols##0@0| 5)) (= |zero##0@0| 0)) (= |one##0@0| 1)) (and (<= 0 |i#0@1|) (< |i#0@1| 6))) (= |$decr_init$loop#00@0| 5)) (and (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@26) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@26) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@26)))
 :qid |Arraysdfy.103:3|
 :skolemid |7516|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@26))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (forall (($o@@27 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@27) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@27) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@27) $f@@0)) (U_2_bool (MapType2Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@0))))
 :qid |Arraysdfy.103:3|
 :skolemid |7517|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@27) $f@@0))
)) (<= (- 5 |i#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 13) 1) anon13_LoopDone_correct) (=> (= (ControlFlow 0 13) 12) anon13_LoopBody_correct))))))
(let ((anon11_Else_correct  (=> (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array3? TInt))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@1) alloc)))) (= (_System.array3.Length0 $nw@1) (LitInt 3))) (and (= (_System.array3.Length1 $nw@1) (LitInt 0)) (= (_System.array3.Length2 $nw@1) (LitInt 4)))) (and (=> (= (ControlFlow 0 14) (- 0 19)) (forall ((|arrayinit#0#i0#0| Int) (|arrayinit#0#i1#0| Int) (|arrayinit#0#i2#0| Int) ) (!  (=> (and (and (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 3))) (and (<= 0 |arrayinit#0#i1#0|) (< |arrayinit#0#i1#0| (LitInt 0)))) (and (<= 0 |arrayinit#0#i2#0|) (< |arrayinit#0#i2#0| (LitInt 4)))) (Requires3 Tclass._System.nat TInt TInt TInt $Heap@3 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle3 (|lambda#12| ($Box intType (int_2_U (LitInt 16)))) (|lambda#13| Tclass._System.nat TInt TInt) (|lambda#15| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|)) ($Box intType (int_2_U |arrayinit#0#i1#0|)) ($Box intType (int_2_U |arrayinit#0#i2#0|))))
 :qid |Arraysdfy.98:15|
 :skolemid |7514|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) (|arrayinit#0#i1#0@@0| Int) (|arrayinit#0#i2#0@@0| Int) ) (!  (=> (and (and (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 3))) (and (<= 0 |arrayinit#0#i1#0@@0|) (< |arrayinit#0#i1#0@@0| (LitInt 0)))) (and (<= 0 |arrayinit#0#i2#0@@0|) (< |arrayinit#0#i2#0@@0| (LitInt 4)))) (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@1) (MultiIndexField (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|) |arrayinit#0#i2#0@@0|)))) (U_2_int ($Unbox intType (Apply3 Tclass._System.nat TInt TInt TInt $Heap@3 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle3 (|lambda#12| ($Box intType (int_2_U (LitInt 16)))) (|lambda#13| Tclass._System.nat TInt TInt) (|lambda#15| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i1#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i2#0@@0|)))))))
 :qid |Arraysdfy.98:15|
 :skolemid |7515|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@1) (MultiIndexField (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|) |arrayinit#0#i2#0@@0|)))
)) (= $Heap@4 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@3 $nw@1 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? (Tclass._System.array TInt)))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 5))) (and (= $Heap@5 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@5))) (and (and ($IsHeapAnchor $Heap@5) (= |i#0@0| (LitInt 0))) (and (= |$decr_init$loop#00@0| (- 5 |i#0@0|)) (= (ControlFlow 0 14) 13)))) anon13_LoopHead_correct)))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 24) (- 0 31)) (<= 0 (LitInt 2))) (=> (<= 0 (LitInt 2)) (and (=> (= (ControlFlow 0 24) (- 0 30)) (<= 0 (LitInt 8))) (=> (<= 0 (LitInt 8)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array2.Length0 $nw@0) (LitInt 2)))) (=> (and (and (and (and (= (_System.array2.Length1 $nw@0) (LitInt 8)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@28) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@28) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@28)))
 :qid |Arraysdfy.117:8|
 :skolemid |7525|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@28))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (and (and (= |rows##0@0| (LitInt 3)) (= |cols##0@0| (LitInt 5))) (and (= |zero##0@0| (LitInt 0)) (= |one##0@0| (LitInt 1)))) (and (and ($Is refType |call6formal@a#0| (Tclass._System.array2 call0formal@_module._default.DiagMatrix$A)) ($IsAlloc refType |call6formal@a#0| (Tclass._System.array2 call0formal@_module._default.DiagMatrix$A) $Heap)) (and (= |call3formal@zero#0@0| ($Box intType (int_2_U |zero##0@0|))) (= |call4formal@one#0@0| ($Box intType (int_2_U |one##0@0|))))))) (and (=> (= (ControlFlow 0 24) (- 0 29)) (>= |rows##0@0| (LitInt 0))) (=> (>= |rows##0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 24) (- 0 28)) (>= |cols##0@0| (LitInt 0))) (=> (>= |cols##0@0| (LitInt 0)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and ($Is refType |call6formal@a#0@0| (Tclass._System.array2 TInt)) ($IsAlloc refType |call6formal@a#0@0| (Tclass._System.array2 TInt) $Heap@2)) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@29) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@29) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@29)))
 :qid |Arraysdfy.110:8|
 :skolemid |7520|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@29))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@30) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@30) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@30)))
 :qid |Arraysdfy.117:8|
 :skolemid |7525|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@30))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (<= 0 (LitInt 0))) (=> (<= 0 (LitInt 0)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (and (=> (= (ControlFlow 0 24) 23) anon11_Then_correct) (=> (= (ControlFlow 0 24) 14) anon11_Else_correct)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |matrix#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |matrix#0| (Tclass._System.array2 TInt) $Heap)) true) (and (and ($Is refType |cube#0| (Tclass._System.array3 TInt)) ($IsAlloc refType |cube#0| (Tclass._System.array3 TInt) $Heap)) true)) (and (and (and ($Is refType |jagged#0| (Tclass._System.array (Tclass._System.array TInt))) ($IsAlloc refType |jagged#0| (Tclass._System.array (Tclass._System.array TInt)) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 32) 24)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
