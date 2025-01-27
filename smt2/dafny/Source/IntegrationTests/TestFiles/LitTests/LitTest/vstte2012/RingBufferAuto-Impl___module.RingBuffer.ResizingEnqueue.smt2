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
(declare-fun Tagclass._module.RingBuffer () T@U)
(declare-fun class._module.RingBuffer? () T@U)
(declare-fun Tagclass._module.RingBuffer? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$RingBuffer () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$N () T@U)
(declare-fun field$data () T@U)
(declare-fun field$start () T@U)
(declare-fun field$len () T@U)
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
(declare-fun _module.RingBuffer.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.RingBuffer (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.RingBuffer.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.RingBuffer? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.RingBuffer.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.RingBuffer.Contents () T@U)
(declare-fun _module.RingBuffer.N () T@U)
(declare-fun _module.RingBuffer.data () T@U)
(declare-fun _module.RingBuffer.start () T@U)
(declare-fun _module.RingBuffer.len () T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.RingBuffer_0 (T@U) T@U)
(declare-fun Tclass._module.RingBuffer?_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._module.RingBuffer class._module.RingBuffer? Tagclass._module.RingBuffer? tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$RingBuffer field$Repr field$Contents field$N field$data field$start field$len)
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
 :skolemid |359|
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
 :skolemid |345|
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
(assert (forall ((_module.RingBuffer$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.RingBuffer _module.RingBuffer$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.RingBuffer.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |507|
)) (= (_module.RingBuffer.Valid _module.RingBuffer$T $h0 this) (_module.RingBuffer.Valid _module.RingBuffer$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.RingBuffer.Valid _module.RingBuffer$T $h1 this))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((_module.RingBuffer$T@@0 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.RingBuffer _module.RingBuffer$T@@0) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._module.RingBuffer? _module.RingBuffer$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.RingBuffer _module.RingBuffer$T@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.RingBuffer? _module.RingBuffer$T@@0) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.RingBuffer$T@@1 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@1 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.RingBuffer _module.RingBuffer$T@@1)) ($IsAlloc refType this@@0 (Tclass._module.RingBuffer _module.RingBuffer$T@@1) $Heap)))))) (=> (_module.RingBuffer.Valid _module.RingBuffer$T@@1 $Heap this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.RingBuffer.Repr)) ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (_module.RingBuffer.Valid _module.RingBuffer$T@@1 $Heap this@@0))
))))
(assert (forall ((s@@1 T@U) (t T@U) (n@@1 Int) ) (!  (=> (= n@@1 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@1) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@1))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
)))
(assert (= (FDim _module.RingBuffer.Repr) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$Repr) _module.RingBuffer.Repr))
(assert ($IsGhostField _module.RingBuffer.Repr))
(assert (= (FDim _module.RingBuffer.Contents) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$Contents) _module.RingBuffer.Contents))
(assert ($IsGhostField _module.RingBuffer.Contents))
(assert (= (FDim _module.RingBuffer.N) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$N) _module.RingBuffer.N))
(assert ($IsGhostField _module.RingBuffer.N))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@3))
)))
(assert (forall ((_module.RingBuffer$T@@2 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.RingBuffer? _module.RingBuffer$T@@2) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.RingBuffer? _module.RingBuffer$T@@2) $h@@4))
)))
(assert (= (FDim _module.RingBuffer.data) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$data) _module.RingBuffer.data))
(assert  (not ($IsGhostField _module.RingBuffer.data)))
(assert (= (FDim _module.RingBuffer.start) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$start) _module.RingBuffer.start))
(assert  (not ($IsGhostField _module.RingBuffer.start)))
(assert (= (FDim _module.RingBuffer.len) 0))
(assert (= (FieldOfDecl class._module.RingBuffer? field$len) _module.RingBuffer.len))
(assert  (not ($IsGhostField _module.RingBuffer.len)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@5))
)))
(assert (forall ((h T@U) (a@@7 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@7))) (= (|Seq#Take| (|Seq#FromArray| h a@@7) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a@@7) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (|Seq#Take| (|Seq#FromArray| h a@@7) n1))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@1 T@U) (n@@2 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 i@@0)) (< i@@0 (|Seq#Length| s@@2))) (= (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2) (|Seq#Update| (|Seq#Drop| s@@2 n@@2) (- i@@0 n@@2) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |252|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) ) (!  (=> (= n@@3 0) (= (|Seq#Drop| s@@3 n@@3) s@@3))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@3 n@@3))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s@@4 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@4 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@4)) (< j (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Take| s@@5 n@@4) j) (|Seq#Index| s@@5 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@5 n@@4) j))
 :pattern ( (|Seq#Index| s@@5 j) (|Seq#Take| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Drop| s@@6 n@@5)) (- (|Seq#Length| s@@6) n@@5)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@6 n@@5)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@6 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@6))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
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
(assert (forall ((a@@8 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@4))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@2 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@2 (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@7 T@U) (v@@3 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@7 v@@3)) (+ 1 (|Seq#Length| s@@7)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@7 v@@3))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.RingBuffer$T@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.RingBuffer _module.RingBuffer$T@@3))  (and ($Is refType |c#0@@3| (Tclass._module.RingBuffer? _module.RingBuffer$T@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.RingBuffer _module.RingBuffer$T@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.RingBuffer? _module.RingBuffer$T@@3)))
)))
(assert (forall ((v@@4 T@U) (t@@1 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@4) t@@1 h@@1) ($IsAlloc T@@1 v@@4 t@@1 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@4) t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@2) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@2 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@5 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@5 t@@3 h@@3) ($IsAlloc T@@2 v@@5 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@5 t@@3 h@@3))
)))
(assert (forall ((_module.RingBuffer$T@@4 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.RingBuffer? _module.RingBuffer$T@@4)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.RingBuffer.N)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.RingBuffer.N)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@4))
)))
(assert (forall ((_module.RingBuffer$T@@5 T@U) ($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.RingBuffer? _module.RingBuffer$T@@5)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.RingBuffer.start)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.RingBuffer.start)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@5))
)))
(assert (forall ((_module.RingBuffer$T@@6 T@U) ($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.RingBuffer? _module.RingBuffer$T@@6)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.RingBuffer.len)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.RingBuffer.len)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@6))
)))
(assert (forall ((s@@8 T@U) (n@@6 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@8) n@@6))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@1) (|Seq#Index| s@@8 (+ j@@1 n@@6))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@1))
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
(assert (forall ((_module.RingBuffer$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.RingBuffer _module.RingBuffer$T@@7)) Tagclass._module.RingBuffer) (= (TagFamily (Tclass._module.RingBuffer _module.RingBuffer$T@@7)) tytagFamily$RingBuffer))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.RingBuffer _module.RingBuffer$T@@7))
)))
(assert (forall ((_module.RingBuffer$T@@8 T@U) ) (!  (and (= (Tag (Tclass._module.RingBuffer? _module.RingBuffer$T@@8)) Tagclass._module.RingBuffer?) (= (TagFamily (Tclass._module.RingBuffer? _module.RingBuffer$T@@8)) tytagFamily$RingBuffer))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.RingBuffer? _module.RingBuffer$T@@8))
)))
(assert (forall ((_module.RingBuffer$T@@9 T@U) ($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.RingBuffer? _module.RingBuffer$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.RingBuffer.Contents)) (TSeq _module.RingBuffer$T@@9) $h@@10))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.RingBuffer.Contents)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@9))
)))
(assert (forall ((_module.RingBuffer$T@@10 T@U) ($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.RingBuffer? _module.RingBuffer$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.RingBuffer.data)) (Tclass._System.array _module.RingBuffer$T@@10) $h@@11))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.RingBuffer.data)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@10))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.RingBuffer$T@@11 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.RingBuffer? _module.RingBuffer$T@@11))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.RingBuffer? _module.RingBuffer$T@@11))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType $o@@11 (Tclass._module.RingBuffer? _module.RingBuffer$T@@11)))
)))
(assert (forall ((_module.RingBuffer$T@@12 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.RingBuffer? _module.RingBuffer$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.RingBuffer.N)) Tclass._System.nat $h@@12))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.RingBuffer.N)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@12))
)))
(assert (forall ((_module.RingBuffer$T@@13 T@U) ($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.RingBuffer? _module.RingBuffer$T@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.RingBuffer.start)) Tclass._System.nat $h@@13))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.RingBuffer.start)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@13))
)))
(assert (forall ((_module.RingBuffer$T@@14 T@U) ($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.RingBuffer? _module.RingBuffer$T@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.RingBuffer.len)) Tclass._System.nat $h@@14))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.RingBuffer.len)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@14))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@9 T@U) (i@@1 Int) (v@@6 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1) v@@6)) (=> (or (not (= i@@1 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1) (|Seq#Index| s@@9 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1))
)))
(assert (forall ((h@@4 T@U) (a@@9 T@U) ) (! (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| (|Seq#FromArray| h@@4 a@@9)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@9) i@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@9) (IndexField i@@2))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@9) (IndexField i@@2)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@9) i@@2))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@4 a@@9))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@5) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@5) o@@4))
)))
(assert (forall ((_module.RingBuffer$T@@15 T@U) ($h@@15 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.RingBuffer? _module.RingBuffer$T@@15)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.RingBuffer.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.RingBuffer.Repr)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@15))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@6) a@@11) b@@6) (= (|Set#Difference| (|Set#Union| a@@11 b@@6) b@@6) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@6))
)))
(assert (forall ((_module.RingBuffer$T@@16 T@U) ($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.RingBuffer? _module.RingBuffer$T@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.RingBuffer.Repr)) (TSet Tclass._System.object?) $h@@16))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.RingBuffer.Repr)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@16))
)))
(assert (forall ((s@@10 T@U) (i@@3 Int) (v@@7 T@U) (n@@7 Int) ) (!  (=> (and (and (<= 0 i@@3) (< i@@3 n@@7)) (<= n@@7 (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Update| s@@10 i@@3 v@@7) n@@7) (|Seq#Drop| s@@10 n@@7)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |253|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@10 i@@3 v@@7) n@@7))
)))
(assert (forall ((a@@12 T@U) (b@@7 T@U) ) (!  (=> (|Seq#Equal| a@@12 b@@7) (= a@@12 b@@7))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@12 b@@7))
)))
(assert (forall ((s@@11 T@U) (n@@8 Int) ) (!  (=> (and (<= 0 n@@8) (<= n@@8 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Take| s@@11 n@@8)) n@@8))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@11 n@@8)))
)))
(assert (forall ((a@@13 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@13 b@@8) ($HeapSucc b@@8 c))
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
(assert (forall ((v@@8 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@8) t@@4) ($Is T@@3 v@@8 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@8) t@@4))
)))
(assert (forall ((s@@12 T@U) (i@@4 Int) (v@@9 T@U) (n@@9 Int) ) (!  (=> (and (<= n@@9 i@@4) (< i@@4 (|Seq#Length| s@@12))) (= (|Seq#Take| (|Seq#Update| s@@12 i@@4 v@@9) n@@9) (|Seq#Take| s@@12 n@@9)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |251|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@12 i@@4 v@@9) n@@9))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (_System.array.Length o@@5))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@5))
)))
(assert (forall ((s@@13 T@U) ) (! (<= 0 (|Seq#Length| s@@13))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((v@@10 T@U) (t0@@1 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@10 (TSet t0@@1) h@@5) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@10 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@10 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@10 (TSet t0@@1) h@@5))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert (forall ((v@@11 T@U) (t0@@2 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@11 (TSeq t0@@2) h@@6) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@11))) ($IsAllocBox (|Seq#Index| v@@11 i@@5) t0@@2 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@11 i@@5))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@11 (TSeq t0@@2) h@@6))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((i@@6 Int) ) (! (= (FDim (IndexField i@@6)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@6))
)))
(assert (forall ((i@@7 Int) ) (! (= (IndexField_Inverse (IndexField i@@7)) i@@7)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@7))
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
(assert (forall ((_module.RingBuffer$T@@17 T@U) ) (! (= (Tclass._module.RingBuffer_0 (Tclass._module.RingBuffer _module.RingBuffer$T@@17)) _module.RingBuffer$T@@17)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.RingBuffer _module.RingBuffer$T@@17))
)))
(assert (forall ((_module.RingBuffer$T@@18 T@U) ) (! (= (Tclass._module.RingBuffer?_0 (Tclass._module.RingBuffer? _module.RingBuffer$T@@18)) _module.RingBuffer$T@@18)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._module.RingBuffer? _module.RingBuffer$T@@18))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((h@@7 T@U) (i@@8 Int) (v@@12 T@U) (a@@14 T@U) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (_System.array.Length a@@14))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 a@@14 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 a@@14) (IndexField i@@8) v@@12)) a@@14) (|Seq#Update| (|Seq#FromArray| h@@7 a@@14) i@@8 v@@12)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |265|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 a@@14 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 a@@14) (IndexField i@@8) v@@12)) a@@14))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@18)) TInt $h@@17))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@18 T@U) ($o@@19 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@19)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@15 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@9)) (|Set#Union| a@@15 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@9)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.RingBuffer$T@@19 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@19 $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.RingBuffer _module.RingBuffer$T@@19)) ($IsAlloc refType this@@1 (Tclass._module.RingBuffer _module.RingBuffer$T@@19) $Heap@@0)))))) (= (_module.RingBuffer.Valid _module.RingBuffer$T@@19 $Heap@@0 this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.Repr)) ($Box refType null)))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.data)) (and (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N))) (LitInt 0)) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start))) (LitInt 0))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.Contents)) |Seq#Empty|)))) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N))) 0)) (not true)) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N))))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.Contents)) (ite (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.data))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.len))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start)))) (|Seq#Append| (|Seq#Drop| (|Seq#FromArray| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start)))) (|Seq#Take| (|Seq#FromArray| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.data))) (- (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.RingBuffer.N)))))))))))))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (_module.RingBuffer.Valid _module.RingBuffer$T@@19 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h0 T@U) (h1 T@U) (a@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@16) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@16))) (= (|Seq#FromArray| h0 a@@16) (|Seq#FromArray| h1 a@@16)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |264|
 :pattern ( (|Seq#FromArray| h1 a@@16) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@14 T@U) (i@@9 Int) (v@@13 T@U) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@13)) (|Seq#Length| s@@14)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@13)))
)))
(assert (forall ((h@@8 T@U) (a@@17 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@8 a@@17)) (_System.array.Length a@@17))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@8 a@@17)))
)))
(assert (forall ((s@@15 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@15 val@@1)) s@@15) (= (|Seq#Build_inv1| (|Seq#Build| s@@15 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@15 val@@1))
)))
(assert (forall ((_module.RingBuffer$T@@20 T@U) ($h@@19 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.RingBuffer? _module.RingBuffer$T@@20)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.RingBuffer.Contents)) (TSeq _module.RingBuffer$T@@20)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.RingBuffer.Contents)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@20))
)))
(assert (forall ((_module.RingBuffer$T@@21 T@U) ($h@@20 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.RingBuffer? _module.RingBuffer$T@@21)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.RingBuffer.data)) (Tclass._System.array _module.RingBuffer$T@@21)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.RingBuffer.data)) (Tclass._module.RingBuffer? _module.RingBuffer$T@@21))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((bx@@8 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@10)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.RingBuffer$T@@22 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.RingBuffer _module.RingBuffer$T@@22)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.RingBuffer _module.RingBuffer$T@@22))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@11 (Tclass._module.RingBuffer _module.RingBuffer$T@@22)))
)))
(assert (forall ((_module.RingBuffer$T@@23 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.RingBuffer? _module.RingBuffer$T@@23)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._module.RingBuffer? _module.RingBuffer$T@@23))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@12 (Tclass._module.RingBuffer? _module.RingBuffer$T@@23)))
)))
(assert (forall ((h@@9 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@9 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@9 r) f x@@9))) ($HeapSucc h@@9 (MapType0Store refType (MapType0Type FieldType BoxType) h@@9 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@9 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@9 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@9 r) f x@@9)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@16 T@U) (n@@10 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@10) (<= n@@10 k@@2)) (< k@@2 (|Seq#Length| s@@16))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@10) (- k@@2 n@@10)) (|Seq#Index| s@@16 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@16 k@@2) (|Seq#Drop| s@@16 n@@10))
)))
(assert (forall ((s@@17 T@U) (m@@1 Int) (n@@11 Int) ) (!  (=> (and (and (<= 0 m@@1) (<= 0 n@@11)) (<= (+ m@@1 n@@11) (|Seq#Length| s@@17))) (= (|Seq#Drop| (|Seq#Drop| s@@17 m@@1) n@@11) (|Seq#Drop| s@@17 (+ m@@1 n@@11))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@17 m@@1) n@@11))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@12 Int) ) (!  (and (=> (< n@@12 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@12) (|Seq#Index| s0@@1 n@@12))) (=> (<= (|Seq#Length| s0@@1) n@@12) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@12) (|Seq#Index| s1@@1 (- n@@12 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@12))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@18 T@U) ) (!  (=> (= (|Seq#Length| s@@18) 0) (= s@@18 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@18))
)))
(assert (forall ((s@@19 T@U) (n@@13 Int) ) (!  (=> (= n@@13 0) (= (|Seq#Take| s@@19 n@@13) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@19 n@@13))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@22 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f@@0))  (=> (and (or (not (= $o@@22 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@22) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@22))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |573|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f@@0))
)))
(assert (forall ((h@@10 T@U) (v@@14 T@U) ) (! ($IsAlloc intType v@@14 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@14 TInt h@@10))
)))
(assert (forall ((s@@20 T@U) (i@@10 Int) (v@@15 T@U) (n@@14 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 n@@14)) (<= n@@14 (|Seq#Length| s@@20))) (= (|Seq#Take| (|Seq#Update| s@@20 i@@10 v@@15) n@@14) (|Seq#Update| (|Seq#Take| s@@20 n@@14) i@@10 v@@15)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |250|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@20 i@@10 v@@15) n@@14))
)))
(assert (forall ((v@@16 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@4)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@11) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@16 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@4)))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is intType v@@17 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@17 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |more#0_0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0_0_1@0| () Int)
(declare-fun _module.RingBuffer$T@@24 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |x#0@@1| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |nextEmpty#0@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |$rhs#0_2@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |d#0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.RingBuffer.ResizingEnqueue)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon7_correct  (and (=> (= (ControlFlow 0 42) (- 0 46)) (and (<= 0 (ite (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_0@0| (+ |i#0_0_0@0| |more#0_0@0|))) (< (ite (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_0@0| (+ |i#0_0_0@0| |more#0_0@0|)) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 42) (- 0 45)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (ite (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_0@0| (+ |i#0_0_0@0| |more#0_0@0|)))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (ite (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_0@0| (+ |i#0_0_0@0| |more#0_0@0|))))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data)) null)) (not true)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (and (<= 0 |i#0_0_0@0|) (< |i#0_0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data)))))) (=> (and (and (<= (LitInt 0) |i#0_0_1@0|) (< |i#0_0_1@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))))) (and (or (not (= |i#0_0_0@0| |i#0_0_1@0|)) (not true)) (= (ControlFlow 0 42) (- 0 41)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField (ite (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_0@0| (+ |i#0_0_0@0| |more#0_0@0|))) (IndexField (ite (< |i#0_0_1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_1@0| (+ |i#0_0_1@0| |more#0_0@0|))))) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))) (IndexField |i#0_0_0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))) (IndexField |i#0_0_1@0|)))))))))))))
(let ((anon23_Else_correct  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start))) |i#0_0_0@0|) (= (ControlFlow 0 48) 42)) anon7_correct)))
(let ((anon23_Then_correct  (=> (and (< |i#0_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) (= (ControlFlow 0 47) 42)) anon7_correct)))
(let ((anon4_correct  (=> (and (<= (LitInt 0) |i#0_0_0@0|) (< |i#0_0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 49) 47) anon23_Then_correct) (=> (= (ControlFlow 0 49) 48) anon23_Else_correct)))))))
(let ((anon22_Else_correct  (=> (and (< |i#0_0_0@0| (LitInt 0)) (= (ControlFlow 0 53) 49)) anon4_correct)))
(let ((anon22_Then_correct  (=> (<= (LitInt 0) |i#0_0_0@0|) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (= (ControlFlow 0 51) 49) anon4_correct)))))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 54) 51) anon22_Then_correct) (=> (= (ControlFlow 0 54) 53) anon22_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType this@@2))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType this@@2)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType null)))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start)))))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (LitInt 0)))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (LitInt 0))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) |Seq#Empty|))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (LitInt 0)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) |Seq#Empty|)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) 0)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) 0)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) 0)) (not true)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) 0)) (not true)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) (ite (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start)))) (|Seq#Append| (|Seq#Drop| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start)))) (|Seq#Take| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (- (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))))))))))) (=> (=> (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@10 this@@2) (or (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@10 this@@2) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) (ite (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start)))) (|Seq#Append| (|Seq#Drop| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start)))) (|Seq#Take| (|Seq#FromArray| $Heap@10 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.data))) (- (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (forall (($o@@23 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@23)))) (or (not (= $o@@23 null)) (not true)))
 :qid |RingBufferAutodfy.58:10|
 :skolemid |551|
 :pattern (  (or (not (= $o@@23 null)) (not true)))
)) (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@24)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@24) alloc)))))
 :qid |RingBufferAutodfy.58:10|
 :skolemid |552|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@24) alloc)))
)))) (=> (and (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@25)))) (or (not (= $o@@25 null)) (not true)))
 :qid |RingBufferAutodfy.58:10|
 :skolemid |551|
 :pattern (  (or (not (= $o@@25 null)) (not true)))
)) (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType $o@@26)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@26) alloc)))))
 :qid |RingBufferAutodfy.58:10|
 :skolemid |552|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@26) alloc)))
))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Contents)) (|Seq#Build| |Seq#Empty| |x#0@@1|)))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.Contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Contents)) (|Seq#Build| |Seq#Empty| |x#0@@1|))) (=> (= (ControlFlow 0 2) (- 0 1)) (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@2) _module.RingBuffer.N))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N)))))))))))))))))))))))))))))))
(let ((anon26_Else_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.data)) (=> (and (= $Heap@10 $Heap@8) (= (ControlFlow 0 17) 2)) GeneratedUnifiedExit_correct))))
(let ((anon26_Then_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.data))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.Repr))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.Repr)) (=> (= |$rhs#1_0@0| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.data)))) (=> (and (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@2) _module.RingBuffer.Repr ($Box SetType |$rhs#1_0@0|)))) ($IsGoodHeap $Heap@9)) (and (= $Heap@10 $Heap@9) (= (ControlFlow 0 15) 2))) GeneratedUnifiedExit_correct)))))))
(let ((anon17_correct  (=> (= |nextEmpty#0@0| (ite (< (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.len)))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.len)))) (- (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.len)))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)))))) (and (=> (= (ControlFlow 0 18) (- 0 24)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 23)) (and (<= 0 |nextEmpty#0@0|) (< |nextEmpty#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)))))) (=> (and (<= 0 |nextEmpty#0@0|) (< |nextEmpty#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data))))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) (IndexField |nextEmpty#0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) (IndexField |nextEmpty#0@0|))) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data))) (IndexField |nextEmpty#0@0|) |x#0@@1|))) ($IsGoodHeap $Heap@6)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.len))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.len)) (and (=> (= (ControlFlow 0 18) (- 0 20)) ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@2) _module.RingBuffer.len))) 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@2) _module.RingBuffer.len))) 1)) Tclass._System.nat) (=> (= |$rhs#1@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@2) _module.RingBuffer.len))) 1)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@2) _module.RingBuffer.len ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.Contents))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.Contents)) (=> (= |$rhs#2@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@2) _module.RingBuffer.Contents)) (|Seq#Build| |Seq#Empty| |x#0@@1|))) (=> (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@2) _module.RingBuffer.Contents ($Box SeqType |$rhs#2@0|)))) ($IsGoodHeap $Heap@8)) (and (=> (= (ControlFlow 0 18) 15) anon26_Then_correct) (=> (= (ControlFlow 0 18) 17) anon26_Else_correct))))))))))))))))))))))
(let ((anon25_Else_correct  (=> (<= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.len))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true)) (=> (= (ControlFlow 0 26) 18) anon17_correct))))))
(let ((anon25_Then_correct  (=> (and (< (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.len)))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)))) (= (ControlFlow 0 25) 18)) anon17_correct)))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@2) _module.RingBuffer.data)) null)) (not true)) (and (=> (= (ControlFlow 0 28) 25) anon25_Then_correct) (=> (= (ControlFlow 0 28) 26) anon25_Else_correct))))))
(let ((anon12_correct  (=> (= |$rhs#0_2@0| (ite (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.start))) |more#0_0@0|))) (=> (and (and (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.N ($Box intType (int_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@2)) (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@2) _module.RingBuffer.data ($Box refType $nw@0)))) ($IsGoodHeap $Heap@3))) (and (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@2) _module.RingBuffer.start ($Box intType (int_2_U |$rhs#0_2@0|))))) ($IsGoodHeap $Heap@4)) (and (= $Heap@5 $Heap@4) (= (ControlFlow 0 31) 28)))) anon14_correct))))
(let ((anon24_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 34) (- 0 35)) ($Is intType (int_2_U (ite (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.start))) |more#0_0@0|))) Tclass._System.nat)) (=> ($Is intType (int_2_U (ite (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.start))) |more#0_0@0|))) Tclass._System.nat) (=> (= (ControlFlow 0 34) 31) anon12_correct))))))
(let ((anon24_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($Is intType (int_2_U (ite (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.start))) |more#0_0@0|))) Tclass._System.nat)) (=> ($Is intType (int_2_U (ite (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.len))) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.start))) |more#0_0@0|))) Tclass._System.nat) (=> (= (ControlFlow 0 32) 31) anon12_correct))))))
(let ((anon21_Else_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@27 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@27) $f@@1)) (exists ((|i#0_0_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_0_2|) (< |i#0_0_2| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))))) (= $o@@27 $nw@0)) (= $f@@1 (IndexField (ite (< |i#0_0_2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))) |i#0_0_2| (+ |i#0_0_2| |more#0_0@0|)))))
 :qid |RingBufferAutodfy.64:14|
 :skolemid |554|
)))
 :qid |RingBufferAutodfy.64:7|
 :skolemid |555|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) $f@@1))
))) (and (forall ((|i#inv#0_0_0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#inv#0_0_0|) (< |i#inv#0_0_0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))))) (< |i#inv#0_0_0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))) (IndexField |i#inv#0_0_0|))))
 :qid |RingBufferAutodfy.64:14|
 :skolemid |556|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0|)))
)) (forall ((|i#inv#0_0_0@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) (- |i#inv#0_0_0@@0| |more#0_0@0|)) (< (- |i#inv#0_0_0@@0| |more#0_0@0|) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))))) (not (< (- |i#inv#0_0_0@@0| |more#0_0@0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.start)))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.RingBuffer.data))) (IndexField (- |i#inv#0_0_0@@0| |more#0_0@0|)))))
 :qid |RingBufferAutodfy.64:14|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0_0@@0|)))
)))) (and (=> (= (ControlFlow 0 36) (- 0 40)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.N))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.N)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.data)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.start))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.RingBuffer.start)) (and (=> (= (ControlFlow 0 36) (- 0 37)) ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.N))) |more#0_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.N))) |more#0_0@0|)) Tclass._System.nat) (=> (= |$rhs#0_0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.RingBuffer.N))) |more#0_0@0|)) (and (=> (= (ControlFlow 0 36) 32) anon24_Then_correct) (=> (= (ControlFlow 0 36) 34) anon24_Else_correct)))))))))))))))
(let ((anon20_Then_correct  (=> (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len)))) (and (=> (= (ControlFlow 0 55) (- 0 58)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true)) (=> (= |more#0_0@0| (+ (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) 1)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (<= 0 (+ (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) |more#0_0@0|))) (=> (<= 0 (+ (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) |more#0_0@0|)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? _module.RingBuffer$T@@24))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (+ (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) |more#0_0@0|)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 55) 54) anon21_Then_correct) (=> (= (ControlFlow 0 55) 36) anon21_Else_correct)))))))))))))
(let ((anon20_Else_correct  (=> (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len))))) (not true)) (=> (and (= $Heap@5 $Heap@@1) (= (ControlFlow 0 30) 28)) anon14_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) null)) (not true)) (and (=> (= (ControlFlow 0 59) 55) anon20_Then_correct) (=> (= (ControlFlow 0 59) 30) anon20_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.RingBuffer _module.RingBuffer$T@@24)) ($IsAlloc refType this@@2 (Tclass._module.RingBuffer _module.RingBuffer$T@@24) $Heap@@1))) (and ($IsBox |x#0@@1| _module.RingBuffer$T@@24) ($IsAllocBox |x#0@@1| _module.RingBuffer$T@@24 $Heap@@1))) (=> (and (and (and (and ($Is refType |d#0_0| (Tclass._System.array _module.RingBuffer$T@@24)) ($IsAlloc refType |d#0_0| (Tclass._System.array _module.RingBuffer$T@@24) $Heap@@1)) true) (= 1 $FunctionContextHeight)) (and (and (|_module.RingBuffer.Valid#canCall| _module.RingBuffer$T@@24 $Heap@@1 this@@2) (and (_module.RingBuffer.Valid _module.RingBuffer$T@@24 $Heap@@1 this@@2) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType this@@2)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) ($Box refType null)))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data)) (and (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N))) (LitInt 0)) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start))) (LitInt 0))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Contents)) |Seq#Empty|)))) (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N))) 0)) (not true)) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N))))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.Contents)) (ite (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start)))) (|Seq#Append| (|Seq#Drop| (|Seq#FromArray| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start)))) (|Seq#Take| (|Seq#FromArray| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.data))) (- (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.start))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.len)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.RingBuffer.N))))))))))))) (= (ControlFlow 0 61) 59))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
