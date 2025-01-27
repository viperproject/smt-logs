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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.NineToFive () T@U)
(declare-fun tytagFamily$NineToFive () T@U)
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
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._module.NineToFive () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(assert (distinct alloc Tagclass._module.NineToFive tytagFamily$NineToFive)
)
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
 :skolemid |717|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._module.NineToFive) Tagclass._module.NineToFive))
(assert (= (TagFamily Tclass._module.NineToFive) tytagFamily$NineToFive))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._module.NineToFive)  (and (<= (LitInt 9) (U_2_int |x#0|)) (< (U_2_int |x#0|) 17)))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($Is intType |x#0| Tclass._module.NineToFive))
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
(declare-fun |i#0_0@0| () Int)
(declare-fun |i#0_0#hi@0| () Int)
(declare-fun |n#0_0@2| () Int)
(declare-fun |n#0_0@1| () Int)
(declare-fun |i#0_0@1| () Int)
(declare-fun |$w$loop#0_0@0| () Bool)
(declare-fun |i#0_0#lo@0| () Int)
(declare-fun |i#0_0#x@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |n#0_0@0| () Int)
(declare-fun |i#1_0@0| () Int)
(declare-fun |i#1_0#lo@0| () Int)
(declare-fun |i#1_0@1| () Int)
(declare-fun |n#1_0@2| () Int)
(declare-fun |n#1_0@1| () Int)
(declare-fun |$w$loop#1_0@0| () Bool)
(declare-fun |i#1_0#hi@0| () Int)
(declare-fun |i#1_0#x@0| () Int)
(declare-fun |n#1_0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |lo#0| () Int)
(declare-fun |hi#0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.SubsetType6)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon18_Else_correct  (=> (and (or (not (= |i#0_0@0| |i#0_0#hi@0|)) (not true)) (= |n#0_0@2| (+ |n#0_0@1| 1))) (=> (and (and (= |i#0_0@1| (+ |i#0_0@0| 1)) (= (ControlFlow 0 19) (- 0 18))) |$w$loop#0_0@0|) (= |n#0_0@2| (- |i#0_0@1| 9))))))
(let ((anon18_Then_correct  (=> (and (= |i#0_0@0| |i#0_0#hi@0|) (= (ControlFlow 0 17) (- 0 16))) (= |n#0_0@1| (LitInt 7)))))
(let ((anon17_Else_correct  (=> |$w$loop#0_0@0| (and (=> (= (ControlFlow 0 20) 17) anon18_Then_correct) (=> (= (ControlFlow 0 20) 19) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 21) 15) anon17_Then_correct) (=> (= (ControlFlow 0 21) 20) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (and (and (and (and (and (and (and (not false) (<= 0 |n#0_0@1|)) (<= 9 |i#0_0@0|)) (= |i#0_0#lo@0| 9)) (= |i#0_0#hi@0| 16)) (and (<= 9 |i#0_0#x@0|) (< |i#0_0#x@0| 17))) (and (<= |i#0_0#lo@0| |i#0_0@0|) (<= |i#0_0@0| |i#0_0#hi@0|))) (and (and (=> |$w$loop#0_0@0| (= |n#0_0@1| (- |i#0_0@0| 9))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ForLoopsdfy.251:5|
 :skolemid |603|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |ForLoopsdfy.251:5|
 :skolemid |604|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))))) (and (=> (= (ControlFlow 0 22) 14) anon16_LoopDone_correct) (=> (= (ControlFlow 0 22) 21) anon16_LoopBody_correct)))))
(let ((anon15_Then_correct  (=> (= |n#0_0@0| (LitInt 0)) (=> (and (= |i#0_0#lo@0| (LitInt 9)) (= |i#0_0#hi@0| (LitInt 16))) (and (=> (= (ControlFlow 0 23) (- 0 26)) (<= |i#0_0#lo@0| |i#0_0#hi@0|)) (=> (<= |i#0_0#lo@0| |i#0_0#hi@0|) (=> (and (<= |i#0_0#lo@0| |i#0_0#x@0|) (<= |i#0_0#x@0| |i#0_0#hi@0|)) (and (=> (= (ControlFlow 0 23) (- 0 25)) ($Is intType (int_2_U |i#0_0#x@0|) Tclass._module.NineToFive)) (=> ($Is intType (int_2_U |i#0_0#x@0|) Tclass._module.NineToFive) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> |$w$loop#0_0@0| (= |n#0_0@0| (- |i#0_0#lo@0| 9)))) (=> (=> |$w$loop#0_0@0| (= |n#0_0@0| (- |i#0_0#lo@0| 9))) (=> (= (ControlFlow 0 23) 22) anon16_LoopHead_correct))))))))))))
(let ((anon21_Else_correct  (=> (and (or (not (= |i#1_0@0| |i#1_0#lo@0|)) (not true)) (= |i#1_0@1| (- |i#1_0@0| 1))) (=> (and (and (= |n#1_0@2| (+ |n#1_0@1| 1)) (= (ControlFlow 0 6) (- 0 5))) |$w$loop#1_0@0|) (= |n#1_0@2| (- 16 |i#1_0@1|))))))
(let ((anon21_Then_correct  (=> (and (= |i#1_0@0| |i#1_0#lo@0|) (= (ControlFlow 0 4) (- 0 3))) (= |n#1_0@1| (LitInt 7)))))
(let ((anon20_Else_correct  (=> |$w$loop#1_0@0| (and (=> (= (ControlFlow 0 7) 4) anon21_Then_correct) (=> (= (ControlFlow 0 7) 6) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon19_LoopBody_correct  (and (=> (= (ControlFlow 0 8) 2) anon20_Then_correct) (=> (= (ControlFlow 0 8) 7) anon20_Else_correct))))
(let ((anon19_LoopDone_correct true))
(let ((anon19_LoopHead_correct  (=> (and (and (and (and (and (and (and (not false) (<= 0 |n#1_0@1|)) (and (<= 1 |i#1_0@0|) (< |i#1_0@0| 17))) (= |i#1_0#lo@0| 9)) (= |i#1_0#hi@0| 16)) (and (<= 9 |i#1_0#x@0|) (< |i#1_0#x@0| 17))) (and (<= |i#1_0#lo@0| |i#1_0@0|) (<= |i#1_0@0| |i#1_0#hi@0|))) (and (and (=> |$w$loop#1_0@0| (= |n#1_0@1| (- 16 |i#1_0@0|))) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |ForLoopsdfy.259:5|
 :skolemid |605|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |ForLoopsdfy.259:5|
 :skolemid |606|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
))))) (and (=> (= (ControlFlow 0 9) 1) anon19_LoopDone_correct) (=> (= (ControlFlow 0 9) 8) anon19_LoopBody_correct)))))
(let ((anon15_Else_correct  (=> (= |n#1_0@0| (LitInt 0)) (=> (and (= |i#1_0#lo@0| (LitInt 9)) (= |i#1_0#hi@0| (LitInt 16))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (<= |i#1_0#lo@0| |i#1_0#hi@0|)) (=> (<= |i#1_0#lo@0| |i#1_0#hi@0|) (=> (and (<= |i#1_0#lo@0| |i#1_0#x@0|) (<= |i#1_0#x@0| |i#1_0#hi@0|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) ($Is intType (int_2_U |i#1_0#x@0|) Tclass._module.NineToFive)) (=> ($Is intType (int_2_U |i#1_0#x@0|) Tclass._module.NineToFive) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> |$w$loop#1_0@0| (= |n#1_0@0| (- 16 |i#1_0#hi@0|)))) (=> (=> |$w$loop#1_0@0| (= |n#1_0@0| (- 16 |i#1_0#hi@0|))) (=> (= (ControlFlow 0 10) 9) anon19_LoopHead_correct))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 27) 23) anon15_Then_correct) (=> (= (ControlFlow 0 27) 10) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 1 $FunctionContextHeight)) (and (<= |lo#0| |hi#0|) (= (ControlFlow 0 28) 27))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
