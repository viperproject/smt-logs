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
(declare-fun nat_from_bv8 ((_ BitVec 8)) Int)
(declare-fun Div (Int Int) Int)
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
(assert (forall ((b (_ BitVec 8)) ) (!  (and (and (<= 0 (nat_from_bv8 b)) (< (nat_from_bv8 b) 256)) (= (nat_from_bv8 b) (bv2int b)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( (nat_from_bv8 b))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
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
 :skolemid |549|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |z#0@0| () (_ BitVec 32))
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv32Type () T@T)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun |x#0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () (_ BitVec 8))
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (= (Ctor bv32Type) 7) (forall ((arg0@@5 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@5))
))) (forall ((x@@9 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@9)) x@@9)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@9))
))))
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon3_correct  (=> (and (= |z#0@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x0000000c)))) (= |newtype$check#7@0| (LitInt 31))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 |newtype$check#7@0|) (< |newtype$check#7@0| 64))) (=> (and (<= 0 |newtype$check#7@0|) (< |newtype$check#7@0| 64)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (bvule #b011111 #b100000)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= (bvlshr |z#0@0| (concat #b00000000000000000000000000 #b011111)) (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000000))))) (=> (= (bvlshr |z#0@0| (concat #b00000000000000000000000000 #b011111)) (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000000)))) (=> (= |newtype$check#8@0| (LitInt 31)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 |newtype$check#8@0|) (< |newtype$check#8@0| 64))) (=> (and (<= 0 |newtype$check#8@0|) (< |newtype$check#8@0| 64)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (bvule #b011111 #b100000)) (=> (= |newtype$check#9@0| (LitInt 32)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 |newtype$check#9@0|) (< |newtype$check#9@0| 64))) (=> (and (<= 0 |newtype$check#9@0|) (< |newtype$check#9@0| 64)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (bvule #b100000 #b100000)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (bvlshr |z#0@0| (concat #b00000000000000000000000000 #b100000)) (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000000))))) (=> (= (bvlshr |z#0@0| (concat #b00000000000000000000000000 #b100000)) (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000000)))) (=> (= |newtype$check#10@0| (LitInt 32)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 |newtype$check#10@0|) (< |newtype$check#10@0| 64))) (=> (and (<= 0 |newtype$check#10@0|) (< |newtype$check#10@0| 64)) (=> (= (ControlFlow 0 2) (- 0 1)) (bvule #b100000 #b100000)))))))))))))))))))))))
(let ((anon4_Else_correct  (=> (and (or (not (= |x#0@0| (LitInt 248))) (not true)) (= (ControlFlow 0 14) 2)) anon3_correct)))
(let ((anon4_Then_correct  (=> (= |x#0@0| (LitInt 248)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= (LitInt 0) 0)) (not true))) (=> (or (not (= (LitInt 0) 0)) (not true)) (=> (and (= |x#0_0@0| (LitInt (Div 1 (LitInt 0)))) (= (ControlFlow 0 12) 2)) anon3_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 128))) (and (=> (= (ControlFlow 0 15) (- 0 25)) (and (<= 0 |newtype$check#0@0|) (< |newtype$check#0@0| 256))) (=> (and (<= 0 |newtype$check#0@0|) (< |newtype$check#0@0| 256)) (=> (= |newtype$check#1@0| (LitInt 4)) (and (=> (= (ControlFlow 0 15) (- 0 24)) (and (<= 0 |newtype$check#1@0|) (< |newtype$check#1@0| 16))) (=> (and (<= 0 |newtype$check#1@0|) (< |newtype$check#1@0| 16)) (and (=> (= (ControlFlow 0 15) (- 0 23)) (bvule #b0100 #b1000)) (=> (bvule #b0100 #b1000) (=> (= |newtype$check#2@0| (bvlshr #x80 (concat #b0000 #b0100))) (and (=> (= (ControlFlow 0 15) (- 0 22)) (and (<= (LitInt 0) (nat_from_bv8 |newtype$check#2@0|)) (< (nat_from_bv8 |newtype$check#2@0|) 256))) (=> (and (<= (LitInt 0) (nat_from_bv8 |newtype$check#2@0|)) (< (nat_from_bv8 |newtype$check#2@0|) 256)) (=> (= |newtype$check#3@0| (nat_from_bv8 (bvlshr #x80 (concat #b0000 #b0100)))) (and (=> (= (ControlFlow 0 15) (- 0 21)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256)) (=> (and (= |x#0@0| (nat_from_bv8 (bvlshr #x80 (concat #b0000 #b0100)))) (= |newtype$check#4@0| (LitInt 248))) (and (=> (= (ControlFlow 0 15) (- 0 20)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256)) (and (=> (= (ControlFlow 0 15) (- 0 19)) (or (not (= |x#0@0| 248)) (not true))) (=> (or (not (= |x#0@0| 248)) (not true)) (=> (= |newtype$check#5@0| (LitInt 8)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (= |x#0@0| (LitInt 8))) (=> (= |x#0@0| (LitInt 8)) (=> (= |newtype$check#6@0| (LitInt 248)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256)) (and (=> (= (ControlFlow 0 15) 12) anon4_Then_correct) (=> (= (ControlFlow 0 15) 14) anon4_Else_correct)))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (<= (LitInt 0) |x#0|) (< |x#0| 256)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 15))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
