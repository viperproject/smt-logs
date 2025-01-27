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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Number.Zero| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Number () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.GreatestPredNat_h (T@U Int T@U) Bool)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.GreatestPredNat_h#canCall| (Int T@U) Bool)
(declare-fun _module.Number.prev (T@U) T@U)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun _module.__default.GreatestManualNat (T@U Int T@U) Bool)
(declare-fun |$IsA#_module.Number| (T@U) Bool)
(declare-fun _module.__default.RicochetNat (Int T@U) Bool)
(declare-fun |_module.__default.RicochetNat#canCall| (Int T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |_module.__default.GreatestManualNat#canCall| (Int T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Number |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$Number)
)
(assert (= (DatatypeCtorId |#_module.Number.Zero|) |##_module.Number.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Number.Zero| Tclass._module.Number))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |636|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |634|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|num#0| T@U) (|_k#0| Int) ) (!  (=> (and ($Is DatatypeTypeType |num#0| Tclass._module.Number) (= |_k#0| 0)) (_module.__default.GreatestPredNat_h $ly |_k#0| |num#0|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1245|
 :pattern ( (_module.__default.GreatestPredNat_h $ly |_k#0| |num#0|))
))))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |645|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Number.Zero_q d@@1) (= d@@1 |#_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1321|
 :pattern ( (_module.Number.Zero_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| Int) (|num#0@@0| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| (LitInt |_k#0@@0|) |num#0@@0|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@0|) ($Is DatatypeTypeType |num#0@@0| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@0|) (=> (_module.Number.Succ_q |num#0@@0|) (let ((|prev#5| (_module.Number.prev |num#0@@0|)))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@0| 1) |prev#5|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@0) (LitInt |_k#0@@0|) |num#0@@0|)  (=> (< 0 |_k#0@@0|) (ite (_module.Number.Succ_q |num#0@@0|) (let ((|prev#4| (_module.Number.prev |num#0@@0|)))
(_module.__default.GreatestPredNat_h ($LS $ly@@0) (- |_k#0@@0| 1) |prev#4|)) true)))))
 :qid |gitissue977dfy.113:20|
 :weight 3
 :skolemid |1252|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@0) (LitInt |_k#0@@0|) |num#0@@0|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Number.Succ_q d@@2) (exists ((|a#11#0#0| T@U) ) (! (= d@@2 (|#_module.Number.Succ| |a#11#0#0|))
 :qid |gitissue977dfy.48:24|
 :skolemid |1313|
)))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( (_module.Number.Succ_q d@@2))
)))
(assert (forall (($ly@@1 T@U) (|_k#0@@1| Int) (|num#0@@1| T@U) ) (! (= (_module.__default.GreatestPredNat_h ($LS $ly@@1) |_k#0@@1| |num#0@@1|) (_module.__default.GreatestPredNat_h $ly@@1 |_k#0@@1| |num#0@@1|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1247|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@1) |_k#0@@1| |num#0@@1|))
)))
(assert (forall (($ly@@2 T@U) (|k#0| Int) (|num#0@@2| T@U) ) (! (= (_module.__default.GreatestManualNat ($LS $ly@@2) |k#0| |num#0@@2|) (_module.__default.GreatestManualNat $ly@@2 |k#0| |num#0@@2|))
 :qid |gitissue977dfy.146:17|
 :skolemid |1272|
 :pattern ( (_module.__default.GreatestManualNat ($LS $ly@@2) |k#0| |num#0@@2|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#12#0#0| Tclass._module.Number))
 :qid |gitissue977dfy.48:24|
 :skolemid |1315|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| Int) (|num#0@@3| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| |_k#0@@2| |num#0@@3|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@2|) ($Is DatatypeTypeType |num#0@@3| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@2|) (=> (_module.Number.Succ_q |num#0@@3|) (let ((|prev#3| (_module.Number.prev |num#0@@3|)))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@2| 1) |prev#3|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@3) |_k#0@@2| |num#0@@3|)  (=> (< 0 |_k#0@@2|) (ite (_module.Number.Succ_q |num#0@@3|) (let ((|prev#2| (_module.Number.prev |num#0@@3|)))
(_module.__default.GreatestPredNat_h $ly@@3 (- |_k#0@@2| 1) |prev#2|)) true)))))
 :qid |gitissue977dfy.113:20|
 :skolemid |1251|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@3) |_k#0@@2| |num#0@@3|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Number| d@@3) (or (_module.Number.Succ_q d@@3) (_module.Number.Zero_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( (|$IsA#_module.Number| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Number) (or (_module.Number.Succ_q d@@4) (_module.Number.Zero_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( (_module.Number.Zero_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Number))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|k#0@@0| Int) (|n#0| T@U) ) (!  (=> (or (|_module.__default.RicochetNat#canCall| (LitInt |k#0@@0|) (Lit DatatypeTypeType |n#0|)) (and (< 3 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@0|) ($Is DatatypeTypeType |n#0| Tclass._module.Number)))) (and (|_module.__default.GreatestPredNat_h#canCall| (LitInt |k#0@@0|) (Lit DatatypeTypeType |n#0|)) (= (_module.__default.RicochetNat (LitInt |k#0@@0|) (Lit DatatypeTypeType |n#0|)) (U_2_bool (Lit boolType (bool_2_U (_module.__default.GreatestPredNat_h ($LS $LZ) (LitInt |k#0@@0|) (Lit DatatypeTypeType |n#0|))))))))
 :qid |gitissue977dfy.172:29|
 :weight 3
 :skolemid |1289|
 :pattern ( (_module.__default.RicochetNat (LitInt |k#0@@0|) (Lit DatatypeTypeType |n#0|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|k#0@@1| Int) (|n#0@@0| T@U) ) (!  (=> (or (|_module.__default.RicochetNat#canCall| |k#0@@1| |n#0@@0|) (and (< 3 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@1|) ($Is DatatypeTypeType |n#0@@0| Tclass._module.Number)))) (and (|_module.__default.GreatestPredNat_h#canCall| |k#0@@1| |n#0@@0|) (= (_module.__default.RicochetNat |k#0@@1| |n#0@@0|) (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@1| |n#0@@0|))))
 :qid |gitissue977dfy.172:29|
 :skolemid |1288|
 :pattern ( (_module.__default.RicochetNat |k#0@@1| |n#0@@0|))
))))
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
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |644|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|k#0@@2| Int) (|num#0@@4| T@U) ) (!  (=> (or (|_module.__default.GreatestManualNat#canCall| |k#0@@2| |num#0@@4|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@2|) ($Is DatatypeTypeType |num#0@@4| Tclass._module.Number)))) (and (=> (or (not (= |k#0@@2| (LitInt 0))) (not true)) (=> (_module.Number.Succ_q |num#0@@4|) (let ((|prev#1| (_module.Number.prev |num#0@@4|)))
(|_module.__default.GreatestManualNat#canCall| (- |k#0@@2| 1) |prev#1|)))) (= (_module.__default.GreatestManualNat ($LS $ly@@4) |k#0@@2| |num#0@@4|) (ite (= |k#0@@2| (LitInt 0)) true (ite (_module.Number.Succ_q |num#0@@4|) (let ((|prev#0| (_module.Number.prev |num#0@@4|)))
(_module.__default.GreatestManualNat $ly@@4 (- |k#0@@2| 1) |prev#0|)) true)))))
 :qid |gitissue977dfy.146:17|
 :skolemid |1276|
 :pattern ( (_module.__default.GreatestManualNat ($LS $ly@@4) |k#0@@2| |num#0@@4|))
))))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#_module.Number.Succ| |a#15#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1319|
 :pattern ( (|#_module.Number.Succ| |a#15#0#0|))
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
 :skolemid |1406|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Number $h))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Number $h))
)))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= |#_module.Number.Zero| (Lit DatatypeTypeType |#_module.Number.Zero|)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@3| Int) (|num#0@@5| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| (LitInt |_k#0@@3|) (Lit DatatypeTypeType |num#0@@5|)) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@3|) ($Is DatatypeTypeType |num#0@@5| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@3|) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@5|))))) (let ((|prev#7| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@5|)))))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@3| 1) |prev#7|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@5) (LitInt |_k#0@@3|) (Lit DatatypeTypeType |num#0@@5|))  (=> (< 0 |_k#0@@3|) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@5|)) (let ((|prev#6| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@5|)))))
(_module.__default.GreatestPredNat_h ($LS $ly@@5) (- |_k#0@@3| 1) |prev#6|)) true)))))
 :qid |gitissue977dfy.113:20|
 :weight 3
 :skolemid |1253|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@5) (LitInt |_k#0@@3|) (Lit DatatypeTypeType |num#0@@5|)))
))))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Number.Succ_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Number $h@@0))) ($IsAlloc DatatypeTypeType (_module.Number.prev d@@6) Tclass._module.Number $h@@0))
 :qid |unknown.0:0|
 :skolemid |1316|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number.prev d@@6) Tclass._module.Number $h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|k#0@@3| Int) (|num#0@@6| T@U) ) (!  (=> (or (|_module.__default.GreatestManualNat#canCall| (LitInt |k#0@@3|) (Lit DatatypeTypeType |num#0@@6|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@3|) ($Is DatatypeTypeType |num#0@@6| Tclass._module.Number)))) (and (=> (or (not (= (LitInt |k#0@@3|) (LitInt 0))) (not true)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@6|))))) (let ((|prev#3@@0| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@6|)))))
(|_module.__default.GreatestManualNat#canCall| (LitInt (- |k#0@@3| 1)) |prev#3@@0|)))) (= (_module.__default.GreatestManualNat ($LS $ly@@6) (LitInt |k#0@@3|) (Lit DatatypeTypeType |num#0@@6|)) (ite (= (LitInt |k#0@@3|) (LitInt 0)) true (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@6|)) (U_2_bool (let ((|prev#2@@0| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@6|)))))
(Lit boolType (bool_2_U (_module.__default.GreatestManualNat ($LS $ly@@6) (LitInt (- |k#0@@3| 1)) |prev#2@@0|))))) true)))))
 :qid |gitissue977dfy.146:17|
 :weight 3
 :skolemid |1277|
 :pattern ( (_module.__default.GreatestManualNat ($LS $ly@@6) (LitInt |k#0@@3|) (Lit DatatypeTypeType |num#0@@6|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |637|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Succ| |a#13#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1317|
 :pattern ( (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |635|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |num#0@@7| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |k#0@@4| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.About__NumNat)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Number| |num#0@@7|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#k0#0| Int) (|$ih#num0#0| T@U) ) (!  (=> (and (and (and (<= (LitInt 0) |$ih#k0#0|) ($Is DatatypeTypeType |$ih#num0#0| Tclass._module.Number)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (and (<= 0 |$ih#k0#0|) (< |$ih#k0#0| |k#0@@4|)) (and (= |$ih#k0#0| |k#0@@4|) (< (DtRank |$ih#num0#0|) (DtRank |num#0@@7|))))) (and (and (_module.__default.GreatestPredNat_h ($LS $LZ) |$ih#k0#0| |$ih#num0#0|) (_module.__default.GreatestManualNat ($LS $LZ) |$ih#k0#0| |$ih#num0#0|)) (_module.__default.RicochetNat |$ih#k0#0| |$ih#num0#0|)))
 :qid |gitissue977dfy.77:20|
 :skolemid |1203|
 :pattern ( (_module.__default.RicochetNat |$ih#k0#0| |$ih#num0#0|))
 :pattern ( (_module.__default.GreatestManualNat ($LS $LZ) |$ih#k0#0| |$ih#num0#0|))
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $LZ) |$ih#k0#0| |$ih#num0#0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#6@@0| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestPredNat_h ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#6@@0|))))))) (=> (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#6@@1| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestPredNat_h ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#6@@1|)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (not (_module.Number.Succ_q |num#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (not (_module.Number.Succ_q |num#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (= |k#0@@4| (LitInt 0)) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (= |k#0@@4| (LitInt 0)) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (or (not (= |k#0@@4| (LitInt 0))) (not true)) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#8| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestManualNat ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#8|))))))) (=> (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (or (not (= |k#0@@4| (LitInt 0))) (not true)) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#8@@0| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestManualNat ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#8@@0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (or (not (= |k#0@@4| (LitInt 0))) (not true)) (=> (not (_module.Number.Succ_q |num#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.__default.GreatestManualNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestManualNat ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (or (not (= |k#0@@4| (LitInt 0))) (not true)) (=> (not (_module.Number.Succ_q |num#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.RicochetNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.RicochetNat |k#0@@4| |num#0@@7|) (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#10| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestPredNat_h ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#10|))))))))) (=> (=> (|_module.__default.RicochetNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.RicochetNat |k#0@@4| |num#0@@7|) (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (_module.Number.Succ_q |num#0@@7|) (let ((|prev#10@@0| (_module.Number.prev |num#0@@7|)))
(_module.__default.GreatestPredNat_h ($LS ($LS $LZ)) (- |k#0@@4| 1) |prev#10@@0|)))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.RicochetNat#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.RicochetNat |k#0@@4| |num#0@@7|) (=> (|_module.__default.GreatestPredNat_h#canCall| |k#0@@4| |num#0@@7|) (or (_module.__default.GreatestPredNat_h ($LS $LZ) |k#0@@4| |num#0@@7|) (=> (< 0 |k#0@@4|) (=> (not (_module.Number.Succ_q |num#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |k#0@@4|)) (=> (and (and (and ($Is DatatypeTypeType |num#0@@7| Tclass._module.Number) ($IsAlloc DatatypeTypeType |num#0@@7| Tclass._module.Number $Heap)) (|$IsA#_module.Number| |num#0@@7|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 9) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
