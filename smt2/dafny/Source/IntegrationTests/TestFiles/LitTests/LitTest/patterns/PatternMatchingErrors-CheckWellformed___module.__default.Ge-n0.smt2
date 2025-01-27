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
(declare-fun Tagclass._module.Dt () T@U)
(declare-fun |##_module.Dt.Make| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Dt () T@U)
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
(declare-fun _module.Dt.Make_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dt () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.GetNat (T@U) Int)
(declare-fun |_module.__default.GetNat#canCall| (T@U) Bool)
(declare-fun _module.Dt.d (T@U) Int)
(declare-fun |#_module.Dt.Make| (Int) T@U)
(declare-fun Tclass._System.nat () T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.Dt |##_module.Dt.Make| tytagFamily$nat tytagFamily$Dt)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Dt) (_module.Dt.Make_q d))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( (_module.Dt.Make_q d) ($Is DatatypeTypeType d Tclass._module.Dt))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Dt.Make_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Dt.Make|))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_module.Dt.Make_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|dt#0| T@U) ) (!  (=> (or (|_module.__default.GetNat#canCall| (Lit DatatypeTypeType |dt#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |dt#0| Tclass._module.Dt))) (and (_module.Dt.Make_q (Lit DatatypeTypeType |dt#0|)) (= (_module.__default.GetNat (Lit DatatypeTypeType |dt#0|)) (let ((|y#2| (LitInt (_module.Dt.d (Lit DatatypeTypeType |dt#0|)))))
|y#2|))))
 :qid |PatternMatchingErrorsdfy.51:17|
 :weight 3
 :skolemid |610|
 :pattern ( (_module.__default.GetNat (Lit DatatypeTypeType |dt#0|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Dt.Make_q d@@1) (exists ((|a#26#0#0| Int) ) (! (= d@@1 (|#_module.Dt.Make| |a#26#0#0|))
 :qid |PatternMatchingErrorsdfy.49:20|
 :skolemid |745|
)))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( (_module.Dt.Make_q d@@1))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|dt#0@@0| T@U) ) (!  (=> (or (|_module.__default.GetNat#canCall| |dt#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |dt#0@@0| Tclass._module.Dt))) (<= (LitInt 0) (_module.__default.GetNat |dt#0@@0|)))
 :qid |PatternMatchingErrorsdfy.51:17|
 :skolemid |607|
 :pattern ( (_module.__default.GetNat |dt#0@@0|))
))))
(assert (forall ((|a#25#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Dt.Make| |a#25#0#0|)) |##_module.Dt.Make|)
 :qid |PatternMatchingErrorsdfy.49:20|
 :skolemid |743|
 :pattern ( (|#_module.Dt.Make| |a#25#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (_module.Dt.d (|#_module.Dt.Make| |a#29#0#0|)) |a#29#0#0|)
 :qid |PatternMatchingErrorsdfy.49:20|
 :skolemid |750|
 :pattern ( (|#_module.Dt.Make| |a#29#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#27#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.Make| |a#27#0#0|) Tclass._module.Dt) ($Is intType (int_2_U |a#27#0#0|) TInt))
 :qid |PatternMatchingErrorsdfy.49:20|
 :skolemid |747|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.Make| |a#27#0#0|) Tclass._module.Dt))
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
 :skolemid |786|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Dt) Tagclass._module.Dt))
(assert (= (TagFamily Tclass._module.Dt) tytagFamily$Dt))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#28#0#0| Int) ) (! (= (|#_module.Dt.Make| (LitInt |a#28#0#0|)) (Lit DatatypeTypeType (|#_module.Dt.Make| |a#28#0#0|)))
 :qid |PatternMatchingErrorsdfy.49:20|
 :skolemid |749|
 :pattern ( (|#_module.Dt.Make| (LitInt |a#28#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|dt#0@@1| T@U) ) (!  (=> (or (|_module.__default.GetNat#canCall| |dt#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |dt#0@@1| Tclass._module.Dt))) (and (_module.Dt.Make_q |dt#0@@1|) (= (_module.__default.GetNat |dt#0@@1|) (let ((|y#0| (_module.Dt.d |dt#0@@1|)))
|y#0|))))
 :qid |PatternMatchingErrorsdfy.51:17|
 :skolemid |609|
 :pattern ( (_module.__default.GetNat |dt#0@@1|))
))))
(assert (forall ((v T@U) ) (! ($Is intType v TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |dt#0@@2| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |let#0#0#0| () Int)
(declare-fun |y#Z#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.GetNat)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (= |dt#0@@2| (|#_module.Dt.Make| |_mcc#0#0|)) (=> (and (and (= |let#0#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#0#0#0|) TInt)) (and (= |y#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 3) (- 0 2)))) ($Is intType (int_2_U |y#Z#0@0|) Tclass._System.nat)))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 5) 1) anon7_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |dt#0@@2| Tclass._module.Dt)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
