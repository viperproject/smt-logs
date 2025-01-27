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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun class._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun _module.MutexGuardU32.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#140| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TBool TagBool alloc allocName Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.MutexGuardU32? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32 Tagclass._module.OwnedU32? Tagclass._module.Mutex? class._module.MutexGuardU32? tytagFamily$Object tytagFamily$OwnedObject tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$OwnedU32 field$mutex field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |3565|
)) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap $h0 this) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3566|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap $h1 this))
)))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.OwnedU32?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2709|
 :pattern ( ($Is refType $o@@0 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Mutex?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($Is refType $o@@1 Tclass._module.Mutex?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.MutexGuardU32?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3545|
 :pattern ( ($Is refType $o@@2 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h) ($IsAlloc refType |c#0| Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2958|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3544|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@2))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@3) ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3834|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@3))
)))
(assert (= (FDim _module.MutexGuardU32.data) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$data) _module.MutexGuardU32.data))
(assert ($IsGhostField _module.MutexGuardU32.data))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@6))
)))
(assert (forall (($o@@6 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@7)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@7))
)))
(assert (forall (($o@@7 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.MutexGuardU32? $h@@8)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3546|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.MutexGuardU32? $h@@8))
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
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@8 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#140| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) (= $o@@8 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3869|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#140| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3549|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.MutexGuardU32.data)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@5| Tclass._module.OwnedObject?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@6| Tclass._module.OwnedU32?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2957|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Mutex)  (and ($Is refType |c#0@@7| Tclass._module.Mutex?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3543|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@8| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3833|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.MutexGuardU32?))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.MutexGuardU32.data)))
)))
(assert (forall (($o@@13 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@13 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@14 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.OwnedU32? $heap@@0) ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3850|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.OwnedU32? $heap@@0))
)))
(assert (forall (($o@@15 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.Mutex? $heap@@1) ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3858|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Mutex? $heap@@1))
)))
(assert (forall (($o@@16 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass._module.MutexGuardU32? $heap@@2) ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3862|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.MutexGuardU32? $heap@@2))
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
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@0 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@0 Tclass._module.MutexGuardU32 $prevHeap@@0)))))) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.MutexGuardU32.mutex))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.MutexGuardU32.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.MutexGuardU32.data))))))
 :qid |_12MutexLifetimelongdfy.853:22|
 :skolemid |3569|
 :pattern ( (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.OwnedObject?) ($Is refType $o@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( ($Is refType $o@@17 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> ($Is refType $o@@18 Tclass._module.OwnedU32?) ($Is refType $o@@18 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3849|
 :pattern ( ($Is refType $o@@18 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> ($Is refType $o@@19 Tclass._module.Mutex?) ($Is refType $o@@19 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3857|
 :pattern ( ($Is refType $o@@19 Tclass._module.Mutex?))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.MutexGuardU32?) ($Is refType $o@@20 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3861|
 :pattern ( ($Is refType $o@@20 Tclass._module.MutexGuardU32?))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.MutexGuardU32?) Tagclass._module.MutexGuardU32?))
(assert (= (TagFamily Tclass._module.MutexGuardU32?) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (forall (($o@@21 T@U) ) (! (= ($Is refType $o@@21 Tclass._module.Object?)  (or (= $o@@21 null) (implements$_module.Object (dtype $o@@21))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@21 Tclass._module.Object?))
)))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass._module.OwnedObject?)  (or (= $o@@22 null) (implements$_module.OwnedObject (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($Is refType $o@@22 Tclass._module.OwnedObject?))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.MutexGuardU32.unchangedNonvolatileUserFields)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon5_correct  (=> (and (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $Heap@@0 current$Heap this@@1)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.MutexGuardU32.mutex))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.MutexGuardU32.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.MutexGuardU32.data))))) ($Is boolType (bool_2_U (_module.MutexGuardU32.unchangedNonvolatileUserFields $Heap@@0 current$Heap this@@1)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@1|))))))
(let ((anon8_Else_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.MutexGuardU32.mutex)))) (not true)) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 7) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.MutexGuardU32.mutex))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 $Heap@@0) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.MutexGuardU32.data))) (=> (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 5) 3)) anon5_correct)))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 $Heap@@0) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.MutexGuardU32.mutex))) (and (=> (= (ControlFlow 0 8) 5) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#140| null current$Heap alloc this@@1)) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 8) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 previous$Heap))) (= 0 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 11) 10))) anon0_correct))))
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
