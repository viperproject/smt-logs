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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec () T@U)
(declare-fun Tagclass._module.FixedImpl? () T@U)
(declare-fun Tagclass._module.FixedImpl () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Spec () T@U)
(declare-fun tytagFamily$FixedImpl () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Spec (T@U) T@U)
(declare-fun Tclass._module.Spec? (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.FixedImpl? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.FixedImpl () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.FixedImpl.Valid (T@U T@U) Bool)
(declare-fun |_module.FixedImpl.Valid#canCall| (T@U T@U) Bool)
(declare-fun _module.Spec.Repr (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Spec (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Spec?_0 (T@U) T@U)
(declare-fun Tclass._module.Spec_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Spec? Tagclass._module.Spec Tagclass._module.FixedImpl? Tagclass._module.FixedImpl tytagFamily$object tytagFamily$Spec tytagFamily$FixedImpl)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Spec$U T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h) ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.FixedImpl? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx (Tclass._module.Spec? TInt) $h@@0))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAllocBox bx Tclass._module.FixedImpl? $h@@0))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.FixedImpl?)  (or (= $o null) (= (dtype $o) Tclass._module.FixedImpl?)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is refType $o Tclass._module.FixedImpl?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.FixedImpl $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.FixedImpl? $h@@2))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.FixedImpl $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.FixedImpl? $h@@2))
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
(assert (forall ((_module.Spec$U@@0 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.Spec? _module.Spec$U@@0) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.Spec? _module.Spec$U@@0) $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.FixedImpl? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.FixedImpl? $h@@5))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 Tclass._module.FixedImpl?) ($Is refType $o@@3 (Tclass._module.Spec? TInt)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($Is refType $o@@3 Tclass._module.FixedImpl?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.FixedImpl?) ($IsBox bx@@0 (Tclass._module.Spec? TInt)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsBox bx@@0 Tclass._module.FixedImpl?))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.FixedImpl.Valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.FixedImpl) ($IsAlloc refType this Tclass._module.FixedImpl $Heap)))))) (= (_module.FixedImpl.Valid $Heap this) (|Set#IsMember| (_module.Spec.Repr TInt this) ($Box refType this))))
 :qid |TraitOverride2dfy.94:19|
 :skolemid |570|
 :pattern ( (_module.FixedImpl.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((_module.Spec$U@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Spec _module.Spec$U@@1))  (and ($Is refType |c#0@@2| (Tclass._module.Spec? _module.Spec$U@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Spec _module.Spec$U@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Spec? _module.Spec$U@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((_module.Spec$U@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Spec? _module.Spec$U@@2)) Tagclass._module.Spec?) (= (TagFamily (Tclass._module.Spec? _module.Spec$U@@2)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@2))
)))
(assert (forall ((_module.Spec$U@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Spec _module.Spec$U@@3)) Tagclass._module.Spec) (= (TagFamily (Tclass._module.Spec _module.Spec$U@@3)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@3))
)))
(assert (implements$_module.Spec Tclass._module.FixedImpl? TInt))
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
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.FixedImpl?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.FixedImpl?)))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsBox bx@@5 Tclass._module.FixedImpl?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.FixedImpl) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.FixedImpl)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsBox bx@@6 Tclass._module.FixedImpl))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.FixedImpl)  (and ($Is refType |c#0@@4| Tclass._module.FixedImpl?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.FixedImpl))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.FixedImpl?))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 (Tclass._module.Spec? _module.Spec$U@@4))) ($Is SetType (_module.Spec.Repr _module.Spec$U@@4 $o@@4) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@4 $o@@4))
))))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.FixedImpl? $heap) ($IsAlloc refType $o@@5 (Tclass._module.Spec? TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.FixedImpl? $heap))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
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
(assert (forall ((_module.Spec$U@@5 T@U) ) (! (= (Tclass._module.Spec?_0 (Tclass._module.Spec? _module.Spec$U@@5)) _module.Spec$U@@5)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@5))
)))
(assert (forall ((_module.Spec$U@@6 T@U) ) (! (= (Tclass._module.Spec_0 (Tclass._module.Spec _module.Spec$U@@6)) _module.Spec$U@@6)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@6))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.FixedImpl))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (= $o@@7 this@@0) (|Set#IsMember| (_module.Spec.Repr TInt this@@0) ($Box refType $o@@7)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |566|
)) (= (_module.FixedImpl.Valid $h0 this@@0) (_module.FixedImpl.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |567|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.FixedImpl.Valid $h1 this@@0))
)))
(assert (forall ((_module.Spec$U@@7 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._module.Spec? _module.Spec$U@@7))  (or (= $o@@8 null) (implements$_module.Spec (dtype $o@@8) _module.Spec$U@@7)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@8 (Tclass._module.Spec? _module.Spec$U@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.FixedImpl.Valid#canCall| $Heap@@0 this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.FixedImpl) ($IsAlloc refType this@@1 Tclass._module.FixedImpl $Heap@@0)))))) (=> (_module.FixedImpl.Valid $Heap@@0 this@@1) (|Set#IsMember| (_module.Spec.Repr TInt this@@1) ($Box refType this@@1))))
 :qid |TraitOverride2dfy.94:19|
 :skolemid |568|
 :pattern ( (_module.FixedImpl.Valid $Heap@@0 this@@1))
))))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((_module.Spec$U@@8 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Spec? _module.Spec$U@@8)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Spec? _module.Spec$U@@8))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Spec? _module.Spec$U@@8)))
)))
(assert (forall ((_module.Spec$U@@9 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.Spec _module.Spec$U@@9)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.Spec _module.Spec$U@@9))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@11 (Tclass._module.Spec _module.Spec$U@@9)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.FixedImpl?) Tagclass._module.FixedImpl?))
(assert (= (TagFamily Tclass._module.FixedImpl?) tytagFamily$FixedImpl))
(assert (= (Tag Tclass._module.FixedImpl) Tagclass._module.FixedImpl))
(assert (= (TagFamily Tclass._module.FixedImpl) tytagFamily$FixedImpl))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@10 T@U) ($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 (Tclass._module.Spec? _module.Spec$U@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))) ($IsAlloc SetType (_module.Spec.Repr _module.Spec$U@@10 $o@@9) (TSet Tclass._System.object) $h@@6))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@10 $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.Spec$U@@11 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id OverrideCheck$$_module.FixedImpl.DoIt)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (= _module.Spec$U@@11 TInt) (_module.FixedImpl.Valid $Heap@@1 this@@2)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.FixedImpl.Valid#canCall| $Heap@@1 this@@2) (or (_module.FixedImpl.Valid $Heap@@1 this@@2) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType this@@2))))) (=> (=> (|_module.FixedImpl.Valid#canCall| $Heap@@1 this@@2) (or (_module.FixedImpl.Valid $Heap@@1 this@@2) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType this@@2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#Subset| (_module.Spec.Repr TInt this@@2) (_module.Spec.Repr TInt this@@2))) (=> (|Set#Subset| (_module.Spec.Repr TInt this@@2) (_module.Spec.Repr TInt this@@2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@10 T@U) ($f@@0 T@U) ) (! true
 :qid |TraitOverride2dfy.102:10|
 :skolemid |574|
))) (=> (forall (($o@@11 T@U) ($f@@1 T@U) ) (! true
 :qid |TraitOverride2dfy.102:10|
 :skolemid |574|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType $o@@12))) (|Set#IsMember| (_module.Spec.Repr _module.Spec$U@@11 this@@2) ($Box refType $o@@12)))
 :qid |TraitOverride2dfy.102:10|
 :skolemid |575|
))) (=> (forall (($o@@13 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType $o@@13))) (|Set#IsMember| (_module.Spec.Repr _module.Spec$U@@11 this@@2) ($Box refType $o@@13)))
 :qid |TraitOverride2dfy.102:10|
 :skolemid |575|
)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@14) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@14)) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType $o@@14))))
 :qid |TraitOverride2dfy.102:10|
 :skolemid |576|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14))
)) ($HeapSucc $Heap@@1 $Heap@0))) (and (and (_module.FixedImpl.Valid $Heap@0 this@@2) (= (ControlFlow 0 2) (- 0 1))) (|_module.FixedImpl.Valid#canCall| $Heap@0 this@@2))) (or (_module.FixedImpl.Valid $Heap@0 this@@2) (|Set#IsMember| (_module.Spec.Repr TInt this@@2) ($Box refType this@@2)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.FixedImpl) ($IsAlloc refType this@@2 Tclass._module.FixedImpl $Heap@@1))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
