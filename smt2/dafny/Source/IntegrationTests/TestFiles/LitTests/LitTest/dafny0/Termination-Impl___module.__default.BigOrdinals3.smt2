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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun alloc () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#Plus| (T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
 :skolemid |2468|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |2464|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (and (or (= o@@1 (|ORD#Plus| o@@1 p@@0)) (|ORD#Less| o@@1 (|ORD#Plus| o@@1 p@@0))) (or (= p@@0 (|ORD#Plus| o@@1 p@@0)) (|ORD#Less| p@@0 (|ORD#Plus| o@@1 p@@0))))
 :qid |DafnyPreludebpl.443:15|
 :skolemid |2471|
 :pattern ( (|ORD#Plus| o@@1 p@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |2467|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (!  (and (=> (= o@@3 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@3 p@@2) p@@2)) (=> (= p@@2 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@3 p@@2) o@@3)))
 :qid |DafnyPreludebpl.446:15|
 :skolemid |2472|
 :pattern ( (|ORD#Plus| o@@3 p@@2))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |2463|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Unbox T@@0 ($Box T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@0 x@@3))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |2466|
 :pattern ( (|ORD#Less| o@@5 p@@3))
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
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@6 T@U) (m@@4 Int) (n@@0 Int) ) (!  (=> (and (<= 0 m@@4) (<= 0 n@@0)) (= (|ORD#Plus| (|ORD#Plus| o@@6 (|ORD#FromNat| m@@4)) (|ORD#FromNat| n@@0)) (|ORD#Plus| o@@6 (|ORD#FromNat| (+ m@@4 n@@0)))))
 :qid |DafnyPreludebpl.461:15|
 :skolemid |2475|
 :pattern ( (|ORD#Plus| (|ORD#Plus| o@@6 (|ORD#FromNat| m@@4)) (|ORD#FromNat| n@@0)))
)))
(assert (forall ((o@@7 T@U) ) (!  (=> (|ORD#IsNat| o@@7) (= o@@7 (|ORD#FromNat| (|ORD#Offset| o@@7))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |2465|
 :pattern ( (|ORD#Offset| o@@7))
 :pattern ( (|ORD#IsNat| o@@7))
)))
(assert (forall ((o@@8 T@U) (p@@4 T@U) ) (!  (and (=> (|ORD#IsNat| (|ORD#Plus| o@@8 p@@4)) (and (|ORD#IsNat| o@@8) (|ORD#IsNat| p@@4))) (=> (|ORD#IsNat| p@@4) (and (= (|ORD#IsNat| (|ORD#Plus| o@@8 p@@4)) (|ORD#IsNat| o@@8)) (= (|ORD#Offset| (|ORD#Plus| o@@8 p@@4)) (+ (|ORD#Offset| o@@8) (|ORD#Offset| p@@4))))))
 :qid |DafnyPreludebpl.438:15|
 :skolemid |2470|
 :pattern ( (|ORD#Plus| o@@8 p@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@0| () T@U)
(declare-fun |B#0| () T@U)
(declare-fun |a#0@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |A#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.BigOrdinals3)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon8_Else_correct  (=> (|ORD#Less| |a#0@0| |B#0|) (=> (and (= |a#0@1| (|ORD#Plus| |a#0@0| (|ORD#FromNat| 1))) (= (ControlFlow 0 5) (- 0 4))) (|ORD#Less| |B#0| |B#0|)))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 6) 3) anon8_Then_correct) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct)))))
(let ((anon7_Then_correct true))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 7) 2) anon7_Then_correct) (=> (= (ControlFlow 0 7) 6) anon7_Else_correct))))
(let ((anon6_LoopDone_correct true))
(let ((anon6_LoopHead_correct  (=> (not false) (=> (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.1194:3|
 :skolemid |3433|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.1194:3|
 :skolemid |3434|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (or (= |B#0| |B#0|) (|ORD#Less| |B#0| |B#0|)))) (and (=> (= (ControlFlow 0 8) 1) anon6_LoopDone_correct) (=> (= (ControlFlow 0 8) 7) anon6_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 9) 8)) anon6_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 0 $FunctionContextHeight)) (and (or (= |A#0| |B#0|) (|ORD#Less| |A#0| |B#0|)) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
