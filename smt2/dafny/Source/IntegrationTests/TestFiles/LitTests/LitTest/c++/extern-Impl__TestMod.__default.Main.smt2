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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass.Extern.ExternClass () T@U)
(declare-fun Tagclass.Extern.uint64 () T@U)
(declare-fun Tagclass.TestMod.D () T@U)
(declare-fun Tagclass.TestMod.D? () T@U)
(declare-fun Tagclass.Extern.ExternClass? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$ExternClass () T@U)
(declare-fun tytagFamily$uint64 () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Extern.uint64 () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TestMod.D? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Extern.ExternClass? () T@U)
(declare-fun Tclass.TestMod.D () T@U)
(declare-fun Tclass.Extern.ExternClass () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc Tagclass._System.array? Tagclass._System.array Tagclass.Extern.ExternClass Tagclass.Extern.uint64 Tagclass.TestMod.D Tagclass.TestMod.D? Tagclass.Extern.ExternClass? tytagFamily$array tytagFamily$ExternClass tytagFamily$uint64 tytagFamily$D)
)
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass.Extern.uint64 $h)
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($IsAlloc intType |i#0| Tclass.Extern.uint64 $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@0))
 :qid |unknown.0:0|
 :skolemid |869|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@0))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TestMod.D?)  (or (= $o null) (= (dtype $o) Tclass.TestMod.D?)))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( ($Is refType $o Tclass.TestMod.D?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.Extern.ExternClass?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.Extern.ExternClass?)))
 :qid |unknown.0:0|
 :skolemid |1029|
 :pattern ( ($Is refType $o@@0 Tclass.Extern.ExternClass?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.TestMod.D $h@@1) ($IsAlloc refType |c#0@@0| Tclass.TestMod.D? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TestMod.D $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TestMod.D? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.Extern.ExternClass $h@@2) ($IsAlloc refType |c#0@@1| Tclass.Extern.ExternClass? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1035|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.Extern.ExternClass $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.Extern.ExternClass? $h@@2))
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
(assert (forall ((_System.array$arg@@0 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@0) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@0) $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.TestMod.D? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.TestMod.D? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.Extern.ExternClass? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.Extern.ExternClass? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |622|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |623|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |521|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |519|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |530|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@1))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |868|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |614|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@2)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@2)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@3)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( (Tclass._System.array _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |861|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.TestMod.D)  (and ($Is refType |c#0@@3| Tclass.TestMod.D?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($Is refType |c#0@@3| Tclass.TestMod.D))
 :pattern ( ($Is refType |c#0@@3| Tclass.TestMod.D?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.Extern.ExternClass)  (and ($Is refType |c#0@@4| Tclass.Extern.ExternClass?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($Is refType |c#0@@4| Tclass.Extern.ExternClass))
 :pattern ( ($Is refType |c#0@@4| Tclass.Extern.ExternClass?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |621|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@5)) _System.array$arg@@5)
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |529|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1043|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (= (Tag Tclass.Extern.ExternClass) Tagclass.Extern.ExternClass))
(assert (= (TagFamily Tclass.Extern.ExternClass) tytagFamily$ExternClass))
(assert (= (Tag Tclass.Extern.uint64) Tagclass.Extern.uint64))
(assert (= (TagFamily Tclass.Extern.uint64) tytagFamily$uint64))
(assert (= (Tag Tclass.TestMod.D) Tagclass.TestMod.D))
(assert (= (TagFamily Tclass.TestMod.D) tytagFamily$D))
(assert (= (Tag Tclass.TestMod.D?) Tagclass.TestMod.D?))
(assert (= (TagFamily Tclass.TestMod.D?) tytagFamily$D))
(assert (= (Tag Tclass.Extern.ExternClass?) Tagclass.Extern.ExternClass?))
(assert (= (TagFamily Tclass.Extern.ExternClass?) tytagFamily$ExternClass))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass.Extern.uint64)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 18446744073709551616)))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($Is intType |i#0@@0| Tclass.Extern.uint64))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |522|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |520|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |n##0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |t##0@0| () Int)
(declare-fun |call4formal@ar#0| () T@U)
(declare-fun call0formal@Extern._default.newArrayFill$T () T@U)
(declare-fun call0formal@Extern._default.newArrayFill$T@0 () T@U)
(declare-fun |call2formal@t#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@ar#0@0| () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |i##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |n##1@0| () Int)
(declare-fun |call4formal@ar#0@@0| () T@U)
(declare-fun call0formal@Extern._default.newArrayFill$T@@0 () T@U)
(declare-fun call0formal@Extern._default.newArrayFill$T@0@@0 () T@U)
(declare-fun |call2formal@t#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call4formal@ar#0@0@@0| () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |defass#e#0| () Bool)
(declare-fun |e#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TestMod.__default.Main)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 18446744073709551616)) (=> (and (= |n##0@0| (LitInt 5)) (= |newtype$check#1@0| (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 18446744073709551616)) (=> (= |t##0@0| (LitInt 42)) (=> (and ($Is refType |call4formal@ar#0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T)) ($IsAlloc refType |call4formal@ar#0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T) $Heap)) (=> (and (and (= call0formal@Extern._default.newArrayFill$T@0 Tclass.Extern.uint64) (= |call2formal@t#0@0| ($Box intType (int_2_U |t##0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and ($Is refType |call4formal@ar#0@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@0)) ($IsAlloc refType |call4formal@ar#0@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@0) $Heap@0)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |externdfy.7:45|
 :skolemid |1025|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#2@0| (LitInt 21)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 18446744073709551616)) (=> (= |i##0@0| (LitInt 21)) (=> (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.TestMod.D) ($IsAlloc refType call2formal@this Tclass.TestMod.D $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.TestMod.D) ($IsAlloc refType call2formal@this@0 Tclass.TestMod.D $Heap@1)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) alloc)))) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7)))
 :qid |externdfy.39:5|
 :skolemid |1021|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |newtype$check#3@0| (LitInt 3))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 18446744073709551616)) (=> (= |n##1@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (and ($Is refType |call4formal@ar#0@@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@@0)) ($IsAlloc refType |call4formal@ar#0@@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@@0) $Heap)) (and (= call0formal@Extern._default.newArrayFill$T@0@@0 Tclass.TestMod.D) (= |call2formal@t#0@0@@0| ($Box refType call2formal@this@0)))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($Is refType |call4formal@ar#0@0@@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@0@@0)) ($IsAlloc refType |call4formal@ar#0@0@@0| (Tclass._System.array call0formal@Extern._default.newArrayFill$T@0@@0) $Heap@2))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8)))
 :qid |externdfy.7:45|
 :skolemid |1025|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.Extern.ExternClass) ($IsAlloc refType call1formal@this Tclass.Extern.ExternClass $Heap))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.Extern.ExternClass) ($IsAlloc refType call1formal@this@0 Tclass.Extern.ExternClass $Heap@3)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) alloc)))) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9)))
 :qid |externdfy.12:5|
 :skolemid |1031|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= (ControlFlow 0 2) (- 0 1)))))) true)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |a#0| (Tclass._System.array Tclass.Extern.uint64)) ($IsAlloc refType |a#0| (Tclass._System.array Tclass.Extern.uint64) $Heap)) true) (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass.TestMod.D) ($IsAlloc refType |d#0| Tclass.TestMod.D $Heap))) true)) (and (and (and ($Is refType |b#0| (Tclass._System.array Tclass.TestMod.D)) ($IsAlloc refType |b#0| (Tclass._System.array Tclass.TestMod.D) $Heap)) true) (and (and (=> |defass#e#0| (and ($Is refType |e#0| Tclass.Extern.ExternClass) ($IsAlloc refType |e#0| Tclass.Extern.ExternClass $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 2))))) anon0_correct))))
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
