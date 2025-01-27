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
(declare-fun class._module.List? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$a () T@U)
(declare-fun field$n () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._module.List? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.List.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.List.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.List.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.List.Contents () T@U)
(declare-fun _module.List.a () T@U)
(declare-fun _module.List.n () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.List?_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._module.List Tagclass._module.List? class._module.List? tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$List field$Repr field$a field$n field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((_module.List$T T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.List$T@@0 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.List.Valid#canCall| _module.List$T@@0 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.List _module.List$T@@0)) ($IsAlloc refType this (Tclass._module.List _module.List$T@@0) $Heap)))))) (=> (_module.List.Valid _module.List$T@@0 $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.List.Valid _module.List$T@@0 $Heap this))
))))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
)))
(assert (= (FDim _module.List.Repr) 0))
(assert (= (FieldOfDecl class._module.List? field$Repr) _module.List.Repr))
(assert ($IsGhostField _module.List.Repr))
(assert (= (FDim _module.List.Contents) 0))
(assert (= (FieldOfDecl class._module.List? field$Contents) _module.List.Contents))
(assert ($IsGhostField _module.List.Contents))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@3))
)))
(assert (forall ((_module.List$T@@1 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.List? _module.List$T@@1) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.List? _module.List$T@@1) $h@@4))
)))
(assert (= (FDim _module.List.a) 0))
(assert (= (FieldOfDecl class._module.List? field$a) _module.List.a))
(assert  (not ($IsGhostField _module.List.a)))
(assert (= (FDim _module.List.n) 0))
(assert (= (FieldOfDecl class._module.List? field$n) _module.List.n))
(assert  (not ($IsGhostField _module.List.n)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@5))
)))
(assert (forall ((h T@U) (a@@7 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@7))) (= (|Seq#Take| (|Seq#FromArray| h a@@7) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a@@7) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a@@7) n0) (|Seq#Take| (|Seq#FromArray| h a@@7) n1))
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
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((a@@8 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@8 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@4))
)))
(assert (forall ((s@@0 T@U) (n Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n)) (< j (|Seq#Length| s@@0))) (= (|Seq#Index| (|Seq#Take| s@@0 n) j) (|Seq#Index| s@@0 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@0 n) j))
 :pattern ( (|Seq#Index| s@@0 j) (|Seq#Take| s@@0 n))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@6 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@6))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((a@@9 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@5))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (or (= $o@@4 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@4)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |609|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.List$T@@2 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.List _module.List$T@@2))  (and ($Is refType |c#0@@3| (Tclass._module.List? _module.List$T@@2)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.List _module.List$T@@2)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.List? _module.List$T@@2)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((_module.List$T@@3 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.List? _module.List$T@@3)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.List.n)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.List.n)) (Tclass._module.List? _module.List$T@@3))
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
(assert (forall ((_module.List$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@4)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@4)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.List$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.List? _module.List$T@@5)) Tagclass._module.List?) (= (TagFamily (Tclass._module.List? _module.List$T@@5)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.List? _module.List$T@@5))
)))
(assert (forall ((_module.List$T@@6 T@U) ($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.List? _module.List$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.List.Contents)) (TSeq _module.List$T@@6) $h@@8))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.List.Contents)) (Tclass._module.List? _module.List$T@@6))
)))
(assert (forall ((_module.List$T@@7 T@U) ($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.List? _module.List$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.List.a)) (Tclass._System.array _module.List$T@@7) $h@@9))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.List.a)) (Tclass._module.List? _module.List$T@@7))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@8 null) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@8 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.List$T@@8 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._module.List? _module.List$T@@8))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._module.List? _module.List$T@@8))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is refType $o@@9 (Tclass._module.List? _module.List$T@@8)))
)))
(assert (forall ((_module.List$T@@9 T@U) ($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.List? _module.List$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.List.n)) Tclass._System.nat $h@@10))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.List.n)) (Tclass._module.List? _module.List$T@@9))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@2) i))
)))
(assert (forall ((h@@1 T@U) (a@@10 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@1 a@@10)))) (= (|Seq#Index| (|Seq#FromArray| h@@1 a@@10) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@10) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@10) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@1 a@@10) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@1 a@@10))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@6) o@@4)  (or (|Set#IsMember| a@@11 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@6) o@@4))
)))
(assert (forall ((_module.List$T@@10 T@U) ($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.List? _module.List$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.List.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.List.Repr)) (Tclass._module.List? _module.List$T@@10))
)))
(assert (forall ((a@@12 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@7) a@@12) b@@7) (= (|Set#Difference| (|Set#Union| a@@12 b@@7) b@@7) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@12 b@@7))
)))
(assert (forall ((_module.List$T@@11 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.List? _module.List$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.List.Repr)) (TSet Tclass._System.object) $h@@12))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.List.Repr)) (Tclass._module.List? _module.List$T@@11))
)))
(assert (forall ((a@@13 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@13 b@@8) (= a@@13 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@13 b@@8))
)))
(assert (forall ((s@@3 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Take| s@@3 n@@0)) n@@0))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@3 n@@0)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (_System.array.Length o@@5))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@5))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@2))
)))
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@3 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@3))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSet (TSet t@@2)) t@@2)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSet t@@3)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
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
(assert (forall ((_module.List$T@@12 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@12)) _module.List$T@@12)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.List _module.List$T@@12))
)))
(assert (forall ((_module.List$T@@13 T@U) ) (! (= (Tclass._module.List?_0 (Tclass._module.List? _module.List$T@@13)) _module.List$T@@13)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.List? _module.List$T@@13))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@13 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@14)) TInt $h@@13))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@14 T@U) ($o@@15 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@15)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@14 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@9)) (|Set#Union| a@@14 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@9)))
)))
(assert (forall ((h@@4 T@U) (a@@15 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@4 a@@15)) (_System.array.Length a@@15))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@4 a@@15)))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((_module.List$T@@14 T@U) ($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.List? _module.List$T@@14)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.List.Contents)) (TSeq _module.List$T@@14)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.List.Contents)) (Tclass._module.List? _module.List$T@@14))
)))
(assert (forall ((_module.List$T@@15 T@U) ($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.List? _module.List$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.List.a)) (Tclass._System.array _module.List$T@@15)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.List.a)) (Tclass._module.List? _module.List$T@@15))
)))
(assert (forall ((bx@@7 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@6)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@6))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@6)))
)))
(assert (forall ((bx@@8 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@7)))
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
(assert (forall ((_module.List$T@@16 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.List _module.List$T@@16)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.List _module.List$T@@16))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@11 (Tclass._module.List _module.List$T@@16)))
)))
(assert (forall ((_module.List$T@@17 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.List? _module.List$T@@17)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._module.List? _module.List$T@@17))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@12 (Tclass._module.List? _module.List$T@@17)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((s@@7 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Take| s@@7 n@@1) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@7 n@@1))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc boolType v@@7 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@7 TBool h@@6))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.List$T@@18 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.List.Valid#canCall| _module.List$T@@18 $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.List _module.List$T@@18)) ($IsAlloc refType this@@0 (Tclass._module.List _module.List$T@@18) $Heap@@0)))))) (= (_module.List.Valid _module.List$T@@18 $Heap@@0 this@@0)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.Repr)) ($Box refType this@@0)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.a))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.a))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.Contents)) (|Seq#Take| (|Seq#FromArray| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.a))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.n))))))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.List.Valid _module.List$T@@18 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.List$T@@19 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.List.Valid)
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
 (=> (= (ControlFlow 0 0) 29) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.List.Valid _module.List$T@@19 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1))))))
(let ((anon12_correct  (=> (and (= (_module.List.Valid _module.List$T@@19 $Heap@@1 this@@1)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Contents)) (|Seq#Take| (|Seq#FromArray| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))))))) ($Is boolType (bool_2_U (_module.List.Valid _module.List$T@@19 $Heap@@1 this@@1)) TBool)) (and (=> (= (ControlFlow 0 7) (- 0 16)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 7) (- 0 15)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 7) (- 0 14)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 7) (- 0 13)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 7) (- 0 12)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 7) (- 0 11)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (and (=> (= (ControlFlow 0 7) (- 0 9)) |b$reqreads#8@1|) (=> |b$reqreads#8@1| (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#9@1|) (=> |b$reqreads#9@1| (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct))))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)))))) (= |b$reqreads#6@1| true)) (=> (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 20) 7))) anon12_correct))))
(let ((anon18_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))))) (and (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.Contents))) (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.a))))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) null)) (not true)) (=> (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.n))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))))) (=> (and (= |b$reqreads#9@0| (forall (($i Int) ) (!  (=> (and (<= 0 $i) (< $i (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.n))))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) (IndexField $i))))
 :qid |Iterdfy.17:18|
 :skolemid |541|
 :pattern ( (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) (IndexField $i)))
))) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (=> (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#9@1| |b$reqreads#9@0|) (= (ControlFlow 0 17) 7))) anon12_correct))))))))))
(let ((anon17_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)))) (=> (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (=> (= (ControlFlow 0 23) 17) anon18_Then_correct) (=> (= (ControlFlow 0 23) 20) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a))) (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.n))) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.a))))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.a)) null)) (not true)) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (=> (= (ControlFlow 0 21) 17) anon18_Then_correct) (=> (= (ControlFlow 0 21) 20) anon18_Else_correct))))))))
(let ((anon16_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1))) (=> (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (and (=> (= (ControlFlow 0 25) 21) anon17_Then_correct) (=> (= (ControlFlow 0 25) 23) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (=> (and (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.a))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.Repr)))) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|))) (and (=> (= (ControlFlow 0 24) 21) anon17_Then_correct) (=> (= (ControlFlow 0 24) 23) anon17_Else_correct))))))
(let ((anon14_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.Repr))) (and (=> (= (ControlFlow 0 26) 24) anon16_Then_correct) (=> (= (ControlFlow 0 26) 25) anon16_Else_correct)))))
(let ((anon5_correct true))
(let ((anon15_Else_correct  (=> (and (=> (_module.List.Valid _module.List$T@@19 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1))) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon15_Then_correct  (=> ($IsAllocBox ($Box refType this@@1) (Tclass._module.List? _module.List$T@@19) $Heap@@1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))))) (=> (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))))) (=> (and (and (or (= this@@1 this@@1) (|_module.List.Valid#canCall| _module.List$T@@19 $Heap@@1 this@@1)) (_module.List.Valid _module.List$T@@19 $Heap@@1 this@@1)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)) ($Box refType this@@1)) (= (ControlFlow 0 2) 1))) anon5_correct))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#4| null $Heap@@1 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.List.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.List.Repr)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 27) 26) anon14_Else_correct) (=> (= (ControlFlow 0 27) 2) anon15_Then_correct)) (=> (= (ControlFlow 0 27) 4) anon15_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.List _module.List$T@@19)) ($IsAlloc refType this@@1 (Tclass._module.List _module.List$T@@19) $Heap@@1))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 29) 27))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
