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
(declare-fun Tagclass.M3.Tuple () T@U)
(declare-fun |##M3.Artifact.ArtifactCons| () T@U)
(declare-fun |##M3.Path.InternalPath| () T@U)
(declare-fun |##M3.Path.ExternalPath| () T@U)
(declare-fun |##M3.WFCertificate.Cert| () T@U)
(declare-fun |##M3.State.StateCons| () T@U)
(declare-fun |##M3.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Artifact () T@U)
(declare-fun tytagFamily$WFCertificate () T@U)
(declare-fun tytagFamily$Tuple () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M3.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M3.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M3.State.StateCons_q (T@U) Bool)
(declare-fun Tclass.M3.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun M3.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M3.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun M3.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M3.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M3.Path.InternalPath| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M3.__default.Restrict (T@U T@U) T@U)
(declare-fun |M3.__default.Restrict#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.GetSt (T@U T@U) T@U)
(declare-fun M3.__default.DomSt (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |M3.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |M3.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#16| (T@U T@U T@U) T@U)
(declare-fun |lambda#17| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M3.__default.PickOne (T@U T@U) T@U)
(declare-fun |M3.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun M3.__default.execOne (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |M3.__default.execOne#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun M3.Tuple.snd (T@U) T@U)
(declare-fun |M3.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun |M3.__default.SetSt#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M3.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M3.Tuple.fst (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun M3.__default.SetSt (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M3.Artifact| (T@U) Bool)
(declare-fun M3.Artifact.ArtifactCons_q (T@U) Bool)
(declare-fun |$IsA#M3.State| (T@U) Bool)
(declare-fun Tclass.M3.Tuple (T@U T@U) T@U)
(declare-fun |#M3.Path.ExternalPath| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Path.cmd (T@U) T@U)
(declare-fun M3.Path.deps (T@U) T@U)
(declare-fun M3.Path.exp (T@U) T@U)
(declare-fun |$let#27_x| (T@U T@U) T@U)
(declare-fun |$let#27$canCall| (T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun M3.Tuple.Pair_q (T@U) Bool)
(declare-fun M3.__default.Oracle (T@U T@U) T@U)
(declare-fun |M3.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M3.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |M3.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M3.Artifact#Equal| (T@U T@U) Bool)
(declare-fun M3.__default.FindCert (T@U T@U) T@U)
(declare-fun |M3.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M3.WFCertificate () T@U)
(declare-fun M3.WFCertificate.p (T@U) T@U)
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
(declare-fun |#M3.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun M3.__default.GetCert (T@U) T@U)
(declare-fun |M3.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M3.__default.WellFounded (T@U) Bool)
(declare-fun |$let#30$canCall| (T@U) Bool)
(declare-fun |$let#30_c| (T@U) T@U)
(declare-fun M3.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_a| () T@U)
(declare-fun |M3.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun |M3.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun M3.Path.InternalPath_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |#M3.State.StateCons| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |$IsA#M3.Path| (T@U) Bool)
(declare-fun M3.WFCertificate.certs (T@U) T@U)
(declare-fun |M3.State#Equal| (T@U T@U) Bool)
(declare-fun M3.__default.OracleArbitrary (T@U) T@U)
(declare-fun |M3.__default.OracleArbitrary#canCall| (T@U) Bool)
(declare-fun |$let#33$canCall| () Bool)
(declare-fun |$let#33_a| () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M3.Path.ExternalPath_q (T@U) Bool)
(declare-fun M3.__default.OneToOne (T@U T@U T@U T@U) Bool)
(declare-fun |M3.__default.OneToOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M3.Artifact.ArtifactCons| (Int) T@U)
(declare-fun M3.Artifact._h11 (T@U) Int)
(declare-fun M3.__default.ValidState (T@U) Bool)
(declare-fun |M3.__default.ValidState#canCall| (T@U) Bool)
(declare-fun |$let#3$canCall| () Bool)
(declare-fun |$let#3_cmd| () T@U)
(declare-fun |$let#10$canCall| () Bool)
(declare-fun |$let#10_deps| () T@U)
(declare-fun |$let#17$canCall| () Bool)
(declare-fun |$let#17_exp| () T@U)
(declare-fun M3.Path._h13 (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |lambda#26| (T@U T@U T@U T@U T@U) T@U)
(declare-fun M3.__default.Post (T@U T@U T@U T@U) Bool)
(declare-fun |M3.__default.Post#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun M3.__default.Extends (T@U T@U) Bool)
(declare-fun |M3.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M3.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M3.Tuple_1 (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.State Tagclass.M3.Path Tagclass.M3.Artifact Tagclass.M3.WFCertificate Tagclass.M3.Tuple |##M3.Artifact.ArtifactCons| |##M3.Path.InternalPath| |##M3.Path.ExternalPath| |##M3.WFCertificate.Cert| |##M3.State.StateCons| |##M3.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Path tytagFamily$Artifact tytagFamily$WFCertificate tytagFamily$Tuple)
)
(assert  (and (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($Is DatatypeTypeType (M3.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M3.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |5679|
 :pattern ( (M3.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Ctor MapType) 6))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M3.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M3.State $h))) ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |6942|
 :pattern ( ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |5084|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| |paths#0| |st#0|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0| Tclass.M3.State)))) (and (forall ((|p#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@1| Tclass.M3.Path) (and (=> (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)) (|M3.__default.DomSt#canCall| |st#0|)) (=> (and (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)) (|Set#IsMember| (M3.__default.DomSt |st#0|) ($Box DatatypeTypeType |p#0@@1|))) (|M3.__default.GetSt#canCall| |p#0@@1| |st#0|))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |5734|
 :pattern ( (M3.__default.GetSt |p#0@@1| |st#0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0|) ($Box DatatypeTypeType |p#0@@1|)))
 :pattern ( (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)))
)) (= (M3.__default.Restrict |paths#0| |st#0|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#16| Tclass.M3.Path |paths#0| (M3.__default.DomSt |st#0|))) (|lambda#17| |st#0|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |5735|
 :pattern ( (M3.__default.Restrict |paths#0| |st#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (M3._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M3._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M3._default.PickOne$T) $Heap)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap)) ($IsAllocBox (M3.__default.PickOne M3._default.PickOne$T |s#0|) M3._default.PickOne$T $Heap))
 :qid |CloudMakeParallelBuildsdfy.483:18|
 :skolemid |5750|
 :pattern ( ($IsAllocBox (M3.__default.PickOne M3._default.PickOne$T |s#0|) M3._default.PickOne$T $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|cmd#0@@0| T@U) (|deps#0@@0| T@U) (|restrictedState#0| T@U) (|exps#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@0| (TSeq TChar)) ($Is SetType |deps#0@@0| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@0| Tclass.M3.State)))) (and (=> (not (|Set#Equal| |exps#0| |Set#Empty|)) (and (|M3.__default.PickOne#canCall| (TSeq TChar) |exps#0|) (let ((|exp#0@@0| ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) |exps#0|))))
 (and (|M3.__default.execOne#canCall| |cmd#0@@0| |deps#0@@0| |restrictedState#0| (|Set#Difference| |exps#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@0|))) |st#0@@0|) (let ((|st'#0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne $ly |cmd#0@@0| |deps#0@@0| |restrictedState#0| (|Set#Difference| |exps#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@0|))) |st#0@@0|)))))
 (and (|M3.__default.Loc#canCall| |cmd#0@@0| |deps#0@@0| |exp#0@@0|) (let ((|p#0@@2| (M3.__default.Loc |cmd#0@@0| |deps#0@@0| |exp#0@@0|)))
 (and (|M3.__default.DomSt#canCall| |st'#0|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st'#0|) ($Box DatatypeTypeType |p#0@@2|))) (and (|M3.__default.RunTool#canCall| |cmd#0@@0| |restrictedState#0| |exp#0@@0|) (|M3.__default.SetSt#canCall| |p#0@@2| (M3.__default.RunTool |cmd#0@@0| |restrictedState#0| |exp#0@@0|) |st'#0|))))))))))) (= (M3.__default.execOne ($LS $ly) |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@0|) (ite (|Set#Equal| |exps#0| |Set#Empty|) (|#M3.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType |st#0@@0|)) (let ((|exp#0@@1| ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) |exps#0|))))
(let ((|st'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne $ly |cmd#0@@0| |deps#0@@0| |restrictedState#0| (|Set#Difference| |exps#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@0|)))))
(let ((|paths#0@@0| ($Unbox SetType (M3.Tuple.fst (M3.__default.execOne $ly |cmd#0@@0| |deps#0@@0| |restrictedState#0| (|Set#Difference| |exps#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@0|)))))
(let ((|p#0@@3| (M3.__default.Loc |cmd#0@@0| |deps#0@@0| |exp#0@@1|)))
(|#M3.Tuple.Pair| ($Box SetType (|Set#Union| |paths#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |p#0@@3|)))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M3.__default.DomSt |st'#0@@0|) ($Box DatatypeTypeType |p#0@@3|)) |st'#0@@0| (M3.__default.SetSt |p#0@@3| (M3.__default.RunTool |cmd#0@@0| |restrictedState#0| |exp#0@@1|) |st'#0@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5830|
 :pattern ( (M3.__default.execOne ($LS $ly) |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@0|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |5085|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |5089|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |5090|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@1| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@1| Tclass.M3.State))) (and (M3.State.StateCons_q |st#0@@1|) (= (M3.__default.DomSt |st#0@@1|) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m |st#0@@1|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6478|
 :pattern ( (M3.__default.DomSt |st#0@@1|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M3.Artifact| d@@0) (M3.Artifact.ArtifactCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |6855|
 :pattern ( (|$IsA#M3.Artifact| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M3.State| d@@1) (M3.State.StateCons_q d@@1))
 :qid |unknown.0:0|
 :skolemid |6948|
 :pattern ( (|$IsA#M3.State| d@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |5083|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|restrictedState#0@@0| T@U) (|exps#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| |cmd#0@@1| |deps#0@@1| |restrictedState#0@@0| |exps#0@@0| |st#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@1| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0@@0| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@2| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.execOne $ly@@0 |cmd#0@@1| |deps#0@@1| |restrictedState#0@@0| |exps#0@@0| |st#0@@2|) (Tclass.M3.Tuple (TSet Tclass.M3.Path) Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5828|
 :pattern ( (M3.__default.execOne $ly@@0 |cmd#0@@1| |deps#0@@1| |restrictedState#0@@0| |exps#0@@0| |st#0@@2|))
))))
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
))) (= (Ctor BoxType) 7)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7210|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)) a@@4)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |5241|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |5242|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)))
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
(assert (forall ((a@@6 T@U) (b@@3 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@6 b@@3) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |5099|
 :pattern ( (|Set#Difference| a@@6 b@@3) (|Set#IsMember| b@@3 y@@2))
)))
(assert (forall ((M3._default.PickOne$T@@0 T@U) (s T@U) ) (!  (=> (|$let#27$canCall| M3._default.PickOne$T@@0 s) (|Set#IsMember| s (|$let#27_x| M3._default.PickOne$T@@0 s)))
 :qid |CloudMakeParallelBuildsdfy.486:5|
 :skolemid |5752|
 :pattern ( (|$let#27_x| M3._default.PickOne$T@@0 s))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#16| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$w#0@@0|) (|Set#IsMember| |l#2| |$w#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7213|
 :pattern ( (MapType0Select BoxType boolType (|lambda#16| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@2))
 :qid |unknown.0:0|
 :skolemid |5423|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M3.Tuple$A T@U) (M3.Tuple$B T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.M3.Tuple M3.Tuple$A M3.Tuple$B)) (M3.Tuple.Pair_q d@@3))
 :qid |unknown.0:0|
 :skolemid |7198|
 :pattern ( (M3.Tuple.Pair_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M3.Tuple M3.Tuple$A M3.Tuple$B)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |5080|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@4| |st#0@@3|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@4| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@3| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.Oracle |p#0@@4| |st#0@@3|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |6035|
 :pattern ( (M3.__default.Oracle |p#0@@4| |st#0@@3|))
))))
(assert (forall (($ly@@1 T@U) (|p#0@@5| T@U) (|cert#0| T@U) (|deps#0@@2| T@U) (|st#0@@4| T@U) ) (! (= (M3.__default.CollectDependencies ($LS $ly@@1) |p#0@@5| |cert#0| |deps#0@@2| |st#0@@4|) (M3.__default.CollectDependencies $ly@@1 |p#0@@5| |cert#0| |deps#0@@2| |st#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6078|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@1) |p#0@@5| |cert#0| |deps#0@@2| |st#0@@4|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@3| T@U) (|exps#0@@1| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@5|)) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@5| Tclass.M3.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2|)) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@5|))) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@5|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (Lit DatatypeTypeType |st#0@@5|))) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (Lit DatatypeTypeType |st#0@@5|)))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (Lit DatatypeTypeType |st#0@@5|))) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2|) (Lit DatatypeTypeType |st#0@@5|)))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6566|
 :pattern ( (M3.__default.Loc |cmd#0@@2| |deps#0@@3| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2|)))
)) (= (M3.__default.Pre (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@5|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2@@0|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@5|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@5|)) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@5|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6565|
 :pattern ( (M3.__default.Loc |cmd#0@@2| |deps#0@@3| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |6567|
 :pattern ( (M3.__default.Pre (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@5|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|d#0| T@U) (|certs#0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |d#0| Tclass.M3.Path)) ($Is SetType |certs#0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#5| T@U) ) (!  (and ($Is DatatypeTypeType |c#5| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0|) ($Box DatatypeTypeType |c#5|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#5|) |d#0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6113|
 :pattern ( (M3.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| |certs#0| ($Box DatatypeTypeType |c#5|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|)) (= (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (let ((|c#6| (|$let#36_c| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6114|
 :pattern ( (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@6| T@U) (|cert#0@@0| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@6| |cert#0@@0| |st#0@@6|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@6| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@6| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@6| |cert#0@@0|)))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@6|) (|M3.__default.LocInv__Deps#canCall| |p#0@@6|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@6|)) (let ((|e#0| (M3.__default.LocInv__Exp |p#0@@6|)))
(let ((|deps#0@@4| (M3.__default.LocInv__Deps |p#0@@6|)))
(let ((|cmd#0@@3| (M3.__default.LocInv__Cmd |p#0@@6|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@6| |cert#0@@0| |deps#0@@4| |st#0@@6|) (|M3.__default.RunTool#canCall| |cmd#0@@3| (M3.__default.CollectDependencies $ly@@2 |p#0@@6| |cert#0@@0| |deps#0@@4| |st#0@@6|) |e#0|)))))) (= (M3.__default.OracleWF ($LS $ly@@2) |p#0@@6| |cert#0@@0| |st#0@@6|) (let ((|e#0@@0| (M3.__default.LocInv__Exp |p#0@@6|)))
(let ((|deps#0@@5| (M3.__default.LocInv__Deps |p#0@@6|)))
(let ((|cmd#0@@4| (M3.__default.LocInv__Cmd |p#0@@6|)))
(M3.__default.RunTool |cmd#0@@4| (M3.__default.CollectDependencies $ly@@2 |p#0@@6| |cert#0@@0| |deps#0@@5| |st#0@@6|) |e#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6062|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@2) |p#0@@6| |cert#0@@0| |st#0@@6|))
))))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate)  (and ($Is DatatypeTypeType |a#38#0#0| Tclass.M3.Path) ($Is SetType |a#38#1#0| (TSet Tclass.M3.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6924|
 :pattern ( ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |5093|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1)  (and (|Set#IsMember| a@@8 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |5098|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@7| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0@@7|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |p#0@@7| Tclass.M3.Path)) (M3.__default.WellFounded |p#0@@7|)))) (and (|$let#30$canCall| |p#0@@7|) (= (M3.__default.GetCert |p#0@@7|) (let ((|c#0| (|$let#30_c| |p#0@@7|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |6020|
 :pattern ( (M3.__default.GetCert |p#0@@7|) ($IsGoodHeap $Heap@@1))
))))
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
(assert (forall ((M3.Tuple$A@@0 T@U) (M3.Tuple$B@@0 T@U) (|a#196#0#0| T@U) (|a#196#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0| |a#196#1#0|) (Tclass.M3.Tuple M3.Tuple$A@@0 M3.Tuple$B@@0))  (and ($IsBox |a#196#0#0| M3.Tuple$A@@0) ($IsBox |a#196#1#0| M3.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |7186|
 :pattern ( ($Is DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0| |a#196#1#0|) (Tclass.M3.Tuple M3.Tuple$A@@0 M3.Tuple$B@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|cmd#0@@5| T@U) (|deps#0@@6| T@U) (|exp#0@@2| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| (Lit SeqType |cmd#0@@5|) (Lit MapType |deps#0@@6|) (Lit SeqType |exp#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($Is SeqType |cmd#0@@5| (TSeq TChar))) ($Is MapType |deps#0@@6| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@2| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool (Lit SeqType |cmd#0@@5|) (Lit MapType |deps#0@@6|) (Lit SeqType |exp#0@@2|)) (let ((|a#1| |$let#0_a|))
|a#1|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :weight 3
 :skolemid |5674|
 :pattern ( (M3.__default.RunTool (Lit SeqType |cmd#0@@5|) (Lit MapType |deps#0@@6|) (Lit SeqType |exp#0@@2|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@8| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| |p#0@@8|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@8| Tclass.M3.Path))) (and (forall ((|cert#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0@@1| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| |p#0@@8| |cert#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5760|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@1|))
)) (= (M3.__default.WellFounded |p#0@@8|) (exists ((|cert#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@2| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@2|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5759|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@2|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |5761|
 :pattern ( (M3.__default.WellFounded |p#0@@8|))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (and (M3.Path.InternalPath_q a@@9) (M3.Path.InternalPath_q b@@6)) (= (|M3.Path#Equal| a@@9 b@@6)  (and (and (|Seq#Equal| (M3.Path.cmd a@@9) (M3.Path.cmd b@@6)) (|Set#Equal| (M3.Path.deps a@@9) (M3.Path.deps b@@6))) (|Seq#Equal| (M3.Path.exp a@@9) (M3.Path.exp b@@6)))))
 :qid |unknown.0:0|
 :skolemid |6902|
 :pattern ( (|M3.Path#Equal| a@@9 b@@6) (M3.Path.InternalPath_q a@@9))
 :pattern ( (|M3.Path#Equal| a@@9 b@@6) (M3.Path.InternalPath_q b@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@0| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@0| |certs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |d#0@@0| Tclass.M3.Path) ($Is SetType |certs#0@@0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@0|) |d#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6105|
 :pattern ( (M3.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0@@0|)))
))))) ($Is DatatypeTypeType (M3.__default.FindCert |d#0@@0| |certs#0@@0|) Tclass.M3.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |6106|
 :pattern ( (M3.__default.FindCert |d#0@@0| |certs#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@7| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@7|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@7| Tclass.M3.State))) (and (forall ((|p#0@@9| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@9| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@7|) ($Box DatatypeTypeType |p#0@@9|)) (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@7|)) ($Box DatatypeTypeType |p#0@@9|))))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |6475|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@7|)) ($Box DatatypeTypeType |p#0@@9|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@7|) ($Box DatatypeTypeType |p#0@@9|)))
)) ($Is SetType (M3.__default.DomSt |st#0@@7|) (TSet Tclass.M3.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6476|
 :pattern ( (M3.__default.DomSt |st#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@10| T@U) (|a#0| T@U) (|st#0@@8| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@8|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@10| Tclass.M3.Path) ($Is DatatypeTypeType |a#0| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@8| Tclass.M3.State)))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@8|)) (= (M3.__default.SetSt |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@8|)) (|#M3.State.StateCons| (|Map#Build| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@8|))) ($Box DatatypeTypeType |p#0@@10|) ($Box DatatypeTypeType |a#0|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |5730|
 :pattern ( (M3.__default.SetSt |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@8|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|p#0@@11| T@U) (|cert#0@@3| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@11| |cert#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@11| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |cert#0@@3|)) (|$IsA#M3.Path| |p#0@@11|)) (M3.WFCertificate.Cert_q |cert#0@@3|)) (=> (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@3|) |p#0@@11|) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@11|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@1|)) (forall ((|c#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@3|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@1|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#0@@1|)) (|$IsA#M3.Path| |d#0@@1|)) (M3.WFCertificate.Cert_q |c#0@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5776|
 :pattern ( (M3.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@1|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5777|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@1|)))
)) (=> (forall ((|d#0@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@2|)) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@2|) |d#0@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5779|
 :pattern ( (M3.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5780|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@2|)))
)) (forall ((|c#1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@3|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1|)) (and (M3.WFCertificate.Cert_q |c#1|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#1|) |c#1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5778|
 :pattern ( (M3.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@3) |p#0@@11| |cert#0@@3|)  (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@3|) |p#0@@11|) (forall ((|d#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@3|)) (exists ((|c#0@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@3|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5773|
 :pattern ( (M3.WFCertificate.p |c#0@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5774|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@3|)))
))) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1@@0|)) (M3.__default.CheckWellFounded $ly@@3 (M3.WFCertificate.p |c#1@@0|) |c#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5775|
 :pattern ( (M3.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5781|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@3) |p#0@@11| |cert#0@@3|))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|M3.Artifact#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |unknown.0:0|
 :skolemid |6858|
 :pattern ( (|M3.Artifact#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|M3.Path#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |unknown.0:0|
 :skolemid |6904|
 :pattern ( (|M3.Path#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|M3.State#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |6951|
 :pattern ( (|M3.State#Equal| a@@12 b@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@12| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| |p#0@@12|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |p#0@@12| Tclass.M3.Path)))) (and |$let#33$canCall| (= (M3.__default.OracleArbitrary |p#0@@12|) (let ((|a#0@@0| |$let#33_a|))
|a#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |6056|
 :pattern ( (M3.__default.OracleArbitrary |p#0@@12|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@6| T@U) (|deps#0@@7| T@U) (|exps#0@@2| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) (Lit SetType |exps#0@@2|) |st#0@@9|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($Is SetType |deps#0@@7| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@9| Tclass.M3.State)))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is SeqType |e#1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1|)) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) (|M3.__default.DomSt#canCall| |st#0@@9|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) |st#0@@9|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) |st#0@@9|))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) |st#0@@9|)) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1|) |st#0@@9|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6563|
 :pattern ( (M3.__default.Loc |cmd#0@@6| |deps#0@@7| |e#1|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1|)))
)) (= (M3.__default.Pre (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) (Lit SetType |exps#0@@2|) |st#0@@9|) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@0|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1@@0|) |st#0@@9|) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) |e#1@@0|) |st#0@@9|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6562|
 :pattern ( (M3.__default.Loc |cmd#0@@6| |deps#0@@7| |e#1@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |6564|
 :pattern ( (M3.__default.Pre (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@7|) (Lit SetType |exps#0@@2|) |st#0@@9|))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@13 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@10 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |5243|
)) ($Is MapType (|Map#Glue| a@@13 b@@10 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |5244|
 :pattern ( (|Map#Glue| a@@13 b@@10 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@13| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@13| |st#0@@10|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@13| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@10| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@10|) ($Box DatatypeTypeType |p#0@@13|))))) ($Is DatatypeTypeType (M3.__default.GetSt |p#0@@13| |st#0@@10|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6469|
 :pattern ( (M3.__default.GetSt |p#0@@13| |st#0@@10|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@4 T@U) (|p#0@@14| T@U) (|cert#0@@4| T@U) (|st#0@@11| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@14| |cert#0@@4| |st#0@@11|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@14| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@4| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@11| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@14| |cert#0@@4|)))) ($Is DatatypeTypeType (M3.__default.OracleWF $ly@@4 |p#0@@14| |cert#0@@4| |st#0@@11|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6060|
 :pattern ( (M3.__default.OracleWF $ly@@4 |p#0@@14| |cert#0@@4| |st#0@@11|))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Subset| a@@14 b@@11) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@14 o@@2) (|Set#IsMember| b@@11 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |5101|
 :pattern ( (|Set#IsMember| a@@14 o@@2))
 :pattern ( (|Set#IsMember| b@@11 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |5102|
 :pattern ( (|Set#Subset| a@@14 b@@11))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |5412|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((M3.Tuple$A@@1 T@U) (M3.Tuple$B@@1 T@U) (|a#196#0#0@@0| T@U) (|a#196#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0@@0| |a#196#1#0@@0|) (Tclass.M3.Tuple M3.Tuple$A@@1 M3.Tuple$B@@1) $h@@1)  (and ($IsAllocBox |a#196#0#0@@0| M3.Tuple$A@@1 $h@@1) ($IsAllocBox |a#196#1#0@@0| M3.Tuple$B@@1 $h@@1))))
 :qid |unknown.0:0|
 :skolemid |7187|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0@@0| |a#196#1#0@@0|) (Tclass.M3.Tuple M3.Tuple$A@@1 M3.Tuple$B@@1) $h@@1))
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
(assert (forall ((d@@13 T@U) ) (! (= (M3.Tuple.Pair_q d@@13) (= (DatatypeCtorId d@@13) |##M3.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |7183|
 :pattern ( (M3.Tuple.Pair_q d@@13))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@7| T@U) (|deps#0@@8| T@U) (|exps#0@@3| T@U) (|paths#0@@1| T@U) ) (!  (=> (or (|M3.__default.OneToOne#canCall| |cmd#0@@7| |deps#0@@8| |exps#0@@3| |paths#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@7| (TSeq TChar)) ($Is SetType |deps#0@@8| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@1| (TSet Tclass.M3.Path))))) (and (forall ((|e#0@@1| T@U) ) (!  (=> ($Is SeqType |e#0@@1| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@1|)) (|M3.__default.Loc#canCall| |cmd#0@@7| |deps#0@@8| |e#0@@1|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |6580|
 :pattern ( (M3.__default.Loc |cmd#0@@7| |deps#0@@8| |e#0@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@1|)))
)) (= (M3.__default.OneToOne |cmd#0@@7| |deps#0@@8| |exps#0@@3| |paths#0@@1|) (forall ((|e#0@@2| T@U) ) (!  (=> ($Is SeqType |e#0@@2| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@2|)) (|Set#IsMember| |paths#0@@1| ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@7| |deps#0@@8| |e#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |6579|
 :pattern ( (M3.__default.Loc |cmd#0@@7| |deps#0@@8| |e#0@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :skolemid |6581|
 :pattern ( (M3.__default.OneToOne |cmd#0@@7| |deps#0@@8| |exps#0@@3| |paths#0@@1|))
))))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0@@2| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| |paths#0@@2| |st#0@@12|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0@@2| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0@@12| Tclass.M3.State)))) ($Is MapType (M3.__default.Restrict |paths#0@@2| |st#0@@12|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |5732|
 :pattern ( (M3.__default.Restrict |paths#0@@2| |st#0@@12|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|cmd#0@@8| T@U) (|deps#0@@9| T@U) (|restrictedState#0@@1| T@U) (|exps#0@@4| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@13|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@8| (TSeq TChar)) ($Is SetType |deps#0@@9| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0@@1| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@13| Tclass.M3.State)))) (and (=> (not (|Set#Equal| |exps#0@@4| |Set#Empty|)) (and (|M3.__default.PickOne#canCall| (TSeq TChar) (Lit SetType |exps#0@@4|)) (let ((|exp#1| (Lit SeqType ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@4|))))))
 (and (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@13|)) (let ((|st'#1| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $ly@@5) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@13|))))))
 (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1|) (let ((|p#1| (M3.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1|)))
 (and (|M3.__default.DomSt#canCall| |st'#1|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st'#1|) ($Box DatatypeTypeType |p#1|))) (and (|M3.__default.RunTool#canCall| (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1|) (|M3.__default.SetSt#canCall| |p#1| (M3.__default.RunTool (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1|) |st'#1|))))))))))) (= (M3.__default.execOne ($LS $ly@@5) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@13|)) (ite (|Set#Equal| |exps#0@@4| |Set#Empty|) (|#M3.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@13|))) (let ((|exp#1@@0| (Lit SeqType ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@4|))))))
(let ((|st'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $ly@@5) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@13|))))))
(let ((|paths#1| ($Unbox SetType (M3.Tuple.fst (M3.__default.execOne ($LS $ly@@5) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@13|))))))
(let ((|p#1@@0| (Lit DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1@@0|))))
(|#M3.Tuple.Pair| ($Box SetType (|Set#Union| |paths#1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |p#1@@0|)))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M3.__default.DomSt |st'#1@@0|) ($Box DatatypeTypeType |p#1@@0|)) |st'#1@@0| (M3.__default.SetSt |p#1@@0| (Lit DatatypeTypeType (M3.__default.RunTool (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1@@0|)) |st'#1@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :weight 3
 :skolemid |5831|
 :pattern ( (M3.__default.execOne ($LS $ly@@5) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@13|)))
))))
(assert (forall ((d@@14 T@U) ) (!  (=> (M3.Path.InternalPath_q d@@14) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= d@@14 (|#M3.Path.InternalPath| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6874|
)))
 :qid |unknown.0:0|
 :skolemid |6875|
 :pattern ( (M3.Path.InternalPath_q d@@14))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Disjoint| a@@15 b@@12) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@15 o@@3)) (not (|Set#IsMember| b@@12 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |5106|
 :pattern ( (|Set#IsMember| a@@15 o@@3))
 :pattern ( (|Set#IsMember| b@@12 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |5107|
 :pattern ( (|Set#Disjoint| a@@15 b@@12))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |5108|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@15| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@15| |st#0@@14|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@15| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@14| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| |p#0@@15|) (=> (M3.__default.WellFounded |p#0@@15|) (and (|M3.__default.GetCert#canCall| |p#0@@15|) (|M3.__default.OracleWF#canCall| |p#0@@15| (M3.__default.GetCert |p#0@@15|) |st#0@@14|)))) (=> (not (M3.__default.WellFounded |p#0@@15|)) (|M3.__default.OracleArbitrary#canCall| |p#0@@15|))) (= (M3.__default.Oracle |p#0@@15| |st#0@@14|) (ite (M3.__default.WellFounded |p#0@@15|) (M3.__default.OracleWF ($LS $LZ) |p#0@@15| (M3.__default.GetCert |p#0@@15|) |st#0@@14|) (M3.__default.OracleArbitrary |p#0@@15|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |6037|
 :pattern ( (M3.__default.Oracle |p#0@@15| |st#0@@14|))
))))
(assert (forall ((d@@15 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@15) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@15 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5405|
)))
 :qid |unknown.0:0|
 :skolemid |5406|
 :pattern ( (_System.Tuple2.___hMake2_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (M3.WFCertificate.Cert_q d@@16) (exists ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= d@@16 (|#M3.WFCertificate.Cert| |a#37#0#0| |a#37#1#0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6922|
)))
 :qid |unknown.0:0|
 :skolemid |6923|
 :pattern ( (M3.WFCertificate.Cert_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (M3.Tuple.Pair_q d@@17) (exists ((|a#195#0#0| T@U) (|a#195#1#0| T@U) ) (! (= d@@17 (|#M3.Tuple.Pair| |a#195#0#0| |a#195#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7184|
)))
 :qid |unknown.0:0|
 :skolemid |7185|
 :pattern ( (M3.Tuple.Pair_q d@@17))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@16| T@U) (|st#0@@15| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@16| |st#0@@15|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@16| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@15| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@15|) ($Box DatatypeTypeType |p#0@@16|))))) (and (M3.State.StateCons_q |st#0@@15|) (= (M3.__default.GetSt |p#0@@16| |st#0@@15|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.State.m |st#0@@15|)) ($Box DatatypeTypeType |p#0@@16|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6471|
 :pattern ( (M3.__default.GetSt |p#0@@16| |st#0@@15|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@16| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@16|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@16| Tclass.M3.State))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@16|)) (= (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@16|)) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m (Lit DatatypeTypeType |st#0@@16|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |6479|
 :pattern ( (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@16|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|p#0@@17| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| (Lit DatatypeTypeType |p#0@@17|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |p#0@@17| Tclass.M3.Path)))) (and |$let#33$canCall| (= (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@17|)) (let ((|a#1@@0| |$let#33_a|))
|a#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :weight 3
 :skolemid |6057|
 :pattern ( (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@17|)) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@10| T@U) (|exps#0@@5| T@U) (|st#0@@17| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| |cmd#0@@9| |deps#0@@10| |exps#0@@5| |st#0@@17|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@10| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@5| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@17| Tclass.M3.State)))) (and (forall ((|e#0@@3| T@U) ) (!  (=> ($Is SeqType |e#0@@3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#0@@3|)) (and (and (|M3.__default.Loc#canCall| |cmd#0@@9| |deps#0@@10| |e#0@@3|) (|M3.__default.DomSt#canCall| |st#0@@17|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@17|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|) |st#0@@17|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|) |st#0@@17|))) (and (and (|M3.__default.Loc#canCall| |cmd#0@@9| |deps#0@@10| |e#0@@3|) (|M3.__default.GetSt#canCall| (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|) |st#0@@17|)) (and (|M3.__default.Loc#canCall| |cmd#0@@9| |deps#0@@10| |e#0@@3|) (|M3.__default.Oracle#canCall| (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|) |st#0@@17|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6560|
 :pattern ( (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#0@@3|)))
)) (= (M3.__default.Pre |cmd#0@@9| |deps#0@@10| |exps#0@@5| |st#0@@17|) (forall ((|e#0@@4| T@U) ) (!  (=> ($Is SeqType |e#0@@4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#0@@4|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@17|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@4|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@4|) |st#0@@17|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@4|) |st#0@@17|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6559|
 :pattern ( (M3.__default.Loc |cmd#0@@9| |deps#0@@10| |e#0@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#0@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |6561|
 :pattern ( (M3.__default.Pre |cmd#0@@9| |deps#0@@10| |exps#0@@5| |st#0@@17|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@6 T@U) (|p#0@@18| T@U) (|cert#0@@5| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@18|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@18| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@18| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@18|) (|M3.__default.LocInv__Deps#canCall| |p#0@@18|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@18|)) (let ((|e#1@@1| (M3.__default.LocInv__Exp |p#0@@18|)))
(let ((|deps#1| (M3.__default.LocInv__Deps |p#0@@18|)))
(let ((|cmd#1| (M3.__default.LocInv__Cmd |p#0@@18|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1| |st#0@@18|) (|M3.__default.RunTool#canCall| |cmd#1| (M3.__default.CollectDependencies ($LS $ly@@6) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1| |st#0@@18|) |e#1@@1|)))))) (= (M3.__default.OracleWF ($LS $ly@@6) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@18|) (let ((|e#1@@2| (M3.__default.LocInv__Exp |p#0@@18|)))
(let ((|deps#1@@0| (M3.__default.LocInv__Deps |p#0@@18|)))
(let ((|cmd#1@@0| (M3.__default.LocInv__Cmd |p#0@@18|)))
(M3.__default.RunTool |cmd#1@@0| (M3.__default.CollectDependencies ($LS $ly@@6) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1@@0| |st#0@@18|) |e#1@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6063|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@6) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@18|))
))))
(assert (forall ((d@@18 T@U) ) (!  (=> (M3.Artifact.ArtifactCons_q d@@18) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@18 (|#M3.Artifact.ArtifactCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6848|
)))
 :qid |unknown.0:0|
 :skolemid |6849|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (M3.Path.ExternalPath_q d@@19) (exists ((|a#23#0#0| T@U) ) (! (= d@@19 (|#M3.Path.ExternalPath| |a#23#0#0|))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6891|
)))
 :qid |unknown.0:0|
 :skolemid |6892|
 :pattern ( (M3.Path.ExternalPath_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (M3.State.StateCons_q d@@20) (exists ((|a#45#0#0| T@U) ) (! (= d@@20 (|#M3.State.StateCons| |a#45#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6939|
)))
 :qid |unknown.0:0|
 :skolemid |6940|
 :pattern ( (M3.State.StateCons_q d@@20))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#30$canCall| p) (and ($Is DatatypeTypeType (|$let#30_c| p) Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) p (|$let#30_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |6019|
 :pattern ( (|$let#30_c| p))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|M3.Artifact#Equal| a@@16 b@@13) (= (M3.Artifact._h11 a@@16) (M3.Artifact._h11 b@@13)))
 :qid |unknown.0:0|
 :skolemid |6857|
 :pattern ( (|M3.Artifact#Equal| a@@16 b@@13))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@19| T@U) (|st#0@@19| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@19|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@19| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@19| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@19|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@19|)))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@19|)) (= (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@19|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@19|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@19|)))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6473|
 :pattern ( (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@19|)))
))))
(assert (forall ((|l#0@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#17| |l#0@@1|) |$w#0@@1|) ($Box DatatypeTypeType (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@1|) |l#0@@1|)))
 :qid |CloudMakeParallelBuildsdfy.473:45|
 :skolemid |7214|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#17| |l#0@@1|) |$w#0@@1|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@20| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| (Lit DatatypeTypeType |p#0@@20|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@20| Tclass.M3.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@20|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5763|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#1|))
)) (= (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@20|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@20|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5762|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |5764|
 :pattern ( (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@20|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@20| T@U) ) (!  (=> (or (|M3.__default.ValidState#canCall| |st#0@@20|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@20| Tclass.M3.State))) (and (forall ((|p#0@@21| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@21| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@20|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@20|) ($Box DatatypeTypeType |p#0@@21|)) (|M3.__default.WellFounded#canCall| |p#0@@21|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6492|
 :pattern ( (M3.__default.WellFounded |p#0@@21|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@20|) ($Box DatatypeTypeType |p#0@@21|)))
)) (= (M3.__default.ValidState |st#0@@20|) (forall ((|p#0@@22| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@22| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@20|) ($Box DatatypeTypeType |p#0@@22|)) (M3.__default.WellFounded |p#0@@22|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6491|
 :pattern ( (M3.__default.WellFounded |p#0@@22|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@20|) ($Box DatatypeTypeType |p#0@@22|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |6493|
 :pattern ( (M3.__default.ValidState |st#0@@20|))
))))
(assert (forall (($ly@@7 T@U) (|p#0@@23| T@U) (|cert#0@@6| T@U) ) (! (= (M3.__default.CheckWellFounded ($LS $ly@@7) |p#0@@23| |cert#0@@6|) (M3.__default.CheckWellFounded $ly@@7 |p#0@@23| |cert#0@@6|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5769|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@7) |p#0@@23| |cert#0@@6|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@10| T@U) (|deps#0@@11| T@U) (|exp#0@@3| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@10| |deps#0@@11| |exp#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is MapType |deps#0@@11| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@3| (TSeq TChar))))) ($Is DatatypeTypeType (M3.__default.RunTool |cmd#0@@10| |deps#0@@11| |exp#0@@3|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |5671|
 :pattern ( (M3.__default.RunTool |cmd#0@@10| |deps#0@@11| |exp#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|p#0@@24| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0@@24|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) ($Is DatatypeTypeType |p#0@@24| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@24|)) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd |p#0@@24|) (ite (M3.Path.InternalPath_q |p#0@@24|) (let ((|cmd#0@@11| (M3.Path.cmd |p#0@@24|)))
|cmd#0@@11|) (let ((|cmd#1@@1| |$let#3_cmd|))
|cmd#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :skolemid |5685|
 :pattern ( (M3.__default.LocInv__Cmd |p#0@@24|) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@25| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@25|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |p#0@@25| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@25|)) |$let#10$canCall|) (= (M3.__default.LocInv__Deps |p#0@@25|) (ite (M3.Path.InternalPath_q |p#0@@25|) (let ((|deps#0@@12| (M3.Path.deps |p#0@@25|)))
|deps#0@@12|) (let ((|deps#1@@1| |$let#10_deps|))
|deps#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :skolemid |5689|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@25|) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|p#0@@26| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| |p#0@@26|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) ($Is DatatypeTypeType |p#0@@26| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@26|)) |$let#17$canCall|) (= (M3.__default.LocInv__Exp |p#0@@26|) (ite (M3.Path.InternalPath_q |p#0@@26|) (let ((|exp#0@@4| (M3.Path.exp |p#0@@26|)))
|exp#0@@4|) (let ((|exp#1@@1| |$let#17_exp|))
|exp#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :skolemid |5693|
 :pattern ( (M3.__default.LocInv__Exp |p#0@@26|) ($IsGoodHeap $Heap@@7))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|d#0@@4| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@4| (Lit SetType |certs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@8) ($Is DatatypeTypeType |d#0@@4| Tclass.M3.Path)) ($Is SetType |certs#0@@1| (TSet Tclass.M3.WFCertificate))) (exists ((|c#3| T@U) ) (!  (and ($Is DatatypeTypeType |c#3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@1|) ($Box DatatypeTypeType |c#3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#3|) |d#0@@4|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6111|
 :pattern ( (M3.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#3|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0@@1|) |d#0@@4|) (= (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) (let ((|c#4| (|$let#36_c| (Lit SetType |certs#0@@1|) |d#0@@4|)))
|c#4|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6112|
 :pattern ( (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) ($IsGoodHeap $Heap@@8))
))))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (=> (and (M3.Path.ExternalPath_q a@@17) (M3.Path.ExternalPath_q b@@14)) (= (|M3.Path#Equal| a@@17 b@@14) (|Seq#Equal| (M3.Path._h13 a@@17) (M3.Path._h13 b@@14))))
 :qid |unknown.0:0|
 :skolemid |6903|
 :pattern ( (|M3.Path#Equal| a@@17 b@@14) (M3.Path.ExternalPath_q a@@17))
 :pattern ( (|M3.Path#Equal| a@@17 b@@14) (M3.Path.ExternalPath_q b@@14))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|p#0@@27| T@U) (|cert#0@@7| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@27| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@7| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)))) (|$IsA#M3.Path| (Lit DatatypeTypeType |p#0@@27|))) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)) |p#0@@27|) (and (forall ((|d#2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@27|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2|)) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@0|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#4@@0|)) (|$IsA#M3.Path| |d#2|)) (M3.WFCertificate.Cert_q |c#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5794|
 :pattern ( (M3.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5795|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2|)))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2@@0|)) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5797|
 :pattern ( (M3.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5798|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2@@0|)))
)) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#5@@0|)) (and (M3.WFCertificate.Cert_q |c#5@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#5@@0|) |c#5@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5796|
 :pattern ( (M3.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#5@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)) |p#0@@27|) (forall ((|d#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2@@1|)) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5791|
 :pattern ( (M3.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5792|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2@@1|)))
))) (forall ((|c#5@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#5@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@8) (M3.WFCertificate.p |c#5@@1|) |c#5@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5793|
 :pattern ( (M3.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#5@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5799|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@8) (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|)))
))))
(assert (forall ((a@@18 T@U) (b@@15 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@18 b@@15) o@@4)  (or (|Set#IsMember| a@@18 o@@4) (|Set#IsMember| b@@15 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |5088|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@18 b@@15) o@@4))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (|Set#Disjoint| a@@19 b@@16) (and (= (|Set#Difference| (|Set#Union| a@@19 b@@16) a@@19) b@@16) (= (|Set#Difference| (|Set#Union| a@@19 b@@16) b@@16) a@@19)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |5091|
 :pattern ( (|Set#Union| a@@19 b@@16))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@21| T@U) ) (!  (=> (or (|M3.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@21|)) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@21| Tclass.M3.State))) (and (forall ((|p#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@1| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@21|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@21|))) ($Box DatatypeTypeType |p#1@@1|)) (|M3.__default.WellFounded#canCall| |p#1@@1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6495|
 :pattern ( (M3.__default.WellFounded |p#1@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@21|) ($Box DatatypeTypeType |p#1@@1|)))
)) (= (M3.__default.ValidState (Lit DatatypeTypeType |st#0@@21|)) (forall ((|p#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@2| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@21|))) ($Box DatatypeTypeType |p#1@@2|)) (M3.__default.WellFounded |p#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6494|
 :pattern ( (M3.__default.WellFounded |p#1@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@21|) ($Box DatatypeTypeType |p#1@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |6496|
 :pattern ( (M3.__default.ValidState (Lit DatatypeTypeType |st#0@@21|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@9 T@U) (|p#0@@28| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| (Lit DatatypeTypeType |p#0@@28|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@9) ($Is DatatypeTypeType |p#0@@28| Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@28|)))))))) (and (|$let#30$canCall| (Lit DatatypeTypeType |p#0@@28|)) (= (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@28|)) (let ((|c#1@@1| (|$let#30_c| (Lit DatatypeTypeType |p#0@@28|))))
|c#1@@1|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |6021|
 :pattern ( (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@28|)) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M3._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M3.__default.PickOne M3._default.PickOne$T@@1 |s#0@@0|) M3._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |5749|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@1 |s#0@@0|))
))))
(assert (forall ((d@@21 T@U) ) (!  (=> (|$IsA#M3.Path| d@@21) (or (M3.Path.InternalPath_q d@@21) (M3.Path.ExternalPath_q d@@21)))
 :qid |unknown.0:0|
 :skolemid |6900|
 :pattern ( (|$IsA#M3.Path| d@@21))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@29| T@U) (|st#0@@22| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@29| (Lit DatatypeTypeType |st#0@@22|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@29| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@22| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| |p#0@@29|) (=> (M3.__default.WellFounded |p#0@@29|) (and (|M3.__default.GetCert#canCall| |p#0@@29|) (|M3.__default.OracleWF#canCall| |p#0@@29| (M3.__default.GetCert |p#0@@29|) (Lit DatatypeTypeType |st#0@@22|))))) (=> (not (M3.__default.WellFounded |p#0@@29|)) (|M3.__default.OracleArbitrary#canCall| |p#0@@29|))) (= (M3.__default.Oracle |p#0@@29| (Lit DatatypeTypeType |st#0@@22|)) (ite (M3.__default.WellFounded |p#0@@29|) (M3.__default.OracleWF ($LS $LZ) |p#0@@29| (M3.__default.GetCert |p#0@@29|) (Lit DatatypeTypeType |st#0@@22|)) (M3.__default.OracleArbitrary |p#0@@29|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |6038|
 :pattern ( (M3.__default.Oracle |p#0@@29| (Lit DatatypeTypeType |st#0@@22|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@9 T@U) (|p#0@@30| T@U) (|cert#0@@8| T@U) (|deps#0@@13| T@U) (|st#0@@23| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@13| |st#0@@23|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@30| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@8| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@13| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@23| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|)) (|Set#Equal| |deps#0@@13| (M3.__default.LocInv__Deps |p#0@@30|)))))) (and (forall ((|d#0@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@5| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@13| ($Box DatatypeTypeType |d#0@@5|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@23|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@23|) ($Box DatatypeTypeType |d#0@@5|)) (|M3.__default.GetSt#canCall| |d#0@@5| |st#0@@23|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@23|) ($Box DatatypeTypeType |d#0@@5|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@8|)) (|M3.__default.FindCert#canCall| |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))))) (|M3.__default.OracleWF#canCall| |d#0@@5| (M3.__default.FindCert |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|)))) |st#0@@23|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6084|
 :pattern ( (M3.__default.FindCert |d#0@@5| (M3.WFCertificate.certs |cert#0@@8|)))
 :pattern ( (M3.__default.GetSt |d#0@@5| |st#0@@23|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@23|) ($Box DatatypeTypeType |d#0@@5|)))
 :pattern ( (|Set#IsMember| |deps#0@@13| ($Box DatatypeTypeType |d#0@@5|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@9) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@13| |st#0@@23|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@13|)) (|lambda#26| (M3.__default.DomSt |st#0@@23|) |st#0@@23| ($LS $ly@@9) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) |st#0@@23|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6085|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@9) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@13| |st#0@@23|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@10 T@U) (|p#0@@31| T@U) (|cert#0@@9| T@U) (|deps#0@@14| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@31| |cert#0@@9| |deps#0@@14| |st#0@@24|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@31| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@9| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@14| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@24| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@31| |cert#0@@9|) (|Set#Equal| |deps#0@@14| (M3.__default.LocInv__Deps |p#0@@31|)))))) (and (forall ((|d#0@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@6| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@14| ($Box DatatypeTypeType |d#0@@6|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@24|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@24|) ($Box DatatypeTypeType |d#0@@6|)) (|M3.__default.GetSt#canCall| |d#0@@6| |st#0@@24|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@24|) ($Box DatatypeTypeType |d#0@@6|))) (and (and (M3.WFCertificate.Cert_q |cert#0@@9|) (|M3.__default.FindCert#canCall| |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|))) (|M3.__default.OracleWF#canCall| |d#0@@6| (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|)) |st#0@@24|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6082|
 :pattern ( (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|)))
 :pattern ( (M3.__default.GetSt |d#0@@6| |st#0@@24|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@24|) ($Box DatatypeTypeType |d#0@@6|)))
 :pattern ( (|Set#IsMember| |deps#0@@14| ($Box DatatypeTypeType |d#0@@6|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@10) |p#0@@31| |cert#0@@9| |deps#0@@14| |st#0@@24|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@14|)) (|lambda#26| (M3.__default.DomSt |st#0@@24|) |st#0@@24| $ly@@10 (M3.WFCertificate.certs |cert#0@@9|) |st#0@@24|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6083|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@10) |p#0@@31| |cert#0@@9| |deps#0@@14| |st#0@@24|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@32| T@U) (|a#0@@1| T@U) (|st#0@@25| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@32| |a#0@@1| |st#0@@25|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@32| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@1| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@25| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.SetSt |p#0@@32| |a#0@@1| |st#0@@25|) Tclass.M3.State))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |5727|
 :pattern ( (M3.__default.SetSt |p#0@@32| |a#0@@1| |st#0@@25|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@11 T@U) (|p#0@@33| T@U) (|cert#0@@10| T@U) (|st#0@@26| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@26|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@33| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@10| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@26| Tclass.M3.State)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|)))))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@33|)) (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@33|))) (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@33|))) (let ((|e#2@@1| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|deps#2| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|cmd#2| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@33|)))))
 (and (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2| (Lit DatatypeTypeType |st#0@@26|)) (|M3.__default.RunTool#canCall| |cmd#2| (M3.__default.CollectDependencies ($LS $ly@@11) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2| (Lit DatatypeTypeType |st#0@@26|)) |e#2@@1|)))))) (= (M3.__default.OracleWF ($LS $ly@@11) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@26|)) (let ((|e#2@@2| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|deps#2@@0| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|cmd#2@@0| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@33|)))))
(M3.__default.RunTool |cmd#2@@0| (M3.__default.CollectDependencies ($LS $ly@@11) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@26|)) |e#2@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6064|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@11) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@26|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@34| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0@@34|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@34| Tclass.M3.Path) (M3.__default.WellFounded |p#0@@34|)))) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@34| (M3.__default.GetCert |p#0@@34|)) ($Is DatatypeTypeType (M3.__default.GetCert |p#0@@34|) Tclass.M3.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |6017|
 :pattern ( (M3.__default.GetCert |p#0@@34|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@15| T@U) (|exps#0@@6| T@U) (|st#0@@27| T@U) ) (!  (=> (or (|M3.__default.Post#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@27|)) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@12| (TSeq TChar)) ($Is SetType |deps#0@@15| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@27| Tclass.M3.State)))) (and (forall ((|e#2@@3| T@U) ) (!  (=> ($Is SeqType |e#2@@3| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@3|)) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@27|)))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@3|)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@27|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|)))) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@27|))) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@27|)))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@27|))) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@27|)))))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6598|
 :pattern ( (M3.__default.Loc |cmd#0@@12| |deps#0@@15| |e#2@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#2@@3|)))
)) (= (M3.__default.Post (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@27|)) (forall ((|e#2@@4| T@U) ) (!  (=> ($Is SeqType |e#2@@4| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@4|)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@27|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@4|)))) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@4|)) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@27|)) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@27|))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6597|
 :pattern ( (M3.__default.Loc |cmd#0@@12| |deps#0@@15| |e#2@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#2@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |6599|
 :pattern ( (M3.__default.Post (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@27|)))
))))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (|Set#Equal| a@@20 b@@17) (= a@@20 b@@17))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5105|
 :pattern ( (|Set#Equal| a@@20 b@@17))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (|Seq#Equal| a@@21 b@@18) (= a@@21 b@@18))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5196|
 :pattern ( (|Seq#Equal| a@@21 b@@18))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |5255|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@13| T@U) (|deps#0@@16| T@U) (|exp#0@@5| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@16|) (Lit SeqType |exp#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@13| (TSeq TChar)) ($Is SetType |deps#0@@16| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0@@5| (TSeq TChar))))) (= (M3.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@16|) (Lit SeqType |exp#0@@5|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@16|) (Lit SeqType |exp#0@@5|)))))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :weight 3
 :skolemid |5682|
 :pattern ( (M3.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@16|) (Lit SeqType |exp#0@@5|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@35| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| |p#0@@35|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@35| Tclass.M3.Path))) ($Is DatatypeTypeType (M3.__default.OracleArbitrary |p#0@@35|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.648:34|
 :skolemid |6054|
 :pattern ( (M3.__default.OracleArbitrary |p#0@@35|))
))))
(assert (forall ((|a#46#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State) ($Is MapType |a#46#0#0| (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6941|
 :pattern ( ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> ($Is DatatypeTypeType d@@22 Tclass.M3.Path) (or (M3.Path.InternalPath_q d@@22) (M3.Path.ExternalPath_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |6901|
 :pattern ( (M3.Path.ExternalPath_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.M3.Path))
 :pattern ( (M3.Path.InternalPath_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.M3.Path))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@36| T@U) (|a#0@@2| T@U) (|st#0@@28| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@28|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@36| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@2| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@28| Tclass.M3.State)))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@28|)) (= (M3.__default.SetSt (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@28|)) (|#M3.State.StateCons| (|Map#Build| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@28|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@36|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |a#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |5731|
 :pattern ( (M3.__default.SetSt (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@28|)))
))))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@14| T@U) (|deps#0@@17| T@U) (|exps#0@@7| T@U) (|st#0@@29| T@U) ) (!  (=> (or (|M3.__default.Post#canCall| |cmd#0@@14| |deps#0@@17| |exps#0@@7| |st#0@@29|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@14| (TSeq TChar)) ($Is SetType |deps#0@@17| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@7| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@29| Tclass.M3.State)))) (and (forall ((|e#0@@5| T@U) ) (!  (=> ($Is SeqType |e#0@@5| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@5|)) (and (|M3.__default.Loc#canCall| |cmd#0@@14| |deps#0@@17| |e#0@@5|) (|M3.__default.DomSt#canCall| |st#0@@29|))) (=> (=> (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@5|)) (|Set#IsMember| (M3.__default.DomSt |st#0@@29|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|)))) (=> (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@5|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|) |st#0@@29|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|) |st#0@@29|))) (and (and (|M3.__default.Loc#canCall| |cmd#0@@14| |deps#0@@17| |e#0@@5|) (|M3.__default.GetSt#canCall| (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|) |st#0@@29|)) (and (|M3.__default.Loc#canCall| |cmd#0@@14| |deps#0@@17| |e#0@@5|) (|M3.__default.Oracle#canCall| (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|) |st#0@@29|))))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6592|
 :pattern ( (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@5|)))
)) (= (M3.__default.Post |cmd#0@@14| |deps#0@@17| |exps#0@@7| |st#0@@29|) (forall ((|e#0@@6| T@U) ) (!  (=> ($Is SeqType |e#0@@6| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@6|)) (|Set#IsMember| (M3.__default.DomSt |st#0@@29|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@6|)))) (=> (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@6|)) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@6|) |st#0@@29|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@6|) |st#0@@29|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6591|
 :pattern ( (M3.__default.Loc |cmd#0@@14| |deps#0@@17| |e#0@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#0@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :skolemid |6593|
 :pattern ( (M3.__default.Post |cmd#0@@14| |deps#0@@17| |exps#0@@7| |st#0@@29|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|st#0@@30| T@U) (|st'#0@@1| T@U) ) (!  (=> (or (|M3.__default.Extends#canCall| |st#0@@30| |st'#0@@1|) (and (< 6 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@30| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@1| Tclass.M3.State)))) (and (and (and (|M3.__default.DomSt#canCall| |st#0@@30|) (|M3.__default.DomSt#canCall| |st'#0@@1|)) (=> (|Set#Subset| (M3.__default.DomSt |st#0@@30|) (M3.__default.DomSt |st'#0@@1|)) (and (forall ((|p#0@@37| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@37| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@30|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@37|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@37| |st'#0@@1|)) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@37| |st#0@@30|))) (and (|M3.__default.GetSt#canCall| |p#0@@37| |st'#0@@1|) (|M3.__default.GetSt#canCall| |p#0@@37| |st#0@@30|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6613|
 :pattern ( (M3.__default.GetSt |p#0@@37| |st#0@@30|))
 :pattern ( (M3.__default.GetSt |p#0@@37| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@37|)))
)) (=> (forall ((|p#0@@38| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@38| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@38|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@38| |st'#0@@1|) (M3.__default.GetSt |p#0@@38| |st#0@@30|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6615|
 :pattern ( (M3.__default.GetSt |p#0@@38| |st#0@@30|))
 :pattern ( (M3.__default.GetSt |p#0@@38| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@38|)))
)) (forall ((|p#1@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@3| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@30|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#1@@3|))) (and (|M3.__default.DomSt#canCall| |st'#0@@1|) (=> (|Set#IsMember| (M3.__default.DomSt |st'#0@@1|) ($Box DatatypeTypeType |p#1@@3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#1@@3| |st'#0@@1|)) (|$IsA#M3.Artifact| (M3.__default.Oracle |p#1@@3| |st#0@@30|))) (and (|M3.__default.GetSt#canCall| |p#1@@3| |st'#0@@1|) (|M3.__default.Oracle#canCall| |p#1@@3| |st#0@@30|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6614|
 :pattern ( (M3.__default.Oracle |p#1@@3| |st#0@@30|))
 :pattern ( (M3.__default.GetSt |p#1@@3| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@1|) ($Box DatatypeTypeType |p#1@@3|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#1@@3|)))
)))))) (= (M3.__default.Extends |st#0@@30| |st'#0@@1|)  (and (and (|Set#Subset| (M3.__default.DomSt |st#0@@30|) (M3.__default.DomSt |st'#0@@1|)) (forall ((|p#0@@39| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@39| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@39|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@39| |st'#0@@1|) (M3.__default.GetSt |p#0@@39| |st#0@@30|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6611|
 :pattern ( (M3.__default.GetSt |p#0@@39| |st#0@@30|))
 :pattern ( (M3.__default.GetSt |p#0@@39| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#0@@39|)))
))) (forall ((|p#1@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@4| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#1@@4|))) (|Set#IsMember| (M3.__default.DomSt |st'#0@@1|) ($Box DatatypeTypeType |p#1@@4|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@4| |st'#0@@1|) (M3.__default.Oracle |p#1@@4| |st#0@@30|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6612|
 :pattern ( (M3.__default.Oracle |p#1@@4| |st#0@@30|))
 :pattern ( (M3.__default.GetSt |p#1@@4| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@1|) ($Box DatatypeTypeType |p#1@@4|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@30|) ($Box DatatypeTypeType |p#1@@4|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |6616|
 :pattern ( (M3.__default.Extends |st#0@@30| |st'#0@@1|))
))))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@2 T@U) ($Heap@@10 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@10) ($Is SetType |s#0@@1| (TSet M3._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#27$canCall| M3._default.PickOne$T@@2 |s#0@@1|) (= (M3.__default.PickOne M3._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#27_x| M3._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |5753|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@10))
))))
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
(assert (forall ((M3.Tuple$A@@2 T@U) (M3.Tuple$B@@2 T@U) ) (! (= (Tclass.M3.Tuple_0 (Tclass.M3.Tuple M3.Tuple$A@@2 M3.Tuple$B@@2)) M3.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |5816|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@2 M3.Tuple$B@@2))
)))
(assert (forall ((M3.Tuple$A@@3 T@U) (M3.Tuple$B@@3 T@U) ) (! (= (Tclass.M3.Tuple_1 (Tclass.M3.Tuple M3.Tuple$A@@3 M3.Tuple$B@@3)) M3.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |5817|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@3 M3.Tuple$B@@3))
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
(assert (forall ((|a#194#0#0| T@U) (|a#194#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Tuple.Pair| |a#194#0#0| |a#194#1#0|)) |##M3.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7182|
 :pattern ( (|#M3.Tuple.Pair| |a#194#0#0| |a#194#1#0|))
)))
(assert (forall ((|a#198#0#0| T@U) (|a#198#1#0| T@U) ) (! (= (M3.Tuple.fst (|#M3.Tuple.Pair| |a#198#0#0| |a#198#1#0|)) |a#198#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7193|
 :pattern ( (|#M3.Tuple.Pair| |a#198#0#0| |a#198#1#0|))
)))
(assert (forall ((|a#200#0#0| T@U) (|a#200#1#0| T@U) ) (! (= (M3.Tuple.snd (|#M3.Tuple.Pair| |a#200#0#0| |a#200#1#0|)) |a#200#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7195|
 :pattern ( (|#M3.Tuple.Pair| |a#200#0#0| |a#200#1#0|))
)))
(assert  (=> |$let#0$canCall| (and ($Is DatatypeTypeType |$let#0_a| Tclass.M3.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> |$let#33$canCall| (and ($Is DatatypeTypeType |$let#33_a| Tclass.M3.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
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
(assert (forall (($ly@@12 T@U) (|cmd#0@@15| T@U) (|deps#0@@18| T@U) (|restrictedState#0@@2| T@U) (|exps#0@@8| T@U) (|st#0@@31| T@U) ) (! (= (M3.__default.execOne ($LS $ly@@12) |cmd#0@@15| |deps#0@@18| |restrictedState#0@@2| |exps#0@@8| |st#0@@31|) (M3.__default.execOne $ly@@12 |cmd#0@@15| |deps#0@@18| |restrictedState#0@@2| |exps#0@@8| |st#0@@31|))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5826|
 :pattern ( (M3.__default.execOne ($LS $ly@@12) |cmd#0@@15| |deps#0@@18| |restrictedState#0@@2| |exps#0@@8| |st#0@@31|))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@7))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@40| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@40|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@40| Tclass.M3.Path))) ($Is SetType (M3.__default.LocInv__Deps |p#0@@40|) (TSet Tclass.M3.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |5687|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@40|))
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
(assert (forall ((|a#199#0#0| T@U) (|a#199#1#0| T@U) ) (! (< (BoxRank |a#199#0#0|) (DtRank (|#M3.Tuple.Pair| |a#199#0#0| |a#199#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7194|
 :pattern ( (|#M3.Tuple.Pair| |a#199#0#0| |a#199#1#0|))
)))
(assert (forall ((|a#201#0#0| T@U) (|a#201#1#0| T@U) ) (! (< (BoxRank |a#201#1#0|) (DtRank (|#M3.Tuple.Pair| |a#201#0#0| |a#201#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7196|
 :pattern ( (|#M3.Tuple.Pair| |a#201#0#0| |a#201#1#0|))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@16| T@U) (|deps#0@@19| T@U) (|exps#0@@9| T@U) (|st#0@@32| T@U) ) (!  (=> (or (|M3.__default.Post#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) (Lit SetType |exps#0@@9|) |st#0@@32|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@16| (TSeq TChar)) ($Is SetType |deps#0@@19| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@9| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@32| Tclass.M3.State)))) (and (forall ((|e#1@@3| T@U) ) (!  (=> ($Is SeqType |e#1@@3| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@3|)) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) (|M3.__default.DomSt#canCall| |st#0@@32|))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@3|)) (|Set#IsMember| (M3.__default.DomSt |st#0@@32|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|)))) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) |st#0@@32|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) |st#0@@32|))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) |st#0@@32|)) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@3|) |st#0@@32|))))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6595|
 :pattern ( (M3.__default.Loc |cmd#0@@16| |deps#0@@19| |e#1@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#1@@3|)))
)) (= (M3.__default.Post (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) (Lit SetType |exps#0@@9|) |st#0@@32|) (forall ((|e#1@@4| T@U) ) (!  (=> ($Is SeqType |e#1@@4| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@4|)) (|Set#IsMember| (M3.__default.DomSt |st#0@@32|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@4|)))) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@4|)) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@4|) |st#0@@32|) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) |e#1@@4|) |st#0@@32|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |6594|
 :pattern ( (M3.__default.Loc |cmd#0@@16| |deps#0@@19| |e#1@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#1@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |6596|
 :pattern ( (M3.__default.Post (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@19|) (Lit SetType |exps#0@@9|) |st#0@@32|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@41| T@U) (|st#0@@33| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@41| (Lit DatatypeTypeType |st#0@@33|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@41| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@33| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@33|))) ($Box DatatypeTypeType |p#0@@41|))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@33|)) (= (M3.__default.GetSt |p#0@@41| (Lit DatatypeTypeType |st#0@@33|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@33|)))) ($Box DatatypeTypeType |p#0@@41|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6472|
 :pattern ( (M3.__default.GetSt |p#0@@41| (Lit DatatypeTypeType |st#0@@33|)))
))))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (! (= (|Set#Union| a@@22 (|Set#Union| a@@22 b@@19)) (|Set#Union| a@@22 b@@19))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |5094|
 :pattern ( (|Set#Union| a@@22 (|Set#Union| a@@22 b@@19)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@13 T@U) (|p#0@@42| T@U) (|cert#0@@11| T@U) (|deps#0@@20| T@U) (|st#0@@34| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@42| |cert#0@@11| |deps#0@@20| |st#0@@34|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@42| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@11| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@20| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@34| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@42| |cert#0@@11|) (|Set#Equal| |deps#0@@20| (M3.__default.LocInv__Deps |p#0@@42|)))))) ($Is MapType (M3.__default.CollectDependencies $ly@@13 |p#0@@42| |cert#0@@11| |deps#0@@20| |st#0@@34|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6080|
 :pattern ( (M3.__default.CollectDependencies $ly@@13 |p#0@@42| |cert#0@@11| |deps#0@@20| |st#0@@34|))
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
(assert (forall (($ly@@14 T@U) (|p#0@@43| T@U) (|cert#0@@12| T@U) (|st#0@@35| T@U) ) (! (= (M3.__default.OracleWF ($LS $ly@@14) |p#0@@43| |cert#0@@12| |st#0@@35|) (M3.__default.OracleWF $ly@@14 |p#0@@43| |cert#0@@12| |st#0@@35|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6058|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@14) |p#0@@43| |cert#0@@12| |st#0@@35|))
)))
(assert  (=> |$let#10$canCall| (and ($Is SetType |$let#10_deps| (TSet Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|cmd#0@@17| T@U) (|deps#0@@21| T@U) (|exp#0@@6| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@17| |deps#0@@21| |exp#0@@6|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@11) ($Is SeqType |cmd#0@@17| (TSeq TChar))) ($Is MapType |deps#0@@21| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@6| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool |cmd#0@@17| |deps#0@@21| |exp#0@@6|) (let ((|a#0@@3| |$let#0_a|))
|a#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :skolemid |5673|
 :pattern ( (M3.__default.RunTool |cmd#0@@17| |deps#0@@21| |exp#0@@6|) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((bx@@11 T@U) (s@@1 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TMap s@@1 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@11)) bx@@11) ($Is MapType ($Unbox MapType bx@@11) (TMap s@@1 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@11 (TMap s@@1 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5410|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M3.Tuple$A@@4 T@U) (M3.Tuple$B@@4 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |5818|
 :pattern ( ($IsBox bx@@13 (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@18| T@U) (|deps#0@@22| T@U) (|exps#0@@10| T@U) (|paths#0@@3| T@U) ) (!  (=> (or (|M3.__default.OneToOne#canCall| (Lit SeqType |cmd#0@@18|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@10|) (Lit SetType |paths#0@@3|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@18| (TSeq TChar)) ($Is SetType |deps#0@@22| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@3| (TSet Tclass.M3.Path))))) (and (forall ((|e#1@@5| T@U) ) (!  (=> ($Is SeqType |e#1@@5| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@10|) ($Box SeqType |e#1@@5|)) (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@18|) (Lit SetType |deps#0@@22|) |e#1@@5|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |6583|
 :pattern ( (M3.__default.Loc |cmd#0@@18| |deps#0@@22| |e#1@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#1@@5|)))
)) (= (M3.__default.OneToOne (Lit SeqType |cmd#0@@18|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@10|) (Lit SetType |paths#0@@3|)) (forall ((|e#1@@6| T@U) ) (!  (=> ($Is SeqType |e#1@@6| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@10|) ($Box SeqType |e#1@@6|)) (|Set#IsMember| (Lit SetType |paths#0@@3|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@18|) (Lit SetType |deps#0@@22|) |e#1@@6|)))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |6582|
 :pattern ( (M3.__default.Loc |cmd#0@@18| |deps#0@@22| |e#1@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#1@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :weight 3
 :skolemid |6584|
 :pattern ( (M3.__default.OneToOne (Lit SeqType |cmd#0@@18|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@10|) (Lit SetType |paths#0@@3|)))
))))
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
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7212|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (! (= (|M3.State#Equal| a@@23 b@@20) (|Map#Equal| (M3.State.m a@@23) (M3.State.m b@@20)))
 :qid |unknown.0:0|
 :skolemid |6950|
 :pattern ( (|M3.State#Equal| a@@23 b@@20))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5407|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M3.Tuple$A@@5 T@U) (M3.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5)) Tagclass.M3.Tuple) (= (TagFamily (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |5815|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5))
)))
(assert (forall ((d@@23 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (M3.Artifact.ArtifactCons_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.M3.Artifact $h@@2))) ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@23)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |6851|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@23)) TInt $h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@12 T@U) (|p#0@@44| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@44|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) ($Is DatatypeTypeType |p#0@@44| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@44|)))))) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@44|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@44|)) (let ((|cmd#3| (Lit SeqType (M3.Path.cmd (Lit DatatypeTypeType |p#0@@44|)))))
|cmd#3|) (let ((|cmd#4| |$let#3_cmd|))
|cmd#4|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :weight 3
 :skolemid |5686|
 :pattern ( (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@44|)) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@13 T@U) (|p#0@@45| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@45|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) ($Is DatatypeTypeType |p#0@@45| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@45|)))))) |$let#10$canCall|) (= (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@45|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@45|)) (let ((|deps#3| (Lit SetType (M3.Path.deps (Lit DatatypeTypeType |p#0@@45|)))))
|deps#3|) (let ((|deps#4| |$let#10_deps|))
|deps#4|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :weight 3
 :skolemid |5690|
 :pattern ( (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@45|)) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@14 T@U) (|p#0@@46| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@46|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) ($Is DatatypeTypeType |p#0@@46| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@46|)))))) |$let#17$canCall|) (= (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@46|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@46|)) (let ((|exp#3| (Lit SeqType (M3.Path.exp (Lit DatatypeTypeType |p#0@@46|)))))
|exp#3|) (let ((|exp#4| |$let#17_exp|))
|exp#4|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :weight 3
 :skolemid |5694|
 :pattern ( (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@46|)) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@15 T@U) (|p#0@@47| T@U) (|cert#0@@13| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@47| (Lit DatatypeTypeType |cert#0@@13|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@47| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@13| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)))) (|$IsA#M3.Path| |p#0@@47|)) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)) |p#0@@47|) (and (forall ((|d#1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@47|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1|)) (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#2|)) (|$IsA#M3.Path| |d#1|)) (M3.WFCertificate.Cert_q |c#2|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5785|
 :pattern ( (M3.WFCertificate.p |c#2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5786|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1|)))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1@@0|)) (exists ((|c#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@0|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5788|
 :pattern ( (M3.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5789|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1@@0|)))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M3.WFCertificate.Cert_q |c#3@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5787|
 :pattern ( (M3.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@15) |p#0@@47| (Lit DatatypeTypeType |cert#0@@13|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)) |p#0@@47|) (forall ((|d#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@1| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1@@1|)) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@1|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5782|
 :pattern ( (M3.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5783|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@47|) ($Box DatatypeTypeType |d#1@@1|)))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#3@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@15) (M3.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5784|
 :pattern ( (M3.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5790|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@15) |p#0@@47| (Lit DatatypeTypeType |cert#0@@13|)))
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
(assert (forall ((m@@11 T@U) (u@@6 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@11) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@11) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |5245|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|))
)))
(assert (forall ((d@@24 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@24)) (DtRank d@@24))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5039|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@24)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@16 T@U) (|p#0@@48| T@U) (|cert#0@@14| T@U) (|deps#0@@23| T@U) (|st#0@@36| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@48|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@23|) (Lit DatatypeTypeType |st#0@@36|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@48| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@14| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@23| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@36| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@48|) (Lit DatatypeTypeType |cert#0@@14|)) (|Set#Equal| |deps#0@@23| (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@48|))))))) (and (forall ((|d#0@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@7| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@23|) ($Box DatatypeTypeType |d#0@@7|)) (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@36|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@36|))) ($Box DatatypeTypeType |d#0@@7|)) (|M3.__default.GetSt#canCall| |d#0@@7| (Lit DatatypeTypeType |st#0@@36|)))) (=> (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@36|))) ($Box DatatypeTypeType |d#0@@7|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@14|)) (|M3.__default.FindCert#canCall| |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|))))) (|M3.__default.OracleWF#canCall| |d#0@@7| (M3.__default.FindCert |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|)))) (Lit DatatypeTypeType |st#0@@36|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6086|
 :pattern ( (M3.__default.FindCert |d#0@@7| (M3.WFCertificate.certs |cert#0@@14|)))
 :pattern ( (M3.__default.GetSt |d#0@@7| |st#0@@36|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@36|) ($Box DatatypeTypeType |d#0@@7|)))
 :pattern ( (|Set#IsMember| |deps#0@@23| ($Box DatatypeTypeType |d#0@@7|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@16) (Lit DatatypeTypeType |p#0@@48|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@23|) (Lit DatatypeTypeType |st#0@@36|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (Lit SetType |deps#0@@23|))) (|lambda#26| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@36|))) (Lit DatatypeTypeType |st#0@@36|) ($LS $ly@@16) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|))) (Lit DatatypeTypeType |st#0@@36|)) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6087|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@16) (Lit DatatypeTypeType |p#0@@48|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@23|) (Lit DatatypeTypeType |st#0@@36|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@8| |certs#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@15) ($Is DatatypeTypeType |d#0@@8| Tclass.M3.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M3.WFCertificate))) (exists ((|c#1@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#1@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#1@@2|) |d#0@@8|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6107|
 :pattern ( (M3.WFCertificate.p |c#1@@2|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@2|)))
))))) (and (|$let#36$canCall| |certs#0@@2| |d#0@@8|) (= (M3.__default.FindCert |d#0@@8| |certs#0@@2|) (let ((|c#2@@2| (|$let#36_c| |certs#0@@2| |d#0@@8|)))
|c#2@@2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |6110|
 :pattern ( (M3.__default.FindCert |d#0@@8| |certs#0@@2|) ($IsGoodHeap $Heap@@15))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (d@@25 T@U) ) (!  (=> (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@25)) (< (DtRank d@@25) (DtRank (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6885|
 :pattern ( (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@25)) (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((bx@@14 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@14 (TSet t@@11)))
)))
(assert (forall ((bx@@15 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@15 (TSeq t@@12)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@49| T@U) (|st#0@@37| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |st#0@@37|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@49| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@37| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| (Lit DatatypeTypeType |p#0@@49|)) (=> (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@49|))))) (and (|M3.__default.GetCert#canCall| (Lit DatatypeTypeType |p#0@@49|)) (|M3.__default.OracleWF#canCall| (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@49|))) (Lit DatatypeTypeType |st#0@@37|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@49|)))))) (|M3.__default.OracleArbitrary#canCall| (Lit DatatypeTypeType |p#0@@49|)))) (= (M3.__default.Oracle (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |st#0@@37|)) (ite (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@49|)) (M3.__default.OracleWF ($LS $LZ) (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@49|))) (Lit DatatypeTypeType |st#0@@37|)) (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@49|))))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |6039|
 :pattern ( (M3.__default.Oracle (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |st#0@@37|)))
))))
(assert (forall ((v@@8 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@6 t1@@3)) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@16) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@16) t1@@3) ($IsBox bx@@16 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |5010|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@16))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@16))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |5011|
 :pattern ( ($Is MapType v@@8 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (d@@26 T@U) ) (!  (=> (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@26)) (< (DtRank d@@26) (DtRank (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6931|
 :pattern ( (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@26)) (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((d@@27 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@27 Tclass.M3.Artifact)) ($IsAlloc DatatypeTypeType d@@27 Tclass.M3.Artifact $h@@3))
 :qid |unknown.0:0|
 :skolemid |6854|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass.M3.Artifact $h@@3))
)))
(assert (forall ((d@@28 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@28 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@28 Tclass.M3.Path $h@@4))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass.M3.Path $h@@4))
)))
(assert (forall ((d@@29 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@29 Tclass.M3.WFCertificate)) ($IsAlloc DatatypeTypeType d@@29 Tclass.M3.WFCertificate $h@@5))
 :qid |unknown.0:0|
 :skolemid |6932|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 Tclass.M3.WFCertificate $h@@5))
)))
(assert (forall ((d@@30 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@30 Tclass.M3.State)) ($IsAlloc DatatypeTypeType d@@30 Tclass.M3.State $h@@6))
 :qid |unknown.0:0|
 :skolemid |6947|
 :pattern ( ($IsAlloc DatatypeTypeType d@@30 Tclass.M3.State $h@@6))
)))
(assert (= (Tag Tclass.M3.State) Tagclass.M3.State))
(assert (= (TagFamily Tclass.M3.State) tytagFamily$State))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M3.Artifact) Tagclass.M3.Artifact))
(assert (= (TagFamily Tclass.M3.Artifact) tytagFamily$Artifact))
(assert (= (Tag Tclass.M3.WFCertificate) Tagclass.M3.WFCertificate))
(assert (= (TagFamily Tclass.M3.WFCertificate) tytagFamily$WFCertificate))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@1| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@2| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#26| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|) ($Box DatatypeTypeType (ite (|Set#IsMember| |l#0@@3| |$w#0@@2|) (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@2|) |l#1@@2|) (M3.__default.OracleWF |l#2@@1| ($Unbox DatatypeTypeType |$w#0@@2|) (M3.__default.FindCert ($Unbox DatatypeTypeType |$w#0@@2|) |l#3@@0|) |l#4|))))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7216|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#26| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6893|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path))
)))
(assert (forall ((d@@31 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (M3.Path.InternalPath_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.M3.Path $h@@7))) ($IsAlloc SeqType (M3.Path.cmd d@@31) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |6877|
 :pattern ( ($IsAlloc SeqType (M3.Path.cmd d@@31) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@32 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M3.Path.InternalPath_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass.M3.Path $h@@8))) ($IsAlloc SeqType (M3.Path.exp d@@32) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |6879|
 :pattern ( ($IsAlloc SeqType (M3.Path.exp d@@32) (TSeq TChar) $h@@8))
)))
(assert (forall ((d@@33 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M3.Path.ExternalPath_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass.M3.Path $h@@9))) ($IsAlloc SeqType (M3.Path._h13 d@@33) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |6894|
 :pattern ( ($IsAlloc SeqType (M3.Path._h13 d@@33) (TSeq TChar) $h@@9))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (! (= (|Set#Equal| a@@24 b@@21) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@24 o@@5) (|Set#IsMember| b@@21 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5103|
 :pattern ( (|Set#IsMember| a@@24 o@@5))
 :pattern ( (|Set#IsMember| b@@21 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5104|
 :pattern ( (|Set#Equal| a@@24 b@@21))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|st#0@@38| T@U) (|st'#0@@2| T@U) ) (!  (=> (or (|M3.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@2|)) (and (< 6 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@38| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@2| Tclass.M3.State)))) (and (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@2|))) (=> (|Set#Subset| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@2|))) (and (forall ((|p#2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) ($Box DatatypeTypeType |p#2|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#2| (Lit DatatypeTypeType |st'#0@@2|))) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#2| (Lit DatatypeTypeType |st#0@@38|)))) (and (|M3.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@2|)) (|M3.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@38|)))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6619|
 :pattern ( (M3.__default.GetSt |p#2| |st#0@@38|))
 :pattern ( (M3.__default.GetSt |p#2| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@38|) ($Box DatatypeTypeType |p#2|)))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) ($Box DatatypeTypeType |p#2@@0|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@2|)) (M3.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6621|
 :pattern ( (M3.__default.GetSt |p#2@@0| |st#0@@38|))
 :pattern ( (M3.__default.GetSt |p#2@@0| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@38|) ($Box DatatypeTypeType |p#2@@0|)))
)) (forall ((|p#3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (=> (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) ($Box DatatypeTypeType |p#3|))) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@2|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@2|))) ($Box DatatypeTypeType |p#3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#3| (Lit DatatypeTypeType |st'#0@@2|))) (|$IsA#M3.Artifact| (M3.__default.Oracle |p#3| (Lit DatatypeTypeType |st#0@@38|)))) (and (|M3.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@2|)) (|M3.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@38|)))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6620|
 :pattern ( (M3.__default.Oracle |p#3| |st#0@@38|))
 :pattern ( (M3.__default.GetSt |p#3| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@2|) ($Box DatatypeTypeType |p#3|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@38|) ($Box DatatypeTypeType |p#3|)))
)))))) (= (M3.__default.Extends (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@2|))  (and (and (|Set#Subset| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@2|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) ($Box DatatypeTypeType |p#2@@1|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@2|)) (M3.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6617|
 :pattern ( (M3.__default.GetSt |p#2@@1| |st#0@@38|))
 :pattern ( (M3.__default.GetSt |p#2@@1| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@38|) ($Box DatatypeTypeType |p#2@@1|)))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@0| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) ($Box DatatypeTypeType |p#3@@0|))) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@2|))) ($Box DatatypeTypeType |p#3@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@2|)) (M3.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6618|
 :pattern ( (M3.__default.Oracle |p#3@@0| |st#0@@38|))
 :pattern ( (M3.__default.GetSt |p#3@@0| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@2|) ($Box DatatypeTypeType |p#3@@0|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@38|) ($Box DatatypeTypeType |p#3@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |6622|
 :pattern ( (M3.__default.Extends (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@2|)))
))))
(assert (forall ((d@@34 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@34) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@34 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($IsAlloc DatatypeTypeType d@@34 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._0 d@@34) |_System._tuple#2$T0@@6| $h@@10))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@34) |_System._tuple#2$T0@@6| $h@@10))
)))
(assert (forall ((d@@35 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple2.___hMake2_q d@@35) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@35 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |5415|
 :pattern ( ($IsAlloc DatatypeTypeType d@@35 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._1 d@@35) |_System._tuple#2$T1@@7| $h@@11))
 :qid |unknown.0:0|
 :skolemid |5416|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@35) |_System._tuple#2$T1@@7| $h@@11))
)))
(assert (forall ((d@@36 T@U) (M3.Tuple$A@@6 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (M3.Tuple.Pair_q d@@36) (exists ((M3.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@36 (Tclass.M3.Tuple M3.Tuple$A@@6 M3.Tuple$B@@6) $h@@12)
 :qid |unknown.0:0|
 :skolemid |7188|
 :pattern ( ($IsAlloc DatatypeTypeType d@@36 (Tclass.M3.Tuple M3.Tuple$A@@6 M3.Tuple$B@@6) $h@@12))
)))) ($IsAllocBox (M3.Tuple.fst d@@36) M3.Tuple$A@@6 $h@@12))
 :qid |unknown.0:0|
 :skolemid |7189|
 :pattern ( ($IsAllocBox (M3.Tuple.fst d@@36) M3.Tuple$A@@6 $h@@12))
)))
(assert (forall ((d@@37 T@U) (M3.Tuple$B@@7 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M3.Tuple.Pair_q d@@37) (exists ((M3.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@37 (Tclass.M3.Tuple M3.Tuple$A@@7 M3.Tuple$B@@7) $h@@13)
 :qid |unknown.0:0|
 :skolemid |7190|
 :pattern ( ($IsAlloc DatatypeTypeType d@@37 (Tclass.M3.Tuple M3.Tuple$A@@7 M3.Tuple$B@@7) $h@@13))
)))) ($IsAllocBox (M3.Tuple.snd d@@37) M3.Tuple$B@@7 $h@@13))
 :qid |unknown.0:0|
 :skolemid |7191|
 :pattern ( ($IsAllocBox (M3.Tuple.snd d@@37) M3.Tuple$B@@7 $h@@13))
)))
(assert (forall ((d@@38 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (M3.WFCertificate.Cert_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.M3.WFCertificate $h@@14))) ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@38) Tclass.M3.Path $h@@14))
 :qid |unknown.0:0|
 :skolemid |6925|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@38) Tclass.M3.Path $h@@14))
)))
(assert (forall ((certs T@U) (d@@39 T@U) ) (!  (=> (|$let#36$canCall| certs d@@39) (and ($Is DatatypeTypeType (|$let#36_c| certs d@@39) Tclass.M3.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#36_c| certs d@@39))) (|M3.Path#Equal| (M3.WFCertificate.p (|$let#36_c| certs d@@39)) d@@39))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |6109|
 :pattern ( (|$let#36_c| certs d@@39))
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
(assert (forall ((|a#197#0#0| T@U) (|a#197#1#0| T@U) ) (! (= (|#M3.Tuple.Pair| (Lit BoxType |a#197#0#0|) (Lit BoxType |a#197#1#0|)) (Lit DatatypeTypeType (|#M3.Tuple.Pair| |a#197#0#0| |a#197#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7192|
 :pattern ( (|#M3.Tuple.Pair| (Lit BoxType |a#197#0#0|) (Lit BoxType |a#197#1#0|)))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|a#49#0#0| T@U) (d@@40 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@40)) (< (DtRank d@@40) (DtRank (|#M3.State.StateCons| |a#49#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6945|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@40)) (|#M3.State.StateCons| |a#49#0#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@50| T@U) (|a#0@@4| T@U) (|st#0@@39| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@50| |a#0@@4| |st#0@@39|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@50| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@4| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@39| Tclass.M3.State)))) (and (M3.State.StateCons_q |st#0@@39|) (= (M3.__default.SetSt |p#0@@50| |a#0@@4| |st#0@@39|) (|#M3.State.StateCons| (|Map#Build| (M3.State.m |st#0@@39|) ($Box DatatypeTypeType |p#0@@50|) ($Box DatatypeTypeType |a#0@@4|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |5729|
 :pattern ( (M3.__default.SetSt |p#0@@50| |a#0@@4| |st#0@@39|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@19| T@U) (|deps#0@@24| T@U) (|exp#0@@7| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| |cmd#0@@19| |deps#0@@24| |exp#0@@7|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@19| (TSeq TChar)) ($Is SetType |deps#0@@24| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0@@7| (TSeq TChar))))) (= (M3.__default.Loc |cmd#0@@19| |deps#0@@24| |exp#0@@7|) (|#M3.Path.InternalPath| |cmd#0@@19| |deps#0@@24| |exp#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |5681|
 :pattern ( (M3.__default.Loc |cmd#0@@19| |deps#0@@24| |exp#0@@7|))
))))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0@@4| T@U) (|st#0@@40| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| (Lit SetType |paths#0@@4|) (Lit DatatypeTypeType |st#0@@40|)) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0@@4| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0@@40| Tclass.M3.State)))) (and (forall ((|p#0@@51| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@51| Tclass.M3.Path) (and (=> (|Set#IsMember| (Lit SetType |paths#0@@4|) ($Box DatatypeTypeType |p#0@@51|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@40|))) (=> (and (|Set#IsMember| (Lit SetType |paths#0@@4|) ($Box DatatypeTypeType |p#0@@51|)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@40|))) ($Box DatatypeTypeType |p#0@@51|))) (|M3.__default.GetSt#canCall| |p#0@@51| (Lit DatatypeTypeType |st#0@@40|)))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |5736|
 :pattern ( (M3.__default.GetSt |p#0@@51| |st#0@@40|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@40|) ($Box DatatypeTypeType |p#0@@51|)))
 :pattern ( (|Set#IsMember| |paths#0@@4| ($Box DatatypeTypeType |p#0@@51|)))
)) (= (M3.__default.Restrict (Lit SetType |paths#0@@4|) (Lit DatatypeTypeType |st#0@@40|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#16| Tclass.M3.Path (Lit SetType |paths#0@@4|) (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@40|))))) (|lambda#17| (Lit DatatypeTypeType |st#0@@40|)) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :weight 3
 :skolemid |5737|
 :pattern ( (M3.__default.Restrict (Lit SetType |paths#0@@4|) (Lit DatatypeTypeType |st#0@@40|)))
))))
(assert (forall ((d@@41 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (M3.Path.InternalPath_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.M3.Path $h@@15))) ($IsAlloc SetType (M3.Path.deps d@@41) (TSet Tclass.M3.Path) $h@@15))
 :qid |unknown.0:0|
 :skolemid |6878|
 :pattern ( ($IsAlloc SetType (M3.Path.deps d@@41) (TSet Tclass.M3.Path) $h@@15))
)))
(assert (forall ((d@@42 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (M3.WFCertificate.Cert_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.M3.WFCertificate $h@@16))) ($IsAlloc SetType (M3.WFCertificate.certs d@@42) (TSet Tclass.M3.WFCertificate) $h@@16))
 :qid |unknown.0:0|
 :skolemid |6926|
 :pattern ( ($IsAlloc SetType (M3.WFCertificate.certs d@@42) (TSet Tclass.M3.WFCertificate) $h@@16))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@3 T@U) ($Heap@@16 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@16) ($Is SetType |s#0@@2| (TSet M3._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#27$canCall| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M3.__default.PickOne M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#27_x| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |5754|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@16))
))))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5016|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5019|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@7)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@3) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@11 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@7)))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@12) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |5232|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |5233|
 :pattern ( (|Map#Items| m@@12))
)))
(assert (forall ((s@@3 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@3))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@4))) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@4))))
)))
(assert (forall ((v@@13 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |5012|
 :pattern ( ($Is MapType v@@13 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is intType v@@14 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4995|
 :pattern ( ($Is intType v@@14 TInt))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is charType v@@15 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |4998|
 :pattern ( ($Is charType v@@15 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#1_1@0| () T@U)
(declare-fun |$rhs#1_3@0| () T@U)
(declare-fun |st#0@@41| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |cmd#0@@20| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |deps#0@@25| () T@U)
(declare-fun |##deps#1_1_0_0_3_0@0| () T@U)
(declare-fun |exp#1_0@0| () T@U)
(declare-fun |p#1_0@0| () T@U)
(declare-fun |cert##1_1_0_0_3_0@0| () T@U)
(declare-fun |##deps#1_1_0_0_4_0@0| () T@U)
(declare-fun |a#1_0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |e#1_2_0@0| () T@U)
(declare-fun |##p#1_2_0@0| () T@U)
(declare-fun |##p#1_2_1@0| () T@U)
(declare-fun |p#1_2_0@0| () T@U)
(declare-fun |exps#0@@11| () T@U)
(declare-fun |restrictedState#0@@3| () T@U)
(declare-fun |$rhs#1_2@0| () T@U)
(declare-fun |exps##1_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##exps#1_0@0| () T@U)
(declare-fun |rest#1_0@0| () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@17 () T@U)
(declare-fun |exp#1_0| () T@U)
(declare-fun |rest#1_0| () T@U)
(declare-fun |paths#1_0| () T@U)
(declare-fun |st'#1_0| () T@U)
(declare-fun |p#1_0| () T@U)
(declare-fun |a#1_0| () T@U)
(declare-fun |paths''#1_0| () T@U)
(declare-fun |st''#1_0| () T@U)
(declare-fun |p#1_2_0| () T@U)
(set-info :boogie-vc-id Impl$$M3.__default.ExecOneProperty)
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
 (=> (= (ControlFlow 0 0) 89) (let ((anon14_correct true))
(let ((anon60_Else_correct  (=> (and (not (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|)) (= (ControlFlow 0 76) 74)) anon14_correct)))
(let ((anon60_Then_correct  (=> (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (=> (and (and ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1)) (and (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (= (ControlFlow 0 75) 74))) anon14_correct))))
(let ((anon59_Then_correct  (=> ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1) (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|)) (and (=> (= (ControlFlow 0 77) 75) anon60_Then_correct) (=> (= (ControlFlow 0 77) 76) anon60_Else_correct))))))
(let ((anon69_Then_correct true))
(let ((anon68_Then_correct true))
(let ((anon67_Then_correct true))
(let ((anon66_Then_correct  (=> ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@6) (=> (and (and (and (and ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@6)) (and (|M3.__default.Restrict#canCall| |deps#0@@25| |$rhs#1_1@0|) (= |##deps#1_1_0_0_3_0@0| (M3.__default.Restrict |deps#0@@25| |$rhs#1_1@0|)))) (and (and ($IsAlloc MapType |##deps#1_1_0_0_3_0@0| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@6) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6)) (and (|M3.__default.RunTool#canCall| |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |$rhs#1_1@0|) |exp#1_0@0|) (M3.Artifact.ArtifactCons_q (M3.__default.RunTool |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |$rhs#1_1@0|) |exp#1_0@0|))))) (and (and (and (|M3.__default.Restrict#canCall| |deps#0@@25| |$rhs#1_1@0|) (|M3.__default.RunTool#canCall| |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |$rhs#1_1@0|) |exp#1_0@0|)) (and ($IsAlloc DatatypeTypeType |p#1_0@0| Tclass.M3.Path $Heap@6) (M3.__default.WellFounded |p#1_0@0|))) (and (and (|M3.__default.GetCert#canCall| |p#1_0@0|) (M3.WFCertificate.Cert_q (M3.__default.GetCert |p#1_0@0|))) (and (|M3.__default.GetCert#canCall| |p#1_0@0|) (= |cert##1_1_0_0_3_0@0| (M3.__default.GetCert |p#1_0@0|)))))) (and (=> (= (ControlFlow 0 62) (- 0 67)) (=> (|M3.__default.ValidState#canCall| |$rhs#1_1@0|) (or (M3.__default.ValidState |$rhs#1_1@0|) (forall ((|p#1@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@5| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@5|)) (M3.__default.WellFounded |p#1@@5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6216|
 :pattern ( (M3.__default.WellFounded |p#1@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@5|)))
))))) (=> (=> (|M3.__default.ValidState#canCall| |$rhs#1_1@0|) (or (M3.__default.ValidState |$rhs#1_1@0|) (forall ((|p#1@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@6| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@6|)) (M3.__default.WellFounded |p#1@@6|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6216|
 :pattern ( (M3.__default.WellFounded |p#1@@6|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@6|)))
)))) (and (=> (= (ControlFlow 0 62) (- 0 66)) (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |$rhs#1_1@0|))) (=> (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |$rhs#1_1@0|)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert##1_1_0_0_3_0@0|) |p#1_0@0|)))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (|M3.Path#Equal| (M3.WFCertificate.p |cert##1_1_0_0_3_0@0|) |p#1_0@0|))) (and (=> (= (ControlFlow 0 62) (- 0 64)) (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|d#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@2|)) (exists ((|c#2@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@3|) |d#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6218|
 :pattern ( (M3.WFCertificate.p |c#2@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6219|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@2|)))
))))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|d#1@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@3|)) (exists ((|c#2@@4| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@4| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@4|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@4|) |d#1@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |6218|
 :pattern ( (M3.WFCertificate.p |c#2@@4|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@4|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |6219|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@3|)))
)))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|c#3@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@2| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@2|)) (M3.__default.CheckWellFounded ($LS ($LS $LZ)) (M3.WFCertificate.p |c#3@@2|) |c#3@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6220|
 :pattern ( (M3.WFCertificate.p |c#3@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@2|)))
))))) (=> (=> (|M3.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M3.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|c#3@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@3| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@3|)) (M3.__default.CheckWellFounded ($LS ($LS $LZ)) (M3.WFCertificate.p |c#3@@3|) |c#3@@3|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |6220|
 :pattern ( (M3.WFCertificate.p |c#3@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@3|)))
)))) (=> (= (ControlFlow 0 62) (- 0 61)) (|Set#Equal| |deps#0@@25| (M3.__default.LocInv__Deps |p#1_0@0|)))))))))))))))))
(let ((anon65_Then_correct  (=> ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@6) (=> (and ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@6) ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@6)) (=> (and (and (and (|M3.__default.Restrict#canCall| |deps#0@@25| |st#0@@41|) (= |##deps#1_1_0_0_4_0@0| (M3.__default.Restrict |deps#0@@25| |st#0@@41|))) (and ($IsAlloc MapType |##deps#1_1_0_0_4_0@0| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@6) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6))) (and (and (|M3.__default.RunTool#canCall| |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |st#0@@41|) |exp#1_0@0|) (M3.Artifact.ArtifactCons_q (M3.__default.RunTool |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |st#0@@41|) |exp#1_0@0|))) (and (|M3.__default.Restrict#canCall| |deps#0@@25| |st#0@@41|) (|M3.__default.RunTool#canCall| |cmd#0@@20| (M3.__default.Restrict |deps#0@@25| |st#0@@41|) |exp#1_0@0|)))) (and (=> (= (ControlFlow 0 57) (- 0 60)) (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |st#0@@41|))) (=> (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |st#0@@41|)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_1@0|))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#0@@52| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@52| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@52|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@52| |$rhs#1_1@0|) (M3.__default.GetSt |p#0@@52| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |5741|
 :pattern ( (M3.__default.GetSt |p#0@@52| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#0@@52| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@52|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#0@@53| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@53| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@53|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@53| |$rhs#1_1@0|) (M3.__default.GetSt |p#0@@53| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |5741|
 :pattern ( (M3.__default.GetSt |p#0@@53| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#0@@53| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@53|)))
)))) (=> (= (ControlFlow 0 57) (- 0 56)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#1@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@7| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@7|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@7|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@7| |$rhs#1_1@0|) (M3.__default.Oracle |p#1@@7| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |5742|
 :pattern ( (M3.__default.Oracle |p#1@@7| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@7| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@7|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@7|)))
))))))))))))))))
(let ((anon64_Then_correct true))
(let ((anon63_Then_correct true))
(let ((anon62_Then_correct true))
(let ((anon27_correct  (=> ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@6) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@6) (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|)) (and (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|))) (and (=> (= (ControlFlow 0 46) (- 0 51)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_1@0|))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 46) (- 0 50)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#0@@54| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@54| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@54|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@54| |$rhs#1_1@0|) (M3.__default.GetSt |p#0@@54| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6640|
 :pattern ( (M3.__default.GetSt |p#0@@54| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#0@@54| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@54|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#0@@55| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@55| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@55|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@55| |$rhs#1_1@0|) (M3.__default.GetSt |p#0@@55| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6640|
 :pattern ( (M3.__default.GetSt |p#0@@55| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#0@@55| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@55|)))
)))) (and (=> (= (ControlFlow 0 46) (- 0 49)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#1@@8| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@8| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@8|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@8|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@8| |$rhs#1_1@0|) (M3.__default.Oracle |p#1@@8| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6641|
 :pattern ( (M3.__default.Oracle |p#1@@8| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@8| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@8|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@8|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_1@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_1@0|) (forall ((|p#1@@9| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@9| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@9|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@9|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@9| |$rhs#1_1@0|) (M3.__default.Oracle |p#1@@9| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6641|
 :pattern ( (M3.__default.Oracle |p#1@@9| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@9| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1@@9|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@9|)))
)))) (and (=> (= (ControlFlow 0 46) (- 0 48)) (=> (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |$rhs#1_1@0|) (M3.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |$rhs#1_1@0|) (M3.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (=> (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#2@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#2@@2|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@2| |$rhs#1_3@0|) (M3.__default.GetSt |p#2@@2| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6644|
 :pattern ( (M3.__default.GetSt |p#2@@2| |$rhs#1_1@0|))
 :pattern ( (M3.__default.GetSt |p#2@@2| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#2@@2|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#2@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#2@@3|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@3| |$rhs#1_3@0|) (M3.__default.GetSt |p#2@@3| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6644|
 :pattern ( (M3.__default.GetSt |p#2@@3| |$rhs#1_1@0|))
 :pattern ( (M3.__default.GetSt |p#2@@3| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#2@@3|)))
)))) (=> (= (ControlFlow 0 46) (- 0 45)) (=> (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@1| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#3@@1|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#3@@1|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#3@@1| |$rhs#1_3@0|) (M3.__default.Oracle |p#3@@1| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6645|
 :pattern ( (M3.__default.Oracle |p#3@@1| |$rhs#1_1@0|))
 :pattern ( (M3.__default.GetSt |p#3@@1| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#3@@1|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#3@@1|)))
)))))))))))))))))))
(let ((anon69_Else_correct  (=> (and (|M3.Artifact#Equal| |a#1_0@0| (M3.__default.Oracle |p#1_0@0| |$rhs#1_1@0|)) (= (ControlFlow 0 71) 46)) anon27_correct)))
(let ((anon61_Then_correct  (=> (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|))) (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 72) 53) anon62_Then_correct) (=> (= (ControlFlow 0 72) 54) anon63_Then_correct)) (=> (= (ControlFlow 0 72) 55) anon64_Then_correct)) (=> (= (ControlFlow 0 72) 57) anon65_Then_correct)) (=> (= (ControlFlow 0 72) 62) anon66_Then_correct)) (=> (= (ControlFlow 0 72) 68) anon67_Then_correct)) (=> (= (ControlFlow 0 72) 69) anon68_Then_correct)) (=> (= (ControlFlow 0 72) 70) anon69_Then_correct)) (=> (= (ControlFlow 0 72) 71) anon69_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|)) (= (ControlFlow 0 52) 46)) anon27_correct)))
(let ((anon59_Else_correct  (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |exp#1_0@0|) (|M3.__default.LocInv__Cmd#canCall| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|))) (|Seq#Equal| (M3.__default.LocInv__Cmd (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|)) |cmd#0@@20|)) (and (and (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |exp#1_0@0|) (|M3.__default.LocInv__Deps#canCall| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|))) (|Set#Equal| (M3.__default.LocInv__Deps (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|)) |deps#0@@25|))) (and (and (and (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |exp#1_0@0|) (|M3.__default.LocInv__Exp#canCall| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|))) (|Seq#Equal| (M3.__default.LocInv__Exp (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|)) |exp#1_0@0|)) (and (and (= $Heap@1 $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@6)) (and (|M3.__default.DomSt#canCall| |$rhs#1_1@0|) (|M3.__default.DomSt#canCall| |$rhs#1_1@0|))))) (and (=> (= (ControlFlow 0 73) 72) anon61_Then_correct) (=> (= (ControlFlow 0 73) 52) anon61_Else_correct))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 78) 77) anon59_Then_correct) (=> (= (ControlFlow 0 78) 73) anon59_Else_correct))))
(let ((anon33_correct true))
(let ((anon72_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)))) (= (ControlFlow 0 41) 39)) anon33_correct)))
(let ((anon72_Then_correct  (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|))) (=> (and (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1)) (and ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1) (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|))) (=> (and (and (and (and (= |##p#1_2_0@0| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)) ($IsAlloc DatatypeTypeType |##p#1_2_0@0| Tclass.M3.Path $Heap@1)) (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |##p#1_2_0@0|)))) (and (and (|M3.__default.GetSt#canCall| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|) |$rhs#1_3@0|) (M3.Artifact.ArtifactCons_q (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|) |$rhs#1_3@0|))) (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1)))) (and (and (and ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1) (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)) (and (= |##p#1_2_1@0| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)) ($IsAlloc DatatypeTypeType |##p#1_2_1@0| Tclass.M3.Path $Heap@1))) (and (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1) (|M3.__default.Oracle#canCall| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|) |$rhs#1_3@0|)) (and (M3.Artifact.ArtifactCons_q (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|) |$rhs#1_3@0|)) (= (ControlFlow 0 40) 39))))) anon33_correct)))))
(let ((anon71_Then_correct  (=> (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1)) (=> (and (and ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1) (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)) (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1) (|M3.__default.DomSt#canCall| |$rhs#1_3@0|))) (and (=> (= (ControlFlow 0 42) 40) anon72_Then_correct) (=> (= (ControlFlow 0 42) 41) anon72_Else_correct))))))
(let ((anon39_correct true))
(let ((anon76_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_2_0@0|))) (= (ControlFlow 0 35) 33)) anon39_correct)))
(let ((anon76_Then_correct  (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_2_0@0|)) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1)) (and (|M3.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (= (ControlFlow 0 34) 33))) anon39_correct))))
(let ((anon75_Then_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |p#1_2_0@0| Tclass.M3.Path $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1)) (and (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#1_2_0@0|)) (|M3.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|))) (and (and (M3.Artifact.ArtifactCons_q (M3.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|)) (|M3.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@1) (|M3.__default.DomSt#canCall| |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 36) 34) anon76_Then_correct) (=> (= (ControlFlow 0 36) 35) anon76_Else_correct)))))
(let ((anon78_Then_correct  (=> ($IsAlloc DatatypeTypeType |p#1_2_0@0| Tclass.M3.Path $Heap@1) (=> (and (and ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@1) (|M3.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@41|)) (and (M3.Artifact.ArtifactCons_q (M3.__default.Oracle |p#1_2_0@0| |st#0@@41|)) (|M3.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@41|))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#1@@10| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@10| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@10|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@10| |$rhs#1_3@0|) (M3.__default.GetSt |p#1@@10| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6261|
 :pattern ( (M3.__default.GetSt |p#1@@10| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@10| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@10|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#1@@11| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@11| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@11|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@11| |$rhs#1_3@0|) (M3.__default.GetSt |p#1@@11| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6261|
 :pattern ( (M3.__default.GetSt |p#1@@11| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@11| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@11|)))
)))) (=> (= (ControlFlow 0 29) (- 0 28)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#2@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@4| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@4|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#2@@4|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@4| |$rhs#1_3@0|) (M3.__default.Oracle |p#2@@4| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6262|
 :pattern ( (M3.__default.Oracle |p#2@@4| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#2@@4| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#2@@4|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@4|)))
)))))))))))))
(let ((anon77_Then_correct true))
(let ((anon74_Then_correct true))
(let ((anon50_correct true))
(let ((anon78_Else_correct  (=> (and (|M3.Artifact#Equal| (M3.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M3.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)) (= (ControlFlow 0 32) 23)) anon50_correct)))
(let ((anon73_Then_correct  (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_2_0@0|)) (and (and (and (and (=> (= (ControlFlow 0 37) 26) anon74_Then_correct) (=> (= (ControlFlow 0 37) 36) anon75_Then_correct)) (=> (= (ControlFlow 0 37) 27) anon77_Then_correct)) (=> (= (ControlFlow 0 37) 29) anon78_Then_correct)) (=> (= (ControlFlow 0 37) 32) anon78_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (|M3.Artifact#Equal| (M3.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M3.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)) (= (ControlFlow 0 24) 23)) anon50_correct)))
(let ((anon83_Then_correct  (=> ($IsAlloc DatatypeTypeType |p#1_2_0@0| Tclass.M3.Path $Heap@1) (=> (and (and ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@1) (|M3.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@41|)) (and (M3.Artifact.ArtifactCons_q (M3.__default.Oracle |p#1_2_0@0| |st#0@@41|)) (|M3.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@41|))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#1@@12| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@12| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@12|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@12| |$rhs#1_3@0|) (M3.__default.GetSt |p#1@@12| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6261|
 :pattern ( (M3.__default.GetSt |p#1@@12| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@12| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@12|)))
))))) (=> (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#1@@13| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@13| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@13|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@13| |$rhs#1_3@0|) (M3.__default.GetSt |p#1@@13| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6261|
 :pattern ( (M3.__default.GetSt |p#1@@13| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#1@@13| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#1@@13|)))
)))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> (|M3.__default.Extends#canCall| |st#0@@41| |$rhs#1_3@0|) (or (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|) (forall ((|p#2@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@5| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@5|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#2@@5|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@5| |$rhs#1_3@0|) (M3.__default.Oracle |p#2@@5| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6262|
 :pattern ( (M3.__default.Oracle |p#2@@5| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#2@@5| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#2@@5|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@5|)))
)))))))))))))
(let ((anon82_Then_correct true))
(let ((anon81_Then_correct true))
(let ((anon80_Then_correct true))
(let ((anon79_Then_correct true))
(let ((anon73_Else_correct  (=> (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_2_0@0|))) (and (and (and (and (and (=> (= (ControlFlow 0 25) 15) anon79_Then_correct) (=> (= (ControlFlow 0 25) 16) anon80_Then_correct)) (=> (= (ControlFlow 0 25) 17) anon81_Then_correct)) (=> (= (ControlFlow 0 25) 18) anon82_Then_correct)) (=> (= (ControlFlow 0 25) 20) anon83_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon83_Else_correct)))))
(let ((anon71_Else_correct  (=> ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1) (=> (and (and ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1) ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1)) (and (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|) (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|))) (=> (and (and (and (= |p#1_2_0@0| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_0@0|)) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M3.State $Heap@1)) (and (|M3.__default.DomSt#canCall| |$rhs#1_3@0|) (|M3.__default.DomSt#canCall| |$rhs#1_3@0|))) (and (and (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType |p#1_2_0@0|)) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@1)) (and (|M3.__default.DomSt#canCall| |$rhs#1_1@0|) (|M3.__default.DomSt#canCall| |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 38) 37) anon73_Then_correct) (=> (= (ControlFlow 0 38) 25) anon73_Else_correct)))))))
(let ((anon70_Then_correct  (=> (and ($Is SeqType |e#1_2_0@0| (TSeq TChar)) (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1_2_0@0|))) (and (=> (= (ControlFlow 0 43) 42) anon71_Then_correct) (=> (= (ControlFlow 0 43) 38) anon71_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 7) (- 0 12)) (=> false (let ((|result''#0| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0|))))
 (=> (|M3.__default.ValidState#canCall| |st''#0|) (or (M3.__default.ValidState |st''#0|) (forall ((|p#5| T@U) ) (!  (=> ($Is DatatypeTypeType |p#5| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st''#0|) ($Box DatatypeTypeType |p#5|)) (M3.__default.WellFounded |p#5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5885|
 :pattern ( (M3.__default.WellFounded |p#5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0|) ($Box DatatypeTypeType |p#5|)))
)))))))) (=> (=> false (let ((|result''#0@@0| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@0|))))
 (=> (|M3.__default.ValidState#canCall| |st''#0@@0|) (or (M3.__default.ValidState |st''#0@@0|) (forall ((|p#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#5@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st''#0@@0|) ($Box DatatypeTypeType |p#5@@0|)) (M3.__default.WellFounded |p#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5885|
 :pattern ( (M3.__default.WellFounded |p#5@@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0@@0|) ($Box DatatypeTypeType |p#5@@0|)))
))))))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (=> false (let ((|result''#0@@1| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@1| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@1|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@1|) (or (M3.__default.Extends |st#0@@41| |st''#0@@1|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |st''#0@@1|)))))))) (=> (=> false (let ((|result''#0@@2| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@2| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@2|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@2|) (or (M3.__default.Extends |st#0@@41| |st''#0@@2|) (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |st''#0@@2|))))))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (=> false (let ((|result''#0@@3| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@3| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@3|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@3|) (or (M3.__default.Extends |st#0@@41| |st''#0@@3|) (forall ((|p#6| T@U) ) (!  (=> ($Is DatatypeTypeType |p#6| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#6|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#6| |st''#0@@3|) (M3.__default.GetSt |p#6| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |5887|
 :pattern ( (M3.__default.GetSt |p#6| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#6| |st''#0@@3|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#6|)))
)))))))) (=> (=> false (let ((|result''#0@@4| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@4| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@4|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@4|) (or (M3.__default.Extends |st#0@@41| |st''#0@@4|) (forall ((|p#6@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#6@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#6@@0|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#6@@0| |st''#0@@4|) (M3.__default.GetSt |p#6@@0| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |5887|
 :pattern ( (M3.__default.GetSt |p#6@@0| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#6@@0| |st''#0@@4|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#6@@0|)))
))))))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> false (let ((|result''#0@@5| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@5| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@5|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@5|) (or (M3.__default.Extends |st#0@@41| |st''#0@@5|) (forall ((|p#7| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#7|))) (|Set#IsMember| (M3.__default.DomSt |st''#0@@5|) ($Box DatatypeTypeType |p#7|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#7| |st''#0@@5|) (M3.__default.Oracle |p#7| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |5888|
 :pattern ( (M3.__default.Oracle |p#7| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#7| |st''#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0@@5|) ($Box DatatypeTypeType |p#7|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#7|)))
)))))))) (=> (=> false (let ((|result''#0@@6| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@6| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@6|))))
 (=> (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@6|) (or (M3.__default.Extends |st#0@@41| |st''#0@@6|) (forall ((|p#7@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@0| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#7@@0|))) (|Set#IsMember| (M3.__default.DomSt |st''#0@@6|) ($Box DatatypeTypeType |p#7@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#7@@0| |st''#0@@6|) (M3.__default.Oracle |p#7@@0| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |5888|
 :pattern ( (M3.__default.Oracle |p#7@@0| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#7@@0| |st''#0@@6|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0@@6|) ($Box DatatypeTypeType |p#7@@0|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#7@@0|)))
))))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> false (let ((|result''#0@@7| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|paths''#0| ($Unbox SetType (M3.Tuple.fst |result''#0@@7|))))
 (=> (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |paths''#0|) (or (M3.__default.OneToOne |cmd#0@@20| |deps#0@@25| |exps#0@@11| |paths''#0|) (forall ((|e#4| T@U) ) (!  (=> ($Is SeqType |e#4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#4|)) (|Set#IsMember| |paths''#0| ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#4|)))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |5891|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#4|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#4|)))
)))))))) (=> (=> false (let ((|result''#0@@8| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|paths''#0@@0| ($Unbox SetType (M3.Tuple.fst |result''#0@@8|))))
 (=> (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |paths''#0@@0|) (or (M3.__default.OneToOne |cmd#0@@20| |deps#0@@25| |exps#0@@11| |paths''#0@@0|) (forall ((|e#4@@0| T@U) ) (!  (=> ($Is SeqType |e#4@@0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#4@@0|)) (|Set#IsMember| |paths''#0@@0| ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |5891|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#4@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#4@@0|)))
))))))) (=> (= (ControlFlow 0 7) (- 0 6)) (=> false (let ((|result''#0@@9| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))
(let ((|st''#0@@7| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@9|))))
 (=> (|M3.__default.Post#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |st''#0@@7|) (or (M3.__default.Post |cmd#0@@20| |deps#0@@25| |exps#0@@11| |st''#0@@7|) (forall ((|e#5| T@U) ) (!  (=> ($Is SeqType |e#5| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#5|)) (|Set#IsMember| (M3.__default.DomSt |st''#0@@7|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#5|)))) (=> (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#5|)) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#5|) |st''#0@@7|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#5|) |st''#0@@7|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |5893|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#5|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#5|)))
))))))))))))))))))))
(let ((anon70_Else_correct  (=> (and (forall ((|e#1_2_1| T@U) ) (!  (=> (and ($Is SeqType |e#1_2_1| (TSeq TChar)) (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1_2_1|))) (and (|Set#IsMember| (M3.__default.DomSt |$rhs#1_3@0|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_1|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_1|) |$rhs#1_3@0|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_1|) |$rhs#1_3@0|))))
 :qid |CloudMakeParallelBuildsdfy.591:14|
 :skolemid |5995|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1_2_1|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1_2_1|)))
)) (= (ControlFlow 0 14) 7)) GeneratedUnifiedExit_correct)))
(let ((anon58_Else_correct  (=> (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (M3.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (M3.__default.Extends |st#0@@41| |$rhs#1_3@0|))) ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1)) (and ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1) ($IsAlloc SetType |exps#0@@11| (TSet (TSeq TChar)) $Heap@1))) (and (and ($IsAlloc SetType |$rhs#1_2@0| (TSet Tclass.M3.Path) $Heap@1) (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |$rhs#1_2@0|)) (and (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |$rhs#1_2@0|) (M3.__default.OneToOne |cmd#0@@20| |deps#0@@25| |exps#0@@11| |$rhs#1_2@0|)))) (and (=> (= (ControlFlow 0 44) 43) anon70_Then_correct) (=> (= (ControlFlow 0 44) 14) anon70_Else_correct)))))
(let ((anon57_Else_correct  (=> (=> true (M3.__default.ValidState |$rhs#1_3@0|)) (and (=> (= (ControlFlow 0 79) 78) anon58_Then_correct) (=> (= (ControlFlow 0 79) 44) anon58_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (|Set#Equal| |exps#0@@11| |Set#Empty|) (= (ControlFlow 0 13) 7)) GeneratedUnifiedExit_correct)))
(let ((anon57_Then_correct true))
(let ((anon56_Then_correct  (=> ($IsAlloc DatatypeTypeType |p#1_0@0| Tclass.M3.Path $Heap@1) (=> (and (and (|M3.__default.LocInv__Deps#canCall| |p#1_0@0|) (|M3.__default.LocInv__Deps#canCall| |p#1_0@0|)) (and (|Set#Equal| (M3.__default.LocInv__Deps |p#1_0@0|) |deps#0@@25|) (= (ControlFlow 0 4) (- 0 3)))) (forall ((|d#1@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@4| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@4|)) (M3.__default.WellFounded |d#1@@4|)))
 :qid |CloudMakeParallelBuildsdfy.621:21|
 :skolemid |5997|
 :pattern ( (M3.__default.WellFounded |d#1@@4|))
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#1_0@0|) ($Box DatatypeTypeType |d#1@@4|)))
))))))
(let ((anon55_Then_correct true))
(let ((anon54_Then_correct true))
(let ((anon5_correct  (=> (and (and (and (|M3.__default.DomSt#canCall| |$rhs#1_1@0|) (=> (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|))) (|M3.__default.SetSt#canCall| |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|))) (= |$rhs#1_3@0| (ite (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|)) |$rhs#1_1@0| (M3.__default.SetSt |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|)))) (and (= |exps##1_0@0| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|)))) (or (< (|Seq#Rank| |cmd#0@@20|) (|Seq#Rank| |cmd#0@@20|)) (and (= (|Seq#Rank| |cmd#0@@20|) (|Seq#Rank| |cmd#0@@20|)) (or (and (|Set#Subset| |deps#0@@25| |deps#0@@25|) (not (|Set#Subset| |deps#0@@25| |deps#0@@25|))) (and (|Set#Equal| |deps#0@@25| |deps#0@@25|) (or (and (|Set#Subset| (|Map#Domain| |restrictedState#0@@3|) (|Map#Domain| |restrictedState#0@@3|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@3|) (|Map#Domain| |restrictedState#0@@3|)))) (and (|Set#Equal| (|Map#Domain| |restrictedState#0@@3|) (|Map#Domain| |restrictedState#0@@3|)) (or (and (|Set#Subset| |exps##1_0@0| |exps#0@@11|) (not (|Set#Subset| |exps#0@@11| |exps##1_0@0|))) (and (|Set#Equal| |exps##1_0@0| |exps#0@@11|) (< (DtRank |st#0@@41|) (DtRank |st#0@@41|)))))))))))) (and (=> (= (ControlFlow 0 80) (- 0 84)) (=> (|M3.__default.ValidState#canCall| |st#0@@41|) (or (M3.__default.ValidState |st#0@@41|) (forall ((|p#0@@56| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@56| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@56|)) (M3.__default.WellFounded |p#0@@56|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5867|
 :pattern ( (M3.__default.WellFounded |p#0@@56|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@56|)))
))))) (=> (=> (|M3.__default.ValidState#canCall| |st#0@@41|) (or (M3.__default.ValidState |st#0@@41|) (forall ((|p#0@@57| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@57| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@57|)) (M3.__default.WellFounded |p#0@@57|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5867|
 :pattern ( (M3.__default.WellFounded |p#0@@57|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#0@@57|)))
)))) (and (=> (= (ControlFlow 0 80) (- 0 83)) (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |st#0@@41|))) (=> (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |st#0@@41|)) (and (=> (= (ControlFlow 0 80) (- 0 82)) (=> (|M3.__default.Pre#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st#0@@41|) (or (M3.__default.Pre |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st#0@@41|) (forall ((|e#0@@7| T@U) ) (!  (=> ($Is SeqType |e#0@@7| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@7|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@7|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@7|) |st#0@@41|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@7|) |st#0@@41|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |5869|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@7|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@7|)))
))))) (=> (=> (|M3.__default.Pre#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st#0@@41|) (or (M3.__default.Pre |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st#0@@41|) (forall ((|e#0@@8| T@U) ) (!  (=> ($Is SeqType |e#0@@8| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@8|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@8|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@8|) |st#0@@41|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@8|) |st#0@@41|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |5869|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#0@@8|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@8|)))
)))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (|Map#Equal| |restrictedState#0@@3| (M3.__default.Restrict |deps#0@@25| |st#0@@41|))) (=> (|Map#Equal| |restrictedState#0@@3| (M3.__default.Restrict |deps#0@@25| |st#0@@41|)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|M3.__default.execOne#canCall| |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|) (let ((|result''#0@@10| (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|)))
 (and (and (M3.Tuple.Pair_q |result''#0@@10|) (M3.Tuple.Pair_q |result''#0@@10|)) (let ((|st''#0@@8| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@10|))))
(let ((|paths''#0@@1| ($Unbox SetType (M3.Tuple.fst |result''#0@@10|))))
 (and (|M3.__default.ValidState#canCall| |st''#0@@8|) (=> (M3.__default.ValidState |st''#0@@8|) (and (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@8|) (=> (M3.__default.Extends |st#0@@41| |st''#0@@8|) (and (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |paths''#0@@1|) (=> (M3.__default.OneToOne |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |paths''#0@@1|) (|M3.__default.Post#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st''#0@@8|)))))))))))) (let ((|result''#0@@11| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|)))
(let ((|st''#0@@9| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@11|))))
 (and (|M3.__default.ValidState#canCall| |st''#0@@9|) (and (M3.__default.ValidState |st''#0@@9|) (forall ((|p#1@@14| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@14| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st''#0@@9|) ($Box DatatypeTypeType |p#1@@14|)) (M3.__default.WellFounded |p#1@@14|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5872|
 :pattern ( (M3.__default.WellFounded |p#1@@14|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0@@9|) ($Box DatatypeTypeType |p#1@@14|)))
))))))) (and (and (let ((|result''#0@@12| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|)))
(let ((|st''#0@@10| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@12|))))
 (and (|M3.__default.Extends#canCall| |st#0@@41| |st''#0@@10|) (and (M3.__default.Extends |st#0@@41| |st''#0@@10|) (and (and (|Set#Subset| (M3.__default.DomSt |st#0@@41|) (M3.__default.DomSt |st''#0@@10|)) (forall ((|p#2@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@6| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@6|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@6| |st''#0@@10|) (M3.__default.GetSt |p#2@@6| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |5875|
 :pattern ( (M3.__default.GetSt |p#2@@6| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#2@@6| |st''#0@@10|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#2@@6|)))
))) (forall ((|p#3@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@2| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#3@@2|))) (|Set#IsMember| (M3.__default.DomSt |st''#0@@10|) ($Box DatatypeTypeType |p#3@@2|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#3@@2| |st''#0@@10|) (M3.__default.Oracle |p#3@@2| |st#0@@41|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |5876|
 :pattern ( (M3.__default.Oracle |p#3@@2| |st#0@@41|))
 :pattern ( (M3.__default.GetSt |p#3@@2| |st''#0@@10|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st''#0@@10|) ($Box DatatypeTypeType |p#3@@2|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#3@@2|)))
))))))) (let ((|result''#0@@13| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|)))
(let ((|paths''#0@@2| ($Unbox SetType (M3.Tuple.fst |result''#0@@13|))))
 (and (|M3.__default.OneToOne#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |paths''#0@@2|) (and (M3.__default.OneToOne |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |paths''#0@@2|) (forall ((|e#1@@7| T@U) ) (!  (=> ($Is SeqType |e#1@@7| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#1@@7|)) (|Set#IsMember| |paths''#0@@2| ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1@@7|)))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |5878|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#1@@7|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#1@@7|)))
))))))) (and (let ((|result''#0@@14| (M3.__default.execOne ($LS ($LS $LZ)) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps##1_0@0| |st#0@@41|)))
(let ((|st''#0@@11| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#0@@14|))))
 (and (|M3.__default.Post#canCall| |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st''#0@@11|) (and (M3.__default.Post |cmd#0@@20| |deps#0@@25| |exps##1_0@0| |st''#0@@11|) (forall ((|e#2@@5| T@U) ) (!  (=> ($Is SeqType |e#2@@5| (TSeq TChar)) (and (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)) (|Set#IsMember| (M3.__default.DomSt |st''#0@@11|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#2@@5|)))) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#2@@5|) |st''#0@@11|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#2@@5|) |st''#0@@11|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |5880|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#2@@5|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)))
)))))) (= $Heap@0 $Heap@1)))) (=> (and (and (and (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@1)) (and ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@1) ($IsAlloc SetType |exps#0@@11| (TSet (TSeq TChar)) $Heap@1))) (and (and ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@1) (|M3.__default.execOne#canCall| |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)) (and (M3.Tuple.Pair_q (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)) (M3.Tuple.Pair_q (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|))))) (and (and (and (|$IsA#M3.State| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))) (|$IsA#M3.State| |$rhs#1_3@0|)) (and (|M3.__default.execOne#canCall| |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|) (M3.Tuple.Pair_q (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|)))) (|M3.State#Equal| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| |exps#0@@11| |st#0@@41|))) |$rhs#1_3@0|))) (and (and (and (and (=> (= (ControlFlow 0 80) 1) anon54_Then_correct) (=> (= (ControlFlow 0 80) 2) anon55_Then_correct)) (=> (= (ControlFlow 0 80) 4) anon56_Then_correct)) (=> (= (ControlFlow 0 80) 5) anon57_Then_correct)) (=> (= (ControlFlow 0 80) 79) anon57_Else_correct))))))))))))))))
(let ((anon53_Else_correct  (=> (not (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|))) (=> (and ($IsAlloc DatatypeTypeType |p#1_0@0| Tclass.M3.Path $Heap@0) ($IsAlloc DatatypeTypeType |a#1_0@0| Tclass.M3.Artifact $Heap@0)) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@0) (|M3.__default.SetSt#canCall| |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|)) (and (M3.State.StateCons_q (M3.__default.SetSt |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|)) (= (ControlFlow 0 86) 80))) anon5_correct)))))
(let ((anon53_Then_correct  (=> (and (|Set#IsMember| (M3.__default.DomSt |$rhs#1_1@0|) ($Box DatatypeTypeType |p#1_0@0|)) (= (ControlFlow 0 85) 80)) anon5_correct)))
(let ((anon52_Else_correct  (=> (and (not (|Set#Equal| |exps#0@@11| |Set#Empty|)) ($IsAlloc SetType |exps#0@@11| (TSet (TSeq TChar)) $Heap@0)) (=> (and (and (not (|Set#Equal| |exps#0@@11| |Set#Empty|)) (|M3.__default.PickOne#canCall| (TSeq TChar) |exps#0@@11|)) (and (|M3.__default.PickOne#canCall| (TSeq TChar) |exps#0@@11|) (= |exp#1_0@0| ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) |exps#0@@11|))))) (=> (and (and (and (and (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@0) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@0)) (and ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@0) (= |##exps#1_0@0| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|)))))) (and (and ($IsAlloc SetType |##exps#1_0@0| (TSet (TSeq TChar)) $Heap@0) ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@0)) (and (|M3.__default.execOne#canCall| |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@41|) (M3.Tuple.Pair_q (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@41|))))) (and (and (and (|M3.__default.execOne#canCall| |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@41|) (= |rest#1_0@0| (M3.__default.execOne ($LS $LZ) |cmd#0@@20| |deps#0@@25| |restrictedState#0@@3| (|Set#Difference| |exps#0@@11| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@41|))) (and (M3.Tuple.Pair_q |rest#1_0@0|) (M3.Tuple.Pair_q |rest#1_0@0|))) (and (and (= |$rhs#1_0@0| ($Unbox SetType (M3.Tuple.fst |rest#1_0@0|))) (M3.Tuple.Pair_q |rest#1_0@0|)) (and (M3.Tuple.Pair_q |rest#1_0@0|) (= |$rhs#1_1@0| ($Unbox DatatypeTypeType (M3.Tuple.snd |rest#1_0@0|))))))) (and (and (and (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@0) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@0)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@0) (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |exp#1_0@0|))) (and (and (|M3.__default.Loc#canCall| |cmd#0@@20| |deps#0@@25| |exp#1_0@0|) (= |p#1_0@0| (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |exp#1_0@0|))) (and ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@0) ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@0)))) (and (and (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@0) (|M3.__default.RunTool#canCall| |cmd#0@@20| |restrictedState#0@@3| |exp#1_0@0|)) (and (M3.Artifact.ArtifactCons_q (M3.__default.RunTool |cmd#0@@20| |restrictedState#0@@3| |exp#1_0@0|)) (|M3.__default.RunTool#canCall| |cmd#0@@20| |restrictedState#0@@3| |exp#1_0@0|))) (and (and (= |a#1_0@0| (M3.__default.RunTool |cmd#0@@20| |restrictedState#0@@3| |exp#1_0@0|)) (= |$rhs#1_2@0| (|Set#Union| |$rhs#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |p#1_0@0|))))) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M3.State $Heap@0) (|M3.__default.DomSt#canCall| |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 87) 85) anon53_Then_correct) (=> (= (ControlFlow 0 87) 86) anon53_Else_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@17 alloc false)) (|$IsA#M3.State| |st#0@@41|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@17 $Heap@0) (forall ((|$ih#cmd0#0| T@U) (|$ih#deps0#0| T@U) (|$ih#restrictedState0#0| T@U) (|$ih#exps0#0| T@U) (|$ih#st0#0| T@U) ) (!  (=> (and (and (and (and (and (and ($Is SeqType |$ih#cmd0#0| (TSeq TChar)) ($Is SetType |$ih#deps0#0| (TSet Tclass.M3.Path))) ($Is MapType |$ih#restrictedState0#0| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |$ih#exps0#0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |$ih#st0#0| Tclass.M3.State)) (and (and (and (M3.__default.ValidState |$ih#st0#0|) (|Set#Subset| |$ih#deps0#0| (M3.__default.DomSt |$ih#st0#0|))) (M3.__default.Pre |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |$ih#st0#0|)) (|Map#Equal| |$ih#restrictedState0#0| (M3.__default.Restrict |$ih#deps0#0| |$ih#st0#0|)))) (or (< (|Seq#Rank| |$ih#cmd0#0|) (|Seq#Rank| |cmd#0@@20|)) (and (= (|Seq#Rank| |$ih#cmd0#0|) (|Seq#Rank| |cmd#0@@20|)) (or (and (|Set#Subset| |$ih#deps0#0| |deps#0@@25|) (not (|Set#Subset| |deps#0@@25| |$ih#deps0#0|))) (and (|Set#Equal| |$ih#deps0#0| |deps#0@@25|) (or (and (|Set#Subset| (|Map#Domain| |$ih#restrictedState0#0|) (|Map#Domain| |restrictedState#0@@3|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@3|) (|Map#Domain| |$ih#restrictedState0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#restrictedState0#0|) (|Map#Domain| |restrictedState#0@@3|)) (or (and (|Set#Subset| |$ih#exps0#0| |exps#0@@11|) (not (|Set#Subset| |exps#0@@11| |$ih#exps0#0|))) (and (|Set#Equal| |$ih#exps0#0| |exps#0@@11|) (< (DtRank |$ih#st0#0|) (DtRank |st#0@@41|))))))))))) (let ((|result''#1| (M3.__default.execOne ($LS $LZ) |$ih#cmd0#0| |$ih#deps0#0| |$ih#restrictedState0#0| |$ih#exps0#0| |$ih#st0#0|)))
(let ((|st''#1| ($Unbox DatatypeTypeType (M3.Tuple.snd |result''#1|))))
(let ((|paths''#1| ($Unbox SetType (M3.Tuple.fst |result''#1|))))
 (and (and (and (M3.__default.ValidState |st''#1|) (M3.__default.Extends |$ih#st0#0| |st''#1|)) (M3.__default.OneToOne |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |paths''#1|)) (M3.__default.Post |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |st''#1|))))))
 :qid |CloudMakeParallelBuildsdfy.528:25|
 :skolemid |5895|
 :pattern ( (M3.__default.execOne ($LS $LZ) |$ih#cmd0#0| |$ih#deps0#0| |$ih#restrictedState0#0| |$ih#exps0#0| |$ih#st0#0|))
)))) (and (=> (= (ControlFlow 0 88) 13) anon52_Then_correct) (=> (= (ControlFlow 0 88) 87) anon52_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@17) ($IsHeapAnchor $Heap@@17)) (=> (and (and ($Is SeqType |cmd#0@@20| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@20| (TSeq TChar) $Heap@@17)) (and ($Is SetType |deps#0@@25| (TSet Tclass.M3.Path)) ($IsAlloc SetType |deps#0@@25| (TSet Tclass.M3.Path) $Heap@@17))) (=> (and (and (and ($Is MapType |restrictedState#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact)) ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M3.Path Tclass.M3.Artifact) $Heap@@17)) (and ($Is SetType |exps#0@@11| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@11| (TSet (TSeq TChar)) $Heap@@17))) (and (and ($Is DatatypeTypeType |st#0@@41| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st#0@@41| Tclass.M3.State $Heap@@17)) (|$IsA#M3.State| |st#0@@41|))) (=> (and (and (and (and ($Is SeqType |exp#1_0| (TSeq TChar)) ($IsAlloc SeqType |exp#1_0| (TSeq TChar) $Heap@@17)) true) (and (and ($Is DatatypeTypeType |rest#1_0| (Tclass.M3.Tuple (TSet Tclass.M3.Path) Tclass.M3.State)) ($IsAlloc DatatypeTypeType |rest#1_0| (Tclass.M3.Tuple (TSet Tclass.M3.Path) Tclass.M3.State) $Heap@@17)) true)) (and (and (and ($Is SetType |paths#1_0| (TSet Tclass.M3.Path)) ($IsAlloc SetType |paths#1_0| (TSet Tclass.M3.Path) $Heap@@17)) true) (and (and ($Is DatatypeTypeType |st'#1_0| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st'#1_0| Tclass.M3.State $Heap@@17)) true))) (=> (and (and (and (and (and ($Is DatatypeTypeType |p#1_0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#1_0| Tclass.M3.Path $Heap@@17)) true) (and (and ($Is DatatypeTypeType |a#1_0| Tclass.M3.Artifact) ($IsAlloc DatatypeTypeType |a#1_0| Tclass.M3.Artifact $Heap@@17)) true)) (and (and (and ($Is SetType |paths''#1_0| (TSet Tclass.M3.Path)) ($IsAlloc SetType |paths''#1_0| (TSet Tclass.M3.Path) $Heap@@17)) true) (and (and ($Is DatatypeTypeType |st''#1_0| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st''#1_0| Tclass.M3.State $Heap@@17)) true))) (and (and (and (and ($Is DatatypeTypeType |p#1_2_0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#1_2_0| Tclass.M3.Path $Heap@@17)) true) (= 10 $FunctionContextHeight)) (and (and (and (|M3.__default.ValidState#canCall| |st#0@@41|) (and (M3.__default.ValidState |st#0@@41|) (forall ((|p#4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#4| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#4|)) (M3.__default.WellFounded |p#4|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |5882|
 :pattern ( (M3.__default.WellFounded |p#4|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType |p#4|)))
)))) (|Set#Subset| |deps#0@@25| (M3.__default.DomSt |st#0@@41|))) (and (and (|M3.__default.Pre#canCall| |cmd#0@@20| |deps#0@@25| |exps#0@@11| |st#0@@41|) (and (M3.__default.Pre |cmd#0@@20| |deps#0@@25| |exps#0@@11| |st#0@@41|) (forall ((|e#3| T@U) ) (!  (=> ($Is SeqType |e#3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#3|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@41|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#3|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#3|) |st#0@@41|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#3|) |st#0@@41|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |5884|
 :pattern ( (M3.__default.Loc |cmd#0@@20| |deps#0@@25| |e#3|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#3|)))
)))) (and (|Map#Equal| |restrictedState#0@@3| (M3.__default.Restrict |deps#0@@25| |st#0@@41|)) (= (ControlFlow 0 89) 88)))))) anon0_correct)))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
