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
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.List? () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun Tagclass._module.M () T@U)
(declare-fun Tagclass._module.M? () T@U)
(declare-fun class._module.List? () T@U)
(declare-fun class._module.M? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$M () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$a () T@U)
(declare-fun field$n () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$xs () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$x () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.M.x () T@U)
(declare-fun Tclass._module.M? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.List.Valid (T@U T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun _module.List.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.List? (T@U) T@U)
(declare-fun Tclass._module.M (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun _module.M.l (T@U) T@U)
(declare-fun _module.M.__decreases0 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.List.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.List.Contents () T@U)
(declare-fun _module.M.xs () T@U)
(declare-fun _module.M.__new () T@U)
(declare-fun _module.List.a () T@U)
(declare-fun _module.List.n () T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.List?_0 (T@U) T@U)
(declare-fun Tclass._module.M_0 (T@U) T@U)
(declare-fun Tclass._module.M?_0 (T@U) T@U)
(declare-fun _module.M.Valid (T@U T@U T@U) Bool)
(declare-fun _module.M.__reads (T@U) T@U)
(declare-fun _module.M.c (T@U) T@U)
(declare-fun _module.M.__decreases1 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.M.__modifies (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#13| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._module.List Tagclass._module.List? Tagclass._module.Cell Tagclass._module.Cell? Tagclass._module.M Tagclass._module.M? class._module.List? class._module.M? tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$List tytagFamily$Cell tytagFamily$M field$Repr field$a field$n field$Contents field$xs field$_new field$x)
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
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.M$T T@U) ($h T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.M? _module.M$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.M.x) _module.M$T))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.M.x) (Tclass._module.M? _module.M$T))
)))
(assert (forall ((_module.M$T@@0 T@U) ($h@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.M? _module.M$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.M.x) _module.M$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.M.x) (Tclass._module.M? _module.M$T@@0))
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
(assert (forall ((|x#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@1)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@1))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((_module.List$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.List _module.List$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (or (= $o@@2 this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.List.Repr)) ($Box refType $o@@2)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |536|
)) (= (_module.List.Valid _module.List$T $h0 this) (_module.List.Valid _module.List$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.List.Valid _module.List$T $h1 this))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
)))
(assert (forall ((_module.List$T@@0 T@U) (|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T@@0) $h@@3) ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T@@0) $h@@3))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T@@0) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T@@0) $h@@3))
)))
(assert (forall ((_module.M$T@@1 T@U) (|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._module.M _module.M$T@@1) $h@@4) ($IsAlloc refType |c#0@@1| (Tclass._module.M? _module.M$T@@1) $h@@4))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.M _module.M$T@@1) $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.M? _module.M$T@@1) $h@@4))
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
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Cell?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($Is refType $o@@3 Tclass._module.Cell?))
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
(assert (forall ((_module.M$T@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.M? _module.M$T@@2))) ($Is refType (_module.M.l $o@@4) (Tclass._module.List _module.M$T@@2)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (_module.M.l $o@@4) (Tclass._module.M? _module.M$T@@2))
)))
(assert (forall ((_module.M$T@@3 T@U) ($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.M? _module.M$T@@3))) ($Is refType (_module.M.__decreases0 $o@@5) (Tclass._module.List? _module.M$T@@3)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.M.__decreases0 $o@@5) (Tclass._module.M? _module.M$T@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.List$T@@1 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.List.Valid#canCall| _module.List$T@@1 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.List _module.List$T@@1)) ($IsAlloc refType this@@0 (Tclass._module.List _module.List$T@@1) $Heap)))))) (=> (_module.List.Valid _module.List$T@@1 $Heap this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.List.Repr)) ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.List.Valid _module.List$T@@1 $Heap this@@0))
))))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@5) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Cell $h@@6) ($IsAlloc refType |c#0@@3| Tclass._module.Cell? $h@@6))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Cell $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Cell? $h@@6))
)))
(assert (= (FDim _module.List.Repr) 0))
(assert (= (FieldOfDecl class._module.List? field$Repr) _module.List.Repr))
(assert ($IsGhostField _module.List.Repr))
(assert (= (FDim _module.List.Contents) 0))
(assert (= (FieldOfDecl class._module.List? field$Contents) _module.List.Contents))
(assert ($IsGhostField _module.List.Contents))
(assert (= (FDim _module.M.xs) 0))
(assert (= (FieldOfDecl class._module.M? field$xs) _module.M.xs))
(assert ($IsGhostField _module.M.xs))
(assert (= (FDim _module.M.__new) 0))
(assert (= (FieldOfDecl class._module.M? field$_new) _module.M.__new))
(assert ($IsGhostField _module.M.__new))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@6 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@7)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@7))
)))
(assert (forall ((_module.List$T@@2 T@U) ($o@@7 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@7 (Tclass._module.List? _module.List$T@@2) $h@@8)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass._module.List? _module.List$T@@2) $h@@8))
)))
(assert (forall ((_module.M$T@@4 T@U) ($o@@8 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@8 (Tclass._module.M? _module.M$T@@4) $h@@9)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.M? _module.M$T@@4) $h@@9))
)))
(assert (= (FDim _module.List.a) 0))
(assert (= (FieldOfDecl class._module.List? field$a) _module.List.a))
(assert  (not ($IsGhostField _module.List.a)))
(assert (= (FDim _module.List.n) 0))
(assert (= (FieldOfDecl class._module.List? field$n) _module.List.n))
(assert  (not ($IsGhostField _module.List.n)))
(assert (= (FDim _module.M.x) 0))
(assert (= (FieldOfDecl class._module.M? field$x) _module.M.x))
(assert  (not ($IsGhostField _module.M.x)))
(assert (forall (($o@@9 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._System.object? $h@@10)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._System.object? $h@@10))
)))
(assert (forall (($o@@10 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._module.Cell? $h@@11)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.Cell? $h@@11))
)))
(assert (forall ((h T@U) (a@@7 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@7))) (= (|Seq#Take| (|Seq#FromArray| h a@@7) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a@@7) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (|Seq#Take| (|Seq#FromArray| h a@@7) n1))
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
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
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
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@12 T@U) ($o@@11 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) (IndexField $i0)) _System.array$arg@@2 $h@@12))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@5 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@1)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@5 v@@1))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.List$T@@3 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._module.List _module.List$T@@3))  (and ($Is refType |c#0@@5| (Tclass._module.List? _module.List$T@@3)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.List _module.List$T@@3)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.List? _module.List$T@@3)))
)))
(assert (forall ((_module.M$T@@5 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass._module.M _module.M$T@@5))  (and ($Is refType |c#0@@6| (Tclass._module.M? _module.M$T@@5)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($Is refType |c#0@@6| (Tclass._module.M _module.M$T@@5)))
 :pattern ( ($Is refType |c#0@@6| (Tclass._module.M? _module.M$T@@5)))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@1) ($IsAlloc T@@1 v@@2 t@@1 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@2) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@2 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@3 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@3 h@@3) ($IsAlloc T@@2 v@@3 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@3 t@@3 h@@3))
)))
(assert (forall ((_module.List$T@@4 T@U) ($h@@13 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.List? _module.List$T@@4)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.List.n)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.List.n)) (Tclass._module.List? _module.List$T@@4))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1))
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
(assert (forall ((_module.List$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@5)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@5)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.List _module.List$T@@5))
)))
(assert (forall ((_module.List$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.List? _module.List$T@@6)) Tagclass._module.List?) (= (TagFamily (Tclass._module.List? _module.List$T@@6)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.List? _module.List$T@@6))
)))
(assert (forall ((_module.M$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.M _module.M$T@@6)) Tagclass._module.M) (= (TagFamily (Tclass._module.M _module.M$T@@6)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (Tclass._module.M _module.M$T@@6))
)))
(assert (forall ((_module.M$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.M? _module.M$T@@7)) Tagclass._module.M?) (= (TagFamily (Tclass._module.M? _module.M$T@@7)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Tclass._module.M? _module.M$T@@7))
)))
(assert (forall ((_module.List$T@@7 T@U) ($h@@14 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.List? _module.List$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.List.Contents)) (TSeq _module.List$T@@7) $h@@14))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.List.Contents)) (Tclass._module.List? _module.List$T@@7))
)))
(assert (forall ((_module.List$T@@8 T@U) ($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.List? _module.List$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.List.a)) (Tclass._System.array _module.List$T@@8) $h@@15))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.List.a)) (Tclass._module.List? _module.List$T@@8))
)))
(assert (forall ((_module.M$T@@8 T@U) ($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.M? _module.M$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.M.xs)) (TSeq _module.M$T@@8) $h@@16))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.M.xs)) (Tclass._module.M? _module.M$T@@8))
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
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@5 Tclass._module.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Cell?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@6 Tclass._module.Cell?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@16 T@U) ) (! (= ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@16 null) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.List$T@@9 T@U) ($o@@17 T@U) ) (! (= ($Is refType $o@@17 (Tclass._module.List? _module.List$T@@9))  (or (= $o@@17 null) (= (dtype $o@@17) (Tclass._module.List? _module.List$T@@9))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is refType $o@@17 (Tclass._module.List? _module.List$T@@9)))
)))
(assert (forall ((_module.M$T@@9 T@U) ($o@@18 T@U) ) (! (= ($Is refType $o@@18 (Tclass._module.M? _module.M$T@@9))  (or (= $o@@18 null) (= (dtype $o@@18) (Tclass._module.M? _module.M$T@@9))))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($Is refType $o@@18 (Tclass._module.M? _module.M$T@@9)))
)))
(assert (forall ((_module.List$T@@10 T@U) ($h@@17 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.List? _module.List$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.List.n)) Tclass._System.nat $h@@17))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.List.n)) (Tclass._module.List? _module.List$T@@10))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._System.object)  (and ($Is refType |c#0@@7| Tclass._System.object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Cell)  (and ($Is refType |c#0@@8| Tclass._module.Cell?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Cell?))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@4) i))
)))
(assert (forall ((h@@4 T@U) (a@@9 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@4 a@@9)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@9) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@9) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@9) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@9) i@@0))
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
(assert (forall ((_module.List$T@@11 T@U) ($h@@18 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.List? _module.List$T@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.List.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.List.Repr)) (Tclass._module.List? _module.List$T@@11))
)))
(assert (forall ((_module.M$T@@10 T@U) ($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.M? _module.M$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.M.__new)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.M.__new)) (Tclass._module.M? _module.M$T@@10))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@6) a@@11) b@@6) (= (|Set#Difference| (|Set#Union| a@@11 b@@6) b@@6) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@6))
)))
(assert (forall ((_module.List$T@@12 T@U) ($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.List? _module.List$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.List.Repr)) (TSet Tclass._System.object) $h@@20))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.List.Repr)) (Tclass._module.List? _module.List$T@@12))
)))
(assert (forall ((_module.M$T@@11 T@U) ($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.M? _module.M$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.M.__new)) (TSet Tclass._System.object?) $h@@21))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.M.__new)) (Tclass._module.M? _module.M$T@@11))
)))
(assert (forall ((a@@12 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@7) (= a@@12 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@7))
)))
(assert (forall ((a@@13 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@13 b@@8) (= a@@13 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@13 b@@8))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
)))
(assert (forall ((a@@14 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@14 c)) (not true)) (=> (and ($HeapSucc a@@14 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@14 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@14 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@4) ($Is T@@3 v@@5 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@4))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (_System.array.Length o@@5))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@5))
)))
(assert (forall ((s@@9 T@U) ) (! (<= 0 (|Seq#Length| s@@9))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@5) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@5))
)))
(assert (forall (($o@@24 T@U) ) (! ($Is refType $o@@24 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@24 Tclass._System.object?))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@6) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@1) t0@@2 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@6))
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
(assert (forall ((i@@2 Int) ) (! (= (FDim (IndexField i@@2)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (IndexField_Inverse (IndexField i@@3)) i@@3)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@3))
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
(assert (forall ((_module.List$T@@13 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@13)) _module.List$T@@13)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.List _module.List$T@@13))
)))
(assert (forall ((_module.List$T@@14 T@U) ) (! (= (Tclass._module.List?_0 (Tclass._module.List? _module.List$T@@14)) _module.List$T@@14)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.List? _module.List$T@@14))
)))
(assert (forall ((_module.M$T@@12 T@U) ) (! (= (Tclass._module.M_0 (Tclass._module.M _module.M$T@@12)) _module.M$T@@12)
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._module.M _module.M$T@@12))
)))
(assert (forall ((_module.M$T@@13 T@U) ) (! (= (Tclass._module.M?_0 (Tclass._module.M? _module.M$T@@13)) _module.M$T@@13)
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Tclass._module.M? _module.M$T@@13))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@22 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@25)) TInt $h@@22))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@25) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_module.M$T@@14 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.M _module.M$T@@14)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@26 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (or (or (= $o@@26 this@@1) (|Set#IsMember| (_module.M.__reads this@@1) ($Box refType $o@@26))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@1) _module.M.__new)) ($Box refType $o@@26)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@26) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@26) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |592|
)) (= (_module.M.Valid _module.M$T@@14 $h0@@0 this@@1) (_module.M.Valid _module.M$T@@14 $h1@@0 this@@1))))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.M.Valid _module.M$T@@14 $h1@@0 this@@1))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@23 T@U) ($o@@27 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@27)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@15 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@10)) (|Set#Union| a@@15 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@10)))
)))
(assert (forall ((_module.M$T@@15 T@U) ($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) (Tclass._module.M? _module.M$T@@15))) ($Is refType (_module.M.c $o@@28) Tclass._module.Cell))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.M.c $o@@28) (Tclass._module.M? _module.M$T@@15))
)))
(assert (forall ((_module.M$T@@16 T@U) ($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) (Tclass._module.M? _module.M$T@@16))) ($Is refType (_module.M.__decreases1 $o@@29) Tclass._module.Cell?))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.M.__decreases1 $o@@29) (Tclass._module.M? _module.M$T@@16))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@16) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@16))) (= (|Seq#FromArray| h0 a@@16) (|Seq#FromArray| h1 a@@16)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |264|
 :pattern ( (|Seq#FromArray| h1 a@@16) ($HeapSucc h0 h1))
)))
(assert (forall ((_module.M$T@@17 T@U) ($h@@24 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) (Tclass._module.M? _module.M$T@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) alloc)))) ($IsAlloc refType (_module.M.l $o@@30) (Tclass._module.List _module.M$T@@17) $h@@24))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (_module.M.l $o@@30) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) alloc)) (Tclass._module.M? _module.M$T@@17))
)))
(assert (forall ((_module.M$T@@18 T@U) ($h@@25 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) (Tclass._module.M? _module.M$T@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@31) alloc)))) ($IsAlloc refType (_module.M.__decreases0 $o@@31) (Tclass._module.List? _module.M$T@@18) $h@@25))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.M.__decreases0 $o@@31) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@31) alloc)) (Tclass._module.M? _module.M$T@@18))
)))
(assert (forall ((h@@7 T@U) (a@@17 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@7 a@@17)) (_System.array.Length a@@17))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@7 a@@17)))
)))
(assert (forall ((s@@10 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@1)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@10 val@@1))
)))
(assert (forall ((_module.List$T@@15 T@U) ($h@@26 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) (Tclass._module.List? _module.List$T@@15)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@32) _module.List.Contents)) (TSeq _module.List$T@@15)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@32) _module.List.Contents)) (Tclass._module.List? _module.List$T@@15))
)))
(assert (forall ((_module.List$T@@16 T@U) ($h@@27 T@U) ($o@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) (Tclass._module.List? _module.List$T@@16)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@33) _module.List.a)) (Tclass._System.array _module.List$T@@16)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@33) _module.List.a)) (Tclass._module.List? _module.List$T@@16))
)))
(assert (forall ((_module.M$T@@19 T@U) ($h@@28 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) (Tclass._module.M? _module.M$T@@19)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@34) _module.M.xs)) (TSeq _module.M$T@@19)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@34) _module.M.xs)) (Tclass._module.M? _module.M$T@@19))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@9)))
)))
(assert (forall ((bx@@10 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@10)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@11 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@12 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.List$T@@17 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._module.List _module.List$T@@17)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass._module.List _module.List$T@@17))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@13 (Tclass._module.List _module.List$T@@17)))
)))
(assert (forall ((_module.List$T@@18 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._module.List? _module.List$T@@18)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._module.List? _module.List$T@@18))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@14 (Tclass._module.List? _module.List$T@@18)))
)))
(assert (forall ((_module.M$T@@20 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._module.M _module.M$T@@20)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._module.M _module.M$T@@20))))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@15 (Tclass._module.M _module.M$T@@20)))
)))
(assert (forall ((_module.M$T@@21 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._module.M? _module.M$T@@21)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._module.M? _module.M$T@@21))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@16 (Tclass._module.M? _module.M$T@@21)))
)))
(assert (forall ((_module.M$T@@22 T@U) ($h@@29 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) (Tclass._module.M? _module.M$T@@22)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@35) alloc)))) ($IsAlloc refType (_module.M.c $o@@35) Tclass._module.Cell $h@@29))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.M.c $o@@35) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@35) alloc)) (Tclass._module.M? _module.M$T@@22))
)))
(assert (forall ((_module.M$T@@23 T@U) ($h@@30 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) (Tclass._module.M? _module.M$T@@23)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@36) alloc)))) ($IsAlloc refType (_module.M.__decreases1 $o@@36) Tclass._module.Cell? $h@@30))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.M.__decreases1 $o@@36) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@36) alloc)) (Tclass._module.M? _module.M$T@@23))
)))
(assert (forall ((_module.M$T@@24 T@U) ($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) (Tclass._module.M? _module.M$T@@24))) ($Is SetType (_module.M.__reads $o@@37) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (_module.M.__reads $o@@37) (Tclass._module.M? _module.M$T@@24))
)))
(assert (forall ((_module.M$T@@25 T@U) ($o@@38 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) (Tclass._module.M? _module.M$T@@25))) ($Is SetType (_module.M.__modifies $o@@38) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (_module.M.__modifies $o@@38) (Tclass._module.M? _module.M$T@@25))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (forall ((s@@11 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@11 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@11 k@@2) (|Seq#Drop| s@@11 n@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@39 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#13| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@39 $f@@1))  (=> (and (or (not (= $o@@39 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@39) |l#2|)))) (or (= $o@@39 |l#3|) (= $o@@39 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |616|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#13| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@39 $f@@1))
)))
(assert (forall ((a@@18 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@18 b@@11) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@18 o@@6) (|Set#IsMember| b@@11 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@18 o@@6))
 :pattern ( (|Set#IsMember| b@@11 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@18 b@@11))
)))
(assert (forall ((s@@12 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@12))) (= (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7) (|Seq#Drop| s@@12 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (! (= (|Seq#SameUntil| s0@@1 s1@@1 n@@8) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 n@@8)) (= (|Seq#Index| s0@@1 j@@2) (|Seq#Index| s1@@1 j@@2)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0@@1 j@@2))
 :pattern ( (|Seq#Index| s1@@1 j@@2))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0@@1 s1@@1 n@@8))
)))
(assert (forall ((_module.M$T@@26 T@U) ($h@@31 T@U) ($o@@40 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) (Tclass._module.M? _module.M$T@@26)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@40) alloc)))) ($IsAlloc SetType (_module.M.__reads $o@@40) (TSet Tclass._System.object?) $h@@31))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.M.__reads $o@@40) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@40) alloc)) (Tclass._module.M? _module.M$T@@26))
)))
(assert (forall ((_module.M$T@@27 T@U) ($h@@32 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) (Tclass._module.M? _module.M$T@@27)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@41) alloc)))) ($IsAlloc SetType (_module.M.__modifies $o@@41) (TSet Tclass._System.object?) $h@@32))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (_module.M.__modifies $o@@41) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@41) alloc)) (Tclass._module.M? _module.M$T@@27))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@9 Int) ) (!  (and (=> (< n@@9 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9) (|Seq#Index| s0@@2 n@@9))) (=> (<= (|Seq#Length| s0@@2) n@@9) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9) (|Seq#Index| s1@@2 (- n@@9 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9))
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
(assert (forall ((s@@13 T@U) ) (!  (=> (= (|Seq#Length| s@@13) 0) (= s@@13 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((s@@14 T@U) (n@@10 Int) ) (!  (=> (= n@@10 0) (= (|Seq#Take| s@@14 n@@10) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@14 n@@10))
)))
(assert (forall ((h@@8 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@8)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@8))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@4)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@4) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@9 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@4)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.List$T@@19 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.List.Valid#canCall| _module.List$T@@19 $Heap@@0 this@@2) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.List _module.List$T@@19)) ($IsAlloc refType this@@2 (Tclass._module.List _module.List$T@@19) $Heap@@0)))))) (= (_module.List.Valid _module.List$T@@19 $Heap@@0 this@@2)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.Repr)) ($Box refType this@@2)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.a))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.a))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.Contents)) (|Seq#Take| (|Seq#FromArray| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.a))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.List.n))))))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.List.Valid _module.List$T@@19 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@1 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun _module.M$T@@28 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |c#0@@9| () T@U)
(declare-fun |l#0@@0| () T@U)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@modi@0 () T@U)
(declare-fun call1formal@modi@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.M)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_Else_correct  (=> (and (= ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.M.xs))) (= (ControlFlow 0 6) (- 0 5))) (or (not (= (_module.M.l this@@3) null)) (not true)))))
(let ((anon3_Then_correct  (=> (and (_module.M.Valid _module.M$T@@28 $Heap@1 this@@3) (= ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.M.xs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.x))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= (_module.M.l this@@3) null)) (not true))) (=> (or (not (= (_module.M.l this@@3) null)) (not true)) (=> (and (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.M.l this@@3)) _module.List.Contents)))) (|Seq#SameUntil| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.M.l this@@3)) _module.List.Contents)) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= (_module.M.l this@@3) null)) (not true))) (=> (or (not (= (_module.M.l this@@3) null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs))) 1)) (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.xs))) 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.M.l this@@3)) _module.List.Contents))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#13| null $Heap@@1 alloc this@@3 |c#0@@9|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= |l#0@@0| null)) (not true))) (=> (or (not (= |l#0@@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |l#0@@0|) (Tclass._module.List? _module.M$T@@28) $Heap@@1) (=> (and (|_module.List.Valid#canCall| _module.M$T@@28 $Heap@@1 |l#0@@0|) (_module.List.Valid _module.M$T@@28 $Heap@@1 |l#0@@0|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= |l#0@@0| null)) (not true))) (=> (or (not (= |l#0@@0| null)) (not true)) (=> (= (_module.M.l this@@3) |l#0@@0|) (=> (and (= (_module.M.c this@@3) |c#0@@9|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.M.xs)) |Seq#Empty|)) (=> (and (and (and (_module.M.Valid _module.M$T@@28 $Heap@@1 this@@3) (|Set#Equal| (_module.M.__reads this@@3) (|Set#Union| |Set#Empty| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |l#0@@0|) _module.List.Repr))))) (and (|Set#Equal| (_module.M.__modifies this@@3) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@9|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.M.__new)) |Set#Empty|))) (and (and (= (_module.M.__decreases0 this@@3) |l#0@@0|) (= (_module.M.__decreases1 this@@3) |c#0@@9|)) (and (= call1formal@rds@0 (_module.M.__reads this@@3)) (= call2formal@modi@0 (_module.M.__modifies this@@3))))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@42 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@42) alloc)))) (=> (and (and (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@42)) (not (|Set#IsMember| call2formal@modi@0 ($Box refType $o@@42)))) (or (not (= $o@@42 this@@3)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@42) $f@@2))))
 :qid |DafnyPreludebpl.629:19|
 :skolemid |121|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42) $f@@2))
))) (and ($HeapSucc $Heap@@1 $Heap@0) (_module.M.Valid _module.M$T@@28 $Heap@0 this@@3))) (and (and (and (= call1formal@modi@0 (_module.M.__modifies this@@3)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.M.__new)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (forall (($o@@43 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@43) alloc)))) (or (or (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@43) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@43) $f@@3)) (= $o@@43 this@@3)) (|Set#IsMember| call1formal@modi@0 ($Box refType $o@@43))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@43))))
 :qid |DafnyPreludebpl.638:19|
 :skolemid |122|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@43) $f@@3))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@44 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.__new)) ($Box refType $o@@44)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.M.__new)) ($Box refType $o@@44)))) (or (not (= $o@@44 null)) (not true)))
 :qid |Iterdfy.48:10|
 :skolemid |601|
 :pattern (  (or (not (= $o@@44 null)) (not true)))
)) (forall (($o@@45 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.M.__new)) ($Box refType $o@@45)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.M.__new)) ($Box refType $o@@45)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@45) alloc)))))
 :qid |Iterdfy.48:10|
 :skolemid |602|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@45) alloc)))
)))))) (and (=> (= (ControlFlow 0 7) 2) anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) anon3_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.M _module.M$T@@28)) ($IsAlloc refType this@@3 (Tclass._module.M _module.M$T@@28) $Heap@@1))) (and ($Is refType |l#0@@0| (Tclass._module.List _module.M$T@@28)) ($IsAlloc refType |l#0@@0| (Tclass._module.List _module.M$T@@28) $Heap@@1))) (and (and ($Is refType |c#0@@9| Tclass._module.Cell) ($IsAlloc refType |c#0@@9| Tclass._module.Cell $Heap@@1)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 7)))) anon0_correct))))
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
