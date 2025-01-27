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
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun class._module.Cell? () T@U)
(declare-fun class._module.LoopFrame__Iter? () T@U)
(declare-fun Tagclass._module.LoopFrame__Iter? () T@U)
(declare-fun Tagclass._module.LoopFrame__Iter () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$LoopFrame_Iter () T@U)
(declare-fun field$ys () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$data () T@U)
(declare-fun field$y () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.LoopFrame__Iter? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun Tclass._module.LoopFrame__Iter () T@U)
(declare-fun _module.LoopFrame__Iter.ys () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.LoopFrame__Iter.__new () T@U)
(declare-fun _module.Cell.data () T@U)
(declare-fun _module.LoopFrame__Iter.y () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.LoopFrame__Iter.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.LoopFrame__Iter.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.LoopFrame__Iter.c (T@U) T@U)
(declare-fun _module.LoopFrame__Iter.__decreases0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.LoopFrame__Iter.__modifies (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#13| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Cell Tagclass._module.Cell? class._module.Cell? class._module.LoopFrame__Iter? Tagclass._module.LoopFrame__Iter? Tagclass._module.LoopFrame__Iter tytagFamily$object tytagFamily$Cell tytagFamily$LoopFrame_Iter field$ys field$_new field$data field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |4324|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |4325|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |4323|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |4320|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cell?)  (or (= $o null) (= (dtype $o) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |4851|
 :pattern ( ($Is refType $o Tclass._module.Cell?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.LoopFrame__Iter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.LoopFrame__Iter?)))
 :qid |unknown.0:0|
 :skolemid |5037|
 :pattern ( ($Is refType $o@@0 Tclass._module.LoopFrame__Iter?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |4546|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |4856|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.LoopFrame__Iter $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.LoopFrame__Iter? $h@@1))
 :qid |unknown.0:0|
 :skolemid |5064|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.LoopFrame__Iter $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.LoopFrame__Iter? $h@@1))
)))
(assert (= (FDim _module.LoopFrame__Iter.ys) 0))
(assert (= (FieldOfDecl class._module.LoopFrame__Iter? field$ys) _module.LoopFrame__Iter.ys))
(assert ($IsGhostField _module.LoopFrame__Iter.ys))
(assert (= (FDim _module.LoopFrame__Iter.__new) 0))
(assert (= (FieldOfDecl class._module.LoopFrame__Iter? field$_new) _module.LoopFrame__Iter.__new))
(assert ($IsGhostField _module.LoopFrame__Iter.__new))
(assert (= (FDim _module.Cell.data) 0))
(assert (= (FieldOfDecl class._module.Cell? field$data) _module.Cell.data))
(assert  (not ($IsGhostField _module.Cell.data)))
(assert (= (FDim _module.LoopFrame__Iter.y) 0))
(assert (= (FieldOfDecl class._module.LoopFrame__Iter? field$y) _module.LoopFrame__Iter.y))
(assert  (not ($IsGhostField _module.LoopFrame__Iter.y)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4543|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4852|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.LoopFrame__Iter? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5038|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.LoopFrame__Iter? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4313|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4314|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4212|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4210|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |4453|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |4434|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |4435|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4221|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |4241|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |4242|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |4419|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.LoopFrame__Iter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (or (or (= $o@@4 this) (|Set#IsMember| (_module.LoopFrame__Iter.__reads this) ($Box refType $o@@4))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.LoopFrame__Iter.__new)) ($Box refType $o@@4)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f)))
 :qid |unknown.0:0|
 :skolemid |5056|
)) (= (_module.LoopFrame__Iter.Valid $h0 this) (_module.LoopFrame__Iter.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5057|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.LoopFrame__Iter.Valid $h1 this))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Cell.data)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4854|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Cell.data)))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.LoopFrame__Iter.y)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5042|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.LoopFrame__Iter.y)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4234|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4306|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4305|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |4421|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.LoopFrame__Iter.ys)) (TSeq TInt) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5044|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.LoopFrame__Iter.ys)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4541|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |4544|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cell) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |4707|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cell))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Cell?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |4708|
 :pattern ( ($IsBox bx@@5 Tclass._module.Cell?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.LoopFrame__Iter?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.LoopFrame__Iter?)))
 :qid |unknown.0:0|
 :skolemid |5036|
 :pattern ( ($IsBox bx@@6 Tclass._module.LoopFrame__Iter?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.LoopFrame__Iter) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.LoopFrame__Iter)))
 :qid |unknown.0:0|
 :skolemid |5054|
 :pattern ( ($IsBox bx@@7 Tclass._module.LoopFrame__Iter))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4545|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Cell)  (and ($Is refType |c#0@@3| Tclass._module.Cell?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4855|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.LoopFrame__Iter)  (and ($Is refType |c#0@@4| Tclass._module.LoopFrame__Iter?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5063|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.LoopFrame__Iter))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.LoopFrame__Iter?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |4420|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.LoopFrame__Iter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.LoopFrame__Iter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5049|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.LoopFrame__Iter.__new)))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.LoopFrame__Iter.__new)) (TSet Tclass._System.object?) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5050|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.LoopFrame__Iter.__new)))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |4345|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |4436|
 :pattern ( (|Seq#Equal| a@@3 b@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4312|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |4302|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4222|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4233|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |4416|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |4262|
 :pattern ( (|Set#IsMember| v@@5 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |4263|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |4542|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |4268|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |4269|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4196|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4197|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4202|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4203|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4220|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4853|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.Cell.data)))
)))
(assert (forall (($h@@11 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.LoopFrame__Iter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.LoopFrame__Iter.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5041|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.LoopFrame__Iter.y)))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.LoopFrame__Iter?)) ($Is refType (_module.LoopFrame__Iter.c $o@@13) Tclass._module.Cell))
 :qid |unknown.0:0|
 :skolemid |5039|
 :pattern ( (_module.LoopFrame__Iter.c $o@@13))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.LoopFrame__Iter?)) ($Is refType (_module.LoopFrame__Iter.__decreases0 $o@@14) Tclass._module.Cell?))
 :qid |unknown.0:0|
 :skolemid |5051|
 :pattern ( (_module.LoopFrame__Iter.__decreases0 $o@@14))
)))
(assert (forall ((s@@3 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@1)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |4418|
 :pattern ( (|Seq#Build| s@@3 val@@1))
)))
(assert (forall ((bx@@10 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4227|
 :pattern ( ($IsBox bx@@10 (TSet t@@8)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4230|
 :pattern ( ($IsBox bx@@11 (TSeq t@@9)))
)))
(assert (forall (($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.LoopFrame__Iter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.LoopFrame__Iter.ys)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5043|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.LoopFrame__Iter.ys)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |4311|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9)))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc refType (_module.LoopFrame__Iter.c $o@@16) Tclass._module.Cell $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5040|
 :pattern ( (_module.LoopFrame__Iter.c $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))
)))
(assert (forall (($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc refType (_module.LoopFrame__Iter.__decreases0 $o@@17) Tclass._module.Cell? $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5052|
 :pattern ( (_module.LoopFrame__Iter.__decreases0 $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass._module.LoopFrame__Iter?) Tagclass._module.LoopFrame__Iter?))
(assert (= (TagFamily Tclass._module.LoopFrame__Iter?) tytagFamily$LoopFrame_Iter))
(assert (= (Tag Tclass._module.LoopFrame__Iter) Tagclass._module.LoopFrame__Iter))
(assert (= (TagFamily Tclass._module.LoopFrame__Iter) tytagFamily$LoopFrame_Iter))
(assert (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.LoopFrame__Iter?)) ($Is SetType (_module.LoopFrame__Iter.__reads $o@@18) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |5045|
 :pattern ( (_module.LoopFrame__Iter.__reads $o@@18))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.LoopFrame__Iter?)) ($Is SetType (_module.LoopFrame__Iter.__modifies $o@@19) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |5047|
 :pattern ( (_module.LoopFrame__Iter.__modifies $o@@19))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@20 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#13| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@0))  (=> (and (or (not (= $o@@20 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@20) |l#2|)))) (or (= $o@@20 |l#3|) (= $o@@20 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5373|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#13| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@5 o@@2) (|Set#IsMember| b@@2 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |4343|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |4344|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |4422|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall (($h@@15 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))) ($IsAlloc SetType (_module.LoopFrame__Iter.__reads $o@@21) (TSet Tclass._System.object?) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5046|
 :pattern ( (_module.LoopFrame__Iter.__reads $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))
)))
(assert (forall (($h@@16 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.LoopFrame__Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))) ($IsAlloc SetType (_module.LoopFrame__Iter.__modifies $o@@22) (TSet Tclass._System.object?) $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5048|
 :pattern ( (_module.LoopFrame__Iter.__modifies $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4213|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4211|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |4417|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4256|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@6))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |4248|
 :pattern ( (|Seq#Index| v@@8 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |4249|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4235|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0_0@1| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |$rhs#0_1@1| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |_yieldCount#0@2| () Int)
(declare-fun |_yieldCount#0@1| () Int)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0_1_0@1| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |$rhs#0_0_0@1| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun $_OldIterHeap@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |_yieldCount#0@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun |_yieldCount#0| () Int)
(declare-fun call1formal@rds@0@@0 () T@U)
(declare-fun call2formal@nw@0@@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call1formal@rds@0@@1 () T@U)
(declare-fun call2formal@nw@0@@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $_OldIterHeap () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.LoopFrame__Iter)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon8_correct  (and (=> (= (ControlFlow 0 8) (- 0 21)) (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true))) (=> (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 20)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.LoopFrame__Iter.c this@@0) _module.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.LoopFrame__Iter.c this@@0) _module.Cell.data)) (and (=> (= (ControlFlow 0 8) (- 0 19)) (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true))) (=> (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true)) (=> (= |$rhs#0_0@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) 1)) (=> (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 (_module.LoopFrame__Iter.c this@@0) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data ($Box intType (int_2_U |$rhs#0_0@1|))))) ($IsGoodHeap $Heap@12)) (and (=> (= (ControlFlow 0 8) (- 0 18)) true) (and (=> (= (ControlFlow 0 8) (- 0 17)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Cell.data)) (and (=> (= (ControlFlow 0 8) (- 0 15)) true) (and (=> (= (ControlFlow 0 8) (- 0 14)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |$rhs#0_1@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@0) _module.Cell.data))) 1)) (=> (and (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@12 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@0) _module.Cell.data ($Box intType (int_2_U |$rhs#0_1@1|))))) ($IsGoodHeap $Heap@13)) (=> (and (and (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 this@@0) _module.LoopFrame__Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 this@@0) _module.LoopFrame__Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 this@@0) _module.LoopFrame__Iter.y))))))) (= |_yieldCount#0@2| (+ |_yieldCount#0@1| 1))) (and (= |_yieldCount#0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.LoopFrame__Iter.ys)))) ($IsGoodHeap $Heap@14))) (and (=> (= (ControlFlow 0 8) (- 0 13)) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.LoopFrame__Iter.ys))) (LitInt 2))) (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.LoopFrame__Iter.ys))) (LitInt 2)) (=> (and (= call1formal@rds@0 (_module.LoopFrame__Iter.__reads this@@0)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.LoopFrame__Iter.__new)))) (=> (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (and (forall (($o@@23 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@23) alloc)))) (=> (or (or (= $o@@23 this@@0) (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@23))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@23))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@23) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@23) $f@@1))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |4315|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@23) $f@@1))
)) ($HeapSucc $Heap@14 $Heap@15))) (and (=> (= (ControlFlow 0 8) (- 0 12)) (> |_yieldCount#0@2| |_yieldCount#0@1|)) (=> (> |_yieldCount#0@2| |_yieldCount#0@1|) (and (=> (= (ControlFlow 0 8) (- 0 11)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $nw@0) _module.Cell.data))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $nw@0) _module.Cell.data))) (LitInt 11))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) (LitInt 11))) (=> (= (ControlFlow 0 8) (- 0 7)) (and (forall (($o@@24 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@24)) (or (not (= $o@@24 null)) (not true)))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5070|
 :pattern (  (or (not (= $o@@24 null)) (not true)))
)) (forall (($o@@25 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@25)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@25) alloc)))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5071|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@25)))
)))))))))))))))))))))))))))))))))))))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y)) (=> (= |$rhs#0_1_0@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y))) 1)) (=> (and (and (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y ($Box intType (int_2_U |$rhs#0_1_0@1|))))) ($IsGoodHeap $Heap@10)) (and (= $Heap@11 $Heap@10) (= (ControlFlow 0 24) 8))) anon8_correct))))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y)) (=> (= |$rhs#0_0_0@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y))) 1)) (=> (and (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y ($Box intType (int_2_U |$rhs#0_0_0@1|))))) ($IsGoodHeap $Heap@9)) (and (= $Heap@11 $Heap@9) (= (ControlFlow 0 22) 8))) anon8_correct))))))
(let ((anon11_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 26) 22) anon12_Then_correct) (=> (= (ControlFlow 0 26) 24) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 27) 6) anon11_Then_correct) (=> (= (ControlFlow 0 27) 26) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (not |$w$loop#0@0|) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11))) (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0) _module.Cell.data))) (LitInt 11)) (= (ControlFlow 0 3) (- 0 2))) (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true))))))))
(let ((anon9_LoopBody_correct  (and (=> (= (ControlFlow 0 28) 3) anon10_Then_correct) (=> (= (ControlFlow 0 28) 27) anon10_Else_correct))))
(let ((anon9_LoopDone_correct true))
(let ((anon9_LoopHead_correct  (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (= |_yieldCount#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.ys))))) (and ($IsGoodHeap $_OldIterHeap@0) ($HeapSucc $_OldIterHeap@0 $Heap@8))) (=> (and (and (and (and (and (and (and (<= 1 |_yieldCount#0@1|) (= |$rhs#0@0| 10)) (= |$rhs#1@0| 10)) true) (= |$rhs#2@0| 10)) (= |_yieldCount#0@0| 1)) (and (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11))) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0) _module.Cell.data))) (LitInt 11))))) (and (and (and (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) (LitInt 11))) (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@26) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@26)) (or (= $o@@26 this@@0) (= $o@@26 |c#0@@5|))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5068|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@26))
))) (and ($HeapSucc $Heap@7 $Heap@8) (forall (($o@@27 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@27) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@27) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@27) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@2))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5069|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@27) $f@@2))
)))) (and (and (forall (($o@@28 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@28)) (or (not (= $o@@28 null)) (not true)))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5070|
 :pattern (  (or (not (= $o@@28 null)) (not true)))
)) (forall (($o@@29 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@29)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@29) alloc)))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5071|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@29)))
))) (>= |_yieldCount#0@1| |_yieldCount#0@0|)))) (and (=> (= (ControlFlow 0 29) 1) anon9_LoopDone_correct) (=> (= (ControlFlow 0 29) 28) anon9_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#13| null $Heap alloc this@@0 |c#0@@5|)) (=> (and (= (_module.LoopFrame__Iter.c this@@0) |c#0@@5|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.LoopFrame__Iter.ys)) |Seq#Empty|)) (=> (and (and (and (and (_module.LoopFrame__Iter.Valid $Heap this@@0) (|Set#Equal| (_module.LoopFrame__Iter.__reads this@@0) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)))) (and (|Set#Equal| (_module.LoopFrame__Iter.__modifies this@@0) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.LoopFrame__Iter.__new)) |Set#Empty|))) (and (and (= (_module.LoopFrame__Iter.__decreases0 this@@0) |c#0@@5|) (= |_yieldCount#0| 0)) (and (= call1formal@rds@0@@0 (_module.LoopFrame__Iter.__reads this@@0)) (= call2formal@nw@0@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.LoopFrame__Iter.__new)))))) (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@30 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@30) alloc)))) (=> (or (or (= $o@@30 this@@0) (|Set#IsMember| call1formal@rds@0@@0 ($Box refType $o@@30))) (|Set#IsMember| call2formal@nw@0@@0 ($Box refType $o@@30))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@30) $f@@3))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |4315|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) $f@@3))
)) ($HeapSucc $Heap $Heap@0))) (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.LoopFrame__Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.LoopFrame__Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.LoopFrame__Iter.y))))))) (= |_yieldCount#0@0| (+ |_yieldCount#0| 1))) (and (= |_yieldCount#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.LoopFrame__Iter.ys)))) ($IsGoodHeap $Heap@1))))) (and (=> (= (ControlFlow 0 30) (- 0 41)) (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.LoopFrame__Iter.ys))) (LitInt 2))) (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.LoopFrame__Iter.ys))) (LitInt 2)) (=> (and (= call1formal@rds@0@@1 (_module.LoopFrame__Iter.__reads this@@0)) (= call2formal@nw@0@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.LoopFrame__Iter.__new)))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@31 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31) alloc)))) (=> (or (or (= $o@@31 this@@0) (|Set#IsMember| call1formal@rds@0@@1 ($Box refType $o@@31))) (|Set#IsMember| call2formal@nw@0@@1 ($Box refType $o@@31))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@31) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31) $f@@4))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |4315|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@31) $f@@4))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 30) (- 0 40)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.LoopFrame__Iter.y)) (=> (= |$rhs#0@0| (LitInt 10)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@0) _module.LoopFrame__Iter.y ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 30) (- 0 39)) (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true))) (=> (or (not (= (_module.LoopFrame__Iter.c this@@0) null)) (not true)) (and (=> (= (ControlFlow 0 30) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.LoopFrame__Iter.c this@@0) _module.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.LoopFrame__Iter.c this@@0) _module.Cell.data)) (=> (= |$rhs#1@0| (LitInt 10)) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 (_module.LoopFrame__Iter.c this@@0) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@4)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Cell?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) alloc))))) (and (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) alloc ($Box boolType (bool_2_U true))))) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.LoopFrame__Iter.__new ($Box SetType (|Set#UnionOne| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $nw@0))))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)))) (and (=> (= (ControlFlow 0 30) (- 0 37)) true) (and (=> (= (ControlFlow 0 30) (- 0 36)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 30) (- 0 35)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Cell.data)) (=> (= |$rhs#2@0| (LitInt 10)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) _module.Cell.data ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 30) (- 0 34)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.y))) (LitInt 11))) (and (=> (= (ControlFlow 0 30) (- 0 33)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) _module.Cell.data))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) _module.Cell.data))) (LitInt 11))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) (LitInt 11)))) (=> (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.LoopFrame__Iter.c this@@0)) _module.Cell.data))) (LitInt 11))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (forall (($o@@32 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@32)) (or (not (= $o@@32 null)) (not true)))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5070|
 :pattern (  (or (not (= $o@@32 null)) (not true)))
)) (forall (($o@@33 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@33)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@33) alloc)))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5071|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@33)))
)))) (=> (and (forall (($o@@34 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@34)) (or (not (= $o@@34 null)) (not true)))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5070|
 :pattern (  (or (not (= $o@@34 null)) (not true)))
)) (forall (($o@@35 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@35)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@35) alloc)))))
 :qid |Iteratorsdfy.458:3|
 :skolemid |5071|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.LoopFrame__Iter.__new)) ($Box refType $o@@35)))
))) (=> (= (ControlFlow 0 30) 29) anon9_LoopHead_correct))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.LoopFrame__Iter) ($IsAlloc refType this@@0 Tclass._module.LoopFrame__Iter $Heap)))) (and (and ($Is refType |c#0@@5| Tclass._module.Cell) ($IsAlloc refType |c#0@@5| Tclass._module.Cell $Heap)) (and (= |_yieldCount#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.LoopFrame__Iter.ys)))) true))) (and (and (and ($IsGoodHeap $_OldIterHeap) ($HeapSucc $_OldIterHeap $Heap)) true) (and (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass._module.Cell) ($IsAlloc refType |d#0| Tclass._module.Cell $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 42) 30))))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 13))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 10))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 9))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
