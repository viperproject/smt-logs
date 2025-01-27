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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$guards () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
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
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun _module.Mutex.guards () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Mutex.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Mutex.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#22| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedU32 class._module.Universe? Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? Tagclass._module.OwnedU32? class._module.Mutex? Tagclass._module.Mutex? Tagclass._module.MutexGuardU32? tytagFamily$Universe tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$Object tytagFamily$OwnedU32 tytagFamily$OwnedObject field$content field$guards field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
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
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedU32 $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedU32? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedU32 $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedU32? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Mutex $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.Mutex? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2164|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Mutex $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Mutex? $h@@7))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.MutexGuardU32 $h@@8) ($IsAlloc refType |c#0@@4| Tclass._module.MutexGuardU32? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2433|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.MutexGuardU32 $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.MutexGuardU32? $h@@8))
)))
(assert (= (FDim _module.Mutex.guards) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$guards) _module.Mutex.guards))
(assert ($IsGhostField _module.Mutex.guards))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
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
(assert (forall (($o@@2 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@9)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@9))
)))
(assert (forall (($o@@3 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@10)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@10))
)))
(assert (forall (($o@@4 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@5 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@12)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@12))
)))
(assert (forall (($o@@6 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@13)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@13))
)))
(assert (forall (($o@@7 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.MutexGuardU32? $h@@14)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2167|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.MutexGuardU32? $h@@14))
)))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Mutex.baseUserFieldsInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Mutex) ($IsAlloc refType this Tclass._module.Mutex $Heap)))))) (= (_module.Mutex.baseUserFieldsInv $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Mutex.data)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Mutex.guards)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content))))))
 :qid |_11MutexGuard2legacydfy.477:19|
 :skolemid |1910|
 :pattern ( (_module.Mutex.baseUserFieldsInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
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
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@1) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@4 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@15 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@8) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@8) Tclass._module.Universe $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@8) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@9) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@9))
))))
(assert (forall (($h@@16 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1894|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) _module.Mutex.data)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@6 Tclass._module.Mutex))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@7 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |1630|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( ($IsBox bx@@15 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |2165|
 :pattern ( ($IsBox bx@@16 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@8| Tclass._module.OwnedU32?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Mutex)  (and ($Is refType |c#0@@9| Tclass._module.Mutex?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2163|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@10| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2432|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.MutexGuardU32?))
)))
(assert (forall (($h@@17 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1895|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) _module.Mutex.data)))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OwnedU32? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2445|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedU32? $heap@@0))
)))
(assert (forall (($o@@14 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.Mutex? $heap@@1) ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2449|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Mutex? $heap@@1))
)))
(assert (forall (($o@@15 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.MutexGuardU32? $heap@@2) ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2453|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.MutexGuardU32? $heap@@2))
)))
(assert (forall (($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Mutex?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1898|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) _module.Mutex.guards)))
)))
(assert (forall (($h@@19 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1899|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) _module.Mutex.guards)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@18 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (or (= $o@@18 this@@0) (= $o@@18 (_module.Object.universe this@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@18) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@18) $f)))
 :qid |unknown.0:0|
 :skolemid |1906|
)) (= (_module.Mutex.baseUserFieldsInv $h0 this@@0) (_module.Mutex.baseUserFieldsInv $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Mutex.baseUserFieldsInv $h1 this@@0))
)))
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
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@17) ($IsAllocBox bx@@17 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@17))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@19 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#22| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))  (=> (and (or (not (= $o@@19 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@19) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2457|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#22| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))
)))
(assert (forall ((bx@@18 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@18 (TSet t@@5)))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.OwnedObject?) ($Is refType $o@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@20 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.OwnedObject?) ($IsBox bx@@19 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2438|
 :pattern ( ($IsBox bx@@19 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> ($Is refType $o@@21 Tclass._module.OwnedU32?) ($Is refType $o@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2444|
 :pattern ( ($Is refType $o@@21 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedU32?) ($IsBox bx@@20 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2442|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.Mutex?) ($Is refType $o@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2448|
 :pattern ( ($Is refType $o@@22 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Mutex?) ($IsBox bx@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2446|
 :pattern ( ($IsBox bx@@21 Tclass._module.Mutex?))
)))
(assert (forall (($o@@23 T@U) ) (!  (=> ($Is refType $o@@23 Tclass._module.MutexGuardU32?) ($Is refType $o@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2452|
 :pattern ( ($Is refType $o@@23 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.MutexGuardU32?) ($IsBox bx@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2450|
 :pattern ( ($IsBox bx@@22 Tclass._module.MutexGuardU32?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
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
(assert (forall (($o@@24 T@U) ) (! (= ($Is refType $o@@24 Tclass._module.Universe?)  (or (= $o@@24 null) (implements$_module.Universe (dtype $o@@24))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@24 Tclass._module.Universe?))
)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass._module.Object?)  (or (= $o@@25 null) (implements$_module.Object (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@25 Tclass._module.Object?))
)))
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass._module.OwnedObject?)  (or (= $o@@26 null) (implements$_module.OwnedObject (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@26 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@20 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@27) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@27) _module.Universe.content)) (TSet Tclass._module.Object) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@27) _module.Universe.content)))
)))
(assert (forall (($h@@21 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@28) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@28) _module.Universe.content)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Mutex.baseUserFieldsInvMonotonicity)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#22| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) ($IsAlloc refType this@@1 Tclass._module.Mutex $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.Mutex $Heap@@0) (=> (and (|_module.Mutex.baseUserFieldsInv#canCall| $Heap@@0 this@@1) (_module.Mutex.baseUserFieldsInv $Heap@@0 this@@1)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($IsAlloc refType this@@1 Tclass._module.Mutex $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.Mutex $Heap@@0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= (_module.Object.universe this@@1) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@1) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType (_module.Object.universe this@@1) Tclass._module.Universe $Heap@@0)) (=> ($IsAlloc refType (_module.Object.universe this@@1) Tclass._module.Universe $Heap@@0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= (_module.Object.universe this@@1) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@1) null)) (not true)) (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content))) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@1 Tclass._module.Mutex $Heap@@0))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Mutex) ($IsAlloc refType this@@1 Tclass._module.Mutex previous$Heap))) (= 3 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 8) 2))) anon0_correct))))
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
