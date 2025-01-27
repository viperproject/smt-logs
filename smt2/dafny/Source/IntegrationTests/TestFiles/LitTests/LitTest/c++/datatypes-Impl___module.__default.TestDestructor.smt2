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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Example1 () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun |##_module.Example1.Example1| () T@U)
(declare-fun tytagFamily$Example1 () T@U)
(declare-fun tytagFamily$uint32 () T@U)
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
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun _module.Example1.Example1_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Example1 () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Example1.Example1| (Int Bool) T@U)
(declare-fun _module.Example1.b (T@U) Bool)
(declare-fun _module.Example1.u (T@U) Int)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Example1 Tagclass._module.uint32 |##_module.Example1.Example1| tytagFamily$Example1 tytagFamily$uint32)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Example1) (_module.Example1.Example1_q d))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (_module.Example1.Example1_q d) ($Is DatatypeTypeType d Tclass._module.Example1))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Example1.Example1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Example1.Example1|))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (_module.Example1.Example1_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.Example1.Example1| |a#11#0#0| |a#11#1#0|) Tclass._module.Example1)  (and ($Is intType (int_2_U |a#11#0#0|) Tclass._module.uint32) ($Is boolType (bool_2_U |a#11#1#0|) TBool)))
 :qid |datatypesdfy.9:30|
 :skolemid |570|
 :pattern ( ($Is DatatypeTypeType (|#_module.Example1.Example1| |a#11#0#0| |a#11#1#0|) Tclass._module.Example1))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Example1.Example1_q d@@1) (exists ((|a#10#0#0| Int) (|a#10#1#0| Bool) ) (! (= d@@1 (|#_module.Example1.Example1| |a#10#0#0| |a#10#1#0|))
 :qid |datatypesdfy.9:30|
 :skolemid |568|
)))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (_module.Example1.Example1_q d@@1))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Bool) ) (! (= (_module.Example1.b (|#_module.Example1.Example1| |a#14#0#0| |a#14#1#0|)) |a#14#1#0|)
 :qid |datatypesdfy.9:30|
 :skolemid |575|
 :pattern ( (|#_module.Example1.Example1| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| Bool) ) (! (= (DatatypeCtorId (|#_module.Example1.Example1| |a#9#0#0| |a#9#1#0|)) |##_module.Example1.Example1|)
 :qid |datatypesdfy.9:30|
 :skolemid |566|
 :pattern ( (|#_module.Example1.Example1| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| Bool) ) (! (= (_module.Example1.u (|#_module.Example1.Example1| |a#13#0#0| |a#13#1#0|)) |a#13#0#0|)
 :qid |datatypesdfy.9:30|
 :skolemid |574|
 :pattern ( (|#_module.Example1.Example1| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |874|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@2 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Example1.Example1_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.Example1 $h@@0))) ($IsAlloc boolType (bool_2_U (_module.Example1.b d@@2)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Example1.b d@@2)) TBool $h@@0))
)))
(assert (forall ((d@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@3 Tclass._module.Example1)) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Example1 $h@@1))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Example1 $h@@1))
)))
(assert (= (Tag Tclass._module.Example1) Tagclass._module.Example1))
(assert (= (TagFamily Tclass._module.Example1) tytagFamily$Example1))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (forall ((d@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Example1.Example1_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Example1 $h@@2))) ($IsAlloc intType (int_2_U (_module.Example1.u d@@4)) Tclass._module.uint32 $h@@2))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Example1.u d@@4)) Tclass._module.uint32 $h@@2))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) ) (! (= (|#_module.Example1.Example1| (LitInt |a#12#0#0|) (U_2_bool (Lit boolType |a#12#1#0|))) (Lit DatatypeTypeType (|#_module.Example1.Example1| |a#12#0#0| (U_2_bool |a#12#1#0|))))
 :qid |datatypesdfy.9:30|
 :skolemid |573|
 :pattern ( (|#_module.Example1.Example1| (LitInt |a#12#0#0|) (U_2_bool (Lit boolType |a#12#1#0|))))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |e1#0@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |e1#0| () T@U)
(declare-fun |x#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestDestructor)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_Else_correct  (=> (and (or (not (= |x#0@0| (LitInt 22))) (not true)) (= (ControlFlow 0 3) (- 0 2))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 22))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |e1#0@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 22) (U_2_bool (Lit boolType (bool_2_U false)))))) (=> (and (and (_module.Example1.Example1_q |e1#0@0|) (_module.Example1.Example1_q |e1#0@0|)) (and (= |x#0@0| (_module.Example1.u |e1#0@0|)) (= |newtype$check#1@0| (LitInt 22)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |e1#0| Tclass._module.Example1) ($IsAlloc DatatypeTypeType |e1#0| Tclass._module.Example1 $Heap)) true) (=> (and (and (and (<= (LitInt 0) |x#0|) (< |x#0| 4294967296)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 4))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
