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
(declare-fun Tagclass._module.Term () T@U)
(declare-fun |##_module.Term.S| () T@U)
(declare-fun |##_module.Term.K| () T@U)
(declare-fun |##_module.Term.Apply| () T@U)
(declare-fun tytagFamily$Term () T@U)
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
(declare-fun _module.__default.ContainsS (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ContainsS#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Term () T@U)
(declare-fun _module.Term.S_q (T@U) Bool)
(declare-fun _module.Term.K_q (T@U) Bool)
(declare-fun _module.Term.cdr (T@U) T@U)
(declare-fun _module.Term.car (T@U) T@U)
(declare-fun |#_module.Term.Apply| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Term.S| () T@U)
(declare-fun |#_module.Term.K| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Term.Apply_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Term |##_module.Term.S| |##_module.Term.K| |##_module.Term.Apply| tytagFamily$Term)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.ContainsS#canCall| |t#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0|)) (=> (not (_module.Term.K_q |t#0|)) (let ((|y#1| (_module.Term.cdr |t#0|)))
(let ((|x#1| (_module.Term.car |t#0|)))
 (and (|_module.__default.ContainsS#canCall| |x#1|) (=> (not (_module.__default.ContainsS $ly |x#1|)) (|_module.__default.ContainsS#canCall| |y#1|))))))) (= (_module.__default.ContainsS ($LS $ly) |t#0|) (ite (_module.Term.S_q |t#0|) true (ite (_module.Term.K_q |t#0|) false (let ((|y#0| (_module.Term.cdr |t#0|)))
(let ((|x#0| (_module.Term.car |t#0|)))
 (or (_module.__default.ContainsS $ly |x#0|) (_module.__default.ContainsS $ly |y#0|)))))))))
 :qid |Combinatorsdfy.333:10|
 :skolemid |746|
 :pattern ( (_module.__default.ContainsS ($LS $ly) |t#0|))
))))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term)  (and ($Is DatatypeTypeType |a#10#0#0| Tclass._module.Term) ($Is DatatypeTypeType |a#10#1#0| Tclass._module.Term)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |816|
 :pattern ( ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term))
)))
(assert (= (DatatypeCtorId |#_module.Term.S|) |##_module.Term.S|))
(assert (= (DatatypeCtorId |#_module.Term.K|) |##_module.Term.K|))
(assert ($Is DatatypeTypeType |#_module.Term.S| Tclass._module.Term))
(assert ($Is DatatypeTypeType |#_module.Term.K| Tclass._module.Term))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Term.S_q d) (= (DatatypeCtorId d) |##_module.Term.S|))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (_module.Term.S_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Term.K_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Term.K|))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (_module.Term.K_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Term.Apply_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Term.Apply|))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( (_module.Term.Apply_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Term.Apply_q d@@2) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= d@@2 (|#_module.Term.Apply| |a#9#0#0| |a#9#1#0|))
 :qid |Combinatorsdfy.14:31|
 :skolemid |814|
)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( (_module.Term.Apply_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Term.S_q d@@3) (= d@@3 |#_module.Term.S|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Term.S_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Term.K_q d@@4) (= d@@4 |#_module.Term.K|))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.Term.K_q d@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.ContainsS#canCall| (Lit DatatypeTypeType |t#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@0|)))))) (let ((|y#3| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|x#3| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@0|)))))
 (and (|_module.__default.ContainsS#canCall| |x#3|) (=> (not (_module.__default.ContainsS ($LS $ly@@0) |x#3|)) (|_module.__default.ContainsS#canCall| |y#3|))))))) (= (_module.__default.ContainsS ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@0|)) true (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@0|)) false (U_2_bool (let ((|y#2| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|x#2| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@0|)))))
(Lit boolType (bool_2_U  (or (_module.__default.ContainsS ($LS $ly@@0) |x#2|) (_module.__default.ContainsS ($LS $ly@@0) |y#2|))))))))))))
 :qid |Combinatorsdfy.333:10|
 :weight 3
 :skolemid |747|
 :pattern ( (_module.__default.ContainsS ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (forall (($ly@@1 T@U) (|t#0@@1| T@U) ) (! (= (_module.__default.ContainsS ($LS $ly@@1) |t#0@@1|) (_module.__default.ContainsS $ly@@1 |t#0@@1|))
 :qid |Combinatorsdfy.333:10|
 :skolemid |742|
 :pattern ( (_module.__default.ContainsS ($LS $ly@@1) |t#0@@1|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Term.Apply| |a#8#0#0| |a#8#1#0|)) |##_module.Term.Apply|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |812|
 :pattern ( (|#_module.Term.Apply| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (_module.Term.car (|#_module.Term.Apply| |a#12#0#0| |a#12#1#0|)) |a#12#0#0|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |820|
 :pattern ( (|#_module.Term.Apply| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= (_module.Term.cdr (|#_module.Term.Apply| |a#14#0#0| |a#14#1#0|)) |a#14#1#0|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |822|
 :pattern ( (|#_module.Term.Apply| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (< (DtRank |a#13#0#0|) (DtRank (|#_module.Term.Apply| |a#13#0#0| |a#13#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |821|
 :pattern ( (|#_module.Term.Apply| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (< (DtRank |a#15#1#0|) (DtRank (|#_module.Term.Apply| |a#15#0#0| |a#15#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |823|
 :pattern ( (|#_module.Term.Apply| |a#15#0#0| |a#15#1#0|))
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
 :skolemid |884|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass._module.Term) (or (or (_module.Term.S_q d@@5) (_module.Term.K_q d@@5)) (_module.Term.Apply_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (_module.Term.Apply_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Term))
 :pattern ( (_module.Term.K_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Term))
 :pattern ( (_module.Term.S_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Term))
)))
(assert (forall ((d@@6 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@6 Tclass._module.Term)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Term $h))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Term $h))
)))
(assert (= (Tag Tclass._module.Term) Tagclass._module.Term))
(assert (= (TagFamily Tclass._module.Term) tytagFamily$Term))
(assert (= |#_module.Term.S| (Lit DatatypeTypeType |#_module.Term.S|)))
(assert (= |#_module.Term.K| (Lit DatatypeTypeType |#_module.Term.K|)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Term.Apply_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Term $h@@0))) ($IsAlloc DatatypeTypeType (_module.Term.car d@@7) Tclass._module.Term $h@@0))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.car d@@7) Tclass._module.Term $h@@0))
)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Term.Apply_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Term $h@@1))) ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@8) Tclass._module.Term $h@@1))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@8) Tclass._module.Term $h@@1))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)) (Lit DatatypeTypeType (|#_module.Term.Apply| |a#11#0#0| |a#11#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |819|
 :pattern ( (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |y#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@2| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.ContainsS)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon8_correct true))
(let ((anon15_Else_correct  (=> (and (_module.__default.ContainsS ($LS $LZ) |x#Z#0@0|) (= (ControlFlow 0 8) 5)) anon8_correct)))
(let ((anon15_Then_correct  (=> (and (not (_module.__default.ContainsS ($LS $LZ) |x#Z#0@0|)) ($IsAlloc DatatypeTypeType |y#Z#0@0| Tclass._module.Term $Heap)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< (DtRank |y#Z#0@0|) (DtRank |t#0@@2|))) (=> (< (DtRank |y#Z#0@0|) (DtRank |t#0@@2|)) (=> (and (|_module.__default.ContainsS#canCall| |y#Z#0@0|) (= (ControlFlow 0 6) 5)) anon8_correct))))))
(let ((anon14_Then_correct  (=> (and (= |t#0@@2| (|#_module.Term.Apply| |_mcc#0#0| |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Term)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.Term) (= |let#0#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Term) (= |y#Z#0@0| |let#0#0#0|))) (and (and (= |let#1#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#1#0#0| Tclass._module.Term)) (and (= |x#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |x#Z#0@0| Tclass._module.Term $Heap)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< (DtRank |x#Z#0@0|) (DtRank |t#0@@2|))) (=> (< (DtRank |x#Z#0@0|) (DtRank |t#0@@2|)) (=> (|_module.__default.ContainsS#canCall| |x#Z#0@0|) (and (=> (= (ControlFlow 0 9) 6) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct)))))))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |t#0@@2| |#_module.Term.K|)) (not true)) (and (=> (= (ControlFlow 0 11) 9) anon14_Then_correct) (=> (= (ControlFlow 0 11) 4) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |t#0@@2| |#_module.Term.S|)) (not true)) (and (=> (= (ControlFlow 0 12) 3) anon13_Then_correct) (=> (= (ControlFlow 0 12) 11) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon11_Then_correct) (=> (= (ControlFlow 0 13) 2) anon12_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Term)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
