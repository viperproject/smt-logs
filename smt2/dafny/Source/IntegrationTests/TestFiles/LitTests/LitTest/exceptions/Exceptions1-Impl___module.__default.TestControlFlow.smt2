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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.NatOutcome () T@U)
(declare-fun Tagclass._module.NatOutcome? () T@U)
(declare-fun Tagclass._module.VoidOutcome () T@U)
(declare-fun Tagclass._module.VoidOutcome? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$NatOutcome () T@U)
(declare-fun tytagFamily$VoidOutcome () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.VoidOutcome () T@U)
(declare-fun Tclass._module.VoidOutcome? () T@U)
(declare-fun Tclass._module.NatOutcome () T@U)
(declare-fun Tclass._module.NatOutcome? () T@U)
(declare-fun null () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.VoidOutcome (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.NatOutcome (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._module.NatOutcome Tagclass._module.NatOutcome? Tagclass._module.VoidOutcome Tagclass._module.VoidOutcome? tytagFamily$nat tytagFamily$NatOutcome tytagFamily$VoidOutcome)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.VoidOutcome $h@@0) ($IsAlloc refType |c#0| Tclass._module.VoidOutcome? $h@@0))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.VoidOutcome $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.VoidOutcome? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.NatOutcome $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.NatOutcome? $h@@1))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NatOutcome $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NatOutcome? $h@@1))
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
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.VoidOutcome? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc refType $o Tclass._module.VoidOutcome? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.NatOutcome? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.NatOutcome? $h@@3))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.VoidOutcome)  (and ($Is refType |c#0@@1| Tclass._module.VoidOutcome?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.VoidOutcome))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.VoidOutcome?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.NatOutcome)  (and ($Is refType |c#0@@2| Tclass._module.NatOutcome?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NatOutcome))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NatOutcome?))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |676|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.NatOutcome) Tagclass._module.NatOutcome))
(assert (= (TagFamily Tclass._module.NatOutcome) tytagFamily$NatOutcome))
(assert (= (Tag Tclass._module.NatOutcome?) Tagclass._module.NatOutcome?))
(assert (= (TagFamily Tclass._module.NatOutcome?) tytagFamily$NatOutcome))
(assert (= (Tag Tclass._module.VoidOutcome) Tagclass._module.VoidOutcome))
(assert (= (TagFamily Tclass._module.VoidOutcome) tytagFamily$VoidOutcome))
(assert (= (Tag Tclass._module.VoidOutcome?) Tagclass._module.VoidOutcome?))
(assert (= (TagFamily Tclass._module.VoidOutcome?) tytagFamily$VoidOutcome))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.VoidOutcome?)  (or (= $o@@2 null) (implements$_module.VoidOutcome (dtype $o@@2))))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Is refType $o@@2 Tclass._module.VoidOutcome?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.NatOutcome?)  (or (= $o@@3 null) (implements$_module.NatOutcome (dtype $o@@3))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($Is refType $o@@3 Tclass._module.NatOutcome?))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@1| () Int)
(declare-fun |i#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun _module.VoidOutcome.IsFailure (T@U) Bool)
(declare-fun |call4formal@res#0@0| () T@U)
(declare-fun |call4formal@res#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |_module.VoidOutcome.IsFailure#canCall| (T@U) Bool)
(declare-fun _module.NatOutcome.IsFailure (T@U) Bool)
(declare-fun |call4formal@res#0@0@@0| () T@U)
(declare-fun |_module.NatOutcome.Extract#canCall| (T@U) Bool)
(declare-fun |$rhs#0_0@1| () Bool)
(declare-fun |$rhs#0_1@1| () Bool)
(declare-fun |$rhs#0_2@1| () Bool)
(declare-fun |call4formal@res#0@@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |_module.NatOutcome.IsFailure#canCall| (T@U) Bool)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |defass#materialized2#0_0@0| () Bool)
(declare-fun |materialized2#0_0@0| () T@U)
(declare-fun |defass#materialized1#0_0@0| () Bool)
(declare-fun |materialized1#0_0@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |i#0| () Int)
(declare-fun |defass#materialized1#0_0| () Bool)
(declare-fun |materialized1#0_0| () T@U)
(declare-fun |defass#materialized2#0_0| () Bool)
(declare-fun |materialized2#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestControlFlow)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon11_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) ($Is intType (int_2_U (+ |i#0@1| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |i#0@1| 1)) Tclass._System.nat) (=> (= |i#0@2| (+ |i#0@1| 1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- 8 |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 8 |i#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- 8 |i#0@2|) |$decr$loop#00@1|)))))))))
(let ((anon16_Else_correct  (=> (and (not (_module.VoidOutcome.IsFailure |call4formal@res#0@0|)) (= (ControlFlow 0 9) 5)) anon11_correct)))
(let ((anon16_Then_correct  (=> (and (_module.VoidOutcome.IsFailure |call4formal@res#0@0|) (= (ControlFlow 0 8) 5)) anon11_correct)))
(let ((anon8_correct  (=> (and (and (and ($Is refType |call4formal@res#0| Tclass._module.VoidOutcome) ($IsAlloc refType |call4formal@res#0| Tclass._module.VoidOutcome $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($Is refType |call4formal@res#0@0| Tclass._module.VoidOutcome) ($IsAlloc refType |call4formal@res#0@0| Tclass._module.VoidOutcome $Heap@2)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |Exceptions1dfy.31:8|
 :skolemid |500|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) true) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= |call4formal@res#0@0| null)) (not true))) (=> (or (not (= |call4formal@res#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call4formal@res#0@0|) Tclass._module.VoidOutcome? $Heap@2) (=> (and (|_module.VoidOutcome.IsFailure#canCall| |call4formal@res#0@0|) (|_module.VoidOutcome.IsFailure#canCall| |call4formal@res#0@0|)) (and (=> (= (ControlFlow 0 10) 8) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct))))))))))
(let ((anon15_Else_correct  (=> (not (_module.NatOutcome.IsFailure |call4formal@res#0@0@@0|)) (and (=> (= (ControlFlow 0 14) (- 0 17)) true) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= |call4formal@res#0@0@@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |call4formal@res#0@0@@0|) Tclass._module.NatOutcome? $Heap@1) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (_module.NatOutcome.IsFailure |call4formal@res#0@0@@0|))) (=> (|_module.NatOutcome.Extract#canCall| |call4formal@res#0@0@@0|) (=> (and (|_module.NatOutcome.Extract#canCall| |call4formal@res#0@0@@0|) (= (ControlFlow 0 14) 10)) anon8_correct)))))))))
(let ((anon15_Then_correct  (=> (and (_module.NatOutcome.IsFailure |call4formal@res#0@0@@0|) (= (ControlFlow 0 13) 10)) anon8_correct)))
(let ((anon14_Else_correct  (=> (and (< |i#0@1| 8) (= |$decr$loop#00@1| (- 8 |i#0@1|))) (and (=> (= (ControlFlow 0 18) (- 0 25)) (or (not (= (LitInt 4) 0)) (not true))) (=> (or (not (= (LitInt 4) 0)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 24)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#0_0@1| (= (Mod (Div |i#0@1| (LitInt 4)) (LitInt 2)) (LitInt 0))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#0_1@1| (= (Mod (Div |i#0@1| (LitInt 2)) (LitInt 2)) (LitInt 0))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#0_2@1| (= (Mod |i#0@1| (LitInt 2)) (LitInt 0))) (=> (and (and (and ($Is refType |call4formal@res#0@@0| Tclass._module.NatOutcome) ($IsAlloc refType |call4formal@res#0@@0| Tclass._module.NatOutcome $Heap)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is refType |call4formal@res#0@0@@0| Tclass._module.NatOutcome) ($IsAlloc refType |call4formal@res#0@0@@0| Tclass._module.NatOutcome $Heap@1)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |Exceptions1dfy.13:8|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |call4formal@res#0@0@@0| null)) (not true))) (=> (or (not (= |call4formal@res#0@0@@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call4formal@res#0@0@@0|) Tclass._module.NatOutcome? $Heap@1) (=> (and (|_module.NatOutcome.IsFailure#canCall| |call4formal@res#0@0@@0|) (|_module.NatOutcome.IsFailure#canCall| |call4formal@res#0@0@@0|)) (and (=> (= (ControlFlow 0 18) 13) anon15_Then_correct) (=> (= (ControlFlow 0 18) 14) anon15_Else_correct))))))))))))))))))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 26) 3) anon14_Then_correct) (=> (= (ControlFlow 0 26) 18) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_LoopBody_correct  (and (=> (= (ControlFlow 0 27) 2) anon13_Then_correct) (=> (= (ControlFlow 0 27) 26) anon13_Else_correct))))
(let ((anon12_LoopDone_correct true))
(let ((anon12_LoopHead_correct  (=> (<= (LitInt 0) |i#0@1|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (=> |defass#materialized2#0_0@0| (and ($Is refType |materialized2#0_0@0| Tclass._module.VoidOutcome) ($IsAlloc refType |materialized2#0_0@0| Tclass._module.VoidOutcome $Heap@0))) (=> |defass#materialized1#0_0@0| (and ($Is refType |materialized1#0_0@0| Tclass._module.NatOutcome) ($IsAlloc refType |materialized1#0_0@0| Tclass._module.NatOutcome $Heap@0))))) (=> (and (and (and (not false) (and (<= 0 |i#0@1|) (< |i#0@1| 9))) (= |$decr_init$loop#00@0| 8)) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |Exceptions1dfy.43:5|
 :skolemid |510|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0))))
 :qid |Exceptions1dfy.43:5|
 :skolemid |511|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) $f@@0))
)) (<= (- 8 |i#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 28) 1) anon12_LoopDone_correct) (=> (= (ControlFlow 0 28) 27) anon12_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 29) (- 0 30)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |i#0@0| (LitInt 0)) (=> (and (= |$decr_init$loop#00@0| (- 8 |i#0@0|)) (= (ControlFlow 0 29) 28)) anon12_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (<= (LitInt 0) |i#0|) true) (and (=> |defass#materialized1#0_0| (and ($Is refType |materialized1#0_0| Tclass._module.NatOutcome) ($IsAlloc refType |materialized1#0_0| Tclass._module.NatOutcome $Heap))) true)) (and (and (=> |defass#materialized2#0_0| (and ($Is refType |materialized2#0_0| Tclass._module.VoidOutcome) ($IsAlloc refType |materialized2#0_0| Tclass._module.VoidOutcome $Heap))) true) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 31) 29)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
