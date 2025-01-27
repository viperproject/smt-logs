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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.ExtensibleArray () T@U)
(declare-fun Tagclass._module.ExtensibleArray? () T@U)
(declare-fun class._module.ExtensibleArray? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$ExtensibleArray () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$elements () T@U)
(declare-fun field$more () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$M () T@U)
(declare-fun field$length () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.ExtensibleArray.Valid (T@U T@U T@U T@U) Bool)
(declare-fun |_module.ExtensibleArray.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ExtensibleArray (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.ExtensibleArray.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.ExtensibleArray? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ExtensibleArray.Contents () T@U)
(declare-fun _module.ExtensibleArray.elements () T@U)
(declare-fun _module.ExtensibleArray.more () T@U)
(declare-fun _module.ExtensibleArray.M () T@U)
(declare-fun _module.ExtensibleArray.length () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun Div (Int Int) Int)
(declare-fun IndexField (Int) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.ExtensibleArray_0 (T@U) T@U)
(declare-fun Tclass._module.ExtensibleArray?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._module.ExtensibleArray Tagclass._module.ExtensibleArray? class._module.ExtensibleArray? tytagFamily$object tytagFamily$array tytagFamily$ExtensibleArray field$Repr field$elements field$more field$Contents field$M field$length)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.ExtensibleArray$T T@U) ($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.ExtensibleArray.Valid#canCall| _module.ExtensibleArray$T $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.ExtensibleArray _module.ExtensibleArray$T)) ($IsAlloc refType this (Tclass._module.ExtensibleArray _module.ExtensibleArray$T) $Heap)))))) (=> (_module.ExtensibleArray.Valid _module.ExtensibleArray$T $ly $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.ExtensibleArray.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.ExtensibleArray.Valid _module.ExtensibleArray$T $ly $Heap this))
))))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_module.ExtensibleArray$T@@0 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@0) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@0) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s i v) n) (|Seq#Index| s n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s i v) n))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@1))
)))
(assert (= (FDim _module.ExtensibleArray.Repr) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$Repr) _module.ExtensibleArray.Repr))
(assert ($IsGhostField _module.ExtensibleArray.Repr))
(assert (= (FDim _module.ExtensibleArray.Contents) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$Contents) _module.ExtensibleArray.Contents))
(assert ($IsGhostField _module.ExtensibleArray.Contents))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall ((_module.ExtensibleArray$T@@1 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@1) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@1) $h@@3))
)))
(assert (= (FDim _module.ExtensibleArray.elements) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$elements) _module.ExtensibleArray.elements))
(assert  (not ($IsGhostField _module.ExtensibleArray.elements)))
(assert (= (FDim _module.ExtensibleArray.more) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$more) _module.ExtensibleArray.more))
(assert  (not ($IsGhostField _module.ExtensibleArray.more)))
(assert (= (FDim _module.ExtensibleArray.M) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$M) _module.ExtensibleArray.M))
(assert  (not ($IsGhostField _module.ExtensibleArray.M)))
(assert (= (FDim _module.ExtensibleArray.length) 0))
(assert (= (FieldOfDecl class._module.ExtensibleArray? field$length) _module.ExtensibleArray.length))
(assert  (not ($IsGhostField _module.ExtensibleArray.length)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4))
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
(assert (= (Ctor SeqType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.ExtensibleArray$T@@2 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.ExtensibleArray.Valid#canCall| _module.ExtensibleArray$T@@2 $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@2)) ($IsAlloc refType this@@0 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@2) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) ($Box refType this@@0)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) ($Box refType null))) (=> (or (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |Seq#Empty|)) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)) null)) (not true)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements))) (LitInt 256))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) ($Box refType this@@0))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements))) (|_module.ExtensibleArray.Valid#canCall| (Tclass._System.array? _module.ExtensibleArray$T@@2) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))))))))))) (= (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@2 ($LS $ly@@0) $Heap@@0 this@@0)  (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) ($Box refType this@@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) ($Box refType null)))) (or (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |Seq#Empty|)) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)) null)) (not true)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements))) (LitInt 256))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null)) (not true)) (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) ($Box refType this@@0)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)))) (_module.ExtensibleArray.Valid (Tclass._System.array? _module.ExtensibleArray$T@@2) $ly@@0 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)))) (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))) 0)) (not true))) (forall ((|j#0| Int) ) (!  (and (and (and (and (and (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|)) null)) (not true))) (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (= (_System.array.Length ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|))) (LitInt 256)))) (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|)))) (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|))))) (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements)))) (not true)))) (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (forall ((|k#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#0|) (< |k#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))) (or (not (= |k#0| |j#0|)) (not true))) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |k#0|)))) (not true)))
 :qid |ExtensibleArraydfy.29:20|
 :skolemid |533|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |k#0|)))
))))
 :qid |ExtensibleArraydfy.25:16|
 :skolemid |534|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) |j#0|)))
))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null) 0 (Mul (LitInt 256) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents))))))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.length)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.length))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))) 256)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more)) null)) (not true)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.length)))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.length))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents))))) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |i#0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) (Div |i#0| (LitInt 256))))) (IndexField (Mod |i#0| (LitInt 256))))))
 :qid |ExtensibleArraydfy.38:13|
 :skolemid |535|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.more))) _module.ExtensibleArray.Contents)) (Div |i#0| 256))))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |i#0|))
))) (forall ((|i#1| Int) ) (!  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))) |i#1|) (< |i#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.length))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |i#1|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.elements))) (IndexField (- |i#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.M))))))))
 :qid |ExtensibleArraydfy.39:13|
 :skolemid |536|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.ExtensibleArray.Contents)) |i#1|))
))))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@2 ($LS $ly@@0) $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@5 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@5))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@0 bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((_module.ExtensibleArray$T@@3 T@U) ($h@@6 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) _module.ExtensibleArray.length)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) _module.ExtensibleArray.length)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@3))
)))
(assert (forall ((_module.ExtensibleArray$T@@4 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.ExtensibleArray.M)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.ExtensibleArray.M)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.ExtensibleArray$T@@5 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@5))  (and ($Is refType |c#0@@3| (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@5)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@5)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@5)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((_module.ExtensibleArray$T@@6 T@U) ($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@6)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (or (= $o@@6 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@1) _module.ExtensibleArray.Repr)) ($Box refType $o@@6)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f)))
 :qid |unknown.0:0|
 :skolemid |529|
)) (= (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@6 $ly@@1 $h0 this@@1) (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@6 $ly@@1 $h1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@6 $ly@@1 $h1 this@@1))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_module.ExtensibleArray$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@7)) Tagclass._module.ExtensibleArray) (= (TagFamily (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@7)) tytagFamily$ExtensibleArray))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@7))
)))
(assert (forall ((_module.ExtensibleArray$T@@8 T@U) ) (!  (and (= (Tag (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@8)) Tagclass._module.ExtensibleArray?) (= (TagFamily (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@8)) tytagFamily$ExtensibleArray))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@8))
)))
(assert (forall ((_module.ExtensibleArray$T@@9 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.ExtensibleArray.Contents)) (TSeq _module.ExtensibleArray$T@@9) $h@@8))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.ExtensibleArray.Contents)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@9))
)))
(assert (forall ((_module.ExtensibleArray$T@@10 T@U) ($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.ExtensibleArray.elements)) (Tclass._System.array? _module.ExtensibleArray$T@@10) $h@@9))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.ExtensibleArray.elements)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@10))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.ExtensibleArray$T@@11 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@11))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@11))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is refType $o@@10 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@11)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((_module.ExtensibleArray$T@@12 T@U) ($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.ExtensibleArray.more)) (Tclass._module.ExtensibleArray? (Tclass._System.array? _module.ExtensibleArray$T@@12)) $h@@10))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.ExtensibleArray.more)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@12))
)))
(assert (forall ((_module.ExtensibleArray$T@@13 T@U) ($h@@11 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@13)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.ExtensibleArray.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.ExtensibleArray.Repr)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@13))
)))
(assert (forall ((_module.ExtensibleArray$T@@14 T@U) ($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.ExtensibleArray.Repr)) (TSet Tclass._System.object?) $h@@12))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.ExtensibleArray.Repr)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@14))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
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
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@1))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@4))
)))
(assert (forall ((_module.ExtensibleArray$T@@15 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@15)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.ExtensibleArray.length)) TInt))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.ExtensibleArray.length)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@15))
)))
(assert (forall ((_module.ExtensibleArray$T@@16 T@U) ($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@16)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.ExtensibleArray.M)) TInt))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.ExtensibleArray.M)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@16))
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
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
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
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_module.ExtensibleArray$T@@17 T@U) ) (! (= (Tclass._module.ExtensibleArray_0 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@17)) _module.ExtensibleArray$T@@17)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@17))
)))
(assert (forall ((_module.ExtensibleArray$T@@18 T@U) ) (! (= (Tclass._module.ExtensibleArray?_0 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@18)) _module.ExtensibleArray$T@@18)
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@18))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@15 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@17)) TInt $h@@15))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@16 T@U) ($o@@18 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@18)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((_module.ExtensibleArray$T@@19 T@U) ($ly@@2 T@U) ($Heap@@1 T@U) (this@@2 T@U) ) (! (= (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@19 ($LS $ly@@2) $Heap@@1 this@@2) (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@19 $ly@@2 $Heap@@1 this@@2))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@19 ($LS $ly@@2) $Heap@@1 this@@2))
)))
(assert (forall ((s@@1 T@U) (i@@3 Int) (v@@6 T@U) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Update| s@@1 i@@3 v@@6)) (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@1 i@@3 v@@6)))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (forall ((_module.ExtensibleArray$T@@20 T@U) ($h@@17 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@20)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.ExtensibleArray.Contents)) (TSeq _module.ExtensibleArray$T@@20)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.ExtensibleArray.Contents)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@20))
)))
(assert (forall ((_module.ExtensibleArray$T@@21 T@U) ($h@@18 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@21)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.ExtensibleArray.elements)) (Tclass._System.array? _module.ExtensibleArray$T@@21)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.ExtensibleArray.elements)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@21))
)))
(assert (forall ((x@@8 Int) (y@@1 Int) ) (! (= (Mul x@@8 y@@1) (* x@@8 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@8 y@@1))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@7)))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@8)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.ExtensibleArray$T@@22 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@22)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@22))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@9 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@22)))
)))
(assert (forall ((_module.ExtensibleArray$T@@23 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@23)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@23))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@10 (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@23)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((_module.ExtensibleArray$T@@24 T@U) ($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@24)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.ExtensibleArray.more)) (Tclass._module.ExtensibleArray? (Tclass._System.array? _module.ExtensibleArray$T@@24))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.ExtensibleArray.more)) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@24))
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
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@22 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f@@0))  (=> (and (or (not (= $o@@22 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@22) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@22))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |704|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f@@0))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@5))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@4) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@@0| () Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun _module.ExtensibleArray$T@@25 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |t#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.ExtensibleArray.Set)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Contents))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@23) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@23)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Repr)) ($Box refType $o@@23))))
 :qid |ExtensibleArraydfy.69:10|
 :skolemid |611|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@23))
))) (and (and ($HeapSucc $Heap@@2 $Heap@0) ($IsAllocBox ($Box refType this@@3) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@25) $Heap@0)) (and (|_module.ExtensibleArray.Valid#canCall| _module.ExtensibleArray$T@@25 $Heap@0 this@@3) (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@25 ($LS $LZ) $Heap@0 this@@3)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25) $Heap@@2)) (=> ($IsAlloc refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25) $Heap@@2) (=> (and (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.ExtensibleArray.Repr)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Repr)) ($Box refType $o@@24)))) (or (not (= $o@@24 null)) (not true)))
 :qid |ExtensibleArraydfy.73:24|
 :skolemid |612|
 :pattern (  (or (not (= $o@@24 null)) (not true)))
)) (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.ExtensibleArray.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Repr)) ($Box refType $o@@25)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@25) alloc)))))
 :qid |ExtensibleArraydfy.73:24|
 :skolemid |613|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@25) alloc)))
))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25) $Heap@@2)) (=> ($IsAlloc refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25) $Heap@@2) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Contents)))))))))))))))
(let ((anon4_Else_correct  (=> (and (< |i#0@@0| (LitInt 0)) (= (ControlFlow 0 6) 2)) anon3_correct)))
(let ((anon4_Then_correct  (=> (and (<= (LitInt 0) |i#0@@0|) (= (ControlFlow 0 5) 2)) anon3_correct)))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#5| null $Heap@@2 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.ExtensibleArray.Repr)))) ($IsAllocBox ($Box refType this@@3) (Tclass._module.ExtensibleArray? _module.ExtensibleArray$T@@25) $Heap@@2)) (and (|_module.ExtensibleArray.Valid#canCall| _module.ExtensibleArray$T@@25 $Heap@@2 this@@3) (_module.ExtensibleArray.Valid _module.ExtensibleArray$T@@25 ($LS $LZ) $Heap@@2 this@@3))) (and (=> (= (ControlFlow 0 7) 5) anon4_Then_correct) (=> (= (ControlFlow 0 7) 6) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25)) ($IsAlloc refType this@@3 (Tclass._module.ExtensibleArray _module.ExtensibleArray$T@@25) $Heap@@2)))) (and (and ($IsBox |t#0| _module.ExtensibleArray$T@@25) ($IsAllocBox |t#0| _module.ExtensibleArray$T@@25 $Heap@@2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
