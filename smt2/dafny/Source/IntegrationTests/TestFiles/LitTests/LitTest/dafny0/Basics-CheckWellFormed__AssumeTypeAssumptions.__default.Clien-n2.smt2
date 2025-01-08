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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass.AssumeTypeAssumptions.Cell () T@U)
(declare-fun Tagclass.AssumeTypeAssumptions.Cell? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$Cell () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell? (T@U) T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell_0 (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell?_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass.AssumeTypeAssumptions.Cell Tagclass.AssumeTypeAssumptions.Cell? tytagFamily$array tytagFamily$Cell)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T) $h@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (= (Ctor (MapType0Type arg0@@2 arg1)) 6))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@0 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@0) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@0) $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@1))  (and ($Is refType |c#0@@2| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :pattern ( ($Is refType |c#0@@2| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@1)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@2 T@U) ) (!  (and (= (Tag (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@2)) Tagclass.AssumeTypeAssumptions.Cell) (= (TagFamily (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@2)) tytagFamily$Cell))
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@2))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@3 T@U) ) (!  (and (= (Tag (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@3)) Tagclass.AssumeTypeAssumptions.Cell?) (= (TagFamily (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@3)) tytagFamily$Cell))
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@3))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@5))))
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@4 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@4))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@4))))
 :pattern ( ($Is refType $o@@3 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@4)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@5 T@U) ) (! (= (Tclass.AssumeTypeAssumptions.Cell_0 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@5)) AssumeTypeAssumptions.Cell$T@@5)
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@5))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@6 T@U) ) (! (= (Tclass.AssumeTypeAssumptions.Cell?_0 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@6)) AssumeTypeAssumptions.Cell$T@@6)
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@4)) TInt $h@@3))
 :pattern ( (_System.array.Length $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@9))))
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@10))))
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@7)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@7))))
 :pattern ( ($IsBox bx@@3 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@7)))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@8 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@8)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@8))))
 :pattern ( ($IsBox bx@@4 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@8)))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (or (= $o@@5 |l#3|) (= $o@@5 |l#4|))))
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun AssumeTypeAssumptions._default.Client_CellU$U () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |u1#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (< |j#0| (LitInt 0)) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (<= (LitInt 0) |j#0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null $Heap alloc |x#0| |a#0|)) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |x#0| (Tclass.AssumeTypeAssumptions.Cell (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U))) ($IsAlloc refType |x#0| (Tclass.AssumeTypeAssumptions.Cell (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U)) $Heap))) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U))) ($IsAlloc refType |a#0| (Tclass._System.array (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U)) $Heap)) (and ($Is refType |u#0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U)) ($IsAlloc refType |u#0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions._default.Client_CellU$U) $Heap))) (and (and ($IsBox |u1#0| AssumeTypeAssumptions._default.Client_CellU$U) ($IsAllocBox |u1#0| AssumeTypeAssumptions._default.Client_CellU$U $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5)))) anon0_correct))))
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
