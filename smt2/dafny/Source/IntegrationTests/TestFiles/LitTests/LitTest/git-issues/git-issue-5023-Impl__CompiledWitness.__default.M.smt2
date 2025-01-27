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
(declare-fun Tagclass.CompiledWitness.ContainsFive () T@U)
(declare-fun Tagclass.CompiledWitness.Five () T@U)
(declare-fun Tagclass.CompiledWitness.ContainsFive? () T@U)
(declare-fun tytagFamily$ContainsFive () T@U)
(declare-fun tytagFamily$Five () T@U)
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
(declare-fun Tclass.CompiledWitness.Five () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.CompiledWitness.ContainsFive? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.CompiledWitness.ContainsFive () T@U)
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
(declare-fun Div (Int Int) Int)
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
(assert (distinct alloc Tagclass.CompiledWitness.ContainsFive Tagclass.CompiledWitness.Five Tagclass.CompiledWitness.ContainsFive? tytagFamily$ContainsFive tytagFamily$Five)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.CompiledWitness.Five $h)
 :qid |unknown.0:0|
 :skolemid |983|
 :pattern ( ($IsAlloc intType |x#0| Tclass.CompiledWitness.Five $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.CompiledWitness.ContainsFive?)  (or (= $o null) (= (dtype $o) Tclass.CompiledWitness.ContainsFive?)))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($Is refType $o Tclass.CompiledWitness.ContainsFive?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.CompiledWitness.ContainsFive $h@@0) ($IsAlloc refType |c#0| Tclass.CompiledWitness.ContainsFive? $h@@0))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType |c#0| Tclass.CompiledWitness.ContainsFive $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.CompiledWitness.ContainsFive? $h@@0))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.CompiledWitness.ContainsFive? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.CompiledWitness.ContainsFive? $h@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |615|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |616|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |514|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |512|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |523|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.CompiledWitness.Five) (= (U_2_int |x#0@@0|) (LitInt 5)))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( ($Is intType |x#0@@0| Tclass.CompiledWitness.Five))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |607|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.CompiledWitness.ContainsFive)  (and ($Is refType |c#0@@0| Tclass.CompiledWitness.ContainsFive?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType |c#0@@0| Tclass.CompiledWitness.ContainsFive))
 :pattern ( ($Is refType |c#0@@0| Tclass.CompiledWitness.ContainsFive?))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |836|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |614|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |522|
 :pattern ( ($Box T@@2 x@@6))
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
 :skolemid |2983|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (= (Tag Tclass.CompiledWitness.ContainsFive) Tagclass.CompiledWitness.ContainsFive))
(assert (= (TagFamily Tclass.CompiledWitness.ContainsFive) tytagFamily$ContainsFive))
(assert (= (Tag Tclass.CompiledWitness.Five) Tagclass.CompiledWitness.Five))
(assert (= (TagFamily Tclass.CompiledWitness.Five) tytagFamily$Five))
(assert (= (Tag Tclass.CompiledWitness.ContainsFive?) Tagclass.CompiledWitness.ContainsFive?))
(assert (= (TagFamily Tclass.CompiledWitness.ContainsFive?) tytagFamily$ContainsFive))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |515|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |513|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |f#Z#1_0@0| () Int)
(declare-fun |let#1_0#0#0| () Int)
(declare-fun |five#0@0| () Int)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |five#0| () Int)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$CompiledWitness.__default.M)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon5_correct true))
(let ((anon10_Else_correct  (=> (or (not (= |f#Z#1_0@0| (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= (LitInt 0) 0)) (not true))) (=> (or (not (= (LitInt 0) 0)) (not true)) (=> (= (ControlFlow 0 9) 7) anon5_correct))))))
(let ((anon10_Then_correct  (=> (and (= |f#Z#1_0@0| (LitInt 5)) (= (ControlFlow 0 8) 7)) anon5_correct)))
(let ((anon9_Then_correct  (=> (= |let#1_0#0#0| |five#0@0|) (=> (and ($Is intType (int_2_U |let#1_0#0#0|) Tclass.CompiledWitness.Five) (= |f#Z#1_0@0| |let#1_0#0#0|)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= |f#Z#1_0@0| (LitInt 5))) (=> (= |f#Z#1_0@0| (LitInt 5)) (and (=> (= (ControlFlow 0 11) 8) anon10_Then_correct) (=> (= (ControlFlow 0 11) 9) anon10_Else_correct))))))))
(let ((anon11_Else_correct  (=> (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 6) (- 0 5))) false)))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (= (ControlFlow 0 3) (- 0 2)) (or (not (= call1formal@this@0 null)) (not true))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |five#0@0| (LitInt 5))) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.CompiledWitness.ContainsFive) ($IsAlloc refType call1formal@this Tclass.CompiledWitness.ContainsFive $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.CompiledWitness.ContainsFive) ($IsAlloc refType call1formal@this@0 Tclass.CompiledWitness.ContainsFive $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |gitissue5023dfy.39:5|
 :skolemid |990|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (and (and (=> (= (ControlFlow 0 13) 1) anon8_Then_correct) (=> (= (ControlFlow 0 13) 11) anon9_Then_correct)) (=> (= (ControlFlow 0 13) 3) anon11_Then_correct)) (=> (= (ControlFlow 0 13) 6) anon11_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= |five#0| (LitInt 5)) true)) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass.CompiledWitness.ContainsFive) ($IsAlloc refType |c#0@@1| Tclass.CompiledWitness.ContainsFive $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 14) 13)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
