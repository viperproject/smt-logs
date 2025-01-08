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
(declare-fun Tagclass.ReceiverResolution.MyClass () T@U)
(declare-fun Tagclass.ReceiverResolution.MyTrait? () T@U)
(declare-fun Tagclass.ReceiverResolution.MyTrait () T@U)
(declare-fun Tagclass.ReceiverResolution.MyClass? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$MyTrait () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun ReceiverResolution.MyTrait.F (T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun |ReceiverResolution.MyTrait.F#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.ReceiverResolution.MyTrait (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun implements$ReceiverResolution.MyTrait (T@U T@U) Bool)
(declare-fun Tclass.ReceiverResolution.MyClass? (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass.ReceiverResolution.MyTrait? (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyClass (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyClass_0 (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyClass_1 (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyClass?_0 (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyClass?_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyTrait?_0 (T@U) T@U)
(declare-fun Tclass.ReceiverResolution.MyTrait_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass.ReceiverResolution.MyClass Tagclass.ReceiverResolution.MyTrait? Tagclass.ReceiverResolution.MyTrait Tagclass.ReceiverResolution.MyClass? tytagFamily$object tytagFamily$MyClass tytagFamily$MyTrait)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor SetType) 3) (= (Ctor refType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (ReceiverResolution.MyTrait$U T@U) (this T@U) ) (!  (=> (and (or (|ReceiverResolution.MyTrait.F#canCall| ReceiverResolution.MyTrait$U this) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($IsAlloc refType this (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U this) (TSet Tclass._System.object) $Heap))
 :pattern ( ($IsAlloc SetType (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U this) (TSet Tclass._System.object) $Heap))
))))
(assert (forall ((ReceiverResolution.MyClass$T T@U) (ReceiverResolution.MyClass$R T@U) ) (implements$ReceiverResolution.MyTrait (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T ReceiverResolution.MyClass$R) ReceiverResolution.MyClass$T)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReceiverResolution.MyTrait$U@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|ReceiverResolution.MyTrait.F#canCall| ReceiverResolution.MyTrait$U@@0 (Lit refType this@@0)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@0))))) (= (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@0 (Lit refType this@@0)) (Lit SetType |Set#Empty|)))
 :weight 3
 :pattern ( (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@0 (Lit refType this@@0)))
))))
(assert (forall ((ReceiverResolution.MyTrait$U@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@1) $h) ($IsAlloc refType |c#0| (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@1) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@0 T@U) (ReceiverResolution.MyClass$R@@0 T@U) ($o T@U) ) (!  (=> ($Is refType $o (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@0 ReceiverResolution.MyClass$R@@0)) ($Is refType $o (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyClass$T@@0)))
 :pattern ( ($Is refType $o (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@0 ReceiverResolution.MyClass$R@@0)))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@1 T@U) (ReceiverResolution.MyClass$R@@1 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@1 ReceiverResolution.MyClass$R@@1)) ($IsBox bx (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyClass$T@@1)))
 :pattern ( ($IsBox bx (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@1 ReceiverResolution.MyClass$R@@1)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (= (Ctor (MapType0Type arg0@@2 arg1)) 7))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((ReceiverResolution.MyTrait$U@@2 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@2) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@2) $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReceiverResolution.MyTrait$U@@3 T@U) (this@@1 T@U) ) (!  (=> (or (|ReceiverResolution.MyTrait.F#canCall| ReceiverResolution.MyTrait$U@@3 this@@1) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@3))))) ($Is SetType (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@3 this@@1) (TSet Tclass._System.object)))
 :pattern ( (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@3 this@@1))
))))
(assert (forall ((ReceiverResolution.MyClass$T@@2 T@U) (ReceiverResolution.MyClass$R@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@2 ReceiverResolution.MyClass$R@@2))  (and ($Is refType |c#0@@1| (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@2 ReceiverResolution.MyClass$R@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :pattern ( ($Is refType |c#0@@1| (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@2 ReceiverResolution.MyClass$R@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@2 ReceiverResolution.MyClass$R@@2)))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@4 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@4))  (and ($Is refType |c#0@@2| (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@4)) (or (not (= |c#0@@2| null)) (not true))))
 :pattern ( ($Is refType |c#0@@2| (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@4)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@3 T@U) (ReceiverResolution.MyClass$R@@3 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@3 ReceiverResolution.MyClass$R@@3))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@3 ReceiverResolution.MyClass$R@@3))))
 :pattern ( ($Is refType $o@@2 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@3 ReceiverResolution.MyClass$R@@3)))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@5 T@U) ) (!  (and (= (Tag (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@5)) Tagclass.ReceiverResolution.MyTrait?) (= (TagFamily (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@5)) tytagFamily$MyTrait))
 :pattern ( (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@5))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@6 T@U) ) (!  (and (= (Tag (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@6)) Tagclass.ReceiverResolution.MyTrait) (= (TagFamily (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@6)) tytagFamily$MyTrait))
 :pattern ( (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@6))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@4 T@U) (ReceiverResolution.MyClass$R@@4 T@U) (bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@4 ReceiverResolution.MyClass$R@@4) $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyClass$T@@4) $h@@3))
 :pattern ( ($IsAllocBox bx@@2 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@4 ReceiverResolution.MyClass$R@@4) $h@@3))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@5 T@U) (ReceiverResolution.MyClass$R@@5 T@U) (|c#0@@3| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@3| (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@5 ReceiverResolution.MyClass$R@@5) $h@@4) ($IsAlloc refType |c#0@@3| (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@5 ReceiverResolution.MyClass$R@@5) $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@5 ReceiverResolution.MyClass$R@@5) $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@5 ReceiverResolution.MyClass$R@@5) $h@@4))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@6 T@U) (ReceiverResolution.MyClass$R@@6 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@6 ReceiverResolution.MyClass$R@@6) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :pattern ( ($IsAlloc refType $o@@3 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@6 ReceiverResolution.MyClass$R@@6) $h@@5))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@7 T@U) (ReceiverResolution.MyClass$R@@7 T@U) ) (! (= (Tclass.ReceiverResolution.MyClass_0 (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@7 ReceiverResolution.MyClass$R@@7)) ReceiverResolution.MyClass$T@@7)
 :pattern ( (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@7 ReceiverResolution.MyClass$R@@7))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@8 T@U) (ReceiverResolution.MyClass$R@@8 T@U) ) (! (= (Tclass.ReceiverResolution.MyClass_1 (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@8 ReceiverResolution.MyClass$R@@8)) ReceiverResolution.MyClass$R@@8)
 :pattern ( (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@8 ReceiverResolution.MyClass$R@@8))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@9 T@U) (ReceiverResolution.MyClass$R@@9 T@U) ) (! (= (Tclass.ReceiverResolution.MyClass?_0 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@9 ReceiverResolution.MyClass$R@@9)) ReceiverResolution.MyClass$T@@9)
 :pattern ( (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@9 ReceiverResolution.MyClass$R@@9))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@10 T@U) (ReceiverResolution.MyClass$R@@10 T@U) ) (! (= (Tclass.ReceiverResolution.MyClass?_1 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@10 ReceiverResolution.MyClass$R@@10)) ReceiverResolution.MyClass$R@@10)
 :pattern ( (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@10 ReceiverResolution.MyClass$R@@10))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :pattern ( (TSet t@@4))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@7 T@U) ) (! (= (Tclass.ReceiverResolution.MyTrait?_0 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@7)) ReceiverResolution.MyTrait$U@@7)
 :pattern ( (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@7))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@8 T@U) ) (! (= (Tclass.ReceiverResolution.MyTrait_0 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@8)) ReceiverResolution.MyTrait$U@@8)
 :pattern ( (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@8))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@11 T@U) (ReceiverResolution.MyClass$R@@11 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@11 ReceiverResolution.MyClass$R@@11)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@11 ReceiverResolution.MyClass$R@@11))))
 :pattern ( ($IsBox bx@@7 (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@11 ReceiverResolution.MyClass$R@@11)))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@12 T@U) (ReceiverResolution.MyClass$R@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@12 ReceiverResolution.MyClass$R@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@12 ReceiverResolution.MyClass$R@@12))))
 :pattern ( ($IsBox bx@@8 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@12 ReceiverResolution.MyClass$R@@12)))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@9 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@9))  (or (= $o@@5 null) (implements$ReceiverResolution.MyTrait (dtype $o@@5) ReceiverResolution.MyTrait$U@@9)))
 :pattern ( ($Is refType $o@@5 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@9)))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@13 T@U) (ReceiverResolution.MyClass$R@@13 T@U) ) (!  (and (= (Tag (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@13 ReceiverResolution.MyClass$R@@13)) Tagclass.ReceiverResolution.MyClass) (= (TagFamily (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@13 ReceiverResolution.MyClass$R@@13)) tytagFamily$MyClass))
 :pattern ( (Tclass.ReceiverResolution.MyClass ReceiverResolution.MyClass$T@@13 ReceiverResolution.MyClass$R@@13))
)))
(assert (forall ((ReceiverResolution.MyClass$T@@14 T@U) (ReceiverResolution.MyClass$R@@14 T@U) ) (!  (and (= (Tag (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@14 ReceiverResolution.MyClass$R@@14)) Tagclass.ReceiverResolution.MyClass?) (= (TagFamily (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@14 ReceiverResolution.MyClass$R@@14)) tytagFamily$MyClass))
 :pattern ( (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@14 ReceiverResolution.MyClass$R@@14))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@10 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@10)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@10))))
 :pattern ( ($IsBox bx@@10 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyTrait$U@@10)))
)))
(assert (forall ((ReceiverResolution.MyTrait$U@@11 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@11)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@11))))
 :pattern ( ($IsBox bx@@11 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@11)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((ReceiverResolution.MyClass$T@@15 T@U) (ReceiverResolution.MyClass$R@@15 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@15 ReceiverResolution.MyClass$R@@15) $heap) ($IsAlloc refType $o@@7 (Tclass.ReceiverResolution.MyTrait? ReceiverResolution.MyClass$T@@15) $heap))
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.ReceiverResolution.MyClass? ReceiverResolution.MyClass$T@@15 ReceiverResolution.MyClass$R@@15) $heap))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReceiverResolution.MyTrait$U@@12 T@U) (this@@2 T@U) ) (!  (=> (or (|ReceiverResolution.MyTrait.F#canCall| ReceiverResolution.MyTrait$U@@12 this@@2) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass.ReceiverResolution.MyTrait ReceiverResolution.MyTrait$U@@12))))) (= (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@12 this@@2) (Lit SetType |Set#Empty|)))
 :pattern ( (ReceiverResolution.MyTrait.F ReceiverResolution.MyTrait$U@@12 this@@2))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@ReceiverResolution.MyClass$T () T@U)
(declare-fun call1formal@ReceiverResolution.MyClass$R () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |defass#foo#0| () Bool)
(declare-fun |foo#0| () T@U)
(declare-fun |f#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass.ReceiverResolution.MyClass call0formal@ReceiverResolution.MyClass$T call1formal@ReceiverResolution.MyClass$R)) ($IsAlloc refType call3formal@this (Tclass.ReceiverResolution.MyClass call0formal@ReceiverResolution.MyClass$T call1formal@ReceiverResolution.MyClass$R) $Heap@@0))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass.ReceiverResolution.MyClass TInt TInt)) ($IsAlloc refType call3formal@this@0 (Tclass.ReceiverResolution.MyClass TInt TInt) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 call3formal@this@0) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@8)))
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap@@0 $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call3formal@this@0 null)) (not true)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (=> |defass#foo#0| (and ($Is refType |foo#0| (Tclass.ReceiverResolution.MyClass TInt TInt)) ($IsAlloc refType |foo#0| (Tclass.ReceiverResolution.MyClass TInt TInt) $Heap@@0))) true)) (=> (and (and (and ($Is SetType |f#0| (TSet Tclass._System.object)) ($IsAlloc SetType |f#0| (TSet Tclass._System.object) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
