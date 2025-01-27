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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$nonvolatileVersion () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |_module.OwnedObject.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.Universe? class._module.OwnedObject? tytagFamily$Universe tytagFamily$Object tytagFamily$OwnedObject field$content field$owner field$nonvolatileVersion)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1698|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1699|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1814|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1815|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Object) ($IsAlloc refType this@@1 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1326|
)) (= (_module.Object.transitiveInv2 $prevHeap@@1 $h0@@1 this@@1) (_module.Object.transitiveInv2 $prevHeap@@1 $h1@@1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1327|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.transitiveInv2 $prevHeap@@1 $h1@@1 this@@1))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedObject) ($IsAlloc refType this@@2 Tclass._module.OwnedObject $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1739|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@2 $h0@@2 this@@2) (_module.OwnedObject.transitiveInv2 $prevHeap@@2 $h1@@2 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1740|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.OwnedObject.transitiveInv2 $prevHeap@@2 $h1@@2 this@@2))
)))
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1248|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@7) Tclass._module.Universe $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1250|
 :pattern ( (_module.Object.universe $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@8) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1249|
 :pattern ( (_module.Object.universe $o@@8))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap T@U) (this@@3 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@3 $Heap this@@3) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@3 $Heap this@@3) (_module.OwnedObject.transitiveInv2 $prevHeap@@3 $Heap this@@3)))
 :qid |_09CounterNoStateMachinedfy.280:22|
 :skolemid |1746|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@3 $Heap this@@3) ($Is refType this@@3 Tclass._module.OwnedObject) ($IsGoodHeap $Heap))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@3 $Heap this@@3) (_module.OwnedObject.transitiveInv2 $prevHeap@@3 $Heap this@@3) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@5 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@9 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@9 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@0 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@4 $Heap@@0 this@@4) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@4 $Heap@@0)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.OwnedObject) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $prevHeap@@4)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@4) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@4 $Heap@@0 this@@4)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@4 $Heap@@0 this@@4)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@4) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@4 $Heap@@0 this@@4)))))
 :qid |_09CounterNoStateMachinedfy.346:22|
 :skolemid |1702|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@4 $Heap@@0 this@@4) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.OwnedObject.nonvolatileVersion)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1689|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@11 T@U) ($f@@3 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@3))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3223|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@3))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.OwnedObject.owner)) Tclass._module.Object $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1691|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass._module.OwnedObject?) ($Is refType $o@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.OwnedObject?) ($IsBox bx@@11 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsBox bx@@11 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@10 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1690|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass._module.Universe?)  (or (= $o@@15 null) (implements$_module.Universe (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($Is refType $o@@15 Tclass._module.Universe?))
)))
(assert (forall (($o@@16 T@U) ) (! (= ($Is refType $o@@16 Tclass._module.Object?)  (or (= $o@@16 null) (implements$_module.Object (dtype $o@@16))))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($Is refType $o@@16 Tclass._module.Object?))
)))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.OwnedObject?)  (or (= $o@@17 null) (implements$_module.OwnedObject (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($Is refType $o@@17 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@11 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@18) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@18) _module.Universe.content)) (TSet Tclass._module.Object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |647|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@18) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@1 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@5 $Heap@@1 this@@5) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@5 $Heap@@1)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.OwnedObject) ($IsAlloc refType this@@5 Tclass._module.OwnedObject $prevHeap@@5)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@5) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@5 $Heap@@1 this@@5)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@5 $Heap@@1 this@@5)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@5) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@5 $Heap@@1 this@@5) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#0|) _module.OwnedObject.owner)) this@@5))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |o#0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |o#0|) _module.OwnedObject.owner)) this@@5)))
 :qid |_09CounterNoStateMachinedfy.373:18|
 :skolemid |1743|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |o#0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#0|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@5) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_09CounterNoStateMachinedfy.366:22|
 :skolemid |1745|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@5 $Heap@@1 this@@5) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($h@@12 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@19) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@19) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |o#0@0| () T@U)
(declare-fun current$Heap () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |_module.Object.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |x#0@0| () T@U)
(declare-fun this@@6 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Universe.ProveTransitiveInv2)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon15_correct true))
(let ((anon12_correct  (=> (=> ($Is refType |o#0@0| Tclass._module.OwnedObject) (and (forall (($o@@20 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@20 null)) (not true)) (=> (= $o@@20 |o#0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@20) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@20) $f@@4))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |996|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@20) $f@@4))
)) (forall ((|x#1| T@U) ) (!  (=> (and ($Is refType |x#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1|) _module.OwnedObject.owner)) |o#0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1|) _module.OwnedObject.owner)) |o#0@0|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |997|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1|)))
)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= |o#0@0| null)) (not true))) (=> (or (not (= |o#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |o#0@0|) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2)) (=> ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2) (=> (|_module.Object.transitiveInv2#canCall| $Heap@@2 current$Heap |o#0@0|) (=> (and (_module.Object.transitiveInv2 $Heap@@2 current$Heap |o#0@0|) (= (ControlFlow 0 4) 1)) anon15_correct))))))))))
(let ((anon23_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0@0|) _module.OwnedObject.nonvolatileVersion))))) (not true)) (= (ControlFlow 0 13) 4)) anon12_correct)))
(let ((anon23_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0@0|) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |x#0@0| null)) (not true))) (=> (or (not (= |x#0@0| null)) (not true)) (=> (= (ControlFlow 0 11) 4) anon12_correct))))))
(let ((anon22_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#0@0|) _module.OwnedObject.owner)) |o#0@0|)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (or (not (= |x#0@0| null)) (not true))) (=> (or (not (= |x#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 16)) ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject $Heap@@2)) (=> ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject $Heap@@2) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= |x#0@0| null)) (not true))) (=> (or (not (= |x#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 14) 11) anon23_Then_correct) (=> (= (ControlFlow 0 14) 13) anon23_Else_correct)))))))))))
(let ((anon22_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#0@0|) _module.OwnedObject.owner)) |o#0@0|))) (= (ControlFlow 0 10) 4)) anon12_correct)))
(let ((anon21_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#0@0|))) (and (=> (= (ControlFlow 0 21) 14) anon22_Then_correct) (=> (= (ControlFlow 0 21) 10) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#0@0|)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= |x#0@0| null)) (not true))) (=> (or (not (= |x#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject $Heap@@2)) (=> ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject $Heap@@2) (and (=> (= (ControlFlow 0 18) 14) anon22_Then_correct) (=> (= (ControlFlow 0 18) 10) anon22_Else_correct)))))))))
(let ((anon20_Then_correct  (=> (and ($Is refType |x#0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject current$Heap)) (and (=> (= (ControlFlow 0 22) (- 0 26)) (or (not (= |o#0@0| null)) (not true))) (=> (or (not (= |o#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 25)) ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2)) (=> ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= (_module.Object.universe |o#0@0|) null)) (not true))) (=> (or (not (= (_module.Object.universe |o#0@0|) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 23)) ($IsAlloc refType (_module.Object.universe |o#0@0|) Tclass._module.Universe $Heap@@2)) (=> ($IsAlloc refType (_module.Object.universe |o#0@0|) Tclass._module.Universe $Heap@@2) (and (=> (= (ControlFlow 0 22) 18) anon21_Then_correct) (=> (= (ControlFlow 0 22) 21) anon21_Else_correct)))))))))))))
(let ((anon20_Else_correct  (=> (and (not (and ($Is refType |x#0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0@0| Tclass._module.OwnedObject current$Heap))) (= (ControlFlow 0 9) 4)) anon12_correct)))
(let ((anon19_Then_correct  (=> (forall (($o@@21 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@21 null)) (not true)) (=> (= $o@@21 |o#0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@21) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@21) $f@@5))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |995|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@21) $f@@5))
)) (and (=> (= (ControlFlow 0 27) 22) anon20_Then_correct) (=> (= (ControlFlow 0 27) 9) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not (forall (($o@@22 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@22 null)) (not true)) (=> (= $o@@22 |o#0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@22) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@22) $f@@6))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |995|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@22) $f@@6))
))) (= (ControlFlow 0 8) 4)) anon12_correct)))
(let ((anon18_Then_correct  (=> ($Is refType |o#0@0| Tclass._module.OwnedObject) (and (=> (= (ControlFlow 0 28) (- 0 29)) ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2)) (=> ($IsAlloc refType |o#0@0| Tclass._module.Object $Heap@@2) (and (=> (= (ControlFlow 0 28) 27) anon19_Then_correct) (=> (= (ControlFlow 0 28) 8) anon19_Else_correct)))))))
(let ((anon18_Else_correct  (=> (and (not ($Is refType |o#0@0| Tclass._module.OwnedObject)) (= (ControlFlow 0 7) 4)) anon12_correct)))
(let ((anon17_Else_correct  (=> (and (=> (=> ($Is refType |o#0@0| Tclass._module.OwnedObject) (and (forall (($o@@23 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@23 null)) (not true)) (=> (= $o@@23 |o#0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@23) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@23) $f@@7))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |998|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@23) $f@@7))
)) (forall ((|x#1@@0| T@U) ) (!  (=> (and ($Is refType |x#1@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@0|) _module.OwnedObject.owner)) |o#0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@0|) _module.OwnedObject.owner)) |o#0@0|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |999|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1@@0|)))
)))) (_module.Object.transitiveInv2 $Heap@@2 current$Heap |o#0@0|)) (= (ControlFlow 0 3) 1)) anon15_correct)))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) ($IsAlloc refType this@@6 Tclass._module.Universe $Heap@@2)) (=> ($IsAlloc refType this@@6 Tclass._module.Universe $Heap@@2) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@0|)) (and (and (=> (= (ControlFlow 0 30) 3) anon17_Else_correct) (=> (= (ControlFlow 0 30) 28) anon18_Then_correct)) (=> (= (ControlFlow 0 30) 7) anon18_Else_correct)))))))
(let ((anon16_Else_correct  (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@0|)) (=> (=> ($Is refType |o#0@0| Tclass._module.OwnedObject) (and (forall (($o@@24 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |o#0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@24) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@24) $f@@8))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1000|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@24) $f@@8))
)) (forall ((|x#1@@1| T@U) ) (!  (=> (and ($Is refType |x#1@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1@@1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@1|) _module.OwnedObject.owner)) |o#0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@1|) _module.OwnedObject.owner)) |o#0@0|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1001|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |x#1@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe |o#0@0|)) _module.Universe.content)) ($Box refType |x#1@@1|)))
)))) (_module.Object.transitiveInv2 $Heap@@2 current$Heap |o#0@0|))) (= (ControlFlow 0 2) 1)) anon15_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null current$Heap alloc false)) (=> (and ($Is refType |o#0@0| Tclass._module.Object) ($IsAlloc refType |o#0@0| Tclass._module.Object current$Heap)) (and (=> (= (ControlFlow 0 32) 30) anon16_Then_correct) (=> (= (ControlFlow 0 32) 2) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe previous$Heap))) (= 5 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@2) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 33) 32))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
