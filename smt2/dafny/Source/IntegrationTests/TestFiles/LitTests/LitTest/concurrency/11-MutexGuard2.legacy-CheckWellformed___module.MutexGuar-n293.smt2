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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun class._module.MutexGuardU32? () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$mutex () T@U)
(declare-fun field$data () T@U)
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
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Mutex.data () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedU32.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.userInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Mutex.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedU32.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool alloc allocName Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.Object Tagclass._module.OwnedU32 Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? Tagclass._module.OwnedU32? class._module.Mutex? Tagclass._module.Mutex? class._module.MutexGuardU32? Tagclass._module.MutexGuardU32? tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$Object tytagFamily$OwnedU32 tytagFamily$OwnedObject field$mutex field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.OwnedU32?)  (or (= $o null) (= (dtype $o) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |1631|
 :pattern ( ($Is refType $o Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Mutex?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( ($Is refType $o@@0 Tclass._module.Mutex?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.MutexGuardU32?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |2166|
 :pattern ( ($Is refType $o@@1 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2439|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedU32? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2443|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedU32? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Mutex? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2447|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Mutex? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.MutexGuardU32? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2451|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.MutexGuardU32? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2164|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2433|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@7))
)))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
(assert (= (FDim _module.Mutex.data) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$data) _module.Mutex.data))
(assert  (not ($IsGhostField _module.Mutex.data)))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.OwnedObject) ($IsAlloc refType this Tclass._module.OwnedObject $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |1552|
)) (= (_module.OwnedObject.localInv2 $prevHeap $h0 this) (_module.OwnedObject.localInv2 $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1553|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.localInv2 $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.OwnedObject) ($IsAlloc refType this@@0 Tclass._module.OwnedObject $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1616|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@0 $h0@@0 this@@0) (_module.OwnedObject.localUserInv2 $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1617|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.localUserInv2 $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.OwnedU32) ($IsAlloc refType this@@1 Tclass._module.OwnedU32 $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@4 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@4) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1677|
)) (= (_module.OwnedU32.localUserInv2 $prevHeap@@1 $h0@@1 this@@1) (_module.OwnedU32.localUserInv2 $prevHeap@@1 $h1@@1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1678|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedU32.localUserInv2 $prevHeap@@1 $h1@@1 this@@1))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Mutex) ($IsAlloc refType this@@2 Tclass._module.Mutex $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@5 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@5) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@5) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1948|
)) (= (_module.Mutex.localUserInv2 $prevHeap@@2 $h0@@2 this@@2) (_module.Mutex.localUserInv2 $prevHeap@@2 $h1@@2 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1949|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Mutex.localUserInv2 $prevHeap@@2 $h1@@2 this@@2))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@3 Tclass._module.MutexGuardU32 $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@6 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@6) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@6) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |2215|
)) (= (_module.MutexGuardU32.localUserInv2 $prevHeap@@3 $h0@@3 this@@3) (_module.MutexGuardU32.localUserInv2 $prevHeap@@3 $h1@@3 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2216|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.MutexGuardU32.localUserInv2 $prevHeap@@3 $h1@@3 this@@3))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@4 Tclass._module.MutexGuardU32 $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@7 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@7) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |2222|
)) (= (_module.MutexGuardU32.userInv2 $prevHeap@@4 $h0@@4 this@@4) (_module.MutexGuardU32.userInv2 $prevHeap@@4 $h1@@4 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2223|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.MutexGuardU32.userInv2 $prevHeap@@4 $h1@@4 this@@4))
)))
(assert (forall (($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@9 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall (($o@@10 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._module.OwnedU32? $h@@10)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.OwnedU32? $h@@10))
)))
(assert (forall (($o@@11 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.Mutex? $h@@11)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Mutex? $h@@11))
)))
(assert (forall (($o@@12 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.MutexGuardU32? $h@@12)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2167|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.MutexGuardU32? $h@@12))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
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
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@13 T@U) ($f@@5 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@13 $f@@5))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@13) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2455|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@13 $f@@5))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv2#canCall| $prevHeap@@5 $Heap this@@5) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@5 $Heap)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Mutex) ($IsAlloc refType this@@5 Tclass._module.Mutex $prevHeap@@5)))))) (= (_module.Mutex.localUserInv2 $prevHeap@@5 $Heap this@@5)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@5) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@5) _module.Mutex.data))))))
 :qid |_11MutexGuard2legacydfy.500:22|
 :skolemid |1952|
 :pattern ( (_module.Mutex.localUserInv2 $prevHeap@@5 $Heap this@@5) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@0 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@6 $Heap@@0 this@@6) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@6 $Heap@@0)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@6 Tclass._module.MutexGuardU32 $prevHeap@@6)))))) (= (_module.MutexGuardU32.localUserInv2 $prevHeap@@6 $Heap@@0 this@@6)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@6) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@6) _module.MutexGuardU32.mutex))))))
 :qid |_11MutexGuard2legacydfy.560:22|
 :skolemid |2219|
 :pattern ( (_module.MutexGuardU32.localUserInv2 $prevHeap@@6 $Heap@@0 this@@6) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall (($h@@13 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1894|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.Mutex.data)))
)))
(assert (forall (($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2168|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.MutexGuardU32.mutex)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@1 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv2#canCall| $prevHeap@@7 $Heap@@1 this@@7) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@7 $Heap@@1 this@@7) (_module.OwnedU32.localUserInv2 $prevHeap@@7 $Heap@@1 this@@7)))
 :qid |_11MutexGuard2legacydfy.408:22|
 :skolemid |1682|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@7 $Heap@@1 this@@7) ($Is refType this@@7 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@7 $Heap@@1 this@@7) (_module.OwnedU32.localUserInv2 $prevHeap@@7 $Heap@@1 this@@7) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@2 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv2#canCall| $prevHeap@@8 $Heap@@2 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@8 $Heap@@2 this@@8) (_module.Mutex.localUserInv2 $prevHeap@@8 $Heap@@2 this@@8)))
 :qid |_11MutexGuard2legacydfy.408:22|
 :skolemid |1953|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@8 $Heap@@2 this@@8) ($Is refType this@@8 Tclass._module.Mutex) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@8 $Heap@@2 this@@8) (_module.Mutex.localUserInv2 $prevHeap@@8 $Heap@@2 this@@8) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@3 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@9 $Heap@@3 this@@9) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@9 $Heap@@3 this@@9) (_module.MutexGuardU32.localUserInv2 $prevHeap@@9 $Heap@@3 this@@9)))
 :qid |_11MutexGuard2legacydfy.408:22|
 :skolemid |2220|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@9 $Heap@@3 this@@9) ($Is refType this@@9 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@9 $Heap@@3 this@@9) (_module.MutexGuardU32.localUserInv2 $prevHeap@@9 $Heap@@3 this@@9) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@5| Tclass._module.OwnedObject?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@6| Tclass._module.OwnedU32?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Mutex)  (and ($Is refType |c#0@@7| Tclass._module.Mutex?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2163|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@8| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2432|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.MutexGuardU32?))
)))
(assert (forall (($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1895|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Mutex.data)))
)))
(assert (forall (($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2169|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($o@@18 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@18 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@19 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.OwnedU32? $heap@@0) ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2445|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.OwnedU32? $heap@@0))
)))
(assert (forall (($o@@20 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@20 Tclass._module.Mutex? $heap@@1) ($IsAlloc refType $o@@20 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2449|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.Mutex? $heap@@1))
)))
(assert (forall (($o@@21 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass._module.MutexGuardU32? $heap@@2) ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2453|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.MutexGuardU32? $heap@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@4 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv2#canCall| $prevHeap@@10 $Heap@@4 this@@10) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@10) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@10 $Heap@@4)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@10 Tclass._module.MutexGuardU32 $prevHeap@@10)))))) (and (and (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@10 $Heap@@4 this@@10) (=> (_module.MutexGuardU32.localUserInv2 $prevHeap@@10 $Heap@@4 this@@10) (|_module.OwnedObject.localInv2#canCall| $prevHeap@@10 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@10) _module.MutexGuardU32.mutex))))) (= (_module.MutexGuardU32.userInv2 $prevHeap@@10 $Heap@@4 this@@10)  (and (_module.MutexGuardU32.localUserInv2 $prevHeap@@10 $Heap@@4 this@@10) (_module.OwnedObject.localInv2 $prevHeap@@10 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@10) _module.MutexGuardU32.mutex)))))))
 :qid |_11MutexGuard2legacydfy.563:22|
 :skolemid |2226|
 :pattern ( (_module.MutexGuardU32.userInv2 $prevHeap@@10 $Heap@@4 this@@10) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@5 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv2#canCall| $prevHeap@@11 $Heap@@5 this@@11) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@11 $Heap@@5)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.OwnedU32) ($IsAlloc refType this@@11 Tclass._module.OwnedU32 $prevHeap@@11)))))) (= (_module.OwnedU32.localUserInv2 $prevHeap@@11 $Heap@@5 this@@11) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.449:22|
 :skolemid |1681|
 :pattern ( (_module.OwnedU32.localUserInv2 $prevHeap@@11 $Heap@@5 this@@11) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@6 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@12 $Heap@@6 this@@12) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@6)) ($HeapSucc $prevHeap@@12 $Heap@@6)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.OwnedObject) ($IsAlloc refType this@@12 Tclass._module.OwnedObject $prevHeap@@12)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@12 $Heap@@6 this@@12)) (= (_module.OwnedObject.localInv2 $prevHeap@@12 $Heap@@6 this@@12)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@12 $Heap@@6 this@@12)))))
 :qid |_11MutexGuard2legacydfy.345:22|
 :skolemid |1556|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@12 $Heap@@6 this@@12) ($IsGoodHeap $Heap@@6))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.OwnedObject?) ($Is refType $o@@22 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@22 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@23 T@U) ) (!  (=> ($Is refType $o@@23 Tclass._module.OwnedU32?) ($Is refType $o@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2444|
 :pattern ( ($Is refType $o@@23 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@24 T@U) ) (!  (=> ($Is refType $o@@24 Tclass._module.Mutex?) ($Is refType $o@@24 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2448|
 :pattern ( ($Is refType $o@@24 Tclass._module.Mutex?))
)))
(assert (forall (($o@@25 T@U) ) (!  (=> ($Is refType $o@@25 Tclass._module.MutexGuardU32?) ($Is refType $o@@25 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2452|
 :pattern ( ($Is refType $o@@25 Tclass._module.MutexGuardU32?))
)))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32?) Tagclass._module.MutexGuardU32?))
(assert (= (TagFamily Tclass._module.MutexGuardU32?) tytagFamily$MutexGuardU32))
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass._module.Object?)  (or (= $o@@26 null) (implements$_module.Object (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@26 Tclass._module.Object?))
)))
(assert (forall (($o@@27 T@U) ) (! (= ($Is refType $o@@27 Tclass._module.OwnedObject?)  (or (= $o@@27 null) (implements$_module.OwnedObject (dtype $o@@27))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@27 Tclass._module.OwnedObject?))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@7 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv2#canCall| $prevHeap@@13 $Heap@@7 this@@13) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@13 $Heap@@7)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@13 Tclass._module.MutexGuardU32 $prevHeap@@13)))))) (=> (_module.MutexGuardU32.userInv2 $prevHeap@@13 $Heap@@7 this@@13) (_module.MutexGuardU32.localUserInv2 $prevHeap@@13 $Heap@@7 this@@13)))
 :qid |_11MutexGuard2legacydfy.563:22|
 :skolemid |2224|
 :pattern ( (_module.MutexGuardU32.userInv2 $prevHeap@@13 $Heap@@7 this@@13))
))))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun previous$Heap () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@14 () T@U)
(declare-fun $Heap@@8 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun SetType () T@T)
(assert (= (Ctor SetType) 7))
(set-info :boogie-vc-id CheckWellformed$$_module.MutexGuardU32.userInv2)
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
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (_module.MutexGuardU32.userInv2 previous$Heap current$Heap this@@14) (=> (|_module.MutexGuardU32.localUserInv2#canCall| previous$Heap current$Heap this@@14) (or (_module.MutexGuardU32.localUserInv2 previous$Heap current$Heap this@@14) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (_module.MutexGuardU32.userInv2 previous$Heap current$Heap this@@14) (=> (|_module.MutexGuardU32.localUserInv2#canCall| previous$Heap current$Heap this@@14) (or (_module.MutexGuardU32.localUserInv2 previous$Heap current$Heap this@@14) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (_module.MutexGuardU32.userInv2 previous$Heap current$Heap this@@14) (=> (|_module.MutexGuardU32.localUserInv2#canCall| previous$Heap current$Heap this@@14) (or (_module.MutexGuardU32.localUserInv2 previous$Heap current$Heap this@@14) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@14) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex)))))))))))
(let ((anon8_correct  (=> (= (_module.MutexGuardU32.userInv2 $Heap@@8 current$Heap this@@14)  (and (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14) (_module.OwnedObject.localInv2 $Heap@@8 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex))))) (=> (and (and (|_module.MutexGuardU32.localUserInv2#canCall| $Heap@@8 current$Heap this@@14) (=> (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14) (|_module.OwnedObject.localInv2#canCall| $Heap@@8 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex))))) ($Is boolType (bool_2_U (_module.MutexGuardU32.userInv2 $Heap@@8 current$Heap this@@14)) TBool)) (and (=> (= (ControlFlow 0 10) (- 0 13)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 10) (- 0 12)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 10) (- 0 11)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (=> (= (ControlFlow 0 10) 8) GeneratedUnifiedExit_correct)))))))))))
(let ((anon12_Else_correct  (=> (and (and (not (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14)) (= |b$reqreads#1@1| true)) (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 17) 10))) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@14 _module.MutexGuardU32.mutex)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex) Tclass._module.OwnedObject? current$Heap) (and (=> (= (ControlFlow 0 14) (- 0 15)) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $Heap@@8)) (=> ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $Heap@@8) (=> (= |b$reqreads#2@0| (forall (($o@@28 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@28 $f@@6)))
 :qid |_11MutexGuard2legacydfy.565:14|
 :skolemid |2229|
))) (=> (and (and (|_module.OwnedObject.localInv2#canCall| $Heap@@8 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@14) _module.MutexGuardU32.mutex))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 14) 10))) anon8_correct))))))))))
(let ((anon10_Else_correct  (=> ($IsAllocBox ($Box refType this@@14) Tclass._module.MutexGuardU32? current$Heap) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8)) (=> ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8) (=> (and (= |b$reqreads#0@0| (forall (($o@@29 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@29 $f@@7)))
 :qid |_11MutexGuard2legacydfy.564:8|
 :skolemid |2228|
))) (|_module.MutexGuardU32.localUserInv2#canCall| $Heap@@8 current$Heap this@@14)) (and (=> (= (ControlFlow 0 18) 14) anon12_Then_correct) (=> (= (ControlFlow 0 18) 17) anon12_Else_correct))))))))
(let ((anon5_correct true))
(let ((anon11_Else_correct  (=> (and (=> (_module.MutexGuardU32.userInv2 $Heap@@8 current$Heap this@@14) (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14)) (= (ControlFlow 0 6) 1)) anon5_correct)))
(let ((anon11_Then_correct  (=> ($IsAllocBox ($Box refType this@@14) Tclass._module.MutexGuardU32? current$Heap) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8)) (=> ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (= this@@14 this@@14) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@14 this@@14) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (or (= this@@14 this@@14) (|_module.MutexGuardU32.userInv2#canCall| $Heap@@8 current$Heap this@@14)) (=> (and (_module.MutexGuardU32.userInv2 $Heap@@8 current$Heap this@@14) ($IsAllocBox ($Box refType this@@14) Tclass._module.MutexGuardU32? current$Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8)) (=> ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@8) (=> (|_module.MutexGuardU32.localUserInv2#canCall| $Heap@@8 current$Heap this@@14) (=> (and (_module.MutexGuardU32.localUserInv2 $Heap@@8 current$Heap this@@14) (= (ControlFlow 0 2) 1)) anon5_correct)))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#8| null current$Heap alloc current$Heap alloc)) (and (and (=> (= (ControlFlow 0 20) 18) anon10_Else_correct) (=> (= (ControlFlow 0 20) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 20) 6) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@8) ($IsHeapAnchor $Heap@@8)) (=> (and (and (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 previous$Heap))) (= 3 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@8) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 21) 20))) anon0_correct))))
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
