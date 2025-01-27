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
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun |##_module.Number.Succ| () T@U)
(declare-fun |##_module.Number.Zero| () T@U)
(declare-fun tytagFamily$Number () T@U)
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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Number.Zero| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Number () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun _module.__default.GreatestManualOrd (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.GreatestManualOrd#canCall| (T@U T@U) Bool)
(declare-fun _module.Number.prev (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert (distinct TBool TORDINAL TagBool TagORDINAL alloc Tagclass._module.Number |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$Number)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |709|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |717|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Number.Zero|) |##_module.Number.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Number.Zero| Tclass._module.Number))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |634|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Number.Succ_q d) (= (DatatypeCtorId d) |##_module.Number.Succ|))
 :qid |unknown.0:0|
 :skolemid |1312|
 :pattern ( (_module.Number.Succ_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Number.Zero_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1320|
 :pattern ( (_module.Number.Zero_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |645|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Number.Zero_q d@@1) (= d@@1 |#_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1321|
 :pattern ( (_module.Number.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Number.Succ_q d@@2) (exists ((|a#11#0#0| T@U) ) (! (= d@@2 (|#_module.Number.Succ| |a#11#0#0|))
 :qid |gitissue977dfy.48:24|
 :skolemid |1313|
)))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( (_module.Number.Succ_q d@@2))
)))
(assert (forall (($ly T@U) (|k#0| T@U) (|num#0| T@U) ) (! (= (_module.__default.GreatestManualOrd ($LS $ly) |k#0| |num#0|) (_module.__default.GreatestManualOrd $ly |k#0| |num#0|))
 :qid |gitissue977dfy.129:17|
 :skolemid |1256|
 :pattern ( (_module.__default.GreatestManualOrd ($LS $ly) |k#0| |num#0|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |714|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |705|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#12#0#0| Tclass._module.Number))
 :qid |gitissue977dfy.48:24|
 :skolemid |1315|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|k#0@@0| T@U) (|num#0@@0| T@U) ) (!  (=> (or (|_module.__default.GreatestManualOrd#canCall| (Lit BoxType |k#0@@0|) (Lit DatatypeTypeType |num#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@0| Tclass._module.Number))) (and (=> (or (not (= (Lit BoxType |k#0@@0|) (Lit BoxType (|ORD#FromNat| 0)))) (not true)) (and (=> (U_2_bool (Lit boolType (bool_2_U (< 0 (|ORD#Offset| (Lit BoxType |k#0@@0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|))))) (let ((|prev#3| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@0|)))))
(|_module.__default.GreatestManualOrd#canCall| (Lit BoxType (|ORD#Minus| |k#0@@0| (|ORD#FromNat| 1))) |prev#3|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (< 0 (|ORD#Offset| (Lit BoxType |k#0@@0|))))))) (forall ((|m#1| T@U) ) (!  (=> (|ORD#Less| |m#1| |k#0@@0|) (|_module.__default.GreatestManualOrd#canCall| |m#1| (Lit DatatypeTypeType |num#0@@0|)))
 :qid |gitissue977dfy.138:12|
 :skolemid |1264|
 :pattern ( (_module.__default.GreatestManualOrd ($LS $ly@@0) |m#1| |num#0@@0|))
 :pattern ( (|ORD#Less| |m#1| |k#0@@0|))
))))) (= (_module.__default.GreatestManualOrd ($LS $ly@@0) (Lit BoxType |k#0@@0|) (Lit DatatypeTypeType |num#0@@0|)) (ite (= (Lit BoxType |k#0@@0|) (Lit BoxType (|ORD#FromNat| 0))) true (ite (< 0 (|ORD#Offset| (Lit BoxType |k#0@@0|))) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|)) (U_2_bool (let ((|prev#2| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@0|)))))
(Lit boolType (bool_2_U (_module.__default.GreatestManualOrd ($LS $ly@@0) (Lit BoxType (|ORD#Minus| |k#0@@0| (|ORD#FromNat| 1))) |prev#2|))))) true) (forall ((|m#1@@0| T@U) ) (!  (=> (|ORD#Less| |m#1@@0| |k#0@@0|) (_module.__default.GreatestManualOrd ($LS $ly@@0) |m#1@@0| (Lit DatatypeTypeType |num#0@@0|)))
 :qid |gitissue977dfy.138:12|
 :skolemid |1263|
 :pattern ( (_module.__default.GreatestManualOrd ($LS $ly@@0) |m#1@@0| |num#0@@0|))
 :pattern ( (|ORD#Less| |m#1@@0| |k#0@@0|))
)))))))
 :qid |gitissue977dfy.129:17|
 :weight 3
 :skolemid |1265|
 :pattern ( (_module.__default.GreatestManualOrd ($LS $ly@@0) (Lit BoxType |k#0@@0|) (Lit DatatypeTypeType |num#0@@0|)))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |708|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Number) (or (_module.Number.Succ_q d@@3) (_module.Number.Zero_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( (_module.Number.Zero_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Number))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|k#0@@1| T@U) (|num#0@@1| T@U) ) (!  (=> (or (|_module.__default.GreatestManualOrd#canCall| |k#0@@1| |num#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@1| Tclass._module.Number))) (and (=> (or (not (= |k#0@@1| (Lit BoxType (|ORD#FromNat| 0)))) (not true)) (and (=> (< 0 (|ORD#Offset| |k#0@@1|)) (=> (_module.Number.Succ_q |num#0@@1|) (let ((|prev#1| (_module.Number.prev |num#0@@1|)))
(|_module.__default.GreatestManualOrd#canCall| (|ORD#Minus| |k#0@@1| (|ORD#FromNat| 1)) |prev#1|)))) (=> (not (< 0 (|ORD#Offset| |k#0@@1|))) (forall ((|m#0| T@U) ) (!  (=> (|ORD#Less| |m#0| |k#0@@1|) (|_module.__default.GreatestManualOrd#canCall| |m#0| |num#0@@1|))
 :qid |gitissue977dfy.138:12|
 :skolemid |1261|
 :pattern ( (_module.__default.GreatestManualOrd $ly@@1 |m#0| |num#0@@1|))
 :pattern ( (|ORD#Less| |m#0| |k#0@@1|))
))))) (= (_module.__default.GreatestManualOrd ($LS $ly@@1) |k#0@@1| |num#0@@1|) (ite (= |k#0@@1| (Lit BoxType (|ORD#FromNat| 0))) true (ite (< 0 (|ORD#Offset| |k#0@@1|)) (ite (_module.Number.Succ_q |num#0@@1|) (let ((|prev#0| (_module.Number.prev |num#0@@1|)))
(_module.__default.GreatestManualOrd $ly@@1 (|ORD#Minus| |k#0@@1| (|ORD#FromNat| 1)) |prev#0|)) true) (forall ((|m#0@@0| T@U) ) (!  (=> (|ORD#Less| |m#0@@0| |k#0@@1|) (_module.__default.GreatestManualOrd $ly@@1 |m#0@@0| |num#0@@1|))
 :qid |gitissue977dfy.138:12|
 :skolemid |1260|
 :pattern ( (_module.__default.GreatestManualOrd $ly@@1 |m#0@@0| |num#0@@1|))
 :pattern ( (|ORD#Less| |m#0@@0| |k#0@@1|))
)))))))
 :qid |gitissue977dfy.129:17|
 :skolemid |1262|
 :pattern ( (_module.__default.GreatestManualOrd ($LS $ly@@1) |k#0@@1| |num#0@@1|))
))))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |704|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Succ| |a#10#0#0|)) |##_module.Number.Succ|)
 :qid |gitissue977dfy.48:24|
 :skolemid |1311|
 :pattern ( (|#_module.Number.Succ| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (_module.Number.prev (|#_module.Number.Succ| |a#14#0#0|)) |a#14#0#0|)
 :qid |gitissue977dfy.48:24|
 :skolemid |1318|
 :pattern ( (|#_module.Number.Succ| |a#14#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |644|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |707|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#_module.Number.Succ| |a#15#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1319|
 :pattern ( (|#_module.Number.Succ| |a#15#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |1406|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |706|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Number $h))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Number $h))
)))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= |#_module.Number.Zero| (Lit DatatypeTypeType |#_module.Number.Zero|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |715|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Number.Succ_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Number $h@@0))) ($IsAlloc DatatypeTypeType (_module.Number.prev d@@5) Tclass._module.Number $h@@0))
 :qid |unknown.0:0|
 :skolemid |1316|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number.prev d@@5) Tclass._module.Number $h@@0))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Succ| |a#13#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1317|
 :pattern ( (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |635|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |682|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc BoxType v@@0 TORDINAL h@@0)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |684|
 :pattern ( ($IsAlloc BoxType v@@0 TORDINAL h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |661|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is BoxType v@@2 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |663|
 :pattern ( ($Is BoxType v@@2 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |num#0@@2| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |prev#Z#0@0| () T@U)
(declare-fun |k#0@@2| () T@U)
(declare-fun |##k#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |m#2@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.GreatestManualOrd)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon19_Else_correct true))
(let ((anon19_Then_correct true))
(let ((anon18_Else_correct  (=> (or (not (= |num#0@@2| (|#_module.Number.Succ| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 16) 14) anon19_Then_correct) (=> (= (ControlFlow 0 16) 15) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (= |num#0@@2| (|#_module.Number.Succ| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Number) (= |let#0#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Number) (= |prev#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |k#0@@2|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |k#0@@2|)) (=> (and (and (= |##k#0@0| (|ORD#Minus| |k#0@@2| (|ORD#FromNat| 1))) ($IsAlloc BoxType |##k#0@0| TORDINAL $Heap)) (and ($IsAlloc DatatypeTypeType |prev#Z#0@0| Tclass._module.Number $Heap) (= (ControlFlow 0 11) (- 0 10)))) (or (|ORD#Less| |##k#0@0| |k#0@@2|) (and (= |##k#0@0| |k#0@@2|) (< (DtRank |prev#Z#0@0|) (DtRank |num#0@@2|)))))))))))))
(let ((anon17_Then_correct  (=> (< 0 (|ORD#Offset| |k#0@@2|)) (and (=> (= (ControlFlow 0 17) 11) anon18_Then_correct) (=> (= (ControlFlow 0 17) 16) anon18_Else_correct)))))
(let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (|ORD#Less| |m#2@0| |k#0@@2|)) (= (ControlFlow 0 7) 4)) anon13_correct)))
(let ((anon21_Then_correct  (=> (|ORD#Less| |m#2@0| |k#0@@2|) (=> (and ($IsAlloc BoxType |m#2@0| TORDINAL $Heap) ($IsAlloc DatatypeTypeType |num#0@@2| Tclass._module.Number $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (|ORD#Less| |m#2@0| |k#0@@2|) (and (= |m#2@0| |k#0@@2|) (< (DtRank |num#0@@2|) (DtRank |num#0@@2|))))) (=> (or (|ORD#Less| |m#2@0| |k#0@@2|) (and (= |m#2@0| |k#0@@2|) (< (DtRank |num#0@@2|) (DtRank |num#0@@2|)))) (=> (and (|_module.__default.GreatestManualOrd#canCall| |m#2@0| |num#0@@2|) (= (ControlFlow 0 5) 4)) anon13_correct)))))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 8) 5) anon21_Then_correct) (=> (= (ControlFlow 0 8) 7) anon21_Else_correct))))
(let ((anon20_Else_correct true))
(let ((anon17_Else_correct  (=> (not (< 0 (|ORD#Offset| |k#0@@2|))) (and (=> (= (ControlFlow 0 9) 8) anon20_Then_correct) (=> (= (ControlFlow 0 9) 3) anon20_Else_correct)))))
(let ((anon16_Else_correct  (=> (or (not (= |k#0@@2| (Lit BoxType (|ORD#FromNat| 0)))) (not true)) (and (=> (= (ControlFlow 0 18) 17) anon17_Then_correct) (=> (= (ControlFlow 0 18) 9) anon17_Else_correct)))))
(let ((anon16_Then_correct true))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 19) 1) anon15_Then_correct) (=> (= (ControlFlow 0 19) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 19) 18) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |num#0@@2| Tclass._module.Number)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 20) 19))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
