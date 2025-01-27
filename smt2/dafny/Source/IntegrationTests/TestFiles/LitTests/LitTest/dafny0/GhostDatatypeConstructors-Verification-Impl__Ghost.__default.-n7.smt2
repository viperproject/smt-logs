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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Types.XY () T@U)
(declare-fun |##Types.XY.D0| () T@U)
(declare-fun |##Types.XY.G0| () T@U)
(declare-fun |##Types.XY.G1| () T@U)
(declare-fun |##Types.XY.D1| () T@U)
(declare-fun tytagFamily$XY () T@U)
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
(declare-fun |#Types.XY.G1| (Bool Real T@U) T@U)
(declare-fun Types.XY.y (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Types.XY.z (T@U) Real)
(declare-fun Types.XY.w (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Types.XY () T@U)
(declare-fun charType () T@T)
(declare-fun |#Types.XY.D1| (Real Bool) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Types.XY.D0_q (T@U) Bool)
(declare-fun Types.XY.G0_q (T@U) Bool)
(declare-fun Types.XY.G1_q (T@U) Bool)
(declare-fun Types.XY.D1_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#Types.XY.D0| (Int) T@U)
(declare-fun |#Types.XY.G0| (Bool) T@U)
(declare-fun Types.XY.x (T@U) Int)
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
(declare-fun |$IsA#Types.XY| (T@U) Bool)
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
(assert (distinct TBool TChar TInt TReal TagBool TagChar TagInt TagReal alloc Tagclass.Types.XY |##Types.XY.D0| |##Types.XY.G0| |##Types.XY.G1| |##Types.XY.D1| tytagFamily$XY)
)
(assert (forall ((|a#14#0#0| Bool) (|a#14#1#0| Real) (|a#14#2#0| T@U) ) (! (= (Types.XY.y (|#Types.XY.G1| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1072|
 :pattern ( (|#Types.XY.G1| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|a#10#0#0| Bool) (|a#10#1#0| Real) (|a#10#2#0| T@U) ) (! (= (DatatypeCtorId (|#Types.XY.G1| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##Types.XY.G1|)
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1063|
 :pattern ( (|#Types.XY.G1| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#15#0#0| Bool) (|a#15#1#0| Real) (|a#15#2#0| T@U) ) (! (= (Types.XY.z (|#Types.XY.G1| |a#15#0#0| |a#15#1#0| |a#15#2#0|)) |a#15#1#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1073|
 :pattern ( (|#Types.XY.G1| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#16#0#0| Bool) (|a#16#1#0| Real) (|a#16#2#0| T@U) ) (! (= (Types.XY.w (|#Types.XY.G1| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#2#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1074|
 :pattern ( (|#Types.XY.G1| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor charType) 4)))
(assert (forall ((|a#12#0#0| Bool) (|a#12#1#0| Real) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Types.XY.G1| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.Types.XY)  (and (and ($Is boolType (bool_2_U |a#12#0#0|) TBool) ($Is realType (real_2_U |a#12#1#0|) TReal)) ($Is charType |a#12#2#0| TChar)))
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1067|
 :pattern ( ($Is DatatypeTypeType (|#Types.XY.G1| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.Types.XY))
)))
(assert (forall ((|a#19#0#0| Real) (|a#19#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#Types.XY.D1| |a#19#0#0| |a#19#1#0|) Tclass.Types.XY)  (and ($Is realType (real_2_U |a#19#0#0|) TReal) ($Is boolType (bool_2_U |a#19#1#0|) TBool)))
 :qid |GhostDatatypeConstructorsVerificationdfy.9:10|
 :skolemid |1079|
 :pattern ( ($Is DatatypeTypeType (|#Types.XY.D1| |a#19#0#0| |a#19#1#0|) Tclass.Types.XY))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |563|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |561|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (Types.XY.D0_q d) (= (DatatypeCtorId d) |##Types.XY.D0|))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( (Types.XY.D0_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Types.XY.G0_q d@@0) (= (DatatypeCtorId d@@0) |##Types.XY.G0|))
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( (Types.XY.G0_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Types.XY.G1_q d@@1) (= (DatatypeCtorId d@@1) |##Types.XY.G1|))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( (Types.XY.G1_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Types.XY.D1_q d@@2) (= (DatatypeCtorId d@@2) |##Types.XY.D1|))
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( (Types.XY.D1_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |572|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Types.XY.G1_q d@@3) (exists ((|a#11#0#0| Bool) (|a#11#1#0| Real) (|a#11#2#0| T@U) ) (! (= d@@3 (|#Types.XY.G1| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |GhostDatatypeConstructorsVerificationdfy.8:16|
 :skolemid |1065|
)))
 :qid |unknown.0:0|
 :skolemid |1066|
 :pattern ( (Types.XY.G1_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Types.XY.D1_q d@@4) (exists ((|a#18#0#0| Real) (|a#18#1#0| Bool) ) (! (= d@@4 (|#Types.XY.D1| |a#18#0#0| |a#18#1#0|))
 :qid |GhostDatatypeConstructorsVerificationdfy.9:10|
 :skolemid |1077|
)))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( (Types.XY.D1_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (Types.XY.D0_q d@@5) (exists ((|a#1#0#0| Int) ) (! (= d@@5 (|#Types.XY.D0| |a#1#0#0|))
 :qid |GhostDatatypeConstructorsVerificationdfy.6:10|
 :skolemid |1049|
)))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( (Types.XY.D0_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (Types.XY.G0_q d@@6) (exists ((|a#6#0#0| Bool) ) (! (= d@@6 (|#Types.XY.G0| |a#6#0#0|))
 :qid |GhostDatatypeConstructorsVerificationdfy.7:16|
 :skolemid |1057|
)))
 :qid |unknown.0:0|
 :skolemid |1058|
 :pattern ( (Types.XY.G0_q d@@6))
)))
(assert (forall ((|a#22#0#0| Real) (|a#22#1#0| Bool) ) (! (= (Types.XY.y (|#Types.XY.D1| |a#22#0#0| |a#22#1#0|)) |a#22#1#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.9:10|
 :skolemid |1084|
 :pattern ( (|#Types.XY.D1| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#9#0#0| Bool) ) (! (= (Types.XY.y (|#Types.XY.G0| |a#9#0#0|)) |a#9#0#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.7:16|
 :skolemid |1062|
 :pattern ( (|#Types.XY.G0| |a#9#0#0|))
)))
(assert (forall ((|a#17#0#0| Real) (|a#17#1#0| Bool) ) (! (= (DatatypeCtorId (|#Types.XY.D1| |a#17#0#0| |a#17#1#0|)) |##Types.XY.D1|)
 :qid |GhostDatatypeConstructorsVerificationdfy.9:10|
 :skolemid |1075|
 :pattern ( (|#Types.XY.D1| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#21#0#0| Real) (|a#21#1#0| Bool) ) (! (= (Types.XY.z (|#Types.XY.D1| |a#21#0#0| |a#21#1#0|)) |a#21#0#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.9:10|
 :skolemid |1083|
 :pattern ( (|#Types.XY.D1| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#Types.XY.D0| |a#0#0#0|)) |##Types.XY.D0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.6:10|
 :skolemid |1047|
 :pattern ( (|#Types.XY.D0| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (Types.XY.x (|#Types.XY.D0| |a#4#0#0|)) |a#4#0#0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.6:10|
 :skolemid |1054|
 :pattern ( (|#Types.XY.D0| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Bool) ) (! (= (DatatypeCtorId (|#Types.XY.G0| |a#5#0#0|)) |##Types.XY.G0|)
 :qid |GhostDatatypeConstructorsVerificationdfy.7:16|
 :skolemid |1055|
 :pattern ( (|#Types.XY.G0| |a#5#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |571|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#Types.XY.D0| |a#2#0#0|) Tclass.Types.XY) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |GhostDatatypeConstructorsVerificationdfy.6:10|
 :skolemid |1051|
 :pattern ( ($Is DatatypeTypeType (|#Types.XY.D0| |a#2#0#0|) Tclass.Types.XY))
)))
(assert (forall ((|a#7#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#Types.XY.G0| |a#7#0#0|) Tclass.Types.XY) ($Is boolType (bool_2_U |a#7#0#0|) TBool))
 :qid |GhostDatatypeConstructorsVerificationdfy.7:16|
 :skolemid |1059|
 :pattern ( ($Is DatatypeTypeType (|#Types.XY.G0| |a#7#0#0|) Tclass.Types.XY))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |2776|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (Types.XY.D0_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass.Types.XY $h))) ($IsAlloc intType (int_2_U (Types.XY.x d@@7)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsAlloc intType (int_2_U (Types.XY.x d@@7)) TInt $h))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Types.XY.G0_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass.Types.XY $h@@0))) ($IsAlloc boolType (bool_2_U (Types.XY.y d@@8)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( ($IsAlloc boolType (bool_2_U (Types.XY.y d@@8)) TBool $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Types.XY.G1_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.Types.XY $h@@1))) ($IsAlloc boolType (bool_2_U (Types.XY.y d@@9)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |1068|
 :pattern ( ($IsAlloc boolType (bool_2_U (Types.XY.y d@@9)) TBool $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Types.XY.G1_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.Types.XY $h@@2))) ($IsAlloc realType (real_2_U (Types.XY.z d@@10)) TReal $h@@2))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( ($IsAlloc realType (real_2_U (Types.XY.z d@@10)) TReal $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Types.XY.G1_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.Types.XY $h@@3))) ($IsAlloc charType (Types.XY.w d@@11) TChar $h@@3))
 :qid |unknown.0:0|
 :skolemid |1070|
 :pattern ( ($IsAlloc charType (Types.XY.w d@@11) TChar $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (Types.XY.D1_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass.Types.XY $h@@4))) ($IsAlloc realType (real_2_U (Types.XY.z d@@12)) TReal $h@@4))
 :qid |unknown.0:0|
 :skolemid |1080|
 :pattern ( ($IsAlloc realType (real_2_U (Types.XY.z d@@12)) TReal $h@@4))
)))
(assert (forall ((d@@13 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (Types.XY.D1_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass.Types.XY $h@@5))) ($IsAlloc boolType (bool_2_U (Types.XY.y d@@13)) TBool $h@@5))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc boolType (bool_2_U (Types.XY.y d@@13)) TBool $h@@5))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@14 Tclass.Types.XY)) ($IsAlloc DatatypeTypeType d@@14 Tclass.Types.XY $h@@6))
 :qid |unknown.0:0|
 :skolemid |1085|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass.Types.XY $h@@6))
)))
(assert (= (Tag Tclass.Types.XY) Tagclass.Types.XY))
(assert (= (TagFamily Tclass.Types.XY) tytagFamily$XY))
(assert (forall ((d@@15 T@U) ) (!  (=> (|$IsA#Types.XY| d@@15) (or (or (or (Types.XY.D0_q d@@15) (Types.XY.G0_q d@@15)) (Types.XY.G1_q d@@15)) (Types.XY.D1_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( (|$IsA#Types.XY| d@@15))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |564|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#Types.XY.D0| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#Types.XY.D0| |a#3#0#0|)))
 :qid |GhostDatatypeConstructorsVerificationdfy.6:10|
 :skolemid |1053|
 :pattern ( (|#Types.XY.D0| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#Types.XY.G0| (U_2_bool (Lit boolType |a#8#0#0|))) (Lit DatatypeTypeType (|#Types.XY.G0| (U_2_bool |a#8#0#0|))))
 :qid |GhostDatatypeConstructorsVerificationdfy.7:16|
 :skolemid |1061|
 :pattern ( (|#Types.XY.G0| (U_2_bool (Lit boolType |a#8#0#0|))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |562|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> ($Is DatatypeTypeType d@@16 Tclass.Types.XY) (or (or (or (Types.XY.D0_q d@@16) (Types.XY.G0_q d@@16)) (Types.XY.G1_q d@@16)) (Types.XY.D1_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |1087|
 :pattern ( (Types.XY.D1_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.Types.XY))
 :pattern ( (Types.XY.G1_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.Types.XY))
 :pattern ( (Types.XY.G0_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.Types.XY))
 :pattern ( (Types.XY.D0_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.Types.XY))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |607|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc realType v@@0 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |608|
 :pattern ( ($IsAlloc realType v@@0 TReal h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |609|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@2 T@U) ) (! ($IsAlloc charType v@@2 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |610|
 :pattern ( ($IsAlloc charType v@@2 TChar h@@2))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |586|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |587|
 :pattern ( ($Is realType v@@4 TReal))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |588|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |589|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xy#0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#2#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Bool)
(declare-fun |dt_update#y#0#Z#0_0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Ghost.__default.Update0)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon5_Else_correct  (=> (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 8) (- 0 7))) false)))
(let ((anon5_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (or (Types.XY.D1_q |xy#0|) (Types.XY.G1_q |xy#0|)) (Types.XY.G0_q |xy#0|))) (=> (or (or (Types.XY.D1_q |xy#0|) (Types.XY.G1_q |xy#0|)) (Types.XY.G0_q |xy#0|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (not (Types.XY.G1_q |xy#0|)) (not (Types.XY.G0_q |xy#0|)))) (=> (and (not (Types.XY.G1_q |xy#0|)) (not (Types.XY.G0_q |xy#0|))) (=> (= |let#0_0#0#0| |xy#0|) (=> (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass.Types.XY) (= |dt_update_tmp#2#Z#0_0@0| |let#0_0#0#0|)) (=> (and (and (= |let#0_1#0#0| (U_2_bool (Lit boolType (bool_2_U true)))) ($Is boolType (bool_2_U |let#0_1#0#0|) TBool)) (and (= |dt_update#y#0#Z#0_0@0| |let#0_1#0#0|) (= (ControlFlow 0 4) (- 0 3)))) (or (Types.XY.G1_q |dt_update_tmp#2#Z#0_0@0|) (Types.XY.D1_q |dt_update_tmp#2#Z#0_0@0|)))))))))))
(let ((anon4_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (Types.XY.D0_q |xy#0|))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 2) anon4_Then_correct) (=> (= (ControlFlow 0 9) 4) anon5_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |xy#0| Tclass.Types.XY) ($IsAlloc DatatypeTypeType |xy#0| Tclass.Types.XY $Heap)) (|$IsA#Types.XY| |xy#0|)) (=> (and (and (and ($Is DatatypeTypeType |r#0| Tclass.Types.XY) ($IsAlloc DatatypeTypeType |r#0| Tclass.Types.XY $Heap)) (= 0 $FunctionContextHeight)) (and (Types.XY.G1_q |xy#0|) (= (ControlFlow 0 10) 9))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
