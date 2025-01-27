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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec () T@U)
(declare-fun Tagclass._module.Impl? () T@U)
(declare-fun Tagclass._module.Impl () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Spec () T@U)
(declare-fun tytagFamily$Impl () T@U)
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
(declare-fun implements$_module.Spec (T@U T@U) Bool)
(declare-fun Tclass._module.Impl? (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Impl.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Impl (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.Spec.Repr (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Spec (T@U) T@U)
(declare-fun Tclass._module.Spec? (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Spec.done () T@U)
(declare-fun _module.Spec.hasFailed () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Impl.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Spec?_0 (T@U) T@U)
(declare-fun Tclass._module.Spec_0 (T@U) T@U)
(declare-fun Tclass._module.Impl?_0 (T@U) T@U)
(declare-fun Tclass._module.Impl_0 (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Spec? Tagclass._module.Spec? Tagclass._module.Spec Tagclass._module.Impl? Tagclass._module.Impl tytagFamily$object tytagFamily$Spec tytagFamily$Impl field$done field$hasFailed)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_module.Impl$T T@U) ) (! (implements$_module.Spec (Tclass._module.Impl? _module.Impl$T) _module.Impl$T)
 :qid |unknown.0:0|
 :skolemid |506|
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((_module.Impl$T@@0 T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.Impl _module.Impl$T@@0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| (_module.Spec.Repr _module.Impl$T@@0 this) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |517|
)) (= (_module.Impl.Valid _module.Impl$T@@0 $h0 this) (_module.Impl.Valid _module.Impl$T@@0 $h1 this))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Impl.Valid _module.Impl$T@@0 $h1 this))
)))
(assert (forall ((_module.Spec$U T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h) ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
)))
(assert (forall ((_module.Impl$T@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Impl _module.Impl$T@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.Impl? _module.Impl$T@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Impl _module.Impl$T@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Impl? _module.Impl$T@@1) $h@@0))
)))
(assert (forall ((_module.Spec$U@@0 T@U) ($h@@1 T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass._module.Spec? _module.Spec$U@@0)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) _module.Spec.done)) TBool))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) _module.Spec.done)) (Tclass._module.Spec? _module.Spec$U@@0))
)))
(assert (forall ((_module.Spec$U@@1 T@U) ($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 (Tclass._module.Spec? _module.Spec$U@@1)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.Spec.hasFailed)) TBool))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.Spec.hasFailed)) (Tclass._module.Spec? _module.Spec$U@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (forall ((_module.Spec$U@@2 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.Spec? _module.Spec$U@@2) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.Spec? _module.Spec$U@@2) $h@@4))
)))
(assert (forall ((_module.Impl$T@@2 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Impl? _module.Impl$T@@2) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Impl? _module.Impl$T@@2) $h@@5))
)))
(assert (= (FDim _module.Spec.done) 0))
(assert (= (FieldOfDecl class._module.Spec? field$done) _module.Spec.done))
(assert  (not ($IsGhostField _module.Spec.done)))
(assert (= (FDim _module.Spec.hasFailed) 0))
(assert (= (FieldOfDecl class._module.Spec? field$hasFailed) _module.Spec.hasFailed))
(assert  (not ($IsGhostField _module.Spec.hasFailed)))
(assert (forall ((_module.Impl$T@@3 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass._module.Impl? _module.Impl$T@@3)) ($Is refType $o@@4 (Tclass._module.Spec? _module.Impl$T@@3)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Impl? _module.Impl$T@@3)))
)))
(assert (forall ((_module.Impl$T@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Impl? _module.Impl$T@@4)) ($IsBox bx (Tclass._module.Spec? _module.Impl$T@@4)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsBox bx (Tclass._module.Impl? _module.Impl$T@@4)))
)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Impl$T@@5 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Impl.Valid#canCall| _module.Impl$T@@5 $Heap this@@0) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Impl _module.Impl$T@@5)) ($IsAlloc refType this@@0 (Tclass._module.Impl _module.Impl$T@@5) $Heap)))) (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Spec.hasFailed))))))))) (= (_module.Impl.Valid _module.Impl$T@@5 $Heap this@@0) (|Set#IsMember| (_module.Spec.Repr _module.Impl$T@@5 this@@0) ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (_module.Impl.Valid _module.Impl$T@@5 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
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
(assert (forall ((_module.Impl$T@@6 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Impl _module.Impl$T@@6))  (and ($Is refType |c#0@@3| (Tclass._module.Impl? _module.Impl$T@@6)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Impl _module.Impl$T@@6)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Impl? _module.Impl$T@@6)))
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
(assert (forall ((_module.Impl$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.Impl? _module.Impl$T@@7)) Tagclass._module.Impl?) (= (TagFamily (Tclass._module.Impl? _module.Impl$T@@7)) tytagFamily$Impl))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.Impl? _module.Impl$T@@7))
)))
(assert (forall ((_module.Impl$T@@8 T@U) ) (!  (and (= (Tag (Tclass._module.Impl _module.Impl$T@@8)) Tagclass._module.Impl) (= (TagFamily (Tclass._module.Impl _module.Impl$T@@8)) tytagFamily$Impl))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._module.Impl _module.Impl$T@@8))
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
(assert (forall ((_module.Impl$T@@9 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._module.Impl? _module.Impl$T@@9))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._module.Impl? _module.Impl$T@@9))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is refType $o@@6 (Tclass._module.Impl? _module.Impl$T@@9)))
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
(assert (forall ((_module.Impl$T@@10 T@U) (bx@@4 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 (Tclass._module.Impl? _module.Impl$T@@10) $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@4 (Tclass._module.Spec? _module.Impl$T@@10) $h@@7))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsAllocBox bx@@4 (Tclass._module.Impl? _module.Impl$T@@10) $h@@7))
)))
(assert (forall ((_module.Impl$T@@11 T@U) ($o@@8 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@8 (Tclass._module.Impl? _module.Impl$T@@11) $heap) ($IsAlloc refType $o@@8 (Tclass._module.Spec? _module.Impl$T@@11) $heap))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.Impl? _module.Impl$T@@11) $heap))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Impl$T@@12 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Impl.Valid#canCall| _module.Impl$T@@12 $Heap@@0 this@@1) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Impl _module.Impl$T@@12)) ($IsAlloc refType this@@1 (Tclass._module.Impl _module.Impl$T@@12) $Heap@@0)))) (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Spec.hasFailed))))))))) (=> (_module.Impl.Valid _module.Impl$T@@12 $Heap@@0 this@@1) (|Set#IsMember| (_module.Spec.Repr _module.Impl$T@@12 this@@1) ($Box refType this@@1))))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( (_module.Impl.Valid _module.Impl$T@@12 $Heap@@0 this@@1))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
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
(assert (forall ((_module.Impl$T@@13 T@U) ) (! (= (Tclass._module.Impl?_0 (Tclass._module.Impl? _module.Impl$T@@13)) _module.Impl$T@@13)
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (Tclass._module.Impl? _module.Impl$T@@13))
)))
(assert (forall ((_module.Impl$T@@14 T@U) ) (! (= (Tclass._module.Impl_0 (Tclass._module.Impl _module.Impl$T@@14)) _module.Impl$T@@14)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._module.Impl _module.Impl$T@@14))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((_module.Spec$U@@11 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Spec? _module.Spec$U@@11))  (or (= $o@@12 null) (implements$_module.Spec (dtype $o@@12) _module.Spec$U@@11)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@12 (Tclass._module.Spec? _module.Spec$U@@11)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@0))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |594|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@0))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@5)))
)))
(assert (forall ((_module.Spec$U@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Spec? _module.Spec$U@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Spec? _module.Spec$U@@12))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Spec? _module.Spec$U@@12)))
)))
(assert (forall ((_module.Spec$U@@13 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Spec _module.Spec$U@@13)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Spec _module.Spec$U@@13))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Spec _module.Spec$U@@13)))
)))
(assert (forall ((_module.Impl$T@@15 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Impl? _module.Impl$T@@15)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Impl? _module.Impl$T@@15))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Impl? _module.Impl$T@@15)))
)))
(assert (forall ((_module.Impl$T@@16 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.Impl _module.Impl$T@@16)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.Impl _module.Impl$T@@16))))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsBox bx@@11 (Tclass._module.Impl _module.Impl$T@@16)))
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
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@0 () T@U)
(declare-fun _module.Impl$T@@17 () T@U)
(declare-fun |t#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Impl.__ctor)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@15)))
 :qid |TraitOverride2dfy.26:3|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15))
)) ($HeapSucc $Heap@@1 $Heap@0))) (and (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 (Tclass._module.Impl _module.Impl$T@@17)) ($IsAlloc refType this@0 (Tclass._module.Impl _module.Impl$T@@17) $Heap@0))) (and ($IsAllocBox ($Box refType this@0) (Tclass._module.Impl? _module.Impl$T@@17) $Heap@0) (= (ControlFlow 0 2) (- 0 1))))) (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.Spec.hasFailed))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($IsBox |t#0| _module.Impl$T@@17) ($IsAllocBox |t#0| _module.Impl$T@@17 $Heap@@1)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
