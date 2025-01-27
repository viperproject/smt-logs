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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun class._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$DoubleReadMethod () T@U)
(declare-fun field$content () T@U)
(declare-fun field$counter () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.DoubleReadMethod? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun Tclass._module.DoubleReadMethod () T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.DoubleReadMethod.counter () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun _module.DoubleReadMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$DoubleReadMethod field$content field$counter)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.DoubleReadMethod?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.AtomicCounter?)  (or (= $o null) (= (dtype $o) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.DoubleReadMethod?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.DoubleReadMethod?)))
 :qid |unknown.0:0|
 :skolemid |1701|
 :pattern ( ($Is refType $o@@0 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.DoubleReadMethod? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.DoubleReadMethod? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.DoubleReadMethod $h@@6) ($IsAlloc refType |c#0@@3| Tclass._module.DoubleReadMethod? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.DoubleReadMethod $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.DoubleReadMethod? $h@@6))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.DoubleReadMethod.counter) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$counter) _module.DoubleReadMethod.counter))
(assert  (not ($IsGhostField _module.DoubleReadMethod.counter)))
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
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.AtomicCounter? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.AtomicCounter? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.DoubleReadMethod? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1702|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.DoubleReadMethod? $h@@11))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@6) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2086|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@12 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@7) Tclass._module.Universe $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (_module.Object.universe $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@8) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Object.universe $o@@8))
))))
(assert (forall (($h@@13 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.DoubleReadMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) _module.DoubleReadMethod.counter)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@4 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsBox bx@@9 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx@@10 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.DoubleReadMethod?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.DoubleReadMethod?)))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsBox bx@@11 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.DoubleReadMethod) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.DoubleReadMethod)))
 :qid |unknown.0:0|
 :skolemid |1712|
 :pattern ( ($IsBox bx@@12 Tclass._module.DoubleReadMethod))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.OwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@7| Tclass._module.AtomicCounter?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.DoubleReadMethod)  (and ($Is refType |c#0@@8| Tclass._module.DoubleReadMethod?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.DoubleReadMethod))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.DoubleReadMethod?))
)))
(assert (forall (($h@@14 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@10) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1706|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@10) _module.DoubleReadMethod.counter)))
)))
(assert (forall (($o@@11 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@11 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@12 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@13 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.DoubleReadMethod? $heap@@1) ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.DoubleReadMethod? $heap@@1))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TBool) (and (= ($Box boolType ($Unbox boolType bx@@13)) bx@@13) ($Is boolType ($Unbox boolType bx@@13) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@13 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@14) ($IsAllocBox bx@@14 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.DoubleReadMethod.baseUserInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.DoubleReadMethod) ($IsAlloc refType this Tclass._module.DoubleReadMethod $Heap)))))) (= (_module.DoubleReadMethod.baseUserInv $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.counter)) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.counter))) (_module.Object.universe this)))))
 :qid |_06ThreadOwnershipdfy.363:19|
 :skolemid |1730|
 :pattern ( (_module.DoubleReadMethod.baseUserInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@15 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@3)))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass._module.OwnedObject?) ($Is refType $o@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@14 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.OwnedObject?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx@@16 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.AtomicCounter?) ($Is refType $o@@15 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($Is refType $o@@15 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.AtomicCounter?) ($IsBox bx@@17 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2076|
 :pattern ( ($IsBox bx@@17 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.DoubleReadMethod?) ($Is refType $o@@16 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($Is refType $o@@16 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.DoubleReadMethod?) ($IsBox bx@@18 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( ($IsBox bx@@18 Tclass._module.DoubleReadMethod?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.AtomicCounter?) Tagclass._module.AtomicCounter?))
(assert (= (TagFamily Tclass._module.AtomicCounter?) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.AtomicCounter) Tagclass._module.AtomicCounter))
(assert (= (TagFamily Tclass._module.AtomicCounter) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.DoubleReadMethod?) Tagclass._module.DoubleReadMethod?))
(assert (= (TagFamily Tclass._module.DoubleReadMethod?) tytagFamily$DoubleReadMethod))
(assert (= (Tag Tclass._module.DoubleReadMethod) Tagclass._module.DoubleReadMethod))
(assert (= (TagFamily Tclass._module.DoubleReadMethod) tytagFamily$DoubleReadMethod))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.Universe?)  (or (= $o@@17 null) (implements$_module.Universe (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@17 Tclass._module.Universe?))
)))
(assert (forall (($o@@18 T@U) ) (! (= ($Is refType $o@@18 Tclass._module.Object?)  (or (= $o@@18 null) (implements$_module.Object (dtype $o@@18))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o@@18 Tclass._module.Object?))
)))
(assert (forall (($o@@19 T@U) ) (! (= ($Is refType $o@@19 Tclass._module.OwnedObject?)  (or (= $o@@19 null) (implements$_module.OwnedObject (dtype $o@@19))))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( ($Is refType $o@@19 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@15 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@20 null)) (not true)) ($Is refType $o@@20 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@20) _module.Universe.content)) (TSet Tclass._module.Object) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@20) _module.Universe.content)))
)))
(assert (forall (($h@@16 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@21 null)) (not true)) ($Is refType $o@@21 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@21) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@21) _module.Universe.content)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.DoubleReadMethod.baseUserInv)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon5_correct  (=> (and (= (_module.DoubleReadMethod.baseUserInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter)) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter))) (_module.Object.universe this@@0)))) ($Is boolType (bool_2_U (_module.DoubleReadMethod.baseUserInv $Heap@@0 this@@0)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#2@1|))))))))
(let ((anon8_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter))) (=> (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 8) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter)) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.DoubleReadMethod.counter)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.DoubleReadMethod.counter)) null)) (not true)) (=> (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 6) 3)) anon5_correct))))))
(let ((anon7_Else_correct  (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.DoubleReadMethod.counter))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= (_module.Object.universe this@@0) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@0) null)) (not true)) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 (_module.Object.universe this@@0) _module.Universe.content))) (and (=> (= (ControlFlow 0 9) 6) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null $Heap@@0 alloc $Heap@@0 alloc)) (and (=> (= (ControlFlow 0 11) 1) anon7_Then_correct) (=> (= (ControlFlow 0 11) 9) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@0 Tclass._module.DoubleReadMethod $Heap@@0))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct))))
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
