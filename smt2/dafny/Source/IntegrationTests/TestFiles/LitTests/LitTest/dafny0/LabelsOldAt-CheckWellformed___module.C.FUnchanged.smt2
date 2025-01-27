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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun |lambda#16| (T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.C.FUnchanged (T@U T@U T@U Int T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.C.FUnchanged#canCall| (T@U T@U T@U Int T@U T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass._module.C Tagclass._module.C? tytagFamily$C)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (or (or (or (or (= $o@@0 |l#3|) (= $o@@0 |l#4|)) (= $o@@0 |l#5|)) (|Set#IsMember| |l#6| ($Box refType $o@@0))) (|Set#IsMember| |l#7| ($Box refType $o@@0)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1679|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) $o@@0 $f))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.C $h) ($IsAlloc refType |c#0| Tclass._module.C? $h))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C? $h))
)))
(assert (forall (($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.C? $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.C? $h@@0))
)))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) (|x#0| Int) (|c#0@@0| T@U) (|c'#0| T@U) (|s#0| T@U) (|s'#0| T@U) ) (!  (=> (or (|_module.C.FUnchanged#canCall| $prevHeap $Heap this |x#0| |c#0@@0| |c'#0| |s#0| |s'#0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $prevHeap)))) ($Is refType |c#0@@0| Tclass._module.C)) ($Is refType |c'#0| Tclass._module.C)) ($Is SetType |s#0| (TSet Tclass._module.C))) ($Is SetType |s'#0| (TSet Tclass._module.C))))) (= (_module.C.FUnchanged $prevHeap $Heap this |x#0| |c#0@@0| |c'#0| |s#0| |s'#0|)  (and (and (and (and (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@2 null)) (not true)) (=> (= $o@@2 this) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@2) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $prevHeap $o@@2) $f@@0))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1600|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@2) $f@@0))
)) (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@3 null)) (not true)) (=> (= $o@@3 |c#0@@0|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $prevHeap $o@@3) $f@@1))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1601|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@3) $f@@1))
))) (=> (= |x#0| (LitInt 7)) (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@4 null)) (not true)) (=> (= $o@@4 |c'#0|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@4) $f@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $prevHeap $o@@4) $f@@2))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1602|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@4) $f@@2))
)))) (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@5 null)) (not true)) (=> (|Set#IsMember| |s#0| ($Box refType $o@@5)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@5) $f@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $prevHeap $o@@5) $f@@3))))
 :qid |LabelsOldAtdfy.245:8|
 :skolemid |1603|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@5) $f@@3))
))) (=> (= |x#0| (LitInt 9)) (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@6 null)) (not true)) (=> (|Set#IsMember| |s'#0| ($Box refType $o@@6)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@6) $f@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $prevHeap $o@@6) $f@@4))))
 :qid |LabelsOldAtdfy.246:20|
 :skolemid |1604|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@6) $f@@4))
))))))
 :qid |LabelsOldAtdfy.239:21|
 :skolemid |1609|
 :pattern ( (_module.C.FUnchanged $prevHeap $Heap this |x#0| |c#0@@0| |c'#0| |s#0| |s'#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |854|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |855|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |753|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |751|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |762|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |782|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |783|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |775|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |847|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |846|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( ($IsBox bx@@1 Tclass._module.C))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1410|
 :pattern ( ($IsBox bx@@2 Tclass._module.C?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.C)  (and ($Is refType |c#0@@1| Tclass._module.C?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.C?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |853|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |765|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |774|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |803|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |804|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|x#0@@0| Int) (|c#0@@2| T@U) (|c'#0@@0| T@U) (|s#0@@0| T@U) (|s'#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.C))) (or (|_module.C.FUnchanged#canCall| $prevHeap@@0 $h0 this@@0 |x#0@@0| |c#0@@2| |c'#0@@0| |s#0@@0| |s'#0@@0|) (and (and (and ($Is refType |c#0@@2| Tclass._module.C) ($Is refType |c'#0@@0| Tclass._module.C)) ($Is SetType |s#0@@0| (TSet Tclass._module.C))) ($Is SetType |s'#0@@0| (TSet Tclass._module.C))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (or (or (or (= $o@@7 this@@0) (= $o@@7 |c#0@@2|)) (= $o@@7 |c'#0@@0|)) (|Set#IsMember| |s#0@@0| ($Box refType $o@@7))) (|Set#IsMember| |s'#0@@0| ($Box refType $o@@7)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 $o@@7) $f@@5) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1596|
)) (= (_module.C.FUnchanged $prevHeap@@0 $h0 this@@0 |x#0@@0| |c#0@@2| |c'#0@@0| |s#0@@0| |s'#0@@0|) (_module.C.FUnchanged $prevHeap@@0 $h1 this@@0 |x#0@@0| |c#0@@2| |c'#0@@0| |s#0@@0| |s'#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1597|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.C.FUnchanged $prevHeap@@0 $h1 this@@0 |x#0@@0| |c#0@@2| |c'#0@@0| |s#0@@0| |s'#0@@0|))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |737|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |738|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |761|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |768|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |754|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |752|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |799|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |778|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |x#0@@1| () Int)
(declare-fun |c#0@@3| () T@U)
(declare-fun |c'#0@@1| () T@U)
(declare-fun |s#0@@1| () T@U)
(declare-fun |s'#0@@1| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |$unchanged#x1@0| () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |$unchanged#x0@0| () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.C.FUnchanged)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon13_correct  (=> (and (= (_module.C.FUnchanged $Heap@@0 current$Heap this@@1 |x#0@@1| |c#0@@3| |c'#0@@1| |s#0@@1| |s'#0@@1|)  (and (and (and (and (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@8 null)) (not true)) (=> (= $o@@8 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@8) $f@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@8) $f@@6))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1630|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@8) $f@@6))
)) (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@9 null)) (not true)) (=> (= $o@@9 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@9) $f@@7) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@9) $f@@7))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1631|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@9) $f@@7))
))) (=> (= |x#0@@1| (LitInt 7)) (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@10 null)) (not true)) (=> (= $o@@10 |c'#0@@1|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@10) $f@@8) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@10) $f@@8))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1632|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@10) $f@@8))
)))) (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@11)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@11) $f@@9) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@11) $f@@9))))
 :qid |LabelsOldAtdfy.245:8|
 :skolemid |1633|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@11) $f@@9))
))) (=> (= |x#0@@1| (LitInt 9)) (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (|Set#IsMember| |s'#0@@1| ($Box refType $o@@12)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@12) $f@@10) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@12) $f@@10))))
 :qid |LabelsOldAtdfy.246:20|
 :skolemid |1634|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@12) $f@@10))
))))) ($Is boolType (bool_2_U (_module.C.FUnchanged $Heap@@0 current$Heap this@@1 |x#0@@1| |c#0@@3| |c'#0@@1| |s#0@@1| |s'#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#4@1|))))))))))))
(let ((anon21_Else_correct  (=> (or (not (= |x#0@@1| (LitInt 9))) (not true)) (=> (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 11) 3)) anon13_correct))))
(let ((anon21_Then_correct  (=> (= |x#0@@1| (LitInt 9)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (|Set#IsMember| |s'#0@@1| ($Box refType |$unchanged#x1@0|)) ($IsAlloc refType |$unchanged#x1@0| Tclass._module.C $Heap@@0))) (=> (=> (|Set#IsMember| |s'#0@@1| ($Box refType |$unchanged#x1@0|)) ($IsAlloc refType |$unchanged#x1@0| Tclass._module.C $Heap@@0)) (=> (= |b$reqreads#4@0| (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@13) alloc)))) (|Set#IsMember| |s'#0@@1| ($Box refType $o@@13))) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@13 $f@@11)))
 :qid |LabelsOldAtdfy.246:30|
 :skolemid |1620|
))) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 9) 3)) anon13_correct)))))))
(let ((anon20_Then_correct  (=> (and (and (and (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@14) $f@@12) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@14) $f@@12))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1621|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@14) $f@@12))
)) (forall (($o@@15 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@15) $f@@13) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@15) $f@@13))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1622|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@15) $f@@13))
))) (=> (= |x#0@@1| (LitInt 7)) (forall (($o@@16 T@U) ($f@@14 T@U) ) (!  (=> (or (not (= $o@@16 null)) (not true)) (=> (= $o@@16 |c'#0@@1|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@16) $f@@14) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@16) $f@@14))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1623|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@16) $f@@14))
)))) (forall (($o@@17 T@U) ($f@@15 T@U) ) (!  (=> (or (not (= $o@@17 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@17)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@17) $f@@15) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@17) $f@@15))))
 :qid |LabelsOldAtdfy.245:8|
 :skolemid |1624|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@17) $f@@15))
))) (and (=> (= (ControlFlow 0 12) 9) anon21_Then_correct) (=> (= (ControlFlow 0 12) 11) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not (and (and (and (forall (($o@@18 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@18 null)) (not true)) (=> (= $o@@18 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@18) $f@@16) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@18) $f@@16))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1621|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@18) $f@@16))
)) (forall (($o@@19 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@19 null)) (not true)) (=> (= $o@@19 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@19) $f@@17) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@19) $f@@17))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1622|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@19) $f@@17))
))) (=> (= |x#0@@1| (LitInt 7)) (forall (($o@@20 T@U) ($f@@18 T@U) ) (!  (=> (or (not (= $o@@20 null)) (not true)) (=> (= $o@@20 |c'#0@@1|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@20) $f@@18) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@20) $f@@18))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1623|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@20) $f@@18))
)))) (forall (($o@@21 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@21 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@21)) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@21) $f@@19) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@21) $f@@19))))
 :qid |LabelsOldAtdfy.245:8|
 :skolemid |1624|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@21) $f@@19))
)))) (=> (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 8) 3)) anon13_correct))))
(let ((anon19_Else_correct  (=> (and (not (and (and (forall (($o@@22 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@22 null)) (not true)) (=> (= $o@@22 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@22) $f@@20) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@22) $f@@20))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1617|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@22) $f@@20))
)) (forall (($o@@23 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@23 null)) (not true)) (=> (= $o@@23 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@23) $f@@21) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@23) $f@@21))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1618|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@23) $f@@21))
))) (=> (= |x#0@@1| (LitInt 7)) (forall (($o@@24 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |c'#0@@1|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@24) $f@@22) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@24) $f@@22))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1619|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@24) $f@@22))
))))) (= |b$reqreads#3@1| true)) (and (=> (= (ControlFlow 0 15) 12) anon20_Then_correct) (=> (= (ControlFlow 0 15) 8) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (and (forall (($o@@25 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@25) $f@@23) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@25) $f@@23))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1617|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@25) $f@@23))
)) (forall (($o@@26 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@26) $f@@24) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@26) $f@@24))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1618|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@26) $f@@24))
))) (=> (= |x#0@@1| (LitInt 7)) (forall (($o@@27 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |c'#0@@1|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@27) $f@@25) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@27) $f@@25))))
 :qid |LabelsOldAtdfy.244:20|
 :skolemid |1619|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@27) $f@@25))
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> (|Set#IsMember| |s#0@@1| ($Box refType |$unchanged#x0@0|)) ($IsAlloc refType |$unchanged#x0@0| Tclass._module.C $Heap@@0))) (=> (=> (|Set#IsMember| |s#0@@1| ($Box refType |$unchanged#x0@0|)) ($IsAlloc refType |$unchanged#x0@0| Tclass._module.C $Heap@@0)) (=> (and (= |b$reqreads#3@0| (forall (($o@@28 T@U) ($f@@26 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@28) alloc)))) (|Set#IsMember| |s#0@@1| ($Box refType $o@@28))) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@28 $f@@26)))
 :qid |LabelsOldAtdfy.245:18|
 :skolemid |1616|
))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (=> (= (ControlFlow 0 13) 12) anon20_Then_correct) (=> (= (ControlFlow 0 13) 8) anon20_Else_correct))))))))
(let ((anon18_Else_correct  (=> (and (or (not (= |x#0@@1| (LitInt 7))) (not true)) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 19) 13) anon19_Then_correct) (=> (= (ControlFlow 0 19) 15) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (= |x#0@@1| (LitInt 7)) (and (=> (= (ControlFlow 0 17) (- 0 18)) ($IsAlloc refType |c'#0@@1| Tclass._module.C $Heap@@0)) (=> ($IsAlloc refType |c'#0@@1| Tclass._module.C $Heap@@0) (=> (and (= |b$reqreads#2@0| (forall (($o@@29 T@U) ($f@@27 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@29) alloc)))) (= $o@@29 |c'#0@@1|)) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@29 $f@@27)))
 :qid |LabelsOldAtdfy.244:30|
 :skolemid |1613|
))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (=> (= (ControlFlow 0 17) 13) anon19_Then_correct) (=> (= (ControlFlow 0 17) 15) anon19_Else_correct))))))))
(let ((anon17_Then_correct  (=> (and (forall (($o@@30 T@U) ($f@@28 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@30) $f@@28) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@30) $f@@28))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1614|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@30) $f@@28))
)) (forall (($o@@31 T@U) ($f@@29 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@31) $f@@29) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@31) $f@@29))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1615|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@31) $f@@29))
))) (and (=> (= (ControlFlow 0 20) 17) anon18_Then_correct) (=> (= (ControlFlow 0 20) 19) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (and (forall (($o@@32 T@U) ($f@@30 T@U) ) (!  (=> (or (not (= $o@@32 null)) (not true)) (=> (= $o@@32 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@32) $f@@30) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@32) $f@@30))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1614|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@32) $f@@30))
)) (forall (($o@@33 T@U) ($f@@31 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 |c#0@@3|) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@33) $f@@31) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@33) $f@@31))))
 :qid |LabelsOldAtdfy.243:8|
 :skolemid |1615|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@33) $f@@31))
)))) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 16) 13) anon19_Then_correct) (=> (= (ControlFlow 0 16) 15) anon19_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (not (forall (($o@@34 T@U) ($f@@32 T@U) ) (!  (=> (or (not (= $o@@34 null)) (not true)) (=> (= $o@@34 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@34) $f@@32) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@34) $f@@32))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1612|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@34) $f@@32))
))) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 23) 20) anon17_Then_correct) (=> (= (ControlFlow 0 23) 16) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (forall (($o@@35 T@U) ($f@@33 T@U) ) (!  (=> (or (not (= $o@@35 null)) (not true)) (=> (= $o@@35 this@@1) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@35) $f@@33) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 $o@@35) $f@@33))))
 :qid |LabelsOldAtdfy.242:8|
 :skolemid |1612|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@35) $f@@33))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) ($IsAlloc refType |c#0@@3| Tclass._module.C $Heap@@0)) (=> ($IsAlloc refType |c#0@@3| Tclass._module.C $Heap@@0) (=> (and (= |b$reqreads#1@0| (forall (($o@@36 T@U) ($f@@34 T@U) ) (!  (=> (and (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@36) alloc)))) (= $o@@36 |c#0@@3|)) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@36 $f@@34)))
 :qid |LabelsOldAtdfy.243:18|
 :skolemid |1611|
))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 21) 20) anon17_Then_correct) (=> (= (ControlFlow 0 21) 16) anon17_Else_correct))))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) ($IsAlloc refType this@@1 Tclass._module.C $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.C $Heap@@0) (=> (= |b$reqreads#0@0| (forall (($o@@37 T@U) ($f@@35 T@U) ) (!  (=> (and (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) current$Heap $o@@37) alloc)))) (= $o@@37 this@@1)) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@37 $f@@35)))
 :qid |LabelsOldAtdfy.242:18|
 :skolemid |1610|
))) (and (=> (= (ControlFlow 0 24) 21) anon16_Then_correct) (=> (= (ControlFlow 0 24) 23) anon16_Else_correct)))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#16| null current$Heap alloc this@@1 |c#0@@3| |c'#0@@1| |s#0@@1| |s'#0@@1|)) (and (=> (= (ControlFlow 0 26) 1) anon15_Then_correct) (=> (= (ControlFlow 0 26) 24) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.C) ($IsAlloc refType this@@1 Tclass._module.C previous$Heap))) (and ($Is refType |c#0@@3| Tclass._module.C) ($IsAlloc refType |c#0@@3| Tclass._module.C previous$Heap))) (and (and ($Is refType |c'#0@@1| Tclass._module.C) ($IsAlloc refType |c'#0@@1| Tclass._module.C current$Heap)) (and ($Is SetType |s#0@@1| (TSet Tclass._module.C)) ($IsAlloc SetType |s#0@@1| (TSet Tclass._module.C) previous$Heap)))) (and (and (and ($Is SetType |s'#0@@1| (TSet Tclass._module.C)) ($IsAlloc SetType |s'#0@@1| (TSet Tclass._module.C) current$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 27) 26)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 18))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 9) (- 10))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
