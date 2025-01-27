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
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._module.D () T@U)
(declare-fun |##_module.D.D| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun _module.D.D_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.D () T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.Foo#canCall| () Bool)
(declare-fun _module.__default.Foo () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.D.D| (Int) T@U)
(declare-fun _module.D.x (T@U) Int)
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
(assert (distinct TInt TagInt alloc |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._module.D |##_module.D.D| |tytagFamily$_tuple#0| tytagFamily$D)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.D) (_module.D.D_q d))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_module.D.D_q d) ($Is DatatypeTypeType d Tclass._module.D))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.Foo#canCall| (< 1 $FunctionContextHeight)) (and (U_2_bool (Lit boolType (bool_2_U true))) ($Is DatatypeTypeType _module.__default.Foo Tclass._System.Tuple0)))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.D.D_q d@@0) (= (DatatypeCtorId d@@0) |##_module.D.D|))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (_module.D.D_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.D.D_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#_module.D.D| |a#1#0#0|))
 :qid |gitissue2920dfy.4:16|
 :skolemid |482|
)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_module.D.D_q d@@1))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.D.D| |a#0#0#0|)) |##_module.D.D|)
 :qid |gitissue2920dfy.4:16|
 :skolemid |480|
 :pattern ( (|#_module.D.D| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.D.x (|#_module.D.D| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue2920dfy.4:16|
 :skolemid |487|
 :pattern ( (|#_module.D.D| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.D.D| |a#2#0#0|) Tclass._module.D) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue2920dfy.4:16|
 :skolemid |484|
 :pattern ( ($Is DatatypeTypeType (|#_module.D.D| |a#2#0#0|) Tclass._module.D))
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
 :skolemid |493|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.Foo#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.Foo (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.Foo#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.Foo (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.D.D| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.D.D| |a#3#0#0|)))
 :qid |gitissue2920dfy.4:16|
 :skolemid |486|
 :pattern ( (|#_module.D.D| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((v T@U) ) (! ($Is intType v TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |x#0_0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Foo)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (= |let#0_0#0#0| (Lit DatatypeTypeType (|#_module.D.D| (LitInt 0)))) (=> (and (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.D) (_module.D.D_q |let#0_0#0#0|)) (and (= (|#_module.D.D| |x#0_0@0|) |let#0_0#0#0|) (= (ControlFlow 0 5) (- 0 4)))) (U_2_bool (Lit boolType (bool_2_U true)))))))
(let ((anon7_Then_correct  (=> ($Is DatatypeTypeType _module.__default.Foo Tclass._System.Tuple0) (and (=> (= (ControlFlow 0 7) 5) anon8_Then_correct) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))
(let ((anon7_Else_correct  (=> (= _module.__default.Foo (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)) (=> (and ($Is DatatypeTypeType _module.__default.Foo Tclass._System.Tuple0) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 7) anon7_Then_correct) (=> (= (ControlFlow 0 8) 3) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
