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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.WithoutWarning.Color () T@U)
(declare-fun |##WithoutWarning.Color.Red| () T@U)
(declare-fun |##WithoutWarning.Color.Green| () T@U)
(declare-fun |##WithoutWarning.Color.ShadesOfGray| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#WithoutWarning.Color.Red| () T@U)
(declare-fun |#WithoutWarning.Color.Green| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.WithoutWarning.Color () T@U)
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
(declare-fun WithoutWarning.Color.Red_q (T@U) Bool)
(declare-fun WithoutWarning.Color.Green_q (T@U) Bool)
(declare-fun WithoutWarning.Color.ShadesOfGray_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#WithoutWarning.Color.ShadesOfGray| (Int) T@U)
(declare-fun WithoutWarning.Color._h1 (T@U) Int)
(declare-fun |$IsA#WithoutWarning.Color| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.WithoutWarning.Color |##WithoutWarning.Color.Red| |##WithoutWarning.Color.Green| |##WithoutWarning.Color.ShadesOfGray| tytagFamily$nat tytagFamily$Color)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#WithoutWarning.Color.Red|) |##WithoutWarning.Color.Red|))
(assert (= (DatatypeCtorId |#WithoutWarning.Color.Green|) |##WithoutWarning.Color.Green|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#WithoutWarning.Color.Red| Tclass.WithoutWarning.Color))
(assert ($Is DatatypeTypeType |#WithoutWarning.Color.Green| Tclass.WithoutWarning.Color))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |675|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |676|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |574|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |572|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (WithoutWarning.Color.Red_q d) (= (DatatypeCtorId d) |##WithoutWarning.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |1066|
 :pattern ( (WithoutWarning.Color.Red_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (WithoutWarning.Color.Green_q d@@0) (= (DatatypeCtorId d@@0) |##WithoutWarning.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |1068|
 :pattern ( (WithoutWarning.Color.Green_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (WithoutWarning.Color.ShadesOfGray_q d@@1) (= (DatatypeCtorId d@@1) |##WithoutWarning.Color.ShadesOfGray|))
 :qid |unknown.0:0|
 :skolemid |1071|
 :pattern ( (WithoutWarning.Color.ShadesOfGray_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |583|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (WithoutWarning.Color.Red_q d@@2) (= d@@2 |#WithoutWarning.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (WithoutWarning.Color.Red_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (WithoutWarning.Color.Green_q d@@3) (= d@@3 |#WithoutWarning.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( (WithoutWarning.Color.Green_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (WithoutWarning.Color.ShadesOfGray_q d@@4) (exists ((|a#9#0#0| Int) ) (! (= d@@4 (|#WithoutWarning.Color.ShadesOfGray| |a#9#0#0|))
 :qid |constructorCaseWithoutParenthesesdfy.47:47|
 :skolemid |1072|
)))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( (WithoutWarning.Color.ShadesOfGray_q d@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |667|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#10#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#WithoutWarning.Color.ShadesOfGray| |a#10#0#0|) Tclass.WithoutWarning.Color) ($Is intType (int_2_U |a#10#0#0|) Tclass._System.nat))
 :qid |constructorCaseWithoutParenthesesdfy.47:47|
 :skolemid |1074|
 :pattern ( ($Is DatatypeTypeType (|#WithoutWarning.Color.ShadesOfGray| |a#10#0#0|) Tclass.WithoutWarning.Color))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |674|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#WithoutWarning.Color.ShadesOfGray| |a#8#0#0|)) |##WithoutWarning.Color.ShadesOfGray|)
 :qid |constructorCaseWithoutParenthesesdfy.47:47|
 :skolemid |1070|
 :pattern ( (|#WithoutWarning.Color.ShadesOfGray| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (WithoutWarning.Color._h1 (|#WithoutWarning.Color.ShadesOfGray| |a#12#0#0|)) |a#12#0#0|)
 :qid |constructorCaseWithoutParenthesesdfy.47:47|
 :skolemid |1077|
 :pattern ( (|#WithoutWarning.Color.ShadesOfGray| |a#12#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |582|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#WithoutWarning.Color| d@@5) (or (or (WithoutWarning.Color.Red_q d@@5) (WithoutWarning.Color.Green_q d@@5)) (WithoutWarning.Color.ShadesOfGray_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1079|
 :pattern ( (|$IsA#WithoutWarning.Color| d@@5))
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
 :skolemid |1119|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.WithoutWarning.Color) (or (or (WithoutWarning.Color.Red_q d@@6) (WithoutWarning.Color.Green_q d@@6)) (WithoutWarning.Color.ShadesOfGray_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1080|
 :pattern ( (WithoutWarning.Color.ShadesOfGray_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.WithoutWarning.Color))
 :pattern ( (WithoutWarning.Color.Green_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.WithoutWarning.Color))
 :pattern ( (WithoutWarning.Color.Red_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.WithoutWarning.Color))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@7 Tclass.WithoutWarning.Color)) ($IsAlloc DatatypeTypeType d@@7 Tclass.WithoutWarning.Color $h@@0))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.WithoutWarning.Color $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.WithoutWarning.Color) Tagclass.WithoutWarning.Color))
(assert (= (TagFamily Tclass.WithoutWarning.Color) tytagFamily$Color))
(assert (= |#WithoutWarning.Color.Red| (Lit DatatypeTypeType |#WithoutWarning.Color.Red|)))
(assert (= |#WithoutWarning.Color.Green| (Lit DatatypeTypeType |#WithoutWarning.Color.Green|)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (WithoutWarning.Color.ShadesOfGray_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass.WithoutWarning.Color $h@@1))) ($IsAlloc intType (int_2_U (WithoutWarning.Color._h1 d@@8)) Tclass._System.nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( ($IsAlloc intType (int_2_U (WithoutWarning.Color._h1 d@@8)) Tclass._System.nat $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |575|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0| Int) ) (! (= (|#WithoutWarning.Color.ShadesOfGray| (LitInt |a#11#0#0|)) (Lit DatatypeTypeType (|#WithoutWarning.Color.ShadesOfGray| |a#11#0#0|)))
 :qid |constructorCaseWithoutParenthesesdfy.47:47|
 :skolemid |1076|
 :pattern ( (|#WithoutWarning.Color.ShadesOfGray| (LitInt |a#11#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |573|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@1| () Bool)
(declare-fun |c#0| () T@U)
(declare-fun |_mcc#0#0_0| () Int)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |anythingElse#Z#0_0@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$WithoutWarning.__default.MonochromaticMethodloop)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon10_correct  (=> (and (= |x#0@1| (ite (WithoutWarning.Color.Red_q |c#0|) (U_2_bool (Lit boolType (bool_2_U false))) (ite (WithoutWarning.Color.Green_q |c#0|) true true))) (= (ControlFlow 0 6) (- 0 5))) false)))
(let ((anon17_Then_correct  (=> (= |c#0| (|#WithoutWarning.Color.ShadesOfGray| |_mcc#0#0_0|)) (=> (and (<= (LitInt 0) |_mcc#0#0_0|) (= (ControlFlow 0 9) 6)) anon10_correct))))
(let ((anon16_Then_correct  (=> (and (= |c#0| |#WithoutWarning.Color.Green|) (= (ControlFlow 0 8) 6)) anon10_correct)))
(let ((anon15_Then_correct  (=> (= |c#0| |#WithoutWarning.Color.Red|) (=> (and (and (= |let#0_0#0#0| |c#0|) ($Is DatatypeTypeType |let#0_0#0#0| Tclass.WithoutWarning.Color)) (and (= |anythingElse#Z#0_0@0| |let#0_0#0#0|) (= (ControlFlow 0 7) 6))) anon10_correct))))
(let ((anon17_Else_correct true))
(let ((anon16_Else_correct  (=> (or (not (= |c#0| |#WithoutWarning.Color.Green|)) (not true)) (and (=> (= (ControlFlow 0 10) 9) anon17_Then_correct) (=> (= (ControlFlow 0 10) 4) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (or (not (= |c#0| |#WithoutWarning.Color.Red|)) (not true)) (and (=> (= (ControlFlow 0 11) 8) anon16_Then_correct) (=> (= (ControlFlow 0 11) 10) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U false))) (and (=> (= (ControlFlow 0 12) 7) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 13) 3) anon14_Then_correct) (=> (= (ControlFlow 0 13) 12) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_LoopBody_correct  (and (=> (= (ControlFlow 0 14) 2) anon13_Then_correct) (=> (= (ControlFlow 0 14) 13) anon13_Else_correct))))
(let ((anon12_LoopDone_correct true))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |constructorCaseWithoutParenthesesdfy.75:9|
 :skolemid |1059|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |constructorCaseWithoutParenthesesdfy.75:9|
 :skolemid |1060|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)))) (and (=> (= (ControlFlow 0 15) 1) anon12_LoopDone_correct) (=> (= (ControlFlow 0 15) 14) anon12_LoopBody_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |c#0| Tclass.WithoutWarning.Color) ($IsAlloc DatatypeTypeType |c#0| Tclass.WithoutWarning.Color $Heap)) (|$IsA#WithoutWarning.Color| |c#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 15))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
