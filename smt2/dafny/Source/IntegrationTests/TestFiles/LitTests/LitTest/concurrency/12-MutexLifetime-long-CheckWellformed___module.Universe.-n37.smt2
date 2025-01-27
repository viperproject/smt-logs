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
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun |##_module.ObjectClassKind.Thread| () T@U)
(declare-fun Tagclass._module.ObjectClassKind () T@U)
(declare-fun |##_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |##_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun tytagFamily$ObjectClassKind () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
(declare-fun field$mightPointTo () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.ObjectClassKind.Thread| () T@U)
(declare-fun |#_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |#_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Lifetime.owner () T@U)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.elements () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ObjectClassKind () T@U)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun |$IsA#_module.ObjectClassKind| (T@U) Bool)
(declare-fun _module.Object.objectClassKind (T@U) T@U)
(declare-fun |_module.Object.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Thread.objectClassKind (T@U) T@U)
(declare-fun |_module.Thread.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.objectClassKind (T@U) T@U)
(declare-fun |_module.OwnedObject.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Lifetime.objectClassKind (T@U) T@U)
(declare-fun |_module.Lifetime.objectClassKind#canCall| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? Tagclass._module.Lifetime? Tagclass._module.OwnedObject? class._module.Universe? |##_module.ObjectClassKind.Thread| Tagclass._module.ObjectClassKind |##_module.ObjectClassKind.OwnedObject| |##_module.ObjectClassKind.Lifetime| class._module.OwnedObject? class._module.Lifetime? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$ObjectClassKind field$content field$owner field$mightPointFrom field$elements field$mightPointTo)
)
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
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
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
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (=> (or (not (= |o#0| this)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap |o#0|) (=> (_module.Object.baseFieldsInv $Heap |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap |o#0|)))))))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1179|
 :pattern ( (_module.Object.triggerAxioms $Heap |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap this)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= |o#0@@0| this)) (not true))) (_module.Object.baseFieldsInv $Heap |o#0@@0|)) (_module.Object.triggerAxioms $Heap |o#0@@0|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1178|
 :pattern ( (_module.Object.triggerAxioms $Heap |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_12MutexLifetimelongdfy.17:19|
 :skolemid |1180|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Lifetime?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o@@0 Tclass._module.Lifetime?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3836|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@6) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@6))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.Lifetime.owner) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$owner) _module.Lifetime.owner))
(assert ($IsGhostField _module.Lifetime.owner))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert (= (FDim _module.Lifetime.elements) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$elements) _module.Lifetime.elements))
(assert ($IsGhostField _module.Lifetime.elements))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@0 this@@0) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@0 this@@0) (_module.Thread.baseFieldsInv $Heap@@0 this@@0)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |1862|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 this@@0) ($Is refType this@@0 Tclass._module.Thread) ($IsGoodHeap $Heap@@0))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 this@@0) (_module.Thread.baseFieldsInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@1 this@@1) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@1 this@@1) (_module.Lifetime.baseFieldsInv $Heap@@1 this@@1)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2302|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@1) (_module.Lifetime.baseFieldsInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@2 this@@2) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@2 this@@2) (_module.OwnedObject.baseFieldsInv $Heap@@2 this@@2)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2133|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@2) (_module.OwnedObject.baseFieldsInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Thread| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.OwnedObject| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Lifetime| Tclass._module.ObjectClassKind))
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Lifetime? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Lifetime? $h@@11))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.ObjectClassKind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1694|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@7 b@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@3 this@@3) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Thread) ($IsAlloc refType this@@3 Tclass._module.Thread $Heap@@3)))))) (= (_module.Thread.baseFieldsInv $Heap@@3 this@@3) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.364:19|
 :skolemid |1861|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((d T@U) ) (! (= (_module.ObjectClassKind.Thread_q d) (= (DatatypeCtorId d) |##_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1681|
 :pattern ( (_module.ObjectClassKind.Thread_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.ObjectClassKind.OwnedObject_q d@@0) (= (DatatypeCtorId d@@0) |##_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.ObjectClassKind.Lifetime_q d@@1) (= (DatatypeCtorId d@@1) |##_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@4 this@@4) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $Heap@@4)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@4 this@@4) (= (_module.Object.triggerAxioms $Heap@@4 this@@4) (_module.Object.nonAliasing $Heap@@4 this@@4))))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1731|
 :pattern ( (_module.Object.triggerAxioms $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.ObjectClassKind.Thread_q d@@2) (= d@@2 |#_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1682|
 :pattern ( (_module.ObjectClassKind.Thread_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.ObjectClassKind.OwnedObject_q d@@3) (= d@@3 |#_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.ObjectClassKind.Lifetime_q d@@4) (= d@@4 |#_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) (or (= $o@@6 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@6)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3863|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@5 this@@5) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.OwnedObject) ($IsAlloc refType this@@5 Tclass._module.OwnedObject $Heap@@5)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@5 this@@5) (= (_module.OwnedObject.objectFields $Heap@@5 this@@5) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@5 this@@5) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@5)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2126|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@12 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@7) Tclass._module.Universe $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1698|
 :pattern ( (_module.Object.universe $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@8) Tclass._module.Lifetime $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2109|
 :pattern ( (_module.OwnedObject.lifetime $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@9) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (_module.Object.universe $o@@9))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@10) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |2108|
 :pattern ( (_module.OwnedObject.lifetime $o@@10))
))))
(assert (forall (($h@@14 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2253|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) _module.Lifetime.owner)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@6 Tclass._module.Thread))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@9 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsBox bx@@11 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( ($IsBox bx@@13 Tclass._module.ObjectClassKind))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1679|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Thread)  (and ($Is refType |c#0@@6| Tclass._module.Thread?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2100|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Lifetime)  (and ($Is refType |c#0@@8| Tclass._module.Lifetime?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2706|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@6 this@@6) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.OwnedObject) ($IsAlloc refType this@@6 Tclass._module.OwnedObject $Heap@@6)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@6 this@@6) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2226|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@6 this@@6))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@7 this@@7) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.OwnedObject) ($IsAlloc refType this@@7 Tclass._module.OwnedObject $Heap@@7)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@7 this@@7) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2123|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@7 this@@7))
))))
(assert (forall (($h@@15 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@12) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@12) _module.Lifetime.owner)) Tclass._module.Thread? $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2254|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@12) _module.Lifetime.owner)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($o@@13 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@13 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3838|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@14 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@14 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@15 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@15 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2255|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Lifetime.elements)))
)))
(assert (forall (($h@@17 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@19 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2256|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.Lifetime.elements)))
)))
(assert (forall (($h@@20 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@21 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2260|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) _module.Lifetime.mightPointFrom)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@8 this@@8) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.OwnedObject) ($IsAlloc refType this@@8 Tclass._module.OwnedObject $Heap@@8)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@8 this@@8) (= (_module.OwnedObject.baseFieldsInv $Heap@@8 this@@8) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@8 this@@8) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Object.universe this@@8)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.433:19|
 :skolemid |2132|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@9 this@@9) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Object) ($IsAlloc refType this@@9 Tclass._module.Object $Heap@@9)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@9)) (|_module.Object.objectClassKind#canCall| this@@9)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@9) |#_module.ObjectClassKind.Thread|) ($Is refType this@@9 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@9)) (|_module.Object.objectClassKind#canCall| this@@9)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@9) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@9 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@9)) (|_module.Object.objectClassKind#canCall| this@@9)))))) (= (_module.Object.nonAliasing $Heap@@9 this@@9)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@9) |#_module.ObjectClassKind.Thread|) ($Is refType this@@9 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@9) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@9 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@9) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@9 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimelongdfy.310:19|
 :skolemid |1723|
 :pattern ( (_module.Object.nonAliasing $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@10 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@10) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@10) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1853|
 :pattern ( (_module.Thread.objectClassKind this@@10))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@11) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@11) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2117|
 :pattern ( (_module.OwnedObject.objectClassKind this@@11))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@12 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@12) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@12) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2293|
 :pattern ( (_module.Lifetime.objectClassKind this@@12))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@10 this@@13) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@10) (or (not (= this@@13 null)) (not true))) ($IsAlloc refType this@@13 Tclass._module.OwnedObject $Heap@@10)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@10 this@@13) (TSet Tclass._module.Object) $Heap@@10))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2227|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@10 this@@13) (TSet Tclass._module.Object) $Heap@@10))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@11 this@@14) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@11) (or (not (= this@@14 null)) (not true))) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $Heap@@11)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@11 this@@14) (TSet Tclass._module.Object) $Heap@@11))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2124|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@11 this@@14) (TSet Tclass._module.Object) $Heap@@11))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@12 this@@15) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $Heap@@12)))))) (_module.Object.triggerAxioms $Heap@@12 this@@15))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1729|
 :pattern ( (_module.Object.triggerAxioms $Heap@@12 this@@15))
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
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (and (_module.ObjectClassKind.Thread_q a@@12) (_module.ObjectClassKind.Thread_q b@@9)) (|_module.ObjectClassKind#Equal| a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@12 b@@9) (_module.ObjectClassKind.Thread_q a@@12))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@12 b@@9) (_module.ObjectClassKind.Thread_q b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (_module.ObjectClassKind.OwnedObject_q a@@13) (_module.ObjectClassKind.OwnedObject_q b@@10)) (|_module.ObjectClassKind#Equal| a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.OwnedObject_q a@@13))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.OwnedObject_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.ObjectClassKind.Lifetime_q a@@14) (_module.ObjectClassKind.Lifetime_q b@@11)) (|_module.ObjectClassKind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Lifetime_q a@@14))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Lifetime_q b@@11))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@15) ($IsAllocBox bx@@15 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@15))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.ObjectClassKind| d@@5) (or (or (_module.ObjectClassKind.Thread_q d@@5) (_module.ObjectClassKind.OwnedObject_q d@@5)) (_module.ObjectClassKind.Lifetime_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (|$IsA#_module.ObjectClassKind| d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@16 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@16)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@16)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :weight 3
 :skolemid |1854|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@16)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@17 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@17)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@17)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :weight 3
 :skolemid |2118|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@17)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@18 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@18)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@18)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :weight 3
 :skolemid |2294|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@18)))
))))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h@@22 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@22 null)) (not true)) ($Is refType $o@@22 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@22) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@22) _module.OwnedObject.owner)) Tclass._module.Object? $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2107|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@22) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@16 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@16 (TSet t@@3)))
)))
(assert (forall (($o@@23 T@U) ) (!  (=> ($Is refType $o@@23 Tclass._module.Thread?) ($Is refType $o@@23 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3837|
 :pattern ( ($Is refType $o@@23 Tclass._module.Thread?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Thread?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3835|
 :pattern ( ($IsBox bx@@17 Tclass._module.Thread?))
)))
(assert (forall (($o@@24 T@U) ) (!  (=> ($Is refType $o@@24 Tclass._module.OwnedObject?) ($Is refType $o@@24 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( ($Is refType $o@@24 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3839|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@25 T@U) ) (!  (=> ($Is refType $o@@25 Tclass._module.Lifetime?) ($Is refType $o@@25 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3845|
 :pattern ( ($Is refType $o@@25 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Lifetime?) ($IsBox bx@@19 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3843|
 :pattern ( ($IsBox bx@@19 Tclass._module.Lifetime?))
)))
(assert (forall ((d@@7 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) ($Is DatatypeTypeType d@@7 Tclass._module.ObjectClassKind)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@23))
 :qid |unknown.0:0|
 :skolemid |1688|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@23))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.ObjectClassKind) Tagclass._module.ObjectClassKind))
(assert (= (TagFamily Tclass._module.ObjectClassKind) tytagFamily$ObjectClassKind))
(assert (forall (($h@@24 T@U) ($o@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@26 null)) (not true)) ($Is refType $o@@26 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@26) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2106|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@26) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@27 T@U) ) (! (= ($Is refType $o@@27 Tclass._module.Universe?)  (or (= $o@@27 null) (implements$_module.Universe (dtype $o@@27))))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( ($Is refType $o@@27 Tclass._module.Universe?))
)))
(assert (forall (($o@@28 T@U) ) (! (= ($Is refType $o@@28 Tclass._module.Object?)  (or (= $o@@28 null) (implements$_module.Object (dtype $o@@28))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@28 Tclass._module.Object?))
)))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.OwnedObject?)  (or (= $o@@29 null) (implements$_module.OwnedObject (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($Is refType $o@@29 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@25 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@30) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@30) _module.Universe.content)) (TSet Tclass._module.Object) $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1173|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@30) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@19 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@19) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@19) (_module.Thread.objectClassKind this@@19)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1855|
 :pattern ( (_module.Object.objectClassKind this@@19) ($Is refType this@@19 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@19) (_module.Thread.objectClassKind this@@19))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@20) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@20) (_module.OwnedObject.objectClassKind this@@20)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2119|
 :pattern ( (_module.Object.objectClassKind this@@20) ($Is refType this@@20 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@20) (_module.OwnedObject.objectClassKind this@@20))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@21 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@21) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@21) (_module.Lifetime.objectClassKind this@@21)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2295|
 :pattern ( (_module.Object.objectClassKind this@@21) ($Is refType this@@21 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@21) (_module.Lifetime.objectClassKind this@@21))
))))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@22 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@22) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@22) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1851|
 :pattern ( (_module.Thread.objectClassKind this@@22))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@23) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@23) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2115|
 :pattern ( (_module.OwnedObject.objectClassKind this@@23))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@24 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@24) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@24) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2291|
 :pattern ( (_module.Lifetime.objectClassKind this@@24))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@25 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@25) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@25) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1773|
 :pattern ( (_module.Object.objectClassKind this@@25))
))))
(assert (forall (($h@@26 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@31) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1172|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@31) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@13 this@@26) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Lifetime) ($IsAlloc refType this@@26 Tclass._module.Lifetime $Heap@@13)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@13 this@@26)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@26)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@26)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@26)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@26) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@26)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.564:19|
 :skolemid |2301|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@13 this@@26) ($IsGoodHeap $Heap@@13))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@14 () T@U)
(declare-fun this@@27 () T@U)
(declare-fun |b$reqreads#1@2| () Bool)
(declare-fun |b$reqreads#2@3| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |o#1@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Universe.globalBaseInv)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon13_correct  (=> (= (_module.Universe.globalBaseInv $Heap@@14 this@@27)  (and true (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#2|))) (and (and (and (= (_module.Object.universe |o#2|) this@@27) (or (not (= |o#2| this@@27)) (not true))) (_module.Object.baseFieldsInv $Heap@@14 |o#2|)) (_module.Object.triggerAxioms $Heap@@14 |o#2|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1184|
 :pattern ( (_module.Object.triggerAxioms $Heap@@14 |o#2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 |o#2|))
 :pattern ( (_module.Object.universe |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#2|)))
)))) (=> (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#2@@0| T@U) ) (!  (=> ($Is refType |o#2@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#2@@0|)) (=> (= (_module.Object.universe |o#2@@0|) this@@27) (=> (or (not (= |o#2@@0| this@@27)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@14 |o#2@@0|) (=> (_module.Object.baseFieldsInv $Heap@@14 |o#2@@0|) (|_module.Object.triggerAxioms#canCall| $Heap@@14 |o#2@@0|)))))))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1185|
 :pattern ( (_module.Object.triggerAxioms $Heap@@14 |o#2@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 |o#2@@0|))
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) ($Is boolType (bool_2_U (_module.Universe.globalBaseInv $Heap@@14 this@@27)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#1@2|) (=> |b$reqreads#1@2| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#2@3|) (=> |b$reqreads#2@3| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#3@2|)))))))))
(let ((anon12_correct  (=> (and (and (= |b$reqreads#3@2| |b$reqreads#3@1|) (= |b$reqreads#2@3| |b$reqreads#2@2|)) (and (= |b$reqreads#1@2| |b$reqreads#1@1|) (= (ControlFlow 0 7) 3))) anon13_correct)))
(let ((anon21_Else_correct  (=> (not (and (and (= (_module.Object.universe |o#1@0|) this@@27) (or (not (= |o#1@0| this@@27)) (not true))) (_module.Object.baseFieldsInv $Heap@@14 |o#1@0|))) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@2| |b$reqreads#2@1|)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 12) 7))) anon12_correct))))
(let ((anon21_Then_correct  (=> (and (and (= (_module.Object.universe |o#1@0|) this@@27) (or (not (= |o#1@0| this@@27)) (not true))) (_module.Object.baseFieldsInv $Heap@@14 |o#1@0|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= |o#1@0| null)) (not true))) (=> (or (not (= |o#1@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |o#1@0|) Tclass._module.Object? $Heap@@14) (=> (and (= |b$reqreads#3@0| (forall (($o@@32 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@32) alloc)))) (= $o@@32 |o#1@0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@32 $f@@0)))
 :qid |_12MutexLifetimelongdfy.19:75|
 :skolemid |1182|
))) (|_module.Object.triggerAxioms#canCall| $Heap@@14 |o#1@0|)) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@2| |b$reqreads#2@1|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 10) 7))) anon12_correct))))))))
(let ((anon20_Else_correct  (=> (and (not (and (= (_module.Object.universe |o#1@0|) this@@27) (or (not (= |o#1@0| this@@27)) (not true)))) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 15) 10) anon21_Then_correct) (=> (= (ControlFlow 0 15) 12) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (= (_module.Object.universe |o#1@0|) this@@27) (or (not (= |o#1@0| this@@27)) (not true))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |o#1@0| null)) (not true))) (=> (or (not (= |o#1@0| null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType |o#1@0|) Tclass._module.Object? $Heap@@14) (= |b$reqreads#2@0| (forall (($o@@33 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 $o@@33) alloc)))) (or (= $o@@33 |o#1@0|) (= $o@@33 (_module.Object.universe |o#1@0|)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@33 $f@@1)))
 :qid |_12MutexLifetimelongdfy.19:54|
 :skolemid |1181|
)))) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@14 |o#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|))) (and (=> (= (ControlFlow 0 13) 10) anon21_Then_correct) (=> (= (ControlFlow 0 13) 12) anon21_Else_correct))))))))
(let ((anon19_Else_correct  (=> (or (not (= (_module.Object.universe |o#1@0|) this@@27)) (not true)) (and (=> (= (ControlFlow 0 17) 13) anon20_Then_correct) (=> (= (ControlFlow 0 17) 15) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (= (_module.Object.universe |o#1@0|) this@@27) (and (=> (= (ControlFlow 0 16) 13) anon20_Then_correct) (=> (= (ControlFlow 0 16) 15) anon20_Else_correct)))))
(let ((anon18_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#1@0|)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |o#1@0| null)) (not true))) (=> (or (not (= |o#1@0| null)) (not true)) (and (=> (= (ControlFlow 0 18) 16) anon19_Then_correct) (=> (= (ControlFlow 0 18) 17) anon19_Else_correct)))))))
(let ((anon18_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)) ($Box refType |o#1@0|))) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@2| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 9) 7))) anon12_correct))))
(let ((anon17_Then_correct  (=> (and (and ($Is refType |o#1@0| Tclass._module.Object) ($IsAlloc refType |o#1@0| Tclass._module.Object $Heap@@14)) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@27 _module.Universe.content)))) (and (=> (= (ControlFlow 0 20) 18) anon18_Then_correct) (=> (= (ControlFlow 0 20) 9) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not (and ($Is refType |o#1@0| Tclass._module.Object) ($IsAlloc refType |o#1@0| Tclass._module.Object $Heap@@14))) (=> (and (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@2| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 8) 7))) anon12_correct))))
(let ((anon16_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 21) 20) anon17_Then_correct) (=> (= (ControlFlow 0 21) 8) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (and (= |b$reqreads#3@2| true) (= |b$reqreads#2@3| true)) (and (= |b$reqreads#1@2| true) (= (ControlFlow 0 6) 3))) anon13_correct))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@14 alloc this@@27 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@27) _module.Universe.content)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@27 _module.Universe.content)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 22) 1) anon15_Then_correct) (=> (= (ControlFlow 0 22) 21) anon16_Then_correct)) (=> (= (ControlFlow 0 22) 6) anon16_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@14) ($IsHeapAnchor $Heap@@14)) (=> (and (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Universe) ($IsAlloc refType this@@27 Tclass._module.Universe $Heap@@14))) (and (= 7 $FunctionContextHeight) (= (ControlFlow 0 24) 22))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
