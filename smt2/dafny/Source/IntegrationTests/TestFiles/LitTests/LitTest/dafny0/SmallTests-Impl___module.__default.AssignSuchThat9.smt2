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
(declare-fun Tagclass._module.QuiteFinite () T@U)
(declare-fun |##_module.QuiteFinite.QQA| () T@U)
(declare-fun |##_module.QuiteFinite.QQB| () T@U)
(declare-fun |##_module.QuiteFinite.QQC| () T@U)
(declare-fun tytagFamily$QuiteFinite () T@U)
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
(declare-fun |$Eq#_module.QuiteFinite| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.QuiteFinite.QQA| () T@U)
(declare-fun |#_module.QuiteFinite.QQB| () T@U)
(declare-fun |#_module.QuiteFinite.QQC| () T@U)
(declare-fun |$PrefixEq#_module.QuiteFinite| (T@U T@U T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.QuiteFinite () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.QuiteFinite.QQA_q (T@U) Bool)
(declare-fun _module.QuiteFinite.QQB_q (T@U) Bool)
(declare-fun _module.QuiteFinite.QQC_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |$IsA#_module.QuiteFinite| (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.QuiteFinite |##_module.QuiteFinite.QQA| |##_module.QuiteFinite.QQB| |##_module.QuiteFinite.QQC| tytagFamily$QuiteFinite)
)
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#_module.QuiteFinite| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |3624|
 :pattern ( (|$Eq#_module.QuiteFinite| ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |2724|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (= (DatatypeCtorId |#_module.QuiteFinite.QQA|) |##_module.QuiteFinite.QQA|))
(assert (= (DatatypeCtorId |#_module.QuiteFinite.QQB|) |##_module.QuiteFinite.QQB|))
(assert (= (DatatypeCtorId |#_module.QuiteFinite.QQC|) |##_module.QuiteFinite.QQC|))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#_module.QuiteFinite| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |3629|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
)) (|$Eq#_module.QuiteFinite| ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |3630|
 :pattern ( (|$Eq#_module.QuiteFinite| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.QuiteFinite.QQA| Tclass._module.QuiteFinite))
(assert ($Is DatatypeTypeType |#_module.QuiteFinite.QQB| Tclass._module.QuiteFinite))
(assert ($Is DatatypeTypeType |#_module.QuiteFinite.QQC| Tclass._module.QuiteFinite))
(assert (forall ((k@@0 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) (m T@U) ) (!  (=> (and (|ORD#Less| k@@0 m) (|$PrefixEq#_module.QuiteFinite| m ($LS ly@@1) d0@@1 d1@@1)) (|$PrefixEq#_module.QuiteFinite| k@@0 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |3631|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| k@@0 ($LS ly@@1) d0@@1 d1@@1) (|$PrefixEq#_module.QuiteFinite| m ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 Tclass._module.QuiteFinite) ($Is DatatypeTypeType d1@@2 Tclass._module.QuiteFinite)) (= (|$Eq#_module.QuiteFinite| ($LS ly@@2) d0@@2 d1@@2)  (or (or (and (_module.QuiteFinite.QQA_q d0@@2) (_module.QuiteFinite.QQA_q d1@@2)) (and (_module.QuiteFinite.QQB_q d0@@2) (_module.QuiteFinite.QQB_q d1@@2))) (and (_module.QuiteFinite.QQC_q d0@@2) (_module.QuiteFinite.QQC_q d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |3622|
 :pattern ( (|$Eq#_module.QuiteFinite| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.QuiteFinite.QQA_q d) (= (DatatypeCtorId d) |##_module.QuiteFinite.QQA|))
 :qid |unknown.0:0|
 :skolemid |3613|
 :pattern ( (_module.QuiteFinite.QQA_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.QuiteFinite.QQB_q d@@0) (= (DatatypeCtorId d@@0) |##_module.QuiteFinite.QQB|))
 :qid |unknown.0:0|
 :skolemid |3615|
 :pattern ( (_module.QuiteFinite.QQB_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.QuiteFinite.QQC_q d@@1) (= (DatatypeCtorId d@@1) |##_module.QuiteFinite.QQC|))
 :qid |unknown.0:0|
 :skolemid |3617|
 :pattern ( (_module.QuiteFinite.QQC_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.QuiteFinite.QQA_q d@@2) (= d@@2 |#_module.QuiteFinite.QQA|))
 :qid |unknown.0:0|
 :skolemid |3614|
 :pattern ( (_module.QuiteFinite.QQA_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.QuiteFinite.QQB_q d@@3) (= d@@3 |#_module.QuiteFinite.QQB|))
 :qid |unknown.0:0|
 :skolemid |3616|
 :pattern ( (_module.QuiteFinite.QQB_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.QuiteFinite.QQC_q d@@4) (= d@@4 |#_module.QuiteFinite.QQC|))
 :qid |unknown.0:0|
 :skolemid |3618|
 :pattern ( (_module.QuiteFinite.QQC_q d@@4))
)))
(assert (forall ((k@@1 T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.QuiteFinite| k@@1 ($LS ly@@3) d0@@3 d1@@3) (|$PrefixEq#_module.QuiteFinite| k@@1 ly@@3 d0@@3 d1@@3)))
 :qid |unknown.0:0|
 :skolemid |3626|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| k@@1 ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.QuiteFinite| ($LS ly@@4) d0@@4 d1@@4) (|$Eq#_module.QuiteFinite| ly@@4 d0@@4 d1@@4))
 :qid |unknown.0:0|
 :skolemid |3623|
 :pattern ( (|$Eq#_module.QuiteFinite| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |2720|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (! (= (|$Eq#_module.QuiteFinite| ($LS ly@@5) d0@@5 d1@@5) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.QuiteFinite| k@@2 ($LS ly@@5) d0@@5 d1@@5)
 :qid |unknown.0:0|
 :skolemid |3627|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| k@@2 ($LS ly@@5) d0@@5 d1@@5))
)))
 :qid |unknown.0:0|
 :skolemid |3628|
 :pattern ( (|$Eq#_module.QuiteFinite| ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((o@@0 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@0 p@@0) (= o@@0 p@@0)) (|ORD#Less| p@@0 o@@0))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |2723|
 :pattern ( (|ORD#Less| o@@0 p@@0) (|ORD#Less| p@@0 o@@0))
)))
(assert (forall ((k@@3 T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@6 Tclass._module.QuiteFinite) ($Is DatatypeTypeType d1@@6 Tclass._module.QuiteFinite)) (= (|$PrefixEq#_module.QuiteFinite| k@@3 ($LS ly@@6) d0@@6 d1@@6)  (and (=> (< 0 (|ORD#Offset| k@@3)) (or (or (and (_module.QuiteFinite.QQA_q d0@@6) (_module.QuiteFinite.QQA_q d1@@6)) (and (_module.QuiteFinite.QQB_q d0@@6) (_module.QuiteFinite.QQB_q d1@@6))) (and (_module.QuiteFinite.QQC_q d0@@6) (_module.QuiteFinite.QQC_q d1@@6)))) (=> (and (or (not (= k@@3 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@3) 0)) (|$Eq#_module.QuiteFinite| ly@@6 d0@@6 d1@@6)))))
 :qid |unknown.0:0|
 :skolemid |3625|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| k@@3 ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (|ORD#Offset| o@@1))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |2719|
 :pattern ( (|ORD#Offset| o@@1))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@2 p@@1) (or (not (= o@@2 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@2) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@2 p@@1))) (=> (and (|ORD#IsNat| o@@2) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@2 p@@1) (< (|ORD#Offset| o@@2) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@2 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@2)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |2722|
 :pattern ( (|ORD#Less| o@@2 p@@1))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.QuiteFinite| d@@5) (or (or (_module.QuiteFinite.QQA_q d@@5) (_module.QuiteFinite.QQB_q d@@5)) (_module.QuiteFinite.QQC_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |3620|
 :pattern ( (|$IsA#_module.QuiteFinite| d@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
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
 :skolemid |3849|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.QuiteFinite) (or (or (_module.QuiteFinite.QQA_q d@@6) (_module.QuiteFinite.QQB_q d@@6)) (_module.QuiteFinite.QQC_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |3621|
 :pattern ( (_module.QuiteFinite.QQC_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.QuiteFinite))
 :pattern ( (_module.QuiteFinite.QQB_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.QuiteFinite))
 :pattern ( (_module.QuiteFinite.QQA_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.QuiteFinite))
)))
(assert (forall ((o@@3 T@U) ) (!  (=> (|ORD#IsNat| o@@3) (= o@@3 (|ORD#FromNat| (|ORD#Offset| o@@3))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |2721|
 :pattern ( (|ORD#Offset| o@@3))
 :pattern ( (|ORD#IsNat| o@@3))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass._module.QuiteFinite)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.QuiteFinite $h))
 :qid |unknown.0:0|
 :skolemid |3619|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.QuiteFinite $h))
)))
(assert (= (Tag Tclass._module.QuiteFinite) Tagclass._module.QuiteFinite))
(assert (= (TagFamily Tclass._module.QuiteFinite) tytagFamily$QuiteFinite))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#_module.QuiteFinite| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |3632|
 :pattern ( (|$PrefixEq#_module.QuiteFinite| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |q#1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |q#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.AssignSuchThat9)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon4_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.QuiteFinite.QQC|) Tclass._module.QuiteFinite) (and (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQC| |#_module.QuiteFinite.QQA|)) (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQC| |#_module.QuiteFinite.QQC|)))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.QuiteFinite.QQB|) Tclass._module.QuiteFinite) (and (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQB| |#_module.QuiteFinite.QQA|)) (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQB| |#_module.QuiteFinite.QQC|)))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.QuiteFinite.QQA|) Tclass._module.QuiteFinite) (and (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQA| |#_module.QuiteFinite.QQA|)) (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |#_module.QuiteFinite.QQA| |#_module.QuiteFinite.QQC|)))) (exists ((|$as#q0#0| T@U) ) (!  (and ($Is DatatypeTypeType |$as#q0#0| Tclass._module.QuiteFinite) (and (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |$as#q0#0| |#_module.QuiteFinite.QQA|)) (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |$as#q0#0| |#_module.QuiteFinite.QQC|))))
 :qid |SmallTestsdfy.671:3|
 :skolemid |3251|
))))))))
(let ((anon3_correct  (=> (and (and (|$IsA#_module.QuiteFinite| |q#1@0|) (=> (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |q#1@0| |#_module.QuiteFinite.QQA|)) (|$IsA#_module.QuiteFinite| |q#1@0|))) (= (ControlFlow 0 4) 2)) anon4_correct)))
(let ((anon6_Else_correct  (=> (and (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |q#1@0| |#_module.QuiteFinite.QQA|) (= (ControlFlow 0 6) 4)) anon3_correct)))
(let ((anon6_Then_correct  (=> (and (not (|$Eq#_module.QuiteFinite| ($LS ($LS $LZ)) |q#1@0| |#_module.QuiteFinite.QQA|)) (= (ControlFlow 0 5) 4)) anon3_correct)))
(let ((anon5_Then_correct  (=> (and ($Is DatatypeTypeType |q#1@0| Tclass._module.QuiteFinite) ($IsAlloc DatatypeTypeType |q#1@0| Tclass._module.QuiteFinite $Heap)) (and (=> (= (ControlFlow 0 7) 5) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |q#1@0| Tclass._module.QuiteFinite) ($IsAlloc DatatypeTypeType |q#1@0| Tclass._module.QuiteFinite $Heap))) (= (ControlFlow 0 3) 2)) anon4_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 7) anon5_Then_correct) (=> (= (ControlFlow 0 8) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |q#0| Tclass._module.QuiteFinite) ($IsAlloc DatatypeTypeType |q#0| Tclass._module.QuiteFinite $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
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
