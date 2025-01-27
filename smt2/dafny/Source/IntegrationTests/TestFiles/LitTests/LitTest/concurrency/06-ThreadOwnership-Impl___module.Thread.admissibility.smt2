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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun _module.OwnedObject.closed () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun implements$_module.NonOwnedObject (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Universe.legalTransition (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransition#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Object.goodPreAndLegalChanges (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Object.goodPreAndLegalChanges#canCall| (T@U T@U T@U T@U) Bool)
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
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userFieldsUnchanged (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userFieldsOwnedBy (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userFieldsOwnedBy#canCall| (T@U T@U T@U) Bool)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun |_module.OwnedObject.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userFieldsUnchanged#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $h0@@0)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@0 $h0@@0 this@@2 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@1) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |592|
)) (= (_module.Universe.legalTransition $prevHeap@@0 $h0@@0 this@@2 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@0 $h1@@0 this@@2 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |593|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.legalTransition $prevHeap@@0 $h1@@0 this@@2 |running#0@@0|))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) (|running#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Object) ($IsAlloc refType this@@3 Tclass._module.Object $h0@@1)))) (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@1 $h0@@1 this@@3 |running#0@@1|) (and ($Is refType |running#0@@1| Tclass._module.Thread) ($IsAlloc refType |running#0@@1| Tclass._module.Thread $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |762|
)) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h0@@1 this@@3 |running#0@@1|) (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h1@@1 this@@3 |running#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |763|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h1@@1 this@@3 |running#0@@1|))
)))
(assert (forall (($h T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.OwnedObject?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.closed)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |870|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.closed)))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@1 this@@4) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@1 this@@4) (_module.OwnedObject.localInv $Heap@@1 this@@4)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |877|
 :pattern ( (_module.Object.localInv $Heap@@1 this@@4) ($Is refType this@@4 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.localInv $Heap@@1 this@@4) (_module.OwnedObject.localInv $Heap@@1 this@@4) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@2 this@@5) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@2 this@@5) (_module.Thread.localInv $Heap@@2 this@@5)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |968|
 :pattern ( (_module.Object.localInv $Heap@@2 this@@5) ($Is refType this@@5 Tclass._module.Thread) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.localInv $Heap@@2 this@@5) (_module.Thread.localInv $Heap@@2 this@@5) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@3 this@@6) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@3 this@@6) (_module.OwnedObject.inv $Heap@@3 this@@6)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |887|
 :pattern ( (_module.Object.inv $Heap@@3 this@@6) ($Is refType this@@6 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.inv $Heap@@3 this@@6) (_module.OwnedObject.inv $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@4 this@@7) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@4 this@@7) (_module.Thread.inv $Heap@@4 this@@7)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |976|
 :pattern ( (_module.Object.inv $Heap@@4 this@@7) ($Is refType this@@7 Tclass._module.Thread) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.inv $Heap@@4 this@@7) (_module.Thread.inv $Heap@@4 this@@7) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@4) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |794|
)) (= (_module.Object.localInv2 $prevHeap@@2 $h0@@2 this@@8) (_module.Object.localInv2 $prevHeap@@2 $h1@@2 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |795|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.localInv2 $prevHeap@@2 $h1@@2 this@@8))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Object) ($IsAlloc refType this@@9 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |802|
)) (= (_module.Object.inv2 $prevHeap@@3 $h0@@3 this@@9) (_module.Object.inv2 $prevHeap@@3 $h1@@3 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |803|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.inv2 $prevHeap@@3 $h1@@3 this@@9))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedObject) ($IsAlloc refType this@@10 Tclass._module.OwnedObject $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@6) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |899|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@4 $h0@@4 this@@10) (_module.OwnedObject.localInv2 $prevHeap@@4 $h1@@4 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |900|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.OwnedObject.localInv2 $prevHeap@@4 $h1@@4 this@@10))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@11 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.OwnedObject) ($IsAlloc refType this@@11 Tclass._module.OwnedObject $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |907|
)) (= (_module.OwnedObject.inv2 $prevHeap@@5 $h0@@5 this@@11) (_module.OwnedObject.inv2 $prevHeap@@5 $h1@@5 this@@11))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |908|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.OwnedObject.inv2 $prevHeap@@5 $h1@@5 this@@11))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.OwnedObject) ($IsAlloc refType this@@12 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |934|
)) (= (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h0@@6 this@@12) (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h1@@6 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |935|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h1@@6 this@@12))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.OwnedObject) ($IsAlloc refType this@@13 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |946|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h0@@7 this@@13) (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h1@@7 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |947|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h1@@7 this@@13))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.OwnedObject) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |954|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@8 $h0@@8 this@@14) (_module.OwnedObject.userInv2 $prevHeap@@8 $h1@@8 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |955|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.OwnedObject.userInv2 $prevHeap@@8 $h1@@8 this@@14))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Thread) ($IsAlloc refType this@@15 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@11) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |987|
)) (= (_module.Thread.localInv2 $prevHeap@@9 $h0@@9 this@@15) (_module.Thread.localInv2 $prevHeap@@9 $h1@@9 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |988|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.localInv2 $prevHeap@@9 $h1@@9 this@@15))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Thread) ($IsAlloc refType this@@16 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@12) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |994|
)) (= (_module.Thread.inv2 $prevHeap@@10 $h0@@10 this@@16) (_module.Thread.inv2 $prevHeap@@10 $h1@@10 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |995|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.inv2 $prevHeap@@10 $h1@@10 this@@16))
)))
(assert (forall (($o@@13 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass._module.Universe? $h@@8)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Universe? $h@@8))
)))
(assert (forall (($o@@14 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.Object? $h@@9)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Object? $h@@9))
)))
(assert (forall (($o@@15 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._module.NonOwnedObject? $h@@10)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.NonOwnedObject? $h@@10))
)))
(assert (forall (($o@@16 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@17 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@17 Tclass._module.Thread? $h@@12)  (or (= $o@@17 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) alloc)))))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Thread? $h@@12))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
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
(assert ($IsGhostField alloc))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@5 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@11 $Heap@@5 this@@17) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@11 $Heap@@5)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.OwnedObject) ($IsAlloc refType this@@17 Tclass._module.OwnedObject $prevHeap@@11)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.OwnedObject.closed))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@17) _module.OwnedObject.closed))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@11 $Heap@@5 this@@17)))) (= (_module.OwnedObject.localInv2 $prevHeap@@11 $Heap@@5 this@@17)  (and true (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.OwnedObject.closed))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@17) _module.OwnedObject.closed)))) (_module.OwnedObject.localUserInv2 $prevHeap@@11 $Heap@@5 this@@17))))))
 :qid |_06ThreadOwnershipdfy.142:22|
 :skolemid |903|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@11 $Heap@@5 this@@17) ($IsGoodHeap $Heap@@5))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@18) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (_module.Object.universe $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@19) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Object.universe $o@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@6 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@12 $Heap@@6 this@@18) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@12 $Heap@@6 this@@18) (_module.Thread.localInv2 $prevHeap@@12 $Heap@@6 this@@18)))
 :qid |_06ThreadOwnershipdfy.113:22|
 :skolemid |992|
 :pattern ( (_module.Object.localInv2 $prevHeap@@12 $Heap@@6 this@@18) ($Is refType this@@18 Tclass._module.Thread) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.localInv2 $prevHeap@@12 $Heap@@6 this@@18) (_module.Thread.localInv2 $prevHeap@@12 $Heap@@6 this@@18) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@7 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@13 $Heap@@7 this@@19) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@13 $Heap@@7 this@@19) (_module.Thread.inv2 $prevHeap@@13 $Heap@@7 this@@19)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |999|
 :pattern ( (_module.Object.inv2 $prevHeap@@13 $Heap@@7 this@@19) ($Is refType this@@19 Tclass._module.Thread) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.inv2 $prevHeap@@13 $Heap@@7 this@@19) (_module.Thread.inv2 $prevHeap@@13 $Heap@@7 this@@19) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@8 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@14 $Heap@@8 this@@20) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@14 $Heap@@8 this@@20) (_module.OwnedObject.localInv2 $prevHeap@@14 $Heap@@8 this@@20)))
 :qid |_06ThreadOwnershipdfy.113:22|
 :skolemid |904|
 :pattern ( (_module.Object.localInv2 $prevHeap@@14 $Heap@@8 this@@20) ($Is refType this@@20 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.localInv2 $prevHeap@@14 $Heap@@8 this@@20) (_module.OwnedObject.localInv2 $prevHeap@@14 $Heap@@8 this@@20) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@9 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@15 $Heap@@9 this@@21) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@15 $Heap@@9 this@@21) (_module.OwnedObject.inv2 $prevHeap@@15 $Heap@@9 this@@21)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |912|
 :pattern ( (_module.Object.inv2 $prevHeap@@15 $Heap@@9 this@@21) ($Is refType this@@21 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.inv2 $prevHeap@@15 $Heap@@9 this@@21) (_module.OwnedObject.inv2 $prevHeap@@15 $Heap@@9 this@@21) ($IsGoodHeap $Heap@@9))
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
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@22 T@U) (|owner#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $h0@@11)))) (or (|_module.OwnedObject.userFieldsOwnedBy#canCall| $h0@@11 this@@22 |owner#0|) (and ($Is refType |owner#0| Tclass._module.Object) ($IsAlloc refType |owner#0| Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@20 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@20) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@20) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |930|
)) (= (_module.OwnedObject.userFieldsOwnedBy $h0@@11 this@@22 |owner#0|) (_module.OwnedObject.userFieldsOwnedBy $h1@@11 this@@22 |owner#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |931|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.userFieldsOwnedBy $h1@@11 this@@22 |owner#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@10 this@@23) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.OwnedObject) ($IsAlloc refType this@@23 Tclass._module.OwnedObject $Heap@@10)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@10 this@@23) (=> (_module.Object.baseInv $Heap@@10 this@@23) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.owner))) (_module.Object.universe this@@23)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@23)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@10 this@@23) (=> (_module.OwnedObject.baseUserInv $Heap@@10 this@@23) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.closed))) (|_module.OwnedObject.localUserInv#canCall| $Heap@@10 this@@23)))))))) (= (_module.OwnedObject.localInv $Heap@@10 this@@23)  (and (and (and (and (_module.Object.baseInv $Heap@@10 this@@23) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.owner))) (_module.Object.universe this@@23))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@23)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@10 this@@23)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@23) _module.OwnedObject.closed))) (_module.OwnedObject.localUserInv $Heap@@10 this@@23))))))
 :qid |_06ThreadOwnershipdfy.131:19|
 :skolemid |876|
 :pattern ( (_module.OwnedObject.localInv $Heap@@10 this@@23) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@11 this@@24) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@11)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (|_module.Universe.globalBaseInv#canCall| $Heap@@11 (_module.Object.universe this@@24))) (= (_module.Object.baseInv $Heap@@11 this@@24)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (_module.Universe.globalBaseInv $Heap@@11 (_module.Object.universe this@@24))))))
 :qid |_06ThreadOwnershipdfy.80:19|
 :skolemid |738|
 :pattern ( (_module.Object.baseInv $Heap@@11 this@@24) ($IsGoodHeap $Heap@@11))
))))
(assert (forall (($o@@21 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@21 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@22 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@22 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@23 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass._module.Thread? $heap@@1) ($IsAlloc refType $o@@23 Tclass._module.NonOwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Thread? $heap@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@12 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@16 $Heap@@12 this@@25) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@16) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@16 $Heap@@12)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Thread) ($IsAlloc refType this@@25 Tclass._module.Thread $prevHeap@@16)))))) (= (_module.Thread.localInv2 $prevHeap@@16 $Heap@@12 this@@25) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_06ThreadOwnershipdfy.214:22|
 :skolemid |991|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@16 $Heap@@12 this@@25) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@13 T@U) (this@@26 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@17 $Heap@@13 this@@26 |running#0@@2|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@17) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@17 $Heap@@13)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Universe) ($IsAlloc refType this@@26 Tclass._module.Universe $prevHeap@@17)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.globalInv#canCall| $prevHeap@@17 this@@26) (=> (_module.Universe.globalInv $prevHeap@@17 this@@26) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@13 this@@26) (=> (_module.Universe.globalBaseInv $Heap@@13 this@@26) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content))) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|)))) (not ($IsAllocBox ($Box refType |o#0@@2|) Tclass._module.Object $prevHeap@@17)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |549|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (and (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|)) (=> (not (forall (($o@@24 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |o#1@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@24) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 $o@@24) $f@@12))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@24) $f@@12))
))) (|_module.Object.inv#canCall| $Heap@@13 |o#1@@0|))))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |543|
 :pattern ( (_module.Object.inv $Heap@@13 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|)))
)) (=> (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@1|))) (or (forall (($o@@25 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#1@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@25) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 $o@@25) $f@@13))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |547|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@25) $f@@13))
)) (_module.Object.inv $Heap@@13 |o#1@@1|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |548|
 :pattern ( (_module.Object.inv $Heap@@13 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (forall ((|o#2| T@U) ) (!  (=> ($Is refType |o#2| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#2|)))) (|_module.Object.inv#canCall| $Heap@@13 |o#2|)))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |544|
 :pattern ( (_module.Object.inv $Heap@@13 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#2|)))
)))))))))) (= (_module.Universe.multipleLegalTransitions $prevHeap@@17 $Heap@@13 this@@26 |running#0@@2|)  (and (and (and (and (and (and (and (_module.Universe.globalInv $prevHeap@@17 this@@26) (_module.Universe.globalBaseInv $Heap@@13 this@@26)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|)))) (not ($IsAllocBox ($Box refType |o#0@@3|) Tclass._module.Object $prevHeap@@17)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |535|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@2|))) (or (forall (($o@@26 T@U) ($f@@14 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |o#1@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@26) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 $o@@26) $f@@14))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@26) $f@@14))
)) (_module.Object.inv $Heap@@13 |o#1@@2|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@@13 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#1@@2|)))
))) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#2@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#2@@0|))))) (_module.Object.inv $Heap@@13 |o#2@@0|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |538|
 :pattern ( (_module.Object.inv $Heap@@13 |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) (forall ((|t#0| T@U) ) (!  (=> (and ($Is refType |t#0| Tclass._module.Thread) (|Set#IsMember| |running#0@@2| ($Box refType |t#0|))) (and (= (_module.Object.universe |t#0|) this@@26) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |t#0|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |539|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |t#0|)))
 :pattern ( (_module.Object.universe |t#0|))
 :pattern ( (|Set#IsMember| |running#0@@2| ($Box refType |t#0|)))
))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 |o#3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 |o#3|) _module.OwnedObject.owner))) (forall (($o@@27 T@U) ($f@@15 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@27) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 $o@@27) $f@@15))))
 :qid |_06ThreadOwnershipdfy.43:119|
 :skolemid |540|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@27) $f@@15))
))))
 :qid |_06ThreadOwnershipdfy.43:16|
 :skolemid |541|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 |o#3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@26) _module.Universe.content)) ($Box refType |o#3|)))
))))))
 :qid |_06ThreadOwnershipdfy.32:22|
 :skolemid |550|
 :pattern ( (_module.Universe.multipleLegalTransitions $prevHeap@@17 $Heap@@13 this@@26 |running#0@@2|) ($IsGoodHeap $Heap@@13))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@14 T@U) (this@@27 T@U) (|running#0@@3| T@U) ) (!  (=> (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@18 $Heap@@14 this@@27 |running#0@@3|) (and (< 10 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@18) ($IsGoodHeap $Heap@@14)) ($HeapSucc $prevHeap@@18 $Heap@@14)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Object) ($IsAlloc refType this@@27 Tclass._module.Object $prevHeap@@18)))) ($Is refType |running#0@@3| Tclass._module.Thread)))) (and (and (and (|_module.Object.baseInv#canCall| $prevHeap@@18 this@@27) (=> (_module.Object.baseInv $prevHeap@@18 this@@27) (|_module.Universe.globalInv#canCall| $prevHeap@@18 (_module.Object.universe this@@27)))) (=> (and (_module.Object.baseInv $prevHeap@@18 this@@27) (_module.Universe.globalInv $prevHeap@@18 (_module.Object.universe this@@27))) (and (|_module.Object.baseInv#canCall| $Heap@@14 this@@27) (=> (_module.Object.baseInv $Heap@@14 this@@27) (=> (forall (($o@@28 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 this@@27) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@28) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 $o@@28) $f@@16))))
 :qid |_06ThreadOwnershipdfy.101:8|
 :skolemid |767|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@28) $f@@16))
)) (|_module.Universe.legalTransition#canCall| $prevHeap@@18 $Heap@@14 (_module.Object.universe this@@27) |running#0@@3|)))))) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@18 $Heap@@14 this@@27 |running#0@@3|)  (and (and (and (and (_module.Object.baseInv $prevHeap@@18 this@@27) (_module.Universe.globalInv $prevHeap@@18 (_module.Object.universe this@@27))) (_module.Object.baseInv $Heap@@14 this@@27)) (forall (($o@@29 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 this@@27) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@29) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 $o@@29) $f@@17))))
 :qid |_06ThreadOwnershipdfy.101:8|
 :skolemid |766|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@29) $f@@17))
))) (_module.Universe.legalTransition $prevHeap@@18 $Heap@@14 (_module.Object.universe this@@27) |running#0@@3|)))))
 :qid |_06ThreadOwnershipdfy.98:22|
 :skolemid |768|
 :pattern ( (_module.Object.goodPreAndLegalChanges $prevHeap@@18 $Heap@@14 this@@27 |running#0@@3|) ($IsGoodHeap $Heap@@14))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@15 this@@28) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $Heap@@15)))))) (=> (_module.OwnedObject.userInv $Heap@@15 this@@28) (_module.OwnedObject.localUserInv $Heap@@15 this@@28)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |952|
 :pattern ( (_module.OwnedObject.userInv $Heap@@15 this@@28))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@16 this@@29) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.OwnedObject) ($IsAlloc refType this@@29 Tclass._module.OwnedObject $Heap@@16)))))) (=> (_module.OwnedObject.inv $Heap@@16 this@@29) (_module.OwnedObject.localInv $Heap@@16 this@@29)))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |884|
 :pattern ( (_module.OwnedObject.inv $Heap@@16 this@@29))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@17 this@@30) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Thread) ($IsAlloc refType this@@30 Tclass._module.Thread $Heap@@17)))))) (=> (_module.Thread.inv $Heap@@17 this@@30) (_module.Thread.localInv $Heap@@17 this@@30)))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |973|
 :pattern ( (_module.Thread.inv $Heap@@17 this@@30))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@18 this@@31) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Object) ($IsAlloc refType this@@31 Tclass._module.Object $Heap@@18)))))) (=> (_module.Object.inv $Heap@@18 this@@31) (_module.Object.localInv $Heap@@18 this@@31)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |800|
 :pattern ( (_module.Object.inv $Heap@@18 this@@31))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@15) ($IsAllocBox bx@@15 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@15))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@19 this@@32) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.OwnedObject) ($IsAlloc refType this@@32 Tclass._module.OwnedObject $Heap@@19)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@19 this@@32) (=> (_module.OwnedObject.localInv $Heap@@19 this@@32) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 this@@32) _module.OwnedObject.closed))) (|_module.OwnedObject.userInv#canCall| $Heap@@19 this@@32)))) (= (_module.OwnedObject.inv $Heap@@19 this@@32)  (and (_module.OwnedObject.localInv $Heap@@19 this@@32) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 this@@32) _module.OwnedObject.closed))) (_module.OwnedObject.userInv $Heap@@19 this@@32))))))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |886|
 :pattern ( (_module.OwnedObject.inv $Heap@@19 this@@32) ($IsGoodHeap $Heap@@19))
))))
(assert (forall (($h@@14 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@30) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@30) _module.OwnedObject.closed)) TBool $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |871|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@30) _module.OwnedObject.closed)))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@31 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (or (= $o@@31 this@@33) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 this@@33) _module.Universe.content)) ($Box refType $o@@31)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@31) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@31) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.Universe.globalBaseInv $h0@@12 this@@33) (_module.Universe.globalBaseInv $h1@@12 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Universe.globalBaseInv $h1@@12 this@@33))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@32 T@U) ($f@@19 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@32 $f@@19))  (=> (and (or (not (= $o@@32 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@32) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2084|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@32 $f@@19))
)))
(assert (forall (($h@@15 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@33 null)) (not true)) ($Is refType $o@@33 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@33) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@33) _module.OwnedObject.owner)) Tclass._module.Object $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |869|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@33) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Universe) ($IsAlloc refType this@@34 Tclass._module.Universe $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@34 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@34) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@34) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |507|
)) (= (_module.Universe.globalInv $h0@@13 this@@34) (_module.Universe.globalInv $h1@@13 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Universe.globalInv $h1@@13 this@@34))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Object) ($IsAlloc refType this@@35 Tclass._module.Object $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@35 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@35) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@35) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |734|
)) (= (_module.Object.baseInv $h0@@14 this@@35) (_module.Object.baseInv $h1@@14 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |735|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Object.baseInv $h1@@14 this@@35))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Object) ($IsAlloc refType this@@36 Tclass._module.Object $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@36 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@36) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@36) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |790|
)) (= (_module.Object.localInv $h0@@15 this@@36) (_module.Object.localInv $h1@@15 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |791|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.localInv $h1@@15 this@@36))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Object) ($IsAlloc refType this@@37 Tclass._module.Object $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@37 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@37) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@37) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |798|
)) (= (_module.Object.inv $h0@@16 this@@37) (_module.Object.inv $h1@@16 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Object.inv $h1@@16 this@@37))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@38 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@38) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@38) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |872|
)) (= (_module.OwnedObject.localInv $h0@@17 this@@38) (_module.OwnedObject.localInv $h1@@17 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |873|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.localInv $h1@@17 this@@38))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.OwnedObject) ($IsAlloc refType this@@39 Tclass._module.OwnedObject $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@39 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@39) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@39) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |882|
)) (= (_module.OwnedObject.inv $h0@@18 this@@39) (_module.OwnedObject.inv $h1@@18 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedObject.inv $h1@@18 this@@39))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.OwnedObject) ($IsAlloc refType this@@40 Tclass._module.OwnedObject $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@40 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@40) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@40) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |938|
)) (= (_module.OwnedObject.baseUserInv $h0@@19 this@@40) (_module.OwnedObject.baseUserInv $h1@@19 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |939|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.baseUserInv $h1@@19 this@@40))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.OwnedObject) ($IsAlloc refType this@@41 Tclass._module.OwnedObject $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@41 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@41) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@41) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@41) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |942|
)) (= (_module.OwnedObject.localUserInv $h0@@20 this@@41) (_module.OwnedObject.localUserInv $h1@@20 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |943|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.localUserInv $h1@@20 this@@41))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.OwnedObject) ($IsAlloc refType this@@42 Tclass._module.OwnedObject $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@42 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@42) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@42) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@42) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |950|
)) (= (_module.OwnedObject.userInv $h0@@21 this@@42) (_module.OwnedObject.userInv $h1@@21 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |951|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.userInv $h1@@21 this@@42))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Thread) ($IsAlloc refType this@@43 Tclass._module.Thread $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@43 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@43) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@43) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |963|
)) (= (_module.Thread.localInv $h0@@22 this@@43) (_module.Thread.localInv $h1@@22 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |964|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Thread.localInv $h1@@22 this@@43))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Thread) ($IsAlloc refType this@@44 Tclass._module.Thread $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@44 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@44) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@44) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@44) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |971|
)) (= (_module.Thread.inv $h0@@23 this@@44) (_module.Thread.inv $h1@@23 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |972|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Thread.inv $h1@@23 this@@44))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@20 T@U) (this@@45 T@U) (|running#0@@4| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@19 $Heap@@20 this@@45 |running#0@@4|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@20)) ($HeapSucc $prevHeap@@19 $Heap@@20)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Universe) ($IsAlloc refType this@@45 Tclass._module.Universe $prevHeap@@19)))) ($Is refType |running#0@@4| Tclass._module.Thread)))) (and (and (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@19 $Heap@@20 this@@45 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (=> (_module.Universe.multipleLegalTransitions $prevHeap@@19 $Heap@@20 this@@45 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@45) _module.Universe.content)) ($Box refType |o#0@@4|)) (=> (not (forall (($o@@45 T@U) ($f@@31 T@U) ) (!  (=> (or (not (= $o@@45 null)) (not true)) (=> (= $o@@45 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 $o@@45) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 $o@@45) $f@@31))))
 :qid |_06ThreadOwnershipdfy.48:49|
 :skolemid |598|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 $o@@45) $f@@31))
))) (|_module.Object.inv2#canCall| $prevHeap@@19 $Heap@@20 |o#0@@4|))))
 :qid |_06ThreadOwnershipdfy.48:16|
 :skolemid |599|
 :pattern ( (_module.Object.inv2 $prevHeap@@19 $Heap@@20 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@45) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))) (= (_module.Universe.legalTransition $prevHeap@@19 $Heap@@20 this@@45 |running#0@@4|)  (and (_module.Universe.multipleLegalTransitions $prevHeap@@19 $Heap@@20 this@@45 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@45) _module.Universe.content)) ($Box refType |o#0@@5|))) (or (forall (($o@@46 T@U) ($f@@32 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 $o@@46) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 $o@@46) $f@@32))))
 :qid |_06ThreadOwnershipdfy.48:49|
 :skolemid |596|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 $o@@46) $f@@32))
)) (_module.Object.inv2 $prevHeap@@19 $Heap@@20 |o#0@@5|)))
 :qid |_06ThreadOwnershipdfy.48:16|
 :skolemid |597|
 :pattern ( (_module.Object.inv2 $prevHeap@@19 $Heap@@20 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@45) _module.Universe.content)) ($Box refType |o#0@@5|)))
))))))
 :qid |_06ThreadOwnershipdfy.45:22|
 :skolemid |600|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@19 $Heap@@20 this@@45 |running#0@@4|) ($IsGoodHeap $Heap@@20))
))))
(assert (forall ((bx@@16 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@16 (TSet t@@5)))
)))
(assert (forall (($o@@47 T@U) ) (!  (=> ($Is refType $o@@47 Tclass._module.NonOwnedObject?) ($Is refType $o@@47 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( ($Is refType $o@@47 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.NonOwnedObject?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@17 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@48 T@U) ) (!  (=> ($Is refType $o@@48 Tclass._module.OwnedObject?) ($Is refType $o@@48 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@48 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@49 T@U) ) (!  (=> ($Is refType $o@@49 Tclass._module.Thread?) ($Is refType $o@@49 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( ($Is refType $o@@49 Tclass._module.Thread?))
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
(assert (forall (($h@@16 T@U) ($o@@50 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@50 null)) (not true)) ($Is refType $o@@50 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@50) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |868|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@50) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@51 T@U) ) (! (= ($Is refType $o@@51 Tclass._module.Universe?)  (or (= $o@@51 null) (implements$_module.Universe (dtype $o@@51))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@51 Tclass._module.Universe?))
)))
(assert (forall (($o@@52 T@U) ) (! (= ($Is refType $o@@52 Tclass._module.Object?)  (or (= $o@@52 null) (implements$_module.Object (dtype $o@@52))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o@@52 Tclass._module.Object?))
)))
(assert (forall (($o@@53 T@U) ) (! (= ($Is refType $o@@53 Tclass._module.NonOwnedObject?)  (or (= $o@@53 null) (implements$_module.NonOwnedObject (dtype $o@@53))))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( ($Is refType $o@@53 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@54 T@U) ) (! (= ($Is refType $o@@54 Tclass._module.OwnedObject?)  (or (= $o@@54 null) (implements$_module.OwnedObject (dtype $o@@54))))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( ($Is refType $o@@54 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@17 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@55 null)) (not true)) ($Is refType $o@@55 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@55) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@55) _module.Universe.content)) (TSet Tclass._module.Object) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@55) _module.Universe.content)))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@21 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@20 $Heap@@21 this@@46) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@21)) ($HeapSucc $prevHeap@@20 $Heap@@21)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Thread) ($IsAlloc refType this@@46 Tclass._module.Thread $prevHeap@@20)))))) (=> (_module.Thread.inv2 $prevHeap@@20 $Heap@@21 this@@46) (_module.Thread.localInv2 $prevHeap@@20 $Heap@@21 this@@46)))
 :qid |_06ThreadOwnershipdfy.217:22|
 :skolemid |996|
 :pattern ( (_module.Thread.inv2 $prevHeap@@20 $Heap@@21 this@@46))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@22 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@21 $Heap@@22 this@@47) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@22)) ($HeapSucc $prevHeap@@21 $Heap@@22)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.OwnedObject) ($IsAlloc refType this@@47 Tclass._module.OwnedObject $prevHeap@@21)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@21 $Heap@@22 this@@47) (_module.OwnedObject.localUserInv2 $prevHeap@@21 $Heap@@22 this@@47)))
 :qid |_06ThreadOwnershipdfy.190:22|
 :skolemid |956|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@21 $Heap@@22 this@@47))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@23 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@22 $Heap@@23 this@@48) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@23)) ($HeapSucc $prevHeap@@22 $Heap@@23)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $prevHeap@@22)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@22 $Heap@@23 this@@48) (_module.OwnedObject.localInv2 $prevHeap@@22 $Heap@@23 this@@48)))
 :qid |_06ThreadOwnershipdfy.145:22|
 :skolemid |909|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@22 $Heap@@23 this@@48))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@24 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@23 $Heap@@24 this@@49) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@23 $Heap@@24)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Object) ($IsAlloc refType this@@49 Tclass._module.Object $prevHeap@@23)))))) (=> (_module.Object.inv2 $prevHeap@@23 $Heap@@24 this@@49) (_module.Object.localInv2 $prevHeap@@23 $Heap@@24 this@@49)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |804|
 :pattern ( (_module.Object.inv2 $prevHeap@@23 $Heap@@24 this@@49))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@25 this@@50) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Thread) ($IsAlloc refType this@@50 Tclass._module.Thread $Heap@@25)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@25 this@@50)) (= (_module.Thread.localInv $Heap@@25 this@@50)  (and true (_module.Object.baseInv $Heap@@25 this@@50)))))
 :qid |_06ThreadOwnershipdfy.207:19|
 :skolemid |967|
 :pattern ( (_module.Thread.localInv $Heap@@25 this@@50) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@26 this@@51) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Thread) ($IsAlloc refType this@@51 Tclass._module.Thread $Heap@@26)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@26 this@@51)) (= (_module.Thread.inv $Heap@@26 this@@51)  (and true (_module.Thread.localInv $Heap@@26 this@@51)))))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |975|
 :pattern ( (_module.Thread.inv $Heap@@26 this@@51) ($IsGoodHeap $Heap@@26))
))))
(assert (forall (($h@@18 T@U) ($o@@56 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@56 null)) (not true)) ($Is refType $o@@56 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@56) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@56) _module.Universe.content)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@27 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@24 $Heap@@27 this@@52) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@24 $Heap@@27)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.OwnedObject) ($IsAlloc refType this@@52 Tclass._module.OwnedObject $prevHeap@@24)))))) (and (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))
 (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@24 $Heap@@27 this@@52) (=> (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@27 this@@52) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap@@24 $Heap@@27 this@@52) (=> (_module.OwnedObject.userInv2 $prevHeap@@24 $Heap@@27 this@@52) (and (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (and (|_module.OwnedObject.userFieldsUnchanged#canCall| $prevHeap@@24 $Heap@@27 this@@52) (=> (not (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@27 this@@52)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@24) (|_module.Object.localInv2#canCall| $prevHeap@@24 $Heap@@27 |currOwner#0|)))))) (=> (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (or (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@27 this@@52) (and true (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@24) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 |currOwner#0|))))) (and (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))) (|_module.Object.localInv2#canCall| $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))) (=> (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))) (and (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.userFieldsOwnedBy#canCall| $Heap@@27 this@@52 this@@52)))) (=> (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed)))) (and true (_module.OwnedObject.userFieldsOwnedBy $Heap@@27 this@@52 this@@52))) (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.userFieldsOwnedBy#canCall| $prevHeap@@24 this@@52 this@@52)))) (=> (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (and true (_module.OwnedObject.userFieldsOwnedBy $prevHeap@@24 this@@52 this@@52))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv2#canCall| $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner))) (and (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@24) (|_module.Object.localInv2#canCall| $prevHeap@@24 $Heap@@27 |currOwner#0|)) (=> (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@24) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 |currOwner#0|)) (|_module.Object.localInv#canCall| $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))))))))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap@@24 $Heap@@27 this@@52) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))
 (and (and (and (and (and (and (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@27 this@@52) (_module.OwnedObject.userInv2 $prevHeap@@24 $Heap@@27 this@@52)) (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (or (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@27 this@@52) (and true (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@24) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 |currOwner#0@@0|)))))) (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner)))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed)))) (and true (_module.OwnedObject.userFieldsOwnedBy $Heap@@27 this@@52 this@@52)))) (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.closed))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.closed))))) (and true (_module.OwnedObject.userFieldsOwnedBy $prevHeap@@24 this@@52 this@@52)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner))) (_module.Object.localInv $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@52) _module.OwnedObject.owner)))) (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@24) (_module.Object.localInv2 $prevHeap@@24 $Heap@@27 |currOwner#0@@0|))) (_module.Object.localInv $Heap@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@52) _module.OwnedObject.owner))))))))))
 :qid |_06ThreadOwnershipdfy.145:22|
 :skolemid |911|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@24 $Heap@@27 this@@52) ($IsGoodHeap $Heap@@27))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@28 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@25 $Heap@@28 this@@53) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@25 $Heap@@28)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $prevHeap@@25)))))) (and (|_module.Thread.localInv2#canCall| $prevHeap@@25 $Heap@@28 this@@53) (= (_module.Thread.inv2 $prevHeap@@25 $Heap@@28 this@@53) (_module.Thread.localInv2 $prevHeap@@25 $Heap@@28 this@@53))))
 :qid |_06ThreadOwnershipdfy.217:22|
 :skolemid |998|
 :pattern ( (_module.Thread.inv2 $prevHeap@@25 $Heap@@28 this@@53) ($IsGoodHeap $Heap@@28))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun this@@54 () T@U)
(declare-fun $Heap@@29 () T@U)
(declare-fun |running#0@@5| () T@U)
(set-info :boogie-vc-id Impl$$_module.Thread.admissibility)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Thread.inv2#canCall| previous$Heap current$Heap this@@54) (or (_module.Thread.inv2 previous$Heap current$Heap this@@54) (=> (|_module.Thread.localInv2#canCall| previous$Heap current$Heap this@@54) (or (_module.Thread.localInv2 previous$Heap current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Thread.inv2#canCall| previous$Heap current$Heap this@@54) (or (_module.Thread.inv2 previous$Heap current$Heap this@@54) (=> (|_module.Thread.localInv2#canCall| previous$Heap current$Heap this@@54) (or (_module.Thread.localInv2 previous$Heap current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (=> (|_module.Object.baseInv#canCall| current$Heap this@@54) (or (_module.Object.baseInv current$Heap this@@54) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType this@@54))))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (=> (|_module.Object.baseInv#canCall| current$Heap this@@54) (or (_module.Object.baseInv current$Heap this@@54) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType this@@54)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (=> (|_module.Object.baseInv#canCall| current$Heap this@@54) (or (_module.Object.baseInv current$Heap this@@54) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@54)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@54)) (forall ((|o#55| T@U) ) (!  (=> (and ($Is refType |o#55| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#55|))) (and (= (_module.Object.universe |o#55|) (_module.Object.universe this@@54)) (or (not (= |o#55| (_module.Object.universe this@@54))) (not true))))
 :qid |_06ThreadOwnershipdfy.16:16|
 :skolemid |1144|
 :pattern ( (_module.Object.universe |o#55|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#55|)))
))))))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (=> (|_module.Object.baseInv#canCall| current$Heap this@@54) (or (_module.Object.baseInv current$Heap this@@54) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@54)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@54)) (forall ((|o#55@@0| T@U) ) (!  (=> (and ($Is refType |o#55@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#55@@0|))) (and (= (_module.Object.universe |o#55@@0|) (_module.Object.universe this@@54)) (or (not (= |o#55@@0| (_module.Object.universe this@@54))) (not true))))
 :qid |_06ThreadOwnershipdfy.16:16|
 :skolemid |1144|
 :pattern ( (_module.Object.universe |o#55@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#55@@0|)))
)))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Thread.inv#canCall| current$Heap this@@54) (or (_module.Thread.inv current$Heap this@@54) (=> (|_module.Thread.localInv#canCall| current$Heap this@@54) (or (_module.Thread.localInv current$Heap this@@54) (=> (|_module.Object.baseInv#canCall| current$Heap this@@54) (or (_module.Object.baseInv current$Heap this@@54) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@54)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@54)) (forall ((|o#56| T@U) ) (!  (=> (and ($Is refType |o#56| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#56|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#56|) _module.OwnedObject.owner)) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#56|) _module.OwnedObject.closed)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#56|) _module.OwnedObject.owner)) Tclass._module.Thread))))
 :qid |_06ThreadOwnershipdfy.17:16|
 :skolemid |1145|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#56|) _module.OwnedObject.closed)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#56|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@54)) _module.Universe.content)) ($Box refType |o#56|)))
))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@29) ($IsHeapAnchor $Heap@@29)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Thread) ($IsAlloc refType this@@54 Tclass._module.Thread previous$Heap)))) (and (and ($Is refType |running#0@@5| Tclass._module.Thread) ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap)) (= 11 $FunctionContextHeight))) (and (and (and (= previous$Heap $Heap@@29) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap)) (and (and (|_module.Object.goodPreAndLegalChanges#canCall| previous$Heap current$Heap this@@54 |running#0@@5|) (and (_module.Object.goodPreAndLegalChanges previous$Heap current$Heap this@@54 |running#0@@5|) (and (and (and (and (_module.Object.baseInv previous$Heap this@@54) (_module.Universe.globalInv previous$Heap (_module.Object.universe this@@54))) (_module.Object.baseInv current$Heap this@@54)) (forall (($o@@57 T@U) ($f@@33 T@U) ) (!  (=> (or (not (= $o@@57 null)) (not true)) (=> (= $o@@57 this@@54) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@57) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap $o@@57) $f@@33))))
 :qid |_06ThreadOwnershipdfy.101:8|
 :skolemid |1143|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@57) $f@@33))
))) (_module.Universe.legalTransition previous$Heap current$Heap (_module.Object.universe this@@54) |running#0@@5|)))) (= (ControlFlow 0 8) 2)))) anon0_correct)))
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
