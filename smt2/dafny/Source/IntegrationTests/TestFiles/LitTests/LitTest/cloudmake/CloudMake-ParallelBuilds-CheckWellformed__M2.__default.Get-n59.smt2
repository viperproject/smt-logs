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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M2.WFCertificate () T@U)
(declare-fun |##M2.WFCertificate.Cert| () T@U)
(declare-fun tytagFamily$WFCertificate () T@U)
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
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.M2.Path () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#M2.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun Tclass.M2.WFCertificate () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.__default.GetCert (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M2.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M2.__default.WellFounded (T@U) Bool)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun |$let#3_c| (T@U) T@U)
(declare-fun M2.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |M2.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun M2.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |M2.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun M2.WFCertificate.p (T@U) T@U)
(declare-fun M2.__default.LocInv__Deps (T@U) T@U)
(declare-fun |M2.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun M2.WFCertificate.certs (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TagSet alloc Tagclass.M2.WFCertificate |##M2.WFCertificate.Cert| tytagFamily$WFCertificate)
)
(assert ($AlwaysAllocated Tclass.M2.Path))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SetType) 4)))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate)  (and ($IsBox |a#2#0#0| Tclass.M2.Path) ($Is SetType |a#2#1#0| (TSet Tclass.M2.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4664|
 :pattern ( ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (|p#0| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($IsBox |p#0| Tclass.M2.Path)) (M2.__default.WellFounded |p#0|)))) (and (|$let#3$canCall| |p#0|) (= (M2.__default.GetCert |p#0|) (let ((|c#0| (|$let#3_c| |p#0|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |3797|
 :pattern ( (M2.__default.GetCert |p#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.M2.WFCertificate) (M2.WFCertificate.Cert_q d))
 :qid |unknown.0:0|
 :skolemid |4673|
 :pattern ( (M2.WFCertificate.Cert_q d) ($Is DatatypeTypeType d Tclass.M2.WFCertificate))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| |p#0@@0|) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@0| Tclass.M2.Path))) (and (forall ((|cert#0| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| |p#0@@0| |cert#0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3532|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0|))
)) (= (M2.__default.WellFounded |p#0@@0|) (exists ((|cert#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3531|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |3533|
 :pattern ( (M2.__default.WellFounded |p#0@@0|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M2.WFCertificate.Cert_q d@@0) (= (DatatypeCtorId d@@0) |##M2.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |4661|
 :pattern ( (M2.WFCertificate.Cert_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M2.WFCertificate.Cert_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#M2.WFCertificate.Cert| |a#1#0#0| |a#1#1#0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4662|
)))
 :qid |unknown.0:0|
 :skolemid |4663|
 :pattern ( (M2.WFCertificate.Cert_q d@@1))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2843|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2844|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#3$canCall| p) (and ($Is DatatypeTypeType (|$let#3_c| p) Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) p (|$let#3_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |3796|
 :pattern ( (|$let#3_c| p))
)))
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@1| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| (Lit BoxType |p#0@@1|)) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@1| Tclass.M2.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@1|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3535|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@1| |cert#1|))
)) (= (M2.__default.WellFounded (Lit BoxType |p#0@@1|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@1|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3534|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@1| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |3536|
 :pattern ( (M2.__default.WellFounded (Lit BoxType |p#0@@1|)))
))))
(assert (forall (($ly T@U) (|p#0@@2| T@U) (|cert#0@@1| T@U) ) (! (= (M2.__default.CheckWellFounded ($LS $ly) |p#0@@2| |cert#0@@1|) (M2.__default.CheckWellFounded $ly |p#0@@2| |cert#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3541|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly) |p#0@@2| |cert#0@@1|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|p#0@@3| T@U) (|cert#0@@2| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@3| (Lit DatatypeTypeType |cert#0@@2|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@3| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@2| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@2|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@2|))) |p#0@@3|) (and (forall ((|d#1| T@U) ) (!  (=> ($IsBox |d#1| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@3|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1|) (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@2|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@2|))) ($Box DatatypeTypeType |c#2|)) (M2.WFCertificate.Cert_q |c#2|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3557|
 :pattern ( (M2.WFCertificate.p |c#2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@2|) ($Box DatatypeTypeType |c#2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3558|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1|))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($IsBox |d#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1@@0|) (exists ((|c#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@2|))) ($Box DatatypeTypeType |c#2@@0|)) (= (M2.WFCertificate.p |c#2@@0|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3560|
 :pattern ( (M2.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@2|) ($Box DatatypeTypeType |c#2@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3561|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1@@0|))
)) (forall ((|c#3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@2|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@2|))) ($Box DatatypeTypeType |c#3|)) (and (M2.WFCertificate.Cert_q |c#3|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#3|) |c#3|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3559|
 :pattern ( (M2.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@2|) ($Box DatatypeTypeType |c#3|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@0) |p#0@@3| (Lit DatatypeTypeType |cert#0@@2|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@2|))) |p#0@@3|) (forall ((|d#1@@1| T@U) ) (!  (=> ($IsBox |d#1@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1@@1|) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@2|))) ($Box DatatypeTypeType |c#2@@1|)) (= (M2.WFCertificate.p |c#2@@1|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3554|
 :pattern ( (M2.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@2|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3555|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@3|) |d#1@@1|))
))) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@2|))) ($Box DatatypeTypeType |c#3@@0|)) (M2.__default.CheckWellFounded ($LS $ly@@0) (M2.WFCertificate.p |c#3@@0|) |c#3@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3556|
 :pattern ( (M2.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@2|) ($Box DatatypeTypeType |c#3@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3562|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@0) |p#0@@3| (Lit DatatypeTypeType |cert#0@@2|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M2.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.M2.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($IsBox bx@@0 Tclass.M2.WFCertificate))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@4| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| (Lit BoxType |p#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($IsBox |p#0@@4| Tclass.M2.Path)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@4|)))))))) (and (|$let#3$canCall| (Lit BoxType |p#0@@4|)) (= (M2.__default.GetCert (Lit BoxType |p#0@@4|)) (let ((|c#1| (|$let#3_c| (Lit BoxType |p#0@@4|))))
|c#1|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |3798|
 :pattern ( (M2.__default.GetCert (Lit BoxType |p#0@@4|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@5| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0@@5|) (and (< 3 $FunctionContextHeight) (and ($IsBox |p#0@@5| Tclass.M2.Path) (M2.__default.WellFounded |p#0@@5|)))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@5| (M2.__default.GetCert |p#0@@5|)) ($Is DatatypeTypeType (M2.__default.GetCert |p#0@@5|) Tclass.M2.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |3794|
 :pattern ( (M2.__default.GetCert |p#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|p#0@@6| T@U) (|cert#0@@3| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@6|) (Lit DatatypeTypeType |cert#0@@3|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@6| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@3|))) (Lit BoxType |p#0@@6|)) (and (forall ((|d#2| T@U) ) (!  (=> ($IsBox |d#2| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@6|)) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@6|)) |d#2|) (forall ((|c#4| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4|)) (M2.WFCertificate.Cert_q |c#4|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3566|
 :pattern ( (M2.WFCertificate.p |c#4|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3567|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@6|) |d#2|))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($IsBox |d#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@6|)) |d#2@@0|) (exists ((|c#4@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4@@0|)) (= (M2.WFCertificate.p |c#4@@0|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3569|
 :pattern ( (M2.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3570|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@6|) |d#2@@0|))
)) (forall ((|c#5| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#5|)) (and (M2.WFCertificate.Cert_q |c#5|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#5|) |c#5|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3568|
 :pattern ( (M2.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#5|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@1) (Lit BoxType |p#0@@6|) (Lit DatatypeTypeType |cert#0@@3|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@3|))) (Lit BoxType |p#0@@6|)) (forall ((|d#2@@1| T@U) ) (!  (=> ($IsBox |d#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@6|)) |d#2@@1|) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4@@1|)) (= (M2.WFCertificate.p |c#4@@1|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3563|
 :pattern ( (M2.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3564|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@6|) |d#2@@1|))
))) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#5@@0|)) (M2.__default.CheckWellFounded ($LS $ly@@1) (M2.WFCertificate.p |c#5@@0|) |c#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3565|
 :pattern ( (M2.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#5@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3571|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@1) (Lit BoxType |p#0@@6|) (Lit DatatypeTypeType |cert#0@@3|)))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2835|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |2876|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |2877|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2864|
 :pattern ( (|Set#IsMember| v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2865|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.WFCertificate.Cert| |a#0#0#0| |a#0#1#0|)) |##M2.WFCertificate.Cert|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4660|
 :pattern ( (|#M2.WFCertificate.Cert| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (M2.WFCertificate.p (|#M2.WFCertificate.Cert| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4668|
 :pattern ( (|#M2.WFCertificate.Cert| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (M2.WFCertificate.certs (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4669|
 :pattern ( (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2798|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2799|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@7| T@U) (|cert#0@@4| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@7| |cert#0@@4|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@7| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@4| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q |cert#0@@4|) (=> (= (M2.WFCertificate.p |cert#0@@4|) |p#0@@7|) (and (forall ((|d#0| T@U) ) (!  (=> ($IsBox |d#0| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@7|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0|) (forall ((|c#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@4|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@0|)) (M2.WFCertificate.Cert_q |c#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3548|
 :pattern ( (M2.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3549|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0|))
)) (=> (forall ((|d#0@@0| T@U) ) (!  (=> ($IsBox |d#0@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0@@0|) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@1|)) (= (M2.WFCertificate.p |c#0@@1|) |d#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3551|
 :pattern ( (M2.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3552|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0@@0|))
)) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@4|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#1@@0|)) (and (M2.WFCertificate.Cert_q |c#1@@0|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#1@@0|) |c#1@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3550|
 :pattern ( (M2.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#1@@0|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@2) |p#0@@7| |cert#0@@4|)  (and (and (= (M2.WFCertificate.p |cert#0@@4|) |p#0@@7|) (forall ((|d#0@@1| T@U) ) (!  (=> ($IsBox |d#0@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0@@1|) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@2|)) (= (M2.WFCertificate.p |c#0@@2|) |d#0@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3545|
 :pattern ( (M2.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3546|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@7|) |d#0@@1|))
))) (forall ((|c#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#1@@1|)) (M2.__default.CheckWellFounded $ly@@2 (M2.WFCertificate.p |c#1@@1|) |c#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3547|
 :pattern ( (M2.WFCertificate.p |c#1@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#1@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3553|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@2) |p#0@@7| |cert#0@@4|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@8| T@U) ) (!  (=> (or (|M2.__default.LocInv__Deps#canCall| |p#0@@8|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@8| Tclass.M2.Path))) ($Is SetType (M2.__default.LocInv__Deps |p#0@@8|) (TSet Tclass.M2.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |3814|
 :pattern ( (M2.__default.LocInv__Deps |p#0@@8|))
))))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7213|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (d@@2 T@U) ) (!  (=> (|Set#IsMember| |a#6#1#0| ($Box DatatypeTypeType d@@2)) (< (DtRank d@@2) (DtRank (|#M2.WFCertificate.Cert| |a#6#0#0| |a#6#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4670|
 :pattern ( (|Set#IsMember| |a#6#1#0| ($Box DatatypeTypeType d@@2)) (|#M2.WFCertificate.Cert| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@3 Tclass.M2.WFCertificate)) ($IsAlloc DatatypeTypeType d@@3 Tclass.M2.WFCertificate $h))
 :qid |unknown.0:0|
 :skolemid |4671|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass.M2.WFCertificate $h))
)))
(assert (= (Tag Tclass.M2.WFCertificate) Tagclass.M2.WFCertificate))
(assert (= (TagFamily Tclass.M2.WFCertificate) tytagFamily$WFCertificate))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (M2.WFCertificate.Cert_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.M2.WFCertificate $h@@0))) ($IsAllocBox (M2.WFCertificate.p d@@4) Tclass.M2.Path $h@@0))
 :qid |unknown.0:0|
 :skolemid |4665|
 :pattern ( ($IsAllocBox (M2.WFCertificate.p d@@4) Tclass.M2.Path $h@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0|) (Lit SetType |a#3#1#0|)) (Lit DatatypeTypeType (|#M2.WFCertificate.Cert| |a#3#0#0| |a#3#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4667|
 :pattern ( (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0|) (Lit SetType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (M2.WFCertificate.Cert_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.M2.WFCertificate $h@@1))) ($IsAlloc SetType (M2.WFCertificate.certs d@@5) (TSet Tclass.M2.WFCertificate) $h@@1))
 :qid |unknown.0:0|
 :skolemid |4666|
 :pattern ( ($IsAlloc SetType (M2.WFCertificate.certs d@@5) (TSet Tclass.M2.WFCertificate) $h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |p#0@@9| () T@U)
(declare-fun |c#4@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M2.__default.GetCert)
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
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (= (M2.WFCertificate.p (M2.__default.GetCert |p#0@@9|)) |p#0@@9|)))) (=> (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (= (M2.WFCertificate.p (M2.__default.GetCert |p#0@@9|)) |p#0@@9|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (forall ((|d#0@@2| T@U) ) (!  (=> ($IsBox |d#0@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@9|) |d#0@@2|) (exists ((|c#2@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#2@@2|)) (= (M2.WFCertificate.p |c#2@@2|) |d#0@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3799|
 :pattern ( (M2.WFCertificate.p |c#2@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#2@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3800|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@9|) |d#0@@2|))
))))) (=> (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (forall ((|d#0@@3| T@U) ) (!  (=> ($IsBox |d#0@@3| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@9|) |d#0@@3|) (exists ((|c#2@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#2@@3|)) (= (M2.WFCertificate.p |c#2@@3|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3799|
 :pattern ( (M2.WFCertificate.p |c#2@@3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#2@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3800|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@9|) |d#0@@3|))
)))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| (M2.__default.GetCert |p#0@@9|)) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#3@@1|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3801|
 :pattern ( (M2.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs (M2.__default.GetCert |p#0@@9|)) ($Box DatatypeTypeType |c#3@@1|)))
)))))))))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (exists ((|c#5@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#5@@1| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| |c#5@@1|))
 :qid |CloudMakeParallelBuildsdfy.631:9|
 :skolemid |3811|
))) (=> (exists ((|c#5@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#5@@2| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| |c#5@@2|))
 :qid |CloudMakeParallelBuildsdfy.631:9|
 :skolemid |3811|
)) (=> (and (and (and ($Is DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate $Heap@@1)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| |c#4@0|)) (and (and (|$let#3$canCall| |p#0@@9|) (= (M2.__default.GetCert |p#0@@9|) |c#4@0|)) (and ($Is DatatypeTypeType (M2.__default.GetCert |p#0@@9|) Tclass.M2.WFCertificate) (= (ControlFlow 0 8) 5)))) GeneratedUnifiedExit_correct)))))
(let ((anon8_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate $Heap@@1))) (= (ControlFlow 0 11) 8)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and ($Is DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate $Heap@@1)) (=> (and (and ($IsAllocBox |p#0@@9| Tclass.M2.Path $Heap@@1) ($IsAlloc DatatypeTypeType |c#4@0| Tclass.M2.WFCertificate $Heap@@1)) (and (|M2.__default.CheckWellFounded#canCall| |p#0@@9| |c#4@0|) (= (ControlFlow 0 10) 8))) anon5_correct))))
(let ((anon7_Then_correct  (=> ($Is DatatypeTypeType (M2.__default.GetCert |p#0@@9|) Tclass.M2.WFCertificate) (=> (and ($IsAllocBox |p#0@@9| Tclass.M2.Path $Heap@@1) ($IsAllocBox |p#0@@9| Tclass.M2.Path $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M2.__default.WellFounded#canCall| |p#0@@9|) (or (M2.__default.WellFounded |p#0@@9|) (exists ((|cert#0@@5| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@5| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| |cert#0@@5|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3807|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@9| |cert#0@@5|))
))))) (=> (and (M2.__default.WellFounded |p#0@@9|) (= (ControlFlow 0 2) (- 0 1))) (= |p#0@@9| |p#0@@9|)))))))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#4| null $Heap@@1 alloc false)) ($IsAllocBox |p#0@@9| Tclass.M2.Path $Heap@@1)) (and (|M2.__default.WellFounded#canCall| |p#0@@9|) (M2.__default.WellFounded |p#0@@9|))) (and (and (=> (= (ControlFlow 0 12) 2) anon7_Then_correct) (=> (= (ControlFlow 0 12) 10) anon8_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($IsBox |p#0@@9| Tclass.M2.Path)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))
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
