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
(declare-fun Tagclass._module.NonOwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.NonOwnedObject? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$NonOwnedObject () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$closed () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.multipleLegalTransitions (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |_module.Universe.multipleLegalTransitions#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun _module.OwnedObject.closed () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun implements$_module.NonOwnedObject (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.NonOwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.NonOwnedObject () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.NonOwnedObject Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.Object? Tagclass._module.NonOwnedObject? class._module.OwnedObject? Tagclass._module.OwnedObject? Tagclass._module.Thread? tytagFamily$Universe tytagFamily$NonOwnedObject tytagFamily$OwnedObject tytagFamily$Object tytagFamily$Thread field$content field$owner field$closed)
)
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $h0)))) (or (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap $h0 this |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |531|
)) (= (_module.Universe.multipleLegalTransitions $prevHeap $h0 this |running#0|) (_module.Universe.multipleLegalTransitions $prevHeap $h1 this |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |532|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.multipleLegalTransitions $prevHeap $h1 this |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap)))))) (= (_module.Universe.globalBaseInv $Heap this@@0)  (and (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this@@0) (or (not (= |o#0| this@@0)) (not true))))
 :qid |_06ThreadOwnershipdfy.16:16|
 :skolemid |496|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))
)) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.owner)) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.closed)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))))
 :qid |_06ThreadOwnershipdfy.17:16|
 :skolemid |498|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.closed)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#1|)))
)))))
 :qid |_06ThreadOwnershipdfy.15:19|
 :skolemid |500|
 :pattern ( (_module.Universe.globalBaseInv $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.NonOwnedObject Tclass._module.Thread?))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@1) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@1) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@0|)))
 :qid |_06ThreadOwnershipdfy.23:16|
 :skolemid |512|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@1)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@1) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@0 |o#0@@1|))
 :qid |_06ThreadOwnershipdfy.23:16|
 :skolemid |511|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_06ThreadOwnershipdfy.21:19|
 :skolemid |513|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Thread?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType $o@@0 Tclass._module.Thread?))
)))
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.OwnedObject?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.closed)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |870|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.closed)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.NonOwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2061|
 :pattern ( ($IsAllocBox bx Tclass._module.NonOwnedObject? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Thread? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.NonOwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Thread? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Thread $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.Thread? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Thread $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Thread? $h@@7))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.closed) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$closed) _module.OwnedObject.closed))
(assert ($IsGhostField _module.OwnedObject.closed))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@1 this@@2) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@1 this@@2) (_module.OwnedObject.localInv $Heap@@1 this@@2)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |877|
 :pattern ( (_module.Object.localInv $Heap@@1 this@@2) ($Is refType this@@2 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.localInv $Heap@@1 this@@2) (_module.OwnedObject.localInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@2 this@@3) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@2 this@@3) (_module.Thread.localInv $Heap@@2 this@@3)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |968|
 :pattern ( (_module.Object.localInv $Heap@@2 this@@3) ($Is refType this@@3 Tclass._module.Thread) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.localInv $Heap@@2 this@@3) (_module.Thread.localInv $Heap@@2 this@@3) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@3 this@@4) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@3 this@@4) (_module.OwnedObject.inv $Heap@@3 this@@4)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |887|
 :pattern ( (_module.Object.inv $Heap@@3 this@@4) ($Is refType this@@4 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.inv $Heap@@3 this@@4) (_module.OwnedObject.inv $Heap@@3 this@@4) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@4 this@@5) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@4 this@@5) (_module.Thread.inv $Heap@@4 this@@5)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |976|
 :pattern ( (_module.Object.inv $Heap@@4 this@@5) ($Is refType this@@5 Tclass._module.Thread) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.inv $Heap@@4 this@@5) (_module.Thread.inv $Heap@@4 this@@5) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.NonOwnedObject? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.NonOwnedObject? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@6 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@12)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@12))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@7 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@0))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@7) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2086|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@0))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@8) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (_module.Object.universe $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@9) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Object.universe $o@@9))
))))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.NonOwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.NonOwnedObject)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($IsBox bx@@5 Tclass._module.NonOwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@9 Tclass._module.Thread))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.NonOwnedObject?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.NonOwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |854|
 :pattern ( ($IsBox bx@@11 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsBox bx@@13 Tclass._module.Thread?))
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
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.NonOwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.NonOwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.NonOwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.NonOwnedObject?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Thread)  (and ($Is refType |c#0@@8| Tclass._module.Thread?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1198|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread?))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@5 this@@6) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.OwnedObject) ($IsAlloc refType this@@6 Tclass._module.OwnedObject $Heap@@5)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@5 this@@6) (=> (_module.Object.baseInv $Heap@@5 this@@6) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.owner))) (_module.Object.universe this@@6)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@6)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@5 this@@6) (=> (_module.OwnedObject.baseUserInv $Heap@@5 this@@6) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.closed))) (|_module.OwnedObject.localUserInv#canCall| $Heap@@5 this@@6)))))))) (= (_module.OwnedObject.localInv $Heap@@5 this@@6)  (and (and (and (and (_module.Object.baseInv $Heap@@5 this@@6) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.owner))) (_module.Object.universe this@@6))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Object.universe this@@6)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@5 this@@6)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@6) _module.OwnedObject.closed))) (_module.OwnedObject.localUserInv $Heap@@5 this@@6))))))
 :qid |_06ThreadOwnershipdfy.131:19|
 :skolemid |876|
 :pattern ( (_module.OwnedObject.localInv $Heap@@5 this@@6) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@6 this@@7) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Object) ($IsAlloc refType this@@7 Tclass._module.Object $Heap@@6)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@7)) _module.Universe.content)) ($Box refType this@@7)) (|_module.Universe.globalBaseInv#canCall| $Heap@@6 (_module.Object.universe this@@7))) (= (_module.Object.baseInv $Heap@@6 this@@7)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@7)) _module.Universe.content)) ($Box refType this@@7)) (_module.Universe.globalBaseInv $Heap@@6 (_module.Object.universe this@@7))))))
 :qid |_06ThreadOwnershipdfy.80:19|
 :skolemid |738|
 :pattern ( (_module.Object.baseInv $Heap@@6 this@@7) ($IsGoodHeap $Heap@@6))
))))
(assert (forall (($o@@10 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@10 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@11 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@11 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@12 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Thread? $heap@@1) ($IsAlloc refType $o@@12 Tclass._module.NonOwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Thread? $heap@@1))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@7 T@U) (this@@8 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@0 $Heap@@7 this@@8 |running#0@@0|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@0 $Heap@@7)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $prevHeap@@0)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.globalInv#canCall| $prevHeap@@0 this@@8) (=> (_module.Universe.globalInv $prevHeap@@0 this@@8) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@7 this@@8) (=> (_module.Universe.globalBaseInv $Heap@@7 this@@8) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content))) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#0@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#0@@2|)))) (not ($IsAllocBox ($Box refType |o#0@@2|) Tclass._module.Object $prevHeap@@0)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |549|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (and (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@0|)) (=> (not (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (= $o@@13 |o#1@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@13) $f@@1))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@13) $f@@1))
))) (|_module.Object.inv#canCall| $Heap@@7 |o#1@@0|))))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |543|
 :pattern ( (_module.Object.inv $Heap@@7 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@0|)))
)) (=> (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@1|))) (or (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 |o#1@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@14) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@14) $f@@2))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |547|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@14) $f@@2))
)) (_module.Object.inv $Heap@@7 |o#1@@1|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |548|
 :pattern ( (_module.Object.inv $Heap@@7 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (forall ((|o#2| T@U) ) (!  (=> ($Is refType |o#2| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#2|)))) (|_module.Object.inv#canCall| $Heap@@7 |o#2|)))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |544|
 :pattern ( (_module.Object.inv $Heap@@7 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#2|)))
)))))))))) (= (_module.Universe.multipleLegalTransitions $prevHeap@@0 $Heap@@7 this@@8 |running#0@@0|)  (and (and (and (and (and (and (and (_module.Universe.globalInv $prevHeap@@0 this@@8) (_module.Universe.globalBaseInv $Heap@@7 this@@8)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#0@@3|)))) (not ($IsAllocBox ($Box refType |o#0@@3|) Tclass._module.Object $prevHeap@@0)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |535|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@2|))) (or (forall (($o@@15 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |o#1@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@15) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@15) $f@@3))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@15) $f@@3))
)) (_module.Object.inv $Heap@@7 |o#1@@2|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@@7 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#1@@2|)))
))) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#2@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#2@@0|))))) (_module.Object.inv $Heap@@7 |o#2@@0|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |538|
 :pattern ( (_module.Object.inv $Heap@@7 |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@8) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) (forall ((|t#0| T@U) ) (!  (=> (and ($Is refType |t#0| Tclass._module.Thread) (|Set#IsMember| |running#0@@0| ($Box refType |t#0|))) (and (= (_module.Object.universe |t#0|) this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |t#0|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |539|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |t#0|)))
 :pattern ( (_module.Object.universe |t#0|))
 :pattern ( (|Set#IsMember| |running#0@@0| ($Box refType |t#0|)))
))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner))) (forall (($o@@16 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@16 null)) (not true)) (=> (= $o@@16 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@16) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@16) $f@@4))))
 :qid |_06ThreadOwnershipdfy.43:119|
 :skolemid |540|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@16) $f@@4))
))))
 :qid |_06ThreadOwnershipdfy.43:16|
 :skolemid |541|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@8) _module.Universe.content)) ($Box refType |o#3|)))
))))))
 :qid |_06ThreadOwnershipdfy.32:22|
 :skolemid |550|
 :pattern ( (_module.Universe.multipleLegalTransitions $prevHeap@@0 $Heap@@7 this@@8 |running#0@@0|) ($IsGoodHeap $Heap@@7))
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
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 TBool) (and (= ($Box boolType ($Unbox boolType bx@@14)) bx@@14) ($Is boolType ($Unbox boolType bx@@14) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@14 TBool))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@8 this@@9) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.OwnedObject) ($IsAlloc refType this@@9 Tclass._module.OwnedObject $Heap@@8)))))) (=> (_module.OwnedObject.userInv $Heap@@8 this@@9) (_module.OwnedObject.localUserInv $Heap@@8 this@@9)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |952|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@9))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@9 this@@10) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedObject) ($IsAlloc refType this@@10 Tclass._module.OwnedObject $Heap@@9)))))) (=> (_module.OwnedObject.inv $Heap@@9 this@@10) (_module.OwnedObject.localInv $Heap@@9 this@@10)))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |884|
 :pattern ( (_module.OwnedObject.inv $Heap@@9 this@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@10 this@@11) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Thread) ($IsAlloc refType this@@11 Tclass._module.Thread $Heap@@10)))))) (=> (_module.Thread.inv $Heap@@10 this@@11) (_module.Thread.localInv $Heap@@10 this@@11)))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |973|
 :pattern ( (_module.Thread.inv $Heap@@10 this@@11))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@11 this@@12) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $Heap@@11)))))) (=> (_module.Object.inv $Heap@@11 this@@12) (_module.Object.localInv $Heap@@11 this@@12)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |800|
 :pattern ( (_module.Object.inv $Heap@@11 this@@12))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@15) ($IsAllocBox bx@@15 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@15))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@12 this@@13) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.OwnedObject) ($IsAlloc refType this@@13 Tclass._module.OwnedObject $Heap@@12)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@12 this@@13) (=> (_module.OwnedObject.localInv $Heap@@12 this@@13) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@13) _module.OwnedObject.closed))) (|_module.OwnedObject.userInv#canCall| $Heap@@12 this@@13)))) (= (_module.OwnedObject.inv $Heap@@12 this@@13)  (and (_module.OwnedObject.localInv $Heap@@12 this@@13) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@13) _module.OwnedObject.closed))) (_module.OwnedObject.userInv $Heap@@12 this@@13))))))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |886|
 :pattern ( (_module.OwnedObject.inv $Heap@@12 this@@13) ($IsGoodHeap $Heap@@12))
))))
(assert (forall (($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) _module.OwnedObject.closed)) TBool $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |871|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) _module.OwnedObject.closed)))
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
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@18 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (or (= $o@@18 this@@14) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@14) _module.Universe.content)) ($Box refType $o@@18)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@18) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@18) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.Universe.globalBaseInv $h0@@0 this@@14) (_module.Universe.globalBaseInv $h1@@0 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.globalBaseInv $h1@@0 this@@14))
)))
(assert (forall (($h@@15 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) _module.OwnedObject.owner)) Tclass._module.Object $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |869|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Universe) ($IsAlloc refType this@@15 Tclass._module.Universe $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@20 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@20) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@20) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |507|
)) (= (_module.Universe.globalInv $h0@@1 this@@15) (_module.Universe.globalInv $h1@@1 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.globalInv $h1@@1 this@@15))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@21 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@21) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@21) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |734|
)) (= (_module.Object.baseInv $h0@@2 this@@16) (_module.Object.baseInv $h1@@2 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |735|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.baseInv $h1@@2 this@@16))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@22 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@22) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@22) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |790|
)) (= (_module.Object.localInv $h0@@3 this@@17) (_module.Object.localInv $h1@@3 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |791|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.localInv $h1@@3 this@@17))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@23 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@23) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@23) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |798|
)) (= (_module.Object.inv $h0@@4 this@@18) (_module.Object.inv $h1@@4 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.inv $h1@@4 this@@18))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@24 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@24) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@24) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |872|
)) (= (_module.OwnedObject.localInv $h0@@5 this@@19) (_module.OwnedObject.localInv $h1@@5 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |873|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.OwnedObject.localInv $h1@@5 this@@19))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@25 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@25) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@25) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |882|
)) (= (_module.OwnedObject.inv $h0@@6 this@@20) (_module.OwnedObject.inv $h1@@6 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.inv $h1@@6 this@@20))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@26 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@26) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@26) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |938|
)) (= (_module.OwnedObject.baseUserInv $h0@@7 this@@21) (_module.OwnedObject.baseUserInv $h1@@7 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |939|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.baseUserInv $h1@@7 this@@21))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@27 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@27) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@27) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |942|
)) (= (_module.OwnedObject.localUserInv $h0@@8 this@@22) (_module.OwnedObject.localUserInv $h1@@8 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |943|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.OwnedObject.localUserInv $h1@@8 this@@22))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.OwnedObject) ($IsAlloc refType this@@23 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@28 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@28) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@28) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |950|
)) (= (_module.OwnedObject.userInv $h0@@9 this@@23) (_module.OwnedObject.userInv $h1@@9 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |951|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.userInv $h1@@9 this@@23))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Thread) ($IsAlloc refType this@@24 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@29 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@29) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@29) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |963|
)) (= (_module.Thread.localInv $h0@@10 this@@24) (_module.Thread.localInv $h1@@10 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |964|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.localInv $h1@@10 this@@24))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Thread) ($IsAlloc refType this@@25 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@30 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@30) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@30) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |971|
)) (= (_module.Thread.inv $h0@@11 this@@25) (_module.Thread.inv $h1@@11 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |972|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.inv $h1@@11 this@@25))
)))
(assert (forall ((bx@@16 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@16 (TSet t@@5)))
)))
(assert (forall (($o@@31 T@U) ) (!  (=> ($Is refType $o@@31 Tclass._module.NonOwnedObject?) ($Is refType $o@@31 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( ($Is refType $o@@31 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.NonOwnedObject?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@17 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass._module.OwnedObject?) ($Is refType $o@@32 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@32 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass._module.Thread?) ($Is refType $o@@33 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( ($Is refType $o@@33 Tclass._module.Thread?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Thread?) ($IsBox bx@@19 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($IsBox bx@@19 Tclass._module.Thread?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.NonOwnedObject) Tagclass._module.NonOwnedObject))
(assert (= (TagFamily Tclass._module.NonOwnedObject) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.NonOwnedObject?) Tagclass._module.NonOwnedObject?))
(assert (= (TagFamily Tclass._module.NonOwnedObject?) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (forall (($h@@16 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@34 null)) (not true)) ($Is refType $o@@34 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@34) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |868|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@34) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@35 T@U) ) (! (= ($Is refType $o@@35 Tclass._module.Universe?)  (or (= $o@@35 null) (implements$_module.Universe (dtype $o@@35))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@35 Tclass._module.Universe?))
)))
(assert (forall (($o@@36 T@U) ) (! (= ($Is refType $o@@36 Tclass._module.Object?)  (or (= $o@@36 null) (implements$_module.Object (dtype $o@@36))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o@@36 Tclass._module.Object?))
)))
(assert (forall (($o@@37 T@U) ) (! (= ($Is refType $o@@37 Tclass._module.NonOwnedObject?)  (or (= $o@@37 null) (implements$_module.NonOwnedObject (dtype $o@@37))))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( ($Is refType $o@@37 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@38 T@U) ) (! (= ($Is refType $o@@38 Tclass._module.OwnedObject?)  (or (= $o@@38 null) (implements$_module.OwnedObject (dtype $o@@38))))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( ($Is refType $o@@38 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@17 T@U) ($o@@39 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@39 null)) (not true)) ($Is refType $o@@39 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@39) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@39) _module.Universe.content)) (TSet Tclass._module.Object) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@39) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@13 this@@26) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Thread) ($IsAlloc refType this@@26 Tclass._module.Thread $Heap@@13)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@13 this@@26)) (= (_module.Thread.localInv $Heap@@13 this@@26)  (and true (_module.Object.baseInv $Heap@@13 this@@26)))))
 :qid |_06ThreadOwnershipdfy.207:19|
 :skolemid |967|
 :pattern ( (_module.Thread.localInv $Heap@@13 this@@26) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@14 this@@27) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Thread) ($IsAlloc refType this@@27 Tclass._module.Thread $Heap@@14)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@14 this@@27)) (= (_module.Thread.inv $Heap@@14 this@@27)  (and true (_module.Thread.localInv $Heap@@14 this@@27)))))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |975|
 :pattern ( (_module.Thread.inv $Heap@@14 this@@27) ($IsGoodHeap $Heap@@14))
))))
(assert (forall (($h@@18 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@40 null)) (not true)) ($Is refType $o@@40 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@40) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@40) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@15 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@28 () T@U)
(declare-fun |running#0@@1| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@3| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#4@2| () Bool)
(declare-fun |b$reqreads#5@2| () Bool)
(declare-fun |b$reqreads#6@2| () Bool)
(declare-fun |b$reqreads#7@2| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |o#10@0| () T@U)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |newtype$check#0@0| () T@U)
(declare-fun |newtype$check#1@0| () T@U)
(declare-fun |t#1@0| () T@U)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |o#7@0| () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |o#5@0| () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |o#4@0| () T@U)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Universe.multipleLegalTransitions)
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
 (=> (= (ControlFlow 0 0) 80) (let ((anon41_correct  (=> (= (_module.Universe.multipleLegalTransitions $Heap@@15 current$Heap this@@28 |running#0@@1|)  (and (and (and (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6|)))) (not ($IsAllocBox ($Box refType |o#6|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |577|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6|)))
))) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8|))) (or (forall (($o@@41 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@41 null)) (not true)) (=> (= $o@@41 |o#8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@41) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@41) $f@@17))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@41) $f@@17))
)) (_module.Object.inv current$Heap |o#8|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |579|
 :pattern ( (_module.Object.inv current$Heap |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8|)))
))) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9|))))) (_module.Object.inv current$Heap |o#9|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |580|
 :pattern ( (_module.Object.inv current$Heap |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9|)))
))) (forall ((|t#2| T@U) ) (!  (=> (and ($Is refType |t#2| Tclass._module.Thread) (|Set#IsMember| |running#0@@1| ($Box refType |t#2|))) (and (= (_module.Object.universe |t#2|) this@@28) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |581|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2|)))
 :pattern ( (_module.Object.universe |t#2|))
 :pattern ( (|Set#IsMember| |running#0@@1| ($Box refType |t#2|)))
))) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#11|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#11|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (not (|Set#IsMember| |running#0@@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#11|) _module.OwnedObject.owner))) (forall (($o@@42 T@U) ($f@@18 T@U) ) (!  (=> (or (not (= $o@@42 null)) (not true)) (=> (= $o@@42 |o#11|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@42) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@42) $f@@18))))
 :qid |_06ThreadOwnershipdfy.43:119|
 :skolemid |582|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@42) $f@@18))
))))
 :qid |_06ThreadOwnershipdfy.43:16|
 :skolemid |583|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#11|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#11|)))
)))) (=> (and (and (|_module.Universe.globalInv#canCall| $Heap@@15 this@@28) (=> (_module.Universe.globalInv $Heap@@15 this@@28) (and (|_module.Universe.globalBaseInv#canCall| current$Heap this@@28) (=> (_module.Universe.globalBaseInv current$Heap this@@28) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content))) (=> (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@0|)))) (not ($IsAllocBox ($Box refType |o#6@@0|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |591|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@0|)))
)) (and (forall ((|o#8@@0| T@U) ) (!  (=> ($Is refType |o#8@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@0|)) (=> (not (forall (($o@@43 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@43 null)) (not true)) (=> (= $o@@43 |o#8@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@43) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@43) $f@@19))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |584|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@43) $f@@19))
))) (|_module.Object.inv#canCall| current$Heap |o#8@@0|))))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |585|
 :pattern ( (_module.Object.inv current$Heap |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@0|)))
)) (=> (forall ((|o#8@@1| T@U) ) (!  (=> (and ($Is refType |o#8@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@1|))) (or (forall (($o@@44 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@44 null)) (not true)) (=> (= $o@@44 |o#8@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@44) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@44) $f@@20))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |589|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@44) $f@@20))
)) (_module.Object.inv current$Heap |o#8@@1|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |590|
 :pattern ( (_module.Object.inv current$Heap |o#8@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@1|)))
)) (forall ((|o#9@@0| T@U) ) (!  (=> ($Is refType |o#9@@0| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@0|)))) (|_module.Object.inv#canCall| current$Heap |o#9@@0|)))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |586|
 :pattern ( (_module.Object.inv current$Heap |o#9@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@0|)))
)))))))))) ($Is boolType (bool_2_U (_module.Universe.multipleLegalTransitions $Heap@@15 current$Heap this@@28 |running#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 10)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#2@3|) (=> |b$reqreads#2@3| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#3@2|) (=> |b$reqreads#3@2| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#4@2|) (=> |b$reqreads#4@2| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#5@2|) (=> |b$reqreads#5@2| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#6@2|) (=> |b$reqreads#6@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#7@2|)))))))))))))))))))
(let ((anon40_correct  (=> (and (= |b$reqreads#7@2| |b$reqreads#7@1|) (= (ControlFlow 0 12) 3)) anon41_correct)))
(let ((anon66_Else_correct  (=> (|Set#IsMember| |running#0@@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner)) (=> (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 17) 12)) anon40_correct))))
(let ((anon66_Then_correct  (=> (not (|Set#IsMember| |running#0@@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 15) (- 0 16)) ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15)) (=> ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15) (=> (= |b$reqreads#7@0| (forall (($o@@45 T@U) ($f@@21 T@U) ) (!  (=> (and (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@45) alloc)))) (= $o@@45 |o#10@0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@45 $f@@21)))
 :qid |_06ThreadOwnershipdfy.43:129|
 :skolemid |564|
))) (=> (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= (ControlFlow 0 15) 12)) anon40_correct)))))))
(let ((anon65_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#10@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner)) Tclass._module.Thread)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (not (= |o#10@0| null)) (not true))) (=> (or (not (= |o#10@0| null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 20)) ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15)) (=> ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15) (=> (= |newtype$check#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($Is refType |newtype$check#0@0| Tclass._module.Thread)) (=> ($Is refType |newtype$check#0@0| Tclass._module.Thread) (=> (= |newtype$check#1@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 18) 15) anon66_Then_correct) (=> (= (ControlFlow 0 18) 17) anon66_Else_correct)))))))))))))
(let ((anon65_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#10@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |o#10@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 14) 12)) anon40_correct))))
(let ((anon64_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#10@0|))) (and (=> (= (ControlFlow 0 25) 18) anon65_Then_correct) (=> (= (ControlFlow 0 25) 14) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#10@0|)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= |o#10@0| null)) (not true))) (=> (or (not (= |o#10@0| null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 23)) ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15)) (=> ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject $Heap@@15) (and (=> (= (ControlFlow 0 22) 18) anon65_Then_correct) (=> (= (ControlFlow 0 22) 14) anon65_Else_correct)))))))))
(let ((anon63_Then_correct  (=> (and ($Is refType |o#10@0| Tclass._module.OwnedObject) ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject current$Heap)) (and (=> (= (ControlFlow 0 26) (- 0 27)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (and (=> (= (ControlFlow 0 26) 22) anon64_Then_correct) (=> (= (ControlFlow 0 26) 25) anon64_Else_correct)))))))
(let ((anon63_Else_correct  (=> (not (and ($Is refType |o#10@0| Tclass._module.OwnedObject) ($IsAlloc refType |o#10@0| Tclass._module.OwnedObject current$Heap))) (=> (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 13) 12)) anon40_correct))))
(let ((anon62_Then_correct  (=> (and (and (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@1| T@U) ) (!  (=> (and ($Is refType |o#6@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@1|)))) (not ($IsAllocBox ($Box refType |o#6@@1|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |565|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@1|)))
))) (forall ((|o#8@@2| T@U) ) (!  (=> (and ($Is refType |o#8@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@2|))) (or (forall (($o@@46 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#8@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@46) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@46) $f@@22))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |566|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@46) $f@@22))
)) (_module.Object.inv current$Heap |o#8@@2|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |567|
 :pattern ( (_module.Object.inv current$Heap |o#8@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@2|)))
))) (forall ((|o#9@@1| T@U) ) (!  (=> (and ($Is refType |o#9@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@1|))))) (_module.Object.inv current$Heap |o#9@@1|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |568|
 :pattern ( (_module.Object.inv current$Heap |o#9@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@1|)))
))) (forall ((|t#2@@0| T@U) ) (!  (=> (and ($Is refType |t#2@@0| Tclass._module.Thread) (|Set#IsMember| |running#0@@1| ($Box refType |t#2@@0|))) (and (= (_module.Object.universe |t#2@@0|) this@@28) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2@@0|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |569|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2@@0|)))
 :pattern ( (_module.Object.universe |t#2@@0|))
 :pattern ( (|Set#IsMember| |running#0@@1| ($Box refType |t#2@@0|)))
))) (and (=> (= (ControlFlow 0 28) 26) anon63_Then_correct) (=> (= (ControlFlow 0 28) 13) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (and (and (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@2| T@U) ) (!  (=> (and ($Is refType |o#6@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@2|)))) (not ($IsAllocBox ($Box refType |o#6@@2|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |565|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@2|)))
))) (forall ((|o#8@@3| T@U) ) (!  (=> (and ($Is refType |o#8@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@3|))) (or (forall (($o@@47 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@47 null)) (not true)) (=> (= $o@@47 |o#8@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@47) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@47) $f@@23))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |566|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@47) $f@@23))
)) (_module.Object.inv current$Heap |o#8@@3|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |567|
 :pattern ( (_module.Object.inv current$Heap |o#8@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@3|)))
))) (forall ((|o#9@@2| T@U) ) (!  (=> (and ($Is refType |o#9@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@2|))))) (_module.Object.inv current$Heap |o#9@@2|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |568|
 :pattern ( (_module.Object.inv current$Heap |o#9@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@2|)))
))) (forall ((|t#2@@1| T@U) ) (!  (=> (and ($Is refType |t#2@@1| Tclass._module.Thread) (|Set#IsMember| |running#0@@1| ($Box refType |t#2@@1|))) (and (= (_module.Object.universe |t#2@@1|) this@@28) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2@@1|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |569|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |t#2@@1|)))
 :pattern ( (_module.Object.universe |t#2@@1|))
 :pattern ( (|Set#IsMember| |running#0@@1| ($Box refType |t#2@@1|)))
)))) (=> (and (= |b$reqreads#7@2| true) (= (ControlFlow 0 11) 3)) anon41_correct))))
(let ((anon61_Else_correct  (=> (or (not (= (_module.Object.universe |t#1@0|) this@@28)) (not true)) (and (=> (= (ControlFlow 0 34) 28) anon62_Then_correct) (=> (= (ControlFlow 0 34) 11) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (= (_module.Object.universe |t#1@0|) this@@28) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (and (=> (= (ControlFlow 0 32) 28) anon62_Then_correct) (=> (= (ControlFlow 0 32) 11) anon62_Else_correct)))))))
(let ((anon60_Then_correct  (=> (|Set#IsMember| |running#0@@1| ($Box refType |t#1@0|)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (or (not (= |t#1@0| null)) (not true))) (=> (or (not (= |t#1@0| null)) (not true)) (and (=> (= (ControlFlow 0 35) 32) anon61_Then_correct) (=> (= (ControlFlow 0 35) 34) anon61_Else_correct)))))))
(let ((anon60_Else_correct  (=> (not (|Set#IsMember| |running#0@@1| ($Box refType |t#1@0|))) (and (=> (= (ControlFlow 0 31) 28) anon62_Then_correct) (=> (= (ControlFlow 0 31) 11) anon62_Else_correct)))))
(let ((anon59_Then_correct  (=> (and ($Is refType |t#1@0| Tclass._module.Thread) ($IsAlloc refType |t#1@0| Tclass._module.Thread current$Heap)) (and (=> (= (ControlFlow 0 37) 35) anon60_Then_correct) (=> (= (ControlFlow 0 37) 31) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (not (and ($Is refType |t#1@0| Tclass._module.Thread) ($IsAlloc refType |t#1@0| Tclass._module.Thread current$Heap))) (and (=> (= (ControlFlow 0 30) 28) anon62_Then_correct) (=> (= (ControlFlow 0 30) 11) anon62_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@3| T@U) ) (!  (=> (and ($Is refType |o#6@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@3|)))) (not ($IsAllocBox ($Box refType |o#6@@3|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |560|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@3|)))
))) (forall ((|o#8@@4| T@U) ) (!  (=> (and ($Is refType |o#8@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@4|))) (or (forall (($o@@48 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@48 null)) (not true)) (=> (= $o@@48 |o#8@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@48) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@48) $f@@24))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |561|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@48) $f@@24))
)) (_module.Object.inv current$Heap |o#8@@4|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |562|
 :pattern ( (_module.Object.inv current$Heap |o#8@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@4|)))
))) (forall ((|o#9@@3| T@U) ) (!  (=> (and ($Is refType |o#9@@3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@3|))))) (_module.Object.inv current$Heap |o#9@@3|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |563|
 :pattern ( (_module.Object.inv current$Heap |o#9@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@3|)))
))) (and (=> (= (ControlFlow 0 38) 37) anon59_Then_correct) (=> (= (ControlFlow 0 38) 30) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (not (and (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@4| T@U) ) (!  (=> (and ($Is refType |o#6@@4| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@4|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@4|)))) (not ($IsAllocBox ($Box refType |o#6@@4|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |560|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@4|)))
))) (forall ((|o#8@@5| T@U) ) (!  (=> (and ($Is refType |o#8@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@5|))) (or (forall (($o@@49 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@49 null)) (not true)) (=> (= $o@@49 |o#8@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@49) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@49) $f@@25))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |561|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@49) $f@@25))
)) (_module.Object.inv current$Heap |o#8@@5|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |562|
 :pattern ( (_module.Object.inv current$Heap |o#8@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@5|)))
))) (forall ((|o#9@@4| T@U) ) (!  (=> (and ($Is refType |o#9@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@4|))))) (_module.Object.inv current$Heap |o#9@@4|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |563|
 :pattern ( (_module.Object.inv current$Heap |o#9@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#9@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#9@@4|)))
)))) (and (=> (= (ControlFlow 0 29) 28) anon62_Then_correct) (=> (= (ControlFlow 0 29) 11) anon62_Else_correct)))))
(let ((anon26_correct  (=> (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|)) (and (=> (= (ControlFlow 0 40) 38) anon58_Then_correct) (=> (= (ControlFlow 0 40) 29) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#7@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#7@0|))))) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 44) 40))) anon26_correct)))
(let ((anon57_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#7@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#7@0|)))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (or (not (= |o#7@0| null)) (not true))) (=> (or (not (= |o#7@0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |o#7@0|) Tclass._module.Object? current$Heap) (= |b$reqreads#6@0| (forall (($o@@50 T@U) ($f@@26 T@U) ) (!  (=> (and (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@50) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@50) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@50 $f@@26)))
 :qid |_06ThreadOwnershipdfy.40:68|
 :skolemid |556|
)))) (=> (and (and (|_module.Object.inv#canCall| current$Heap |o#7@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= (ControlFlow 0 42) 40))) anon26_correct)))))))
(let ((anon56_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#7@0|))) (and (=> (= (ControlFlow 0 47) 42) anon57_Then_correct) (=> (= (ControlFlow 0 47) 44) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#7@0|)) (and (=> (= (ControlFlow 0 45) (- 0 46)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (and (=> (= (ControlFlow 0 45) 42) anon57_Then_correct) (=> (= (ControlFlow 0 45) 44) anon57_Else_correct)))))))
(let ((anon55_Then_correct  (=> (and (and ($Is refType |o#7@0| Tclass._module.Object) ($IsAlloc refType |o#7@0| Tclass._module.Object current$Heap)) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@28 _module.Universe.content)))) (and (=> (= (ControlFlow 0 48) 45) anon56_Then_correct) (=> (= (ControlFlow 0 48) 47) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (and (not (and ($Is refType |o#7@0| Tclass._module.Object) ($IsAlloc refType |o#7@0| Tclass._module.Object current$Heap))) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 41) 40))) anon26_correct)))
(let ((anon54_Then_correct  (=> (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@5| T@U) ) (!  (=> (and ($Is refType |o#6@@5| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@5|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@5|)))) (not ($IsAllocBox ($Box refType |o#6@@5|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |557|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@5|)))
))) (forall ((|o#8@@6| T@U) ) (!  (=> (and ($Is refType |o#8@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@6|))) (or (forall (($o@@51 T@U) ($f@@27 T@U) ) (!  (=> (or (not (= $o@@51 null)) (not true)) (=> (= $o@@51 |o#8@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@51) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@51) $f@@27))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |558|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@51) $f@@27))
)) (_module.Object.inv current$Heap |o#8@@6|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |559|
 :pattern ( (_module.Object.inv current$Heap |o#8@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@6|)))
))) (and (=> (= (ControlFlow 0 49) 48) anon55_Then_correct) (=> (= (ControlFlow 0 49) 41) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (not (and (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@6| T@U) ) (!  (=> (and ($Is refType |o#6@@6| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@6|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@6|)))) (not ($IsAllocBox ($Box refType |o#6@@6|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |557|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@6|)))
))) (forall ((|o#8@@7| T@U) ) (!  (=> (and ($Is refType |o#8@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@7|))) (or (forall (($o@@52 T@U) ($f@@28 T@U) ) (!  (=> (or (not (= $o@@52 null)) (not true)) (=> (= $o@@52 |o#8@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@52) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@52) $f@@28))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |558|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@52) $f@@28))
)) (_module.Object.inv current$Heap |o#8@@7|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |559|
 :pattern ( (_module.Object.inv current$Heap |o#8@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#8@@7|)))
)))) (=> (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true)) (and (=> (= (ControlFlow 0 39) 38) anon58_Then_correct) (=> (= (ControlFlow 0 39) 29) anon58_Else_correct))))))
(let ((anon19_correct  (=> (and (= |b$reqreads#4@2| |b$reqreads#4@1|) (= |b$reqreads#3@2| |b$reqreads#3@1|)) (and (=> (= (ControlFlow 0 51) 49) anon54_Then_correct) (=> (= (ControlFlow 0 51) 39) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (and (forall (($o@@53 T@U) ($f@@29 T@U) ) (!  (=> (or (not (= $o@@53 null)) (not true)) (=> (= $o@@53 |o#5@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@53) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@53) $f@@29))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@53) $f@@29))
)) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 56) 51))) anon19_correct)))
(let ((anon53_Then_correct  (=> (not (forall (($o@@54 T@U) ($f@@30 T@U) ) (!  (=> (or (not (= $o@@54 null)) (not true)) (=> (= $o@@54 |o#5@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@54) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 $o@@54) $f@@30))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@54) $f@@30))
))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (or (not (= |o#5@0| null)) (not true))) (=> (or (not (= |o#5@0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |o#5@0|) Tclass._module.Object? current$Heap) (= |b$reqreads#4@0| (forall (($o@@55 T@U) ($f@@31 T@U) ) (!  (=> (and (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@55) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@55) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@55 $f@@31)))
 :qid |_06ThreadOwnershipdfy.38:67|
 :skolemid |553|
)))) (=> (and (and (|_module.Object.inv#canCall| current$Heap |o#5@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 54) 51))) anon19_correct)))))))
(let ((anon52_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#5@0|)) (and (=> (= (ControlFlow 0 57) (- 0 58)) ($IsAlloc refType |o#5@0| Tclass._module.Object $Heap@@15)) (=> ($IsAlloc refType |o#5@0| Tclass._module.Object $Heap@@15) (=> (= |b$reqreads#3@0| (forall (($o@@56 T@U) ($f@@32 T@U) ) (!  (=> (and (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@56) alloc)))) (= $o@@56 |o#5@0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@56 $f@@32)))
 :qid |_06ThreadOwnershipdfy.38:59|
 :skolemid |552|
))) (and (=> (= (ControlFlow 0 57) 54) anon53_Then_correct) (=> (= (ControlFlow 0 57) 56) anon53_Else_correct))))))))
(let ((anon52_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#5@0|))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 53) 51))) anon19_correct)))
(let ((anon51_Then_correct  (=> (and ($Is refType |o#5@0| Tclass._module.Object) ($IsAlloc refType |o#5@0| Tclass._module.Object current$Heap)) (and (=> (= (ControlFlow 0 59) (- 0 60)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (and (=> (= (ControlFlow 0 59) 57) anon52_Then_correct) (=> (= (ControlFlow 0 59) 53) anon52_Else_correct)))))))
(let ((anon51_Else_correct  (=> (and (and (not (and ($Is refType |o#5@0| Tclass._module.Object) ($IsAlloc refType |o#5@0| Tclass._module.Object current$Heap))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 52) 51))) anon19_correct)))
(let ((anon50_Then_correct  (=> (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@7| T@U) ) (!  (=> (and ($Is refType |o#6@@7| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@7|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@7|)))) (not ($IsAllocBox ($Box refType |o#6@@7|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |555|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@7|)))
))) (and (=> (= (ControlFlow 0 61) 59) anon51_Then_correct) (=> (= (ControlFlow 0 61) 52) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (and (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (forall ((|o#6@@8| T@U) ) (!  (=> (and ($Is refType |o#6@@8| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@8|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@8|)))) (not ($IsAllocBox ($Box refType |o#6@@8|) Tclass._module.Object $Heap@@15)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |555|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#6@@8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#6@@8|)))
)))) (=> (and (= |b$reqreads#4@2| true) (= |b$reqreads#3@2| true)) (and (=> (= (ControlFlow 0 50) 49) anon54_Then_correct) (=> (= (ControlFlow 0 50) 39) anon54_Else_correct))))))
(let ((anon13_correct  (=> (= |b$reqreads#2@3| |b$reqreads#2@2|) (and (=> (= (ControlFlow 0 63) 61) anon50_Then_correct) (=> (= (ControlFlow 0 63) 50) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (not (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#4@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#4@0|)))) (=> (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 66) 63)) anon13_correct))))
(let ((anon49_Then_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#4@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType |o#4@0|))) (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 65) 63))) anon13_correct)))
(let ((anon48_Else_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#4@0|)) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 68) 65) anon49_Then_correct) (=> (= (ControlFlow 0 68) 66) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Box refType |o#4@0|))) (=> (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@28 _module.Universe.content))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (=> (= (ControlFlow 0 67) 65) anon49_Then_correct) (=> (= (ControlFlow 0 67) 66) anon49_Else_correct))))))
(let ((anon47_Then_correct  (=> (and ($Is refType |o#4@0| Tclass._module.Object) ($IsAlloc refType |o#4@0| Tclass._module.Object current$Heap)) (and (=> (= (ControlFlow 0 69) (- 0 70)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (and (=> (= (ControlFlow 0 69) 67) anon48_Then_correct) (=> (= (ControlFlow 0 69) 68) anon48_Else_correct)))))))
(let ((anon47_Else_correct  (=> (not (and ($Is refType |o#4@0| Tclass._module.Object) ($IsAlloc refType |o#4@0| Tclass._module.Object current$Heap))) (=> (and (= |b$reqreads#2@2| true) (= (ControlFlow 0 64) 63)) anon13_correct))))
(let ((anon46_Then_correct  (=> (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)))) (and (=> (= (ControlFlow 0 71) 69) anon47_Then_correct) (=> (= (ControlFlow 0 71) 64) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (not (and (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@28) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content))))) (= |b$reqreads#2@3| true)) (and (=> (= (ControlFlow 0 62) 61) anon50_Then_correct) (=> (= (ControlFlow 0 62) 50) anon50_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28))) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 74) 71) anon46_Then_correct) (=> (= (ControlFlow 0 74) 62) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (and (_module.Universe.globalInv $Heap@@15 this@@28) (_module.Universe.globalBaseInv current$Heap this@@28)) (and (=> (= (ControlFlow 0 72) (- 0 73)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@28 _module.Universe.content))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 72) 71) anon46_Then_correct) (=> (= (ControlFlow 0 72) 62) anon46_Else_correct))))))))
(let ((anon44_Else_correct  (=> (and (not (_module.Universe.globalInv $Heap@@15 this@@28)) (= |b$reqreads#0@1| true)) (and (=> (= (ControlFlow 0 76) 72) anon45_Then_correct) (=> (= (ControlFlow 0 76) 74) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (_module.Universe.globalInv $Heap@@15 this@@28) (=> (and (and ($IsAllocBox ($Box refType this@@28) Tclass._module.Universe? current$Heap) (= |b$reqreads#0@0| (forall (($o@@57 T@U) ($f@@33 T@U) ) (!  (=> (and (and (or (not (= $o@@57 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@57) alloc)))) (or (= $o@@57 this@@28) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@28) _module.Universe.content)) ($Box refType $o@@57)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@57 $f@@33)))
 :qid |_06ThreadOwnershipdfy.34:8|
 :skolemid |551|
)))) (and (|_module.Universe.globalBaseInv#canCall| current$Heap this@@28) (= |b$reqreads#0@1| |b$reqreads#0@0|))) (and (=> (= (ControlFlow 0 75) 72) anon45_Then_correct) (=> (= (ControlFlow 0 75) 74) anon45_Else_correct))))))
(let ((anon43_Else_correct  (and (=> (= (ControlFlow 0 77) (- 0 78)) ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15)) (=> ($IsAlloc refType this@@28 Tclass._module.Universe $Heap@@15) (=> (|_module.Universe.globalInv#canCall| $Heap@@15 this@@28) (and (=> (= (ControlFlow 0 77) 75) anon44_Then_correct) (=> (= (ControlFlow 0 77) 76) anon44_Else_correct)))))))
(let ((anon43_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 79) 1) anon43_Then_correct) (=> (= (ControlFlow 0 79) 77) anon43_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@15) ($IsHeapAnchor $Heap@@15)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Universe) ($IsAlloc refType this@@28 Tclass._module.Universe previous$Heap)))) (=> (and (and (and ($Is SetType |running#0@@1| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0@@1| (TSet Tclass._module.Thread) previous$Heap)) (= 8 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@15) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 80) 79))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
