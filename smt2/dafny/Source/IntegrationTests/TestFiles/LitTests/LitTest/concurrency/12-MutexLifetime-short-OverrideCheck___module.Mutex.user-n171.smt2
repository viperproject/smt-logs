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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$Mutex () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Mutex.userInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#59| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Mutex.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Mutex.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32? Tagclass._module.OwnedU32 class._module.Mutex? Tagclass._module.Mutex? Tagclass._module.Mutex tytagFamily$Object tytagFamily$OwnedObject tytagFamily$OwnedU32 tytagFamily$Mutex field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.OwnedU32?)  (or (= $o null) (= (dtype $o) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2359|
 :pattern ( ($Is refType $o Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Mutex?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |2903|
 :pattern ( ($Is refType $o@@0 Tclass._module.Mutex?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h) ($IsAlloc refType |c#0| Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2609|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32 $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedU32? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Mutex? $h@@2))
)))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Mutex) ($IsAlloc refType this Tclass._module.Mutex $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |2955|
)) (= (_module.Mutex.localUserInv2 $prevHeap $h0 this) (_module.Mutex.localUserInv2 $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2956|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Mutex.localUserInv2 $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Mutex) ($IsAlloc refType this@@0 Tclass._module.Mutex $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |2962|
)) (= (_module.Mutex.userInv2 $prevHeap@@0 $h0@@0 this@@0) (_module.Mutex.userInv2 $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2963|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Mutex.userInv2 $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (forall (($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3))
)))
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2360|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedU32? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2904|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Mutex? $h@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@7 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#59| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@1))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@7) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3521|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#59| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@1))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv2#canCall| $prevHeap@@1 $Heap this@@1) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@1 $Heap)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Mutex) ($IsAlloc refType this@@1 Tclass._module.Mutex $prevHeap@@1)))))) (= (_module.Mutex.localUserInv2 $prevHeap@@1 $Heap this@@1)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Mutex.data))))))
 :qid |_12MutexLifetimeshortdfy.789:22|
 :skolemid |2959|
 :pattern ( (_module.Mutex.localUserInv2 $prevHeap@@1 $Heap this@@1) ($IsGoodHeap $Heap))
))))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2905|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Mutex.data)))
)))
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
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@5| Tclass._module.OwnedU32?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2608|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Mutex)  (and ($Is refType |c#0@@6| Tclass._module.Mutex?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Mutex?))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2906|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Mutex.data)))
)))
(assert (forall (($o@@10 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@10 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@11 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.OwnedU32? $heap@@0) ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3504|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.OwnedU32? $heap@@0))
)))
(assert (forall (($o@@12 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Mutex? $heap@@1) ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3512|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Mutex? $heap@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@2 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Mutex.userInv2#canCall| $prevHeap@@2 $Heap@@0 this@@2) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@2) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@2 $Heap@@0)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Mutex) ($IsAlloc refType this@@2 Tclass._module.Mutex $prevHeap@@2)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Mutex.localUserInv2#canCall| $prevHeap@@2 $Heap@@0 this@@2)) (= (_module.Mutex.userInv2 $prevHeap@@2 $Heap@@0 this@@2)  (and true (_module.Mutex.localUserInv2 $prevHeap@@2 $Heap@@0 this@@2)))))
 :qid |_12MutexLifetimeshortdfy.792:22|
 :skolemid |2966|
 :pattern ( (_module.Mutex.userInv2 $prevHeap@@2 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
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
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass._module.OwnedObject?) ($Is refType $o@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@13 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass._module.OwnedU32?) ($Is refType $o@@14 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($Is refType $o@@14 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.Mutex?) ($Is refType $o@@15 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3511|
 :pattern ( ($Is refType $o@@15 Tclass._module.Mutex?))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (forall (($o@@16 T@U) ) (! (= ($Is refType $o@@16 Tclass._module.Object?)  (or (= $o@@16 null) (implements$_module.Object (dtype $o@@16))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@16 Tclass._module.Object?))
)))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.OwnedObject?)  (or (= $o@@17 null) (implements$_module.OwnedObject (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@17 Tclass._module.OwnedObject?))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Mutex.userInv2#canCall| $prevHeap@@3 $Heap@@1 this@@3) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@3 $Heap@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Mutex) ($IsAlloc refType this@@3 Tclass._module.Mutex $prevHeap@@3)))))) (=> (_module.Mutex.userInv2 $prevHeap@@3 $Heap@@1 this@@3) (_module.Mutex.localUserInv2 $prevHeap@@3 $Heap@@1 this@@3)))
 :qid |_12MutexLifetimeshortdfy.792:22|
 :skolemid |2964|
 :pattern ( (_module.Mutex.userInv2 $prevHeap@@3 $Heap@@1 this@@3))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SetType () T@T)
(declare-fun Mutex_$_ReadsFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun current$Heap@@0 () T@U)
(declare-fun previous$Heap () T@U)
(assert (= (Ctor SetType) 7))
(set-info :boogie-vc-id OverrideCheck$$_module.Mutex.userInv2)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))) (=> (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (=> (= Mutex_$_ReadsFrame@0 (|lambda#59| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@18 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc))))
 :qid |_12MutexLifetimeshortdfy.792:22|
 :skolemid |2969|
))) (=> (forall (($o@@19 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@19) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@19) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@19) alloc))))
 :qid |_12MutexLifetimeshortdfy.792:22|
 :skolemid |2969|
)) (=> (=> (_module.Mutex.userInv2 $Heap@@2 current$Heap this@@4) (_module.Mutex.localUserInv2 $Heap@@2 current$Heap this@@4)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (_module.Mutex.userInv2 $Heap@@2 current$Heap this@@4) (=> (|_module.Mutex.localUserInv2#canCall| $Heap@@2 current$Heap this@@4) (or (_module.Mutex.localUserInv2 $Heap@@2 current$Heap this@@4) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (_module.Mutex.userInv2 $Heap@@2 current$Heap this@@4) (=> (|_module.Mutex.localUserInv2#canCall| $Heap@@2 current$Heap this@@4) (or (_module.Mutex.localUserInv2 $Heap@@2 current$Heap this@@4) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (_module.Mutex.userInv2 $Heap@@2 current$Heap this@@4) (=> (|_module.Mutex.localUserInv2#canCall| $Heap@@2 current$Heap this@@4) (or (_module.Mutex.localUserInv2 $Heap@@2 current$Heap this@@4) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.Mutex.data)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Mutex) ($IsAlloc refType this@@4 Tclass._module.Mutex current$Heap@@0))) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@2) (and ($HeapSucc previous$Heap current$Heap@@0) ($IsGoodHeap current$Heap@@0))) (= (ControlFlow 0 6) 2))) anon0_correct))))
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
