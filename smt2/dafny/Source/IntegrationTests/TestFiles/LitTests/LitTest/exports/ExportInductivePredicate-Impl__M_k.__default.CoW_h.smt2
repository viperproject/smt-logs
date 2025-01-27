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
(declare-fun |ORD#Less| (T@U T@U) Bool)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun M.__default.Q_h (T@U Int) Bool)
(declare-fun |M.__default.Q_h#canCall| (T@U Int) Bool)
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
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |663|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |590|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |588|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |599|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |659|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((o@@0 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@0 p@@0) (= o@@0 p@@0)) (|ORD#Less| p@@0 o@@0))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |662|
 :pattern ( (|ORD#Less| o@@0 p@@0) (|ORD#Less| p@@0 o@@0))
)))
(assert (forall ((|x#0| Int) (|_k#0| T@U) ) (!  (=> (= |_k#0| (|ORD#FromNat| 0)) (M.__default.Q_h |_k#0| |x#0|))
 :qid |ExportInductivePredicatedfy.10:24|
 :skolemid |1162|
 :pattern ( (M.__default.Q_h |_k#0| |x#0|))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (|ORD#Offset| o@@1))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |658|
 :pattern ( (|ORD#Offset| o@@1))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |598|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@2 p@@1) (or (not (= o@@2 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@2) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@2 p@@1))) (=> (and (|ORD#IsNat| o@@2) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@2 p@@1) (< (|ORD#Offset| o@@2) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@2 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@2)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |661|
 :pattern ( (|ORD#Less| o@@2 p@@1))
)))
(assert (forall ((|_k#0@@0| T@U) (|x#0@@0| Int) ) (!  (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (< |x#0@@0| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#3| T@U) ) (!  (=> (|ORD#Less| |_k'#3| |_k#0@@0|) (|M.__default.Q_h#canCall| |_k'#3| |x#0@@0|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1166|
 :pattern ( (M.__default.Q_h |_k'#3| |x#0@@0|))
)))) (= (M.__default.Q_h |_k#0@@0| |x#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (< |x#0@@0| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#3@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#3@@0| |_k#0@@0|) (M.__default.Q_h |_k'#3@@0| |x#0@@0|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1165|
 :pattern ( (M.__default.Q_h |_k'#3@@0| |x#0@@0|))
))))))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1167|
 :pattern ( (M.__default.Q_h |_k#0@@0| |x#0@@0|))
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
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |1175|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_k#0@@1| T@U) (|x#0@@1| Int) ) (!  (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (< |x#0@@1| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#4| T@U) ) (!  (=> (|ORD#Less| |_k'#4| |_k#0@@1|) (|M.__default.Q_h#canCall| |_k'#4| |x#0@@1|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1169|
 :pattern ( (M.__default.Q_h |_k'#4| |x#0@@1|))
)))) (= (M.__default.Q_h (Lit BoxType |_k#0@@1|) |x#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (< |x#0@@1| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#4@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#4@@0| |_k#0@@1|) (M.__default.Q_h |_k'#4@@0| |x#0@@1|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1168|
 :pattern ( (M.__default.Q_h |_k'#4@@0| |x#0@@1|))
))))))
 :qid |ExportInductivePredicatedfy.10:22|
 :weight 3
 :skolemid |1170|
 :pattern ( (M.__default.Q_h (Lit BoxType |_k#0@@1|) |x#0@@1|))
)))
(assert (forall ((o@@3 T@U) ) (!  (=> (|ORD#IsNat| o@@3) (= o@@3 (|ORD#FromNat| (|ORD#Offset| o@@3))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |660|
 :pattern ( (|ORD#Offset| o@@3))
 :pattern ( (|ORD#IsNat| o@@3))
)))
(assert (forall ((|_k#0@@2| T@U) (|x#0@@2| Int) ) (!  (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (< |x#0@@2| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#5| T@U) ) (!  (=> (|ORD#Less| |_k'#5| |_k#0@@2|) (|M.__default.Q_h#canCall| |_k'#5| |x#0@@2|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1172|
 :pattern ( (M.__default.Q_h |_k'#5| |x#0@@2|))
)))) (= (M.__default.Q_h (Lit BoxType |_k#0@@2|) (LitInt |x#0@@2|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (< |x#0@@2| 100)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#5@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#5@@0| |_k#0@@2|) (M.__default.Q_h |_k'#5@@0| |x#0@@2|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1171|
 :pattern ( (M.__default.Q_h |_k'#5@@0| |x#0@@2|))
))))))
 :qid |ExportInductivePredicatedfy.10:22|
 :weight 3
 :skolemid |1173|
 :pattern ( (M.__default.Q_h (Lit BoxType |_k#0@@2|) (LitInt |x#0@@2|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |591|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |589|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@3| () T@U)
(declare-fun |x#1| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun alloc () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$M_k.__default.CoW_h)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M.__default.Q_h#canCall| |_k#0@@3| |x#1|) (or (M.__default.Q_h |_k#0@@3| |x#1|) (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (< |x#1| 100))))) (=> (=> (|M.__default.Q_h#canCall| |_k#0@@3| |x#1|) (or (M.__default.Q_h |_k#0@@3| |x#1|) (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (< |x#1| 100)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|M.__default.Q_h#canCall| |_k#0@@3| |x#1|) (or (M.__default.Q_h |_k#0@@3| |x#1|) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@3|) (M.__default.Q_h |_k'#1| |x#1|))
 :qid |ExportInductivePredicatedfy.10:22|
 :skolemid |1134|
 :pattern ( (M.__default.Q_h |_k'#1| |x#1|))
))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@3|) 0) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (forall ((|_k'#2| T@U) (|x#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#2| |_k#0@@3|) (< |x#2| 100)) (M.__default.Q_h |_k'#2| |x#2|))
 :qid |ExportInductivePredicatedfy.89:18|
 :skolemid |1136|
 :pattern ( (M.__default.Q_h |_k'#2| |x#2|))
)) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@3|)) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 1 $FunctionContextHeight)) (and (< |x#1| 100) (= (ControlFlow 0 7) 6))) anon0_correct)))
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
