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
(declare-fun Tagclass.A.T2 () T@U)
(declare-fun |##A.T2.C| () T@U)
(declare-fun |##A.T2.N| () T@U)
(declare-fun tytagFamily$T2 () T@U)
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
(declare-fun |#A.T2.N| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.A.T2 () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun A.T2.C_q (T@U) Bool)
(declare-fun A.T2.N_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#A.T2.C| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun A.__default.g (T@U T@U) T@U)
(declare-fun |A.__default.g#canCall| (T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun A.T2.x (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct alloc Tagclass.A.T2 |##A.T2.C| |##A.T2.N| tytagFamily$T2)
)
(assert (= (DatatypeCtorId |#A.T2.N|) |##A.T2.N|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#A.T2.N| Tclass.A.T2))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (A.T2.C_q d) (= (DatatypeCtorId d) |##A.T2.C|))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (A.T2.C_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (A.T2.N_q d@@0) (= (DatatypeCtorId d@@0) |##A.T2.N|))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (A.T2.N_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (A.T2.N_q d@@1) (= d@@1 |#A.T2.N|))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (A.T2.N_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (A.T2.C_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#A.T2.C| |a#1#0#0|))
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |553|
)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (A.T2.C_q d@@2))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#A.T2.C| |a#2#0#0|) Tclass.A.T2) ($Is DatatypeTypeType |a#2#0#0| Tclass.A.T2))
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |555|
 :pattern ( ($Is DatatypeTypeType (|#A.T2.C| |a#2#0#0|) Tclass.A.T2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) ) (!  (=> (or (|A.__default.g#canCall| |x#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0| Tclass.A.T2))) ($Is DatatypeTypeType (A.__default.g $ly |x#0|) Tclass.A.T2))
 :qid |DecreasesExportsdfy.17:18|
 :skolemid |538|
 :pattern ( (A.__default.g $ly |x#0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.A.T2) (or (A.T2.C_q d@@3) (A.T2.N_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (A.T2.N_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.A.T2))
 :pattern ( (A.T2.C_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.A.T2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|A.__default.g#canCall| (Lit DatatypeTypeType |x#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@0| Tclass.A.T2))) (and (=> (U_2_bool (Lit boolType (bool_2_U (A.T2.C_q (Lit DatatypeTypeType |x#0@@0|))))) (let ((|x'#3| (Lit DatatypeTypeType (A.T2.x (Lit DatatypeTypeType |x#0@@0|)))))
(|A.__default.g#canCall| |x'#3|))) (= (A.__default.g ($LS $ly@@0) (Lit DatatypeTypeType |x#0@@0|)) (ite (A.T2.C_q (Lit DatatypeTypeType |x#0@@0|)) (let ((|x'#2| (Lit DatatypeTypeType (A.T2.x (Lit DatatypeTypeType |x#0@@0|)))))
(Lit DatatypeTypeType (A.__default.g ($LS $ly@@0) |x'#2|))) |x#0@@0|))))
 :qid |DecreasesExportsdfy.17:18|
 :weight 3
 :skolemid |541|
 :pattern ( (A.__default.g ($LS $ly@@0) (Lit DatatypeTypeType |x#0@@0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|A.__default.g#canCall| |x#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@1| Tclass.A.T2))) (and (=> (A.T2.C_q |x#0@@1|) (let ((|x'#1| (A.T2.x |x#0@@1|)))
(|A.__default.g#canCall| |x'#1|))) (= (A.__default.g ($LS $ly@@1) |x#0@@1|) (ite (A.T2.C_q |x#0@@1|) (let ((|x'#0| (A.T2.x |x#0@@1|)))
(A.__default.g $ly@@1 |x'#0|)) |x#0@@1|))))
 :qid |DecreasesExportsdfy.17:18|
 :skolemid |540|
 :pattern ( (A.__default.g ($LS $ly@@1) |x#0@@1|))
))))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#A.T2.C| |a#0#0#0|)) |##A.T2.C|)
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |551|
 :pattern ( (|#A.T2.C| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (A.T2.x (|#A.T2.C| |a#4#0#0|)) |a#4#0#0|)
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |558|
 :pattern ( (|#A.T2.C| |a#4#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall (($ly@@2 T@U) (|x#0@@2| T@U) ) (! (= (A.__default.g ($LS $ly@@2) |x#0@@2|) (A.__default.g $ly@@2 |x#0@@2|))
 :qid |DecreasesExportsdfy.17:18|
 :skolemid |536|
 :pattern ( (A.__default.g ($LS $ly@@2) |x#0@@2|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (DtRank |a#5#0#0|) (DtRank (|#A.T2.C| |a#5#0#0|)))
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |559|
 :pattern ( (|#A.T2.C| |a#5#0#0|))
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
 :skolemid |2713|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass.A.T2)) ($IsAlloc DatatypeTypeType d@@4 Tclass.A.T2 $h))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.A.T2 $h))
)))
(assert (= (Tag Tclass.A.T2) Tagclass.A.T2))
(assert (= (TagFamily Tclass.A.T2) tytagFamily$T2))
(assert (= |#A.T2.N| (Lit DatatypeTypeType |#A.T2.N|)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (A.T2.C_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.A.T2 $h@@0))) ($IsAlloc DatatypeTypeType (A.T2.x d@@5) Tclass.A.T2 $h@@0))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc DatatypeTypeType (A.T2.x d@@5) Tclass.A.T2 $h@@0))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#A.T2.C| (Lit DatatypeTypeType |a#3#0#0|)) (Lit DatatypeTypeType (|#A.T2.C| |a#3#0#0|)))
 :qid |DecreasesExportsdfy.13:19|
 :skolemid |557|
 :pattern ( (|#A.T2.C| (Lit DatatypeTypeType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |x'#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$A.__default.g)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (=> (or (not (= |x#0@@3| (|#A.T2.C| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (= |x#0@@3| (|#A.T2.C| |_mcc#0#0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0| Tclass.A.T2) (= |let#0#0#0| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass.A.T2) (= |x'#Z#0@0| |let#0#0#0|)) (and ($IsAlloc DatatypeTypeType |x'#Z#0@0| Tclass.A.T2 $Heap) (= (ControlFlow 0 3) (- 0 2)))) (< (DtRank |x'#Z#0@0|) (DtRank |x#0@@3|)))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |x#0@@3| Tclass.A.T2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
