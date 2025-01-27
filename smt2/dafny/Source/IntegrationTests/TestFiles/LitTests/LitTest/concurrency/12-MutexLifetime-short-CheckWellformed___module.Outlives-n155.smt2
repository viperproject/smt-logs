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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OutlivesClaim? () T@U)
(declare-fun Tagclass._module.OutlivesClaim () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun tytagFamily$OutlivesClaim () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.OutlivesClaim.target (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.OutlivesClaim? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun _module.OutlivesClaim.source (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.OutlivesClaim () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun _module.OutlivesClaim.lifetimeOutlives (T@U T@U T@U) Bool)
(declare-fun |_module.OutlivesClaim.lifetimeOutlives#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#57| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Lifetime? Tagclass._module.OwnedObject? Tagclass._module.OutlivesClaim? Tagclass._module.OutlivesClaim tytagFamily$Object tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$OutlivesClaim)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor refType) 3))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.OutlivesClaim?)) ($Is refType (_module.OutlivesClaim.target $o) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( (_module.OutlivesClaim.target $o))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.OutlivesClaim?)) ($Is refType (_module.OutlivesClaim.source $o@@0) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( (_module.OutlivesClaim.source $o@@0))
))))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (implements$_module.OwnedObject Tclass._module.OutlivesClaim?))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.OutlivesClaim?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) alloc)))) ($IsAlloc refType (_module.OutlivesClaim.target $o@@1) Tclass._module.Lifetime $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2614|
 :pattern ( (_module.OutlivesClaim.target $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@0 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.OutlivesClaim?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@2) alloc)))) ($IsAlloc refType (_module.OutlivesClaim.source $o@@2) Tclass._module.Lifetime $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2616|
 :pattern ( (_module.OutlivesClaim.source $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@2) alloc)))
))))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Lifetime?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($Is refType $o@@3 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.OutlivesClaim?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.OutlivesClaim?)))
 :qid |unknown.0:0|
 :skolemid |2611|
 :pattern ( ($Is refType $o@@4 Tclass._module.OutlivesClaim?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2357|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OutlivesClaim $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.OutlivesClaim? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2901|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OutlivesClaim $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OutlivesClaim? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall (($o@@7 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Lifetime? $h@@7)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Lifetime? $h@@7))
)))
(assert (forall (($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.OutlivesClaim? $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.OutlivesClaim? $h@@8))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@9) Tclass._module.Lifetime $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1757|
 :pattern ( (_module.OwnedObject.lifetime $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@10) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( (_module.OwnedObject.lifetime $o@@10))
))))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Lifetime)  (and ($Is refType |c#0@@5| Tclass._module.Lifetime?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2356|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Lifetime?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OutlivesClaim)  (and ($Is refType |c#0@@6| Tclass._module.OutlivesClaim?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2900|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OutlivesClaim))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OutlivesClaim?))
)))
(assert (forall (($o@@11 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@11 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@12 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Lifetime? $heap@@0) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Lifetime? $heap@@0))
)))
(assert (forall (($o@@13 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OutlivesClaim? $heap@@1) ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3508|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OutlivesClaim? $heap@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this T@U) (|t#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.OutlivesClaim.lifetimeOutlives#canCall| (Lit refType this) (Lit refType |t#0|) (Lit refType |s#0|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.OutlivesClaim)) ($Is refType |t#0| Tclass._module.OwnedObject)) ($Is refType |s#0| Tclass._module.OwnedObject)))) (= (_module.OutlivesClaim.lifetimeOutlives (Lit refType this) (Lit refType |t#0|) (Lit refType |s#0|))  (and (= (_module.OutlivesClaim.target (Lit refType this)) (_module.OwnedObject.lifetime (Lit refType |t#0|))) (= (_module.OutlivesClaim.source (Lit refType this)) (_module.OwnedObject.lifetime (Lit refType |s#0|))))))
 :qid |_12MutexLifetimeshortdfy.717:19|
 :weight 3
 :skolemid |2838|
 :pattern ( (_module.OutlivesClaim.lifetimeOutlives (Lit refType this) (Lit refType |t#0|) (Lit refType |s#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) (|t#0@@0| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.OutlivesClaim.lifetimeOutlives#canCall| this@@0 (Lit refType |t#0@@0|) (Lit refType |s#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OutlivesClaim)) ($Is refType |t#0@@0| Tclass._module.OwnedObject)) ($Is refType |s#0@@0| Tclass._module.OwnedObject)))) (= (_module.OutlivesClaim.lifetimeOutlives this@@0 (Lit refType |t#0@@0|) (Lit refType |s#0@@0|))  (and (= (_module.OutlivesClaim.target this@@0) (_module.OwnedObject.lifetime (Lit refType |t#0@@0|))) (= (_module.OutlivesClaim.source this@@0) (_module.OwnedObject.lifetime (Lit refType |s#0@@0|))))))
 :qid |_12MutexLifetimeshortdfy.717:19|
 :weight 3
 :skolemid |2837|
 :pattern ( (_module.OutlivesClaim.lifetimeOutlives this@@0 (Lit refType |t#0@@0|) (Lit refType |s#0@@0|)))
))))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3520|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.OwnedObject?) ($Is refType $o@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@15 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.Lifetime?) ($Is refType $o@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@16 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.OutlivesClaim?) ($Is refType $o@@17 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3507|
 :pattern ( ($Is refType $o@@17 Tclass._module.OutlivesClaim?))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OutlivesClaim?) Tagclass._module.OutlivesClaim?))
(assert (= (TagFamily Tclass._module.OutlivesClaim?) tytagFamily$OutlivesClaim))
(assert (= (Tag Tclass._module.OutlivesClaim) Tagclass._module.OutlivesClaim))
(assert (= (TagFamily Tclass._module.OutlivesClaim) tytagFamily$OutlivesClaim))
(assert (forall (($o@@18 T@U) ) (! (= ($Is refType $o@@18 Tclass._module.Object?)  (or (= $o@@18 null) (implements$_module.Object (dtype $o@@18))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@18 Tclass._module.Object?))
)))
(assert (forall (($o@@19 T@U) ) (! (= ($Is refType $o@@19 Tclass._module.OwnedObject?)  (or (= $o@@19 null) (implements$_module.OwnedObject (dtype $o@@19))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@19 Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@1 T@U) (|t#0@@1| T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.OutlivesClaim.lifetimeOutlives#canCall| this@@1 |t#0@@1| |s#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OutlivesClaim)) ($Is refType |t#0@@1| Tclass._module.OwnedObject)) ($Is refType |s#0@@1| Tclass._module.OwnedObject)))) (= (_module.OutlivesClaim.lifetimeOutlives this@@1 |t#0@@1| |s#0@@1|)  (and (= (_module.OutlivesClaim.target this@@1) (_module.OwnedObject.lifetime |t#0@@1|)) (= (_module.OutlivesClaim.source this@@1) (_module.OwnedObject.lifetime |s#0@@1|)))))
 :qid |_12MutexLifetimeshortdfy.717:19|
 :skolemid |2836|
 :pattern ( (_module.OutlivesClaim.lifetimeOutlives this@@1 |t#0@@1| |s#0@@1|))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@2 () T@U)
(declare-fun |t#0@@2| () T@U)
(declare-fun |s#0@@2| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.OutlivesClaim.lifetimeOutlives)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_correct true))
(let ((anon8_Else_correct  (=> (and (or (not (= (_module.OutlivesClaim.target this@@2) (_module.OwnedObject.lifetime |t#0@@2|))) (not true)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon8_Then_correct  (=> (= (_module.OutlivesClaim.target this@@2) (_module.OwnedObject.lifetime |t#0@@2|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= |s#0@@2| null)) (not true))) (=> (or (not (= |s#0@@2| null)) (not true)) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= |t#0@@2| null)) (not true))) (=> (or (not (= |t#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 6) 3) anon8_Then_correct) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#57| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 6) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OutlivesClaim) ($IsAlloc refType this@@2 Tclass._module.OutlivesClaim $Heap)))) (and (and ($Is refType |t#0@@2| Tclass._module.OwnedObject) ($Is refType |s#0@@2| Tclass._module.OwnedObject)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 8)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
