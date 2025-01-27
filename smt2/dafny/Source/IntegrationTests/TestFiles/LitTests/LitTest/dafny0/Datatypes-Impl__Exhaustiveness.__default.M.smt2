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
(declare-fun Tagclass.Exhaustiveness.Color () T@U)
(declare-fun |##Exhaustiveness.Color.A| () T@U)
(declare-fun |##Exhaustiveness.Color.B| () T@U)
(declare-fun |##Exhaustiveness.Color.C| () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Exhaustiveness.Color.A| () T@U)
(declare-fun |#Exhaustiveness.Color.B| () T@U)
(declare-fun |#Exhaustiveness.Color.C| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Exhaustiveness.Color () T@U)
(declare-fun |Exhaustiveness.Color#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Exhaustiveness.Color.A_q (T@U) Bool)
(declare-fun Exhaustiveness.Color.B_q (T@U) Bool)
(declare-fun Exhaustiveness.Color.C_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$IsA#Exhaustiveness.Color| (T@U) Bool)
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
(assert (distinct alloc Tagclass.Exhaustiveness.Color |##Exhaustiveness.Color.A| |##Exhaustiveness.Color.B| |##Exhaustiveness.Color.C| tytagFamily$Color)
)
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.A|) |##Exhaustiveness.Color.A|))
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.B|) |##Exhaustiveness.Color.B|))
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.C|) |##Exhaustiveness.Color.C|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.A| Tclass.Exhaustiveness.Color))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.B| Tclass.Exhaustiveness.Color))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.C| Tclass.Exhaustiveness.Color))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Exhaustiveness.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( (|Exhaustiveness.Color#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1292|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (Exhaustiveness.Color.A_q d) (= (DatatypeCtorId d) |##Exhaustiveness.Color.A|))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( (Exhaustiveness.Color.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Exhaustiveness.Color.B_q d@@0) (= (DatatypeCtorId d@@0) |##Exhaustiveness.Color.B|))
 :qid |unknown.0:0|
 :skolemid |1886|
 :pattern ( (Exhaustiveness.Color.B_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Exhaustiveness.Color.C_q d@@1) (= (DatatypeCtorId d@@1) |##Exhaustiveness.Color.C|))
 :qid |unknown.0:0|
 :skolemid |1888|
 :pattern ( (Exhaustiveness.Color.C_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1303|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Exhaustiveness.Color.A_q d@@2) (= d@@2 |#Exhaustiveness.Color.A|))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( (Exhaustiveness.Color.A_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Exhaustiveness.Color.B_q d@@3) (= d@@3 |#Exhaustiveness.Color.B|))
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( (Exhaustiveness.Color.B_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Exhaustiveness.Color.C_q d@@4) (= d@@4 |#Exhaustiveness.Color.C|))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (Exhaustiveness.Color.C_q d@@4))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (Exhaustiveness.Color.A_q a@@0) (Exhaustiveness.Color.A_q b@@0)) (|Exhaustiveness.Color#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@0 b@@0) (Exhaustiveness.Color.A_q a@@0))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@0 b@@0) (Exhaustiveness.Color.A_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Exhaustiveness.Color.B_q a@@1) (Exhaustiveness.Color.B_q b@@1)) (|Exhaustiveness.Color#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@1 b@@1) (Exhaustiveness.Color.B_q a@@1))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@1 b@@1) (Exhaustiveness.Color.B_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Exhaustiveness.Color.C_q a@@2) (Exhaustiveness.Color.C_q b@@2)) (|Exhaustiveness.Color#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1895|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@2 b@@2) (Exhaustiveness.Color.C_q a@@2))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@2 b@@2) (Exhaustiveness.Color.C_q b@@2))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1302|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#Exhaustiveness.Color| d@@5) (or (or (Exhaustiveness.Color.A_q d@@5) (Exhaustiveness.Color.B_q d@@5)) (Exhaustiveness.Color.C_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( (|$IsA#Exhaustiveness.Color| d@@5))
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
 :skolemid |2846|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color) (or (or (Exhaustiveness.Color.A_q d@@6) (Exhaustiveness.Color.B_q d@@6)) (Exhaustiveness.Color.C_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( (Exhaustiveness.Color.C_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
 :pattern ( (Exhaustiveness.Color.B_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
 :pattern ( (Exhaustiveness.Color.A_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color)) ($IsAlloc DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color $h))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color $h))
)))
(assert (= (Tag Tclass.Exhaustiveness.Color) Tagclass.Exhaustiveness.Color))
(assert (= (TagFamily Tclass.Exhaustiveness.Color) tytagFamily$Color))
(assert (= |#Exhaustiveness.Color.A| (Lit DatatypeTypeType |#Exhaustiveness.Color.A|)))
(assert (= |#Exhaustiveness.Color.B| (Lit DatatypeTypeType |#Exhaustiveness.Color.B|)))
(assert (= |#Exhaustiveness.Color.C| (Lit DatatypeTypeType |#Exhaustiveness.Color.C|)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1293|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Exhaustiveness.__default.M)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon9_Else_correct  (=> (and (not (|Exhaustiveness.Color#Equal| |c#0| |#Exhaustiveness.Color.C|)) (= (ControlFlow 0 5) (- 0 4))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> (and (not (|Exhaustiveness.Color#Equal| |c#0| |#Exhaustiveness.Color.B|)) (|$IsA#Exhaustiveness.Color| |c#0|)) (and (=> (= (ControlFlow 0 6) 3) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (=> (and (not (|Exhaustiveness.Color#Equal| |c#0| |#Exhaustiveness.Color.A|)) (|$IsA#Exhaustiveness.Color| |c#0|)) (and (=> (= (ControlFlow 0 7) 2) anon8_Then_correct) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct)))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#Exhaustiveness.Color| |c#0|)) (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 7) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |c#0| Tclass.Exhaustiveness.Color) ($IsAlloc DatatypeTypeType |c#0| Tclass.Exhaustiveness.Color $Heap)) (|$IsA#Exhaustiveness.Color| |c#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
