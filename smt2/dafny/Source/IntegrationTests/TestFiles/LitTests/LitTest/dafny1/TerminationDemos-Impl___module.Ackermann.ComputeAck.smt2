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
(declare-fun Tagclass._module.Ackermann? () T@U)
(declare-fun Tagclass._module.Ackermann () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Ackermann () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Ackermann? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Ackermann () T@U)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._module.Ackermann? Tagclass._module.Ackermann tytagFamily$nat tytagFamily$Ackermann)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Ackermann?)  (or (= $o null) (= (dtype $o) Tclass._module.Ackermann?)))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($Is refType $o Tclass._module.Ackermann?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Ackermann $h@@0) ($IsAlloc refType |c#0| Tclass._module.Ackermann? $h@@0))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Ackermann $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Ackermann? $h@@0))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Ackermann? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Ackermann? $h@@1))
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
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Ackermann)  (and ($Is refType |c#0@@0| Tclass._module.Ackermann?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Ackermann))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Ackermann?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |631|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Ackermann?) Tagclass._module.Ackermann?))
(assert (= (TagFamily Tclass._module.Ackermann?) tytagFamily$Ackermann))
(assert (= (Tag Tclass._module.Ackermann) Tagclass._module.Ackermann))
(assert (= (TagFamily Tclass._module.Ackermann) tytagFamily$Ackermann))
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
(declare-fun |n#0| () Int)
(declare-fun |n##1_1_0@0| () Int)
(declare-fun |m#0| () Int)
(declare-fun |call4formal@r#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@r#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |m##1_1_1@0| () Int)
(declare-fun |m##1_0_0@0| () Int)
(declare-fun |n##1_0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun this () T@U)
(declare-fun |r#0| () Int)
(declare-fun |s#1_1_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Ackermann.ComputeAck)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon6_Else_correct  (=> (or (not (= |n#0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 17)) ($Is intType (int_2_U (- |n#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0| 1)) Tclass._System.nat) (=> (= |n##1_1_0@0| (- |n#0| 1)) (and (=> (= (ControlFlow 0 10) (- 0 16)) (or (<= 0 |m#0|) (= |m#0| |m#0|))) (=> (or (<= 0 |m#0|) (= |m#0| |m#0|)) (and (=> (= (ControlFlow 0 10) (- 0 15)) (or (or (<= 0 |n#0|) (< |m#0| |m#0|)) (= |n##1_1_0@0| |n#0|))) (=> (or (or (<= 0 |n#0|) (< |m#0| |m#0|)) (= |n##1_1_0@0| |n#0|)) (and (=> (= (ControlFlow 0 10) (- 0 14)) (or (< |m#0| |m#0|) (and (= |m#0| |m#0|) (< |n##1_1_0@0| |n#0|)))) (=> (or (< |m#0| |m#0|) (and (= |m#0| |m#0|) (< |n##1_1_0@0| |n#0|))) (=> (<= (LitInt 0) |call4formal@r#0|) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (<= (LitInt 0) |call4formal@r#0@0|)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |TerminationDemosdfy.59:10|
 :skolemid |589|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2))
)) ($HeapSucc $Heap $Heap@1))) (and (=> (= (ControlFlow 0 10) (- 0 13)) ($Is intType (int_2_U (- |m#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |m#0| 1)) Tclass._System.nat) (=> (= |m##1_1_1@0| (- |m#0| 1)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (<= 0 |m#0|) (= |m##1_1_1@0| |m#0|))) (=> (or (<= 0 |m#0|) (= |m##1_1_1@0| |m#0|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (or (<= 0 |n#0|) (< |m##1_1_1@0| |m#0|)) (= |call4formal@r#0@0| |n#0|))) (=> (or (or (<= 0 |n#0|) (< |m##1_1_1@0| |m#0|)) (= |call4formal@r#0@0| |n#0|)) (=> (= (ControlFlow 0 10) (- 0 9)) (or (< |m##1_1_1@0| |m#0|) (and (= |m##1_1_1@0| |m#0|) (< |call4formal@r#0@0| |n#0|)))))))))))))))))))))))))
(let ((anon6_Then_correct  (=> (= |n#0| (LitInt 0)) (and (=> (= (ControlFlow 0 4) (- 0 8)) ($Is intType (int_2_U (- |m#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |m#0| 1)) Tclass._System.nat) (=> (= |m##1_0_0@0| (- |m#0| 1)) (and (=> (= (ControlFlow 0 4) (- 0 7)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |n##1_0_0@0| (LitInt 1)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (<= 0 |m#0|) (= |m##1_0_0@0| |m#0|))) (=> (or (<= 0 |m#0|) (= |m##1_0_0@0| |m#0|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (<= 0 |n#0|) (< |m##1_0_0@0| |m#0|)) (= |n##1_0_0@0| |n#0|))) (=> (or (or (<= 0 |n#0|) (< |m##1_0_0@0| |m#0|)) (= |n##1_0_0@0| |n#0|)) (=> (= (ControlFlow 0 4) (- 0 3)) (or (< |m##1_0_0@0| |m#0|) (and (= |m##1_0_0@0| |m#0|) (< |n##1_0_0@0| |n#0|)))))))))))))))))
(let ((anon5_Else_correct  (=> (or (not (= |m#0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 18) 4) anon6_Then_correct) (=> (= (ControlFlow 0 18) 10) anon6_Else_correct)))))
(let ((anon5_Then_correct  (=> (and (= |m#0| (LitInt 0)) (= (ControlFlow 0 2) (- 0 1))) ($Is intType (int_2_U (+ |n#0| 1)) Tclass._System.nat))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 19) 2) anon5_Then_correct) (=> (= (ControlFlow 0 19) 18) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Ackermann) ($IsAlloc refType this Tclass._module.Ackermann $Heap))) (<= (LitInt 0) |m#0|)) (and (<= (LitInt 0) |n#0|) (<= (LitInt 0) |r#0|))) (and (and (<= (LitInt 0) |s#1_1_0|) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 20) 19)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
