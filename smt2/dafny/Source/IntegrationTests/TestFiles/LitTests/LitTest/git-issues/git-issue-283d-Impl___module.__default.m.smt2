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
(declare-fun Tagclass._module.Foo () T@U)
(declare-fun |##_module.Foo.R| () T@U)
(declare-fun tytagFamily$Foo () T@U)
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
(declare-fun |$IsA#_module.Foo| (T@U) Bool)
(declare-fun _module.Foo.R_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Foo () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Foo.R| (Int) T@U)
(declare-fun _module.Foo.v (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Foo |##_module.Foo.R| tytagFamily$Foo)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Foo| d) (_module.Foo.R_q d))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (|$IsA#_module.Foo| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Foo) (_module.Foo.R_q d@@0))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (_module.Foo.R_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Foo))
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
(assert (forall ((d@@1 T@U) ) (! (= (_module.Foo.R_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Foo.R|))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.Foo.R_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Foo.R_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#_module.Foo.R| |a#1#0#0|))
 :qid |gitissue283ddfy.3:18|
 :skolemid |502|
)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Foo.R_q d@@2))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Foo.R| |a#0#0#0|)) |##_module.Foo.R|)
 :qid |gitissue283ddfy.3:18|
 :skolemid |500|
 :pattern ( (|#_module.Foo.R| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.Foo.v (|#_module.Foo.R| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue283ddfy.3:18|
 :skolemid |507|
 :pattern ( (|#_module.Foo.R| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Foo.R| |a#2#0#0|) Tclass._module.Foo) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue283ddfy.3:18|
 :skolemid |504|
 :pattern ( ($Is DatatypeTypeType (|#_module.Foo.R| |a#2#0#0|) Tclass._module.Foo))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |527|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Foo.R_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Foo $h))) ($IsAlloc intType (int_2_U (_module.Foo.v d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Foo.v d@@3)) TInt $h))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass._module.Foo)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Foo $h@@0))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Foo $h@@0))
)))
(assert (= (Tag Tclass._module.Foo) Tagclass._module.Foo))
(assert (= (TagFamily Tclass._module.Foo) tytagFamily$Foo))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.Foo.R| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Foo.R| |a#3#0#0|)))
 :qid |gitissue283ddfy.3:18|
 :skolemid |506|
 :pattern ( (|#_module.Foo.R| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |f#0| () T@U)
(declare-fun |x#0@5| () Int)
(declare-fun |x#0@4| () Int)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |let#0_1_1_0#0#0| () Int)
(declare-fun |y#0_1_1_0@0| () Int)
(declare-fun |x#0@3| () Int)
(declare-fun |x#0@2| () Int)
(declare-fun |x#0@1| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.m)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon16_correct  (=> (and (and (and (_module.Foo.R_q |f#0|) (=> (or (not (= (_module.Foo.v |f#0|) 0)) (not true)) (and (_module.Foo.R_q |f#0|) (=> (or (not (= (_module.Foo.v |f#0|) 1)) (not true)) (_module.Foo.R_q |f#0|))))) (= (ControlFlow 0 3) (- 0 2))) (and (or (not (= (_module.Foo.v |f#0|) 0)) (not true)) (or (not (= (_module.Foo.v |f#0|) 1)) (not true)))) (= |x#0@5| (- 0 (_module.Foo.v |f#0|))))))
(let ((anon23_Else_correct  (=> (and (not (and (or (not (= (_module.Foo.v |f#0|) 0)) (not true)) (or (not (= (_module.Foo.v |f#0|) 1)) (not true)))) (= (ControlFlow 0 5) 3)) anon16_correct)))
(let ((anon23_Then_correct  (=> (and (and (or (not (= (_module.Foo.v |f#0|) 0)) (not true)) (or (not (= (_module.Foo.v |f#0|) 1)) (not true))) (and (_module.Foo.R_q |f#0|) (= (ControlFlow 0 4) 3))) anon16_correct)))
(let ((anon22_Else_correct  (=> (= (_module.Foo.v |f#0|) 0) (and (=> (= (ControlFlow 0 7) 4) anon23_Then_correct) (=> (= (ControlFlow 0 7) 5) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (or (not (= (_module.Foo.v |f#0|) 0)) (not true)) (_module.Foo.R_q |f#0|)) (and (=> (= (ControlFlow 0 6) 4) anon23_Then_correct) (=> (= (ControlFlow 0 6) 5) anon23_Else_correct)))))
(let ((anon12_correct  (=> (_module.Foo.R_q |f#0|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (= (_module.Foo.v |f#0|) (LitInt 1)) (= |x#0@5| (LitInt 2)))) (=> (and (=> (= (_module.Foo.v |f#0|) (LitInt 1)) (= |x#0@5| (LitInt 2))) (_module.Foo.R_q |f#0|)) (and (=> (= (ControlFlow 0 8) 6) anon22_Then_correct) (=> (= (ControlFlow 0 8) 7) anon22_Else_correct)))))))
(let ((anon21_Else_correct  (=> (and (or (not (= (_module.Foo.v |f#0|) (LitInt 1))) (not true)) (= (ControlFlow 0 11) 8)) anon12_correct)))
(let ((anon21_Then_correct  (=> (and (= (_module.Foo.v |f#0|) (LitInt 1)) (= (ControlFlow 0 10) 8)) anon12_correct)))
(let ((anon10_correct  (=> (_module.Foo.R_q |f#0|) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (= (_module.Foo.v |f#0|) (LitInt 0)) (= |x#0@5| (LitInt 1)))) (=> (and (=> (= (_module.Foo.v |f#0|) (LitInt 0)) (= |x#0@5| (LitInt 1))) (_module.Foo.R_q |f#0|)) (and (=> (= (ControlFlow 0 12) 10) anon21_Then_correct) (=> (= (ControlFlow 0 12) 11) anon21_Else_correct)))))))
(let ((anon20_Else_correct  (=> (and (or (not (= (_module.Foo.v |f#0|) (LitInt 0))) (not true)) (= (ControlFlow 0 15) 12)) anon10_correct)))
(let ((anon20_Then_correct  (=> (and (= (_module.Foo.v |f#0|) (LitInt 0)) (= (ControlFlow 0 14) 12)) anon10_correct)))
(let ((anon8_correct  (=> (_module.Foo.R_q |f#0|) (and (=> (= (ControlFlow 0 16) 14) anon20_Then_correct) (=> (= (ControlFlow 0 16) 15) anon20_Else_correct)))))
(let ((anon6_correct  (=> (and (= |x#0@5| |x#0@4|) (= (ControlFlow 0 18) 16)) anon8_correct)))
(let ((anon19_Else_correct  (=> (or (not (= |_mcc#0#0_0@0| (LitInt 1))) (not true)) (=> (and (= |let#0_1_1_0#0#0| |_mcc#0#0_0@0|) ($Is intType (int_2_U |let#0_1_1_0#0#0|) TInt)) (=> (and (and (= |y#0_1_1_0@0| |let#0_1_1_0#0#0|) (= |x#0@3| (- 0 |y#0_1_1_0@0|))) (and (= |x#0@4| |x#0@3|) (= (ControlFlow 0 20) 18))) anon6_correct)))))
(let ((anon19_Then_correct  (=> (and (and (= |_mcc#0#0_0@0| (LitInt 1)) (= |x#0@2| (LitInt 2))) (and (= |x#0@4| |x#0@2|) (= (ControlFlow 0 19) 18))) anon6_correct)))
(let ((anon18_Else_correct  (=> (or (not (= |_mcc#0#0_0@0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 21) 19) anon19_Then_correct) (=> (= (ControlFlow 0 21) 20) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (and (= |_mcc#0#0_0@0| (LitInt 0)) (= |x#0@1| (LitInt 1))) (and (= |x#0@5| |x#0@1|) (= (ControlFlow 0 17) 16))) anon8_correct)))
(let ((anon17_Then_correct  (=> (= |f#0| (|#_module.Foo.R| |_mcc#0#0_0@0|)) (and (=> (= (ControlFlow 0 22) 17) anon18_Then_correct) (=> (= (ControlFlow 0 22) 21) anon18_Else_correct)))))
(let ((anon17_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 23) 22) anon17_Then_correct) (=> (= (ControlFlow 0 23) 1) anon17_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |f#0| Tclass._module.Foo) ($IsAlloc DatatypeTypeType |f#0| Tclass._module.Foo $Heap)) (|$IsA#_module.Foo| |f#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 24) 23))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
