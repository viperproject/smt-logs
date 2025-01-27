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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun field$content () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject Tagclass._module.Object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object field$content field$owner)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (= (_module.Universe.globalBaseInv $Heap this) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this) (or (not (= |o#0| this)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_07CounterThreadOwnershipdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@0) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@0))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@2))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.Universe? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o Tclass._module.Universe? $h@@3))
)))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Object? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.OwnedObject? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
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
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@2) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3542|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.OwnedObject) ($IsAlloc refType this@@0 Tclass._module.OwnedObject $Heap@@0)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@0 this@@0) (=> (_module.OwnedObject.localInv $Heap@@0 this@@0) (|_module.OwnedObject.userInv#canCall| $Heap@@0 this@@0))) (= (_module.OwnedObject.inv $Heap@@0 this@@0)  (and (_module.OwnedObject.localInv $Heap@@0 this@@0) (_module.OwnedObject.userInv $Heap@@0 this@@0)))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1313|
 :pattern ( (_module.OwnedObject.inv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@6 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@3) Tclass._module.Universe $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |966|
 :pattern ( (_module.Object.universe $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@4) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (_module.Object.universe $o@@4))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@1 Tclass._module.Universe))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@2 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@3 Tclass._module.Object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@6 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@1 this@@1) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Object) ($IsAlloc refType this@@1 Tclass._module.Object $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@1)) _module.Universe.content)) ($Box refType this@@1)) (|_module.Universe.globalBaseInv#canCall| $Heap@@1 (_module.Object.universe this@@1))) (= (_module.Object.baseInv $Heap@@1 this@@1)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@1)) _module.Universe.content)) ($Box refType this@@1)) (_module.Universe.globalBaseInv $Heap@@1 (_module.Object.universe this@@1))))))
 :qid |_07CounterThreadOwnershipdfy.243:19|
 :skolemid |971|
 :pattern ( (_module.Object.baseInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@5 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $heap))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@2 this@@2) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedObject) ($IsAlloc refType this@@2 Tclass._module.OwnedObject $Heap@@2)))))) (=> (_module.OwnedObject.userInv $Heap@@2 this@@2) (_module.OwnedObject.localUserInv $Heap@@2 this@@2)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1399|
 :pattern ( (_module.OwnedObject.userInv $Heap@@2 this@@2))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@3 this@@3) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.OwnedObject) ($IsAlloc refType this@@3 Tclass._module.OwnedObject $Heap@@3)))))) (=> (_module.OwnedObject.inv $Heap@@3 this@@3) (_module.OwnedObject.localInv $Heap@@3 this@@3)))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1311|
 :pattern ( (_module.OwnedObject.inv $Heap@@3 this@@3))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.OwnedObject.owner)) Tclass._module.Object $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@4 this@@4) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.OwnedObject) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@4)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@4 this@@4) (=> (_module.Object.baseInv $Heap@@4 this@@4) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@4)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@4 this@@4) (=> (_module.OwnedObject.baseUserInv $Heap@@4 this@@4) (|_module.OwnedObject.localUserInv#canCall| $Heap@@4 this@@4)))))) (= (_module.OwnedObject.localInv $Heap@@4 this@@4)  (and (and (and (_module.Object.baseInv $Heap@@4 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@4)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@4 this@@4)) (_module.OwnedObject.localUserInv $Heap@@4 this@@4)))))
 :qid |_07CounterThreadOwnershipdfy.327:19|
 :skolemid |1303|
 :pattern ( (_module.OwnedObject.localInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((bx@@8 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@3)))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.OwnedObject?) ($Is refType $o@@7 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@7 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject?) ($IsBox bx@@9 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Universe?)  (or (= $o@@9 null) (implements$_module.Universe (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@9 Tclass._module.Universe?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.Object?)  (or (= $o@@10 null) (implements$_module.Object (dtype $o@@10))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@10 Tclass._module.Object?))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.OwnedObject?)  (or (= $o@@11 null) (implements$_module.OwnedObject (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@11 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)) (TSet Tclass._module.Object) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall (($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) _module.Universe.content)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun OwnedObject_$_ReadsFrame@0 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun this@@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$_module.OwnedObject.inv)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))) (=> (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (=> (= OwnedObject_$_ReadsFrame@0 (|lambda#3| null $Heap@@5 alloc $Heap@@5 alloc)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@14) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@14) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@14) alloc))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1319|
))) (=> (forall (($o@@15 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@15) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@15) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@15) alloc))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1319|
)) (=> (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (_module.OwnedObject.localInv $Heap@@5 this@@5)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (=> (|_module.Object.baseInv#canCall| $Heap@@5 this@@5) (or (_module.Object.baseInv $Heap@@5 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType this@@5)))))))) (=> (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (=> (|_module.Object.baseInv#canCall| $Heap@@5 this@@5) (or (_module.Object.baseInv $Heap@@5 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType this@@5))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (=> (|_module.Object.baseInv#canCall| $Heap@@5 this@@5) (or (_module.Object.baseInv $Heap@@5 this@@5) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@5 (_module.Object.universe this@@5)) (or (_module.Universe.globalBaseInv $Heap@@5 (_module.Object.universe this@@5)) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#1|))) (and (= (_module.Object.universe |o#1|) (_module.Object.universe this@@5)) (or (not (= |o#1| (_module.Object.universe this@@5))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |1320|
 :pattern ( (_module.Object.universe |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#1|)))
)))))))))) (=> (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (=> (|_module.Object.baseInv#canCall| $Heap@@5 this@@5) (or (_module.Object.baseInv $Heap@@5 this@@5) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@5 (_module.Object.universe this@@5)) (or (_module.Universe.globalBaseInv $Heap@@5 (_module.Object.universe this@@5)) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#1@@0|))) (and (= (_module.Object.universe |o#1@@0|) (_module.Object.universe this@@5)) (or (not (= |o#1@@0| (_module.Object.universe this@@5))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |1320|
 :pattern ( (_module.Object.universe |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) _module.OwnedObject.owner)))))) (=> (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@5)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) _module.OwnedObject.owner))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (_module.OwnedObject.baseUserInv $Heap@@5 this@@5))))) (=> (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (_module.OwnedObject.baseUserInv $Heap@@5 this@@5)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (_module.OwnedObject.inv $Heap@@5 this@@5) (=> (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@5) (or (_module.OwnedObject.localInv $Heap@@5 this@@5) (_module.OwnedObject.localUserInv $Heap@@5 this@@5)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (=> (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.OwnedObject) ($IsAlloc refType this@@5 Tclass._module.OwnedObject $Heap@@5))) (and (= 7 $FunctionContextHeight) (= (ControlFlow 0 9) 2))) anon0_correct))))
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
