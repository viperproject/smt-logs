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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Stacks.Stack.Count (T@U T@U T@U) Int)
(declare-fun |Stacks.Stack.Count#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Stacks.Stack (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Stacks.Stack.Valid (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass.Stacks.Stack? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Stacks.MaybeInitialized.Uninitialized| () T@U)
(declare-fun |Stacks.Stack.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
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
(declare-fun Stacks.MaybeInitialized.Initialized_q (T@U) Bool)
(declare-fun Stacks.MaybeInitialized.value (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Stacks.MaybeInitialized.Uninitialized_q (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#Stacks.MaybeInitialized.Initialized| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
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
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Stacks.Stack$T T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|Stacks.Stack.Count#canCall| Stacks.Stack$T $Heap this) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.Stacks.Stack Stacks.Stack$T)) ($IsAlloc refType this (Tclass.Stacks.Stack Stacks.Stack$T) $Heap)))) (Stacks.Stack.Valid Stacks.Stack$T $Heap this)))) (<= (LitInt 0) (Stacks.Stack.Count Stacks.Stack$T $Heap this)))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (Stacks.Stack.Count Stacks.Stack$T $Heap this))
))))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Stacks.MaybeInitialized.Uninitialized|) |##Stacks.MaybeInitialized.Uninitialized|))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Stacks.Stack$T@@1 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@1 $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.Stacks.Stack Stacks.Stack$T@@1)) ($IsAlloc refType this@@0 (Tclass.Stacks.Stack Stacks.Stack$T@@1) $Heap@@0)))))) (=> (Stacks.Stack.Valid Stacks.Stack$T@@1 $Heap@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) Stacks.Stack.Repr)) ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (Stacks.Stack.Valid Stacks.Stack$T@@1 $Heap@@0 this@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((Stacks.Stack$T@@2 T@U) ($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Stacks.Stack? Stacks.Stack$T@@2) $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Stacks.Stack? Stacks.Stack$T@@2) $h@@5))
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
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@6))
)))
(assert (= (Ctor SeqType) 9))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Stacks.Stack$T@@3 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@3 $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.Stacks.Stack Stacks.Stack$T@@3)) ($IsAlloc refType this@@1 (Tclass.Stacks.Stack Stacks.Stack$T@@3) $Heap@@1)))))) (= (Stacks.Stack.Valid Stacks.Stack$T@@3 $Heap@@1 this@@1)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Elements)))) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Elements))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))))) (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))) 0)) (not true)))) (forall ((|i#0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.n))))) (Stacks.MaybeInitialized.Initialized_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))) (IndexField |i#0|))))) (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.n))))) (= (Stacks.MaybeInitialized.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))) (IndexField |i#0|)))) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Elements)) |i#0|))))
 :qid |Uninitializeddfy.24:14|
 :skolemid |621|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.Elements)) |i#0|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) Stacks.Stack.arr))) (IndexField |i#0|))))
)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (Stacks.Stack.Valid Stacks.Stack$T@@3 $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@7 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@7))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Stacks.MaybeInitialized.Uninitialized_q d@@1) (= d@@1 |#Stacks.MaybeInitialized.Uninitialized|))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Stacks.MaybeInitialized.Uninitialized_q d@@1))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
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
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((Stacks.Stack$T@@5 T@U) ($h@@8 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.Stacks.Stack? Stacks.Stack$T@@5)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) Stacks.Stack.n)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) Stacks.Stack.n)) (Tclass.Stacks.Stack? Stacks.Stack$T@@5))
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
(assert (forall ((Stacks.Stack$T@@8 T@U) ($h@@9 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.Stacks.Stack? Stacks.Stack$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) Stacks.Stack.Elements)) (TSeq Stacks.Stack$T@@8) $h@@9))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) Stacks.Stack.Elements)) (Tclass.Stacks.Stack? Stacks.Stack$T@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((Stacks.Stack$T@@9 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass.Stacks.Stack? Stacks.Stack$T@@9))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass.Stacks.Stack? Stacks.Stack$T@@9))))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( ($Is refType $o@@7 (Tclass.Stacks.Stack? Stacks.Stack$T@@9)))
)))
(assert (forall ((Stacks.Stack$T@@10 T@U) ($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.Stacks.Stack? Stacks.Stack$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) Stacks.Stack.n)) Tclass._System.nat $h@@10))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) Stacks.Stack.n)) (Tclass.Stacks.Stack? Stacks.Stack$T@@10))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((Stacks.Stack$T@@11 T@U) ($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.Stacks.Stack? Stacks.Stack$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) Stacks.Stack.arr)) (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@11)) $h@@11))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) Stacks.Stack.arr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@11))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@2 T@U) (|a#30#0#0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@2) $h@@12) ($IsAllocBox |a#30#0#0| Stacks.MaybeInitialized$T@@2 $h@@12)))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@2) $h@@12))
)))
(assert (forall ((Stacks.Stack$T@@12 T@U) ($h@@13 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.Stacks.Stack? Stacks.Stack$T@@12)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) Stacks.Stack.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) Stacks.Stack.Repr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@12))
)))
(assert (forall ((Stacks.Stack$T@@13 T@U) ($h@@14 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.Stacks.Stack? Stacks.Stack$T@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) Stacks.Stack.Repr)) (TSet Tclass._System.object) $h@@14))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) Stacks.Stack.Repr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@13))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Stacks.Stack$T@@14 T@U) ($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|Stacks.Stack.Count#canCall| Stacks.Stack$T@@14 $Heap@@2 this@@2) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.Stacks.Stack Stacks.Stack$T@@14)) ($IsAlloc refType this@@2 (Tclass.Stacks.Stack Stacks.Stack$T@@14) $Heap@@2)))) (Stacks.Stack.Valid Stacks.Stack$T@@14 $Heap@@2 this@@2)))) (= (Stacks.Stack.Count Stacks.Stack$T@@14 $Heap@@2 this@@2) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) Stacks.Stack.Elements)))))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( (Stacks.Stack.Count Stacks.Stack$T@@14 $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((Stacks.MaybeInitialized$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)) (or (Stacks.MaybeInitialized.Uninitialized_q d@@3) (Stacks.MaybeInitialized.Initialized_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (Stacks.MaybeInitialized.Initialized_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)))
 :pattern ( (Stacks.MaybeInitialized.Uninitialized_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@3)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
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
(assert (forall ((Stacks.Stack$T@@15 T@U) ) (! (= (Tclass.Stacks.Stack?_0 (Tclass.Stacks.Stack? Stacks.Stack$T@@15)) Stacks.Stack$T@@15)
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (Tclass.Stacks.Stack? Stacks.Stack$T@@15))
)))
(assert (forall ((Stacks.Stack$T@@16 T@U) ) (! (= (Tclass.Stacks.Stack_0 (Tclass.Stacks.Stack Stacks.Stack$T@@16)) Stacks.Stack$T@@16)
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Tclass.Stacks.Stack Stacks.Stack$T@@16))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@5 T@U) (|a#30#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0@@0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@5)) ($IsBox |a#30#0#0@@0| Stacks.MaybeInitialized$T@@5))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#30#0#0@@0|) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@5)))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@15 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@13)) TInt $h@@15))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( (_System.array.Length $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@16 T@U) ($o@@14 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@14)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((Stacks.Stack$T@@17 T@U) ($h@@18 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass.Stacks.Stack? Stacks.Stack$T@@17)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@15) Stacks.Stack.Elements)) (TSeq Stacks.Stack$T@@17)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@15) Stacks.Stack.Elements)) (Tclass.Stacks.Stack? Stacks.Stack$T@@17))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((Stacks.MaybeInitialized$T@@7 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7))))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsBox bx@@9 (Tclass.Stacks.MaybeInitialized Stacks.MaybeInitialized$T@@7)))
)))
(assert (forall ((Stacks.Stack$T@@18 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.Stacks.Stack? Stacks.Stack$T@@18)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.Stacks.Stack? Stacks.Stack$T@@18))))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsBox bx@@10 (Tclass.Stacks.Stack? Stacks.Stack$T@@18)))
)))
(assert (forall ((Stacks.Stack$T@@19 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.Stacks.Stack Stacks.Stack$T@@19)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.Stacks.Stack Stacks.Stack$T@@19))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@11 (Tclass.Stacks.Stack Stacks.Stack$T@@19)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#Stacks.MaybeInitialized.Uninitialized| (Lit DatatypeTypeType |#Stacks.MaybeInitialized.Uninitialized|)))
(assert (forall ((Stacks.Stack$T@@20 T@U) ($h@@19 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass.Stacks.Stack? Stacks.Stack$T@@20)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@16) Stacks.Stack.arr)) (Tclass._System.array (Tclass.Stacks.MaybeInitialized Stacks.Stack$T@@20))))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@16) Stacks.Stack.arr)) (Tclass.Stacks.Stack? Stacks.Stack$T@@20))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= (|#Stacks.MaybeInitialized.Initialized| (Lit BoxType |a#31#0#0|)) (Lit DatatypeTypeType (|#Stacks.MaybeInitialized.Initialized| |a#31#0#0|)))
 :qid |Uninitializeddfy.10:68|
 :skolemid |597|
 :pattern ( (|#Stacks.MaybeInitialized.Initialized| (Lit BoxType |a#31#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@17 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@17))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4797|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@3))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@3))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun Stacks.Stack$T@@21 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Stacks.Stack.Count)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_Else_correct  (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 Stacks.Stack.Elements))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($Is intType (int_2_U (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) Stacks.Stack.Elements)))) Tclass._System.nat)) (=> ($Is intType (int_2_U (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) Stacks.Stack.Elements)))) Tclass._System.nat) (=> (= (Stacks.Stack.Count Stacks.Stack$T@@21 $Heap@@3 this@@3) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) Stacks.Stack.Elements)))) (=> (and ($Is intType (int_2_U (Stacks.Stack.Count Stacks.Stack$T@@21 $Heap@@3 this@@3)) Tclass._System.nat) (= (ControlFlow 0 3) (- 0 2))) |b$reqreads#2@0|)))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@3 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) Stacks.Stack.Repr)))) (=> (and (and ($IsAllocBox ($Box refType this@@3) (Tclass.Stacks.Stack? Stacks.Stack$T@@21) $Heap@@3) (= |b$reqreads#0@0| (forall (($o@@18 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@18) alloc)))) (or (= $o@@18 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) Stacks.Stack.Repr)) ($Box refType $o@@18)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@18 $f@@0)))
 :qid |Uninitializeddfy.40:16|
 :skolemid |651|
)))) (and (|Stacks.Stack.Valid#canCall| Stacks.Stack$T@@21 $Heap@@3 this@@3) (Stacks.Stack.Valid Stacks.Stack$T@@21 $Heap@@3 this@@3))) (and (=> (= (ControlFlow 0 5) (- 0 7)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 Stacks.Stack.Repr))) (and (=> (= (ControlFlow 0 5) (- 0 6)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.Stacks.Stack Stacks.Stack$T@@21)) ($IsAlloc refType this@@3 (Tclass.Stacks.Stack Stacks.Stack$T@@21) $Heap@@3))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
