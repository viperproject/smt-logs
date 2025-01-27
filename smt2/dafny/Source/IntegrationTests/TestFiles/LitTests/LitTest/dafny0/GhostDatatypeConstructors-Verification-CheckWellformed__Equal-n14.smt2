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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun |##EqualitySupport.Enum.EnumA| () T@U)
(declare-fun Tagclass.EqualitySupport.Enum () T@U)
(declare-fun |##EqualitySupport.Enum.EnumB| () T@U)
(declare-fun tytagFamily$Enum () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#EqualitySupport.Enum.EnumA| () T@U)
(declare-fun |#EqualitySupport.Enum.EnumB| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.EqualitySupport.Enum () T@U)
(declare-fun |EqualitySupport.Enum#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun EqualitySupport.Enum.R (T@U) Bool)
(declare-fun |EqualitySupport.Enum.R#canCall| (T@U) Bool)
(declare-fun EqualitySupport.Enum.EnumA_q (T@U) Bool)
(declare-fun |$IsA#EqualitySupport.Enum| (T@U) Bool)
(declare-fun EqualitySupport.Enum.EnumB_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TBool TagBool alloc |##EqualitySupport.Enum.EnumA| Tagclass.EqualitySupport.Enum |##EqualitySupport.Enum.EnumB| tytagFamily$Enum)
)
(assert (= (Tag TBool) TagBool))
(assert (= (DatatypeCtorId |#EqualitySupport.Enum.EnumA|) |##EqualitySupport.Enum.EnumA|))
(assert (= (DatatypeCtorId |#EqualitySupport.Enum.EnumB|) |##EqualitySupport.Enum.EnumB|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#EqualitySupport.Enum.EnumA| Tclass.EqualitySupport.Enum))
(assert ($Is DatatypeTypeType |#EqualitySupport.Enum.EnumB| Tclass.EqualitySupport.Enum))
(assert (forall ((a T@U) (b T@U) ) (! (= (|EqualitySupport.Enum#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |2695|
 :pattern ( (|EqualitySupport.Enum#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2214|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|EqualitySupport.Enum.R#canCall| (Lit DatatypeTypeType this)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this Tclass.EqualitySupport.Enum) (not (U_2_bool (Lit boolType (bool_2_U (EqualitySupport.Enum.EnumA_q (Lit DatatypeTypeType this))))))))) (and (|$IsA#EqualitySupport.Enum| (Lit DatatypeTypeType this)) (= (EqualitySupport.Enum.R (Lit DatatypeTypeType this))  (not (|EqualitySupport.Enum#Equal| this |#EqualitySupport.Enum.EnumB|)))))
 :qid |GhostDatatypeConstructorsVerificationdfy.195:15|
 :weight 3
 :skolemid |2707|
 :pattern ( (EqualitySupport.Enum.R (Lit DatatypeTypeType this)))
))))
(assert (forall ((d T@U) ) (! (= (EqualitySupport.Enum.EnumA_q d) (= (DatatypeCtorId d) |##EqualitySupport.Enum.EnumA|))
 :qid |unknown.0:0|
 :skolemid |2685|
 :pattern ( (EqualitySupport.Enum.EnumA_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (EqualitySupport.Enum.EnumB_q d@@0) (= (DatatypeCtorId d@@0) |##EqualitySupport.Enum.EnumB|))
 :qid |unknown.0:0|
 :skolemid |2688|
 :pattern ( (EqualitySupport.Enum.EnumB_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2225|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (EqualitySupport.Enum.EnumA_q d@@1) (= d@@1 |#EqualitySupport.Enum.EnumA|))
 :qid |unknown.0:0|
 :skolemid |2686|
 :pattern ( (EqualitySupport.Enum.EnumA_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (EqualitySupport.Enum.EnumB_q d@@2) (= d@@2 |#EqualitySupport.Enum.EnumB|))
 :qid |unknown.0:0|
 :skolemid |2689|
 :pattern ( (EqualitySupport.Enum.EnumB_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#EqualitySupport.Enum| d@@3) (or (EqualitySupport.Enum.EnumA_q d@@3) (EqualitySupport.Enum.EnumB_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2691|
 :pattern ( (|$IsA#EqualitySupport.Enum| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.EqualitySupport.Enum) (or (EqualitySupport.Enum.EnumA_q d@@4) (EqualitySupport.Enum.EnumB_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2692|
 :pattern ( (EqualitySupport.Enum.EnumB_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.EqualitySupport.Enum))
 :pattern ( (EqualitySupport.Enum.EnumA_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.EqualitySupport.Enum))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (EqualitySupport.Enum.EnumA_q a@@0) (EqualitySupport.Enum.EnumA_q b@@0)) (|EqualitySupport.Enum#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |2693|
 :pattern ( (|EqualitySupport.Enum#Equal| a@@0 b@@0) (EqualitySupport.Enum.EnumA_q a@@0))
 :pattern ( (|EqualitySupport.Enum#Equal| a@@0 b@@0) (EqualitySupport.Enum.EnumA_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (EqualitySupport.Enum.EnumB_q a@@1) (EqualitySupport.Enum.EnumB_q b@@1)) (|EqualitySupport.Enum#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |2694|
 :pattern ( (|EqualitySupport.Enum#Equal| a@@1 b@@1) (EqualitySupport.Enum.EnumB_q a@@1))
 :pattern ( (|EqualitySupport.Enum#Equal| a@@1 b@@1) (EqualitySupport.Enum.EnumB_q b@@1))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2224|
 :pattern ( ($Box T@@1 x@@4))
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
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |2777|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass.EqualitySupport.Enum)) ($IsAlloc DatatypeTypeType d@@5 Tclass.EqualitySupport.Enum $h))
 :qid |unknown.0:0|
 :skolemid |2690|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.EqualitySupport.Enum $h))
)))
(assert (= (Tag Tclass.EqualitySupport.Enum) Tagclass.EqualitySupport.Enum))
(assert (= (TagFamily Tclass.EqualitySupport.Enum) tytagFamily$Enum))
(assert (= |#EqualitySupport.Enum.EnumA| (Lit DatatypeTypeType |#EqualitySupport.Enum.EnumA|)))
(assert (= |#EqualitySupport.Enum.EnumB| (Lit DatatypeTypeType |#EqualitySupport.Enum.EnumB|)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2215|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|EqualitySupport.Enum.R#canCall| this@@0) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 Tclass.EqualitySupport.Enum) (not (EqualitySupport.Enum.EnumA_q this@@0))))) (and (|$IsA#EqualitySupport.Enum| this@@0) (= (EqualitySupport.Enum.R this@@0)  (not (|EqualitySupport.Enum#Equal| this@@0 |#EqualitySupport.Enum.EnumB|)))))
 :qid |GhostDatatypeConstructorsVerificationdfy.195:15|
 :skolemid |2706|
 :pattern ( (EqualitySupport.Enum.R this@@0))
))))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2262|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2241|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$EqualitySupport.Enum.R)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (not (EqualitySupport.Enum.EnumA_q this@@1))) (=> (not (EqualitySupport.Enum.EnumA_q this@@1)) (=> (= (ControlFlow 0 3) (- 0 2)) (not (EqualitySupport.Enum.EnumA_q (Lit DatatypeTypeType |#EqualitySupport.Enum.EnumB|))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (not (EqualitySupport.Enum.EnumA_q this@@1))) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType this@@1 Tclass.EqualitySupport.Enum) ($IsAlloc DatatypeTypeType this@@1 Tclass.EqualitySupport.Enum $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
