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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
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
 :skolemid |3178|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3179|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3077|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3075|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3086|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3099|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3171|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3170|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3177|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3098|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3085|
 :pattern ( ($Box T@@4 x@@5))
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
 :skolemid |3854|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |3400|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3078|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3076|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0@2| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |i#0@1| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |defass#y#0@0| () Bool)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#0@3| () Int)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun |i#0@4| () Int)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |defass#x#0@0| () Bool)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |g#0@0| () T@U)
(declare-fun _module._default.Loop$G () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0@0| () T@U)
(declare-fun |defass#t#1| () Bool)
(declare-fun |t#1@0| () T@U)
(declare-fun |k#0| () Int)
(declare-fun |defass#z#0@1| () Bool)
(declare-fun |n#0| () Int)
(declare-fun |defass#x#0@1| () Bool)
(declare-fun |i#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |y#0@3| () T@U)
(declare-fun |defass#lw#3_0@0| () Bool)
(declare-fun |lw#3_0@0| () T@U)
(declare-fun |defass#lx#3_0@0| () Bool)
(declare-fun |lx#3_0@0| () T@U)
(declare-fun |x#0@1| () T@U)
(declare-fun |z#0@1| () T@U)
(declare-fun |defass#z#0@0| () Bool)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun |y#0@1| () T@U)
(declare-fun |defass#z#0| () Bool)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0@0| () T@U)
(declare-fun |defass#x#0| () Bool)
(declare-fun |x#0@0| () T@U)
(declare-fun |defass#y#0| () Bool)
(declare-fun |y#0@0| () T@U)
(declare-fun |z#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#g#0| () Bool)
(declare-fun |g#0| () T@U)
(declare-fun |w#0| () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |z#0| () T@U)
(declare-fun |defass#lw#3_0| () Bool)
(declare-fun |lw#3_0| () T@U)
(declare-fun |defass#lx#3_0| () Bool)
(declare-fun |lx#3_0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |t#1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Loop)
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
 (=> (= (ControlFlow 0 0) 54) (let ((anon12_correct true))
(let ((anon37_Else_correct  (=> (and (= |y#0@2| |b#0|) (= (ControlFlow 0 36) 34)) anon12_correct)))
(let ((anon37_Then_correct  (=> (and (or (not (= |y#0@2| |b#0|)) (not true)) (= (ControlFlow 0 35) 34)) anon12_correct)))
(let ((anon10_correct  (=> (=> (< 4 |i#0@1|) (= |y#0@2| |a#0|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) |defass#y#0@0|) (=> |defass#y#0@0| (and (=> (= (ControlFlow 0 37) 35) anon37_Then_correct) (=> (= (ControlFlow 0 37) 36) anon37_Else_correct)))))))
(let ((anon36_Else_correct  (=> (and (<= |i#0@1| 4) (= (ControlFlow 0 41) 37)) anon10_correct)))
(let ((anon36_Then_correct  (=> (< 4 |i#0@1|) (and (=> (= (ControlFlow 0 39) (- 0 40)) |defass#y#0@0|) (=> |defass#y#0@0| (=> (= (ControlFlow 0 39) 37) anon10_correct))))))
(let ((anon35_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 42) 39) anon36_Then_correct) (=> (= (ControlFlow 0 42) 41) anon36_Else_correct)))))
(let ((anon44_Else_correct  (=> (< 0 |i#0@3|) (=> (and (= |$decr$loop#10@1| (- |i#0@3| 0)) (= |i#0@4| (- |i#0@3| 1))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (<= 0 |$decr$loop#10@1|) (= (- |i#0@4| 0) |$decr$loop#10@1|))) (=> (or (<= 0 |$decr$loop#10@1|) (= (- |i#0@4| 0) |$decr$loop#10@1|)) (=> (= (ControlFlow 0 21) (- 0 20)) (< (- |i#0@4| 0) |$decr$loop#10@1|))))))))
(let ((anon44_Then_correct  (=> (and (<= |i#0@3| 0) (= (ControlFlow 0 19) (- 0 18))) true)))
(let ((anon43_Else_correct  (=> |$w$loop#1@0| (and (=> (= (ControlFlow 0 23) 19) anon44_Then_correct) (=> (= (ControlFlow 0 23) 21) anon44_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((anon42_LoopBody_correct  (and (=> (= (ControlFlow 0 24) 17) anon43_Then_correct) (=> (= (ControlFlow 0 24) 23) anon43_Else_correct))))
(let ((anon42_LoopDone_correct true))
(let ((anon42_LoopHead_correct  (=> (and (and (and (and (and (and (and (and (and (and true (not false)) true) |defass#x#0@0|) |defass#y#0@0|) (<= 0 |i#0@3|)) true) true) |$w$loop#0@0|) (<= 0 |$decr_init$loop#10@0|)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |DefiniteAssignmentdfy.222:3|
 :skolemid |3588|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |DefiniteAssignmentdfy.222:3|
 :skolemid |3589|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- |i#0@3| 0) |$decr_init$loop#10@0|)))) (and (=> (= (ControlFlow 0 25) 16) anon42_LoopDone_correct) (=> (= (ControlFlow 0 25) 24) anon42_LoopBody_correct)))))
(let ((anon25_correct  (=> (=> true (and ($IsBox |g#0@0| _module._default.Loop$G) ($IsAllocBox |g#0@0| _module._default.Loop$G $Heap))) (=> (and (and (=> |defass#t#0| (and ($IsBox |t#0@0| _module._default.Loop$G) ($IsAllocBox |t#0@0| _module._default.Loop$G $Heap))) (=> |defass#t#1| (and ($IsBox |t#1@0| _module._default.Loop$G) ($IsAllocBox |t#1@0| _module._default.Loop$G $Heap)))) (and (= |$decr_init$loop#10@0| (- |i#0@1| 0)) (= (ControlFlow 0 26) 25))) anon42_LoopHead_correct))))
(let ((anon41_Else_correct  (=> (and (<= 100 |k#0|) (= (ControlFlow 0 29) 26)) anon25_correct)))
(let ((anon41_Then_correct  (=> (< |k#0| 100) (and (=> (= (ControlFlow 0 27) (- 0 28)) |defass#z#0@1|) (=> |defass#z#0@1| (=> (= (ControlFlow 0 27) 26) anon25_correct))))))
(let ((anon38_Then_correct  (=> (<= |n#0| |i#0@1|) (and (=> (= (ControlFlow 0 30) (- 0 32)) true) (and (=> (= (ControlFlow 0 30) (- 0 31)) |defass#x#0@0|) (=> |defass#x#0@0| (and (=> (= (ControlFlow 0 30) 27) anon41_Then_correct) (=> (= (ControlFlow 0 30) 29) anon41_Else_correct))))))))
(let ((anon21_correct  (and (=> (= (ControlFlow 0 3) (- 0 8)) true) (and (=> (= (ControlFlow 0 3) (- 0 7)) |defass#x#0@1|) (=> |defass#x#0@1| (=> (= |i#0@2| (+ |i#0@1| 1)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- |n#0| |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |n#0| |i#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (< (- |n#0| |i#0@2|) |$decr$loop#00@1|)) (=> (< (- |n#0| |i#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (=> (< 4 |i#0@2|) (= |y#0@3| |a#0|)))) (=> (=> |$w$loop#0@0| (=> (< 4 |i#0@2|) (= |y#0@3| |a#0|))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (or (= |y#0@3| |b#0|) (<= |i#0@2| |n#0|))))))))))))))))
(let ((anon40_Else_correct  (=> (or (not (= (Mod |i#0@1| (LitInt 2)) (LitInt 0))) (not true)) (=> (and (= |defass#x#0@1| |defass#x#0@0|) (= (ControlFlow 0 10) 3)) anon21_correct))))
(let ((anon40_Then_correct  (=> (= (Mod |i#0@1| (LitInt 2)) (LitInt 0)) (=> (and (= |defass#x#0@1| true) (= (ControlFlow 0 9) 3)) anon21_correct))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 11) 9) anon40_Then_correct) (=> (= (ControlFlow 0 11) 10) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (or (not (= |i#0@1| (LitInt 4))) (not true)) (=> (and (= |y#0@3| |y#0@2|) (= (ControlFlow 0 14) 11)) anon18_correct))))
(let ((anon39_Then_correct  (=> (= |i#0@1| (LitInt 4)) (=> (and (= |y#0@3| |a#0|) (= (ControlFlow 0 13) 11)) anon18_correct))))
(let ((anon38_Else_correct  (=> (and (< |i#0@1| |n#0|) (= |$decr$loop#00@1| (- |n#0| |i#0@1|))) (and (=> (= (ControlFlow 0 15) 13) anon39_Then_correct) (=> (= (ControlFlow 0 15) 14) anon39_Else_correct)))))
(let ((anon35_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 33) 30) anon38_Then_correct) (=> (= (ControlFlow 0 33) 15) anon38_Else_correct)))))
(let ((anon34_LoopBody_correct  (and (=> (= (ControlFlow 0 43) 42) anon35_Then_correct) (=> (= (ControlFlow 0 43) 33) anon35_Else_correct))))
(let ((anon34_LoopDone_correct true))
(let ((anon34_LoopHead_correct  (=> (=> |defass#lw#3_0@0| (and ($IsBox |lw#3_0@0| _module._default.Loop$G) ($IsAllocBox |lw#3_0@0| _module._default.Loop$G $Heap))) (=> (and (and (=> |defass#lx#3_0@0| (and ($IsBox |lx#3_0@0| _module._default.Loop$G) ($IsAllocBox |lx#3_0@0| _module._default.Loop$G $Heap))) (=> |defass#x#0@0| (and ($IsBox |x#0@1| _module._default.Loop$G) ($IsAllocBox |x#0@1| _module._default.Loop$G $Heap)))) (and (=> |defass#z#0@1| (and ($IsBox |z#0@1| _module._default.Loop$G) ($IsAllocBox |z#0@1| _module._default.Loop$G $Heap))) (=> |defass#y#0@0| (and ($IsBox |y#0@2| _module._default.Loop$G) ($IsAllocBox |y#0@2| _module._default.Loop$G $Heap))))) (=> (and (and (and (and (and (and (and (and (not false) true) |defass#x#0@0|) |defass#y#0@0|) (<= 0 |i#0@1|)) true) true) (=> |$w$loop#0@0| (=> (< 4 |i#0@1|) (= |y#0@2| |a#0|)))) (and (and (and (=> |$w$loop#0@0| (or (= |y#0@2| |b#0|) (<= |i#0@1| |n#0|))) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |DefiniteAssignmentdfy.199:3|
 :skolemid |3586|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |DefiniteAssignmentdfy.199:3|
 :skolemid |3587|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
)))) (and (and (=> true |defass#x#0@0|) (=> |defass#z#0@0| |defass#z#0@1|)) (and (=> true |defass#y#0@0|) (<= (- |n#0| |i#0@1|) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 44) 1) anon34_LoopDone_correct) (=> (= (ControlFlow 0 44) 43) anon34_LoopBody_correct)))))))
(let ((anon6_correct  (=> (and (= |i#0@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- |n#0| |i#0@0|))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (=> |$w$loop#0@0| (=> (< 4 |i#0@0|) (= |y#0@1| |a#0|)))) (=> (=> |$w$loop#0@0| (=> (< 4 |i#0@0|) (= |y#0@1| |a#0|))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (=> |$w$loop#0@0| (or (= |y#0@1| |b#0|) (<= |i#0@0| |n#0|)))) (=> (=> |$w$loop#0@0| (or (= |y#0@1| |b#0|) (<= |i#0@0| |n#0|))) (=> (= (ControlFlow 0 45) 44) anon34_LoopHead_correct))))))))
(let ((anon33_Else_correct  (=> (and (= |y#0@1| |b#0|) (= (ControlFlow 0 49) 45)) anon6_correct)))
(let ((anon33_Then_correct  (=> (and (= |y#0@1| |a#0|) (= (ControlFlow 0 48) 45)) anon6_correct)))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 50) 48) anon33_Then_correct) (=> (= (ControlFlow 0 50) 49) anon33_Else_correct))))
(let ((anon32_Else_correct  (=> (<= 100 |k#0|) (=> (and (= |defass#z#0@0| |defass#z#0|) (= (ControlFlow 0 52) 50)) anon3_correct))))
(let ((anon32_Then_correct  (=> (< |k#0| 100) (=> (and (= |defass#z#0@0| true) (= (ControlFlow 0 51) 50)) anon3_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (=> |defass#w#0| (and ($IsBox |w#0@0| _module._default.Loop$G) ($IsAllocBox |w#0@0| _module._default.Loop$G $Heap))) (=> |defass#x#0| (and ($IsBox |x#0@0| _module._default.Loop$G) ($IsAllocBox |x#0@0| _module._default.Loop$G $Heap)))) (and (=> |defass#y#0| (and ($IsBox |y#0@0| _module._default.Loop$G) ($IsAllocBox |y#0@0| _module._default.Loop$G $Heap))) (=> |defass#z#0| (and ($IsBox |z#0@0| _module._default.Loop$G) ($IsAllocBox |z#0@0| _module._default.Loop$G $Heap))))) (and (=> (= (ControlFlow 0 53) 51) anon32_Then_correct) (=> (= (ControlFlow 0 53) 52) anon32_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($IsBox |a#0| _module._default.Loop$G) ($IsAllocBox |a#0| _module._default.Loop$G $Heap)) (and ($IsBox |b#0| _module._default.Loop$G) ($IsAllocBox |b#0| _module._default.Loop$G $Heap))) (and (and (<= (LitInt 0) |n#0|) (=> |defass#g#0| (and ($IsBox |g#0| _module._default.Loop$G) ($IsAllocBox |g#0| _module._default.Loop$G $Heap)))) (and (=> |defass#w#0| (and ($IsBox |w#0| _module._default.Loop$G) ($IsAllocBox |w#0| _module._default.Loop$G $Heap))) true))) (=> (and (and (and (and (=> |defass#x#0| (and ($IsBox |x#0| _module._default.Loop$G) ($IsAllocBox |x#0| _module._default.Loop$G $Heap))) true) (and (=> |defass#y#0| (and ($IsBox |y#0| _module._default.Loop$G) ($IsAllocBox |y#0| _module._default.Loop$G $Heap))) true)) (and (and (=> |defass#z#0| (and ($IsBox |z#0| _module._default.Loop$G) ($IsAllocBox |z#0| _module._default.Loop$G $Heap))) true) (and (=> |defass#lw#3_0| (and ($IsBox |lw#3_0| _module._default.Loop$G) ($IsAllocBox |lw#3_0| _module._default.Loop$G $Heap))) true))) (and (and (and (=> |defass#lx#3_0| (and ($IsBox |lx#3_0| _module._default.Loop$G) ($IsAllocBox |lx#3_0| _module._default.Loop$G $Heap))) true) (and (=> |defass#t#0| (and ($IsBox |t#0| _module._default.Loop$G) ($IsAllocBox |t#0| _module._default.Loop$G $Heap))) true)) (and (and (=> |defass#t#1| (and ($IsBox |t#1| _module._default.Loop$G) ($IsAllocBox |t#1| _module._default.Loop$G $Heap))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 54) 53))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
