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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun intType () T@T)
(declare-fun TBitvector (Int) T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bv5Type () T@T)
(declare-fun bv5_2_U ((_ BitVec 5)) T@U)
(declare-fun U_2_bv5 (T@U) (_ BitVec 5))
(declare-fun bv6Type () T@T)
(declare-fun bv6_2_U ((_ BitVec 6)) T@U)
(declare-fun U_2_bv6 (T@U) (_ BitVec 6))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun bv16Type () T@T)
(declare-fun bv16_2_U ((_ BitVec 16)) T@U)
(declare-fun U_2_bv16 (T@U) (_ BitVec 16))
(declare-fun bv32Type () T@T)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv64Type () T@T)
(declare-fun bv64_2_U ((_ BitVec 64)) T@U)
(declare-fun U_2_bv64 (T@U) (_ BitVec 64))
(declare-fun bv128Type () T@T)
(declare-fun bv128_2_U ((_ BitVec 128)) T@U)
(declare-fun U_2_bv128 (T@U) (_ BitVec 128))
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.Ones () (_ BitVec 128))
(declare-fun Inv0_TBitvector (T@U) Int)
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
(declare-fun $FunctionContextHeight () Int)
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
(assert (forall ((v T@U) ) (! ($Is intType v (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v (TBitvector 0)))
)))
(assert  (and (and (= (Ctor bv5Type) 3) (forall ((arg0@@2 (_ BitVec 5)) ) (! (= (U_2_bv5 (bv5_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv5|
 :pattern ( (bv5_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv5_2_U (U_2_bv5 x@@2)) x@@2)
 :qid |cast:U_2_bv5|
 :pattern ( (U_2_bv5 x@@2))
))))
(assert (forall ((v@@0 T@U) ) (! ($Is bv5Type v@@0 (TBitvector 5))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( ($Is bv5Type v@@0 (TBitvector 5)))
)))
(assert  (and (and (= (Ctor bv6Type) 4) (forall ((arg0@@3 (_ BitVec 6)) ) (! (= (U_2_bv6 (bv6_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv6|
 :pattern ( (bv6_2_U arg0@@3))
))) (forall ((x@@3 T@U) ) (! (= (bv6_2_U (U_2_bv6 x@@3)) x@@3)
 :qid |cast:U_2_bv6|
 :pattern ( (U_2_bv6 x@@3))
))))
(assert (forall ((v@@1 T@U) ) (! ($Is bv6Type v@@1 (TBitvector 6))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is bv6Type v@@1 (TBitvector 6)))
)))
(assert  (and (and (= (Ctor bv7Type) 5) (forall ((arg0@@4 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@4))
))) (forall ((x@@4 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@4)) x@@4)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@4))
))))
(assert (forall ((v@@2 T@U) ) (! ($Is bv7Type v@@2 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( ($Is bv7Type v@@2 (TBitvector 7)))
)))
(assert  (and (and (= (Ctor bv8Type) 6) (forall ((arg0@@5 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@5))
))) (forall ((x@@5 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@5)) x@@5)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@5))
))))
(assert (forall ((v@@3 T@U) ) (! ($Is bv8Type v@@3 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( ($Is bv8Type v@@3 (TBitvector 8)))
)))
(assert  (and (and (= (Ctor bv16Type) 7) (forall ((arg0@@6 (_ BitVec 16)) ) (! (= (U_2_bv16 (bv16_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv16|
 :pattern ( (bv16_2_U arg0@@6))
))) (forall ((x@@6 T@U) ) (! (= (bv16_2_U (U_2_bv16 x@@6)) x@@6)
 :qid |cast:U_2_bv16|
 :pattern ( (U_2_bv16 x@@6))
))))
(assert (forall ((v@@4 T@U) ) (! ($Is bv16Type v@@4 (TBitvector 16))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv16Type v@@4 (TBitvector 16)))
)))
(assert  (and (and (= (Ctor bv32Type) 8) (forall ((arg0@@7 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@7))
))) (forall ((x@@7 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@7)) x@@7)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@7))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is bv32Type v@@5 (TBitvector 32))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is bv32Type v@@5 (TBitvector 32)))
)))
(assert  (and (and (= (Ctor bv64Type) 9) (forall ((arg0@@8 (_ BitVec 64)) ) (! (= (U_2_bv64 (bv64_2_U arg0@@8)) arg0@@8)
 :qid |typeInv:U_2_bv64|
 :pattern ( (bv64_2_U arg0@@8))
))) (forall ((x@@8 T@U) ) (! (= (bv64_2_U (U_2_bv64 x@@8)) x@@8)
 :qid |cast:U_2_bv64|
 :pattern ( (U_2_bv64 x@@8))
))))
(assert (forall ((v@@6 T@U) ) (! ($Is bv64Type v@@6 (TBitvector 64))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( ($Is bv64Type v@@6 (TBitvector 64)))
)))
(assert  (and (and (= (Ctor bv128Type) 10) (forall ((arg0@@9 (_ BitVec 128)) ) (! (= (U_2_bv128 (bv128_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_bv128|
 :pattern ( (bv128_2_U arg0@@9))
))) (forall ((x@@9 T@U) ) (! (= (bv128_2_U (U_2_bv128 x@@9)) x@@9)
 :qid |cast:U_2_bv128|
 :pattern ( (U_2_bv128 x@@9))
))))
(assert (forall ((v@@7 T@U) ) (! ($Is bv128Type v@@7 (TBitvector 128))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($Is bv128Type v@@7 (TBitvector 128)))
)))
(assert (forall ((x@@10 Int) ) (! (= (LitInt x@@10) x@@10)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@10))
)))
(assert (forall ((x@@11 T@U) (T T@T) ) (! (= (Lit T x@@11) x@@11)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@11))
)))
(assert (forall ((x@@12 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@12)) x@@12)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@12))
)))
(assert (= _module.__default.Ones (U_2_bv128 (Lit bv128Type (bv128_2_U #xffffffffffffffffffffffffffffffff)))))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((x@@13 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@13))
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
)))) (= (Ctor refType) 11)) (= (Ctor FieldType) 12)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 13)) (forall ((arg0@@10 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@10 arg1)) 14)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@11 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@11 arg1@@0)) arg0@@11)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@11 arg1@@0))
))) (forall ((arg0@@12 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@12 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@12 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |516|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is bv128Type (bv128_2_U _module.__default.Ones) (TBitvector 128))))
(assert (forall ((x@@14 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@14))) (Lit BoxType ($Box intType (int_2_U x@@14))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@14))))
)))
(assert (forall ((x@@15 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@15)) (Lit BoxType ($Box T@@2 x@@15)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@15)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0| () Int)
(declare-fun |newtype$check#0_1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (= |i#0| (LitInt 64)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 |i#0|) (< |i#0| 256))) (=> (and (<= 0 |i#0|) (< |i#0| 256)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (bvule ((_ int2bv 8) |i#0|) #x80)) (=> (= |newtype$check#0_1@0| (LitInt 64)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 |newtype$check#0_1@0|) (< |newtype$check#0_1@0| 256))) (=> (and (<= 0 |newtype$check#0_1@0|) (< |newtype$check#0_1@0| 256)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (bvule #x40 #x80)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (bvshl _module.__default.Ones (concat #x000000000000000000000000000000 ((_ int2bv 8) |i#0|))) (bvshl _module.__default.Ones (concat #x000000000000000000000000000000 #x40))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 2) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |i#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
