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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M3.Path () T@U)
(declare-fun Tagclass.M3.WFCertificate () T@U)
(declare-fun |##M3.Path.InternalPath| () T@U)
(declare-fun |##M3.Path.ExternalPath| () T@U)
(declare-fun |##M3.WFCertificate.Cert| () T@U)
(declare-fun tytagFamily$Path () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M3.Path.InternalPath| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#M3.Path.ExternalPath| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Path.cmd (T@U) T@U)
(declare-fun M3.Path.deps (T@U) T@U)
(declare-fun M3.Path.exp (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#M3.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun Tclass.M3.WFCertificate () T@U)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.GetCert (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M3.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M3.__default.WellFounded (T@U) Bool)
(declare-fun |$let#30$canCall| (T@U) Bool)
(declare-fun |$let#30_c| (T@U) T@U)
(declare-fun M3.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |M3.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun M3.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |M3.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun |M3.Path#Equal| (T@U T@U) Bool)
(declare-fun M3.Path.InternalPath_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |$IsA#M3.Path| (T@U) Bool)
(declare-fun M3.WFCertificate.p (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M3.__default.LocInv__Deps (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |M3.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun M3.WFCertificate.certs (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M3.Path.ExternalPath_q (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |$let#10$canCall| () Bool)
(declare-fun |$let#10_deps| () T@U)
(declare-fun M3.Path._h13 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |lambda#24| (T@U T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass.M3.Path Tagclass.M3.WFCertificate |##M3.Path.InternalPath| |##M3.Path.ExternalPath| |##M3.WFCertificate.Cert| tytagFamily$Path tytagFamily$WFCertificate)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#15#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#15#0#0| i))) (DtRank (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6882|
 :pattern ( (|Seq#Index| |a#15#0#0| i) (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#20#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#20#2#0| i@@0))) (DtRank (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6887|
 :pattern ( (|Seq#Index| |a#20#2#0| i@@0) (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@1))) (DtRank (|#M3.Path.ExternalPath| |a#27#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6897|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@1) (|#M3.Path.ExternalPath| |a#27#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##M3.Path.InternalPath|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6872|
 :pattern ( (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ) (! (= (M3.Path.cmd (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6881|
 :pattern ( (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (= (M3.Path.deps (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |a#17#1#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6884|
 :pattern ( (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (= (M3.Path.exp (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|)) |a#19#2#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6886|
 :pattern ( (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SetType) 4))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate)  (and ($Is DatatypeTypeType |a#38#0#0| Tclass.M3.Path) ($Is SetType |a#38#1#0| (TSet Tclass.M3.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6924|
 :pattern ( ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) (|p#0| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |p#0| Tclass.M3.Path)) (M3.__default.WellFounded |p#0|)))) (and (|$let#30$canCall| |p#0|) (= (M3.__default.GetCert |p#0|) (let ((|c#0| (|$let#30_c| |p#0|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |6020|
 :pattern ( (M3.__default.GetCert |p#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.M3.WFCertificate) (M3.WFCertificate.Cert_q d))
 :qid |unknown.0:0|
 :skolemid |6934|
 :pattern ( (M3.WFCertificate.Cert_q d) ($Is DatatypeTypeType d Tclass.M3.WFCertificate))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| |p#0@@0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@0| Tclass.M3.Path))) (and (forall ((|cert#0| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| |p#0@@0| |cert#0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5760|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0|))
)) (= (M3.__default.WellFounded |p#0@@0|) (exists ((|cert#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@0| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5759|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@0| |cert#0@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |5761|
 :pattern ( (M3.__default.WellFounded |p#0@@0|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (M3.Path.InternalPath_q a) (M3.Path.InternalPath_q b)) (= (|M3.Path#Equal| a b)  (and (and (|Seq#Equal| (M3.Path.cmd a) (M3.Path.cmd b)) (|Set#Equal| (M3.Path.deps a) (M3.Path.deps b))) (|Seq#Equal| (M3.Path.exp a) (M3.Path.exp b)))))
 :qid |unknown.0:0|
 :skolemid |6902|
 :pattern ( (|M3.Path#Equal| a b) (M3.Path.InternalPath_q a))
 :pattern ( (|M3.Path#Equal| a b) (M3.Path.InternalPath_q b))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|p#0@@1| T@U) (|cert#0@@1| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@1| |cert#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@1| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@1| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |cert#0@@1|)) (|$IsA#M3.Path| |p#0@@1|)) (M3.WFCertificate.Cert_q |cert#0@@1|)) (=> (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@1|) |p#0@@1|) (and (forall ((|d#0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@1|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0|)) (forall ((|c#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@1|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@0|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#0@@0|)) (|$IsA#M3.Path| |d#0|)) (M3.WFCertificate.Cert_q |c#0@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5776|
 :pattern ( (M3.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5777|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0|)))
)) (=> (forall ((|d#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0@@0|)) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@1|) |d#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5779|
 :pattern ( (M3.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5780|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0@@0|)))
)) (forall ((|c#1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@1|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1|)) (and (M3.WFCertificate.Cert_q |c#1|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#1|) |c#1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5778|
 :pattern ( (M3.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly) |p#0@@1| |cert#0@@1|)  (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@1|) |p#0@@1|) (forall ((|d#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@1| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0@@1|)) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@2|) |d#0@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5773|
 :pattern ( (M3.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5774|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@1|) ($Box DatatypeTypeType |d#0@@1|)))
))) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1@@0|)) (M3.__default.CheckWellFounded $ly (M3.WFCertificate.p |c#1@@0|) |c#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5775|
 :pattern ( (M3.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5781|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly) |p#0@@1| |cert#0@@1|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|M3.Path#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |6904|
 :pattern ( (|M3.Path#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M3.Path.InternalPath_q d@@0) (= (DatatypeCtorId d@@0) |##M3.Path.InternalPath|))
 :qid |unknown.0:0|
 :skolemid |6873|
 :pattern ( (M3.Path.InternalPath_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M3.Path.ExternalPath_q d@@1) (= (DatatypeCtorId d@@1) |##M3.Path.ExternalPath|))
 :qid |unknown.0:0|
 :skolemid |6890|
 :pattern ( (M3.Path.ExternalPath_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M3.WFCertificate.Cert_q d@@2) (= (DatatypeCtorId d@@2) |##M3.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |6921|
 :pattern ( (M3.WFCertificate.Cert_q d@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |5194|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |5195|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (M3.Path.InternalPath_q d@@3) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= d@@3 (|#M3.Path.InternalPath| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6874|
)))
 :qid |unknown.0:0|
 :skolemid |6875|
 :pattern ( (M3.Path.InternalPath_q d@@3))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |5108|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M3.WFCertificate.Cert_q d@@4) (exists ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= d@@4 (|#M3.WFCertificate.Cert| |a#37#0#0| |a#37#1#0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6922|
)))
 :qid |unknown.0:0|
 :skolemid |6923|
 :pattern ( (M3.WFCertificate.Cert_q d@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (M3.Path.ExternalPath_q d@@5) (exists ((|a#23#0#0| T@U) ) (! (= d@@5 (|#M3.Path.ExternalPath| |a#23#0#0|))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6891|
)))
 :qid |unknown.0:0|
 :skolemid |6892|
 :pattern ( (M3.Path.ExternalPath_q d@@5))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#30$canCall| p) (and ($Is DatatypeTypeType (|$let#30_c| p) Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) p (|$let#30_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |6019|
 :pattern ( (|$let#30_c| p))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@2| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| (Lit DatatypeTypeType |p#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@2| Tclass.M3.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@2|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5763|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@2| |cert#1|))
)) (= (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@2|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@2|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5762|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@2| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |5764|
 :pattern ( (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@2|)))
))))
(assert (forall (($ly@@0 T@U) (|p#0@@3| T@U) (|cert#0@@2| T@U) ) (! (= (M3.__default.CheckWellFounded ($LS $ly@@0) |p#0@@3| |cert#0@@2|) (M3.__default.CheckWellFounded $ly@@0 |p#0@@3| |cert#0@@2|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5769|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@0) |p#0@@3| |cert#0@@2|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@4| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@4|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |p#0@@4| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@4|)) |$let#10$canCall|) (= (M3.__default.LocInv__Deps |p#0@@4|) (ite (M3.Path.InternalPath_q |p#0@@4|) (let ((|deps#0| (M3.Path.deps |p#0@@4|)))
|deps#0|) (let ((|deps#1| |$let#10_deps|))
|deps#1|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :skolemid |5689|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@4|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M3.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M3.Path)))
 :qid |unknown.0:0|
 :skolemid |5655|
 :pattern ( ($IsBox bx@@1 Tclass.M3.Path))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M3.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M3.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |5758|
 :pattern ( ($IsBox bx@@2 Tclass.M3.WFCertificate))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (M3.Path.ExternalPath_q a@@1) (M3.Path.ExternalPath_q b@@1)) (= (|M3.Path#Equal| a@@1 b@@1) (|Seq#Equal| (M3.Path._h13 a@@1) (M3.Path._h13 b@@1))))
 :qid |unknown.0:0|
 :skolemid |6903|
 :pattern ( (|M3.Path#Equal| a@@1 b@@1) (M3.Path.ExternalPath_q a@@1))
 :pattern ( (|M3.Path#Equal| a@@1 b@@1) (M3.Path.ExternalPath_q b@@1))
)))
(assert (= (Ctor SeqType) 6))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path)  (and (and ($Is SeqType |a#12#0#0| (TSeq TChar)) ($Is SetType |a#12#1#0| (TSet Tclass.M3.Path))) ($Is SeqType |a#12#2#0| (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6876|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|p#0@@5| T@U) (|cert#0@@3| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@5|) (Lit DatatypeTypeType |cert#0@@3|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@5| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@3|)))) (|$IsA#M3.Path| (Lit DatatypeTypeType |p#0@@5|))) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@3|)) |p#0@@5|) (and (forall ((|d#2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@5|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@5|))) ($Box DatatypeTypeType |d#2|)) (forall ((|c#4| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#4|)) (|$IsA#M3.Path| |d#2|)) (M3.WFCertificate.Cert_q |c#4|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5794|
 :pattern ( (M3.WFCertificate.p |c#4|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5795|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@5|) ($Box DatatypeTypeType |d#2|)))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@5|))) ($Box DatatypeTypeType |d#2@@0|)) (exists ((|c#4@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@0|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5797|
 :pattern ( (M3.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5798|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@5|) ($Box DatatypeTypeType |d#2@@0|)))
)) (forall ((|c#5| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@3|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#5|)) (and (M3.WFCertificate.Cert_q |c#5|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#5|) |c#5|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5796|
 :pattern ( (M3.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#5|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@1) (Lit DatatypeTypeType |p#0@@5|) (Lit DatatypeTypeType |cert#0@@3|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@3|)) |p#0@@5|) (forall ((|d#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@5|))) ($Box DatatypeTypeType |d#2@@1|)) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#4@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@1|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5791|
 :pattern ( (M3.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5792|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@5|) ($Box DatatypeTypeType |d#2@@1|)))
))) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@3|))) ($Box DatatypeTypeType |c#5@@0|)) (M3.__default.CheckWellFounded ($LS $ly@@1) (M3.WFCertificate.p |c#5@@0|) |c#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5793|
 :pattern ( (M3.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#5@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5799|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@1) (Lit DatatypeTypeType |p#0@@5|) (Lit DatatypeTypeType |cert#0@@3|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@6| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| (Lit DatatypeTypeType |p#0@@6|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |p#0@@6| Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@6|)))))))) (and (|$let#30$canCall| (Lit DatatypeTypeType |p#0@@6|)) (= (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@6|)) (let ((|c#1@@1| (|$let#30_c| (Lit DatatypeTypeType |p#0@@6|))))
|c#1@@1|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |6021|
 :pattern ( (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@6|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#24| |l#0| |l#1| |l#2|) |$y#0|)) (exists ((|d#2@@2| T@U) ) (!  (and (and ($Is DatatypeTypeType |d#2@@2| |l#0|) (|Set#IsMember| |l#1| ($Box DatatypeTypeType |d#2@@2|))) (= |$y#0| ($Box DatatypeTypeType (M3.__default.GetCert |d#2@@2|))))
 :qid |CloudMakeParallelBuildsdfy.624:22|
 :skolemid |6005|
 :pattern ( (M3.__default.GetCert |d#2@@2|))
 :pattern ( (|Set#IsMember| |l#2| ($Box DatatypeTypeType |d#2@@2|)))
)))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7215|
 :pattern ( (MapType0Select BoxType boolType (|lambda#24| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#M3.Path| d@@6) (or (M3.Path.InternalPath_q d@@6) (M3.Path.ExternalPath_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |6900|
 :pattern ( (|$IsA#M3.Path| d@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@7| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0@@7|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@7| Tclass.M3.Path) (M3.__default.WellFounded |p#0@@7|)))) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@7| (M3.__default.GetCert |p#0@@7|)) ($Is DatatypeTypeType (M3.__default.GetCert |p#0@@7|) Tclass.M3.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |6017|
 :pattern ( (M3.__default.GetCert |p#0@@7|))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5105|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (|Seq#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5196|
 :pattern ( (|Seq#Equal| a@@3 b@@3))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass.M3.Path) (or (M3.Path.InternalPath_q d@@7) (M3.Path.ExternalPath_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |6901|
 :pattern ( (M3.Path.ExternalPath_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.M3.Path))
 :pattern ( (M3.Path.InternalPath_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.M3.Path))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |4985|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.WFCertificate.Cert| |a#36#0#0| |a#36#1#0|)) |##M3.WFCertificate.Cert|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6920|
 :pattern ( (|#M3.WFCertificate.Cert| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) ) (! (= (M3.WFCertificate.p (|#M3.WFCertificate.Cert| |a#40#0#0| |a#40#1#0|)) |a#40#0#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6928|
 :pattern ( (|#M3.WFCertificate.Cert| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= (M3.WFCertificate.certs (|#M3.WFCertificate.Cert| |a#42#0#0| |a#42#1#0|)) |a#42#1#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6930|
 :pattern ( (|#M3.WFCertificate.Cert| |a#42#0#0| |a#42#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@2) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5028|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5029|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| |a#13#0#0| |a#13#1#0| |a#13#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6880|
 :pattern ( (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4962|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4963|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.ExternalPath| |a#22#0#0|)) |##M3.Path.ExternalPath|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6889|
 :pattern ( (|#M3.Path.ExternalPath| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (M3.Path._h13 (|#M3.Path.ExternalPath| |a#26#0#0|)) |a#26#0#0|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6896|
 :pattern ( (|#M3.Path.ExternalPath| |a#26#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (< (|Seq#Rank| |a#16#0#0|) (DtRank (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6883|
 :pattern ( (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (|Seq#Rank| |a#21#2#0|) (DtRank (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6888|
 :pattern ( (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@8| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@8|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@8| Tclass.M3.Path))) ($Is SetType (M3.__default.LocInv__Deps |p#0@@8|) (TSet Tclass.M3.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |5687|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@8|))
))))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (< (DtRank |a#41#0#0|) (DtRank (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6929|
 :pattern ( (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|))
)))
(assert  (=> |$let#10$canCall| (and ($Is SetType |$let#10_deps| (TSet Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#M3.Path.ExternalPath| |a#28#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6898|
 :pattern ( (|#M3.Path.ExternalPath| |a#28#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7212|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|p#0@@9| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@9|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |p#0@@9| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@9|)))))) |$let#10$canCall|) (= (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@9|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@9|)) (let ((|deps#3| (Lit SetType (M3.Path.deps (Lit DatatypeTypeType |p#0@@9|)))))
|deps#3|) (let ((|deps#4| |$let#10_deps|))
|deps#4|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :weight 3
 :skolemid |5690|
 :pattern ( (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@9|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@10| T@U) (|cert#0@@4| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@10| (Lit DatatypeTypeType |cert#0@@4|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@10| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@4| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@4|)))) (|$IsA#M3.Path| |p#0@@10|)) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@4|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@4|)) |p#0@@10|) (and (forall ((|d#1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@10|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1|)) (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@4|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) ($Box DatatypeTypeType |c#2|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#2|)) (|$IsA#M3.Path| |d#1|)) (M3.WFCertificate.Cert_q |c#2|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5785|
 :pattern ( (M3.WFCertificate.p |c#2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5786|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1|)))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1@@0|)) (exists ((|c#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) ($Box DatatypeTypeType |c#2@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@0|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5788|
 :pattern ( (M3.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#2@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5789|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1@@0|)))
)) (forall ((|c#3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@4|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) ($Box DatatypeTypeType |c#3|)) (and (M3.WFCertificate.Cert_q |c#3|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#3|) |c#3|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5787|
 :pattern ( (M3.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#3|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@2) |p#0@@10| (Lit DatatypeTypeType |cert#0@@4|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@4|)) |p#0@@10|) (forall ((|d#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@1| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1@@1|)) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) ($Box DatatypeTypeType |c#2@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@1|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5782|
 :pattern ( (M3.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5783|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@10|) ($Box DatatypeTypeType |d#1@@1|)))
))) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) ($Box DatatypeTypeType |c#3@@0|)) (M3.__default.CheckWellFounded ($LS $ly@@2) (M3.WFCertificate.p |c#3@@0|) |c#3@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5784|
 :pattern ( (M3.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@4|) ($Box DatatypeTypeType |c#3@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5790|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@2) |p#0@@10| (Lit DatatypeTypeType |cert#0@@4|)))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (d@@8 T@U) ) (!  (=> (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@8)) (< (DtRank d@@8) (DtRank (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6885|
 :pattern ( (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@8)) (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (d@@9 T@U) ) (!  (=> (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@9)) (< (DtRank d@@9) (DtRank (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6931|
 :pattern ( (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@9)) (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((d@@10 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@10 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@10 Tclass.M3.Path $h))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass.M3.Path $h))
)))
(assert (forall ((d@@11 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@11 Tclass.M3.WFCertificate)) ($IsAlloc DatatypeTypeType d@@11 Tclass.M3.WFCertificate $h@@0))
 :qid |unknown.0:0|
 :skolemid |6932|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass.M3.WFCertificate $h@@0))
)))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M3.WFCertificate) Tagclass.M3.WFCertificate))
(assert (= (TagFamily Tclass.M3.WFCertificate) tytagFamily$WFCertificate))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6893|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path))
)))
(assert (forall ((d@@12 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (M3.Path.InternalPath_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass.M3.Path $h@@1))) ($IsAlloc SeqType (M3.Path.cmd d@@12) (TSeq TChar) $h@@1))
 :qid |unknown.0:0|
 :skolemid |6877|
 :pattern ( ($IsAlloc SeqType (M3.Path.cmd d@@12) (TSeq TChar) $h@@1))
)))
(assert (forall ((d@@13 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (M3.Path.InternalPath_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass.M3.Path $h@@2))) ($IsAlloc SeqType (M3.Path.exp d@@13) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |6879|
 :pattern ( ($IsAlloc SeqType (M3.Path.exp d@@13) (TSeq TChar) $h@@2))
)))
(assert (forall ((d@@14 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (M3.Path.ExternalPath_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass.M3.Path $h@@3))) ($IsAlloc SeqType (M3.Path._h13 d@@14) (TSeq TChar) $h@@3))
 :qid |unknown.0:0|
 :skolemid |6894|
 :pattern ( ($IsAlloc SeqType (M3.Path._h13 d@@14) (TSeq TChar) $h@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@4 b@@4) (forall ((o T@U) ) (! (= (|Set#IsMember| a@@4 o) (|Set#IsMember| b@@4 o))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5103|
 :pattern ( (|Set#IsMember| a@@4 o))
 :pattern ( (|Set#IsMember| b@@4 o))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5104|
 :pattern ( (|Set#Equal| a@@4 b@@4))
)))
(assert (forall ((d@@15 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (M3.WFCertificate.Cert_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.M3.WFCertificate $h@@4))) ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@15) Tclass.M3.Path $h@@4))
 :qid |unknown.0:0|
 :skolemid |6925|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@15) Tclass.M3.Path $h@@4))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) ) (! (= (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)) (Lit DatatypeTypeType (|#M3.WFCertificate.Cert| |a#39#0#0| |a#39#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6927|
 :pattern ( (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#M3.Path.ExternalPath| |a#25#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6895|
 :pattern ( (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@16 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (M3.Path.InternalPath_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.M3.Path $h@@5))) ($IsAlloc SetType (M3.Path.deps d@@16) (TSet Tclass.M3.Path) $h@@5))
 :qid |unknown.0:0|
 :skolemid |6878|
 :pattern ( ($IsAlloc SetType (M3.Path.deps d@@16) (TSet Tclass.M3.Path) $h@@5))
)))
(assert (forall ((d@@17 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M3.WFCertificate.Cert_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.M3.WFCertificate $h@@6))) ($IsAlloc SetType (M3.WFCertificate.certs d@@17) (TSet Tclass.M3.WFCertificate) $h@@6))
 :qid |unknown.0:0|
 :skolemid |6926|
 :pattern ( ($IsAlloc SetType (M3.WFCertificate.certs d@@17) (TSet Tclass.M3.WFCertificate) $h@@6))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5019|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |4998|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |p#0@@11| () T@U)
(declare-fun |certs#0@0| () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |##cert#0@0| () T@U)
(declare-fun |d#3@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |certs#0| () T@U)
(set-info :boogie-vc-id Impl$$M3.__default.ExecOne__Lemma0)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct  (=> (forall ((|d#2@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@3| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@11|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#2@@3|)) (|M3.__default.GetCert#canCall| |d#2@@3|))))
 :qid |CloudMakeParallelBuildsdfy.624:22|
 :skolemid |6009|
 :pattern ( (M3.__default.GetCert |d#2@@3|))
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#2@@3|)))
)) (=> (and (= |certs#0@0| (|Set#FromBoogieMap| (|lambda#24| Tclass.M3.Path (M3.__default.LocInv__Deps |p#0@@11|) (M3.__default.LocInv__Deps |p#0@@11|)))) ($IsAlloc DatatypeTypeType |p#0@@11| Tclass.M3.Path $Heap@@3)) (=> (and (and (= |##cert#0@0| (|#M3.WFCertificate.Cert| |p#0@@11| |certs#0@0|)) ($IsAlloc DatatypeTypeType |##cert#0@0| Tclass.M3.WFCertificate $Heap@@3)) (and (|M3.__default.CheckWellFounded#canCall| |p#0@@11| (|#M3.WFCertificate.Cert| |p#0@@11| |certs#0@0|)) (|M3.__default.CheckWellFounded#canCall| |p#0@@11| (|#M3.WFCertificate.Cert| |p#0@@11| |certs#0@0|)))) (=> (and (and (and (M3.__default.CheckWellFounded ($LS ($LS $LZ)) |p#0@@11| (|#M3.WFCertificate.Cert| |p#0@@11| |certs#0@0|)) (= (ControlFlow 0 2) (- 0 1))) false) (|M3.__default.WellFounded#canCall| |p#0@@11|)) (or (M3.__default.WellFounded |p#0@@11|) (exists ((|cert#1@@1| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@1| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@11| |cert#1@@1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |6002|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@11| |cert#1@@1|))
)))))))))
(let ((anon5_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#3@0|))) (= (ControlFlow 0 5) 2)) anon3_correct)))
(let ((anon5_Then_correct  (=> (and (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#3@0|)) ($IsAlloc DatatypeTypeType |d#3@0| Tclass.M3.Path $Heap@@3)) (=> (and (and (M3.__default.WellFounded |d#3@0|) (|M3.__default.GetCert#canCall| |d#3@0|)) (and (M3.WFCertificate.Cert_q (M3.__default.GetCert |d#3@0|)) (= (ControlFlow 0 4) 2))) anon3_correct))))
(let ((anon4_Then_correct  (=> (and (and ($Is DatatypeTypeType |d#3@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |d#3@0| Tclass.M3.Path $Heap@@3)) (and ($IsAlloc DatatypeTypeType |p#0@@11| Tclass.M3.Path $Heap@@3) (|M3.__default.LocInv__Deps#canCall| |p#0@@11|))) (and (=> (= (ControlFlow 0 6) 4) anon5_Then_correct) (=> (= (ControlFlow 0 6) 5) anon5_Else_correct)))))
(let ((anon4_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |d#3@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |d#3@0| Tclass.M3.Path $Heap@@3))) (= (ControlFlow 0 3) 2)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@3 alloc false)) (and (=> (= (ControlFlow 0 7) 6) anon4_Then_correct) (=> (= (ControlFlow 0 7) 3) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is DatatypeTypeType |p#0@@11| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#0@@11| Tclass.M3.Path $Heap@@3)) (|$IsA#M3.Path| |p#0@@11|)) (=> (and (and (and (and ($Is SetType |certs#0| (TSet Tclass.M3.WFCertificate)) ($IsAlloc SetType |certs#0| (TSet Tclass.M3.WFCertificate) $Heap@@3)) true) (= 5 $FunctionContextHeight)) (and (forall ((|d#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#1@@2|)) (M3.__default.WellFounded |d#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.621:21|
 :skolemid |6001|
 :pattern ( (M3.__default.WellFounded |d#1@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#1@@2|)))
)) (= (ControlFlow 0 8) 7))) anon0_correct)))))
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
