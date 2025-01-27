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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec () T@U)
(declare-fun Tagclass._module.AnotherImpl? () T@U)
(declare-fun Tagclass._module.AnotherImpl () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Spec () T@U)
(declare-fun tytagFamily$AnotherImpl () T@U)
(declare-fun field$done () T@U)
(declare-fun field$hasFailed () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Spec (T@U) T@U)
(declare-fun Tclass._module.Spec? (T@U) T@U)
(declare-fun Tclass._module.AnotherImpl (T@U) T@U)
(declare-fun Tclass._module.AnotherImpl? (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Spec.done () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Spec.hasFailed () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.AnotherImpl.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.AnotherImpl.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Spec.Repr (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun implements$_module.Spec (T@U T@U) Bool)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Spec?_0 (T@U) T@U)
(declare-fun Tclass._module.Spec_0 (T@U) T@U)
(declare-fun Tclass._module.AnotherImpl?_0 (T@U) T@U)
(declare-fun Tclass._module.AnotherImpl_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Spec? Tagclass._module.Spec? Tagclass._module.Spec Tagclass._module.AnotherImpl? Tagclass._module.AnotherImpl tytagFamily$object tytagFamily$Spec tytagFamily$AnotherImpl field$done field$hasFailed)
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
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Spec$U T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h) ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
)))
(assert (forall ((_module.AnotherImpl$T T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.AnotherImpl _module.AnotherImpl$T) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.AnotherImpl? _module.AnotherImpl$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.AnotherImpl _module.AnotherImpl$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.AnotherImpl? _module.AnotherImpl$T) $h@@0))
)))
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
(assert (forall ((_module.Spec$U@@0 T@U) ($h@@1 T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass._module.Spec? _module.Spec$U@@0)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) _module.Spec.done)) TBool))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) _module.Spec.done)) (Tclass._module.Spec? _module.Spec$U@@0))
)))
(assert (forall ((_module.Spec$U@@1 T@U) ($h@@2 T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass._module.Spec? _module.Spec$U@@1)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) _module.Spec.hasFailed)) TBool))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) _module.Spec.hasFailed)) (Tclass._module.Spec? _module.Spec$U@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.AnotherImpl$T@@0 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.AnotherImpl.Valid#canCall| _module.AnotherImpl$T@@0 $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.AnotherImpl _module.AnotherImpl$T@@0)) ($IsAlloc refType this (Tclass._module.AnotherImpl _module.AnotherImpl$T@@0) $Heap)))))) (=> (_module.AnotherImpl.Valid _module.AnotherImpl$T@@0 $Heap this) (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@0) this) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.AnotherImpl.Valid _module.AnotherImpl$T@@0 $Heap this))
))))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (forall ((_module.AnotherImpl$T@@1 T@U) ) (! (implements$_module.Spec (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@1) (TSeq _module.AnotherImpl$T@@1))
 :qid |unknown.0:0|
 :skolemid |537|
)))
(assert (forall ((_module.Spec$U@@2 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.Spec? _module.Spec$U@@2) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.Spec? _module.Spec$U@@2) $h@@4))
)))
(assert (forall ((_module.AnotherImpl$T@@2 T@U) ($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@2) $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@2) $h@@5))
)))
(assert (= (FDim _module.Spec.done) 0))
(assert (= (FieldOfDecl class._module.Spec? field$done) _module.Spec.done))
(assert  (not ($IsGhostField _module.Spec.done)))
(assert (= (FDim _module.Spec.hasFailed) 0))
(assert (= (FieldOfDecl class._module.Spec? field$hasFailed) _module.Spec.hasFailed))
(assert  (not ($IsGhostField _module.Spec.hasFailed)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6))
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
(assert (forall ((_module.AnotherImpl$T@@3 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@3)) ($Is refType $o@@4 (Tclass._module.Spec? (TSeq _module.AnotherImpl$T@@3))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($Is refType $o@@4 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@3)))
)))
(assert (forall ((_module.AnotherImpl$T@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@4)) ($IsBox bx (Tclass._module.Spec? (TSeq _module.AnotherImpl$T@@4))))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($IsBox bx (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@4)))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_module.Spec$U@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Spec _module.Spec$U@@3))  (and ($Is refType |c#0@@2| (Tclass._module.Spec? _module.Spec$U@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Spec _module.Spec$U@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Spec? _module.Spec$U@@3)))
)))
(assert (forall ((_module.AnotherImpl$T@@5 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.AnotherImpl _module.AnotherImpl$T@@5))  (and ($Is refType |c#0@@3| (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@5)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.AnotherImpl _module.AnotherImpl$T@@5)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((_module.Spec$U@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Spec? _module.Spec$U@@4)) Tagclass._module.Spec?) (= (TagFamily (Tclass._module.Spec? _module.Spec$U@@4)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@4))
)))
(assert (forall ((_module.Spec$U@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Spec _module.Spec$U@@5)) Tagclass._module.Spec) (= (TagFamily (Tclass._module.Spec _module.Spec$U@@5)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@5))
)))
(assert (forall ((_module.AnotherImpl$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@6)) Tagclass._module.AnotherImpl?) (= (TagFamily (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@6)) tytagFamily$AnotherImpl))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@6))
)))
(assert (forall ((_module.AnotherImpl$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.AnotherImpl _module.AnotherImpl$T@@7)) Tagclass._module.AnotherImpl) (= (TagFamily (Tclass._module.AnotherImpl _module.AnotherImpl$T@@7)) tytagFamily$AnotherImpl))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass._module.AnotherImpl _module.AnotherImpl$T@@7))
)))
(assert (forall ((_module.AnotherImpl$T@@8 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@8)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 this@@0) (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@8) this@@0) ($Box refType $o@@5)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |544|
)) (= (_module.AnotherImpl.Valid _module.AnotherImpl$T@@8 $h0 this@@0) (_module.AnotherImpl.Valid _module.AnotherImpl$T@@8 $h1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.AnotherImpl.Valid _module.AnotherImpl$T@@8 $h1 this@@0))
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
(assert (forall ((_module.AnotherImpl$T@@9 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@9))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@9))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Is refType $o@@6 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@9)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 (Tclass._module.Spec? _module.Spec$U@@6))) ($Is SetType (_module.Spec.Repr _module.Spec$U@@6 $o@@7) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@6 $o@@7))
))))
(assert (forall ((_module.AnotherImpl$T@@10 T@U) (bx@@4 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@10) $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@4 (Tclass._module.Spec? (TSeq _module.AnotherImpl$T@@10)) $h@@7))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsAllocBox bx@@4 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@10) $h@@7))
)))
(assert (forall ((_module.AnotherImpl$T@@11 T@U) ($o@@8 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@8 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@11) $heap) ($IsAlloc refType $o@@8 (Tclass._module.Spec? (TSeq _module.AnotherImpl$T@@11)) $heap))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@11) $heap))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((_module.Spec$U@@7 T@U) ($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 (Tclass._module.Spec? _module.Spec$U@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Spec.done)) TBool $h@@8))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Spec.done)) (Tclass._module.Spec? _module.Spec$U@@7))
)))
(assert (forall ((_module.Spec$U@@8 T@U) ($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 (Tclass._module.Spec? _module.Spec$U@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Spec.hasFailed)) TBool $h@@9))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Spec.hasFailed)) (Tclass._module.Spec? _module.Spec$U@@8))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@11 T@U) ) (! ($Is refType $o@@11 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@11 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
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
(assert (forall ((_module.Spec$U@@9 T@U) ) (! (= (Tclass._module.Spec?_0 (Tclass._module.Spec? _module.Spec$U@@9)) _module.Spec$U@@9)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@9))
)))
(assert (forall ((_module.Spec$U@@10 T@U) ) (! (= (Tclass._module.Spec_0 (Tclass._module.Spec _module.Spec$U@@10)) _module.Spec$U@@10)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@10))
)))
(assert (forall ((_module.AnotherImpl$T@@12 T@U) ) (! (= (Tclass._module.AnotherImpl?_0 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@12)) _module.AnotherImpl$T@@12)
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@12))
)))
(assert (forall ((_module.AnotherImpl$T@@13 T@U) ) (! (= (Tclass._module.AnotherImpl_0 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@13)) _module.AnotherImpl$T@@13)
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (Tclass._module.AnotherImpl _module.AnotherImpl$T@@13))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.AnotherImpl$T@@14 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.AnotherImpl.Valid#canCall| _module.AnotherImpl$T@@14 $Heap@@0 this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@14)) ($IsAlloc refType this@@1 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@14) $Heap@@0)))))) (= (_module.AnotherImpl.Valid _module.AnotherImpl$T@@14 $Heap@@0 this@@1) (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@14) this@@1) ($Box refType this@@1))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.AnotherImpl.Valid _module.AnotherImpl$T@@14 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((_module.Spec$U@@11 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Spec? _module.Spec$U@@11))  (or (= $o@@12 null) (implements$_module.Spec (dtype $o@@12) _module.Spec$U@@11)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@12 (Tclass._module.Spec? _module.Spec$U@@11)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@0))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |594|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@0))
)))
(assert (forall ((bx@@7 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@7)))
)))
(assert (forall ((bx@@8 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@8)))
)))
(assert (forall ((_module.Spec$U@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Spec? _module.Spec$U@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Spec? _module.Spec$U@@12))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Spec? _module.Spec$U@@12)))
)))
(assert (forall ((_module.Spec$U@@13 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Spec _module.Spec$U@@13)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Spec _module.Spec$U@@13))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Spec _module.Spec$U@@13)))
)))
(assert (forall ((_module.AnotherImpl$T@@15 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@15)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@15))))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@11 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@15)))
)))
(assert (forall ((_module.AnotherImpl$T@@16 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@16)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._module.AnotherImpl _module.AnotherImpl$T@@16))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsBox bx@@12 (Tclass._module.AnotherImpl _module.AnotherImpl$T@@16)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@14 T@U) ($h@@10 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 (Tclass._module.Spec? _module.Spec$U@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))) ($IsAlloc SetType (_module.Spec.Repr _module.Spec$U@@14 $o@@14) (TSet Tclass._System.object) $h@@10))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@14 $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))
))))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@6 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@6))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this.Repr@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun _module.AnotherImpl$T@@17 () T@U)
(declare-fun this.done () Bool)
(declare-fun this.hasFailed () Bool)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.AnotherImpl.__ctor)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc false)) (= this.Repr@0 (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))) (=> (and (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.AnotherImpl? _module.AnotherImpl$T@@17))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) alloc))))) (and (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Spec.done))) this.done) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Spec.hasFailed))) this.hasFailed))) (and (and (= (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@17) this@@2) this.Repr@0) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@17) this@@2) ($Box refType this@@2))) (=> (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@17) this@@2) ($Box refType this@@2)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.AnotherImpl.Valid#canCall| _module.AnotherImpl$T@@17 $Heap@0 this@@2) (or (_module.AnotherImpl.Valid _module.AnotherImpl$T@@17 $Heap@0 this@@2) (|Set#IsMember| (_module.Spec.Repr (TSeq _module.AnotherImpl$T@@17) this@@2) ($Box refType this@@2)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct)))
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
