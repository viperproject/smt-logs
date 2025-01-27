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
(declare-fun SubModule.__default.Eight () (_ BitVec 16))
(declare-fun U_2_bv16 (T@U) (_ BitVec 16))
(declare-fun Lit (T@T T@U) T@U)
(declare-fun bv16Type () T@T)
(declare-fun bv16_2_U ((_ BitVec 16)) T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.reverse ((_ BitVec 16)) (_ BitVec 16))
(declare-fun |_module.__default.reverse#canCall| ((_ BitVec 16)) Bool)
(declare-fun |SubModule.__default.reverse#canCall| ((_ BitVec 16)) Bool)
(declare-fun SubModule.__default.reverse ((_ BitVec 16)) (_ BitVec 16))
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |SubModule.__default.Eight#canCall| () Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
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
))) (= (Ctor bv16Type) 3)) (forall ((arg0@@2 (_ BitVec 16)) ) (! (= (U_2_bv16 (bv16_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv16|
 :pattern ( (bv16_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv16_2_U (U_2_bv16 x@@2)) x@@2)
 :qid |cast:U_2_bv16|
 :pattern ( (U_2_bv16 x@@2))
))))
(assert (= SubModule.__default.Eight (U_2_bv16 (Lit bv16Type (bv16_2_U #x0008)))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|input#0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| (U_2_bv16 (Lit bv16Type |input#0|))) (< 0 $FunctionContextHeight)) (and (|SubModule.__default.reverse#canCall| (U_2_bv16 (Lit bv16Type |input#0|))) (= (_module.__default.reverse (U_2_bv16 (Lit bv16Type |input#0|))) (U_2_bv16 (Lit bv16Type (bv16_2_U (SubModule.__default.reverse (U_2_bv16 (Lit bv16Type |input#0|)))))))))
 :qid |moredafnydfy.17:18|
 :weight 3
 :skolemid |983|
 :pattern ( (_module.__default.reverse (U_2_bv16 (Lit bv16Type |input#0|))))
))))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |508|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |519|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |518|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|input#0@@0| (_ BitVec 16)) ) (!  (and (and |SubModule.__default.Eight#canCall| |SubModule.__default.Eight#canCall|) (= (SubModule.__default.reverse |input#0@@0|) (bvor (bvshl (bvand |input#0@@0| #x00ff) (concat #b00000000000 ((_ extract 4 0) SubModule.__default.Eight))) (bvlshr (bvand |input#0@@0| #xff00) (concat #b00000000000 ((_ extract 4 0) SubModule.__default.Eight))))))
 :qid |moredafnydfy.12:20|
 :skolemid |987|
 :pattern ( (SubModule.__default.reverse |input#0@@0|))
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
))) (= (Ctor BoxType) 6)) (forall ((arg0@@3 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@3 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@4 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@4 arg1@@0)) arg0@@4)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@4 arg1@@0))
))) (forall ((arg0@@5 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@5 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@5 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |990|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|input#0@@1| T@U) ) (!  (and (and |SubModule.__default.Eight#canCall| |SubModule.__default.Eight#canCall|) (= (SubModule.__default.reverse (U_2_bv16 (Lit bv16Type |input#0@@1|))) (bvor (bvshl (bvand (U_2_bv16 |input#0@@1|) #x00ff) (concat #b00000000000 ((_ extract 4 0) SubModule.__default.Eight))) (bvlshr (bvand (U_2_bv16 |input#0@@1|) #xff00) (concat #b00000000000 ((_ extract 4 0) SubModule.__default.Eight))))))
 :qid |moredafnydfy.12:20|
 :weight 3
 :skolemid |988|
 :pattern ( (SubModule.__default.reverse (U_2_bv16 (Lit bv16Type |input#0@@1|))))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|input#0@@2| (_ BitVec 16)) ) (!  (=> (or (|_module.__default.reverse#canCall| |input#0@@2|) (< 0 $FunctionContextHeight)) (and (|SubModule.__default.reverse#canCall| |input#0@@2|) (= (_module.__default.reverse |input#0@@2|) (SubModule.__default.reverse |input#0@@2|))))
 :qid |moredafnydfy.17:18|
 :skolemid |982|
 :pattern ( (_module.__default.reverse |input#0@@2|))
))))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@6)) (Lit BoxType ($Box T@@2 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |509|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@6)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun |input#0@@3| () (_ BitVec 16))
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.reverseDoubleIsIdentity)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (= (_module.__default.reverse (_module.__default.reverse |input#0@@3|)) |input#0@@3|))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
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
