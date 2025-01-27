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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun |##Stacks.MaybeInitialized.Uninitialized| () T@U)
(declare-fun Tagclass.Stacks.MaybeInitialized () T@U)
(declare-fun |##Stacks.MaybeInitialized.Initialized| () T@U)
(declare-fun class.Stacks.Stack? () T@U)
(declare-fun Tagclass.Stacks.Stack? () T@U)
(declare-fun Tagclass.Stacks.Stack () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$MaybeInitialized () T@U)
(declare-fun tytagFamily$Stack () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Elements () T@U)
(declare-fun field$arr () T@U)
(declare-fun field$n () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Stacks.Stack.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Stacks.Stack (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun Stacks.Stack.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass.Stacks.Stack? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Stacks.MaybeInitialized.Uninitialized| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Stacks.Stack.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Stacks.MaybeInitialized (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Stacks.Stack.Elements () T@U)
(declare-fun Stacks.Stack.arr () T@U)
(declare-fun Stacks.Stack.n () T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Stacks.MaybeInitialized.Initialized_q (T@U) Bool)
(declare-fun Stacks.MaybeInitialized.value (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Stacks.MaybeInitialized.Uninitialized_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |#Stacks.MaybeInitialized.Initialized| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass.Stacks.MaybeInitialized_0 (T@U) T@U)
(declare-fun Tclass.Stacks.Stack?_0 (T@U) T@U)
(declare-fun Tclass.Stacks.Stack_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array |##Stacks.MaybeInitialized.Uninitialized| Tagclass.Stacks.MaybeInitialized |##Stacks.MaybeInitialized.Initialized| class.Stacks.Stack? Tagclass.Stacks.Stack? Tagclass.Stacks.Stack tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$MaybeInitialized tytagFamily$Stack field$Repr field$Elements field$arr field$n)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (forall ((Stacks.Stack$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.Stacks.Stack Stacks.Stack$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) Stacks.Stack.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |614|
)) (= (Stacks.Stack.Valid Stacks.Stack$T $h0 this) (Stacks.Stack.Valid Stacks.Stack$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Stacks.Stack.Valid Stacks.Stack$T $h1 this))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((Stacks.Stack$T@@0 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.Stacks.Stack Stacks.Stack$T@@0) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass.Stacks.Stack? Stacks.Stack$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Stacks.Stack Stacks.Stack$T@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Stacks.Stack? Stacks.Stack$T@@0) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Stacks.MaybeInitialized.Uninitialized|) |##Stacks.MaybeInitialized.Uninitialized|))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Stacks.Stack$T@@1 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@1 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.Stacks.Stack Stacks.Stack$T@@1)) ($IsAlloc refType this@@0 (Tclass.Stacks.Stack Stacks.Stack$T@@1) $Heap)))))) (=> (Stacks.Stack.Valid Stacks.Stack$T@@1 $Heap this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) Stacks.Stack.Repr)) ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (Stacks.Stack.Valid Stacks.Stack$T@@1 $Heap this@@0))
))))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((Stacks.MaybeInitialized$T T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized| (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T) $h@@3))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized| (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T) $h@@3))
)))
(assert (= (FDim Stacks.Stack.Repr) 0))
(assert (= (FieldOfDecl class.Stacks.Stack? field$Repr) Stacks.Stack.Repr))
(assert ($IsGhostField Stacks.Stack.Repr))
(assert (= (FDim Stacks.Stack.Elements) 0))
(assert (= (FieldOfDecl class.Stacks.Stack? field$Elements) Stacks.Stack.Elements))
(assert ($IsGhostField Stacks.Stack.Elements))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((Stacks.Stack$T@@2 T@U) ($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.Stacks.Stack? Stacks.Stack$T@@2) $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.Stacks.Stack? Stacks.Stack$T@@2) $h@@5))
)))
(assert (= (FDim Stacks.Stack.arr) 0))
(assert (= (FieldOfDecl class.Stacks.Stack? field$arr) Stacks.Stack.arr))
(assert  (not ($IsGhostField Stacks.Stack.arr)))
(assert (= (FDim Stacks.Stack.n) 0))
(assert (= (FieldOfDecl class.Stacks.Stack? field$n) Stacks.Stack.n))
(assert  (not ($IsGhostField Stacks.Stack.n)))
(assert (forall ((Stacks.MaybeInitialized$T@@0 T@U) ) (! ($Is DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized| (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@0))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized| (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@0)))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6))
)))
(assert (= (Ctor SeqType) 9))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Stacks.Stack$T@@3 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@3 $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.Stacks.Stack Stacks.Stack$T@@3)) ($IsAlloc refType this@@1 (Tclass.Stacks.Stack Stacks.Stack$T@@3) $Heap@@0)))))) (= (Stacks.Stack.Valid Stacks.Stack$T@@3 $Heap@@0 this@@1)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Elements)))) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Elements))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))))) (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))) 0)) (not true)))) (forall ((|i#0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.n))))) (Stacks.MaybeInitialized.Initialized_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))) (IndexField |i#0|))))) (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.n))))) (= (Stacks.MaybeInitialized.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))) (IndexField |i#0|)))) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Elements)) |i#0|))))
 :qid |Uninitializeddfy.24:14|
 :skolemid |621|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.Elements)) |i#0|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Stacks.Stack.arr))) (IndexField |i#0|))))
)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (Stacks.Stack.Valid Stacks.Stack$T@@3 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
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
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@7 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@7))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d T@U) ) (! (= (Stacks.MaybeInitialized.Uninitialized_q d) (= (DatatypeCtorId d) |##Stacks.MaybeInitialized.Uninitialized|))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Stacks.MaybeInitialized.Uninitialized_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Stacks.MaybeInitialized.Initialized_q d@@0) (= (DatatypeCtorId d@@0) |##Stacks.MaybeInitialized.Initialized|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Stacks.MaybeInitialized.Initialized_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Stacks.MaybeInitialized.Uninitialized_q d@@1) (= d@@1 |#Stacks.MaybeInitialized.Uninitialized|))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Stacks.MaybeInitialized.Uninitialized_q d@@1))
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
(assert (forall ((d@@2 T@U) ) (!  (=> (Stacks.MaybeInitialized.Initialized_q d@@2) (exists ((|a#29#0#0| T@U) ) (! (= d@@2 (|#Stacks.MaybeInitialized.Initialized| |a#29#0#0|))
 :qid |Uninitializeddfy.10:68|
 :skolemid |592|
)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (Stacks.MaybeInitialized.Initialized_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((Stacks.Stack$T@@4 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Stacks.Stack Stacks.Stack$T@@4))  (and ($Is refType |c#0@@3| (Tclass.Stacks.Stack? Stacks.Stack$T@@4)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Stacks.Stack Stacks.Stack$T@@4)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Stacks.Stack? Stacks.Stack$T@@4)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((Stacks.Stack$T@@5 T@U) ($h@@8 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.Stacks.Stack? Stacks.Stack$T@@5)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) Stacks.Stack.n)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) Stacks.Stack.n)) (Tclass.Stacks.Stack? Stacks.Stack$T@@5))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@1 T@U) ) (!  (and (= (Tag (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@1)) Tagclass.Stacks.MaybeInitialized) (= (TagFamily (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@1)) tytagFamily$MaybeInitialized))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@1))
)))
(assert (forall ((Stacks.Stack$T@@6 T@U) ) (!  (and (= (Tag (Tclass.Stacks.Stack? Stacks.Stack$T@@6)) Tagclass.Stacks.Stack?) (= (TagFamily (Tclass.Stacks.Stack? Stacks.Stack$T@@6)) tytagFamily$Stack))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass.Stacks.Stack? Stacks.Stack$T@@6))
)))
(assert (forall ((Stacks.Stack$T@@7 T@U) ) (!  (and (= (Tag (Tclass.Stacks.Stack Stacks.Stack$T@@7)) Tagclass.Stacks.Stack) (= (TagFamily (Tclass.Stacks.Stack Stacks.Stack$T@@7)) tytagFamily$Stack))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (Tclass.Stacks.Stack Stacks.Stack$T@@7))
)))
(assert (forall ((Stacks.Stack$T@@8 T@U) ($h@@9 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.Stacks.Stack? Stacks.Stack$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) Stacks.Stack.Elements)) (TSeq Stacks.Stack$T@@8) $h@@9))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) Stacks.Stack.Elements)) (Tclass.Stacks.Stack? Stacks.Stack$T@@8))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((Stacks.Stack$T@@9 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass.Stacks.Stack? Stacks.Stack$T@@9))  (or (= $o@@8 null) (= (dtype $o@@8) (Tclass.Stacks.Stack? Stacks.Stack$T@@9))))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( ($Is refType $o@@8 (Tclass.Stacks.Stack? Stacks.Stack$T@@9)))
)))
(assert (forall ((Stacks.Stack$T@@10 T@U) ($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.Stacks.Stack? Stacks.Stack$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) Stacks.Stack.n)) Tclass._System.nat $h@@10))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) Stacks.Stack.n)) (Tclass.Stacks.Stack? Stacks.Stack$T@@10))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((Stacks.Stack$T@@11 T@U) ($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.Stacks.Stack? Stacks.Stack$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) Stacks.Stack.arr)) (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@11)) $h@@11))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) Stacks.Stack.arr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@11))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@2 T@U) (|a#30#0#0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@2) $h@@12) ($IsAllocBox |a#30#0#0| Stacks.MaybeInitialized$T@@2 $h@@12)))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@2) $h@@12))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((Stacks.Stack$T@@12 T@U) ($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.Stacks.Stack? Stacks.Stack$T@@12)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) Stacks.Stack.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) Stacks.Stack.Repr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@12))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((Stacks.Stack$T@@13 T@U) ($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass.Stacks.Stack? Stacks.Stack$T@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) Stacks.Stack.Repr)) (TSet Tclass._System.object) $h@@14))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) Stacks.Stack.Repr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@13))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)) (or (Stacks.MaybeInitialized.Uninitialized_q d@@3) (Stacks.MaybeInitialized.Initialized_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (Stacks.MaybeInitialized.Initialized_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)))
 :pattern ( (Stacks.MaybeInitialized.Uninitialized_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Seq#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (_System.array.Length o@@5))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@5))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@4 T@U) ) (! (= (Tclass.Stacks.MaybeInitialized_0 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@4)) Stacks.MaybeInitialized$T@@4)
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@4))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (DatatypeCtorId (|#Stacks.MaybeInitialized.Initialized| |a#28#0#0|)) |##Stacks.MaybeInitialized.Initialized|)
 :qid |Uninitializeddfy.10:68|
 :skolemid |590|
 :pattern ( (|#Stacks.MaybeInitialized.Initialized| |a#28#0#0|))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (Stacks.MaybeInitialized.value (|#Stacks.MaybeInitialized.Initialized| |a#32#0#0|)) |a#32#0#0|)
 :qid |Uninitializeddfy.10:68|
 :skolemid |598|
 :pattern ( (|#Stacks.MaybeInitialized.Initialized| |a#32#0#0|))
)))
(assert (forall ((Stacks.Stack$T@@14 T@U) ) (! (= (Tclass.Stacks.Stack?_0 (Tclass.Stacks.Stack? Stacks.Stack$T@@14)) Stacks.Stack$T@@14)
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (Tclass.Stacks.Stack? Stacks.Stack$T@@14))
)))
(assert (forall ((Stacks.Stack$T@@15 T@U) ) (! (= (Tclass.Stacks.Stack_0 (Tclass.Stacks.Stack Stacks.Stack$T@@15)) Stacks.Stack$T@@15)
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Tclass.Stacks.Stack Stacks.Stack$T@@15))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@5 T@U) (|a#30#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0@@0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@5)) ($IsBox |a#30#0#0@@0| Stacks.MaybeInitialized$T@@5))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0@@0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@5)))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@14)) TInt $h@@15))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( (_System.array.Length $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@16 T@U) ($o@@15 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@15)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (< (BoxRank |a#33#0#0|) (DtRank (|#Stacks.MaybeInitialized.Initialized| |a#33#0#0|)))
 :qid |Uninitializeddfy.10:68|
 :skolemid |599|
 :pattern ( (|#Stacks.MaybeInitialized.Initialized| |a#33#0#0|))
)))
(assert (forall ((d@@4 T@U) (Stacks.MaybeInitialized$T@@6 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (Stacks.MaybeInitialized.Initialized_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@6) $h@@17))) ($IsAllocBox (Stacks.MaybeInitialized.value d@@4) Stacks.MaybeInitialized$T@@6 $h@@17))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsAllocBox (Stacks.MaybeInitialized.value d@@4) Stacks.MaybeInitialized$T@@6 $h@@17))
)))
(assert (forall ((s@@3 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@1)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@1))
)))
(assert (forall ((Stacks.Stack$T@@16 T@U) ($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass.Stacks.Stack? Stacks.Stack$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) Stacks.Stack.Elements)) (TSeq Stacks.Stack$T@@16)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) Stacks.Stack.Elements)) (Tclass.Stacks.Stack? Stacks.Stack$T@@16))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (Mul x@@9 y@@3) (* x@@9 y@@3))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@9 y@@3))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@7 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@8)))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@7 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7))))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsBox bx@@11 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7)))
)))
(assert (forall ((Stacks.Stack$T@@17 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.Stacks.Stack? Stacks.Stack$T@@17)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass.Stacks.Stack? Stacks.Stack$T@@17))))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsBox bx@@12 (Tclass.Stacks.Stack? Stacks.Stack$T@@17)))
)))
(assert (forall ((Stacks.Stack$T@@18 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.Stacks.Stack Stacks.Stack$T@@18)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass.Stacks.Stack Stacks.Stack$T@@18))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@13 (Tclass.Stacks.Stack Stacks.Stack$T@@18)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@10 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#Stacks.MaybeInitialized.Uninitialized| (Lit DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized|)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((Stacks.Stack$T@@19 T@U) ($h@@19 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass.Stacks.Stack? Stacks.Stack$T@@19)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) Stacks.Stack.arr)) (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@19))))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) Stacks.Stack.arr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@19))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= (|#Stacks.MaybeInitialized.Initialized| (Lit BoxType |a#31#0#0|)) (Lit DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#31#0#0|)))
 :qid |Uninitializeddfy.10:68|
 :skolemid |597|
 :pattern ( (|#Stacks.MaybeInitialized.Initialized| (Lit BoxType |a#31#0#0|)))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@18 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@0))  (=> (and (or (not (= $o@@18 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@18) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@18))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4797|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@0))
)))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@6))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((s@@5 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0_0_1@0| () Int)
(declare-fun Stacks.Stack$T@@20 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#0_1@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |a#0_0| () T@U)
(set-info :boogie-vc-id Impl$$Stacks.Stack.Push)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon4_correct  (=> (and (<= (LitInt 0) |i#0_0_0@0|) (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.n))))) (and (=> (= (ControlFlow 0 22) (- 0 27)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 26)) (and (<= 0 |i#0_0_0@0|) (< |i#0_0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0_0@0|))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (<= 0 |i#0_0_0@0|) (< |i#0_0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr)))))) (=> (and (and (<= (LitInt 0) |i#0_0_1@0|) (< |i#0_0_1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.n))))) (and (or (not (= |i#0_0_0@0| |i#0_0_1@0|)) (not true)) (= (ControlFlow 0 22) (- 0 21)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |i#0_0_0@0|) (IndexField |i#0_0_1@0|))) (not true))) (= ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr))) (IndexField |i#0_0_0@0|))) ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr))) (IndexField |i#0_0_1@0|)))))))))))))))))
(let ((anon11_Else_correct  (=> (and (< |i#0_0_0@0| (LitInt 0)) (= (ControlFlow 0 29) 22)) anon4_correct)))
(let ((anon11_Then_correct  (=> (and (<= (LitInt 0) |i#0_0_0@0|) (= (ControlFlow 0 28) 22)) anon4_correct)))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 30) 28) anon11_Then_correct) (=> (= (ControlFlow 0 30) 29) anon11_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType this@@2))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType this@@2)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements))))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) 0)) (not true))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) 0)) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (forall ((|i#3| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))))) (Stacks.MaybeInitialized.Initialized_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3|))))) (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))))) (= (Stacks.MaybeInitialized.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3|)))) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)) |i#3|))))
 :qid |Uninitializeddfy.24:14|
 :skolemid |667|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)) |i#3|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3|))))
))))) (=> (=> (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@8 this@@2) (or (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@8 this@@2) (forall ((|i#3@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))))) (Stacks.MaybeInitialized.Initialized_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3@@0|))))) (=> (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.n))))) (= (Stacks.MaybeInitialized.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3@@0|)))) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)) |i#3@@0|))))
 :qid |Uninitializeddfy.24:14|
 :skolemid |667|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)) |i#3@@0|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.arr))) (IndexField |i#3@@0|))))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (forall (($o@@19 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@19)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@19)))) (or (not (= $o@@19 null)) (not true)))
 :qid |Uninitializeddfy.51:26|
 :skolemid |669|
 :pattern (  (or (not (= $o@@19 null)) (not true)))
)) (forall (($o@@20 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@20)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@20)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@20) alloc)))))
 :qid |Uninitializeddfy.51:26|
 :skolemid |670|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@20) alloc)))
)))) (=> (and (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@21)))) (or (not (= $o@@21 null)) (not true)))
 :qid |Uninitializeddfy.51:26|
 :skolemid |669|
 :pattern (  (or (not (= $o@@21 null)) (not true)))
)) (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) ($Box refType $o@@22)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@22) alloc)))))
 :qid |Uninitializeddfy.51:26|
 :skolemid |670|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@22) alloc)))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) Stacks.Stack.Elements)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Elements)) (|Seq#Build| |Seq#Empty| |t#0|))))))))))))))))))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 10) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)) null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 15)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr))))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n))))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n)))))) (=> (= |$rhs#0@0| (|#Stacks.MaybeInitialized.Initialized| |t#0|)) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr)) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.arr))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@2) Stacks.Stack.n)))) ($Box DatatypeTypeType |$rhs#0@0|)))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.Elements))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.Elements)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.n))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.n)) (=> (= |$rhs#1@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) Stacks.Stack.Elements)) (|Seq#Build| |Seq#Empty| |t#0|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) Stacks.Stack.n))) 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) Stacks.Stack.n))) 1)) Tclass._System.nat) (=> (= |$rhs#2@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) Stacks.Stack.n))) 1)) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) Stacks.Stack.Elements ($Box SeqType |$rhs#1@0|)))) ($IsGoodHeap $Heap@6)) (=> (and (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@2) Stacks.Stack.n ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@7)) (and (= $Heap@8 $Heap@7) (= (ControlFlow 0 10) 2))) GeneratedUnifiedExit_correct))))))))))))))))))))
(let ((anon10_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@23 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@23) $f@@1)) (exists ((|i#0_0_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_0_2|) (< |i#0_0_2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.n))))) (= $o@@23 $nw@0)) (= $f@@1 (IndexField |i#0_0_2|)))
 :qid |Uninitializeddfy.56:16|
 :skolemid |672|
)))
 :qid |Uninitializeddfy.56:9|
 :skolemid |673|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) $f@@1))
)) (forall ((|i#inv#0_0_0| Int) ) (!  (=> (and (<= (LitInt 0) |i#inv#0_0_0|) (< |i#inv#0_0_0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.n))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0|)) ($Box DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Stacks.Stack.arr))) (IndexField |i#inv#0_0_0|))))))
 :qid |Uninitializeddfy.56:16|
 :skolemid |674|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0|)))
)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.arr))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.arr)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) Stacks.Stack.arr ($Box refType $nw@0)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.Repr))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 Stacks.Stack.Repr)) (=> (= |$rhs#0_1@0| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@2) Stacks.Stack.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)))) (=> (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@2) Stacks.Stack.Repr ($Box SetType |$rhs#0_1@0|)))) ($IsGoodHeap $Heap@3)) (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 18) 10))) anon8_correct))))))))))
(let ((anon9_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= 0 (Mul (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n)))))) (=> (<= 0 (Mul (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))))) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@20)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (Mul (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 31) 30) anon10_Then_correct) (=> (= (ControlFlow 0 31) 18) anon10_Else_correct))))))))
(let ((anon9_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))))) (not true)) (=> (and (= $Heap@4 $Heap@@1) (= (ControlFlow 0 17) 10)) anon8_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr)) null)) (not true)) (and (=> (= (ControlFlow 0 33) 31) anon9_Then_correct) (=> (= (ControlFlow 0 33) 17) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.Stacks.Stack Stacks.Stack$T@@20)) ($IsAlloc refType this@@2 (Tclass.Stacks.Stack Stacks.Stack$T@@20) $Heap@@1))) (and ($IsBox |t#0| Stacks.Stack$T@@20) ($IsAllocBox |t#0| Stacks.Stack$T@@20 $Heap@@1))) (=> (and (and (and (and ($Is refType |a#0_0| (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@20))) ($IsAlloc refType |a#0_0| (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@20)) $Heap@@1)) true) (= 1 $FunctionContextHeight)) (and (and (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@20 $Heap@@1 this@@2) (and (Stacks.Stack.Valid Stacks.Stack$T@@20 $Heap@@1 this@@2) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) ($Box refType this@@2)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Elements)))) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Elements))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))))) (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))) 0)) (not true)))) (forall ((|i#2| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))))) (Stacks.MaybeInitialized.Initialized_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))) (IndexField |i#2|))))) (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.n))))) (= (Stacks.MaybeInitialized.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))) (IndexField |i#2|)))) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Elements)) |i#2|))))
 :qid |Uninitializeddfy.24:14|
 :skolemid |666|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.Elements)) |i#2|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Stacks.Stack.arr))) (IndexField |i#2|))))
))))) (= (ControlFlow 0 35) 33))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
