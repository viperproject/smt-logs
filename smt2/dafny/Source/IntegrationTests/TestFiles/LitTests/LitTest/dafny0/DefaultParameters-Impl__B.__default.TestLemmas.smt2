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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun B.__default.F (Int) Int)
(declare-fun |B.__default.F#canCall| (Int) Bool)
(declare-fun B.__default.F_k (Int) Int)
(declare-fun |B.__default.F_k#canCall| (Int) Bool)
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
(assert (distinct TInt TagInt alloc)
)
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2867|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2868|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2766|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2764|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2775|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2859|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2866|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|B.__default.F#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (B.__default.F |x#0|) |x#0|))
 :qid |DefaultParametersdfy.72:14|
 :skolemid |3405|
 :pattern ( (B.__default.F |x#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|B.__default.F#canCall| |x#0@@0|) (< 0 $FunctionContextHeight)) (= (B.__default.F |x#0@@0|) |x#0@@0|))
 :qid |DefaultParametersdfy.72:14|
 :skolemid |3407|
 :pattern ( (B.__default.F |x#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|B.__default.F_k#canCall| |x#0@@1|) (< 0 $FunctionContextHeight)) (= (B.__default.F_k |x#0@@1|) |x#0@@1|))
 :qid |DefaultParametersdfy.87:15|
 :skolemid |3414|
 :pattern ( (B.__default.F_k |x#0@@1|))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2774|
 :pattern ( ($Box T@@2 x@@5))
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
 :skolemid |14271|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|B.__default.F#canCall| (LitInt |x#0@@2|)) (< 0 $FunctionContextHeight)) (= (B.__default.F (LitInt |x#0@@2|)) (LitInt |x#0@@2|)))
 :qid |DefaultParametersdfy.72:14|
 :weight 3
 :skolemid |3408|
 :pattern ( (B.__default.F (LitInt |x#0@@2|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@3| Int) ) (!  (=> (or (|B.__default.F_k#canCall| (LitInt |x#0@@3|)) (< 0 $FunctionContextHeight)) (= (B.__default.F_k (LitInt |x#0@@3|)) (LitInt |x#0@@3|)))
 :qid |DefaultParametersdfy.87:15|
 :weight 3
 :skolemid |3415|
 :pattern ( (B.__default.F_k (LitInt |x#0@@3|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2767|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2765|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2810|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##x#1_1_0_1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |##x#1_1_0_0@0| () Int)
(declare-fun |##x#1_1_1_1_0@0| () Int)
(declare-fun |x##1_1_1_1_0@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |call2formal@r#0@0| () Int)
(declare-fun null () T@U)
(declare-fun |##x#1_1_1_0_0@0| () Int)
(declare-fun |x##1_1_1_0_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |call2formal@r#0@0@@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |y#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##x#0@0| () Int)
(set-info :boogie-vc-id Impl$$B.__default.TestLemmas)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon7_correct  (=> (and (|B.__default.F#canCall| (LitInt 5)) (=> (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5)) (|B.__default.F#canCall| (LitInt 5)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5))) (=> (= (ControlFlow 0 14) (- 0 13)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 6)))))))
(let ((anon14_Else_correct  (=> (and (or (not (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5))) (not true)) (= (ControlFlow 0 17) 14)) anon7_correct)))
(let ((anon14_Then_correct  (=> (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5)) (=> (and (and (= |##x#1_1_0_1@0| (LitInt 5)) ($IsAlloc intType (int_2_U |##x#1_1_0_1@0|) TInt $Heap@2)) (and (|B.__default.F#canCall| (LitInt 5)) (= (ControlFlow 0 16) 14))) anon7_correct))))
(let ((anon13_Then_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|B.__default.F#canCall| (LitInt 5)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 6)))) (and (and (= $Heap $Heap@2) (= |##x#1_1_0_0@0| (LitInt 5))) (and ($IsAlloc intType (int_2_U |##x#1_1_0_0@0|) TInt $Heap@2) (|B.__default.F#canCall| (LitInt 5))))) (and (=> (= (ControlFlow 0 18) 16) anon14_Then_correct) (=> (= (ControlFlow 0 18) 17) anon14_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (= |##x#1_1_1_1_0@0| (LitInt 6)) ($IsAlloc intType (int_2_U |##x#1_1_1_1_0@0|) TInt $Heap)) (and (|B.__default.F_k#canCall| (LitInt 6)) (|B.__default.F_k#canCall| (LitInt 6)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= (LitInt (B.__default.F_k (LitInt 6))) (LitInt 6))) (=> (= (LitInt (B.__default.F_k (LitInt 6))) (LitInt 6)) (=> (= |x##1_1_1_1_0@0| (LitInt 6)) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (= |call2formal@r#0@0| |x##1_1_1_1_0@0|) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |DefaultParametersdfy.88:10|
 :skolemid |3417|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@0))
))) (and ($HeapSucc $Heap $Heap@4) (= (ControlFlow 0 10) (- 0 9)))) (= |call2formal@r#0@0| (LitInt 6))))))))))
(let ((anon15_Then_correct  (=> (and (and (= |##x#1_1_1_0_0@0| (LitInt 5)) ($IsAlloc intType (int_2_U |##x#1_1_1_0_0@0|) TInt $Heap)) (and (|B.__default.F#canCall| (LitInt 5)) (|B.__default.F#canCall| (LitInt 5)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5))) (=> (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5)) (=> (= |x##1_1_1_0_0@0| (LitInt 5)) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (= |call2formal@r#0@0@@0| |x##1_1_1_0_0@0|)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1)))
 :qid |DefaultParametersdfy.85:10|
 :skolemid |3410|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@1))
)) ($HeapSucc $Heap $Heap@3))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= |call2formal@r#0@0@@0| (LitInt 5))) (=> (= |call2formal@r#0@0@@0| (LitInt 5)) (=> (= (ControlFlow 0 6) (- 0 5)) (= |call2formal@r#0@0@@0| (LitInt 7))))))))))))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 12) 6) anon15_Then_correct) (=> (= (ControlFlow 0 12) 10) anon15_Else_correct))))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 19) 18) anon13_Then_correct) (=> (= (ControlFlow 0 19) 12) anon13_Else_correct))))
(let ((anon12_Then_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (|B.__default.F#canCall| (LitInt 5)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5))) (and (= $Heap $Heap@1) (= (ControlFlow 0 4) (- 0 3)))) (= |y#0@0| (LitInt 6))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 20) 4) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct))))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (|B.__default.F#canCall| (LitInt 5)) (= (LitInt (B.__default.F (LitInt 5))) (LitInt 5))) (and (= $Heap $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (= |y#0@0| (LitInt 5))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |##x#0@0| (LitInt 5))) (=> (and (and ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap) (|B.__default.F#canCall| (LitInt 5))) (and (|B.__default.F#canCall| (LitInt 5)) (= |y#0@0| (LitInt (B.__default.F (LitInt 5)))))) (and (=> (= (ControlFlow 0 21) 2) anon11_Then_correct) (=> (= (ControlFlow 0 21) 20) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
