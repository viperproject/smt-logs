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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
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
(declare-fun class._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun class._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$NonOwnedObject () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$DoubleReadMethod () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$closed () T@U)
(declare-fun field$value () T@U)
(declare-fun field$programCounter () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
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
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.DoubleReadMethod? () T@U)
(declare-fun _module.DoubleReadMethod.localUserInv (T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.DoubleReadMethod () T@U)
(declare-fun _module.DoubleReadMethod.counter () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.DoubleReadMethod.programCounter () T@U)
(declare-fun _module.DoubleReadMethod.initial__value () T@U)
(declare-fun _module.AtomicCounter.value () T@U)
(declare-fun _module.DoubleReadMethod.final__value () T@U)
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
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.userInv (T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.baseUserInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.AtomicCounter.userFieldsUnchanged (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.userFieldsUnchanged (T@U T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.userInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userFieldsOwnedBy (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userFieldsOwnedBy#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userFieldsUnchanged#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.userFieldsUnchanged#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userFieldsOwnedBy (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.DoubleReadMethod.userFieldsOwnedBy (T@U T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.userFieldsOwnedBy#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userFieldsOwnedBy#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.NonOwnedObject Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.Object? Tagclass._module.NonOwnedObject? class._module.OwnedObject? Tagclass._module.OwnedObject? Tagclass._module.Thread? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod tytagFamily$Universe tytagFamily$NonOwnedObject tytagFamily$OwnedObject tytagFamily$Object tytagFamily$Thread tytagFamily$AtomicCounter tytagFamily$DoubleReadMethod field$content field$owner field$closed field$value field$programCounter field$counter field$initial_value field$final_value)
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
(assert (= (Tag TInt) TagInt))
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
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.DoubleReadMethod?))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@1 Tclass._module.DoubleReadMethod $Heap@@0)))))) (= (_module.DoubleReadMethod.localUserInv $Heap@@0 this@@1)  (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.counter))) _module.OwnedObject.owner)) this@@1) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.programCounter))) (LitInt 4)))) (=> (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.programCounter)))) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))))))
 :qid |_06ThreadOwnershipdfy.367:19|
 :skolemid |1737|
 :pattern ( (_module.DoubleReadMethod.localUserInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@2) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@2) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@2) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0@@0|)))
 :qid |_06ThreadOwnershipdfy.23:16|
 :skolemid |512|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@2)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@2) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@1 |o#0@@1|))
 :qid |_06ThreadOwnershipdfy.23:16|
 :skolemid |511|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_06ThreadOwnershipdfy.21:19|
 :skolemid |513|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Thread?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType $o@@0 Tclass._module.Thread?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.AtomicCounter?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o@@1 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.DoubleReadMethod?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.DoubleReadMethod?)))
 :qid |unknown.0:0|
 :skolemid |1701|
 :pattern ( ($Is refType $o@@2 Tclass._module.DoubleReadMethod?))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $h0@@0)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@0 $h0@@0 this@@3 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |592|
)) (= (_module.Universe.legalTransition $prevHeap@@0 $h0@@0 this@@3 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@0 $h1@@0 this@@3 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |593|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.legalTransition $prevHeap@@0 $h1@@0 this@@3 |running#0@@0|))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) (|running#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $h0@@1)))) (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@1 $h0@@1 this@@4 |running#0@@1|) (and ($Is refType |running#0@@1| Tclass._module.Thread) ($IsAlloc refType |running#0@@1| Tclass._module.Thread $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@4 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@4) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |762|
)) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h0@@1 this@@4 |running#0@@1|) (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h1@@1 this@@4 |running#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |763|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.goodPreAndLegalChanges $prevHeap@@1 $h1@@1 this@@4 |running#0@@1|))
)))
(assert (forall (($h T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.OwnedObject?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.closed)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |870|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.closed)))
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
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.AtomicCounter? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.AtomicCounter? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.DoubleReadMethod? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.DoubleReadMethod? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@7) ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@7))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Thread $h@@9) ($IsAlloc refType |c#0@@3| Tclass._module.Thread? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Thread $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Thread? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter $h@@10) ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter? $h@@10))
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter? $h@@10))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.DoubleReadMethod $h@@11) ($IsAlloc refType |c#0@@5| Tclass._module.DoubleReadMethod? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.DoubleReadMethod $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.DoubleReadMethod? $h@@11))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@2 this@@5) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@2 this@@5) (_module.AtomicCounter.baseUserInv $Heap@@2 this@@5)))
 :qid |_06ThreadOwnershipdfy.186:19|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@5) ($Is refType this@@5 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@5) (_module.AtomicCounter.baseUserInv $Heap@@2 this@@5) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@3 this@@6) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@6) (_module.AtomicCounter.localUserInv $Heap@@3 this@@6)))
 :qid |_06ThreadOwnershipdfy.187:19|
 :skolemid |1481|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@6) ($Is refType this@@6 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@6) (_module.AtomicCounter.localUserInv $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@4 this@@7) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@7) (_module.DoubleReadMethod.localUserInv $Heap@@4 this@@7)))
 :qid |_06ThreadOwnershipdfy.187:19|
 :skolemid |1738|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@7) ($Is refType this@@7 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@7) (_module.DoubleReadMethod.localUserInv $Heap@@4 this@@7) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@5 this@@8) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv $Heap@@5 this@@8) (_module.AtomicCounter.userInv $Heap@@5 this@@8)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |1488|
 :pattern ( (_module.OwnedObject.userInv $Heap@@5 this@@8) ($Is refType this@@8 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.userInv $Heap@@5 this@@8) (_module.AtomicCounter.userInv $Heap@@5 this@@8) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv#canCall| $Heap@@6 this@@9) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.userInv $Heap@@6 this@@9) (_module.DoubleReadMethod.userInv $Heap@@6 this@@9)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |1745|
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@9) ($Is refType this@@9 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@9) (_module.DoubleReadMethod.userInv $Heap@@6 this@@9) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.baseUserInv#canCall| $Heap@@7 this@@10) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.baseUserInv $Heap@@7 this@@10) (_module.DoubleReadMethod.baseUserInv $Heap@@7 this@@10)))
 :qid |_06ThreadOwnershipdfy.186:19|
 :skolemid |1731|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@7 this@@10) ($Is refType this@@10 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@7 this@@10) (_module.DoubleReadMethod.baseUserInv $Heap@@7 this@@10) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@8 this@@11) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@8 this@@11) (_module.OwnedObject.localInv $Heap@@8 this@@11)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |877|
 :pattern ( (_module.Object.localInv $Heap@@8 this@@11) ($Is refType this@@11 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.localInv $Heap@@8 this@@11) (_module.OwnedObject.localInv $Heap@@8 this@@11) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@9 this@@12) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@9 this@@12) (_module.Thread.localInv $Heap@@9 this@@12)))
 :qid |_06ThreadOwnershipdfy.112:19|
 :skolemid |968|
 :pattern ( (_module.Object.localInv $Heap@@9 this@@12) ($Is refType this@@12 Tclass._module.Thread) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.localInv $Heap@@9 this@@12) (_module.Thread.localInv $Heap@@9 this@@12) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@10 this@@13) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@10 this@@13) (_module.OwnedObject.inv $Heap@@10 this@@13)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |887|
 :pattern ( (_module.Object.inv $Heap@@10 this@@13) ($Is refType this@@13 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.inv $Heap@@10 this@@13) (_module.OwnedObject.inv $Heap@@10 this@@13) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@11 this@@14) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@11 this@@14) (_module.Thread.inv $Heap@@11 this@@14)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |976|
 :pattern ( (_module.Object.inv $Heap@@11 this@@14) ($Is refType this@@14 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.inv $Heap@@11 this@@14) (_module.Thread.inv $Heap@@11 this@@14) ($IsGoodHeap $Heap@@11))
))))
(assert (= (FDim _module.AtomicCounter.value) 0))
(assert (= (FieldOfDecl class._module.AtomicCounter? field$value) _module.AtomicCounter.value))
(assert  (not ($IsGhostField _module.AtomicCounter.value)))
(assert (= (FDim _module.DoubleReadMethod.programCounter) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$programCounter) _module.DoubleReadMethod.programCounter))
(assert  (not ($IsGhostField _module.DoubleReadMethod.programCounter)))
(assert (= (FDim _module.DoubleReadMethod.counter) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$counter) _module.DoubleReadMethod.counter))
(assert  (not ($IsGhostField _module.DoubleReadMethod.counter)))
(assert (= (FDim _module.DoubleReadMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$initial_value) _module.DoubleReadMethod.initial__value))
(assert  (not ($IsGhostField _module.DoubleReadMethod.initial__value)))
(assert (= (FDim _module.DoubleReadMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$final_value) _module.DoubleReadMethod.final__value))
(assert  (not ($IsGhostField _module.DoubleReadMethod.final__value)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@6 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@6) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@6) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |794|
)) (= (_module.Object.localInv2 $prevHeap@@2 $h0@@2 this@@15) (_module.Object.localInv2 $prevHeap@@2 $h1@@2 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |795|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.localInv2 $prevHeap@@2 $h1@@2 this@@15))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@7 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@7) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |802|
)) (= (_module.Object.inv2 $prevHeap@@3 $h0@@3 this@@16) (_module.Object.inv2 $prevHeap@@3 $h1@@3 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |803|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.inv2 $prevHeap@@3 $h1@@3 this@@16))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.OwnedObject) ($IsAlloc refType this@@17 Tclass._module.OwnedObject $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@8 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@8) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |899|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@4 $h0@@4 this@@17) (_module.OwnedObject.localInv2 $prevHeap@@4 $h1@@4 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |900|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.OwnedObject.localInv2 $prevHeap@@4 $h1@@4 this@@17))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.OwnedObject) ($IsAlloc refType this@@18 Tclass._module.OwnedObject $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |907|
)) (= (_module.OwnedObject.inv2 $prevHeap@@5 $h0@@5 this@@18) (_module.OwnedObject.inv2 $prevHeap@@5 $h1@@5 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |908|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.OwnedObject.inv2 $prevHeap@@5 $h1@@5 this@@18))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@10 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@10) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |934|
)) (= (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h0@@6 this@@19) (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h1@@6 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |935|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.userFieldsUnchanged $prevHeap@@6 $h1@@6 this@@19))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@11 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@11) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |946|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h0@@7 this@@20) (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h1@@7 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |947|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.localUserInv2 $prevHeap@@7 $h1@@7 this@@20))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@12 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@12) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |954|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@8 $h0@@8 this@@21) (_module.OwnedObject.userInv2 $prevHeap@@8 $h1@@8 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |955|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.OwnedObject.userInv2 $prevHeap@@8 $h1@@8 this@@21))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@13 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@13) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |987|
)) (= (_module.Thread.localInv2 $prevHeap@@9 $h0@@9 this@@22) (_module.Thread.localInv2 $prevHeap@@9 $h1@@9 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |988|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.localInv2 $prevHeap@@9 $h1@@9 this@@22))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@14 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@14) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@14) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |994|
)) (= (_module.Thread.inv2 $prevHeap@@10 $h0@@10 this@@23) (_module.Thread.inv2 $prevHeap@@10 $h1@@10 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |995|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.inv2 $prevHeap@@10 $h1@@10 this@@23))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.AtomicCounter) ($IsAlloc refType this@@24 Tclass._module.AtomicCounter $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@15 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@15) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@15) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@11 $h0@@11 this@@24) (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@11 $h1@@11 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@11 $h1@@11 this@@24))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.AtomicCounter) ($IsAlloc refType this@@25 Tclass._module.AtomicCounter $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@16 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@16) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@16) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1491|
)) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@12 $h0@@12 this@@25) (_module.AtomicCounter.localUserInv2 $prevHeap@@12 $h1@@12 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1492|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.AtomicCounter.localUserInv2 $prevHeap@@12 $h1@@12 this@@25))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.AtomicCounter) ($IsAlloc refType this@@26 Tclass._module.AtomicCounter $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@17 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@17) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@17) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1498|
)) (= (_module.AtomicCounter.userInv2 $prevHeap@@13 $h0@@13 this@@26) (_module.AtomicCounter.userInv2 $prevHeap@@13 $h1@@13 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1499|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.AtomicCounter.userInv2 $prevHeap@@13 $h1@@13 this@@26))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@27 Tclass._module.DoubleReadMethod $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@18 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@18) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@18) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1719|
)) (= (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@14 $h0@@14 this@@27) (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@14 $h1@@14 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1720|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@14 $h1@@14 this@@27))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@28 Tclass._module.DoubleReadMethod $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@19 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@19) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@19) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1748|
)) (= (_module.DoubleReadMethod.localUserInv2 $prevHeap@@15 $h0@@15 this@@28) (_module.DoubleReadMethod.localUserInv2 $prevHeap@@15 $h1@@15 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1749|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.DoubleReadMethod.localUserInv2 $prevHeap@@15 $h1@@15 this@@28))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@29 Tclass._module.DoubleReadMethod $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@20 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@20) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@20) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1755|
)) (= (_module.DoubleReadMethod.userInv2 $prevHeap@@16 $h0@@16 this@@29) (_module.DoubleReadMethod.userInv2 $prevHeap@@16 $h1@@16 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1756|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.DoubleReadMethod.userInv2 $prevHeap@@16 $h1@@16 this@@29))
)))
(assert (forall (($o@@21 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@21 Tclass._module.Universe? $h@@12)  (or (= $o@@21 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@21) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.Universe? $h@@12))
)))
(assert (forall (($o@@22 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@22 Tclass._module.Object? $h@@13)  (or (= $o@@22 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Object? $h@@13))
)))
(assert (forall (($o@@23 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@23 Tclass._module.NonOwnedObject? $h@@14)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.NonOwnedObject? $h@@14))
)))
(assert (forall (($o@@24 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $h@@15)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $h@@15))
)))
(assert (forall (($o@@25 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@25 Tclass._module.Thread? $h@@16)  (or (= $o@@25 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@25) alloc)))))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType $o@@25 Tclass._module.Thread? $h@@16))
)))
(assert (forall (($o@@26 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@26 Tclass._module.AtomicCounter? $h@@17)  (or (= $o@@26 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@26) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@26 Tclass._module.AtomicCounter? $h@@17))
)))
(assert (forall (($o@@27 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@27 Tclass._module.DoubleReadMethod? $h@@18)  (or (= $o@@27 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@27) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1702|
 :pattern ( ($IsAlloc refType $o@@27 Tclass._module.DoubleReadMethod? $h@@18))
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
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@30 T@U) (|owner#0| T@U) ) (!  (=> (or (|_module.AtomicCounter.userFieldsOwnedBy#canCall| $Heap@@12 this@@30 |owner#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.AtomicCounter) ($IsAlloc refType this@@30 Tclass._module.AtomicCounter $Heap@@12)))) ($Is refType |owner#0| Tclass._module.Object)))) (= (_module.AtomicCounter.userFieldsOwnedBy $Heap@@12 this@@30 |owner#0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_06ThreadOwnershipdfy.296:19|
 :skolemid |1466|
 :pattern ( (_module.AtomicCounter.userFieldsOwnedBy $Heap@@12 this@@30 |owner#0|) ($IsGoodHeap $Heap@@12))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@13 this@@31) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.AtomicCounter) ($IsAlloc refType this@@31 Tclass._module.AtomicCounter $Heap@@13)))))) (= (_module.AtomicCounter.baseUserInv $Heap@@13 this@@31) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_06ThreadOwnershipdfy.292:19|
 :skolemid |1459|
 :pattern ( (_module.AtomicCounter.baseUserInv $Heap@@13 this@@31) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@14 this@@32) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.AtomicCounter) ($IsAlloc refType this@@32 Tclass._module.AtomicCounter $Heap@@14)))))) (= (_module.AtomicCounter.localUserInv $Heap@@14 this@@32) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_06ThreadOwnershipdfy.303:19|
 :skolemid |1480|
 :pattern ( (_module.AtomicCounter.localUserInv $Heap@@14 this@@32) ($IsGoodHeap $Heap@@14))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@15 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.AtomicCounter.userFieldsUnchanged#canCall| $prevHeap@@17 $Heap@@15 this@@33) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@17) ($IsGoodHeap $Heap@@15)) ($HeapSucc $prevHeap@@17 $Heap@@15)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.AtomicCounter) ($IsAlloc refType this@@33 Tclass._module.AtomicCounter $prevHeap@@17)))))) (= (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@17 $Heap@@15 this@@33) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@33) _module.AtomicCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@33) _module.AtomicCounter.value))))))
 :qid |_06ThreadOwnershipdfy.299:22|
 :skolemid |1473|
 :pattern ( (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@17 $Heap@@15 this@@33) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@16 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@18 $Heap@@16 this@@34) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@18) ($IsGoodHeap $Heap@@16)) ($HeapSucc $prevHeap@@18 $Heap@@16)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.AtomicCounter) ($IsAlloc refType this@@34 Tclass._module.AtomicCounter $prevHeap@@18)))))) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@18 $Heap@@16 this@@34) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 this@@34) _module.AtomicCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@34) _module.AtomicCounter.value))))))
 :qid |_06ThreadOwnershipdfy.310:22|
 :skolemid |1495|
 :pattern ( (_module.AtomicCounter.localUserInv2 $prevHeap@@18 $Heap@@16 this@@34) ($IsGoodHeap $Heap@@16))
))))
(assert (forall (($h@@19 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@28) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@28) _module.AtomicCounter.value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@28) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@20 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@29) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@29) _module.DoubleReadMethod.programCounter)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1704|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@29) _module.DoubleReadMethod.programCounter)))
)))
(assert (forall (($h@@21 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@30) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@30) _module.DoubleReadMethod.initial__value)) TInt $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1708|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@30) _module.DoubleReadMethod.initial__value)))
)))
(assert (forall (($h@@22 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@31) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@31) _module.DoubleReadMethod.final__value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1710|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@31) _module.DoubleReadMethod.final__value)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@17 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.localUserInv2#canCall| $prevHeap@@19 $Heap@@17 this@@35) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@19 $Heap@@17)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@35 Tclass._module.DoubleReadMethod $prevHeap@@19)))))) (= (_module.DoubleReadMethod.localUserInv2 $prevHeap@@19 $Heap@@17 this@@35)  (and true (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@35) _module.DoubleReadMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@35) _module.DoubleReadMethod.programCounter)))))))
 :qid |_06ThreadOwnershipdfy.380:22|
 :skolemid |1752|
 :pattern ( (_module.DoubleReadMethod.localUserInv2 $prevHeap@@19 $Heap@@17 this@@35) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@18 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@20 $Heap@@18 this@@36) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@18)) ($HeapSucc $prevHeap@@20 $Heap@@18)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $prevHeap@@20)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@36) _module.OwnedObject.closed))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@36) _module.OwnedObject.closed))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@20 $Heap@@18 this@@36)))) (= (_module.OwnedObject.localInv2 $prevHeap@@20 $Heap@@18 this@@36)  (and true (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@36) _module.OwnedObject.closed))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@36) _module.OwnedObject.closed)))) (_module.OwnedObject.localUserInv2 $prevHeap@@20 $Heap@@18 this@@36))))))
 :qid |_06ThreadOwnershipdfy.142:22|
 :skolemid |903|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@20 $Heap@@18 this@@36) ($IsGoodHeap $Heap@@18))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@1) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@5 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@23 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@32 null)) (not true)) ($Is refType $o@@32 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@32) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@32) Tclass._module.Universe $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (_module.Object.universe $o@@32) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@32) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) ($Is refType $o@@33 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@33) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Object.universe $o@@33))
))))
(assert (forall (($h@@24 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.DoubleReadMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@34) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@34) _module.DoubleReadMethod.counter)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@19 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@21 $Heap@@19 this@@37) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@37 null)) (not true)) ($Is refType this@@37 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@21 $Heap@@19 this@@37) (_module.Thread.localInv2 $prevHeap@@21 $Heap@@19 this@@37)))
 :qid |_06ThreadOwnershipdfy.113:22|
 :skolemid |992|
 :pattern ( (_module.Object.localInv2 $prevHeap@@21 $Heap@@19 this@@37) ($Is refType this@@37 Tclass._module.Thread) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.localInv2 $prevHeap@@21 $Heap@@19 this@@37) (_module.Thread.localInv2 $prevHeap@@21 $Heap@@19 this@@37) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@20 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.AtomicCounter.userFieldsUnchanged#canCall| $prevHeap@@22 $Heap@@20 this@@38) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userFieldsUnchanged $prevHeap@@22 $Heap@@20 this@@38) (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@22 $Heap@@20 this@@38)))
 :qid |_06ThreadOwnershipdfy.184:22|
 :skolemid |1474|
 :pattern ( (_module.OwnedObject.userFieldsUnchanged $prevHeap@@22 $Heap@@20 this@@38) ($Is refType this@@38 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.OwnedObject.userFieldsUnchanged $prevHeap@@22 $Heap@@20 this@@38) (_module.AtomicCounter.userFieldsUnchanged $prevHeap@@22 $Heap@@20 this@@38) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@21 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@23 $Heap@@21 this@@39) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@23 $Heap@@21 this@@39) (_module.AtomicCounter.localUserInv2 $prevHeap@@23 $Heap@@21 this@@39)))
 :qid |_06ThreadOwnershipdfy.188:22|
 :skolemid |1496|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@23 $Heap@@21 this@@39) ($Is refType this@@39 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@23 $Heap@@21 this@@39) (_module.AtomicCounter.localUserInv2 $prevHeap@@23 $Heap@@21 this@@39) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@22 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userFieldsUnchanged#canCall| $prevHeap@@24 $Heap@@22 this@@40) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@40 null)) (not true)) ($Is refType this@@40 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@22 this@@40) (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@24 $Heap@@22 this@@40)))
 :qid |_06ThreadOwnershipdfy.184:22|
 :skolemid |1724|
 :pattern ( (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@22 this@@40) ($Is refType this@@40 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.OwnedObject.userFieldsUnchanged $prevHeap@@24 $Heap@@22 this@@40) (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@24 $Heap@@22 this@@40) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@23 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.localUserInv2#canCall| $prevHeap@@25 $Heap@@23 this@@41) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@25 $Heap@@23 this@@41) (_module.DoubleReadMethod.localUserInv2 $prevHeap@@25 $Heap@@23 this@@41)))
 :qid |_06ThreadOwnershipdfy.188:22|
 :skolemid |1753|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@25 $Heap@@23 this@@41) ($Is refType this@@41 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@23))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@25 $Heap@@23 this@@41) (_module.DoubleReadMethod.localUserInv2 $prevHeap@@25 $Heap@@23 this@@41) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@24 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@26 $Heap@@24 this@@42) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@42 null)) (not true)) ($Is refType this@@42 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@26 $Heap@@24 this@@42) (_module.Thread.inv2 $prevHeap@@26 $Heap@@24 this@@42)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |999|
 :pattern ( (_module.Object.inv2 $prevHeap@@26 $Heap@@24 this@@42) ($Is refType this@@42 Tclass._module.Thread) ($IsGoodHeap $Heap@@24))
 :pattern ( (_module.Object.inv2 $prevHeap@@26 $Heap@@24 this@@42) (_module.Thread.inv2 $prevHeap@@26 $Heap@@24 this@@42) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@43 T@U) (|owner#0@@0| T@U) ) (!  (=> (or (|_module.AtomicCounter.userFieldsOwnedBy#canCall| $Heap@@25 this@@43 |owner#0@@0|) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userFieldsOwnedBy $Heap@@25 this@@43 |owner#0@@0|) (_module.AtomicCounter.userFieldsOwnedBy $Heap@@25 this@@43 |owner#0@@0|)))
 :qid |_06ThreadOwnershipdfy.183:19|
 :skolemid |1467|
 :pattern ( (_module.OwnedObject.userFieldsOwnedBy $Heap@@25 this@@43 |owner#0@@0|) ($Is refType this@@43 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@25))
 :pattern ( (_module.OwnedObject.userFieldsOwnedBy $Heap@@25 this@@43 |owner#0@@0|) (_module.AtomicCounter.userFieldsOwnedBy $Heap@@25 this@@43 |owner#0@@0|) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@26 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@27 $Heap@@26 this@@44) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@44 null)) (not true)) ($Is refType this@@44 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv2 $prevHeap@@27 $Heap@@26 this@@44) (_module.AtomicCounter.userInv2 $prevHeap@@27 $Heap@@26 this@@44)))
 :qid |_06ThreadOwnershipdfy.190:22|
 :skolemid |1503|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@27 $Heap@@26 this@@44) ($Is refType this@@44 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@26))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@27 $Heap@@26 this@@44) (_module.AtomicCounter.userInv2 $prevHeap@@27 $Heap@@26 this@@44) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@45 T@U) (|owner#0@@1| T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userFieldsOwnedBy#canCall| $Heap@@27 this@@45 |owner#0@@1|) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.userFieldsOwnedBy $Heap@@27 this@@45 |owner#0@@1|) (_module.DoubleReadMethod.userFieldsOwnedBy $Heap@@27 this@@45 |owner#0@@1|)))
 :qid |_06ThreadOwnershipdfy.183:19|
 :skolemid |1717|
 :pattern ( (_module.OwnedObject.userFieldsOwnedBy $Heap@@27 this@@45 |owner#0@@1|) ($Is refType this@@45 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@27))
 :pattern ( (_module.OwnedObject.userFieldsOwnedBy $Heap@@27 this@@45 |owner#0@@1|) (_module.DoubleReadMethod.userFieldsOwnedBy $Heap@@27 this@@45 |owner#0@@1|) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@28 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv2#canCall| $prevHeap@@28 $Heap@@28 this@@46) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.DoubleReadMethod)))) (= (_module.OwnedObject.userInv2 $prevHeap@@28 $Heap@@28 this@@46) (_module.DoubleReadMethod.userInv2 $prevHeap@@28 $Heap@@28 this@@46)))
 :qid |_06ThreadOwnershipdfy.190:22|
 :skolemid |1760|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@28 $Heap@@28 this@@46) ($Is refType this@@46 Tclass._module.DoubleReadMethod) ($IsGoodHeap $Heap@@28))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@28 $Heap@@28 this@@46) (_module.DoubleReadMethod.userInv2 $prevHeap@@28 $Heap@@28 this@@46) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@29 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@29 $Heap@@29 this@@47) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@29 $Heap@@29 this@@47) (_module.OwnedObject.localInv2 $prevHeap@@29 $Heap@@29 this@@47)))
 :qid |_06ThreadOwnershipdfy.113:22|
 :skolemid |904|
 :pattern ( (_module.Object.localInv2 $prevHeap@@29 $Heap@@29 this@@47) ($Is refType this@@47 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@29))
 :pattern ( (_module.Object.localInv2 $prevHeap@@29 $Heap@@29 this@@47) (_module.OwnedObject.localInv2 $prevHeap@@29 $Heap@@29 this@@47) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@30 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@30 $Heap@@30 this@@48) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@30 $Heap@@30 this@@48) (_module.OwnedObject.inv2 $prevHeap@@30 $Heap@@30 this@@48)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |912|
 :pattern ( (_module.Object.inv2 $prevHeap@@30 $Heap@@30 this@@48) ($Is refType this@@48 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.Object.inv2 $prevHeap@@30 $Heap@@30 this@@48) (_module.OwnedObject.inv2 $prevHeap@@30 $Heap@@30 this@@48) ($IsGoodHeap $Heap@@30))
))))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.NonOwnedObject) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.NonOwnedObject)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($IsBox bx@@7 Tclass._module.NonOwnedObject))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@9 Tclass._module.Universe?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@11 Tclass._module.Thread))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@12 Tclass._module.Object?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.NonOwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.NonOwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |854|
 :pattern ( ($IsBox bx@@13 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsBox bx@@16 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx@@17 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.DoubleReadMethod?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.DoubleReadMethod?)))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsBox bx@@18 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.DoubleReadMethod) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.DoubleReadMethod)))
 :qid |unknown.0:0|
 :skolemid |1712|
 :pattern ( ($IsBox bx@@19 Tclass._module.DoubleReadMethod))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Universe)  (and ($Is refType |c#0@@6| Tclass._module.Universe?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Object)  (and ($Is refType |c#0@@7| Tclass._module.Object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.NonOwnedObject)  (and ($Is refType |c#0@@8| Tclass._module.NonOwnedObject?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.NonOwnedObject))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.NonOwnedObject?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@9| Tclass._module.OwnedObject?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.Thread)  (and ($Is refType |c#0@@10| Tclass._module.Thread?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1198|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@11| Tclass._module.AtomicCounter?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.DoubleReadMethod)  (and ($Is refType |c#0@@12| Tclass._module.DoubleReadMethod?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.DoubleReadMethod))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.DoubleReadMethod?))
)))
(assert (forall (($h@@25 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1706|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) _module.DoubleReadMethod.counter)))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@49 T@U) (|owner#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.OwnedObject) ($IsAlloc refType this@@49 Tclass._module.OwnedObject $h0@@17)))) (or (|_module.OwnedObject.userFieldsOwnedBy#canCall| $h0@@17 this@@49 |owner#0@@2|) (and ($Is refType |owner#0@@2| Tclass._module.Object) ($IsAlloc refType |owner#0@@2| Tclass._module.Object $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@36 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@36) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@36) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |930|
)) (= (_module.OwnedObject.userFieldsOwnedBy $h0@@17 this@@49 |owner#0@@2|) (_module.OwnedObject.userFieldsOwnedBy $h1@@17 this@@49 |owner#0@@2|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |931|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.userFieldsOwnedBy $h1@@17 this@@49 |owner#0@@2|))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@50 T@U) (|owner#0@@3| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.AtomicCounter) ($IsAlloc refType this@@50 Tclass._module.AtomicCounter $h0@@18)))) (or (|_module.AtomicCounter.userFieldsOwnedBy#canCall| $h0@@18 this@@50 |owner#0@@3|) (and ($Is refType |owner#0@@3| Tclass._module.Object) ($IsAlloc refType |owner#0@@3| Tclass._module.Object $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@37 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@37) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@37) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1462|
)) (= (_module.AtomicCounter.userFieldsOwnedBy $h0@@18 this@@50 |owner#0@@3|) (_module.AtomicCounter.userFieldsOwnedBy $h1@@18 this@@50 |owner#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1463|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.AtomicCounter.userFieldsOwnedBy $h1@@18 this@@50 |owner#0@@3|))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@51 T@U) (|owner#0@@4| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@51 Tclass._module.DoubleReadMethod $h0@@19)))) (or (|_module.DoubleReadMethod.userFieldsOwnedBy#canCall| $h0@@19 this@@51 |owner#0@@4|) (and ($Is refType |owner#0@@4| Tclass._module.Object) ($IsAlloc refType |owner#0@@4| Tclass._module.Object $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@38 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@38) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@38) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1711|
)) (= (_module.DoubleReadMethod.userFieldsOwnedBy $h0@@19 this@@51 |owner#0@@4|) (_module.DoubleReadMethod.userFieldsOwnedBy $h1@@19 this@@51 |owner#0@@4|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1713|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.DoubleReadMethod.userFieldsOwnedBy $h1@@19 this@@51 |owner#0@@4|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@31 this@@52) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.OwnedObject) ($IsAlloc refType this@@52 Tclass._module.OwnedObject $Heap@@31)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@31 this@@52) (=> (_module.Object.baseInv $Heap@@31 this@@52) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.owner))) (_module.Object.universe this@@52)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 (_module.Object.universe this@@52)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@31 this@@52) (=> (_module.OwnedObject.baseUserInv $Heap@@31 this@@52) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.closed))) (|_module.OwnedObject.localUserInv#canCall| $Heap@@31 this@@52)))))))) (= (_module.OwnedObject.localInv $Heap@@31 this@@52)  (and (and (and (and (_module.Object.baseInv $Heap@@31 this@@52) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.owner))) (_module.Object.universe this@@52))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 (_module.Object.universe this@@52)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@31 this@@52)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@52) _module.OwnedObject.closed))) (_module.OwnedObject.localUserInv $Heap@@31 this@@52))))))
 :qid |_06ThreadOwnershipdfy.131:19|
 :skolemid |876|
 :pattern ( (_module.OwnedObject.localInv $Heap@@31 this@@52) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@32 this@@53) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Object) ($IsAlloc refType this@@53 Tclass._module.Object $Heap@@32)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@32 (_module.Object.universe this@@53)) _module.Universe.content)) ($Box refType this@@53)) (|_module.Universe.globalBaseInv#canCall| $Heap@@32 (_module.Object.universe this@@53))) (= (_module.Object.baseInv $Heap@@32 this@@53)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@32 (_module.Object.universe this@@53)) _module.Universe.content)) ($Box refType this@@53)) (_module.Universe.globalBaseInv $Heap@@32 (_module.Object.universe this@@53))))))
 :qid |_06ThreadOwnershipdfy.80:19|
 :skolemid |738|
 :pattern ( (_module.Object.baseInv $Heap@@32 this@@53) ($IsGoodHeap $Heap@@32))
))))
(assert (forall (($o@@39 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@39 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@39 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($IsAlloc refType $o@@39 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@40 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@40 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@41 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@41 Tclass._module.Thread? $heap@@1) ($IsAlloc refType $o@@41 Tclass._module.NonOwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsAlloc refType $o@@41 Tclass._module.Thread? $heap@@1))
)))
(assert (forall (($o@@42 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@42 Tclass._module.AtomicCounter? $heap@@2) ($IsAlloc refType $o@@42 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( ($IsAlloc refType $o@@42 Tclass._module.AtomicCounter? $heap@@2))
)))
(assert (forall (($o@@43 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@43 Tclass._module.DoubleReadMethod? $heap@@3) ($IsAlloc refType $o@@43 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsAlloc refType $o@@43 Tclass._module.DoubleReadMethod? $heap@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@33 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userFieldsUnchanged#canCall| $prevHeap@@31 $Heap@@33 this@@54) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@33)) ($HeapSucc $prevHeap@@31 $Heap@@33)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@54 Tclass._module.DoubleReadMethod $prevHeap@@31)))))) (= (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@31 $Heap@@33 this@@54)  (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@54) _module.DoubleReadMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@54) _module.DoubleReadMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@54) _module.DoubleReadMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@54) _module.DoubleReadMethod.counter)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@54) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@54) _module.DoubleReadMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@54) _module.DoubleReadMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@54) _module.DoubleReadMethod.final__value)))))))
 :qid |_06ThreadOwnershipdfy.356:22|
 :skolemid |1723|
 :pattern ( (_module.DoubleReadMethod.userFieldsUnchanged $prevHeap@@31 $Heap@@33 this@@54) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@34 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@32 $Heap@@34 this@@55) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@34)) ($HeapSucc $prevHeap@@32 $Heap@@34)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Thread) ($IsAlloc refType this@@55 Tclass._module.Thread $prevHeap@@32)))))) (= (_module.Thread.localInv2 $prevHeap@@32 $Heap@@34 this@@55) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_06ThreadOwnershipdfy.214:22|
 :skolemid |991|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@32 $Heap@@34 this@@55) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@35 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@33 $Heap@@35 this@@56) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@35)) ($HeapSucc $prevHeap@@33 $Heap@@35)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.AtomicCounter) ($IsAlloc refType this@@56 Tclass._module.AtomicCounter $prevHeap@@33)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@33 $Heap@@35 this@@56)) (= (_module.AtomicCounter.userInv2 $prevHeap@@33 $Heap@@35 this@@56)  (and true (_module.AtomicCounter.localUserInv2 $prevHeap@@33 $Heap@@35 this@@56)))))
 :qid |_06ThreadOwnershipdfy.313:22|
 :skolemid |1502|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@33 $Heap@@35 this@@56) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@36 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv2#canCall| $prevHeap@@34 $Heap@@36 this@@57) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@34) ($IsGoodHeap $Heap@@36)) ($HeapSucc $prevHeap@@34 $Heap@@36)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@57 Tclass._module.DoubleReadMethod $prevHeap@@34)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.DoubleReadMethod.localUserInv2#canCall| $prevHeap@@34 $Heap@@36 this@@57)) (= (_module.DoubleReadMethod.userInv2 $prevHeap@@34 $Heap@@36 this@@57)  (and true (_module.DoubleReadMethod.localUserInv2 $prevHeap@@34 $Heap@@36 this@@57)))))
 :qid |_06ThreadOwnershipdfy.383:22|
 :skolemid |1759|
 :pattern ( (_module.DoubleReadMethod.userInv2 $prevHeap@@34 $Heap@@36 this@@57) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@37 T@U) (this@@58 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@35 $Heap@@37 this@@58 |running#0@@2|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@37)) ($HeapSucc $prevHeap@@35 $Heap@@37)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Universe) ($IsAlloc refType this@@58 Tclass._module.Universe $prevHeap@@35)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.globalInv#canCall| $prevHeap@@35 this@@58) (=> (_module.Universe.globalInv $prevHeap@@35 this@@58) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@37 this@@58) (=> (_module.Universe.globalBaseInv $Heap@@37 this@@58) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content))) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#0@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#0@@2|)))) (not ($IsAllocBox ($Box refType |o#0@@2|) Tclass._module.Object $prevHeap@@35)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |549|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (and (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@0|)) (=> (not (forall (($o@@44 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@44 null)) (not true)) (=> (= $o@@44 |o#1@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@44) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 $o@@44) $f@@20))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@44) $f@@20))
))) (|_module.Object.inv#canCall| $Heap@@37 |o#1@@0|))))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |543|
 :pattern ( (_module.Object.inv $Heap@@37 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@0|)))
)) (=> (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@1|))) (or (forall (($o@@45 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@45 null)) (not true)) (=> (= $o@@45 |o#1@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@45) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 $o@@45) $f@@21))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |547|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@45) $f@@21))
)) (_module.Object.inv $Heap@@37 |o#1@@1|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |548|
 :pattern ( (_module.Object.inv $Heap@@37 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (forall ((|o#2| T@U) ) (!  (=> ($Is refType |o#2| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#2|)))) (|_module.Object.inv#canCall| $Heap@@37 |o#2|)))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |544|
 :pattern ( (_module.Object.inv $Heap@@37 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#2|)))
)))))))))) (= (_module.Universe.multipleLegalTransitions $prevHeap@@35 $Heap@@37 this@@58 |running#0@@2|)  (and (and (and (and (and (and (and (_module.Universe.globalInv $prevHeap@@35 this@@58) (_module.Universe.globalBaseInv $Heap@@37 this@@58)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#0@@3|)))) (not ($IsAllocBox ($Box refType |o#0@@3|) Tclass._module.Object $prevHeap@@35)))
 :qid |_06ThreadOwnershipdfy.36:16|
 :skolemid |535|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@2|))) (or (forall (($o@@46 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#1@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@46) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 $o@@46) $f@@22))))
 :qid |_06ThreadOwnershipdfy.38:49|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@46) $f@@22))
)) (_module.Object.inv $Heap@@37 |o#1@@2|)))
 :qid |_06ThreadOwnershipdfy.38:16|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@@37 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#1@@2|)))
))) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#2@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#2@@0|))))) (_module.Object.inv $Heap@@37 |o#2@@0|))
 :qid |_06ThreadOwnershipdfy.40:16|
 :skolemid |538|
 :pattern ( (_module.Object.inv $Heap@@37 |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@58) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) (forall ((|t#0| T@U) ) (!  (=> (and ($Is refType |t#0| Tclass._module.Thread) (|Set#IsMember| |running#0@@2| ($Box refType |t#0|))) (and (= (_module.Object.universe |t#0|) this@@58) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |t#0|))))
 :qid |_06ThreadOwnershipdfy.42:16|
 :skolemid |539|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |t#0|)))
 :pattern ( (_module.Object.universe |t#0|))
 :pattern ( (|Set#IsMember| |running#0@@2| ($Box refType |t#0|)))
))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#3|) _module.OwnedObject.owner))) (forall (($o@@47 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@47 null)) (not true)) (=> (= $o@@47 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@47) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 $o@@47) $f@@23))))
 :qid |_06ThreadOwnershipdfy.43:119|
 :skolemid |540|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@47) $f@@23))
))))
 :qid |_06ThreadOwnershipdfy.43:16|
 :skolemid |541|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.Universe.content)) ($Box refType |o#3|)))
))))))
 :qid |_06ThreadOwnershipdfy.32:22|
 :skolemid |550|
 :pattern ( (_module.Universe.multipleLegalTransitions $prevHeap@@35 $Heap@@37 this@@58 |running#0@@2|) ($IsGoodHeap $Heap@@37))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@38 T@U) (this@@59 T@U) (|running#0@@3| T@U) ) (!  (=> (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@36 $Heap@@38 this@@59 |running#0@@3|) (and (< 10 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@38)) ($HeapSucc $prevHeap@@36 $Heap@@38)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Object) ($IsAlloc refType this@@59 Tclass._module.Object $prevHeap@@36)))) ($Is refType |running#0@@3| Tclass._module.Thread)))) (and (and (and (|_module.Object.baseInv#canCall| $prevHeap@@36 this@@59) (=> (_module.Object.baseInv $prevHeap@@36 this@@59) (|_module.Universe.globalInv#canCall| $prevHeap@@36 (_module.Object.universe this@@59)))) (=> (and (_module.Object.baseInv $prevHeap@@36 this@@59) (_module.Universe.globalInv $prevHeap@@36 (_module.Object.universe this@@59))) (and (|_module.Object.baseInv#canCall| $Heap@@38 this@@59) (=> (_module.Object.baseInv $Heap@@38 this@@59) (=> (forall (($o@@48 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@48 null)) (not true)) (=> (= $o@@48 this@@59) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@48) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@48) $f@@24))))
 :qid |_06ThreadOwnershipdfy.101:8|
 :skolemid |767|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@48) $f@@24))
)) (|_module.Universe.legalTransition#canCall| $prevHeap@@36 $Heap@@38 (_module.Object.universe this@@59) |running#0@@3|)))))) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@36 $Heap@@38 this@@59 |running#0@@3|)  (and (and (and (and (_module.Object.baseInv $prevHeap@@36 this@@59) (_module.Universe.globalInv $prevHeap@@36 (_module.Object.universe this@@59))) (_module.Object.baseInv $Heap@@38 this@@59)) (forall (($o@@49 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@49 null)) (not true)) (=> (= $o@@49 this@@59) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@49) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@49) $f@@25))))
 :qid |_06ThreadOwnershipdfy.101:8|
 :skolemid |766|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@49) $f@@25))
))) (_module.Universe.legalTransition $prevHeap@@36 $Heap@@38 (_module.Object.universe this@@59) |running#0@@3|)))))
 :qid |_06ThreadOwnershipdfy.98:22|
 :skolemid |768|
 :pattern ( (_module.Object.goodPreAndLegalChanges $prevHeap@@36 $Heap@@38 this@@59 |running#0@@3|) ($IsGoodHeap $Heap@@38))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 TInt) (and (= ($Box intType ($Unbox intType bx@@20)) bx@@20) ($Is intType ($Unbox intType bx@@20) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@20 TInt))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 TBool) (and (= ($Box boolType ($Unbox boolType bx@@21)) bx@@21) ($Is boolType ($Unbox boolType bx@@21) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@21 TBool))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@39 this@@60) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.AtomicCounter) ($IsAlloc refType this@@60 Tclass._module.AtomicCounter $Heap@@39)))))) (=> (_module.AtomicCounter.userInv $Heap@@39 this@@60) (_module.AtomicCounter.localUserInv $Heap@@39 this@@60)))
 :qid |_06ThreadOwnershipdfy.306:19|
 :skolemid |1485|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@39 this@@60))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv#canCall| $Heap@@40 this@@61) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@61 Tclass._module.DoubleReadMethod $Heap@@40)))))) (=> (_module.DoubleReadMethod.userInv $Heap@@40 this@@61) (_module.DoubleReadMethod.localUserInv $Heap@@40 this@@61)))
 :qid |_06ThreadOwnershipdfy.376:19|
 :skolemid |1742|
 :pattern ( (_module.DoubleReadMethod.userInv $Heap@@40 this@@61))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@41 this@@62) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.OwnedObject) ($IsAlloc refType this@@62 Tclass._module.OwnedObject $Heap@@41)))))) (=> (_module.OwnedObject.userInv $Heap@@41 this@@62) (_module.OwnedObject.localUserInv $Heap@@41 this@@62)))
 :qid |_06ThreadOwnershipdfy.189:19|
 :skolemid |952|
 :pattern ( (_module.OwnedObject.userInv $Heap@@41 this@@62))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@42 this@@63) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.OwnedObject) ($IsAlloc refType this@@63 Tclass._module.OwnedObject $Heap@@42)))))) (=> (_module.OwnedObject.inv $Heap@@42 this@@63) (_module.OwnedObject.localInv $Heap@@42 this@@63)))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |884|
 :pattern ( (_module.OwnedObject.inv $Heap@@42 this@@63))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@43 this@@64) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.Thread) ($IsAlloc refType this@@64 Tclass._module.Thread $Heap@@43)))))) (=> (_module.Thread.inv $Heap@@43 this@@64) (_module.Thread.localInv $Heap@@43 this@@64)))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |973|
 :pattern ( (_module.Thread.inv $Heap@@43 this@@64))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@44 this@@65) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Object) ($IsAlloc refType this@@65 Tclass._module.Object $Heap@@44)))))) (=> (_module.Object.inv $Heap@@44 this@@65) (_module.Object.localInv $Heap@@44 this@@65)))
 :qid |_06ThreadOwnershipdfy.114:19|
 :skolemid |800|
 :pattern ( (_module.Object.inv $Heap@@44 this@@65))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@66 T@U) (|owner#0@@5| T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userFieldsOwnedBy#canCall| $Heap@@45 this@@66 |owner#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@66 Tclass._module.DoubleReadMethod $Heap@@45)))) ($Is refType |owner#0@@5| Tclass._module.Object)))) (= (_module.DoubleReadMethod.userFieldsOwnedBy $Heap@@45 this@@66 |owner#0@@5|)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@66) _module.DoubleReadMethod.counter))) _module.OwnedObject.owner)) |owner#0@@5|))))
 :qid |_06ThreadOwnershipdfy.353:19|
 :skolemid |1716|
 :pattern ( (_module.DoubleReadMethod.userFieldsOwnedBy $Heap@@45 this@@66 |owner#0@@5|) ($IsGoodHeap $Heap@@45))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@22 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@22) ($IsAllocBox bx@@22 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@22))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@46 this@@67) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.OwnedObject) ($IsAlloc refType this@@67 Tclass._module.OwnedObject $Heap@@46)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@46 this@@67) (=> (_module.OwnedObject.localInv $Heap@@46 this@@67) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@67) _module.OwnedObject.closed))) (|_module.OwnedObject.userInv#canCall| $Heap@@46 this@@67)))) (= (_module.OwnedObject.inv $Heap@@46 this@@67)  (and (_module.OwnedObject.localInv $Heap@@46 this@@67) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@67) _module.OwnedObject.closed))) (_module.OwnedObject.userInv $Heap@@46 this@@67))))))
 :qid |_06ThreadOwnershipdfy.137:19|
 :skolemid |886|
 :pattern ( (_module.OwnedObject.inv $Heap@@46 this@@67) ($IsGoodHeap $Heap@@46))
))))
(assert (forall (($h@@26 T@U) ($o@@50 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@50 null)) (not true)) ($Is refType $o@@50 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@50) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@50) _module.OwnedObject.closed)) TBool $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |871|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@50) _module.OwnedObject.closed)))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.baseUserInv#canCall| $Heap@@47 this@@68) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@68 Tclass._module.DoubleReadMethod $Heap@@47)))))) (= (_module.DoubleReadMethod.baseUserInv $Heap@@47 this@@68)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@47 (_module.Object.universe this@@68)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@47 this@@68) _module.DoubleReadMethod.counter)) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@47 this@@68) _module.DoubleReadMethod.counter))) (_module.Object.universe this@@68)))))
 :qid |_06ThreadOwnershipdfy.363:19|
 :skolemid |1730|
 :pattern ( (_module.DoubleReadMethod.baseUserInv $Heap@@47 this@@68) ($IsGoodHeap $Heap@@47))
))))
(assert (forall (($h@@27 T@U) ($o@@51 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@51 null)) (not true)) (= (dtype $o@@51) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@51) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@51) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@28 T@U) ($o@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@52) _module.DoubleReadMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1703|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@52) _module.DoubleReadMethod.programCounter)))
)))
(assert (forall (($h@@29 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@53) _module.DoubleReadMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1707|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@53) _module.DoubleReadMethod.initial__value)))
)))
(assert (forall (($h@@30 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@54) _module.DoubleReadMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1709|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@54) _module.DoubleReadMethod.final__value)))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@69 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@69 null)) (not true)) ($Is refType this@@69 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@55 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (or (= $o@@55 this@@69) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 this@@69) _module.Universe.content)) ($Box refType $o@@55)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@55) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@55) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.Universe.globalBaseInv $h0@@20 this@@69) (_module.Universe.globalBaseInv $h1@@20 this@@69))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Universe.globalBaseInv $h1@@20 this@@69))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@56 T@U) ($f@@27 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@56 $f@@27))  (=> (and (or (not (= $o@@56 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@56) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2084|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@56 $f@@27))
)))
(assert (forall (($h@@31 T@U) ($o@@57 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@57 null)) (not true)) ($Is refType $o@@57 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@57) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@57) _module.OwnedObject.owner)) Tclass._module.Object $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |869|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@57) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@70 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.Universe) ($IsAlloc refType this@@70 Tclass._module.Universe $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@58 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@58) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@58) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@58) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |507|
)) (= (_module.Universe.globalInv $h0@@21 this@@70) (_module.Universe.globalInv $h1@@21 this@@70))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Universe.globalInv $h1@@21 this@@70))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@71 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Object) ($IsAlloc refType this@@71 Tclass._module.Object $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@59 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@59) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@59) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@59) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |734|
)) (= (_module.Object.baseInv $h0@@22 this@@71) (_module.Object.baseInv $h1@@22 this@@71))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |735|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.baseInv $h1@@22 this@@71))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@72 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Object) ($IsAlloc refType this@@72 Tclass._module.Object $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@60 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@60) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@60) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |790|
)) (= (_module.Object.localInv $h0@@23 this@@72) (_module.Object.localInv $h1@@23 this@@72))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |791|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Object.localInv $h1@@23 this@@72))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@73 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Object) ($IsAlloc refType this@@73 Tclass._module.Object $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@61 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@61) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@61) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |798|
)) (= (_module.Object.inv $h0@@24 this@@73) (_module.Object.inv $h1@@24 this@@73))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.inv $h1@@24 this@@73))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@74 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.OwnedObject) ($IsAlloc refType this@@74 Tclass._module.OwnedObject $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@62 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@62) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@62) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |872|
)) (= (_module.OwnedObject.localInv $h0@@25 this@@74) (_module.OwnedObject.localInv $h1@@25 this@@74))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |873|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.OwnedObject.localInv $h1@@25 this@@74))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@75 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.OwnedObject) ($IsAlloc refType this@@75 Tclass._module.OwnedObject $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@63 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@63) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@63) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |882|
)) (= (_module.OwnedObject.inv $h0@@26 this@@75) (_module.OwnedObject.inv $h1@@26 this@@75))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.OwnedObject.inv $h1@@26 this@@75))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@76 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.OwnedObject) ($IsAlloc refType this@@76 Tclass._module.OwnedObject $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@64 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@64) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@64) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |938|
)) (= (_module.OwnedObject.baseUserInv $h0@@27 this@@76) (_module.OwnedObject.baseUserInv $h1@@27 this@@76))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |939|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedObject.baseUserInv $h1@@27 this@@76))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@77 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.OwnedObject) ($IsAlloc refType this@@77 Tclass._module.OwnedObject $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@65 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@65) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@65) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@65) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |942|
)) (= (_module.OwnedObject.localUserInv $h0@@28 this@@77) (_module.OwnedObject.localUserInv $h1@@28 this@@77))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |943|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.OwnedObject.localUserInv $h1@@28 this@@77))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@78 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.OwnedObject) ($IsAlloc refType this@@78 Tclass._module.OwnedObject $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@66 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@66) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@66) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@66) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |950|
)) (= (_module.OwnedObject.userInv $h0@@29 this@@78) (_module.OwnedObject.userInv $h1@@29 this@@78))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |951|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.OwnedObject.userInv $h1@@29 this@@78))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@79 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Thread) ($IsAlloc refType this@@79 Tclass._module.Thread $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@67 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@67) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@67) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@67) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |963|
)) (= (_module.Thread.localInv $h0@@30 this@@79) (_module.Thread.localInv $h1@@30 this@@79))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |964|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Thread.localInv $h1@@30 this@@79))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@80 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.Thread) ($IsAlloc refType this@@80 Tclass._module.Thread $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@68 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@68 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@68) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@68) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@68) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |971|
)) (= (_module.Thread.inv $h0@@31 this@@80) (_module.Thread.inv $h1@@31 this@@80))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |972|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Thread.inv $h1@@31 this@@80))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.AtomicCounter) ($IsAlloc refType this@@81 Tclass._module.AtomicCounter $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@69 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@69) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@69) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@69) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1454|
)) (= (_module.AtomicCounter.baseUserInv $h0@@32 this@@81) (_module.AtomicCounter.baseUserInv $h1@@32 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1456|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.AtomicCounter.baseUserInv $h1@@32 this@@81))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.AtomicCounter) ($IsAlloc refType this@@82 Tclass._module.AtomicCounter $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@70 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@70) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@70) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@70) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1476|
)) (= (_module.AtomicCounter.localUserInv $h0@@33 this@@82) (_module.AtomicCounter.localUserInv $h1@@33 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1477|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.AtomicCounter.localUserInv $h1@@33 this@@82))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.AtomicCounter) ($IsAlloc refType this@@83 Tclass._module.AtomicCounter $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@71 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@71) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@71) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@71) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1483|
)) (= (_module.AtomicCounter.userInv $h0@@34 this@@83) (_module.AtomicCounter.userInv $h1@@34 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1484|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.AtomicCounter.userInv $h1@@34 this@@83))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@84 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@84 Tclass._module.DoubleReadMethod $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@72 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@72) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@72) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1726|
)) (= (_module.DoubleReadMethod.baseUserInv $h0@@35 this@@84) (_module.DoubleReadMethod.baseUserInv $h1@@35 this@@84))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1727|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.DoubleReadMethod.baseUserInv $h1@@35 this@@84))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@85 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@85 Tclass._module.DoubleReadMethod $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@73 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@73) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@73) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1733|
)) (= (_module.DoubleReadMethod.localUserInv $h0@@36 this@@85) (_module.DoubleReadMethod.localUserInv $h1@@36 this@@85))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1734|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.DoubleReadMethod.localUserInv $h1@@36 this@@85))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@86 Tclass._module.DoubleReadMethod $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@74 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@74) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@74) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1740|
)) (= (_module.DoubleReadMethod.userInv $h0@@37 this@@86) (_module.DoubleReadMethod.userInv $h1@@37 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1741|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.DoubleReadMethod.userInv $h1@@37 this@@86))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@48 T@U) (this@@87 T@U) (|running#0@@4| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@37 $Heap@@48 this@@87 |running#0@@4|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@48)) ($HeapSucc $prevHeap@@37 $Heap@@48)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.Universe) ($IsAlloc refType this@@87 Tclass._module.Universe $prevHeap@@37)))) ($Is refType |running#0@@4| Tclass._module.Thread)))) (and (and (|_module.Universe.multipleLegalTransitions#canCall| $prevHeap@@37 $Heap@@48 this@@87 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (=> (_module.Universe.multipleLegalTransitions $prevHeap@@37 $Heap@@48 this@@87 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@87) _module.Universe.content)) ($Box refType |o#0@@4|)) (=> (not (forall (($o@@75 T@U) ($f@@45 T@U) ) (!  (=> (or (not (= $o@@75 null)) (not true)) (=> (= $o@@75 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 $o@@75) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 $o@@75) $f@@45))))
 :qid |_06ThreadOwnershipdfy.48:49|
 :skolemid |598|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 $o@@75) $f@@45))
))) (|_module.Object.inv2#canCall| $prevHeap@@37 $Heap@@48 |o#0@@4|))))
 :qid |_06ThreadOwnershipdfy.48:16|
 :skolemid |599|
 :pattern ( (_module.Object.inv2 $prevHeap@@37 $Heap@@48 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@87) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))) (= (_module.Universe.legalTransition $prevHeap@@37 $Heap@@48 this@@87 |running#0@@4|)  (and (_module.Universe.multipleLegalTransitions $prevHeap@@37 $Heap@@48 this@@87 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@4|))) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@87) _module.Universe.content)) ($Box refType |o#0@@5|))) (or (forall (($o@@76 T@U) ($f@@46 T@U) ) (!  (=> (or (not (= $o@@76 null)) (not true)) (=> (= $o@@76 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 $o@@76) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 $o@@76) $f@@46))))
 :qid |_06ThreadOwnershipdfy.48:49|
 :skolemid |596|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 $o@@76) $f@@46))
)) (_module.Object.inv2 $prevHeap@@37 $Heap@@48 |o#0@@5|)))
 :qid |_06ThreadOwnershipdfy.48:16|
 :skolemid |597|
 :pattern ( (_module.Object.inv2 $prevHeap@@37 $Heap@@48 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@87) _module.Universe.content)) ($Box refType |o#0@@5|)))
))))))
 :qid |_06ThreadOwnershipdfy.45:22|
 :skolemid |600|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@37 $Heap@@48 this@@87 |running#0@@4|) ($IsGoodHeap $Heap@@48))
))))
(assert (forall ((bx@@23 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@23 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@23)) bx@@23) ($Is SetType ($Unbox SetType bx@@23) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@23 (TSet t@@5)))
)))
(assert (forall (($o@@77 T@U) ) (!  (=> ($Is refType $o@@77 Tclass._module.NonOwnedObject?) ($Is refType $o@@77 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( ($Is refType $o@@77 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass._module.NonOwnedObject?) ($IsBox bx@@24 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@24 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@78 T@U) ) (!  (=> ($Is refType $o@@78 Tclass._module.OwnedObject?) ($Is refType $o@@78 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@78 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass._module.OwnedObject?) ($IsBox bx@@25 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx@@25 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@79 T@U) ) (!  (=> ($Is refType $o@@79 Tclass._module.Thread?) ($Is refType $o@@79 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( ($Is refType $o@@79 Tclass._module.Thread?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.Thread?) ($IsBox bx@@26 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($IsBox bx@@26 Tclass._module.Thread?))
)))
(assert (forall (($o@@80 T@U) ) (!  (=> ($Is refType $o@@80 Tclass._module.AtomicCounter?) ($Is refType $o@@80 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($Is refType $o@@80 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.AtomicCounter?) ($IsBox bx@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2076|
 :pattern ( ($IsBox bx@@27 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@81 T@U) ) (!  (=> ($Is refType $o@@81 Tclass._module.DoubleReadMethod?) ($Is refType $o@@81 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($Is refType $o@@81 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.DoubleReadMethod?) ($IsBox bx@@28 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( ($IsBox bx@@28 Tclass._module.DoubleReadMethod?))
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
(assert (= (Tag Tclass._module.AtomicCounter?) Tagclass._module.AtomicCounter?))
(assert (= (TagFamily Tclass._module.AtomicCounter?) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.AtomicCounter) Tagclass._module.AtomicCounter))
(assert (= (TagFamily Tclass._module.AtomicCounter) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.DoubleReadMethod?) Tagclass._module.DoubleReadMethod?))
(assert (= (TagFamily Tclass._module.DoubleReadMethod?) tytagFamily$DoubleReadMethod))
(assert (= (Tag Tclass._module.DoubleReadMethod) Tagclass._module.DoubleReadMethod))
(assert (= (TagFamily Tclass._module.DoubleReadMethod) tytagFamily$DoubleReadMethod))
(assert (forall (($h@@32 T@U) ($o@@82 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@82 null)) (not true)) ($Is refType $o@@82 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@82) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |868|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@82) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@83 T@U) ) (! (= ($Is refType $o@@83 Tclass._module.Universe?)  (or (= $o@@83 null) (implements$_module.Universe (dtype $o@@83))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@83 Tclass._module.Universe?))
)))
(assert (forall (($o@@84 T@U) ) (! (= ($Is refType $o@@84 Tclass._module.Object?)  (or (= $o@@84 null) (implements$_module.Object (dtype $o@@84))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o@@84 Tclass._module.Object?))
)))
(assert (forall (($o@@85 T@U) ) (! (= ($Is refType $o@@85 Tclass._module.NonOwnedObject?)  (or (= $o@@85 null) (implements$_module.NonOwnedObject (dtype $o@@85))))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( ($Is refType $o@@85 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@86 T@U) ) (! (= ($Is refType $o@@86 Tclass._module.OwnedObject?)  (or (= $o@@86 null) (implements$_module.OwnedObject (dtype $o@@86))))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( ($Is refType $o@@86 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@33 T@U) ($o@@87 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@87 null)) (not true)) ($Is refType $o@@87 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@87) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@87) _module.Universe.content)) (TSet Tclass._module.Object) $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@87) _module.Universe.content)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@49 T@U) (this@@88 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@38 $Heap@@49 this@@88) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@38) ($IsGoodHeap $Heap@@49)) ($HeapSucc $prevHeap@@38 $Heap@@49)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.Thread) ($IsAlloc refType this@@88 Tclass._module.Thread $prevHeap@@38)))))) (=> (_module.Thread.inv2 $prevHeap@@38 $Heap@@49 this@@88) (_module.Thread.localInv2 $prevHeap@@38 $Heap@@49 this@@88)))
 :qid |_06ThreadOwnershipdfy.217:22|
 :skolemid |996|
 :pattern ( (_module.Thread.inv2 $prevHeap@@38 $Heap@@49 this@@88))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@50 T@U) (this@@89 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@39 $Heap@@50 this@@89) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@39) ($IsGoodHeap $Heap@@50)) ($HeapSucc $prevHeap@@39 $Heap@@50)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.AtomicCounter) ($IsAlloc refType this@@89 Tclass._module.AtomicCounter $prevHeap@@39)))))) (=> (_module.AtomicCounter.userInv2 $prevHeap@@39 $Heap@@50 this@@89) (_module.AtomicCounter.localUserInv2 $prevHeap@@39 $Heap@@50 this@@89)))
 :qid |_06ThreadOwnershipdfy.313:22|
 :skolemid |1500|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@39 $Heap@@50 this@@89))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@51 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv2#canCall| $prevHeap@@40 $Heap@@51 this@@90) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@40) ($IsGoodHeap $Heap@@51)) ($HeapSucc $prevHeap@@40 $Heap@@51)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@90 Tclass._module.DoubleReadMethod $prevHeap@@40)))))) (=> (_module.DoubleReadMethod.userInv2 $prevHeap@@40 $Heap@@51 this@@90) (_module.DoubleReadMethod.localUserInv2 $prevHeap@@40 $Heap@@51 this@@90)))
 :qid |_06ThreadOwnershipdfy.383:22|
 :skolemid |1757|
 :pattern ( (_module.DoubleReadMethod.userInv2 $prevHeap@@40 $Heap@@51 this@@90))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@52 T@U) (this@@91 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@41 $Heap@@52 this@@91) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@41) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@41 $Heap@@52)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.OwnedObject) ($IsAlloc refType this@@91 Tclass._module.OwnedObject $prevHeap@@41)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@41 $Heap@@52 this@@91) (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@52 this@@91)))
 :qid |_06ThreadOwnershipdfy.190:22|
 :skolemid |956|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@41 $Heap@@52 this@@91))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@53 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@42 $Heap@@53 this@@92) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@42) ($IsGoodHeap $Heap@@53)) ($HeapSucc $prevHeap@@42 $Heap@@53)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.OwnedObject) ($IsAlloc refType this@@92 Tclass._module.OwnedObject $prevHeap@@42)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@42 $Heap@@53 this@@92) (_module.OwnedObject.localInv2 $prevHeap@@42 $Heap@@53 this@@92)))
 :qid |_06ThreadOwnershipdfy.145:22|
 :skolemid |909|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@42 $Heap@@53 this@@92))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@54 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@43 $Heap@@54 this@@93) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@43) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@43 $Heap@@54)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Object) ($IsAlloc refType this@@93 Tclass._module.Object $prevHeap@@43)))))) (=> (_module.Object.inv2 $prevHeap@@43 $Heap@@54 this@@93) (_module.Object.localInv2 $prevHeap@@43 $Heap@@54 this@@93)))
 :qid |_06ThreadOwnershipdfy.115:22|
 :skolemid |804|
 :pattern ( (_module.Object.inv2 $prevHeap@@43 $Heap@@54 this@@93))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@94 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@55 this@@94) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.AtomicCounter) ($IsAlloc refType this@@94 Tclass._module.AtomicCounter $Heap@@55)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv#canCall| $Heap@@55 this@@94)) (= (_module.AtomicCounter.userInv $Heap@@55 this@@94)  (and true (_module.AtomicCounter.localUserInv $Heap@@55 this@@94)))))
 :qid |_06ThreadOwnershipdfy.306:19|
 :skolemid |1487|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@55 this@@94) ($IsGoodHeap $Heap@@55))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@56 T@U) (this@@95 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv#canCall| $Heap@@56 this@@95) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@95 Tclass._module.DoubleReadMethod $Heap@@56)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@56 this@@95)) (= (_module.DoubleReadMethod.userInv $Heap@@56 this@@95)  (and true (_module.DoubleReadMethod.localUserInv $Heap@@56 this@@95)))))
 :qid |_06ThreadOwnershipdfy.376:19|
 :skolemid |1744|
 :pattern ( (_module.DoubleReadMethod.userInv $Heap@@56 this@@95) ($IsGoodHeap $Heap@@56))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@57 this@@96) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.Thread) ($IsAlloc refType this@@96 Tclass._module.Thread $Heap@@57)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@57 this@@96)) (= (_module.Thread.localInv $Heap@@57 this@@96)  (and true (_module.Object.baseInv $Heap@@57 this@@96)))))
 :qid |_06ThreadOwnershipdfy.207:19|
 :skolemid |967|
 :pattern ( (_module.Thread.localInv $Heap@@57 this@@96) ($IsGoodHeap $Heap@@57))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@58 this@@97) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.Thread) ($IsAlloc refType this@@97 Tclass._module.Thread $Heap@@58)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@58 this@@97)) (= (_module.Thread.inv $Heap@@58 this@@97)  (and true (_module.Thread.localInv $Heap@@58 this@@97)))))
 :qid |_06ThreadOwnershipdfy.210:19|
 :skolemid |975|
 :pattern ( (_module.Thread.inv $Heap@@58 this@@97) ($IsGoodHeap $Heap@@58))
))))
(assert (forall (($h@@34 T@U) ($o@@88 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@88 null)) (not true)) ($Is refType $o@@88 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@88) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@88) _module.Universe.content)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@59 T@U) (this@@98 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@44 $Heap@@59 this@@98) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@44) ($IsGoodHeap $Heap@@59)) ($HeapSucc $prevHeap@@44 $Heap@@59)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.OwnedObject) ($IsAlloc refType this@@98 Tclass._module.OwnedObject $prevHeap@@44)))))) (and (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))
 (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@44 $Heap@@59 this@@98) (=> (_module.OwnedObject.localInv2 $prevHeap@@44 $Heap@@59 this@@98) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap@@44 $Heap@@59 this@@98) (=> (_module.OwnedObject.userInv2 $prevHeap@@44 $Heap@@59 this@@98) (and (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (and (|_module.OwnedObject.userFieldsUnchanged#canCall| $prevHeap@@44 $Heap@@59 this@@98) (=> (not (_module.OwnedObject.userFieldsUnchanged $prevHeap@@44 $Heap@@59 this@@98)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@44) (|_module.Object.localInv2#canCall| $prevHeap@@44 $Heap@@59 |currOwner#0|)))))) (=> (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (or (_module.OwnedObject.userFieldsUnchanged $prevHeap@@44 $Heap@@59 this@@98) (and true (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@44) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 |currOwner#0|))))) (and (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))) (|_module.Object.localInv2#canCall| $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))) (=> (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))) (and (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.userFieldsOwnedBy#canCall| $Heap@@59 this@@98 this@@98)))) (=> (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed)))) (and true (_module.OwnedObject.userFieldsOwnedBy $Heap@@59 this@@98 this@@98))) (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.userFieldsOwnedBy#canCall| $prevHeap@@44 this@@98 this@@98)))) (=> (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (and true (_module.OwnedObject.userFieldsOwnedBy $prevHeap@@44 this@@98 this@@98))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv2#canCall| $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner))) (and (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@44) (|_module.Object.localInv2#canCall| $prevHeap@@44 $Heap@@59 |currOwner#0|)) (=> (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@44) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 |currOwner#0|)) (|_module.Object.localInv#canCall| $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))))))))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap@@44 $Heap@@59 this@@98) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))
 (and (and (and (and (and (and (_module.OwnedObject.localInv2 $prevHeap@@44 $Heap@@59 this@@98) (_module.OwnedObject.userInv2 $prevHeap@@44 $Heap@@59 this@@98)) (=> (or (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (or (_module.OwnedObject.userFieldsUnchanged $prevHeap@@44 $Heap@@59 this@@98) (and true (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@44) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 |currOwner#0@@0|)))))) (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))  (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner)))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed)))) (and true (_module.OwnedObject.userFieldsOwnedBy $Heap@@59 this@@98 this@@98)))) (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.closed))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.closed))))) (and true (_module.OwnedObject.userFieldsOwnedBy $prevHeap@@44 this@@98 this@@98)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner))) (_module.Object.localInv $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@98) _module.OwnedObject.owner)))) (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@44) (_module.Object.localInv2 $prevHeap@@44 $Heap@@59 |currOwner#0@@0|))) (_module.Object.localInv $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@98) _module.OwnedObject.owner))))))))))
 :qid |_06ThreadOwnershipdfy.145:22|
 :skolemid |911|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@44 $Heap@@59 this@@98) ($IsGoodHeap $Heap@@59))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@60 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@45 $Heap@@60 this@@99) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@45) ($IsGoodHeap $Heap@@60)) ($HeapSucc $prevHeap@@45 $Heap@@60)) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.Thread) ($IsAlloc refType this@@99 Tclass._module.Thread $prevHeap@@45)))))) (and (|_module.Thread.localInv2#canCall| $prevHeap@@45 $Heap@@60 this@@99) (= (_module.Thread.inv2 $prevHeap@@45 $Heap@@60 this@@99) (_module.Thread.localInv2 $prevHeap@@45 $Heap@@60 this@@99))))
 :qid |_06ThreadOwnershipdfy.217:22|
 :skolemid |998|
 :pattern ( (_module.Thread.inv2 $prevHeap@@45 $Heap@@60 this@@99) ($IsGoodHeap $Heap@@60))
))))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@100 () T@U)
(declare-fun |running#0@@5| () T@U)
(declare-fun $Heap@@61 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.DoubleReadMethod.admissibility)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null current$Heap alloc false)) (=> (and ($IsAllocBox ($Box refType this@@100) Tclass._module.Object? current$Heap) ($IsAlloc refType |running#0@@5| Tclass._module.Thread current$Heap)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType this@@100 Tclass._module.DoubleReadMethod $Heap@@61)) (=> ($IsAlloc refType this@@100 Tclass._module.DoubleReadMethod $Heap@@61) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType |running#0@@5| Tclass._module.Thread $Heap@@61)) (=> ($IsAlloc refType |running#0@@5| Tclass._module.Thread $Heap@@61) (=> (and (and (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@61 current$Heap this@@100 |running#0@@5|) (_module.Object.goodPreAndLegalChanges $Heap@@61 current$Heap this@@100 |running#0@@5|)) (and ($IsAllocBox ($Box refType this@@100) Tclass._module.OwnedObject? current$Heap) (= (ControlFlow 0 2) (- 0 1)))) ($IsAlloc refType this@@100 Tclass._module.DoubleReadMethod $Heap@@61))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@61) ($IsHeapAnchor $Heap@@61)) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@100 Tclass._module.DoubleReadMethod previous$Heap)))) (=> (and (and (and ($Is refType |running#0@@5| Tclass._module.Thread) ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap)) (= 11 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@61) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (and ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap) (= (ControlFlow 0 5) 2)))) anon0_correct))))
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
