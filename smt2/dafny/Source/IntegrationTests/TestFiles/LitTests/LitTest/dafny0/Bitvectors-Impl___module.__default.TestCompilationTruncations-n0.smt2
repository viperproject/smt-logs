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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun alloc () T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun boolType () T@T)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
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
))) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |663|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a##0@0| () (_ BitVec 67))
(declare-fun U_2_bv67 (T@U) (_ BitVec 67))
(declare-fun bv67Type () T@T)
(declare-fun bv67_2_U ((_ BitVec 67)) T@U)
(declare-fun |b##0@0| () (_ BitVec 67))
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a##1@0| () (_ BitVec 64))
(declare-fun U_2_bv64 (T@U) (_ BitVec 64))
(declare-fun bv64Type () T@T)
(declare-fun bv64_2_U ((_ BitVec 64)) T@U)
(declare-fun |b##1@0| () (_ BitVec 64))
(declare-fun $Heap@1 () T@U)
(declare-fun |a##2@0| () (_ BitVec 53))
(declare-fun U_2_bv53 (T@U) (_ BitVec 53))
(declare-fun bv53Type () T@T)
(declare-fun bv53_2_U ((_ BitVec 53)) T@U)
(declare-fun |b##2@0| () (_ BitVec 53))
(declare-fun $Heap@2 () T@U)
(declare-fun |a##3@0| () (_ BitVec 33))
(declare-fun U_2_bv33 (T@U) (_ BitVec 33))
(declare-fun bv33Type () T@T)
(declare-fun bv33_2_U ((_ BitVec 33)) T@U)
(declare-fun |b##3@0| () (_ BitVec 33))
(declare-fun $Heap@3 () T@U)
(declare-fun |a##4@0| () (_ BitVec 32))
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv32Type () T@T)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun |b##4@0| () (_ BitVec 32))
(declare-fun $Heap@4 () T@U)
(declare-fun |a##5@0| () (_ BitVec 31))
(declare-fun U_2_bv31 (T@U) (_ BitVec 31))
(declare-fun bv31Type () T@T)
(declare-fun bv31_2_U ((_ BitVec 31)) T@U)
(declare-fun |b##5@0| () (_ BitVec 31))
(declare-fun $Heap@5 () T@U)
(declare-fun |a##6@0| () (_ BitVec 16))
(declare-fun U_2_bv16 (T@U) (_ BitVec 16))
(declare-fun bv16Type () T@T)
(declare-fun bv16_2_U ((_ BitVec 16)) T@U)
(declare-fun |b##6@0| () (_ BitVec 16))
(declare-fun $Heap@6 () T@U)
(declare-fun |a##7@0| () (_ BitVec 15))
(declare-fun U_2_bv15 (T@U) (_ BitVec 15))
(declare-fun bv15Type () T@T)
(declare-fun bv15_2_U ((_ BitVec 15)) T@U)
(declare-fun |b##7@0| () (_ BitVec 15))
(declare-fun $Heap@7 () T@U)
(declare-fun |a##8@0| () (_ BitVec 8))
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun |b##8@0| () (_ BitVec 8))
(declare-fun $Heap@8 () T@U)
(declare-fun |a##9@0| () (_ BitVec 6))
(declare-fun U_2_bv6 (T@U) (_ BitVec 6))
(declare-fun bv6Type () T@T)
(declare-fun bv6_2_U ((_ BitVec 6)) T@U)
(declare-fun |b##9@0| () (_ BitVec 6))
(declare-fun $Heap@9 () T@U)
(declare-fun |a##10@0| () (_ BitVec 1))
(declare-fun U_2_bv1 (T@U) (_ BitVec 1))
(declare-fun bv1Type () T@T)
(declare-fun bv1_2_U ((_ BitVec 1)) T@U)
(declare-fun |b##10@0| () (_ BitVec 1))
(declare-fun $Heap@10 () T@U)
(declare-fun |a##11@0| () Int)
(declare-fun |b##11@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun |a##12@0| () (_ BitVec 2))
(declare-fun U_2_bv2 (T@U) (_ BitVec 2))
(declare-fun bv2Type () T@T)
(declare-fun bv2_2_U ((_ BitVec 2)) T@U)
(declare-fun |b##12@0| () (_ BitVec 2))
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor bv67Type) 7) (forall ((arg0@@5 (_ BitVec 67)) ) (! (= (U_2_bv67 (bv67_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv67|
 :pattern ( (bv67_2_U arg0@@5))
))) (forall ((x@@8 T@U) ) (! (= (bv67_2_U (U_2_bv67 x@@8)) x@@8)
 :qid |cast:U_2_bv67|
 :pattern ( (U_2_bv67 x@@8))
))) (= (Ctor bv64Type) 8)) (forall ((arg0@@6 (_ BitVec 64)) ) (! (= (U_2_bv64 (bv64_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv64|
 :pattern ( (bv64_2_U arg0@@6))
))) (forall ((x@@9 T@U) ) (! (= (bv64_2_U (U_2_bv64 x@@9)) x@@9)
 :qid |cast:U_2_bv64|
 :pattern ( (U_2_bv64 x@@9))
))) (= (Ctor bv53Type) 9)) (forall ((arg0@@7 (_ BitVec 53)) ) (! (= (U_2_bv53 (bv53_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv53|
 :pattern ( (bv53_2_U arg0@@7))
))) (forall ((x@@10 T@U) ) (! (= (bv53_2_U (U_2_bv53 x@@10)) x@@10)
 :qid |cast:U_2_bv53|
 :pattern ( (U_2_bv53 x@@10))
))) (= (Ctor bv33Type) 10)) (forall ((arg0@@8 (_ BitVec 33)) ) (! (= (U_2_bv33 (bv33_2_U arg0@@8)) arg0@@8)
 :qid |typeInv:U_2_bv33|
 :pattern ( (bv33_2_U arg0@@8))
))) (forall ((x@@11 T@U) ) (! (= (bv33_2_U (U_2_bv33 x@@11)) x@@11)
 :qid |cast:U_2_bv33|
 :pattern ( (U_2_bv33 x@@11))
))) (= (Ctor bv32Type) 11)) (forall ((arg0@@9 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@9))
))) (forall ((x@@12 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@12)) x@@12)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@12))
))) (= (Ctor bv31Type) 12)) (forall ((arg0@@10 (_ BitVec 31)) ) (! (= (U_2_bv31 (bv31_2_U arg0@@10)) arg0@@10)
 :qid |typeInv:U_2_bv31|
 :pattern ( (bv31_2_U arg0@@10))
))) (forall ((x@@13 T@U) ) (! (= (bv31_2_U (U_2_bv31 x@@13)) x@@13)
 :qid |cast:U_2_bv31|
 :pattern ( (U_2_bv31 x@@13))
))) (= (Ctor bv16Type) 13)) (forall ((arg0@@11 (_ BitVec 16)) ) (! (= (U_2_bv16 (bv16_2_U arg0@@11)) arg0@@11)
 :qid |typeInv:U_2_bv16|
 :pattern ( (bv16_2_U arg0@@11))
))) (forall ((x@@14 T@U) ) (! (= (bv16_2_U (U_2_bv16 x@@14)) x@@14)
 :qid |cast:U_2_bv16|
 :pattern ( (U_2_bv16 x@@14))
))) (= (Ctor bv15Type) 14)) (forall ((arg0@@12 (_ BitVec 15)) ) (! (= (U_2_bv15 (bv15_2_U arg0@@12)) arg0@@12)
 :qid |typeInv:U_2_bv15|
 :pattern ( (bv15_2_U arg0@@12))
))) (forall ((x@@15 T@U) ) (! (= (bv15_2_U (U_2_bv15 x@@15)) x@@15)
 :qid |cast:U_2_bv15|
 :pattern ( (U_2_bv15 x@@15))
))) (= (Ctor bv8Type) 15)) (forall ((arg0@@13 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@13)) arg0@@13)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@13))
))) (forall ((x@@16 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@16)) x@@16)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@16))
))) (= (Ctor bv6Type) 16)) (forall ((arg0@@14 (_ BitVec 6)) ) (! (= (U_2_bv6 (bv6_2_U arg0@@14)) arg0@@14)
 :qid |typeInv:U_2_bv6|
 :pattern ( (bv6_2_U arg0@@14))
))) (forall ((x@@17 T@U) ) (! (= (bv6_2_U (U_2_bv6 x@@17)) x@@17)
 :qid |cast:U_2_bv6|
 :pattern ( (U_2_bv6 x@@17))
))) (= (Ctor bv1Type) 17)) (forall ((arg0@@15 (_ BitVec 1)) ) (! (= (U_2_bv1 (bv1_2_U arg0@@15)) arg0@@15)
 :qid |typeInv:U_2_bv1|
 :pattern ( (bv1_2_U arg0@@15))
))) (forall ((x@@18 T@U) ) (! (= (bv1_2_U (U_2_bv1 x@@18)) x@@18)
 :qid |cast:U_2_bv1|
 :pattern ( (U_2_bv1 x@@18))
))) (= (Ctor bv2Type) 18)) (forall ((arg0@@16 (_ BitVec 2)) ) (! (= (U_2_bv2 (bv2_2_U arg0@@16)) arg0@@16)
 :qid |typeInv:U_2_bv2|
 :pattern ( (bv2_2_U arg0@@16))
))) (forall ((x@@19 T@U) ) (! (= (bv2_2_U (U_2_bv2 x@@19)) x@@19)
 :qid |cast:U_2_bv2|
 :pattern ( (U_2_bv2 x@@19))
))))
(set-info :boogie-vc-id Impl$$_module.__default.TestCompilationTruncations)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |a##0@0| (U_2_bv67 (Lit bv67Type (bv67_2_U (bvsub #b0000000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000001))))) (= |b##0@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000000011))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Bitvectorsdfy.136:8|
 :skolemid |595|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (= |a##1@0| (U_2_bv64 (Lit bv64Type (bv64_2_U (bvsub #x0000000000000000 #x0000000000000001))))) (= |b##1@0| (U_2_bv64 (Lit bv64Type (bv64_2_U #x0000000000000003)))))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Bitvectorsdfy.141:8|
 :skolemid |598|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)))) (=> (and (and (and (and (and (and (= |a##2@0| (U_2_bv53 (Lit bv53Type (bv53_2_U (bvsub #b00000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000000000000000000000001))))) (= |b##2@0| (U_2_bv53 (Lit bv53Type (bv53_2_U #b00000000000000000000000000000000000000000000000000011))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Bitvectorsdfy.146:8|
 :skolemid |601|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |a##3@0| (U_2_bv33 (Lit bv33Type (bv33_2_U (bvsub #b000000000000000000000000000000000 #b000000000000000000000000000000001))))) (= |b##3@0| (U_2_bv33 (Lit bv33Type (bv33_2_U #b000000000000000000000000000000011))))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |Bitvectorsdfy.151:8|
 :skolemid |604|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and (= |a##4@0| (U_2_bv32 (Lit bv32Type (bv32_2_U (bvsub #x00000000 #x00000001))))) (= |b##4@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000003))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))))) (and (and (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |Bitvectorsdfy.156:8|
 :skolemid |607|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |a##5@0| (U_2_bv31 (Lit bv31Type (bv31_2_U (bvsub #b0000000000000000000000000000000 #b0000000000000000000000000000001))))) (= |b##5@0| (U_2_bv31 (Lit bv31Type (bv31_2_U #b0000000000000000000000000000011)))))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |Bitvectorsdfy.161:8|
 :skolemid |610|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (and (and (= |a##6@0| (U_2_bv16 (Lit bv16Type (bv16_2_U (bvsub #x0000 #x0001))))) (= |b##6@0| (U_2_bv16 (Lit bv16Type (bv16_2_U #x0003))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |Bitvectorsdfy.166:8|
 :skolemid |613|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= |a##7@0| (U_2_bv15 (Lit bv15Type (bv15_2_U (bvsub #b000000000000000 #b000000000000001))))) (= |b##7@0| (U_2_bv15 (Lit bv15Type (bv15_2_U #b000000000000011))))))))) (and (and (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |Bitvectorsdfy.171:8|
 :skolemid |616|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (and (= |a##8@0| (U_2_bv8 (Lit bv8Type (bv8_2_U (bvsub #x00 #x01))))) (= |b##8@0| (U_2_bv8 (Lit bv8Type (bv8_2_U #x03))))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)))) (and (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |Bitvectorsdfy.176:8|
 :skolemid |619|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= |a##9@0| (U_2_bv6 (Lit bv6Type (bv6_2_U (bvsub #b000000 #b000001))))) (= |b##9@0| (U_2_bv6 (Lit bv6Type (bv6_2_U #b000011)))))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |Bitvectorsdfy.181:8|
 :skolemid |622|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
)) ($HeapSucc $Heap@8 $Heap@9))))) (and (and (and (and (= |a##10@0| (U_2_bv1 (Lit bv1Type (bv1_2_U #b1)))) (= |b##10@0| (U_2_bv1 (Lit bv1Type (bv1_2_U #b1))))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))) (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10)))
 :qid |Bitvectorsdfy.186:8|
 :skolemid |625|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (= |a##11@0| (LitInt 0)) (= |b##11@0| (LitInt 0))))) (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11)))
 :qid |Bitvectorsdfy.191:8|
 :skolemid |628|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11))
))) (and (and ($HeapSucc $Heap@10 $Heap@11) (= |a##12@0| (U_2_bv2 (Lit bv2Type (bv2_2_U #b11))))) (and (= |b##12@0| (U_2_bv2 (Lit bv2Type (bv2_2_U #b10)))) (= (ControlFlow 0 2) (- 0 1)))))))) (or (not (= |b##12@0| #b00)) (not true))))))))
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
