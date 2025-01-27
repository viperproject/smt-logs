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
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#10| (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall ((m@@1 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#10| |l#0| |l#1| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0|) (and (|Set#IsMember| |l#1| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_06ThreadOwnershipdfy.204:7|
 :skolemid |2088|
 :pattern ( (MapType0Select BoxType boolType (|lambda#10| |l#0| |l#1| |l#2|) |$y#1|))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@7) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (_module.Object.universe $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@8) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Object.universe $o@@8))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.NonOwnedObject) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.NonOwnedObject)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($IsBox bx@@6 Tclass._module.NonOwnedObject))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.NonOwnedObject?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.NonOwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |854|
 :pattern ( ($IsBox bx@@12 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($IsBox bx@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
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
(assert (forall (($o@@9 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@9 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@9 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@10 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@10 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@11 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.Thread? $heap@@1) ($IsAlloc refType $o@@11 Tclass._module.NonOwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Thread? $heap@@1))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@7 this@@8) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $Heap@@7)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@7 this@@8) (=> (_module.Object.baseInv $Heap@@7 this@@8) (|_module.Universe.globalInv#canCall| $Heap@@7 (_module.Object.universe this@@8)))) (= (_module.Object.objectGlobalInv $Heap@@7 this@@8)  (and (_module.Object.baseInv $Heap@@7 this@@8) (_module.Universe.globalInv $Heap@@7 (_module.Object.universe this@@8))))))
 :qid |_06ThreadOwnershipdfy.106:19|
 :skolemid |780|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@7 this@@8) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@8 T@U) (this@@9 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@0 $Heap@@8 this@@9 |running#0@@0|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@8)) ($HeapSucc $prevHeap@@0 $Heap@@8)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe $prevHeap@@0)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.globalInv#canCall| $prevHeap@@0 this@@9) (=> (_module.Universe.globalInv $prevHeap@@0 this@@9) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@8 this@@9) (=> (_module.Universe.globalBaseInv $Heap@@8 this@@9) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content))) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#0@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#0@@2|)))) (not ($IsAllocBox ($Box refType |o#0@@2|) Tclass._module.Object $prevHeap@@0)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |549|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (and (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@0|)) (=> (not (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (= $o@@12 |o#1@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@12) $f@@0))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@12) $f@@0))
))) (|_module.Object.inv#canCall| $Heap@@8 |o#1@@0|))))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |543|
 :pattern ( (_module.Object.inv $Heap@@8 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@0|)))
)) (=> (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@1|))) (or (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (= $o@@13 |o#1@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@13) $f@@1))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |547|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@13) $f@@1))
)) (_module.Object.inv $Heap@@8 |o#1@@1|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |548|
 :pattern ( (_module.Object.inv $Heap@@8 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (forall ((|o#2| T@U) ) (!  (=> ($Is refType |o#2| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#2|)))) (|_module.Object.inv#canCall| $Heap@@8 |o#2|)))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |544|
 :pattern ( (_module.Object.inv $Heap@@8 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#2|)))
)))))))))) (= (_module.Universe.multipleLegalTransitions $prevHeap@@0 $Heap@@8 this@@9 |running#0@@0|)  (and (and (and (and (and (and (and (_module.Universe.globalInv $prevHeap@@0 this@@9) (_module.Universe.globalBaseInv $Heap@@8 this@@9)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))) (not ($IsAllocBox ($Box refType |o#0@@3|) Tclass._module.Object $prevHeap@@0)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |535|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@2|))) (or (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 |o#1@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@14) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@14) $f@@2))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@14) $f@@2))
)) (_module.Object.inv $Heap@@8 |o#1@@2|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@@8 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#1@@2|)))
))) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#2@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#2@@0|))))) (_module.Object.inv $Heap@@8 |o#2@@0|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |538|
 :pattern ( (_module.Object.inv $Heap@@8 |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@9) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) (forall ((|t#0| T@U) ) (!  (=> (and ($Is refType |t#0| Tclass._module.Thread) (|Set#IsMember| |running#0@@0| ($Box refType |t#0|))) (and (= (_module.Object.universe |t#0|) this@@9) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |t#0|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |539|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |t#0|)))
 :pattern ( (_module.Object.universe |t#0|))
 :pattern ( (|Set#IsMember| |running#0@@0| ($Box refType |t#0|)))
))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner))) (forall (($o@@15 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@15) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@15) $f@@3))))
 :qid |_06ThreadOwnershipdfy.43:119|
 :skolemid |540|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@15) $f@@3))
))))
 :qid |_06ThreadOwnershipdfy.43:16|
 :skolemid |541|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@9) _module.Universe.content)) ($Box refType |o#3|)))
))))))
 :qid |_06ThreadOwnershipdfy.32:22|
 :skolemid |550|
 :pattern ( (_module.Universe.multipleLegalTransitions $prevHeap@@0 $Heap@@8 this@@9 |running#0@@0|) ($IsGoodHeap $Heap@@8))
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
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 TBool) (and (= ($Box boolType ($Unbox boolType bx@@15)) bx@@15) ($Is boolType ($Unbox boolType bx@@15) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@15 TBool))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@9 this@@10) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedObject) ($IsAlloc refType this@@10 Tclass._module.OwnedObject $Heap@@9)))))) (=> (_module.OwnedObject.userInv $Heap@@9 this@@10) (_module.OwnedObject.localUserInv $Heap@@9 this@@10)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |952|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@10 this@@11) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.OwnedObject) ($IsAlloc refType this@@11 Tclass._module.OwnedObject $Heap@@10)))))) (=> (_module.OwnedObject.inv $Heap@@10 this@@11) (_module.OwnedObject.localInv $Heap@@10 this@@11)))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |884|
 :pattern ( (_module.OwnedObject.inv $Heap@@10 this@@11))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@11 this@@12) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Thread) ($IsAlloc refType this@@12 Tclass._module.Thread $Heap@@11)))))) (=> (_module.Thread.inv $Heap@@11 this@@12) (_module.Thread.localInv $Heap@@11 this@@12)))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |973|
 :pattern ( (_module.Thread.inv $Heap@@11 this@@12))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@12 this@@13) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $Heap@@12)))))) (=> (_module.Object.inv $Heap@@12 this@@13) (_module.Object.localInv $Heap@@12 this@@13)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |800|
 :pattern ( (_module.Object.inv $Heap@@12 this@@13))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@16) ($IsAllocBox bx@@16 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@16))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@13 this@@14) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.OwnedObject) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $Heap@@13)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@13 this@@14) (=> (_module.OwnedObject.localInv $Heap@@13 this@@14) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@14) _module.OwnedObject.closed))) (|_module.OwnedObject.userInv#canCall| $Heap@@13 this@@14)))) (= (_module.OwnedObject.inv $Heap@@13 this@@14)  (and (_module.OwnedObject.localInv $Heap@@13 this@@14) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@14) _module.OwnedObject.closed))) (_module.OwnedObject.userInv $Heap@@13 this@@14))))))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |886|
 :pattern ( (_module.OwnedObject.inv $Heap@@13 this@@14) ($IsGoodHeap $Heap@@13))
))))
(assert (forall (($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.OwnedObject.closed)) TBool $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |871|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.OwnedObject.closed)))
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
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@17 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (or (= $o@@17 this@@15) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@15) _module.Universe.content)) ($Box refType $o@@17)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@17) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@17) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.Universe.globalBaseInv $h0@@0 this@@15) (_module.Universe.globalBaseInv $h1@@0 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.globalBaseInv $h1@@0 this@@15))
)))
(assert (forall (($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.OwnedObject.owner)) Tclass._module.Object $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |869|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Universe) ($IsAlloc refType this@@16 Tclass._module.Universe $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@19 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@19) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@19) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |507|
)) (= (_module.Universe.globalInv $h0@@1 this@@16) (_module.Universe.globalInv $h1@@1 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.globalInv $h1@@1 this@@16))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@20 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@20) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@20) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |734|
)) (= (_module.Object.baseInv $h0@@2 this@@17) (_module.Object.baseInv $h1@@2 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |735|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.baseInv $h1@@2 this@@17))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@21 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@21) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@21) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |776|
)) (= (_module.Object.objectGlobalInv $h0@@3 this@@18) (_module.Object.objectGlobalInv $h1@@3 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |777|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.objectGlobalInv $h1@@3 this@@18))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Object) ($IsAlloc refType this@@19 Tclass._module.Object $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@22 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@22) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@22) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |790|
)) (= (_module.Object.localInv $h0@@4 this@@19) (_module.Object.localInv $h1@@4 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |791|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.localInv $h1@@4 this@@19))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@23 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@23) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@23) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |798|
)) (= (_module.Object.inv $h0@@5 this@@20) (_module.Object.inv $h1@@5 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.inv $h1@@5 this@@20))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@24 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@24) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@24) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |872|
)) (= (_module.OwnedObject.localInv $h0@@6 this@@21) (_module.OwnedObject.localInv $h1@@6 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |873|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.localInv $h1@@6 this@@21))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@25 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@25) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@25) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |882|
)) (= (_module.OwnedObject.inv $h0@@7 this@@22) (_module.OwnedObject.inv $h1@@7 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.inv $h1@@7 this@@22))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.OwnedObject) ($IsAlloc refType this@@23 Tclass._module.OwnedObject $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@26 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@26) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@26) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |938|
)) (= (_module.OwnedObject.baseUserInv $h0@@8 this@@23) (_module.OwnedObject.baseUserInv $h1@@8 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |939|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.OwnedObject.baseUserInv $h1@@8 this@@23))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.OwnedObject) ($IsAlloc refType this@@24 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@27 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@27) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@27) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |942|
)) (= (_module.OwnedObject.localUserInv $h0@@9 this@@24) (_module.OwnedObject.localUserInv $h1@@9 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |943|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.localUserInv $h1@@9 this@@24))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.OwnedObject) ($IsAlloc refType this@@25 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@28 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@28) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@28) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |950|
)) (= (_module.OwnedObject.userInv $h0@@10 this@@25) (_module.OwnedObject.userInv $h1@@10 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |951|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.userInv $h1@@10 this@@25))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Thread) ($IsAlloc refType this@@26 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@29 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@29) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@29) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |963|
)) (= (_module.Thread.localInv $h0@@11 this@@26) (_module.Thread.localInv $h1@@11 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |964|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.localInv $h1@@11 this@@26))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Thread) ($IsAlloc refType this@@27 Tclass._module.Thread $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@30 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@30) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@30) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |971|
)) (= (_module.Thread.inv $h0@@12 this@@27) (_module.Thread.inv $h1@@12 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |972|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.inv $h1@@12 this@@27))
)))
(assert (forall ((bx@@17 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@5)))
)))
(assert (forall (($o@@31 T@U) ) (!  (=> ($Is refType $o@@31 Tclass._module.NonOwnedObject?) ($Is refType $o@@31 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( ($Is refType $o@@31 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.NonOwnedObject?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@18 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass._module.OwnedObject?) ($Is refType $o@@32 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@32 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.OwnedObject?) ($IsBox bx@@19 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx@@19 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass._module.Thread?) ($Is refType $o@@33 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( ($Is refType $o@@33 Tclass._module.Thread?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Thread?) ($IsBox bx@@20 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($IsBox bx@@20 Tclass._module.Thread?))
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
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@40 T@U) ($f@@17 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4| |l#5|) $o@@40 $f@@17))  (=> (and (or (not (= $o@@40 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@40) |l#2@@0|)))) (or (or (= $o@@40 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@40))) (= $o@@40 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2087|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4| |l#5|) $o@@40 $f@@17))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@14 this@@28) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Thread) ($IsAlloc refType this@@28 Tclass._module.Thread $Heap@@14)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@14 this@@28)) (= (_module.Thread.localInv $Heap@@14 this@@28)  (and true (_module.Object.baseInv $Heap@@14 this@@28)))))
 :qid |_06ThreadOwnershipdfy.207:19|
 :skolemid |967|
 :pattern ( (_module.Thread.localInv $Heap@@14 this@@28) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@15 this@@29) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Thread) ($IsAlloc refType this@@29 Tclass._module.Thread $Heap@@15)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@15 this@@29)) (= (_module.Thread.inv $Heap@@15 this@@29)  (and true (_module.Thread.localInv $Heap@@15 this@@29)))))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |975|
 :pattern ( (_module.Thread.inv $Heap@@15 this@@29) ($IsGoodHeap $Heap@@15))
))))
(assert (forall (($h@@18 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@41 null)) (not true)) ($Is refType $o@@41 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@41) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@41) _module.Universe.content)))
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
(declare-fun |##running#0@0| () T@U)
(declare-fun $Heap@@16 () T@U)
(declare-fun this@@30 () T@U)
(declare-fun |preempting#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Universe.Preemption)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon6_correct  (=> (and (= |##running#0@0| (|Set#FromBoogieMap| (|lambda#10| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) |preempting#0|))) ($IsAlloc SetType |##running#0@0| (TSet Tclass._module.Thread) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@30 Tclass._module.Universe $Heap@@16)) (=> ($IsAlloc refType this@@30 Tclass._module.Universe $Heap@@16) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#10| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) |preempting#0|)) (TSet Tclass._module.Thread) $Heap@@16)))))))
(let ((anon9_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) ($Box refType |t#0@0|)) (or (not (= |t#0@0| |preempting#0|)) (not true)))) (= (ControlFlow 0 6) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) ($Box refType |t#0@0|)) (or (not (= |t#0@0| |preempting#0|)) (not true))) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon8_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) ($Box refType |t#0@0|))) (and (=> (= (ControlFlow 0 8) 5) anon9_Then_correct) (=> (= (ControlFlow 0 8) 6) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) ($Box refType |t#0@0|)) (and (=> (= (ControlFlow 0 7) 5) anon9_Then_correct) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((anon7_Then_correct  (=> (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@0)) (and (=> (= (ControlFlow 0 9) (- 0 10)) ($IsAlloc refType this@@30 Tclass._module.Universe $Heap@@16)) (=> ($IsAlloc refType this@@30 Tclass._module.Universe $Heap@@16) (and (=> (= (ControlFlow 0 9) 7) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct)))))))
(let ((anon7_Else_correct  (=> (and (not (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@0))) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null $Heap@@16 alloc this@@30 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) |preempting#0|)) (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (not (= |preempting#0| null)) (not true))) (=> (or (not (= |preempting#0| null)) (not true)) (=> (= (_module.Object.universe |preempting#0|) this@@30) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |preempting#0| null)) (not true))) (=> (or (not (= |preempting#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |preempting#0|) Tclass._module.Object? $Heap@@16) (=> (and (|_module.Object.objectGlobalInv#canCall| $Heap@@16 |preempting#0|) (_module.Object.objectGlobalInv $Heap@@16 |preempting#0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@42) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@42)) (or (or (= $o@@42 this@@30) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.Universe.content)) ($Box refType $o@@42))) (= $o@@42 |preempting#0|))))
 :qid |_06ThreadOwnershipdfy.61:10|
 :skolemid |685|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42))
)) ($HeapSucc $Heap@@16 $Heap@0))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= |preempting#0| null)) (not true))) (=> (or (not (= |preempting#0| null)) (not true)) (=> (= (_module.Object.universe |preempting#0|) this@@30) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |preempting#0| null)) (not true))) (=> (or (not (= |preempting#0| null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType |preempting#0|) Tclass._module.Object? $Heap@0) (|_module.Object.objectGlobalInv#canCall| $Heap@0 |preempting#0|)) (and (_module.Object.objectGlobalInv $Heap@0 |preempting#0|) ($IsAllocBox ($Box refType this@@30) Tclass._module.Universe? $Heap@0))) (and (=> (= (ControlFlow 0 11) 9) anon7_Then_correct) (=> (= (ControlFlow 0 11) 4) anon7_Else_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@16) ($IsHeapAnchor $Heap@@16)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Universe) ($IsAlloc refType this@@30 Tclass._module.Universe $Heap@@16)))) (and (and ($Is refType |preempting#0| Tclass._module.Thread) ($IsAlloc refType |preempting#0| Tclass._module.Thread $Heap@@16)) (and (= 9 $FunctionContextHeight) (= (ControlFlow 0 16) 11)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
