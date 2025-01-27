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
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
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
(declare-fun _module.MutexGuardU32.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.MutexGuardU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.MutexGuardU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#140| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.MutexGuardU32? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32 Tagclass._module.OwnedU32? Tagclass._module.Mutex? class._module.MutexGuardU32? tytagFamily$Object tytagFamily$OwnedObject tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$OwnedU32 field$mutex field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.OwnedU32?)  (or (= $o null) (= (dtype $o) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2709|
 :pattern ( ($Is refType $o Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Mutex?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($Is refType $o@@0 Tclass._module.Mutex?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.MutexGuardU32?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3545|
 :pattern ( ($Is refType $o@@1 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedU32? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3848|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedU32? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Mutex? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3856|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Mutex? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.MutexGuardU32? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3860|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.MutexGuardU32? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2958|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@6))
 :qid |unknown.0:0|
 :skolemid |3544|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3834|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32 $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.MutexGuardU32? $h@@7))
)))
(assert (= (FDim _module.MutexGuardU32.data) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$data) _module.MutexGuardU32.data))
(assert ($IsGhostField _module.MutexGuardU32.data))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
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
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedU32? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedU32? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Mutex? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Mutex? $h@@11))
)))
(assert (forall (($o@@6 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.MutexGuardU32? $h@@12)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3546|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.MutexGuardU32? $h@@12))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.MutexGuardU32) ($IsAlloc refType this Tclass._module.MutexGuardU32 $Heap)))))) (= (_module.MutexGuardU32.objectUserFields $Heap this) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.MutexGuardU32.data))))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3562|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
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
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#140| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (= $o@@7 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3869|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#140| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@14 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3549|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.MutexGuardU32.data)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@5 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsBox bx@@7 Tclass._module.Mutex))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsBox bx@@8 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@9 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( ($IsBox bx@@11 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2708|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( ($IsBox bx@@13 Tclass._module.Mutex?))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@0 Tclass._module.MutexGuardU32 $Heap@@0)))))) ($Is SetType (_module.MutexGuardU32.objectUserFields $Heap@@0 this@@0) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3559|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@0 this@@0))
))))
(assert (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@16 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.MutexGuardU32.data)))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OwnedU32? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3850|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedU32? $heap@@0))
)))
(assert (forall (($o@@14 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.Mutex? $heap@@1) ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3858|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Mutex? $heap@@1))
)))
(assert (forall (($o@@15 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.MutexGuardU32? $heap@@2) ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3862|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.MutexGuardU32? $heap@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@1 this@@1) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (or (not (= this@@1 null)) (not true))) ($IsAlloc refType this@@1 Tclass._module.MutexGuardU32 $Heap@@1)))) ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@1 this@@1) (TSet Tclass._module.Object) $Heap@@1))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3560|
 :pattern ( ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@1 this@@1) (TSet Tclass._module.Object) $Heap@@1))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
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
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
)))
(assert (forall ((bx@@15 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@3)))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.OwnedObject?) ($Is refType $o@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( ($Is refType $o@@16 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.OwnedObject?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3839|
 :pattern ( ($IsBox bx@@16 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.OwnedU32?) ($Is refType $o@@17 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3849|
 :pattern ( ($Is refType $o@@17 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.OwnedU32?) ($IsBox bx@@17 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3847|
 :pattern ( ($IsBox bx@@17 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> ($Is refType $o@@18 Tclass._module.Mutex?) ($Is refType $o@@18 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3857|
 :pattern ( ($Is refType $o@@18 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Mutex?) ($IsBox bx@@18 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3855|
 :pattern ( ($IsBox bx@@18 Tclass._module.Mutex?))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> ($Is refType $o@@19 Tclass._module.MutexGuardU32?) ($Is refType $o@@19 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3861|
 :pattern ( ($Is refType $o@@19 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.MutexGuardU32?) ($IsBox bx@@19 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3859|
 :pattern ( ($IsBox bx@@19 Tclass._module.MutexGuardU32?))
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
(assert (forall (($o@@20 T@U) ) (! (= ($Is refType $o@@20 Tclass._module.Object?)  (or (= $o@@20 null) (implements$_module.Object (dtype $o@@20))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@20 Tclass._module.Object?))
)))
(assert (forall (($o@@21 T@U) ) (! (= ($Is refType $o@@21 Tclass._module.OwnedObject?)  (or (= $o@@21 null) (implements$_module.OwnedObject (dtype $o@@21))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($Is refType $o@@21 Tclass._module.OwnedObject?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.MutexGuardU32.objectUserFields)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_Else_correct  (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.MutexGuardU32.mutex))) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.MutexGuardU32.data)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) ($Is SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.data)) (TSet Tclass._module.Object))) (=> ($Is SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.data)) (TSet Tclass._module.Object)) (=> (and (= (_module.MutexGuardU32.objectUserFields $Heap@@2 this@@2) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.MutexGuardU32.data))) ($Is SetType (_module.MutexGuardU32.objectUserFields $Heap@@2 this@@2) (TSet Tclass._module.Object))) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@0|)))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#140| null $Heap@@2 alloc this@@2)) (and (=> (= (ControlFlow 0 6) 1) anon5_Then_correct) (=> (= (ControlFlow 0 6) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@2 Tclass._module.MutexGuardU32 $Heap@@2))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
