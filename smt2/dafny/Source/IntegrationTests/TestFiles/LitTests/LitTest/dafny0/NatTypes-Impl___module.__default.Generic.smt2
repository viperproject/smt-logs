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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |691|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i##0_0_0@0| () Int)
(declare-fun |i#0| () Int)
(declare-fun |t1##0_0_0@0| () Int)
(declare-fun |call5formal@r#0| () T@U)
(declare-fun call0formal@_module._default.Generic$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun |call2formal@t0#0@0| () T@U)
(declare-fun |n#0_0@0| () Int)
(declare-fun |call3formal@t1#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call5formal@r#0@0| () T@U)
(declare-fun null () T@U)
(declare-fun |$rhs##0_0_0@0| () Int)
(declare-fun |i##0_1_0@0| () Int)
(declare-fun |t1##0_1_0@0| () Int)
(declare-fun |call5formal@r#0@@0| () T@U)
(declare-fun call0formal@_module._default.Generic$T@@0 () T@U)
(declare-fun |call2formal@t0#0@0@@0| () T@U)
(declare-fun |call3formal@t1#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call5formal@r#0@0@@0| () T@U)
(declare-fun |$rhs##0_1_0@0| () Int)
(declare-fun |i##0_2_0@0| () Int)
(declare-fun |t1##0_2_0@0| () Int)
(declare-fun |call5formal@r#0@@1| () T@U)
(declare-fun call0formal@_module._default.Generic$T@@1 () T@U)
(declare-fun call0formal@_module._default.Generic$T@0 () T@U)
(declare-fun |call2formal@t0#0@0@@1| () T@U)
(declare-fun |call3formal@t1#0@0@@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call5formal@r#0@0@@1| () T@U)
(declare-fun |$rhs##0_2_0@0| () Int)
(declare-fun |i##0_3_0@0| () Int)
(declare-fun |t1##0_3_0@0| () Int)
(declare-fun |call5formal@r#0@@2| () T@U)
(declare-fun call0formal@_module._default.Generic$T@@2 () T@U)
(declare-fun call0formal@_module._default.Generic$T@0@@0 () T@U)
(declare-fun |call2formal@t0#0@0@@2| () T@U)
(declare-fun |call3formal@t1#0@0@@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call5formal@r#0@0@@2| () T@U)
(declare-fun |$rhs##0_3_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |t0#0| () T@U)
(declare-fun _module._default.Generic$T () T@U)
(declare-fun |t1#0| () T@U)
(declare-fun |defass#r#0| () Bool)
(declare-fun |r#0| () T@U)
(declare-fun |n#0_0| () Int)
(declare-fun |j#0_2_0| () Int)
(declare-fun |j#0_3_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Generic)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon14_Else_correct  (=> (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 5) (- 0 4))) false)))
(let ((anon9_correct  (=> (= (ControlFlow 0 2) (- 0 1)) true)))
(let ((anon7_correct  (=> (= (ControlFlow 0 6) 2) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (= |i##0_0_0@0| (- |i#0| 1)) (= |t1##0_0_0@0| (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (or (<= 0 |i#0|) (= |i##0_0_0@0| |i#0|))) (=> (or (<= 0 |i#0|) (= |i##0_0_0@0| |i#0|)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (< |i##0_0_0@0| |i#0|)) (=> (< |i##0_0_0@0| |i#0|) (=> (and ($IsBox |call5formal@r#0| call0formal@_module._default.Generic$T) ($IsAllocBox |call5formal@r#0| call0formal@_module._default.Generic$T $Heap)) (=> (and (and (= |call2formal@t0#0@0| ($Box intType (int_2_U |n#0_0@0|))) (= |call3formal@t1#0@0| ($Box intType (int_2_U |t1##0_0_0@0|)))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (=> (and (and (and ($IsBox |call5formal@r#0@0| TInt) ($IsAllocBox |call5formal@r#0@0| TInt $Heap@3)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |NatTypesdfy.39:8|
 :skolemid |537|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@0))
))) (and ($HeapSucc $Heap $Heap@3) (= |$rhs##0_0_0@0| (U_2_int ($Unbox intType |call5formal@r#0@0|))))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= (LitInt 0) |$rhs##0_0_0@0|)) (=> (<= (LitInt 0) |$rhs##0_0_0@0|) (=> (= (ControlFlow 0 21) 6) anon7_correct)))))))))))))
(let ((anon13_Then_correct  (=> (and (= |i##0_1_0@0| (- |i#0| 1)) (= |t1##0_1_0@0| (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (or (<= 0 |i#0|) (= |i##0_1_0@0| |i#0|))) (=> (or (<= 0 |i#0|) (= |i##0_1_0@0| |i#0|)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< |i##0_1_0@0| |i#0|)) (=> (< |i##0_1_0@0| |i#0|) (=> (and ($IsBox |call5formal@r#0@@0| call0formal@_module._default.Generic$T@@0) ($IsAllocBox |call5formal@r#0@@0| call0formal@_module._default.Generic$T@@0 $Heap)) (=> (and (and (= |call2formal@t0#0@0@@0| ($Box intType (int_2_U |n#0_0@0|))) (= |call3formal@t1#0@0@@0| ($Box intType (int_2_U |t1##0_1_0@0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (=> (and (and (and ($IsBox |call5formal@r#0@0@@0| TInt) ($IsAllocBox |call5formal@r#0@0@@0| TInt $Heap@2)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1)))
 :qid |NatTypesdfy.39:8|
 :skolemid |537|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@1))
))) (and ($HeapSucc $Heap $Heap@2) (= |$rhs##0_1_0@0| (U_2_int ($Unbox intType |call5formal@r#0@0@@0|))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= (LitInt 0) |$rhs##0_1_0@0|)) (=> (<= (LitInt 0) |$rhs##0_1_0@0|) (=> (= (ControlFlow 0 17) 6) anon7_correct)))))))))))))
(let ((anon12_Then_correct  (=> (= |i##0_2_0@0| (- |i#0| 1)) (and (=> (= (ControlFlow 0 12) (- 0 16)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= |t1##0_2_0@0| (LitInt 4)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (<= 0 |i#0|) (= |i##0_2_0@0| |i#0|))) (=> (or (<= 0 |i#0|) (= |i##0_2_0@0| |i#0|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (< |i##0_2_0@0| |i#0|)) (=> (< |i##0_2_0@0| |i#0|) (=> (and (and (and (and ($IsBox |call5formal@r#0@@1| call0formal@_module._default.Generic$T@@1) ($IsAllocBox |call5formal@r#0@@1| call0formal@_module._default.Generic$T@@1 $Heap)) (= call0formal@_module._default.Generic$T@0 Tclass._System.nat)) (and (and (= |call2formal@t0#0@0@@1| ($Box intType (int_2_U |n#0_0@0|))) (= |call3formal@t1#0@0@@1| ($Box intType (int_2_U |t1##0_2_0@0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and ($IsBox |call5formal@r#0@0@@1| call0formal@_module._default.Generic$T@0) ($IsAllocBox |call5formal@r#0@0@@1| call0formal@_module._default.Generic$T@0 $Heap@1)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |NatTypesdfy.39:8|
 :skolemid |537|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2))
))) (and ($HeapSucc $Heap $Heap@1) (= |$rhs##0_2_0@0| (U_2_int ($Unbox intType |call5formal@r#0@0@@1|)))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= (LitInt 0) |$rhs##0_2_0@0|)) (=> (<= (LitInt 0) |$rhs##0_2_0@0|) (=> (= (ControlFlow 0 12) 6) anon7_correct))))))))))))))
(let ((anon11_Then_correct  (=> (= |i##0_3_0@0| (- |i#0| 1)) (and (=> (= (ControlFlow 0 7) (- 0 11)) ($Is intType (int_2_U (LitInt (- 0 4))) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt (- 0 4))) Tclass._System.nat) (=> (= |t1##0_3_0@0| (LitInt (- 0 4))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (<= 0 |i#0|) (= |i##0_3_0@0| |i#0|))) (=> (or (<= 0 |i#0|) (= |i##0_3_0@0| |i#0|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (< |i##0_3_0@0| |i#0|)) (=> (< |i##0_3_0@0| |i#0|) (=> (and (and (and (and ($IsBox |call5formal@r#0@@2| call0formal@_module._default.Generic$T@@2) ($IsAllocBox |call5formal@r#0@@2| call0formal@_module._default.Generic$T@@2 $Heap)) (= call0formal@_module._default.Generic$T@0@@0 Tclass._System.nat)) (and (and (= |call2formal@t0#0@0@@2| ($Box intType (int_2_U |n#0_0@0|))) (= |call3formal@t1#0@0@@2| ($Box intType (int_2_U |t1##0_3_0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and ($IsBox |call5formal@r#0@0@@2| call0formal@_module._default.Generic$T@0@@0) ($IsAllocBox |call5formal@r#0@0@@2| call0formal@_module._default.Generic$T@0@@0 $Heap@0)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3)))
 :qid |NatTypesdfy.39:8|
 :skolemid |537|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3))
))) (and ($HeapSucc $Heap $Heap@0) (= |$rhs##0_3_0@0| (U_2_int ($Unbox intType |call5formal@r#0@0@@2|)))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (LitInt 0) |$rhs##0_3_0@0|)) (=> (<= (LitInt 0) |$rhs##0_3_0@0|) (=> (= (ControlFlow 0 7) 6) anon7_correct))))))))))))))
(let ((anon10_Then_correct  (=> (< 0 |i#0|) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (= |n#0_0@0| (LitInt 5)) (and (and (and (and (=> (= (ControlFlow 0 25) 7) anon11_Then_correct) (=> (= (ControlFlow 0 25) 12) anon12_Then_correct)) (=> (= (ControlFlow 0 25) 17) anon13_Then_correct)) (=> (= (ControlFlow 0 25) 21) anon14_Then_correct)) (=> (= (ControlFlow 0 25) 5) anon14_Else_correct))))))))
(let ((anon10_Else_correct  (=> (and (<= |i#0| 0) (= (ControlFlow 0 3) 2)) anon9_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 27) 25) anon10_Then_correct) (=> (= (ControlFlow 0 27) 3) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($IsBox |t0#0| _module._default.Generic$T) ($IsAllocBox |t0#0| _module._default.Generic$T $Heap))) (and (and ($IsBox |t1#0| _module._default.Generic$T) ($IsAllocBox |t1#0| _module._default.Generic$T $Heap)) (=> |defass#r#0| (and ($IsBox |r#0| _module._default.Generic$T) ($IsAllocBox |r#0| _module._default.Generic$T $Heap))))) (and (and (and (<= (LitInt 0) |n#0_0|) true) (and (<= (LitInt 0) |j#0_2_0|) true)) (and (and (<= (LitInt 0) |j#0_3_0|) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 28) 27))))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 18))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 21) (- 22))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
