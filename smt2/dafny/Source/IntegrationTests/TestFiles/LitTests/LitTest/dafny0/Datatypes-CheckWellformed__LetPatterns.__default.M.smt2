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
(declare-fun Tagclass.LetPatterns.MyDt () T@U)
(declare-fun |##LetPatterns.MyDt.AAA| () T@U)
(declare-fun |##LetPatterns.MyDt.BBB| () T@U)
(declare-fun tytagFamily$MyDt () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun LetPatterns.__default.M (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |LetPatterns.__default.M#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.LetPatterns.MyDt () T@U)
(declare-fun LetPatterns.MyDt.AAA_q (T@U) Bool)
(declare-fun LetPatterns.MyDt.x (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun LetPatterns.MyDt.BBB_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#LetPatterns.MyDt.AAA| (Int) T@U)
(declare-fun |#LetPatterns.MyDt.BBB| (Int) T@U)
(declare-fun LetPatterns.MyDt.y (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass.LetPatterns.MyDt |##LetPatterns.MyDt.AAA| |##LetPatterns.MyDt.BBB| tytagFamily$MyDt)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|m#0| T@U) ) (!  (=> (or (|LetPatterns.__default.M#canCall| (Lit DatatypeTypeType |m#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |m#0| Tclass.LetPatterns.MyDt) (U_2_bool (Lit boolType (bool_2_U (LetPatterns.MyDt.AAA_q (Lit DatatypeTypeType |m#0|)))))))) (= (LetPatterns.__default.M (Lit DatatypeTypeType |m#0|)) (let ((|u#1| (LetPatterns.MyDt.x (Lit DatatypeTypeType |m#0|))))
|u#1|)))
 :qid |Datatypesdfy.366:20|
 :weight 3
 :skolemid |1251|
 :pattern ( (LetPatterns.__default.M (Lit DatatypeTypeType |m#0|)))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |681|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (LetPatterns.MyDt.AAA_q d) (= (DatatypeCtorId d) |##LetPatterns.MyDt.AAA|))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( (LetPatterns.MyDt.AAA_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (LetPatterns.MyDt.BBB_q d@@0) (= (DatatypeCtorId d@@0) |##LetPatterns.MyDt.BBB|))
 :qid |unknown.0:0|
 :skolemid |1264|
 :pattern ( (LetPatterns.MyDt.BBB_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |692|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (LetPatterns.MyDt.AAA_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#LetPatterns.MyDt.AAA| |a#1#0#0|))
 :qid |Datatypesdfy.364:23|
 :skolemid |1257|
)))
 :qid |unknown.0:0|
 :skolemid |1258|
 :pattern ( (LetPatterns.MyDt.AAA_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (LetPatterns.MyDt.BBB_q d@@2) (exists ((|a#6#0#0| Int) ) (! (= d@@2 (|#LetPatterns.MyDt.BBB| |a#6#0#0|))
 :qid |Datatypesdfy.364:37|
 :skolemid |1265|
)))
 :qid |unknown.0:0|
 :skolemid |1266|
 :pattern ( (LetPatterns.MyDt.BBB_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.LetPatterns.MyDt) (or (LetPatterns.MyDt.AAA_q d@@3) (LetPatterns.MyDt.BBB_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1273|
 :pattern ( (LetPatterns.MyDt.BBB_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.LetPatterns.MyDt))
 :pattern ( (LetPatterns.MyDt.AAA_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.LetPatterns.MyDt))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#LetPatterns.MyDt.AAA| |a#0#0#0|)) |##LetPatterns.MyDt.AAA|)
 :qid |Datatypesdfy.364:23|
 :skolemid |1255|
 :pattern ( (|#LetPatterns.MyDt.AAA| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (LetPatterns.MyDt.x (|#LetPatterns.MyDt.AAA| |a#4#0#0|)) |a#4#0#0|)
 :qid |Datatypesdfy.364:23|
 :skolemid |1262|
 :pattern ( (|#LetPatterns.MyDt.AAA| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Int) ) (! (= (DatatypeCtorId (|#LetPatterns.MyDt.BBB| |a#5#0#0|)) |##LetPatterns.MyDt.BBB|)
 :qid |Datatypesdfy.364:37|
 :skolemid |1263|
 :pattern ( (|#LetPatterns.MyDt.BBB| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (LetPatterns.MyDt.y (|#LetPatterns.MyDt.BBB| |a#9#0#0|)) |a#9#0#0|)
 :qid |Datatypesdfy.364:37|
 :skolemid |1270|
 :pattern ( (|#LetPatterns.MyDt.BBB| |a#9#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |691|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#LetPatterns.MyDt.AAA| |a#2#0#0|) Tclass.LetPatterns.MyDt) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |Datatypesdfy.364:23|
 :skolemid |1259|
 :pattern ( ($Is DatatypeTypeType (|#LetPatterns.MyDt.AAA| |a#2#0#0|) Tclass.LetPatterns.MyDt))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#LetPatterns.MyDt.BBB| |a#7#0#0|) Tclass.LetPatterns.MyDt) ($Is intType (int_2_U |a#7#0#0|) TInt))
 :qid |Datatypesdfy.364:37|
 :skolemid |1267|
 :pattern ( ($Is DatatypeTypeType (|#LetPatterns.MyDt.BBB| |a#7#0#0|) Tclass.LetPatterns.MyDt))
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
 :skolemid |2847|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass.LetPatterns.MyDt) Tagclass.LetPatterns.MyDt))
(assert (= (TagFamily Tclass.LetPatterns.MyDt) tytagFamily$MyDt))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|m#0@@0| T@U) ) (!  (=> (or (|LetPatterns.__default.M#canCall| |m#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |m#0@@0| Tclass.LetPatterns.MyDt) (LetPatterns.MyDt.AAA_q |m#0@@0|)))) (= (LetPatterns.__default.M |m#0@@0|) (let ((|u#0| (LetPatterns.MyDt.x |m#0@@0|)))
|u#0|)))
 :qid |Datatypesdfy.366:20|
 :skolemid |1250|
 :pattern ( (LetPatterns.__default.M |m#0@@0|))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |682|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((v T@U) ) (! ($Is intType v TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |706|
 :pattern ( ($Is intType v TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |m#0@@1| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$LetPatterns.__default.M)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= |let#0#0#0| |m#0@@1|) (=> (and ($Is DatatypeTypeType |let#0#0#0| Tclass.LetPatterns.MyDt) (= (ControlFlow 0 3) (- 0 2))) (LetPatterns.MyDt.AAA_q |let#0#0#0|)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (LetPatterns.MyDt.AAA_q |m#0@@1|)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |m#0@@1| Tclass.LetPatterns.MyDt)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
