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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
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
 :skolemid |506|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@0| () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |b#1_0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $FunctionContextHeight () Int)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon24_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (or (exists ((|b#3| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.22:18|
 :skolemid |499|
)) (or (not (= 5 5)) (not true))))))
(let ((anon36_Else_correct  (=> (and (exists ((|b#3@@0| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.22:18|
 :skolemid |496|
)) (= (ControlFlow 0 8) 6)) anon24_correct)))
(let ((anon36_Then_correct  (=> (and (not (exists ((|b#3@@1| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.22:18|
 :skolemid |496|
))) (= (ControlFlow 0 7) 6)) anon24_correct)))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon36_Then_correct) (=> (= (ControlFlow 0 9) 8) anon36_Else_correct))))
(let ((anon35_Else_correct true))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (exists ((|b#3_1| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.20:20|
 :skolemid |495|
)) (or (not (= 4 4)) (not true)))) (=> (or (exists ((|b#3_1@@0| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.20:20|
 :skolemid |495|
)) (or (not (= 4 4)) (not true))) (and (=> (= (ControlFlow 0 11) 9) anon35_Then_correct) (=> (= (ControlFlow 0 11) 4) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (exists ((|b#3_1@@1| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.20:20|
 :skolemid |492|
)) (= (ControlFlow 0 14) 11)) anon19_correct)))
(let ((anon34_Then_correct  (=> (and (not (exists ((|b#3_1@@2| Bool) ) (! (U_2_bool (Lit boolType (bool_2_U true)))
 :qid |Snapshots5v1dfy.20:20|
 :skolemid |492|
))) (= (ControlFlow 0 13) 11)) anon19_correct)))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 15) 13) anon34_Then_correct) (=> (= (ControlFlow 0 15) 14) anon34_Else_correct))))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 10) 9) anon35_Then_correct) (=> (= (ControlFlow 0 10) 4) anon35_Else_correct))))
(let ((anon33_Else_correct true))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 16) 15) anon33_Then_correct) (=> (= (ControlFlow 0 16) 3) anon33_Else_correct))))
(let ((anon13_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (forall ((|b#1| Bool) ) (!  (or |b#1| (not |b#1|))
 :qid |Snapshots5v1dfy.13:18|
 :skolemid |491|
)) (or (not (= 3 3)) (not true)))) (=> (or (forall ((|b#1@@0| Bool) ) (!  (or |b#1@@0| (not |b#1@@0|))
 :qid |Snapshots5v1dfy.13:18|
 :skolemid |491|
)) (or (not (= 3 3)) (not true))) (and (=> (= (ControlFlow 0 17) 10) anon32_Then_correct) (=> (= (ControlFlow 0 17) 16) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (and (forall ((|b#1@@1| Bool) ) (!  (or |b#1@@1| (not |b#1@@1|))
 :qid |Snapshots5v1dfy.13:18|
 :skolemid |488|
)) (= (ControlFlow 0 20) 17)) anon13_correct)))
(let ((anon31_Then_correct  (=> (and (not (forall ((|b#1@@2| Bool) ) (!  (or |b#1@@2| (not |b#1@@2|))
 :qid |Snapshots5v1dfy.13:18|
 :skolemid |488|
))) (= (ControlFlow 0 19) 17)) anon13_correct)))
(let ((anon30_Else_correct  (=> |b#0@0| (and (=> (= (ControlFlow 0 22) 19) anon31_Then_correct) (=> (= (ControlFlow 0 22) 20) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (not |b#0@0|) (and (=> (= (ControlFlow 0 21) 19) anon31_Then_correct) (=> (= (ControlFlow 0 21) 20) anon31_Else_correct)))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 23) 21) anon30_Then_correct) (=> (= (ControlFlow 0 23) 22) anon30_Else_correct))))
(let ((anon29_Else_correct true))
(let ((anon8_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (or (forall ((|b#1@@3| Bool) ) (!  (or |b#1@@3| (not |b#1@@3|))
 :qid |Snapshots5v1dfy.27:19|
 :skolemid |504|
)) (or (not (= 2 2)) (not true)))) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0)))
 :qid |Snapshots5v1dfy.26:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 24) 23) anon29_Then_correct) (=> (= (ControlFlow 0 24) 2) anon29_Else_correct)))))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (forall ((|b#1_1| Bool) ) (!  (or |b#1_1| (not |b#1_1|))
 :qid |Snapshots5v1dfy.10:20|
 :skolemid |486|
)) (or (not (= 0 0)) (not true)))) (=> (or (forall ((|b#1_1@@0| Bool) ) (!  (or |b#1_1@@0| (not |b#1_1@@0|))
 :qid |Snapshots5v1dfy.10:20|
 :skolemid |486|
)) (or (not (= 0 0)) (not true))) (=> (= (ControlFlow 0 26) 24) anon8_correct)))))
(let ((anon28_Else_correct  (=> (and (forall ((|b#1_1@@1| Bool) ) (!  (or |b#1_1@@1| (not |b#1_1@@1|))
 :qid |Snapshots5v1dfy.10:20|
 :skolemid |483|
)) (= (ControlFlow 0 29) 26)) anon7_correct)))
(let ((anon28_Then_correct  (=> (and (not (forall ((|b#1_1@@2| Bool) ) (!  (or |b#1_1@@2| (not |b#1_1@@2|))
 :qid |Snapshots5v1dfy.10:20|
 :skolemid |483|
))) (= (ControlFlow 0 28) 26)) anon7_correct)))
(let ((anon27_Else_correct  (=> |b#1_0@0| (and (=> (= (ControlFlow 0 31) 28) anon28_Then_correct) (=> (= (ControlFlow 0 31) 29) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (not |b#1_0@0|) (and (=> (= (ControlFlow 0 30) 28) anon28_Then_correct) (=> (= (ControlFlow 0 30) 29) anon28_Else_correct)))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 32) 30) anon27_Then_correct) (=> (= (ControlFlow 0 32) 31) anon27_Else_correct))))
(let ((anon25_Then_correct  (=> (= (ControlFlow 0 25) 24) anon8_correct)))
(let ((anon26_Else_correct true))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 33) 32) anon26_Then_correct) (=> (= (ControlFlow 0 33) 1) anon26_Else_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (or (forall ((|b#1@@4| Bool) ) (!  (or |b#1@@4| (not |b#1@@4|))
 :qid |Snapshots5v1dfy.27:19|
 :skolemid |504|
)) (or (not (= 2 2)) (not true)))) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1)))
 :qid |Snapshots5v1dfy.26:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 34) 25) anon25_Then_correct) (=> (= (ControlFlow 0 34) 33) anon25_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 35) 34))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
