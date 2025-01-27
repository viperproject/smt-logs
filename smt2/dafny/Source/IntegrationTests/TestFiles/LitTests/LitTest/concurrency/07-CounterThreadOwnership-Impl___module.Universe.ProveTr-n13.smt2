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
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun field$content () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$owner () T@U)
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
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |_module.Thread.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object? Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Object field$content field$nonvolatileVersion field$owner)
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
 :skolemid |1371|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1372|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1381|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1382|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Thread?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( ($Is refType $o@@1 Tclass._module.Thread?))
)))
(assert (forall (($h T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3517|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1285|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
)))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Object) ($IsAlloc refType this@@1 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@3) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1029|
)) (= (_module.Object.transitiveInv2 $prevHeap@@1 $h0@@1 this@@1) (_module.Object.transitiveInv2 $prevHeap@@1 $h1@@1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1030|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.transitiveInv2 $prevHeap@@1 $h1@@1 this@@1))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Thread) ($IsAlloc refType this@@2 Tclass._module.Thread $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@4) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1111|
)) (= (_module.Thread.transitiveInv2 $prevHeap@@2 $h0@@2 this@@2) (_module.Thread.transitiveInv2 $prevHeap@@2 $h1@@2 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1112|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Thread.transitiveInv2 $prevHeap@@2 $h1@@2 this@@2))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.OwnedObject) ($IsAlloc refType this@@3 Tclass._module.OwnedObject $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@3 $h0@@3 this@@3) (_module.OwnedObject.transitiveInv2 $prevHeap@@3 $h1@@3 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedObject.transitiveInv2 $prevHeap@@3 $h1@@3 this@@3))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Universe? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@7 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Object? $h@@7)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Thread? $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@9 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@9))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@10) Tclass._module.Universe $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |966|
 :pattern ( (_module.Object.universe $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@11) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (_module.Object.universe $o@@11))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@4 $Heap this@@4) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Thread)))) (= (_module.Object.transitiveInv2 $prevHeap@@4 $Heap this@@4) (_module.Thread.transitiveInv2 $prevHeap@@4 $Heap this@@4)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1116|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@4 $Heap this@@4) ($Is refType this@@4 Tclass._module.Thread) ($IsGoodHeap $Heap))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@4 $Heap this@@4) (_module.Thread.transitiveInv2 $prevHeap@@4 $Heap this@@4) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@0 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@5 $Heap@@0 this@@5) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@5 $Heap@@0 this@@5) (_module.OwnedObject.transitiveInv2 $prevHeap@@5 $Heap@@0 this@@5)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1337|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@5 $Heap@@0 this@@5) ($Is refType this@@5 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@0))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@5 $Heap@@0 this@@5) (_module.OwnedObject.transitiveInv2 $prevHeap@@5 $Heap@@0 this@@5) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@4 Tclass._module.Thread))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@5 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( ($IsBox bx@@9 Tclass._module.Thread?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Thread)  (and ($Is refType |c#0@@5| Tclass._module.Thread?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1284|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.OwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3519|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@1 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@6 $Heap@@1 this@@6) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@6 $Heap@@1)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Thread) ($IsAlloc refType this@@6 Tclass._module.Thread $prevHeap@@6)))))) (= (_module.Thread.transitiveInv2 $prevHeap@@6 $Heap@@1 this@@6) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_07CounterThreadOwnershipdfy.294:22|
 :skolemid |1115|
 :pattern ( (_module.Thread.transitiveInv2 $prevHeap@@6 $Heap@@1 this@@6) ($IsGoodHeap $Heap@@1))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@7 $Heap@@2 this@@7) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@7 $Heap@@2)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.OwnedObject) ($IsAlloc refType this@@7 Tclass._module.OwnedObject $prevHeap@@7)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@7) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@7 $Heap@@2 this@@7)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@7 $Heap@@2 this@@7)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@7) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@7 $Heap@@2 this@@7)))))
 :qid |_07CounterThreadOwnershipdfy.375:22|
 :skolemid |1375|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@7 $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) _module.OwnedObject.nonvolatileVersion)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@15 T@U) ($f@@4 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f@@4))  (=> (and (or (not (= $o@@15 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@15) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3540|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f@@4))
)))
(assert (forall (($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) _module.OwnedObject.owner)) Tclass._module.Object $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.Thread?) ($Is refType $o@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3518|
 :pattern ( ($Is refType $o@@17 Tclass._module.Thread?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) ($IsBox bx@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3516|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> ($Is refType $o@@18 Tclass._module.OwnedObject?) ($Is refType $o@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@18 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.OwnedObject?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($IsBox bx@@15 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@13 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@19) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@19) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@20 T@U) ) (! (= ($Is refType $o@@20 Tclass._module.Universe?)  (or (= $o@@20 null) (implements$_module.Universe (dtype $o@@20))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@20 Tclass._module.Universe?))
)))
(assert (forall (($o@@21 T@U) ) (! (= ($Is refType $o@@21 Tclass._module.Object?)  (or (= $o@@21 null) (implements$_module.Object (dtype $o@@21))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@21 Tclass._module.Object?))
)))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass._module.OwnedObject?)  (or (= $o@@22 null) (implements$_module.OwnedObject (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@22 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@14 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@23 null)) (not true)) ($Is refType $o@@23 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@8 $Heap@@3 this@@8) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@3)) ($HeapSucc $prevHeap@@8 $Heap@@3)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.OwnedObject) ($IsAlloc refType this@@8 Tclass._module.OwnedObject $prevHeap@@8)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@8) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@8 $Heap@@3 this@@8)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@8 $Heap@@3 this@@8)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@8) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@8 $Heap@@3 this@@8) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 (_module.Object.universe this@@8)) _module.Universe.content)) ($Box refType |o#0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 |o#0|) _module.OwnedObject.owner)) this@@8))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 |o#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0|) _module.OwnedObject.owner)) this@@8)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |1334|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 |o#0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 (_module.Object.universe this@@8)) _module.Universe.content)) ($Box refType |o#0|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@8) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@8) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@8) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_07CounterThreadOwnershipdfy.343:22|
 :skolemid |1336|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@8 $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall (($h@@15 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@24) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@24) _module.Universe.content)))
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
(declare-fun |o#0_0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |x#0_0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |_module.Object.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |x#0_0@0| () T@U)
(declare-fun this@@9 () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#ownedObject#0_0_0| () Bool)
(declare-fun |ownedObject#0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Universe.ProveTransitiveInv2)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon27_correct  (=> (= (ControlFlow 0 33) (- 0 32)) (=> (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (forall (($o@@25 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@25) $f@@5))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |812|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) $f@@5))
)) (forall ((|x#0_1| T@U) ) (!  (=> (and ($Is refType |x#0_1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |x#0_1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |x#0_1|) _module.OwnedObject.owner)) |o#0_0@0|)))
 :qid |_07CounterThreadOwnershipdfy.160:20|
 :skolemid |813|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |x#0_1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |x#0_1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1|)))
)))) (_module.Object.transitiveInv2 $Heap@@4 $Heap@2 |o#0_0@0|)))))
(let ((anon44_Else_correct  (=> (not (and (forall (($o@@26 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@26) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@26) $f@@6))))
 :qid |_07CounterThreadOwnershipdfy.165:13|
 :skolemid |809|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@26) $f@@6))
)) (forall ((|x#0_0_1| T@U) ) (!  (=> (and ($Is refType |x#0_0_1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1|) _module.OwnedObject.owner)) |o#0_0@0|)))
 :qid |_07CounterThreadOwnershipdfy.165:36|
 :skolemid |810|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_1|)))
)))) (=> (and (= $Heap@2 current$Heap) (= (ControlFlow 0 40) 33)) anon27_correct))))
(let ((anon44_Then_correct  (=> (and (forall (($o@@27 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@27) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@27) $f@@7))))
 :qid |_07CounterThreadOwnershipdfy.165:13|
 :skolemid |809|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@27) $f@@7))
)) (forall ((|x#0_0_1@@0| T@U) ) (!  (=> (and ($Is refType |x#0_0_1@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_1@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1@@0|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1@@0|) _module.OwnedObject.owner)) |o#0_0@0|)))
 :qid |_07CounterThreadOwnershipdfy.165:36|
 :skolemid |810|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_1@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_1@@0|)))
))) (and (=> (= (ControlFlow 0 35) (- 0 39)) true) (and (=> (= (ControlFlow 0 35) (- 0 38)) (or (not (= |o#0_0@0| null)) (not true))) (=> (or (not (= |o#0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 35) (- 0 37)) ($IsAlloc refType |o#0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.OwnedObject $Heap@@4) (=> (= call0formal@previous$Heap@0 $Heap@@4) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall (($o@@28 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@28) $f@@8))))
 :qid |_07CounterThreadOwnershipdfy.378:61|
 :skolemid |1378|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@8))
))) (=> (forall (($o@@29 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@29) $f@@9))))
 :qid |_07CounterThreadOwnershipdfy.378:61|
 :skolemid |1378|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@9))
)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|)) (=> (and (and (and (|_module.OwnedObject.unchangedNonvolatileFields#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (and (_module.OwnedObject.unchangedNonvolatileFields call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#0_0@0|) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#0_0@0|) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields call0formal@previous$Heap@0 current$Heap |o#0_0@0|)))) (= current$Heap $Heap@1)) (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 35) 33))) anon27_correct)))))))))))))
(let ((anon23_correct  (and (=> (= (ControlFlow 0 41) 35) anon44_Then_correct) (=> (= (ControlFlow 0 41) 40) anon44_Else_correct))))
(let ((anon43_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_0@0|) _module.OwnedObject.nonvolatileVersion))))) (not true)) (= (ControlFlow 0 48) 41)) anon23_correct)))
(let ((anon43_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0_0@0|) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (not (= |x#0_0_0@0| null)) (not true))) (=> (or (not (= |x#0_0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) true) (=> (= (ControlFlow 0 45) 41) anon23_correct)))))))
(let ((anon42_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_0@0|) _module.OwnedObject.owner)) |o#0_0@0|)) (and (=> (= (ControlFlow 0 49) (- 0 52)) (or (not (= |x#0_0_0@0| null)) (not true))) (=> (or (not (= |x#0_0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 49) (- 0 51)) ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject $Heap@@4) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= |x#0_0_0@0| null)) (not true))) (=> (or (not (= |x#0_0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 49) 45) anon43_Then_correct) (=> (= (ControlFlow 0 49) 48) anon43_Else_correct)))))))))))
(let ((anon42_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0_0@0|) _module.OwnedObject.owner)) |o#0_0@0|))) (= (ControlFlow 0 44) 41)) anon23_correct)))
(let ((anon41_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_0@0|))) (and (=> (= (ControlFlow 0 57) 49) anon42_Then_correct) (=> (= (ControlFlow 0 57) 44) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0_0@0|)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (or (not (= |x#0_0_0@0| null)) (not true))) (=> (or (not (= |x#0_0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 53) (- 0 55)) ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject $Heap@@4) (and (=> (= (ControlFlow 0 53) (- 0 54)) true) (and (=> (= (ControlFlow 0 53) 49) anon42_Then_correct) (=> (= (ControlFlow 0 53) 44) anon42_Else_correct))))))))))
(let ((anon40_Then_correct  (=> (and ($Is refType |x#0_0_0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject current$Heap)) (and (=> (= (ControlFlow 0 58) (- 0 63)) true) (and (=> (= (ControlFlow 0 58) (- 0 62)) (or (not (= |o#0_0@0| null)) (not true))) (=> (or (not (= |o#0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 58) (- 0 61)) ($IsAlloc refType |o#0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.OwnedObject $Heap@@4) (and (=> (= (ControlFlow 0 58) (- 0 60)) (or (not (= (_module.Object.universe |o#0_0@0|) null)) (not true))) (=> (or (not (= (_module.Object.universe |o#0_0@0|) null)) (not true)) (and (=> (= (ControlFlow 0 58) (- 0 59)) ($IsAlloc refType (_module.Object.universe |o#0_0@0|) Tclass._module.Universe $Heap@@4)) (=> ($IsAlloc refType (_module.Object.universe |o#0_0@0|) Tclass._module.Universe $Heap@@4) (and (=> (= (ControlFlow 0 58) 53) anon41_Then_correct) (=> (= (ControlFlow 0 58) 57) anon41_Else_correct))))))))))))))
(let ((anon40_Else_correct  (=> (and (not (and ($Is refType |x#0_0_0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0_0_0@0| Tclass._module.OwnedObject current$Heap))) (= (ControlFlow 0 43) 41)) anon23_correct)))
(let ((anon39_Then_correct  (=> (forall (($o@@30 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@30) $f@@10))))
 :qid |_07CounterThreadOwnershipdfy.165:13|
 :skolemid |806|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@10))
)) (and (=> (= (ControlFlow 0 64) 58) anon40_Then_correct) (=> (= (ControlFlow 0 64) 43) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not (forall (($o@@31 T@U) ($f@@11 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@31) $f@@11))))
 :qid |_07CounterThreadOwnershipdfy.165:13|
 :skolemid |806|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@11))
))) (= (ControlFlow 0 42) 41)) anon23_correct)))
(let ((anon38_Then_correct  (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (=> (= (ControlFlow 0 65) (- 0 67)) ($Is refType |o#0_0@0| Tclass._module.OwnedObject)) (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (=> (= (ControlFlow 0 65) (- 0 66)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4) (and (=> (= (ControlFlow 0 65) 64) anon39_Then_correct) (=> (= (ControlFlow 0 65) 42) anon39_Else_correct)))))))))
(let ((anon38_Else_correct  (=> (not ($Is refType |o#0_0@0| Tclass._module.OwnedObject)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (or ($Is refType |o#0_0@0| Tclass._module.OwnedObject) ($Is refType |o#0_0@0| Tclass._module.Thread)) (= current$Heap $Heap@0)) (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 34) 33))) anon27_correct)))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 68) 65) anon38_Then_correct) (=> (= (ControlFlow 0 68) 34) anon38_Else_correct))))
(let ((anon13_correct true))
(let ((anon37_Else_correct  (=> (and (not (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (forall (($o@@32 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@32 null)) (not true)) (=> (= $o@@32 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@32) $f@@12))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) $f@@12))
)) (forall ((|x#0_1@@0| T@U) ) (!  (=> (and ($Is refType |x#0_1@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@0|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@0|) _module.OwnedObject.owner)) |o#0_0@0|)))
 :qid |_07CounterThreadOwnershipdfy.160:20|
 :skolemid |800|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1@@0|)))
))))) (= (ControlFlow 0 8) 4)) anon13_correct)))
(let ((anon37_Then_correct  (=> (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (forall (($o@@33 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@33) $f@@13))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) $f@@13))
)) (forall ((|x#0_1@@1| T@U) ) (!  (=> (and ($Is refType |x#0_1@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1@@1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@1|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@1|) _module.OwnedObject.owner)) |o#0_0@0|)))
 :qid |_07CounterThreadOwnershipdfy.160:20|
 :skolemid |800|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_1@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_1@@1|)))
)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= |o#0_0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |o#0_0@0|) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4) (=> (and (|_module.Object.transitiveInv2#canCall| $Heap@@4 current$Heap |o#0_0@0|) (= (ControlFlow 0 5) 4)) anon13_correct))))))))
(let ((anon36_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0@0|) _module.OwnedObject.nonvolatileVersion))))) (not true)) (and (=> (= (ControlFlow 0 15) 5) anon37_Then_correct) (=> (= (ControlFlow 0 15) 8) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_0@0|) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |x#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 13) 5) anon37_Then_correct) (=> (= (ControlFlow 0 13) 8) anon37_Else_correct))))))
(let ((anon35_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0@0|) _module.OwnedObject.owner)) |o#0_0@0|)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (not (= |x#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 16) (- 0 18)) ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject $Heap@@4) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= |x#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 16) 13) anon36_Then_correct) (=> (= (ControlFlow 0 16) 15) anon36_Else_correct)))))))))
(let ((anon35_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_0@0|) _module.OwnedObject.owner)) |o#0_0@0|))) (and (=> (= (ControlFlow 0 12) 5) anon37_Then_correct) (=> (= (ControlFlow 0 12) 8) anon37_Else_correct)))))
(let ((anon34_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0@0|))) (and (=> (= (ControlFlow 0 23) 16) anon35_Then_correct) (=> (= (ControlFlow 0 23) 12) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |x#0_0@0|)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |x#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject $Heap@@4)) (=> ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject $Heap@@4) (and (=> (= (ControlFlow 0 20) 16) anon35_Then_correct) (=> (= (ControlFlow 0 20) 12) anon35_Else_correct))))))))
(let ((anon33_Then_correct  (=> (and ($Is refType |x#0_0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject current$Heap)) (and (=> (= (ControlFlow 0 24) (- 0 28)) (or (not (= |o#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 24) (- 0 27)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4) (and (=> (= (ControlFlow 0 24) (- 0 26)) (or (not (= (_module.Object.universe |o#0_0@0|) null)) (not true))) (and (=> (= (ControlFlow 0 24) (- 0 25)) ($IsAlloc refType (_module.Object.universe |o#0_0@0|) Tclass._module.Universe $Heap@@4)) (=> ($IsAlloc refType (_module.Object.universe |o#0_0@0|) Tclass._module.Universe $Heap@@4) (and (=> (= (ControlFlow 0 24) 20) anon34_Then_correct) (=> (= (ControlFlow 0 24) 23) anon34_Else_correct)))))))))))
(let ((anon33_Else_correct  (=> (not (and ($Is refType |x#0_0@0| Tclass._module.OwnedObject) ($IsAlloc refType |x#0_0@0| Tclass._module.OwnedObject current$Heap))) (and (=> (= (ControlFlow 0 11) 5) anon37_Then_correct) (=> (= (ControlFlow 0 11) 8) anon37_Else_correct)))))
(let ((anon32_Then_correct  (=> (forall (($o@@34 T@U) ($f@@14 T@U) ) (!  (=> (or (not (= $o@@34 null)) (not true)) (=> (= $o@@34 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@34) $f@@14))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |798|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) $f@@14))
)) (and (=> (= (ControlFlow 0 29) 24) anon33_Then_correct) (=> (= (ControlFlow 0 29) 11) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not (forall (($o@@35 T@U) ($f@@15 T@U) ) (!  (=> (or (not (= $o@@35 null)) (not true)) (=> (= $o@@35 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@35) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@35) $f@@15))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |798|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@35) $f@@15))
))) (and (=> (= (ControlFlow 0 10) 5) anon37_Then_correct) (=> (= (ControlFlow 0 10) 8) anon37_Else_correct)))))
(let ((anon31_Then_correct  (=> ($Is refType |o#0_0@0| Tclass._module.OwnedObject) (and (=> (= (ControlFlow 0 30) (- 0 31)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@4) (and (=> (= (ControlFlow 0 30) 29) anon32_Then_correct) (=> (= (ControlFlow 0 30) 10) anon32_Else_correct)))))))
(let ((anon31_Else_correct  (=> (not ($Is refType |o#0_0@0| Tclass._module.OwnedObject)) (and (=> (= (ControlFlow 0 9) 5) anon37_Then_correct) (=> (= (ControlFlow 0 9) 8) anon37_Else_correct)))))
(let ((anon29_Then_correct  (=> ($Is refType |o#0_0@0| Tclass._module.Object) (and (=> (= (ControlFlow 0 69) (- 0 70)) ($IsAlloc refType this@@9 Tclass._module.Universe $Heap@@4)) (=> ($IsAlloc refType this@@9 Tclass._module.Universe $Heap@@4) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@9) _module.Universe.content)) ($Box refType |o#0_0@0|)) (and (and (=> (= (ControlFlow 0 69) 68) anon30_Else_correct) (=> (= (ControlFlow 0 69) 30) anon31_Then_correct)) (=> (= (ControlFlow 0 69) 9) anon31_Else_correct))))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@9) _module.Universe.content)) ($Box refType |o#1|))) (=> (=> ($Is refType |o#1| Tclass._module.OwnedObject) (and (forall (($o@@36 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@36 null)) (not true)) (=> (= $o@@36 |o#1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@36) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap $o@@36) $f@@16))))
 :qid |_07CounterThreadOwnershipdfy.153:12|
 :skolemid |795|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@36) $f@@16))
)) (forall ((|x#2| T@U) ) (!  (=> (and ($Is refType |x#2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe |o#1|)) _module.Universe.content)) ($Box refType |x#2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |x#2|) _module.OwnedObject.owner)) |o#1|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |x#2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#2|) _module.OwnedObject.owner)) |o#1|)))
 :qid |_07CounterThreadOwnershipdfy.154:20|
 :skolemid |796|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |x#2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe |o#1|)) _module.Universe.content)) ($Box refType |x#2|)))
)))) (_module.Object.transitiveInv2 previous$Heap current$Heap |o#1|)))
 :qid |_07CounterThreadOwnershipdfy.151:20|
 :skolemid |797|
 :pattern ( (_module.Object.transitiveInv2 previous$Heap current$Heap |o#1|))
 :pattern ( (_module.Object.universe |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@9) _module.Universe.content)) ($Box refType |o#1|)))
)))))
(let ((anon29_Else_correct  (=> (and (forall ((|o#0_1| T@U) ) (!  (=> (and ($Is refType |o#0_1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@9) _module.Universe.content)) ($Box refType |o#0_1|))) (=> (=> ($Is refType |o#0_1| Tclass._module.OwnedObject) (and (forall (($o@@37 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@37 null)) (not true)) (=> (= $o@@37 |o#0_1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@37) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@37) $f@@17))))
 :qid |_07CounterThreadOwnershipdfy.159:12|
 :skolemid |814|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@37) $f@@17))
)) (forall ((|x#0_2| T@U) ) (!  (=> (and ($Is refType |x#0_2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_1|)) _module.Universe.content)) ($Box refType |x#0_2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_2|) _module.OwnedObject.owner)) |o#0_1|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_2|) _module.OwnedObject.owner)) |o#0_1|)))
 :qid |_07CounterThreadOwnershipdfy.160:20|
 :skolemid |815|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |x#0_2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |x#0_2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe |o#0_1|)) _module.Universe.content)) ($Box refType |x#0_2|)))
)))) (_module.Object.transitiveInv2 $Heap@@4 current$Heap |o#0_1|)))
 :qid |_07CounterThreadOwnershipdfy.157:12|
 :skolemid |816|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@4 current$Heap |o#0_1|))
 :pattern ( (_module.Object.universe |o#0_1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@9) _module.Universe.content)) ($Box refType |o#0_1|)))
)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 71) 69) anon29_Then_correct) (=> (= (ControlFlow 0 71) 3) anon29_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe previous$Heap)))) (=> (and (and (and (=> |defass#ownedObject#0_0_0| (and ($Is refType |ownedObject#0_0_0| Tclass._module.OwnedObject) ($IsAlloc refType |ownedObject#0_0_0| Tclass._module.OwnedObject $Heap@@4))) true) (= 5 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@4) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 72) 71))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
