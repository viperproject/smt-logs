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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun class._module.Remaining? () T@U)
(declare-fun Tagclass._module.Remaining? () T@U)
(declare-fun Tagclass._module.Remaining () T@U)
(declare-fun class._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$Remaining () T@U)
(declare-fun tytagFamily$IncrementerMethod () T@U)
(declare-fun field$content () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
(declare-fun field$programCounter () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$remaining () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
(declare-fun field$i () T@U)
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
(declare-fun _module.AtomicCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun _module.Remaining.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun _module.IncrementerMethod.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.IncrementerMethod () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
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
(declare-fun _module.Universe.content () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.AtomicCounter.value () T@U)
(declare-fun _module.Remaining.value () T@U)
(declare-fun _module.IncrementerMethod.programCounter () T@U)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun _module.IncrementerMethod.initial__value () T@U)
(declare-fun _module.IncrementerMethod.final__value () T@U)
(declare-fun _module.IncrementerMethod.i () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.IncrementerMethod.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Remaining.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.userInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.AtomicCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun |_module.IncrementerMethod.userInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.Remaining? Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$content field$nonvolatileVersion field$owner field$value field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
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
 :skolemid |1025|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1026|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1035|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1036|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.AtomicCounter))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1260|
)) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@1 this@@1) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1262|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@1))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Remaining))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1454|
)) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@2 this@@2) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1456|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@2))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.IncrementerMethod))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1658|
)) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@3 this@@3) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1660|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@3))
)))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.AtomicCounter?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( ($Is refType $o@@4 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Remaining?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o@@5 Tclass._module.Remaining?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.IncrementerMethod?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( ($Is refType $o@@6 Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@7) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |960|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@7) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2266|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@3))
)))
(assert (forall ((|c#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@7) ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1448|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@7))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@8) ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1642|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@8))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@9) ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@9))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.AtomicCounter.value) 0))
(assert (= (FieldOfDecl class._module.AtomicCounter? field$value) _module.AtomicCounter.value))
(assert  (not ($IsGhostField _module.AtomicCounter.value)))
(assert (= (FDim _module.Remaining.value) 0))
(assert (= (FieldOfDecl class._module.Remaining? field$value) _module.Remaining.value))
(assert  (not ($IsGhostField _module.Remaining.value)))
(assert (= (FDim _module.IncrementerMethod.programCounter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$programCounter) _module.IncrementerMethod.programCounter))
(assert  (not ($IsGhostField _module.IncrementerMethod.programCounter)))
(assert (= (FDim _module.IncrementerMethod.counter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$counter) _module.IncrementerMethod.counter))
(assert  (not ($IsGhostField _module.IncrementerMethod.counter)))
(assert (= (FDim _module.IncrementerMethod.remaining) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$remaining) _module.IncrementerMethod.remaining))
(assert  (not ($IsGhostField _module.IncrementerMethod.remaining)))
(assert (= (FDim _module.IncrementerMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$initial_value) _module.IncrementerMethod.initial__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.initial__value)))
(assert (= (FDim _module.IncrementerMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$final_value) _module.IncrementerMethod.final__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.final__value)))
(assert (= (FDim _module.IncrementerMethod.i) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$i) _module.IncrementerMethod.i))
(assert  (not ($IsGhostField _module.IncrementerMethod.i)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap T@U) (this@@4 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@4 $Heap this@@4) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@4 $Heap)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@4 Tclass._module.IncrementerMethod $prevHeap@@4)))))) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@4 $Heap this@@4)  (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.OwnedObject.owner))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.remaining)))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 3))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 4))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 5))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 6))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 7))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 2))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.programCounter))) (LitInt 9))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@4) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@4) _module.IncrementerMethod.i))))))))
 :qid |_08CounterNoTerminationdfy.452:22|
 :skolemid |1701|
 :pattern ( (_module.IncrementerMethod.localUserInv2 $prevHeap@@4 $Heap this@@4) ($IsGoodHeap $Heap))
))))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.OwnedObject) ($IsAlloc refType this@@5 Tclass._module.OwnedObject $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@8 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@8) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |987|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@5 $h0@@4 this@@5) (_module.OwnedObject.localInv2 $prevHeap@@5 $h1@@4 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |988|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.OwnedObject.localInv2 $prevHeap@@5 $h1@@4 this@@5))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.OwnedObject) ($IsAlloc refType this@@6 Tclass._module.OwnedObject $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1049|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@6 $h0@@5 this@@6) (_module.OwnedObject.localUserInv2 $prevHeap@@6 $h1@@5 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1050|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.OwnedObject.localUserInv2 $prevHeap@@6 $h1@@5 this@@6))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.AtomicCounter) ($IsAlloc refType this@@7 Tclass._module.AtomicCounter $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@10 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@10) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1297|
)) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@7 $h0@@6 this@@7) (_module.AtomicCounter.localUserInv2 $prevHeap@@7 $h1@@6 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1298|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.AtomicCounter.localUserInv2 $prevHeap@@7 $h1@@6 this@@7))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Remaining) ($IsAlloc refType this@@8 Tclass._module.Remaining $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@11 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@11) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1491|
)) (= (_module.Remaining.localUserInv2 $prevHeap@@8 $h0@@7 this@@8) (_module.Remaining.localUserInv2 $prevHeap@@8 $h1@@7 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1492|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Remaining.localUserInv2 $prevHeap@@8 $h1@@7 this@@8))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@9 Tclass._module.IncrementerMethod $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@12 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@12) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1697|
)) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@9 $h0@@8 this@@9) (_module.IncrementerMethod.localUserInv2 $prevHeap@@9 $h1@@8 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1698|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.IncrementerMethod.localUserInv2 $prevHeap@@9 $h1@@8 this@@9))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@10 Tclass._module.IncrementerMethod $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@13 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@13) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1704|
)) (= (_module.IncrementerMethod.userInv2 $prevHeap@@10 $h0@@9 this@@10) (_module.IncrementerMethod.userInv2 $prevHeap@@10 $h1@@9 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.IncrementerMethod.userInv2 $prevHeap@@10 $h1@@9 this@@10))
)))
(assert (forall (($o@@14 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.Universe? $h@@10)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Universe? $h@@10))
)))
(assert (forall (($o@@15 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._module.Object? $h@@11)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Object? $h@@11))
)))
(assert (forall (($o@@16 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $h@@12)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $h@@12))
)))
(assert (forall (($o@@17 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@17 Tclass._module.AtomicCounter? $h@@13)  (or (= $o@@17 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.AtomicCounter? $h@@13))
)))
(assert (forall (($o@@18 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.Remaining? $h@@14)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Remaining? $h@@14))
)))
(assert (forall (($o@@19 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.IncrementerMethod? $h@@15)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.IncrementerMethod? $h@@15))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@20 T@U) ($f@@10 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@10))  (=> (and (or (not (= $o@@20 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@20) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@20) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2275|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@10))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@0 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@11 $Heap@@0 this@@11) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@11 $Heap@@0)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.AtomicCounter) ($IsAlloc refType this@@11 Tclass._module.AtomicCounter $prevHeap@@11)))))) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@11 $Heap@@0 this@@11) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@11) _module.AtomicCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@11) _module.AtomicCounter.value))))))
 :qid |_08CounterNoTerminationdfy.306:22|
 :skolemid |1301|
 :pattern ( (_module.AtomicCounter.localUserInv2 $prevHeap@@11 $Heap@@0 this@@11) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($h@@16 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@21) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@21) _module.AtomicCounter.value)) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1259|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@21) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@17 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Remaining?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@22) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@22) _module.Remaining.value)) TInt $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@22) _module.Remaining.value)))
)))
(assert (forall (($h@@18 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@23) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@23) _module.IncrementerMethod.programCounter)) TInt $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1647|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@23) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@19 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@24) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@24) _module.IncrementerMethod.initial__value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1653|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@24) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@20 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@25) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@25) _module.IncrementerMethod.final__value)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1655|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@25) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@21 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) _module.IncrementerMethod.i)) TInt $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1657|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) _module.IncrementerMethod.i)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@1 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@12 $Heap@@1 this@@12) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@12 $Heap@@1)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Remaining) ($IsAlloc refType this@@12 Tclass._module.Remaining $prevHeap@@12)))))) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@1 this@@12)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@12) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@12) _module.Remaining.value)))))))
 :qid |_08CounterNoTerminationdfy.336:22|
 :skolemid |1459|
 :pattern ( (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@1 this@@12) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@1) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@4 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@22 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@27) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@27) Tclass._module.Universe $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@27) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@27) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@28) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@28))
))))
(assert (forall (($h@@23 T@U) ($o@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@29) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@29) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@24 T@U) ($o@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1650|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@2 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@13 $Heap@@2 this@@13) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@2 this@@13) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@2 this@@13)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1266|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@2 this@@13) ($Is refType this@@13 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@2 this@@13) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@2 this@@13) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@3 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@14 $Heap@@3 this@@14) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@14 $Heap@@3 this@@14) (_module.AtomicCounter.localUserInv2 $prevHeap@@14 $Heap@@3 this@@14)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1302|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@14 $Heap@@3 this@@14) ($Is refType this@@14 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@14 $Heap@@3 this@@14) (_module.AtomicCounter.localUserInv2 $prevHeap@@14 $Heap@@3 this@@14) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@4 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@15 $Heap@@4 this@@15) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Remaining)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@4 this@@15) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@4 this@@15)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@4 this@@15) ($Is refType this@@15 Tclass._module.Remaining) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@4 this@@15) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@4 this@@15) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@5 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@16 $Heap@@5 this@@16) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@16 $Heap@@5 this@@16) (_module.Remaining.localUserInv2 $prevHeap@@16 $Heap@@5 this@@16)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1496|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@16 $Heap@@5 this@@16) ($Is refType this@@16 Tclass._module.Remaining) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@16 $Heap@@5 this@@16) (_module.Remaining.localUserInv2 $prevHeap@@16 $Heap@@5 this@@16) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@6 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@17 $Heap@@6 this@@17) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@6 this@@17) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@6 this@@17)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1664|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@6 this@@17) ($Is refType this@@17 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@6 this@@17) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@6 this@@17) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@7 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@18 $Heap@@7 this@@18) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@18 $Heap@@7 this@@18) (_module.IncrementerMethod.localUserInv2 $prevHeap@@18 $Heap@@7 this@@18)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1702|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@18 $Heap@@7 this@@18) ($Is refType this@@18 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@18 $Heap@@7 this@@18) (_module.IncrementerMethod.localUserInv2 $prevHeap@@18 $Heap@@7 this@@18) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@6 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsBox bx@@11 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1261|
 :pattern ( ($IsBox bx@@12 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Remaining?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsBox bx@@13 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Remaining) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Remaining)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx@@14 Tclass._module.Remaining))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.IncrementerMethod?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1643|
 :pattern ( ($IsBox bx@@15 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.IncrementerMethod) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.IncrementerMethod)))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( ($IsBox bx@@16 Tclass._module.IncrementerMethod))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@8 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@19 $Heap@@8 this@@19) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@8)) ($HeapSucc $prevHeap@@19 $Heap@@8)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $prevHeap@@19)))))) (and (and (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@19 $Heap@@8 this@@19) (=> (_module.OwnedObject.localUserInv2 $prevHeap@@19 $Heap@@8 this@@19) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@19) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@19) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@19 $Heap@@8 this@@19)))) (= (_module.OwnedObject.localInv2 $prevHeap@@19 $Heap@@8 this@@19)  (and (and (_module.OwnedObject.localUserInv2 $prevHeap@@19 $Heap@@8 this@@19) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@19) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@19) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@19 $Heap@@8 this@@19) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 (_module.Object.universe this@@19)) _module.Universe.content)) ($Box refType |o#0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |o#0|) _module.OwnedObject.owner)) this@@19))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |o#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |o#0|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_08CounterNoTerminationdfy.187:18|
 :skolemid |991|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |o#0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |o#0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 (_module.Object.universe this@@19)) _module.Universe.content)) ($Box refType |o#0|)))
))))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@19) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@19) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@19) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@19) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_08CounterNoTerminationdfy.180:22|
 :skolemid |993|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@19 $Heap@@8 this@@19) ($IsGoodHeap $Heap@@8))
))))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@8| Tclass._module.AtomicCounter?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Remaining)  (and ($Is refType |c#0@@9| Tclass._module.Remaining?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1641|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@25 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@31) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@31) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@31) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@26 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@32) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@32) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1651|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@32) _module.IncrementerMethod.remaining)))
)))
(assert (forall (($o@@33 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@33 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@33 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($IsAlloc refType $o@@33 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@34 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@34 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@34 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@34 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@35 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@35 Tclass._module.Remaining? $heap@@1) ($IsAlloc refType $o@@35 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2268|
 :pattern ( ($IsAlloc refType $o@@35 Tclass._module.Remaining? $heap@@1))
)))
(assert (forall (($o@@36 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@36 Tclass._module.IncrementerMethod? $heap@@2) ($IsAlloc refType $o@@36 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( ($IsAlloc refType $o@@36 Tclass._module.IncrementerMethod? $heap@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@9 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@20 $Heap@@9 this@@20) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@20 $Heap@@9)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.AtomicCounter) ($IsAlloc refType this@@20 Tclass._module.AtomicCounter $prevHeap@@20)))))) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@20 $Heap@@9 this@@20) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_08CounterNoTerminationdfy.290:22|
 :skolemid |1265|
 :pattern ( (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@20 $Heap@@9 this@@20) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@10 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@21 $Heap@@10 this@@21) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@10)) ($HeapSucc $prevHeap@@21 $Heap@@10)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Remaining) ($IsAlloc refType this@@21 Tclass._module.Remaining $prevHeap@@21)))))) (= (_module.Remaining.localUserInv2 $prevHeap@@21 $Heap@@10 this@@21) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.352:22|
 :skolemid |1495|
 :pattern ( (_module.Remaining.localUserInv2 $prevHeap@@21 $Heap@@10 this@@21) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 TInt) (and (= ($Box intType ($Unbox intType bx@@17)) bx@@17) ($Is intType ($Unbox intType bx@@17) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@17 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@11 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@22 $Heap@@11 this@@22) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@11)) ($HeapSucc $prevHeap@@22 $Heap@@11)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $prevHeap@@22)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@22) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@22 $Heap@@11 this@@22)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@22 $Heap@@11 this@@22)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@22) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@22 $Heap@@11 this@@22)))))
 :qid |_08CounterNoTerminationdfy.211:22|
 :skolemid |1029|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@22 $Heap@@11 this@@22) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@18 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@18) ($IsAllocBox bx@@18 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@18))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@27 T@U) ($o@@37 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@37 null)) (not true)) ($Is refType $o@@37 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) _module.OwnedObject.nonvolatileVersion)) TInt $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |961|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h@@28 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@38) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@38) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@29 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.Remaining?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@39) _module.Remaining.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@39) _module.Remaining.value)))
)))
(assert (forall (($h@@30 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@40) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1646|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@40) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@31 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@41) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@41) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@32 T@U) ($o@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@42) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1654|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@42) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@33 T@U) ($o@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@43) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1656|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@43) _module.IncrementerMethod.i)))
)))
(assert (forall (($h@@34 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@44 null)) (not true)) ($Is refType $o@@44 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@44) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@44) _module.OwnedObject.owner)) Tclass._module.Object $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |963|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@44) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@19 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@19 (TSet t@@5)))
)))
(assert (forall (($o@@45 T@U) ) (!  (=> ($Is refType $o@@45 Tclass._module.OwnedObject?) ($Is refType $o@@45 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( ($Is refType $o@@45 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedObject?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@46 T@U) ) (!  (=> ($Is refType $o@@46 Tclass._module.AtomicCounter?) ($Is refType $o@@46 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@46 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.AtomicCounter?) ($IsBox bx@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( ($IsBox bx@@21 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@47 T@U) ) (!  (=> ($Is refType $o@@47 Tclass._module.Remaining?) ($Is refType $o@@47 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2267|
 :pattern ( ($Is refType $o@@47 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Remaining?) ($IsBox bx@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2265|
 :pattern ( ($IsBox bx@@22 Tclass._module.Remaining?))
)))
(assert (forall (($o@@48 T@U) ) (!  (=> ($Is refType $o@@48 Tclass._module.IncrementerMethod?) ($Is refType $o@@48 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($Is refType $o@@48 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.IncrementerMethod?) ($IsBox bx@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2269|
 :pattern ( ($IsBox bx@@23 Tclass._module.IncrementerMethod?))
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
(assert (= (Tag Tclass._module.Remaining?) Tagclass._module.Remaining?))
(assert (= (TagFamily Tclass._module.Remaining?) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.Remaining) Tagclass._module.Remaining))
(assert (= (TagFamily Tclass._module.Remaining) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.IncrementerMethod?) Tagclass._module.IncrementerMethod?))
(assert (= (TagFamily Tclass._module.IncrementerMethod?) tytagFamily$IncrementerMethod))
(assert (= (Tag Tclass._module.IncrementerMethod) Tagclass._module.IncrementerMethod))
(assert (= (TagFamily Tclass._module.IncrementerMethod) tytagFamily$IncrementerMethod))
(assert (forall (($h@@35 T@U) ($o@@49 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@49 null)) (not true)) ($Is refType $o@@49 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@49) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |962|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@49) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@12 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@23 $Heap@@12 this@@23) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@23 $Heap@@12)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@23 Tclass._module.IncrementerMethod $prevHeap@@23)))))) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@12 this@@23)  (and (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.remaining)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.final__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@23) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@23) _module.IncrementerMethod.i)))))))
 :qid |_08CounterNoTerminationdfy.416:22|
 :skolemid |1663|
 :pattern ( (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@12 this@@23) ($IsGoodHeap $Heap@@12))
))))
(assert (forall (($o@@50 T@U) ) (! (= ($Is refType $o@@50 Tclass._module.Universe?)  (or (= $o@@50 null) (implements$_module.Universe (dtype $o@@50))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@50 Tclass._module.Universe?))
)))
(assert (forall (($o@@51 T@U) ) (! (= ($Is refType $o@@51 Tclass._module.Object?)  (or (= $o@@51 null) (implements$_module.Object (dtype $o@@51))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@51 Tclass._module.Object?))
)))
(assert (forall (($o@@52 T@U) ) (! (= ($Is refType $o@@52 Tclass._module.OwnedObject?)  (or (= $o@@52 null) (implements$_module.OwnedObject (dtype $o@@52))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType $o@@52 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@36 T@U) ($o@@53 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@53 null)) (not true)) ($Is refType $o@@53 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@53) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@53) _module.Universe.content)) (TSet Tclass._module.Object) $h@@36))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@53) _module.Universe.content)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@13 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@24 $Heap@@13 this@@24) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@24 $Heap@@13)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@24 Tclass._module.IncrementerMethod $prevHeap@@24)))))) (and (and (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@24 $Heap@@13 this@@24) (=> (_module.IncrementerMethod.localUserInv2 $prevHeap@@24 $Heap@@13 this@@24) (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@24 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@24) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@24) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv2#canCall| $prevHeap@@24 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@24) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv2 $prevHeap@@24 $Heap@@13 this@@24)  (and (and (_module.IncrementerMethod.localUserInv2 $prevHeap@@24 $Heap@@13 this@@24) (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@24) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@24) _module.IncrementerMethod.remaining)))))))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1708|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@24 $Heap@@13 this@@24) ($IsGoodHeap $Heap@@13))
))))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@14 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@25 $Heap@@14 this@@25) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@14)) ($HeapSucc $prevHeap@@25 $Heap@@14)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@25 Tclass._module.IncrementerMethod $prevHeap@@25)))))) (=> (_module.IncrementerMethod.userInv2 $prevHeap@@25 $Heap@@14 this@@25) (_module.IncrementerMethod.localUserInv2 $prevHeap@@25 $Heap@@14 this@@25)))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1706|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@25 $Heap@@14 this@@25))
))))
(assert (forall (($h@@37 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@54 null)) (not true)) ($Is refType $o@@54 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@54) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@54) _module.Universe.content)))
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
(declare-fun IncrementerMethod_$_ReadsFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun $Heap@@15 () T@U)
(declare-fun this@@26 () T@U)
(declare-fun current$Heap@@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id OverrideCheck$$_module.IncrementerMethod.userInv2)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 14)) (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))) (=> (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (=> (= IncrementerMethod_$_ReadsFrame@0 (|lambda#3| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (forall (($o@@55 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@55) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@55) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@55) alloc))))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1713|
))) (=> (forall (($o@@56 T@U) ($f@@12 T@U) ) (!  (=> (and (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@56) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@56) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@56) alloc))))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1713|
)) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.OwnedObject.owner))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.OwnedObject.owner)))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.counter))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.counter)))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.remaining))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.remaining)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 3))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 3))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 4))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 4))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 5))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 5))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 6))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 6))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 7))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 7))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 2))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 2))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (_module.IncrementerMethod.userInv2 $Heap@@15 current$Heap this@@26) (=> (|_module.IncrementerMethod.localUserInv2#canCall| $Heap@@15 current$Heap this@@26) (or (_module.IncrementerMethod.localUserInv2 $Heap@@15 current$Heap this@@26) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.programCounter))) (LitInt 9))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@26) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@26) _module.IncrementerMethod.i)))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@15) ($IsHeapAnchor $Heap@@15)) (=> (and (and (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@26 Tclass._module.IncrementerMethod current$Heap@@0))) (= 4 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@15) (and ($HeapSucc previous$Heap current$Heap@@0) ($IsGoodHeap current$Heap@@0))) (= (ControlFlow 0 15) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
