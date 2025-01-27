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
(declare-fun Tagclass.TerminationCheck__tricky.S () T@U)
(declare-fun |##TerminationCheck_tricky.S.S| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$S () T@U)
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
(declare-fun TerminationCheck__tricky.S.S_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.TerminationCheck__tricky.S () T@U)
(declare-fun |TerminationCheck__tricky.S#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#TerminationCheck_tricky.S.S| (Int) T@U)
(declare-fun TerminationCheck__tricky.S.x (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TerminationCheck__tricky.__default.Id (T@U T@U) T@U)
(declare-fun |TerminationCheck__tricky.__default.Id#canCall| (T@U) Bool)
(declare-fun $LS (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.TerminationCheck__tricky.S |##TerminationCheck_tricky.S.S| tytagFamily$nat tytagFamily$S)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |9083|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.TerminationCheck__tricky.S) (TerminationCheck__tricky.S.S_q d))
 :qid |unknown.0:0|
 :skolemid |9412|
 :pattern ( (TerminationCheck__tricky.S.S_q d) ($Is DatatypeTypeType d Tclass.TerminationCheck__tricky.S))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|TerminationCheck__tricky.S#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |9414|
 :pattern ( (|TerminationCheck__tricky.S#Equal| a b))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |8755|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |8753|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (TerminationCheck__tricky.S.S_q d@@0) (= (DatatypeCtorId d@@0) |##TerminationCheck_tricky.S.S|))
 :qid |unknown.0:0|
 :skolemid |9402|
 :pattern ( (TerminationCheck__tricky.S.S_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |8764|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (TerminationCheck__tricky.S.S_q d@@1) (exists ((|a#0#0#0| Int) ) (! (= d@@1 (|#TerminationCheck_tricky.S.S| |a#0#0#0|))
 :qid |DefaultParametersdfy.453:18|
 :skolemid |9404|
)))
 :qid |unknown.0:0|
 :skolemid |9405|
 :pattern ( (TerminationCheck__tricky.S.S_q d@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|TerminationCheck__tricky.S#Equal| a@@0 b@@0) (= (TerminationCheck__tricky.S.x a@@0) (TerminationCheck__tricky.S.x b@@0)))
 :qid |unknown.0:0|
 :skolemid |9413|
 :pattern ( (|TerminationCheck__tricky.S#Equal| a@@0 b@@0))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |9082|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) ) (!  (=> (or (|TerminationCheck__tricky.__default.Id#canCall| |s#0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| Tclass.TerminationCheck__tricky.S))) (and (<= (LitInt 0) (TerminationCheck__tricky.S.x (TerminationCheck__tricky.__default.Id $ly |s#0|))) ($Is DatatypeTypeType (TerminationCheck__tricky.__default.Id $ly |s#0|) Tclass.TerminationCheck__tricky.S)))
 :qid |DefaultParametersdfy.461:12|
 :skolemid |9397|
 :pattern ( (TerminationCheck__tricky.__default.Id $ly |s#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|TerminationCheck__tricky.__default.Id#canCall| (Lit DatatypeTypeType |s#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| Tclass.TerminationCheck__tricky.S))) (and (TerminationCheck__tricky.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (= (TerminationCheck__tricky.__default.Id ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|)) (Lit DatatypeTypeType |s#0@@0|))))
 :qid |DefaultParametersdfy.461:12|
 :weight 3
 :skolemid |9400|
 :pattern ( (TerminationCheck__tricky.__default.Id ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|)))
))))
(assert (forall ((|a#1#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#TerminationCheck_tricky.S.S| |a#1#0#0|) Tclass.TerminationCheck__tricky.S) ($Is intType (int_2_U |a#1#0#0|) Tclass._System.nat))
 :qid |DefaultParametersdfy.453:18|
 :skolemid |9406|
 :pattern ( ($Is DatatypeTypeType (|#TerminationCheck_tricky.S.S| |a#1#0#0|) Tclass.TerminationCheck__tricky.S))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#TerminationCheck_tricky.S.S| |a#0#0#0@@0|)) |##TerminationCheck_tricky.S.S|)
 :qid |DefaultParametersdfy.453:18|
 :skolemid |9401|
 :pattern ( (|#TerminationCheck_tricky.S.S| |a#0#0#0@@0|))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (TerminationCheck__tricky.S.x (|#TerminationCheck_tricky.S.S| |a#3#0#0|)) |a#3#0#0|)
 :qid |DefaultParametersdfy.453:18|
 :skolemid |9409|
 :pattern ( (|#TerminationCheck_tricky.S.S| |a#3#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |8763|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall (($ly@@1 T@U) (|s#0@@1| T@U) ) (! (= (TerminationCheck__tricky.__default.Id ($LS $ly@@1) |s#0@@1|) (TerminationCheck__tricky.__default.Id $ly@@1 |s#0@@1|))
 :qid |DefaultParametersdfy.461:12|
 :skolemid |9395|
 :pattern ( (TerminationCheck__tricky.__default.Id ($LS $ly@@1) |s#0@@1|))
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
 :skolemid |14282|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@2 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@2 Tclass.TerminationCheck__tricky.S)) ($IsAlloc DatatypeTypeType d@@2 Tclass.TerminationCheck__tricky.S $h@@0))
 :qid |unknown.0:0|
 :skolemid |9410|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 Tclass.TerminationCheck__tricky.S $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.TerminationCheck__tricky.S) Tagclass.TerminationCheck__tricky.S))
(assert (= (TagFamily Tclass.TerminationCheck__tricky.S) tytagFamily$S))
(assert (forall ((d@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (TerminationCheck__tricky.S.S_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.TerminationCheck__tricky.S $h@@1))) ($IsAlloc intType (int_2_U (TerminationCheck__tricky.S.x d@@3)) Tclass._System.nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |9407|
 :pattern ( ($IsAlloc intType (int_2_U (TerminationCheck__tricky.S.x d@@3)) Tclass._System.nat $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |8756|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= (|#TerminationCheck_tricky.S.S| (LitInt |a#2#0#0|)) (Lit DatatypeTypeType (|#TerminationCheck_tricky.S.S| |a#2#0#0|)))
 :qid |DefaultParametersdfy.453:18|
 :skolemid |9408|
 :pattern ( (|#TerminationCheck_tricky.S.S| (LitInt |a#2#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |8754|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|TerminationCheck__tricky.__default.Id#canCall| |s#0@@2|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@2| Tclass.TerminationCheck__tricky.S))) (and (TerminationCheck__tricky.S.S_q |s#0@@2|) (= (TerminationCheck__tricky.__default.Id ($LS $ly@@2) |s#0@@2|) |s#0@@2|)))
 :qid |DefaultParametersdfy.461:12|
 :skolemid |9399|
 :pattern ( (TerminationCheck__tricky.__default.Id ($LS $ly@@2) |s#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |s#0@@3| () T@U)
(declare-fun |let#0#0#0| () Int)
(declare-fun |n#Z#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TerminationCheck__tricky.__default.Id)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (<= (LitInt 0) (TerminationCheck__tricky.S.x (TerminationCheck__tricky.__default.Id ($LS ($LS $LZ)) |s#0@@3|))))))
(let ((anon5_Else_correct  (=> (and (and (and (TerminationCheck__tricky.S.S_q |s#0@@3|) (= |let#0#0#0| (TerminationCheck__tricky.S.x |s#0@@3|))) (and (TerminationCheck__tricky.S.S_q |s#0@@3|) ($Is intType (int_2_U |let#0#0#0|) Tclass._System.nat))) (and (and (= |n#Z#0@0| |let#0#0#0|) (= (TerminationCheck__tricky.__default.Id ($LS $LZ) |s#0@@3|) |s#0@@3|)) (and ($Is DatatypeTypeType (TerminationCheck__tricky.__default.Id ($LS $LZ) |s#0@@3|) Tclass.TerminationCheck__tricky.S) (= (ControlFlow 0 5) 4)))) GeneratedUnifiedExit_correct)))
(let ((anon5_Then_correct  (=> ($Is DatatypeTypeType (TerminationCheck__tricky.__default.Id ($LS $LZ) |s#0@@3|) Tclass.TerminationCheck__tricky.S) (=> (and ($IsAlloc DatatypeTypeType |s#0@@3| Tclass.TerminationCheck__tricky.S $Heap) (= (ControlFlow 0 2) (- 0 1))) (or (|TerminationCheck__tricky.S#Equal| |s#0@@3| |s#0@@3|) (< (DtRank |s#0@@3|) (DtRank |s#0@@3|)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 2) anon5_Then_correct) (=> (= (ControlFlow 0 6) 5) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |s#0@@3| Tclass.TerminationCheck__tricky.S)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
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
