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
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M3.State () T@U)
(declare-fun Tagclass.M3.Path () T@U)
(declare-fun Tagclass.M3.Artifact () T@U)
(declare-fun Tagclass.M3.WFCertificate () T@U)
(declare-fun |##M3.Artifact.ArtifactCons| () T@U)
(declare-fun |##M3.Path.InternalPath| () T@U)
(declare-fun |##M3.Path.ExternalPath| () T@U)
(declare-fun |##M3.WFCertificate.Cert| () T@U)
(declare-fun |##M3.State.StateCons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Artifact () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M3.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun Tclass.M3.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M3.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M3.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun M3.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M3.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M3.Path.InternalPath| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun M3.__default.DomSt (T@U) T@U)
(declare-fun |M3.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M3.Artifact| (T@U) Bool)
(declare-fun M3.Artifact.ArtifactCons_q (T@U) Bool)
(declare-fun |$IsA#M3.WFCertificate| (T@U) Bool)
(declare-fun M3.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |$IsA#M3.State| (T@U) Bool)
(declare-fun |#M3.Path.ExternalPath| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Path.cmd (T@U) T@U)
(declare-fun M3.Path.deps (T@U) T@U)
(declare-fun M3.Path.exp (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun M3.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M3.__default.FindCert (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |M3.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M3.WFCertificate () T@U)
(declare-fun M3.WFCertificate.p (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |M3.Path#Equal| (T@U T@U) Bool)
(declare-fun |$let#36$canCall| (T@U T@U) Bool)
(declare-fun |$let#36_c| (T@U T@U) T@U)
(declare-fun M3.__default.OracleWF (T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.OracleWF#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |M3.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun M3.__default.LocInv__Deps (T@U) T@U)
(declare-fun |M3.__default.CollectDependencies#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M3.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M3.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_a| () T@U)
(declare-fun M3.Path.InternalPath_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |M3.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#M3.Path| (T@U) Bool)
(declare-fun M3.WFCertificate.certs (T@U) T@U)
(declare-fun |M3.Artifact#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun M3.__default.GetSt (T@U T@U) T@U)
(declare-fun |M3.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M3.Path.ExternalPath_q (T@U) Bool)
(declare-fun |#M3.Artifact.ArtifactCons| (Int) T@U)
(declare-fun |#M3.State.StateCons| (T@U) T@U)
(declare-fun M3.Artifact._h11 (T@U) Int)
(declare-fun |$let#3$canCall| () Bool)
(declare-fun |$let#3_cmd| () T@U)
(declare-fun |$let#10$canCall| () Bool)
(declare-fun |$let#10_deps| () T@U)
(declare-fun |$let#17$canCall| () Bool)
(declare-fun |$let#17_exp| () T@U)
(declare-fun M3.Path._h13 (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |lambda#26| (T@U T@U T@U T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.State Tagclass.M3.Path Tagclass.M3.Artifact Tagclass.M3.WFCertificate |##M3.Artifact.ArtifactCons| |##M3.Path.InternalPath| |##M3.Path.ExternalPath| |##M3.WFCertificate.Cert| |##M3.State.StateCons| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Path tytagFamily$Artifact tytagFamily$WFCertificate)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M3.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M3.State $h))) ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |6942|
 :pattern ( ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SeqType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| Tclass.M3.Path))) ($Is SeqType (M3.__default.LocInv__Cmd |p#0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.636:29|
 :skolemid |5683|
 :pattern ( (M3.__default.LocInv__Cmd |p#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| |p#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@0| Tclass.M3.Path))) ($Is SeqType (M3.__default.LocInv__Exp |p#0@@0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.638:29|
 :skolemid |5691|
 :pattern ( (M3.__default.LocInv__Exp |p#0@@0|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0| Tclass.M3.State))) (and (M3.State.StateCons_q |st#0|) (= (M3.__default.DomSt |st#0|) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m |st#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6478|
 :pattern ( (M3.__default.DomSt |st#0|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M3.Artifact| d@@0) (M3.Artifact.ArtifactCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |6855|
 :pattern ( (|$IsA#M3.Artifact| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M3.WFCertificate| d@@1) (M3.WFCertificate.Cert_q d@@1))
 :qid |unknown.0:0|
 :skolemid |6933|
 :pattern ( (|$IsA#M3.WFCertificate| d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (|$IsA#M3.State| d@@2) (M3.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |6948|
 :pattern ( (|$IsA#M3.State| d@@2))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@1))) (DtRank (|#M3.Path.ExternalPath| |a#27#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6897|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@1) (|#M3.Path.ExternalPath| |a#27#0#0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |5241|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |5242|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@3))
 :qid |unknown.0:0|
 :skolemid |5423|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall (($ly T@U) (|p#0@@1| T@U) (|cert#0| T@U) (|deps#0| T@U) (|st#0@@0| T@U) ) (! (= (M3.__default.CollectDependencies ($LS $ly) |p#0@@1| |cert#0| |deps#0| |st#0@@0|) (M3.__default.CollectDependencies $ly |p#0@@1| |cert#0| |deps#0| |st#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6078|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly) |p#0@@1| |cert#0| |deps#0| |st#0@@0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|d#0| T@U) (|certs#0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |d#0| Tclass.M3.Path)) ($Is SetType |certs#0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#5| T@U) ) (!  (and ($Is DatatypeTypeType |c#5| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0|) ($Box DatatypeTypeType |c#5|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#5|) |d#0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6113|
 :pattern ( (M3.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| |certs#0| ($Box DatatypeTypeType |c#5|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|)) (= (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (let ((|c#6| (|$let#36_c| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6114|
 :pattern ( (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@0 T@U) (|p#0@@2| T@U) (|cert#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@2| |cert#0@@0| |st#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@2| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@1| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@2| |cert#0@@0|)))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@2|) (|M3.__default.LocInv__Deps#canCall| |p#0@@2|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@2|)) (let ((|e#0| (M3.__default.LocInv__Exp |p#0@@2|)))
(let ((|deps#0@@0| (M3.__default.LocInv__Deps |p#0@@2|)))
(let ((|cmd#0| (M3.__default.LocInv__Cmd |p#0@@2|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@2| |cert#0@@0| |deps#0@@0| |st#0@@1|) (|M3.__default.RunTool#canCall| |cmd#0| (M3.__default.CollectDependencies $ly@@0 |p#0@@2| |cert#0@@0| |deps#0@@0| |st#0@@1|) |e#0|)))))) (= (M3.__default.OracleWF ($LS $ly@@0) |p#0@@2| |cert#0@@0| |st#0@@1|) (let ((|e#0@@0| (M3.__default.LocInv__Exp |p#0@@2|)))
(let ((|deps#0@@1| (M3.__default.LocInv__Deps |p#0@@2|)))
(let ((|cmd#0@@0| (M3.__default.LocInv__Cmd |p#0@@2|)))
(M3.__default.RunTool |cmd#0@@0| (M3.__default.CollectDependencies $ly@@0 |p#0@@2| |cert#0@@0| |deps#0@@1| |st#0@@1|) |e#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6062|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@0) |p#0@@2| |cert#0@@0| |st#0@@1|))
))))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate)  (and ($Is DatatypeTypeType |a#38#0#0| Tclass.M3.Path) ($Is SetType |a#38#1#0| (TSet Tclass.M3.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6924|
 :pattern ( ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.M3.Artifact) (M3.Artifact.ArtifactCons_q d@@4))
 :qid |unknown.0:0|
 :skolemid |6856|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.M3.Artifact))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass.M3.WFCertificate) (M3.WFCertificate.Cert_q d@@5))
 :qid |unknown.0:0|
 :skolemid |6934|
 :pattern ( (M3.WFCertificate.Cert_q d@@5) ($Is DatatypeTypeType d@@5 Tclass.M3.WFCertificate))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M3.State) (M3.State.StateCons_q d@@6))
 :qid |unknown.0:0|
 :skolemid |6949|
 :pattern ( (M3.State.StateCons_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M3.State))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |5411|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|cmd#0@@1| T@U) (|deps#0@@2| T@U) (|exp#0| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| (Lit SeqType |cmd#0@@1|) (Lit MapType |deps#0@@2|) (Lit SeqType |exp#0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is SeqType |cmd#0@@1| (TSeq TChar))) ($Is MapType |deps#0@@2| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool (Lit SeqType |cmd#0@@1|) (Lit MapType |deps#0@@2|) (Lit SeqType |exp#0|)) (let ((|a#1| |$let#0_a|))
|a#1|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :weight 3
 :skolemid |5674|
 :pattern ( (M3.__default.RunTool (Lit SeqType |cmd#0@@1|) (Lit MapType |deps#0@@2|) (Lit SeqType |exp#0|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (M3.Path.InternalPath_q a@@1) (M3.Path.InternalPath_q b@@1)) (= (|M3.Path#Equal| a@@1 b@@1)  (and (and (|Seq#Equal| (M3.Path.cmd a@@1) (M3.Path.cmd b@@1)) (|Set#Equal| (M3.Path.deps a@@1) (M3.Path.deps b@@1))) (|Seq#Equal| (M3.Path.exp a@@1) (M3.Path.exp b@@1)))))
 :qid |unknown.0:0|
 :skolemid |6902|
 :pattern ( (|M3.Path#Equal| a@@1 b@@1) (M3.Path.InternalPath_q a@@1))
 :pattern ( (|M3.Path#Equal| a@@1 b@@1) (M3.Path.InternalPath_q b@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@0| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@0| |certs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |d#0@@0| Tclass.M3.Path) ($Is SetType |certs#0@@0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#0| T@U) ) (!  (and ($Is DatatypeTypeType |c#0| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0|) |d#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6105|
 :pattern ( (M3.WFCertificate.p |c#0|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0|)))
))))) ($Is DatatypeTypeType (M3.__default.FindCert |d#0@@0| |certs#0@@0|) Tclass.M3.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |6106|
 :pattern ( (M3.__default.FindCert |d#0@@0| |certs#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@2| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@2| Tclass.M3.State))) (and (forall ((|p#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@2|) ($Box DatatypeTypeType |p#0@@3|)) (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@2|)) ($Box DatatypeTypeType |p#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |6475|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@2|)) ($Box DatatypeTypeType |p#0@@3|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@2|) ($Box DatatypeTypeType |p#0@@3|)))
)) ($Is SetType (M3.__default.DomSt |st#0@@2|) (TSet Tclass.M3.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6476|
 :pattern ( (M3.__default.DomSt |st#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|p#0@@4| T@U) (|cert#0@@1| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@4| |cert#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@4| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@1| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |cert#0@@1|)) (|$IsA#M3.Path| |p#0@@4|)) (M3.WFCertificate.Cert_q |cert#0@@1|)) (=> (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@1|) |p#0@@4|) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@4|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@1|)) (forall ((|c#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@1|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@0|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#0@@0|)) (|$IsA#M3.Path| |d#0@@1|)) (M3.WFCertificate.Cert_q |c#0@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5776|
 :pattern ( (M3.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5777|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@1|)))
)) (=> (forall ((|d#0@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@2|)) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@1|) |d#0@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5779|
 :pattern ( (M3.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5780|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@2|)))
)) (forall ((|c#1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@1|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1|)) (and (M3.WFCertificate.Cert_q |c#1|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#1|) |c#1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5778|
 :pattern ( (M3.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@1) |p#0@@4| |cert#0@@1|)  (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@1|) |p#0@@4|) (forall ((|d#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@3|)) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@2|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5773|
 :pattern ( (M3.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5774|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@4|) ($Box DatatypeTypeType |d#0@@3|)))
))) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1@@0|)) (M3.__default.CheckWellFounded $ly@@1 (M3.WFCertificate.p |c#1@@0|) |c#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5775|
 :pattern ( (M3.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@1|) ($Box DatatypeTypeType |c#1@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5781|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@1) |p#0@@4| |cert#0@@1|))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|M3.Artifact#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |6858|
 :pattern ( (|M3.Artifact#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|M3.Path#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |6904|
 :pattern ( (|M3.Path#Equal| a@@3 b@@3))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4972|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@4 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@4 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |5243|
)) ($Is MapType (|Map#Glue| a@@4 b@@4 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |5244|
 :pattern ( (|Map#Glue| a@@4 b@@4 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@5| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@5| |st#0@@3|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@5| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@3| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@3|) ($Box DatatypeTypeType |p#0@@5|))))) ($Is DatatypeTypeType (M3.__default.GetSt |p#0@@5| |st#0@@3|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6469|
 :pattern ( (M3.__default.GetSt |p#0@@5| |st#0@@3|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@6| T@U) (|cert#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@6| |cert#0@@2| |st#0@@4|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@6| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@2| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@4| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@6| |cert#0@@2|)))) ($Is DatatypeTypeType (M3.__default.OracleWF $ly@@2 |p#0@@6| |cert#0@@2| |st#0@@4|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6060|
 :pattern ( (M3.__default.OracleWF $ly@@2 |p#0@@6| |cert#0@@2| |st#0@@4|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |5412|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@7) (= (DatatypeCtorId d@@7) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |5404|
 :pattern ( (_System.Tuple2.___hMake2_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M3.Artifact.ArtifactCons_q d@@8) (= (DatatypeCtorId d@@8) |##M3.Artifact.ArtifactCons|))
 :qid |unknown.0:0|
 :skolemid |6847|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M3.Path.InternalPath_q d@@9) (= (DatatypeCtorId d@@9) |##M3.Path.InternalPath|))
 :qid |unknown.0:0|
 :skolemid |6873|
 :pattern ( (M3.Path.InternalPath_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M3.Path.ExternalPath_q d@@10) (= (DatatypeCtorId d@@10) |##M3.Path.ExternalPath|))
 :qid |unknown.0:0|
 :skolemid |6890|
 :pattern ( (M3.Path.ExternalPath_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M3.WFCertificate.Cert_q d@@11) (= (DatatypeCtorId d@@11) |##M3.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |6921|
 :pattern ( (M3.WFCertificate.Cert_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M3.State.StateCons_q d@@12) (= (DatatypeCtorId d@@12) |##M3.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |6938|
 :pattern ( (M3.State.StateCons_q d@@12))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (M3.Path.InternalPath_q d@@13) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= d@@13 (|#M3.Path.InternalPath| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6874|
)))
 :qid |unknown.0:0|
 :skolemid |6875|
 :pattern ( (M3.Path.InternalPath_q d@@13))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |5108|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@14) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@14 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5405|
)))
 :qid |unknown.0:0|
 :skolemid |5406|
 :pattern ( (_System.Tuple2.___hMake2_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (M3.WFCertificate.Cert_q d@@15) (exists ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= d@@15 (|#M3.WFCertificate.Cert| |a#37#0#0| |a#37#1#0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6922|
)))
 :qid |unknown.0:0|
 :skolemid |6923|
 :pattern ( (M3.WFCertificate.Cert_q d@@15))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@7| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@7| |st#0@@5|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@7| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@5| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@5|) ($Box DatatypeTypeType |p#0@@7|))))) (and (M3.State.StateCons_q |st#0@@5|) (= (M3.__default.GetSt |p#0@@7| |st#0@@5|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.State.m |st#0@@5|)) ($Box DatatypeTypeType |p#0@@7|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6471|
 :pattern ( (M3.__default.GetSt |p#0@@7| |st#0@@5|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@6| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@6|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@6| Tclass.M3.State))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@6|)) (= (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@6|)) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m (Lit DatatypeTypeType |st#0@@6|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |6479|
 :pattern ( (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@6|)))
))))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@3 T@U) (|p#0@@8| T@U) (|cert#0@@3| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |st#0@@7|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@8| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@7| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@8|) (|M3.__default.LocInv__Deps#canCall| |p#0@@8|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@8|)) (let ((|e#1| (M3.__default.LocInv__Exp |p#0@@8|)))
(let ((|deps#1| (M3.__default.LocInv__Deps |p#0@@8|)))
(let ((|cmd#1| (M3.__default.LocInv__Cmd |p#0@@8|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |deps#1| |st#0@@7|) (|M3.__default.RunTool#canCall| |cmd#1| (M3.__default.CollectDependencies ($LS $ly@@3) |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |deps#1| |st#0@@7|) |e#1|)))))) (= (M3.__default.OracleWF ($LS $ly@@3) |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |st#0@@7|) (let ((|e#1@@0| (M3.__default.LocInv__Exp |p#0@@8|)))
(let ((|deps#1@@0| (M3.__default.LocInv__Deps |p#0@@8|)))
(let ((|cmd#1@@0| (M3.__default.LocInv__Cmd |p#0@@8|)))
(M3.__default.RunTool |cmd#1@@0| (M3.__default.CollectDependencies ($LS $ly@@3) |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |deps#1@@0| |st#0@@7|) |e#1@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6063|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@3) |p#0@@8| (Lit DatatypeTypeType |cert#0@@3|) |st#0@@7|))
))))
(assert (forall ((d@@16 T@U) ) (!  (=> (M3.Artifact.ArtifactCons_q d@@16) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@16 (|#M3.Artifact.ArtifactCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6848|
)))
 :qid |unknown.0:0|
 :skolemid |6849|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (M3.Path.ExternalPath_q d@@17) (exists ((|a#23#0#0| T@U) ) (! (= d@@17 (|#M3.Path.ExternalPath| |a#23#0#0|))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6891|
)))
 :qid |unknown.0:0|
 :skolemid |6892|
 :pattern ( (M3.Path.ExternalPath_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (M3.State.StateCons_q d@@18) (exists ((|a#45#0#0| T@U) ) (! (= d@@18 (|#M3.State.StateCons| |a#45#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6939|
)))
 :qid |unknown.0:0|
 :skolemid |6940|
 :pattern ( (M3.State.StateCons_q d@@18))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|M3.Artifact#Equal| a@@5 b@@5) (= (M3.Artifact._h11 a@@5) (M3.Artifact._h11 b@@5)))
 :qid |unknown.0:0|
 :skolemid |6857|
 :pattern ( (|M3.Artifact#Equal| a@@5 b@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@9| T@U) (|st#0@@8| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| (Lit DatatypeTypeType |p#0@@9|) (Lit DatatypeTypeType |st#0@@8|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@9| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@8| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@9|)))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@8|)) (= (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@9|) (Lit DatatypeTypeType |st#0@@8|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@8|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@9|)))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6473|
 :pattern ( (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@9|) (Lit DatatypeTypeType |st#0@@8|)))
))))
(assert (forall (($ly@@4 T@U) (|p#0@@10| T@U) (|cert#0@@4| T@U) ) (! (= (M3.__default.CheckWellFounded ($LS $ly@@4) |p#0@@10| |cert#0@@4|) (M3.__default.CheckWellFounded $ly@@4 |p#0@@10| |cert#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5769|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@4) |p#0@@10| |cert#0@@4|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@3| T@U) (|exp#0@@0| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@2| |deps#0@@3| |exp#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is MapType |deps#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@0| (TSeq TChar))))) ($Is DatatypeTypeType (M3.__default.RunTool |cmd#0@@2| |deps#0@@3| |exp#0@@0|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |5671|
 :pattern ( (M3.__default.RunTool |cmd#0@@2| |deps#0@@3| |exp#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@11| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0@@11|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |p#0@@11| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@11|)) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd |p#0@@11|) (ite (M3.Path.InternalPath_q |p#0@@11|) (let ((|cmd#0@@3| (M3.Path.cmd |p#0@@11|)))
|cmd#0@@3|) (let ((|cmd#1@@1| |$let#3_cmd|))
|cmd#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :skolemid |5685|
 :pattern ( (M3.__default.LocInv__Cmd |p#0@@11|) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|p#0@@12| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@12|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |p#0@@12| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@12|)) |$let#10$canCall|) (= (M3.__default.LocInv__Deps |p#0@@12|) (ite (M3.Path.InternalPath_q |p#0@@12|) (let ((|deps#0@@4| (M3.Path.deps |p#0@@12|)))
|deps#0@@4|) (let ((|deps#1@@1| |$let#10_deps|))
|deps#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :skolemid |5689|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@12|) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@13| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| |p#0@@13|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |p#0@@13| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@13|)) |$let#17$canCall|) (= (M3.__default.LocInv__Exp |p#0@@13|) (ite (M3.Path.InternalPath_q |p#0@@13|) (let ((|exp#0@@1| (M3.Path.exp |p#0@@13|)))
|exp#0@@1|) (let ((|exp#1| |$let#17_exp|))
|exp#1|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :skolemid |5693|
 :pattern ( (M3.__default.LocInv__Exp |p#0@@13|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M3.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M3.State)))
 :qid |unknown.0:0|
 :skolemid |5654|
 :pattern ( ($IsBox bx@@2 Tclass.M3.State))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M3.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M3.Path)))
 :qid |unknown.0:0|
 :skolemid |5655|
 :pattern ( ($IsBox bx@@3 Tclass.M3.Path))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M3.Artifact) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M3.Artifact)))
 :qid |unknown.0:0|
 :skolemid |5659|
 :pattern ( ($IsBox bx@@4 Tclass.M3.Artifact))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M3.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M3.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |5758|
 :pattern ( ($IsBox bx@@5 Tclass.M3.WFCertificate))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|d#0@@4| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@4| (Lit SetType |certs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |d#0@@4| Tclass.M3.Path)) ($Is SetType |certs#0@@1| (TSet Tclass.M3.WFCertificate))) (exists ((|c#3| T@U) ) (!  (and ($Is DatatypeTypeType |c#3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@1|) ($Box DatatypeTypeType |c#3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#3|) |d#0@@4|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6111|
 :pattern ( (M3.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#3|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0@@1|) |d#0@@4|) (= (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) (let ((|c#4| (|$let#36_c| (Lit SetType |certs#0@@1|) |d#0@@4|)))
|c#4|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6112|
 :pattern ( (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (M3.Path.ExternalPath_q a@@6) (M3.Path.ExternalPath_q b@@6)) (= (|M3.Path#Equal| a@@6 b@@6) (|Seq#Equal| (M3.Path._h13 a@@6) (M3.Path._h13 b@@6))))
 :qid |unknown.0:0|
 :skolemid |6903|
 :pattern ( (|M3.Path#Equal| a@@6 b@@6) (M3.Path.ExternalPath_q a@@6))
 :pattern ( (|M3.Path#Equal| a@@6 b@@6) (M3.Path.ExternalPath_q b@@6))
)))
(assert (forall ((|a#50#0#0| T@U) (bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@6) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#50#0#0|) bx@@6))) (DtRank (|#M3.State.StateCons| |a#50#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6946|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@6) (|#M3.State.StateCons| |a#50#0#0|))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |5252|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |5253|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |5254|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path)  (and (and ($Is SeqType |a#12#0#0| (TSeq TChar)) ($Is SetType |a#12#1#0| (TSet Tclass.M3.Path))) ($Is SeqType |a#12#2#0| (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6876|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|p#0@@14| T@U) (|cert#0@@5| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@14|) (Lit DatatypeTypeType |cert#0@@5|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@14| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@5|)))) (|$IsA#M3.Path| (Lit DatatypeTypeType |p#0@@14|))) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@5|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@5|)) |p#0@@14|) (and (forall ((|d#2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@14|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@14|))) ($Box DatatypeTypeType |d#2|)) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@5|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@5|))) ($Box DatatypeTypeType |c#4@@0|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#4@@0|)) (|$IsA#M3.Path| |d#2|)) (M3.WFCertificate.Cert_q |c#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5794|
 :pattern ( (M3.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@5|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5795|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@14|) ($Box DatatypeTypeType |d#2|)))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@14|))) ($Box DatatypeTypeType |d#2@@0|)) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@5|))) ($Box DatatypeTypeType |c#4@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5797|
 :pattern ( (M3.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@5|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5798|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@14|) ($Box DatatypeTypeType |d#2@@0|)))
)) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@5|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@5|))) ($Box DatatypeTypeType |c#5@@0|)) (and (M3.WFCertificate.Cert_q |c#5@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#5@@0|) |c#5@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5796|
 :pattern ( (M3.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@5|) ($Box DatatypeTypeType |c#5@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@5) (Lit DatatypeTypeType |p#0@@14|) (Lit DatatypeTypeType |cert#0@@5|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@5|)) |p#0@@14|) (forall ((|d#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@14|))) ($Box DatatypeTypeType |d#2@@1|)) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@5|))) ($Box DatatypeTypeType |c#4@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5791|
 :pattern ( (M3.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@5|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5792|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@14|) ($Box DatatypeTypeType |d#2@@1|)))
))) (forall ((|c#5@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@5|))) ($Box DatatypeTypeType |c#5@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@5) (M3.WFCertificate.p |c#5@@1|) |c#5@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5793|
 :pattern ( (M3.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@5|) ($Box DatatypeTypeType |c#5@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5799|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@5) (Lit DatatypeTypeType |p#0@@14|) (Lit DatatypeTypeType |cert#0@@5|)))
))))
(assert (forall ((d@@19 T@U) ) (!  (=> (|$IsA#M3.Path| d@@19) (or (M3.Path.InternalPath_q d@@19) (M3.Path.ExternalPath_q d@@19)))
 :qid |unknown.0:0|
 :skolemid |6900|
 :pattern ( (|$IsA#M3.Path| d@@19))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@6 T@U) (|p#0@@15| T@U) (|cert#0@@6| T@U) (|deps#0@@5| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@15| (Lit DatatypeTypeType |cert#0@@6|) |deps#0@@5| |st#0@@9|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@15| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@6| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@5| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@9| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@15| (Lit DatatypeTypeType |cert#0@@6|)) (|Set#Equal| |deps#0@@5| (M3.__default.LocInv__Deps |p#0@@15|)))))) (and (forall ((|d#0@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@5| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@5| ($Box DatatypeTypeType |d#0@@5|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@9|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |d#0@@5|)) (|M3.__default.GetSt#canCall| |d#0@@5| |st#0@@9|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |d#0@@5|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@6|)) (|M3.__default.FindCert#canCall| |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))))) (|M3.__default.OracleWF#canCall| |d#0@@5| (M3.__default.FindCert |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|)))) |st#0@@9|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6084|
 :pattern ( (M3.__default.FindCert |d#0@@5| (M3.WFCertificate.certs |cert#0@@6|)))
 :pattern ( (M3.__default.GetSt |d#0@@5| |st#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |d#0@@5|)))
 :pattern ( (|Set#IsMember| |deps#0@@5| ($Box DatatypeTypeType |d#0@@5|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@6) |p#0@@15| (Lit DatatypeTypeType |cert#0@@6|) |deps#0@@5| |st#0@@9|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@5|)) (|lambda#26| (M3.__default.DomSt |st#0@@9|) |st#0@@9| ($LS $ly@@6) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))) |st#0@@9|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6085|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@6) |p#0@@15| (Lit DatatypeTypeType |cert#0@@6|) |deps#0@@5| |st#0@@9|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@7 T@U) (|p#0@@16| T@U) (|cert#0@@7| T@U) (|deps#0@@6| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@16| |cert#0@@7| |deps#0@@6| |st#0@@10|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@16| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@7| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@6| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@10| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@16| |cert#0@@7|) (|Set#Equal| |deps#0@@6| (M3.__default.LocInv__Deps |p#0@@16|)))))) (and (forall ((|d#0@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@6| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@6| ($Box DatatypeTypeType |d#0@@6|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@10|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@10|) ($Box DatatypeTypeType |d#0@@6|)) (|M3.__default.GetSt#canCall| |d#0@@6| |st#0@@10|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@10|) ($Box DatatypeTypeType |d#0@@6|))) (and (and (M3.WFCertificate.Cert_q |cert#0@@7|) (|M3.__default.FindCert#canCall| |d#0@@6| (M3.WFCertificate.certs |cert#0@@7|))) (|M3.__default.OracleWF#canCall| |d#0@@6| (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@7|)) |st#0@@10|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6082|
 :pattern ( (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@7|)))
 :pattern ( (M3.__default.GetSt |d#0@@6| |st#0@@10|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@10|) ($Box DatatypeTypeType |d#0@@6|)))
 :pattern ( (|Set#IsMember| |deps#0@@6| ($Box DatatypeTypeType |d#0@@6|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@7) |p#0@@16| |cert#0@@7| |deps#0@@6| |st#0@@10|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@6|)) (|lambda#26| (M3.__default.DomSt |st#0@@10|) |st#0@@10| $ly@@7 (M3.WFCertificate.certs |cert#0@@7|) |st#0@@10|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6083|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@7) |p#0@@16| |cert#0@@7| |deps#0@@6| |st#0@@10|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@8 T@U) (|p#0@@17| T@U) (|cert#0@@8| T@U) (|st#0@@11| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) (Lit DatatypeTypeType |st#0@@11|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@17| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@8| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@11| Tclass.M3.State)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|)))))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@17|)) (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@17|))) (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@17|))) (let ((|e#2| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@17|)))))
(let ((|deps#2| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@17|)))))
(let ((|cmd#2| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@17|)))))
 (and (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) |deps#2| (Lit DatatypeTypeType |st#0@@11|)) (|M3.__default.RunTool#canCall| |cmd#2| (M3.__default.CollectDependencies ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) |deps#2| (Lit DatatypeTypeType |st#0@@11|)) |e#2|)))))) (= (M3.__default.OracleWF ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) (Lit DatatypeTypeType |st#0@@11|)) (let ((|e#2@@0| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@17|)))))
(let ((|deps#2@@0| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@17|)))))
(let ((|cmd#2@@0| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@17|)))))
(M3.__default.RunTool |cmd#2@@0| (M3.__default.CollectDependencies ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@11|)) |e#2@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6064|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@17|) (Lit DatatypeTypeType |cert#0@@8|) (Lit DatatypeTypeType |st#0@@11|)))
))))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5105|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5196|
 :pattern ( (|Seq#Equal| a@@8 b@@8))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |5255|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall ((|a#46#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State) ($Is MapType |a#46#0#0| (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6941|
 :pattern ( ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> ($Is DatatypeTypeType d@@20 Tclass.M3.Path) (or (M3.Path.InternalPath_q d@@20) (M3.Path.ExternalPath_q d@@20)))
 :qid |unknown.0:0|
 :skolemid |6901|
 :pattern ( (M3.Path.ExternalPath_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Path))
 :pattern ( (M3.Path.InternalPath_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Path))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4982|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TChar) (and (= ($Box charType ($Unbox charType bx@@8)) bx@@8) ($Is charType ($Unbox charType bx@@8) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |4985|
 :pattern ( ($IsBox bx@@8 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert  (=> |$let#3$canCall| (and ($Is SeqType |$let#3_cmd| (TSeq TChar)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> |$let#17$canCall| (and ($Is SeqType |$let#17_exp| (TSeq TChar)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@9) ($IsAllocBox bx@@9 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@2 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |4964|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |4965|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |4966|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |5403|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |5408|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |5409|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |5418|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |5420|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
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
(assert  (=> |$let#0$canCall| (and ($Is DatatypeTypeType |$let#0_a| Tclass.M3.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@2) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5028|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5029|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| |a#13#0#0| |a#13#1#0| |a#13#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6880|
 :pattern ( (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4962|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4963|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|)) |##M3.Artifact.ArtifactCons|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6846|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M3.Artifact._h11 (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6853|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|))
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
(assert (forall ((|a#44#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.State.StateCons| |a#44#0#0|)) |##M3.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6937|
 :pattern ( (|#M3.State.StateCons| |a#44#0#0|))
)))
(assert (forall ((|a#48#0#0| T@U) ) (! (= (M3.State.m (|#M3.State.StateCons| |a#48#0#0|)) |a#48#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6944|
 :pattern ( (|#M3.State.StateCons| |a#48#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@10) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@10) t1@@1 h@@2) ($IsAllocBox bx@@10 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |5030|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@10))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |5031|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@4 t1@@1) h@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@18| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@18|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@18| Tclass.M3.Path))) ($Is SetType (M3.__default.LocInv__Deps |p#0@@18|) (TSet Tclass.M3.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |5687|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@18|))
))))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5419|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5421|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (< (DtRank |a#41#0#0|) (DtRank (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6929|
 :pattern ( (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@19| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@19| (Lit DatatypeTypeType |st#0@@12|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@19| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@12| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) ($Box DatatypeTypeType |p#0@@19|))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@12|)) (= (M3.__default.GetSt |p#0@@19| (Lit DatatypeTypeType |st#0@@12|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@12|)))) ($Box DatatypeTypeType |p#0@@19|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6472|
 :pattern ( (M3.__default.GetSt |p#0@@19| (Lit DatatypeTypeType |st#0@@12|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@9 T@U) (|p#0@@20| T@U) (|cert#0@@9| T@U) (|deps#0@@7| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@20| |cert#0@@9| |deps#0@@7| |st#0@@13|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@20| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@9| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@7| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@13| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#0@@9|) (|Set#Equal| |deps#0@@7| (M3.__default.LocInv__Deps |p#0@@20|)))))) ($Is MapType (M3.__default.CollectDependencies $ly@@9 |p#0@@20| |cert#0@@9| |deps#0@@7| |st#0@@13|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6080|
 :pattern ( (M3.__default.CollectDependencies $ly@@9 |p#0@@20| |cert#0@@9| |deps#0@@7| |st#0@@13|))
))))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |5240|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6850|
 :pattern ( ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact))
)))
(assert (forall (($ly@@10 T@U) (|p#0@@21| T@U) (|cert#0@@10| T@U) (|st#0@@14| T@U) ) (! (= (M3.__default.OracleWF ($LS $ly@@10) |p#0@@21| |cert#0@@10| |st#0@@14|) (M3.__default.OracleWF $ly@@10 |p#0@@21| |cert#0@@10| |st#0@@14|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6058|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@10) |p#0@@21| |cert#0@@10| |st#0@@14|))
)))
(assert  (=> |$let#10$canCall| (and ($Is SetType |$let#10_deps| (TSet Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|cmd#0@@4| T@U) (|deps#0@@8| T@U) (|exp#0@@2| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@4| |deps#0@@8| |exp#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) ($Is SeqType |cmd#0@@4| (TSeq TChar))) ($Is MapType |deps#0@@8| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@2| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool |cmd#0@@4| |deps#0@@8| |exp#0@@2|) (let ((|a#0| |$let#0_a|))
|a#0|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :skolemid |5673|
 :pattern ( (M3.__default.RunTool |cmd#0@@4| |deps#0@@8| |exp#0@@2|) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((bx@@11 T@U) (s@@0 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TMap s@@0 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@11)) bx@@11) ($Is MapType ($Unbox MapType bx@@11) (TMap s@@0 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@11 (TMap s@@0 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5410|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#M3.Path.ExternalPath| |a#28#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6898|
 :pattern ( (|#M3.Path.ExternalPath| |a#28#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@5 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@5 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@5 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@6 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@6 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@6 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5407|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@21 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (M3.Artifact.ArtifactCons_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.M3.Artifact $h@@1))) ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@21)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |6851|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@21)) TInt $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@22| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@22|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |p#0@@22| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@22|)))))) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@22|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@22|)) (let ((|cmd#3| (Lit SeqType (M3.Path.cmd (Lit DatatypeTypeType |p#0@@22|)))))
|cmd#3|) (let ((|cmd#4| |$let#3_cmd|))
|cmd#4|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :weight 3
 :skolemid |5686|
 :pattern ( (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@22|)) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|p#0@@23| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@23|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) ($Is DatatypeTypeType |p#0@@23| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@23|)))))) |$let#10$canCall|) (= (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@23|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@23|)) (let ((|deps#3| (Lit SetType (M3.Path.deps (Lit DatatypeTypeType |p#0@@23|)))))
|deps#3|) (let ((|deps#4| |$let#10_deps|))
|deps#4|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :weight 3
 :skolemid |5690|
 :pattern ( (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@23|)) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|p#0@@24| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@24|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) ($Is DatatypeTypeType |p#0@@24| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@24|)))))) |$let#17$canCall|) (= (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@24|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@24|)) (let ((|exp#3| (Lit SeqType (M3.Path.exp (Lit DatatypeTypeType |p#0@@24|)))))
|exp#3|) (let ((|exp#4| |$let#17_exp|))
|exp#4|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :weight 3
 :skolemid |5694|
 :pattern ( (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@24|)) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) (|p#0@@25| T@U) (|cert#0@@11| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@25| (Lit DatatypeTypeType |cert#0@@11|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@25| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@11| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@11|)))) (|$IsA#M3.Path| |p#0@@25|)) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@11|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@11|)) |p#0@@25|) (and (forall ((|d#1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@25|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1|)) (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@11|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@11|))) ($Box DatatypeTypeType |c#2|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#2|)) (|$IsA#M3.Path| |d#1|)) (M3.WFCertificate.Cert_q |c#2|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5785|
 :pattern ( (M3.WFCertificate.p |c#2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5786|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1|)))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1@@0|)) (exists ((|c#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@11|))) ($Box DatatypeTypeType |c#2@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@0|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5788|
 :pattern ( (M3.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#2@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5789|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1@@0|)))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@11|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@11|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M3.WFCertificate.Cert_q |c#3@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5787|
 :pattern ( (M3.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@11) |p#0@@25| (Lit DatatypeTypeType |cert#0@@11|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@11|)) |p#0@@25|) (forall ((|d#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@1| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1@@1|)) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@11|))) ($Box DatatypeTypeType |c#2@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@1|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5782|
 :pattern ( (M3.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5783|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@25|) ($Box DatatypeTypeType |d#1@@1|)))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@11|))) ($Box DatatypeTypeType |c#3@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@11) (M3.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5784|
 :pattern ( (M3.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5790|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@11) |p#0@@25| (Lit DatatypeTypeType |cert#0@@11|)))
))))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |5228|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |5229|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |5230|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |5231|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |5239|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |5237|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |5238|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@6))
)))
(assert (forall ((d@@22 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@22)) (DtRank d@@22))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5039|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@22)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@12 T@U) (|p#0@@26| T@U) (|cert#0@@12| T@U) (|deps#0@@9| T@U) (|st#0@@15| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@26|) (Lit DatatypeTypeType |cert#0@@12|) (Lit SetType |deps#0@@9|) (Lit DatatypeTypeType |st#0@@15|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@26| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@12| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@9| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@15| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@26|) (Lit DatatypeTypeType |cert#0@@12|)) (|Set#Equal| |deps#0@@9| (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@26|))))))) (and (forall ((|d#0@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@7| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@9|) ($Box DatatypeTypeType |d#0@@7|)) (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@15|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@15|))) ($Box DatatypeTypeType |d#0@@7|)) (|M3.__default.GetSt#canCall| |d#0@@7| (Lit DatatypeTypeType |st#0@@15|)))) (=> (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@15|))) ($Box DatatypeTypeType |d#0@@7|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (|M3.__default.FindCert#canCall| |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))))) (|M3.__default.OracleWF#canCall| |d#0@@7| (M3.__default.FindCert |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|)))) (Lit DatatypeTypeType |st#0@@15|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6086|
 :pattern ( (M3.__default.FindCert |d#0@@7| (M3.WFCertificate.certs |cert#0@@12|)))
 :pattern ( (M3.__default.GetSt |d#0@@7| |st#0@@15|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@15|) ($Box DatatypeTypeType |d#0@@7|)))
 :pattern ( (|Set#IsMember| |deps#0@@9| ($Box DatatypeTypeType |d#0@@7|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@12) (Lit DatatypeTypeType |p#0@@26|) (Lit DatatypeTypeType |cert#0@@12|) (Lit SetType |deps#0@@9|) (Lit DatatypeTypeType |st#0@@15|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (Lit SetType |deps#0@@9|))) (|lambda#26| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@15|))) (Lit DatatypeTypeType |st#0@@15|) ($LS $ly@@12) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) (Lit DatatypeTypeType |st#0@@15|)) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6087|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@12) (Lit DatatypeTypeType |p#0@@26|) (Lit DatatypeTypeType |cert#0@@12|) (Lit SetType |deps#0@@9|) (Lit DatatypeTypeType |st#0@@15|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@9 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@8| |certs#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@9) ($Is DatatypeTypeType |d#0@@8| Tclass.M3.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M3.WFCertificate))) (exists ((|c#1@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#1@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#1@@1|) |d#0@@8|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6107|
 :pattern ( (M3.WFCertificate.p |c#1@@1|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@1|)))
))))) (and (|$let#36$canCall| |certs#0@@2| |d#0@@8|) (= (M3.__default.FindCert |d#0@@8| |certs#0@@2|) (let ((|c#2@@2| (|$let#36_c| |certs#0@@2| |d#0@@8|)))
|c#2@@2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |6110|
 :pattern ( (M3.__default.FindCert |d#0@@8| |certs#0@@2|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (d@@23 T@U) ) (!  (=> (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@23)) (< (DtRank d@@23) (DtRank (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6885|
 :pattern ( (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@23)) (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((bx@@13 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@13 (TSet t@@11)))
)))
(assert (forall ((bx@@14 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@14 (TSeq t@@12)))
)))
(assert (forall ((v@@7 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@6 t1@@3)) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@15) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@15) t1@@3) ($IsBox bx@@15 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |5010|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@15))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |5011|
 :pattern ( ($Is MapType v@@7 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (d@@24 T@U) ) (!  (=> (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@24)) (< (DtRank d@@24) (DtRank (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6931|
 :pattern ( (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@24)) (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((d@@25 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@25 Tclass.M3.Artifact)) ($IsAlloc DatatypeTypeType d@@25 Tclass.M3.Artifact $h@@2))
 :qid |unknown.0:0|
 :skolemid |6854|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 Tclass.M3.Artifact $h@@2))
)))
(assert (forall ((d@@26 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@26 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@26 Tclass.M3.Path $h@@3))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass.M3.Path $h@@3))
)))
(assert (forall ((d@@27 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@27 Tclass.M3.WFCertificate)) ($IsAlloc DatatypeTypeType d@@27 Tclass.M3.WFCertificate $h@@4))
 :qid |unknown.0:0|
 :skolemid |6932|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass.M3.WFCertificate $h@@4))
)))
(assert (forall ((d@@28 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@28 Tclass.M3.State)) ($IsAlloc DatatypeTypeType d@@28 Tclass.M3.State $h@@5))
 :qid |unknown.0:0|
 :skolemid |6947|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass.M3.State $h@@5))
)))
(assert (= (Tag Tclass.M3.State) Tagclass.M3.State))
(assert (= (TagFamily Tclass.M3.State) tytagFamily$State))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M3.Artifact) Tagclass.M3.Artifact))
(assert (= (TagFamily Tclass.M3.Artifact) tytagFamily$Artifact))
(assert (= (Tag Tclass.M3.WFCertificate) Tagclass.M3.WFCertificate))
(assert (= (TagFamily Tclass.M3.WFCertificate) tytagFamily$WFCertificate))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#26| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0| |l#4|) |$w#0@@0|) ($Box DatatypeTypeType (ite (|Set#IsMember| |l#0@@1| |$w#0@@0|) (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@0|) |l#1@@1|) (M3.__default.OracleWF |l#2@@0| ($Unbox DatatypeTypeType |$w#0@@0|) (M3.__default.FindCert ($Unbox DatatypeTypeType |$w#0@@0|) |l#3@@0|) |l#4|))))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7210|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#26| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0| |l#4|) |$w#0@@0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6893|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path))
)))
(assert (forall ((d@@29 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M3.Path.InternalPath_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.M3.Path $h@@6))) ($IsAlloc SeqType (M3.Path.cmd d@@29) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |6877|
 :pattern ( ($IsAlloc SeqType (M3.Path.cmd d@@29) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@30 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (M3.Path.InternalPath_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass.M3.Path $h@@7))) ($IsAlloc SeqType (M3.Path.exp d@@30) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |6879|
 :pattern ( ($IsAlloc SeqType (M3.Path.exp d@@30) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@31 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M3.Path.ExternalPath_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.M3.Path $h@@8))) ($IsAlloc SeqType (M3.Path._h13 d@@31) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |6894|
 :pattern ( ($IsAlloc SeqType (M3.Path._h13 d@@31) (TSeq TChar) $h@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Equal| a@@9 b@@9) (forall ((o T@U) ) (! (= (|Set#IsMember| a@@9 o) (|Set#IsMember| b@@9 o))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5103|
 :pattern ( (|Set#IsMember| a@@9 o))
 :pattern ( (|Set#IsMember| b@@9 o))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5104|
 :pattern ( (|Set#Equal| a@@9 b@@9))
)))
(assert (forall ((d@@32 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@32) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@32) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@32) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@33 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@33) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@33 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |5415|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@33) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |5416|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@33) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert (forall ((d@@34 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M3.WFCertificate.Cert_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass.M3.WFCertificate $h@@11))) ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@34) Tclass.M3.Path $h@@11))
 :qid |unknown.0:0|
 :skolemid |6925|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@34) Tclass.M3.Path $h@@11))
)))
(assert (forall ((certs T@U) (d@@35 T@U) ) (!  (=> (|$let#36$canCall| certs d@@35) (and ($Is DatatypeTypeType (|$let#36_c| certs d@@35) Tclass.M3.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#36_c| certs d@@35))) (|M3.Path#Equal| (M3.WFCertificate.p (|$let#36_c| certs d@@35)) d@@35))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |6109|
 :pattern ( (|$let#36_c| certs d@@35))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5417|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) ) (! (= (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)) (Lit DatatypeTypeType (|#M3.WFCertificate.Cert| |a#39#0#0| |a#39#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6927|
 :pattern ( (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4973|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#M3.Artifact.ArtifactCons| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#3#0#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6852|
 :pattern ( (|#M3.Artifact.ArtifactCons| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#M3.Path.ExternalPath| |a#25#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6895|
 :pattern ( (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#47#0#0| T@U) ) (! (= (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)) (Lit DatatypeTypeType (|#M3.State.StateCons| |a#47#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6943|
 :pattern ( (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((|a#49#0#0| T@U) (d@@36 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@36)) (< (DtRank d@@36) (DtRank (|#M3.State.StateCons| |a#49#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6945|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@36)) (|#M3.State.StateCons| |a#49#0#0|))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((d@@37 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (M3.Path.InternalPath_q d@@37) ($IsAlloc DatatypeTypeType d@@37 Tclass.M3.Path $h@@12))) ($IsAlloc SetType (M3.Path.deps d@@37) (TSet Tclass.M3.Path) $h@@12))
 :qid |unknown.0:0|
 :skolemid |6878|
 :pattern ( ($IsAlloc SetType (M3.Path.deps d@@37) (TSet Tclass.M3.Path) $h@@12))
)))
(assert (forall ((d@@38 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M3.WFCertificate.Cert_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.M3.WFCertificate $h@@13))) ($IsAlloc SetType (M3.WFCertificate.certs d@@38) (TSet Tclass.M3.WFCertificate) $h@@13))
 :qid |unknown.0:0|
 :skolemid |6926|
 :pattern ( ($IsAlloc SetType (M3.WFCertificate.certs d@@38) (TSet Tclass.M3.WFCertificate) $h@@13))
)))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5016|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@9 T@U) ) (! ($IsAlloc charType v@@9 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5019|
 :pattern ( ($IsAlloc charType v@@9 TChar h@@4))
)))
(assert (forall ((v@@10 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@10 (TSeq t0@@7)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@10))) ($IsBox (|Seq#Index| v@@10 i@@3) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@10 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@10 (TSeq t0@@7)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@11 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@11)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |5232|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |5233|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@2 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@4))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@4))))
)))
(assert (forall ((v@@12 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@12 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@12) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@12) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@12) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |5012|
 :pattern ( ($Is MapType v@@12 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4995|
 :pattern ( ($Is intType v@@13 TInt))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is charType v@@14 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |4998|
 :pattern ( ($Is charType v@@14 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |p#0@@27| () T@U)
(declare-fun |cert0#0| () T@U)
(declare-fun |deps#0@@10| () T@U)
(declare-fun |st#0@@16| () T@U)
(declare-fun |cert1#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |d#0_0@0| () T@U)
(declare-fun |##certs#0_0@0| () T@U)
(declare-fun |cert0##0_0@0| () T@U)
(declare-fun |##certs#0_1@0| () T@U)
(declare-fun |cert1##0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@10 () T@U)
(set-info :boogie-vc-id Impl$$M3.__default.Collect__CertificateInsensitivity)
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
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (=> false (|Map#Equal| (M3.__default.CollectDependencies ($LS ($LS $LZ)) |p#0@@27| |cert0#0| |deps#0@@10| |st#0@@16|) (M3.__default.CollectDependencies ($LS ($LS $LZ)) |p#0@@27| |cert1#0| |deps#0@@10| |st#0@@16|))))))
(let ((anon3_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and (forall ((|d#0_1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |d#0_1| Tclass.M3.Path) (|Set#IsMember| |deps#0@@10| ($Box DatatypeTypeType |d#0_1|))) (|M3.Artifact#Equal| (M3.__default.OracleWF ($LS $LZ) |d#0_1| (M3.__default.FindCert |d#0_1| (M3.WFCertificate.certs |cert0#0|)) |st#0@@16|) (M3.__default.OracleWF ($LS $LZ) |d#0_1| (M3.__default.FindCert |d#0_1| (M3.WFCertificate.certs |cert1#0|)) |st#0@@16|)))
 :qid |CloudMakeParallelBuildsdfy.687:12|
 :skolemid |6208|
 :pattern ( (M3.__default.FindCert |d#0_1| (M3.WFCertificate.certs |cert1#0|)))
 :pattern ( (M3.__default.FindCert |d#0_1| (M3.WFCertificate.certs |cert0#0|)))
 :pattern ( (|Set#IsMember| |deps#0@@10| ($Box DatatypeTypeType |d#0_1|)))
)) (= (ControlFlow 0 10) 9))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct  (=> ($Is DatatypeTypeType |d#0_0@0| Tclass.M3.Path) (=> (and (|Set#IsMember| |deps#0@@10| ($Box DatatypeTypeType |d#0_0@0|)) ($IsAlloc DatatypeTypeType |d#0_0@0| Tclass.M3.Path $Heap@0)) (=> (and (and (and (M3.WFCertificate.Cert_q |cert0#0|) (= |##certs#0_0@0| (M3.WFCertificate.certs |cert0#0|))) (and ($IsAlloc SetType |##certs#0_0@0| (TSet Tclass.M3.WFCertificate) $Heap@0) (exists ((|c#0_0| T@U) ) (!  (and ($Is DatatypeTypeType |c#0_0| Tclass.M3.WFCertificate) (and (|Set#IsMember| |##certs#0_0@0| ($Box DatatypeTypeType |c#0_0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0_0|) |d#0_0@0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6204|
 :pattern ( (M3.WFCertificate.p |c#0_0|))
 :pattern ( (|Set#IsMember| |##certs#0_0@0| ($Box DatatypeTypeType |c#0_0|)))
)))) (and (and (|M3.__default.FindCert#canCall| |d#0_0@0| (M3.WFCertificate.certs |cert0#0|)) (M3.WFCertificate.Cert_q (M3.__default.FindCert |d#0_0@0| (M3.WFCertificate.certs |cert0#0|)))) (and (M3.WFCertificate.Cert_q |cert0#0|) (|M3.__default.FindCert#canCall| |d#0_0@0| (M3.WFCertificate.certs |cert0#0|))))) (=> (and (and (and (and (= |cert0##0_0@0| (M3.__default.FindCert |d#0_0@0| (M3.WFCertificate.certs |cert0#0|))) ($IsAlloc DatatypeTypeType |d#0_0@0| Tclass.M3.Path $Heap@0)) (and (M3.WFCertificate.Cert_q |cert1#0|) (= |##certs#0_1@0| (M3.WFCertificate.certs |cert1#0|)))) (and (and ($IsAlloc SetType |##certs#0_1@0| (TSet Tclass.M3.WFCertificate) $Heap@0) (exists ((|c#0_1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0_1| Tclass.M3.WFCertificate) (and (|Set#IsMember| |##certs#0_1@0| ($Box DatatypeTypeType |c#0_1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0_1|) |d#0_0@0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6206|
 :pattern ( (M3.WFCertificate.p |c#0_1|))
 :pattern ( (|Set#IsMember| |##certs#0_1@0| ($Box DatatypeTypeType |c#0_1|)))
))) (and (|M3.__default.FindCert#canCall| |d#0_0@0| (M3.WFCertificate.certs |cert1#0|)) (M3.WFCertificate.Cert_q (M3.__default.FindCert |d#0_0@0| (M3.WFCertificate.certs |cert1#0|)))))) (and (and (and (M3.WFCertificate.Cert_q |cert1#0|) (|M3.__default.FindCert#canCall| |d#0_0@0| (M3.WFCertificate.certs |cert1#0|))) (= |cert1##0_0@0| (M3.__default.FindCert |d#0_0@0| (M3.WFCertificate.certs |cert1#0|)))) (and (or (or (<= 0 (LitInt 0)) (< (DtRank |cert0##0_0@0|) (DtRank |cert0#0|))) (= (LitInt 1) (LitInt 0))) (or (< (DtRank |cert0##0_0@0|) (DtRank |cert0#0|)) (and (= (DtRank |cert0##0_0@0|) (DtRank |cert0#0|)) (< (LitInt 1) (LitInt 0))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert0##0_0@0|) |d#0_0@0|)))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert0##0_0@0|) |d#0_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (forall ((|d#2@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#2@@2|)) (exists ((|c#4@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#4@@3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@3|) |d#2@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6130|
 :pattern ( (M3.WFCertificate.p |c#4@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#4@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6131|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#2@@2|)))
))))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (forall ((|d#2@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#2@@3|)) (exists ((|c#4@@4| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@4| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#4@@4|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@4|) |d#2@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6130|
 :pattern ( (M3.WFCertificate.p |c#4@@4|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#4@@4|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6131|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#2@@3|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (forall ((|c#5@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@2| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#5@@2|)) (M3.__default.CheckWellFounded ($LS ($LS $LZ)) (M3.WFCertificate.p |c#5@@2|) |c#5@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6132|
 :pattern ( (M3.WFCertificate.p |c#5@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#5@@2|)))
))))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert0##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert0##0_0@0|) (forall ((|c#5@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@3| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#5@@3|)) (M3.__default.CheckWellFounded ($LS ($LS $LZ)) (M3.WFCertificate.p |c#5@@3|) |c#5@@3|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6132|
 :pattern ( (M3.WFCertificate.p |c#5@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0##0_0@0|) ($Box DatatypeTypeType |c#5@@3|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert1##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert1##0_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert1##0_0@0|) |d#0_0@0|)))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert1##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert1##0_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert1##0_0@0|) |d#0_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert1##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert1##0_0@0|) (forall ((|d#3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#3|)) (exists ((|c#6@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#6@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#6@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#6@@0|) |d#3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6137|
 :pattern ( (M3.WFCertificate.p |c#6@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#6@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6138|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#3|)))
))))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert1##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert1##0_0@0|) (forall ((|d#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#3@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#3@@0|)) (exists ((|c#6@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#6@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#6@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#6@@1|) |d#3@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6137|
 :pattern ( (M3.WFCertificate.p |c#6@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#6@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6138|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |d#0_0@0|) ($Box DatatypeTypeType |d#3@@0|)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|M3.__default.CheckWellFounded#canCall| |d#0_0@0| |cert1##0_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |d#0_0@0| |cert1##0_0@0|) (forall ((|c#7| T@U) ) (!  (=> ($Is DatatypeTypeType |c#7| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#7|)) (M3.__default.CheckWellFounded ($LS ($LS $LZ)) (M3.WFCertificate.p |c#7|) |c#7|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6139|
 :pattern ( (M3.WFCertificate.p |c#7|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert1##0_0@0|) ($Box DatatypeTypeType |c#7|)))
)))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@10 alloc false)) (=> (and (and (and (|$IsA#M3.Path| |p#0@@27|) (|$IsA#M3.WFCertificate| |cert0#0|)) (and (|$IsA#M3.WFCertificate| |cert1#0|) (|$IsA#M3.State| |st#0@@16|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@10 $Heap@0) (forall ((|$ih#p0#0| T@U) (|$ih#cert00#0| T@U) (|$ih#cert10#0| T@U) (|$ih#deps0#0| T@U) (|$ih#st0#0| T@U) ) (!  (=> (and (and (and (and (and (and ($Is DatatypeTypeType |$ih#p0#0| Tclass.M3.Path) ($Is DatatypeTypeType |$ih#cert00#0| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |$ih#cert10#0| Tclass.M3.WFCertificate)) ($Is SetType |$ih#deps0#0| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |$ih#st0#0| Tclass.M3.State)) (and (and (M3.__default.CheckWellFounded ($LS $LZ) |$ih#p0#0| |$ih#cert00#0|) (M3.__default.CheckWellFounded ($LS $LZ) |$ih#p0#0| |$ih#cert10#0|)) (|Set#Equal| |$ih#deps0#0| (M3.__default.LocInv__Deps |$ih#p0#0|)))) (or (< (DtRank |$ih#cert00#0|) (DtRank |cert0#0|)) (and (= (DtRank |$ih#cert00#0|) (DtRank |cert0#0|)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (LitInt 0)))))) (|Map#Equal| (M3.__default.CollectDependencies ($LS $LZ) |$ih#p0#0| |$ih#cert00#0| |$ih#deps0#0| |$ih#st0#0|) (M3.__default.CollectDependencies ($LS $LZ) |$ih#p0#0| |$ih#cert10#0| |$ih#deps0#0| |$ih#st0#0|)))
 :qid |CloudMakeParallelBuildsdfy.682:42|
 :skolemid |6202|
 :pattern ( (M3.__default.CollectDependencies ($LS $LZ) |$ih#p0#0| |$ih#cert10#0| |$ih#deps0#0| |$ih#st0#0|) (M3.__default.CollectDependencies ($LS $LZ) |$ih#p0#0| |$ih#cert00#0| |$ih#deps0#0| |$ih#st0#0|))
 :pattern ( (M3.__default.CollectDependencies ($LS $LZ) |$ih#p0#0| |$ih#cert00#0| |$ih#deps0#0| |$ih#st0#0|) (M3.__default.CheckWellFounded ($LS $LZ) |$ih#p0#0| |$ih#cert10#0|))
))))) (and (=> (= (ControlFlow 0 11) 2) anon3_Then_correct) (=> (= (ControlFlow 0 11) 10) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@10) ($IsHeapAnchor $Heap@@10)) (=> (and (and (and (and ($Is DatatypeTypeType |p#0@@27| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#0@@27| Tclass.M3.Path $Heap@@10)) (|$IsA#M3.Path| |p#0@@27|)) (and (and ($Is DatatypeTypeType |cert0#0| Tclass.M3.WFCertificate) ($IsAlloc DatatypeTypeType |cert0#0| Tclass.M3.WFCertificate $Heap@@10)) (|$IsA#M3.WFCertificate| |cert0#0|))) (and (and (and ($Is DatatypeTypeType |cert1#0| Tclass.M3.WFCertificate) ($IsAlloc DatatypeTypeType |cert1#0| Tclass.M3.WFCertificate $Heap@@10)) (|$IsA#M3.WFCertificate| |cert1#0|)) (and ($Is SetType |deps#0@@10| (TSet Tclass.M3.Path)) ($IsAlloc SetType |deps#0@@10| (TSet Tclass.M3.Path) $Heap@@10)))) (=> (and (and (and (and (and ($Is DatatypeTypeType |st#0@@16| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st#0@@16| Tclass.M3.State $Heap@@10)) (|$IsA#M3.State| |st#0@@16|)) (= 5 $FunctionContextHeight)) (and (|M3.__default.CheckWellFounded#canCall| |p#0@@27| |cert0#0|) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@27| |cert0#0|) (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert0#0|) |p#0@@27|) (forall ((|d#4| T@U) ) (!  (=> ($Is DatatypeTypeType |d#4| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#4|)) (exists ((|c#8| T@U) ) (!  (and ($Is DatatypeTypeType |c#8| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#8|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#8|) |d#4|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6192|
 :pattern ( (M3.WFCertificate.p |c#8|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#8|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6193|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#4|)))
))) (forall ((|c#9| T@U) ) (!  (=> ($Is DatatypeTypeType |c#9| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#9|)) (M3.__default.CheckWellFounded ($LS $LZ) (M3.WFCertificate.p |c#9|) |c#9|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6194|
 :pattern ( (M3.WFCertificate.p |c#9|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#9|)))
)))))) (and (and (|M3.__default.CheckWellFounded#canCall| |p#0@@27| |cert1#0|) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@27| |cert1#0|) (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert1#0|) |p#0@@27|) (forall ((|d#5| T@U) ) (!  (=> ($Is DatatypeTypeType |d#5| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#5|)) (exists ((|c#10| T@U) ) (!  (and ($Is DatatypeTypeType |c#10| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#10|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#10|) |d#5|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6199|
 :pattern ( (M3.WFCertificate.p |c#10|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#10|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6200|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#5|)))
))) (forall ((|c#11| T@U) ) (!  (=> ($Is DatatypeTypeType |c#11| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#11|)) (M3.__default.CheckWellFounded ($LS $LZ) (M3.WFCertificate.p |c#11|) |c#11|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6201|
 :pattern ( (M3.WFCertificate.p |c#11|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#11|)))
))))) (and (|Set#Equal| |deps#0@@10| (M3.__default.LocInv__Deps |p#0@@27|)) (= (ControlFlow 0 12) 11)))) anon0_correct)))))
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
