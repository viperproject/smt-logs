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
(declare-fun Tagclass._module.T? () T@U)
(declare-fun Tagclass._module.T () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun tytagFamily$T () T@U)
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
(declare-fun implements$_module.T (T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.T () T@U)
(declare-fun Tclass._module.T? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.C.Valid (Bool T@U Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.C.Valid#canCall| (T@U Int) Bool)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.T? Tagclass._module.T Tagclass._module.C? Tagclass._module.C tytagFamily$T tytagFamily$C)
)
(assert (implements$_module.T Tclass._module.C?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.T $h) ($IsAlloc refType |c#0| Tclass._module.T? $h))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.T $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.T? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) (|x#0| Int) ) (!  (=> (or (|_module.C.Valid#canCall| (Lit refType this) (LitInt |x#0|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.C)))) (= (_module.C.Valid true (Lit refType this) (LitInt |x#0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue3995dfy.32:23|
 :weight 3
 :skolemid |543|
 :pattern ( (_module.C.Valid true (Lit refType this) (LitInt |x#0|)))
))))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.T? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.T? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.C? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.C? $h@@2))
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
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.T)  (and ($Is refType |c#0@@1| Tclass._module.T?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.T))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.T?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.C)  (and ($Is refType |c#0@@2| Tclass._module.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.C? $heap) ($IsAlloc refType $o@@2 Tclass._module.T? $heap))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.C? $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.C.Valid#canCall| this@@0 |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.C)))) (= (_module.C.Valid true this@@0 |x#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue3995dfy.32:23|
 :skolemid |541|
 :pattern ( (_module.C.Valid true this@@0 |x#0@@0|))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) (|x#0@@1| Int) ) (!  (=> (or (|_module.C.Valid#canCall| this@@1 (LitInt |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.C)))) (= (_module.C.Valid true this@@1 (LitInt |x#0@@1|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue3995dfy.32:23|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.C.Valid true this@@1 (LitInt |x#0@@1|)))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 Tclass._module.C?) ($Is refType $o@@3 Tclass._module.T?))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is refType $o@@3 Tclass._module.C?))
)))
(assert (= (Tag Tclass._module.T?) Tagclass._module.T?))
(assert (= (TagFamily Tclass._module.T?) tytagFamily$T))
(assert (= (Tag Tclass._module.T) Tagclass._module.T))
(assert (= (TagFamily Tclass._module.T) tytagFamily$T))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.T?)  (or (= $o@@4 null) (implements$_module.T (dtype $o@@4))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is refType $o@@4 Tclass._module.T?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun reveal__module.C.Valid () Bool)
(declare-fun this@@2 () T@U)
(declare-fun |x#0@@2| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$_module.C.MyMethod)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (_module.C.Valid reveal__module.C.Valid this@@2 |x#0@@2|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (_module.C.Valid reveal__module.C.Valid this@@2 |x#0@@2|)) (=> (_module.C.Valid reveal__module.C.Valid this@@2 |x#0@@2|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= |x#0@@2| |x#0@@2|)) (=> (<= |x#0@@2| |x#0@@2|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@5 T@U) ($f T@U) ) (! true
 :qid |gitissue3995dfy.33:10|
 :skolemid |547|
))) (=> (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |gitissue3995dfy.33:10|
 :skolemid |547|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@7 T@U) ($f@@1 T@U) ) (! true
 :qid |gitissue3995dfy.33:10|
 :skolemid |548|
))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.C) ($IsAlloc refType this@@2 Tclass._module.C $Heap))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
