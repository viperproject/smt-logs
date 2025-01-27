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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M2.State () T@U)
(declare-fun Tagclass.M2.WFCertificate () T@U)
(declare-fun Tagclass.M2.Tuple () T@U)
(declare-fun |##M2.WFCertificate.Cert| () T@U)
(declare-fun |##M2.State.StateCons| () T@U)
(declare-fun |##M2.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
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
(declare-fun M2.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M2.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M2.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M2.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M2.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M2.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M2.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun M2.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M2.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun M2.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M2.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun M2.__default.SetSt (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M2.__default.SetSt#canCall| (T@U T@U T@U) Bool)
(declare-fun |#M2.State.StateCons| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun M2.__default.FindCert (T@U T@U) T@U)
(declare-fun |M2.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M2.WFCertificate () T@U)
(declare-fun M2.WFCertificate.p (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$let#9$canCall| (T@U T@U) Bool)
(declare-fun |$let#9_c| (T@U T@U) T@U)
(declare-fun M2.__default.Restrict (T@U T@U) T@U)
(declare-fun |M2.__default.Restrict#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.GetSt (T@U T@U) T@U)
(declare-fun M2.__default.DomSt (T@U) T@U)
(declare-fun |M2.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |M2.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M2.__default.PickOne (T@U T@U) T@U)
(declare-fun |M2.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun M2.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |M2.__default.CollectDependencies#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun M2.__default.LocInv__Deps (T@U) T@U)
(declare-fun M2.WFCertificate.certs (T@U) T@U)
(declare-fun M2.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |M2.__default.OracleWF#canCall| (T@U T@U T@U) Bool)
(declare-fun |lambda#19| (T@U T@U) T@U)
(declare-fun |lambda#20| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M2.State| (T@U) Bool)
(declare-fun M2.__default.execOne (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.execOne#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Tuple (T@U T@U) T@U)
(declare-fun M2.__default.Post (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.Post#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.Oracle (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun M2.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M2.__default.OracleWF (T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun |M2.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun M2.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M2.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun M2.__default.GetCert (T@U) T@U)
(declare-fun |M2.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M2.__default.WellFounded (T@U) Bool)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun |$let#3_c| (T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |#M2.Tuple.Pair| (T@U T@U) T@U)
(declare-fun |M2.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun |M2.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.OneToOne (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.OneToOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M2.State#Equal| (T@U T@U) Bool)
(declare-fun M2.__default.OracleArbitrary (T@U) T@U)
(declare-fun |M2.__default.OracleArbitrary#canCall| (T@U) Bool)
(declare-fun |$let#6$canCall| () Bool)
(declare-fun |$let#6_a| () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun M2.Tuple.snd (T@U) T@U)
(declare-fun M2.Tuple.fst (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M2.__default.ValidState (T@U) Bool)
(declare-fun |M2.__default.ValidState#canCall| (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun M2.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun M2.__default.Extends (T@U T@U) Bool)
(declare-fun |M2.__default.Extends#canCall| (T@U T@U) Bool)
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
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M2.State Tagclass.M2.WFCertificate Tagclass.M2.Tuple |##M2.WFCertificate.Cert| |##M2.State.StateCons| |##M2.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$WFCertificate tytagFamily$Tuple)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M2.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M2.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M2.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M2.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |4474|
 :pattern ( (M2.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert  (and (= (Ctor MapType) 5) (= (Ctor DatatypeTypeType) 6)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M2.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M2.State $h))) ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |4682|
 :pattern ( ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|M2.__default.LocInv__Cmd#canCall| |p#0|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0| Tclass.M2.Path))) ($Is SeqType (M2.__default.LocInv__Cmd |p#0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.636:29|
 :skolemid |3812|
 :pattern ( (M2.__default.LocInv__Cmd |p#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M2.__default.LocInv__Exp#canCall| |p#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@0| Tclass.M2.Path))) ($Is SeqType (M2.__default.LocInv__Exp |p#0@@0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.638:29|
 :skolemid |3816|
 :pattern ( (M2.__default.LocInv__Exp |p#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|a#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M2.Path) ($IsBox |a#0| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0|)) (= (M2.__default.SetSt |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0|))) |p#0@@1| |a#0|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3501|
 :pattern ( (M2.__default.SetSt |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|d#0| T@U) (|certs#0| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0| (Lit SetType |certs#0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($IsBox |d#0| Tclass.M2.Path)) ($Is SetType |certs#0| (TSet Tclass.M2.WFCertificate))) (exists ((|c#3| T@U) ) (!  (and ($Is DatatypeTypeType |c#3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0|) ($Box DatatypeTypeType |c#3|)) (= (M2.WFCertificate.p |c#3|) |d#0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3898|
 :pattern ( (M2.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| |certs#0| ($Box DatatypeTypeType |c#3|)))
))))) (and (|$let#9$canCall| (Lit SetType |certs#0|) |d#0|) (= (M2.__default.FindCert |d#0| (Lit SetType |certs#0|)) (let ((|c#4| (|$let#9_c| (Lit SetType |certs#0|) |d#0|)))
|c#4|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |3899|
 :pattern ( (M2.__default.FindCert |d#0| (Lit SetType |certs#0|)) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@0| Tclass.M2.State)))) (and (forall ((|p#0@@2| T@U) ) (!  (=> ($IsBox |p#0@@2| Tclass.M2.Path) (and (=> (|Set#IsMember| (Lit SetType |paths#0|) |p#0@@2|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@0|))) (=> (and (|Set#IsMember| (Lit SetType |paths#0|) |p#0@@2|) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@0|))) |p#0@@2|)) (|M2.__default.GetSt#canCall| |p#0@@2| (Lit DatatypeTypeType |st#0@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |3508|
 :pattern ( (M2.__default.GetSt |p#0@@2| |st#0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@0|) |p#0@@2|))
 :pattern ( (|Set#IsMember| |paths#0| |p#0@@2|))
)) (= (M2.__default.Restrict (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@0|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M2.Path (Lit SetType |paths#0|) (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@0|))))) (|lambda#1| (Lit DatatypeTypeType |st#0@@0|)) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :weight 3
 :skolemid |3509|
 :pattern ( (M2.__default.Restrict (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@0|)))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2926|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (M2._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M2._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M2._default.PickOne$T) $Heap@@0)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.483:18|
 :skolemid |3522|
 :pattern ( ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|p#0@@3| T@U) (|cert#0| T@U) (|deps#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@0| |st#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@3| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@0| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@1| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@3| (Lit DatatypeTypeType |cert#0|)) (|Set#Equal| |deps#0@@0| (M2.__default.LocInv__Deps |p#0@@3|)))))) (and (forall ((|d#0@@0| T@U) ) (!  (=> ($IsBox |d#0@@0| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0@@0| |d#0@@0|) (and (and (|M2.__default.DomSt#canCall| |st#0@@1|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@0|) (|M2.__default.GetSt#canCall| |d#0@@0| |st#0@@1|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@0|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0|)) (|M2.__default.FindCert#canCall| |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))))) (|M2.__default.OracleWF#canCall| |d#0@@0| (M2.__default.FindCert |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|)))) |st#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3871|
 :pattern ( (M2.__default.FindCert |d#0@@0| (M2.WFCertificate.certs |cert#0|)))
 :pattern ( (M2.__default.GetSt |d#0@@0| |st#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@0|))
 :pattern ( (|Set#IsMember| |deps#0@@0| |d#0@@0|))
)) (= (M2.__default.CollectDependencies ($LS $ly) |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@0| |st#0@@1|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0@@0|)) (|lambda#20| (M2.__default.DomSt |st#0@@1|) |st#0@@1| ($LS $ly) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))) |st#0@@1|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3872|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly) |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@0| |st#0@@1|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@4| |st#0@@2|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@4| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@2| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@2|) |p#0@@4|)))) (and (M2.State.StateCons_q |st#0@@2|) (= (M2.__default.GetSt |p#0@@4| |st#0@@2|) (MapType0Select BoxType BoxType (|Map#Elements| (M2.State.m |st#0@@2|)) |p#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4259|
 :pattern ( (M2.__default.GetSt |p#0@@4| |st#0@@2|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|p#0@@5| T@U) (|cert#0@@0| T@U) (|deps#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@5| |cert#0@@0| |deps#0@@1| |st#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@5| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@1| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@3| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@5| |cert#0@@0|) (|Set#Equal| |deps#0@@1| (M2.__default.LocInv__Deps |p#0@@5|)))))) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($IsBox |d#0@@1| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0@@1| |d#0@@1|) (and (and (|M2.__default.DomSt#canCall| |st#0@@3|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@3|) |d#0@@1|) (|M2.__default.GetSt#canCall| |d#0@@1| |st#0@@3|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@3|) |d#0@@1|)) (and (and (M2.WFCertificate.Cert_q |cert#0@@0|) (|M2.__default.FindCert#canCall| |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|))) (|M2.__default.OracleWF#canCall| |d#0@@1| (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)) |st#0@@3|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3869|
 :pattern ( (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)))
 :pattern ( (M2.__default.GetSt |d#0@@1| |st#0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@3|) |d#0@@1|))
 :pattern ( (|Set#IsMember| |deps#0@@1| |d#0@@1|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@0) |p#0@@5| |cert#0@@0| |deps#0@@1| |st#0@@3|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0@@1|)) (|lambda#20| (M2.__default.DomSt |st#0@@3|) |st#0@@3| $ly@@0 (M2.WFCertificate.certs |cert#0@@0|) |st#0@@3|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3870|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@0) |p#0@@5| |cert#0@@0| |deps#0@@1| |st#0@@3|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2927|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2931|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2932|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@4| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@4| Tclass.M2.State))) (and (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@4|) |p#0@@6|) (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@4|)) |p#0@@6|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |4263|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@4|)) |p#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@4|) |p#0@@6|))
)) ($Is SetType (M2.__default.DomSt |st#0@@4|) (TSet Tclass.M2.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4264|
 :pattern ( (M2.__default.DomSt |st#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@5| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@5|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@5| Tclass.M2.State))) (and (M2.State.StateCons_q |st#0@@5|) (= (M2.__default.DomSt |st#0@@5|) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m |st#0@@5|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4266|
 :pattern ( (M2.__default.DomSt |st#0@@5|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M2.State| d@@0) (M2.State.StateCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |4687|
 :pattern ( (|$IsA#M2.State| d@@0))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2925|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|cmd#0@@0| T@U) (|deps#0@@2| T@U) (|restrictedState#0| T@U) (|exps#0| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@0| |deps#0@@2| |restrictedState#0| |exps#0| |st#0@@6|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@0| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@6| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.execOne $ly@@1 |cmd#0@@0| |deps#0@@2| |restrictedState#0| |exps#0| |st#0@@6|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3604|
 :pattern ( (M2.__default.execOne $ly@@1 |cmd#0@@0| |deps#0@@2| |restrictedState#0| |exps#0| |st#0@@6|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@1| T@U) (|deps#0@@3| T@U) (|exps#0@@0| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| |cmd#0@@1| |deps#0@@3| |exps#0@@0| |st#0@@7|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@7| Tclass.M2.State)))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is SeqType |e#0| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0|)) (and (|M2.__default.Loc#canCall| |cmd#0@@1| |deps#0@@3| |e#0|) (|M2.__default.DomSt#canCall| |st#0@@7|))) (=> (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@7|) (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0|))) (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@1| |deps#0@@3| |e#0|) (|M2.__default.GetSt#canCall| (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0|) |st#0@@7|)) (and (|M2.__default.Loc#canCall| |cmd#0@@1| |deps#0@@3| |e#0|) (|M2.__default.Oracle#canCall| (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0|) |st#0@@7|)))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4400|
 :pattern ( (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0|))
 :pattern ( (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0|)))
)) (= (M2.__default.Post |cmd#0@@1| |deps#0@@3| |exps#0@@0| |st#0@@7|) (forall ((|e#0@@0| T@U) ) (!  (=> ($Is SeqType |e#0@@0| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0@@0|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@7|) (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0@@0|))) (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0@@0|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0@@0|) |st#0@@7|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0@@0|) |st#0@@7|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4399|
 :pattern ( (M2.__default.Loc |cmd#0@@1| |deps#0@@3| |e#0@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :skolemid |4401|
 :pattern ( (M2.__default.Post |cmd#0@@1| |deps#0@@3| |exps#0@@0| |st#0@@7|))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7208|
 :pattern ( (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)) a@@4)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |3083|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |3084|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@6 b@@3) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2941|
 :pattern ( (|Set#Difference| a@@6 b@@3) (|Set#IsMember| b@@3 y@@2))
)))
(assert (forall ((M2._default.PickOne$T@@0 T@U) (s T@U) ) (!  (=> (|$let#0$canCall| M2._default.PickOne$T@@0 s) (|Set#IsMember| s (|$let#0_x| M2._default.PickOne$T@@0 s)))
 :qid |CloudMakeParallelBuildsdfy.486:5|
 :skolemid |3524|
 :pattern ( (|$let#0_x| M2._default.PickOne$T@@0 s))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@7| T@U) (|a#0@@0| T@U) (|st#0@@8| T@U) ) (!  (=> (and (or (|M2.__default.SetSt#canCall| |p#0@@7| |a#0@@0| |st#0@@8|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@7| Tclass.M2.Path) ($IsAllocBox |p#0@@7| Tclass.M2.Path $Heap@@1)) (and ($IsBox |a#0@@0| Tclass.M2.Artifact) ($IsAllocBox |a#0@@0| Tclass.M2.Artifact $Heap@@1))) (and ($Is DatatypeTypeType |st#0@@8| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@8| Tclass.M2.State $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@7| |a#0@@0| |st#0@@8|) Tclass.M2.State $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.468:18|
 :skolemid |3498|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@7| |a#0@@0| |st#0@@8|) Tclass.M2.State $Heap@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$w#0@@0|) (|Set#IsMember| |l#2| |$w#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))
)))
(assert ($AlwaysAllocated Tclass.M2.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M2.Tuple$A T@U) (M2.Tuple$B T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)) (M2.Tuple.Pair_q d@@2))
 :qid |unknown.0:0|
 :skolemid |4952|
 :pattern ( (M2.Tuple.Pair_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@8| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@9| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@9|))) (Lit BoxType |p#0@@8|))))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@9|)) (= (M2.__default.GetSt (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@9|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@9|)))) (Lit BoxType |p#0@@8|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4261|
 :pattern ( (M2.__default.GetSt (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@9|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2922|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@9| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@9| |st#0@@10|) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@9| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@10| Tclass.M2.State)))) ($IsBox (M2.__default.Oracle |p#0@@9| |st#0@@10|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |3818|
 :pattern ( (M2.__default.Oracle |p#0@@9| |st#0@@10|))
))))
(assert (forall (($ly@@2 T@U) (|p#0@@10| T@U) (|cert#0@@1| T@U) (|deps#0@@4| T@U) (|st#0@@11| T@U) ) (! (= (M2.__default.CollectDependencies ($LS $ly@@2) |p#0@@10| |cert#0@@1| |deps#0@@4| |st#0@@11|) (M2.__default.CollectDependencies $ly@@2 |p#0@@10| |cert#0@@1| |deps#0@@4| |st#0@@11|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3864|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@2) |p#0@@10| |cert#0@@1| |deps#0@@4| |st#0@@11|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|p#0@@11| T@U) (|cert#0@@2| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@11| |cert#0@@2| |st#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@11| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@2| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@12| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@11| |cert#0@@2|)))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@11|) (|M2.__default.LocInv__Deps#canCall| |p#0@@11|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@11|)) (let ((|e#0@@1| (M2.__default.LocInv__Exp |p#0@@11|)))
(let ((|deps#0@@5| (M2.__default.LocInv__Deps |p#0@@11|)))
(let ((|cmd#0@@2| (M2.__default.LocInv__Cmd |p#0@@11|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@11| |cert#0@@2| |deps#0@@5| |st#0@@12|) (|M2.__default.RunTool#canCall| |cmd#0@@2| (M2.__default.CollectDependencies $ly@@3 |p#0@@11| |cert#0@@2| |deps#0@@5| |st#0@@12|) |e#0@@1|)))))) (= (M2.__default.OracleWF ($LS $ly@@3) |p#0@@11| |cert#0@@2| |st#0@@12|) (let ((|e#0@@2| (M2.__default.LocInv__Exp |p#0@@11|)))
(let ((|deps#0@@6| (M2.__default.LocInv__Deps |p#0@@11|)))
(let ((|cmd#0@@3| (M2.__default.LocInv__Cmd |p#0@@11|)))
(M2.__default.RunTool |cmd#0@@3| (M2.__default.CollectDependencies $ly@@3 |p#0@@11| |cert#0@@2| |deps#0@@6| |st#0@@12|) |e#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3848|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@3) |p#0@@11| |cert#0@@2| |st#0@@12|))
))))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate)  (and ($IsBox |a#2#0#0| Tclass.M2.Path) ($Is SetType |a#2#1#0| (TSet Tclass.M2.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4664|
 :pattern ( ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2935|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0@@0| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| |paths#0@@0| |st#0@@13|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0@@0| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@13| Tclass.M2.State)))) (and (forall ((|p#0@@12| T@U) ) (!  (=> ($IsBox |p#0@@12| Tclass.M2.Path) (and (=> (|Set#IsMember| |paths#0@@0| |p#0@@12|) (|M2.__default.DomSt#canCall| |st#0@@13|)) (=> (and (|Set#IsMember| |paths#0@@0| |p#0@@12|) (|Set#IsMember| (M2.__default.DomSt |st#0@@13|) |p#0@@12|)) (|M2.__default.GetSt#canCall| |p#0@@12| |st#0@@13|))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |3506|
 :pattern ( (M2.__default.GetSt |p#0@@12| |st#0@@13|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@13|) |p#0@@12|))
 :pattern ( (|Set#IsMember| |paths#0@@0| |p#0@@12|))
)) (= (M2.__default.Restrict |paths#0@@0| |st#0@@13|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M2.Path |paths#0@@0| (M2.__default.DomSt |st#0@@13|))) (|lambda#1| |st#0@@13|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |3507|
 :pattern ( (M2.__default.Restrict |paths#0@@0| |st#0@@13|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1)  (and (|Set#IsMember| a@@8 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2940|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|p#0@@13| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0@@13|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($IsBox |p#0@@13| Tclass.M2.Path)) (M2.__default.WellFounded |p#0@@13|)))) (and (|$let#3$canCall| |p#0@@13|) (= (M2.__default.GetCert |p#0@@13|) (let ((|c#0| (|$let#3_c| |p#0@@13|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |3797|
 :pattern ( (M2.__default.GetCert |p#0@@13|) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|cmd#0@@4| T@U) (|deps#0@@7| T@U) (|exp#0@@0| T@U) ) (!  (=> (and (or (|M2.__default.RunTool#canCall| |cmd#0@@4| |deps#0@@7| |exp#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@4| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@4| (TSeq TChar) $Heap@@3)) (and ($Is MapType |deps#0@@7| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |deps#0@@7| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@3))) (and ($Is SeqType |exp#0@@0| (TSeq TChar)) ($IsAlloc SeqType |exp#0@@0| (TSeq TChar) $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M2.__default.RunTool |cmd#0@@4| |deps#0@@7| |exp#0@@0|) Tclass.M2.Artifact $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.507:18|
 :skolemid |3588|
 :pattern ( ($IsAllocBox (M2.__default.RunTool |cmd#0@@4| |deps#0@@7| |exp#0@@0|) Tclass.M2.Artifact $Heap@@3))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M2.WFCertificate) (M2.WFCertificate.Cert_q d@@3))
 :qid |unknown.0:0|
 :skolemid |4673|
 :pattern ( (M2.WFCertificate.Cert_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M2.WFCertificate))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.M2.State) (M2.State.StateCons_q d@@4))
 :qid |unknown.0:0|
 :skolemid |4688|
 :pattern ( (M2.State.StateCons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.M2.State))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0@@0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((M2.Tuple$A@@0 T@U) (M2.Tuple$B@@0 T@U) (|a#157#0#0| T@U) (|a#157#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0))  (and ($IsBox |a#157#0#0| M2.Tuple$A@@0) ($IsBox |a#157#1#0| M2.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |4940|
 :pattern ( ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@14| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| |p#0@@14|) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@14| Tclass.M2.Path))) (and (forall ((|cert#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0@@3| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| |p#0@@14| |cert#0@@3|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3532|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@14| |cert#0@@3|))
)) (= (M2.__default.WellFounded |p#0@@14|) (exists ((|cert#0@@4| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@4| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@14| |cert#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3531|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@14| |cert#0@@4|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |3533|
 :pattern ( (M2.__default.WellFounded |p#0@@14|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@5| T@U) (|deps#0@@8| T@U) (|exps#0@@1| T@U) (|paths#0@@1| T@U) ) (!  (=> (or (|M2.__default.OneToOne#canCall| |cmd#0@@5| |deps#0@@8| |exps#0@@1| |paths#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@5| (TSeq TChar)) ($Is SetType |deps#0@@8| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@1| (TSet Tclass.M2.Path))))) (and (forall ((|e#0@@3| T@U) ) (!  (=> ($Is SeqType |e#0@@3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#0@@3|)) (|M2.__default.Loc#canCall| |cmd#0@@5| |deps#0@@8| |e#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4388|
 :pattern ( (M2.__default.Loc |cmd#0@@5| |deps#0@@8| |e#0@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#0@@3|)))
)) (= (M2.__default.OneToOne |cmd#0@@5| |deps#0@@8| |exps#0@@1| |paths#0@@1|) (forall ((|e#0@@4| T@U) ) (!  (=> ($Is SeqType |e#0@@4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#0@@4|)) (|Set#IsMember| |paths#0@@1| (M2.__default.Loc |cmd#0@@5| |deps#0@@8| |e#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4387|
 :pattern ( (M2.__default.Loc |cmd#0@@5| |deps#0@@8| |e#0@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#0@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :skolemid |4389|
 :pattern ( (M2.__default.OneToOne |cmd#0@@5| |deps#0@@8| |exps#0@@1| |paths#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@15| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@15| |st#0@@14|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@15| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@14| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@14|) |p#0@@15|)))) ($IsBox (M2.__default.GetSt |p#0@@15| |st#0@@14|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4256|
 :pattern ( (M2.__default.GetSt |p#0@@15| |st#0@@14|))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|M2.State#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |unknown.0:0|
 :skolemid |4690|
 :pattern ( (|M2.State#Equal| a@@9 b@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|p#0@@16| T@U) (|st#0@@15| T@U) ) (!  (=> (and (or (|M2.__default.GetSt#canCall| |p#0@@16| |st#0@@15|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@16| Tclass.M2.Path) ($IsAllocBox |p#0@@16| Tclass.M2.Path $Heap@@4)) (and ($Is DatatypeTypeType |st#0@@15| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@15| Tclass.M2.State $Heap@@4))) (|Set#IsMember| (M2.__default.DomSt |st#0@@15|) |p#0@@16|)))) ($IsGoodHeap $Heap@@4)) ($IsAllocBox (M2.__default.GetSt |p#0@@16| |st#0@@15|) Tclass.M2.Artifact $Heap@@4))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |4257|
 :pattern ( ($IsAllocBox (M2.__default.GetSt |p#0@@16| |st#0@@15|) Tclass.M2.Artifact $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|p#0@@17| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| |p#0@@17|) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) ($IsBox |p#0@@17| Tclass.M2.Path)))) (and |$let#6$canCall| (= (M2.__default.OracleArbitrary |p#0@@17|) (let ((|a#0@@1| |$let#6_a|))
|a#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |3841|
 :pattern ( (M2.__default.OracleArbitrary |p#0@@17|) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|cmd#0@@6| T@U) (|deps#0@@9| T@U) (|restrictedState#0@@0| T@U) (|exps#0@@2| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| |exps#0@@2| |st#0@@16|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($Is SetType |deps#0@@9| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@16| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@2| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@2|) (let ((|exp#0@@1| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@2|))))
 (and (|M2.__default.execOne#canCall| |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| (|Set#Difference| |exps#0@@2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@16|) (let ((|st'#0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@4 |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| (|Set#Difference| |exps#0@@2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@16|)))))
 (and (|M2.__default.Loc#canCall| |cmd#0@@6| |deps#0@@9| |exp#0@@1|) (let ((|p#0@@18| (M2.__default.Loc |cmd#0@@6| |deps#0@@9| |exp#0@@1|)))
 (and (|M2.__default.DomSt#canCall| |st'#0|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#0|) |p#0@@18|)) (and (|M2.__default.RunTool#canCall| |cmd#0@@6| |restrictedState#0@@0| |exp#0@@1|) (|M2.__default.SetSt#canCall| |p#0@@18| (M2.__default.RunTool |cmd#0@@6| |restrictedState#0@@0| |exp#0@@1|) |st'#0|))))))))))) (= (M2.__default.execOne ($LS $ly@@4) |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| |exps#0@@2| |st#0@@16|) (ite (|Set#Equal| |exps#0@@2| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType |st#0@@16|)) (let ((|exp#0@@2| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@2|))))
(let ((|st'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@4 |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| (|Set#Difference| |exps#0@@2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@16|)))))
(let ((|paths#0@@2| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne $ly@@4 |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| (|Set#Difference| |exps#0@@2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@16|)))))
(let ((|p#0@@19| (M2.__default.Loc |cmd#0@@6| |deps#0@@9| |exp#0@@2|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#0@@2| (|Set#UnionOne| |Set#Empty| |p#0@@19|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#0@@0|) |p#0@@19|) |st'#0@@0| (M2.__default.SetSt |p#0@@19| (M2.__default.RunTool |cmd#0@@6| |restrictedState#0@@0| |exp#0@@2|) |st'#0@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3607|
 :pattern ( (M2.__default.execOne ($LS $ly@@4) |cmd#0@@6| |deps#0@@9| |restrictedState#0@@0| |exps#0@@2| |st#0@@16|))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@10 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@7 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |3085|
)) ($Is MapType (|Map#Glue| a@@10 b@@7 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |3086|
 :pattern ( (|Map#Glue| a@@10 b@@7 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|p#0@@20| T@U) (|cert#0@@5| T@U) (|st#0@@17| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@20| |cert#0@@5| |st#0@@17|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@20| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@17| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#0@@5|)))) ($IsBox (M2.__default.OracleWF $ly@@5 |p#0@@20| |cert#0@@5| |st#0@@17|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3845|
 :pattern ( (M2.__default.OracleWF $ly@@5 |p#0@@20| |cert#0@@5| |st#0@@17|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Subset| a@@11 b@@8) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@11 o@@2) (|Set#IsMember| b@@8 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2943|
 :pattern ( (|Set#IsMember| a@@11 o@@2))
 :pattern ( (|Set#IsMember| b@@8 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2944|
 :pattern ( (|Set#Subset| a@@11 b@@8))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((M2.Tuple$A@@1 T@U) (M2.Tuple$B@@1 T@U) (|a#157#0#0@@0| T@U) (|a#157#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@1)  (and ($IsAllocBox |a#157#0#0@@0| M2.Tuple$A@@1 $h@@1) ($IsAllocBox |a#157#1#0@@0| M2.Tuple$B@@1 $h@@1))))
 :qid |unknown.0:0|
 :skolemid |4941|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|p#0@@21| T@U) (|cert#0@@6| T@U) (|deps#0@@10| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@21|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@18|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@21| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@6| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@10| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@18| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@21|) (Lit DatatypeTypeType |cert#0@@6|)) (|Set#Equal| |deps#0@@10| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@21|))))))) (and (forall ((|d#0@@2| T@U) ) (!  (=> ($IsBox |d#0@@2| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@10|) |d#0@@2|) (and (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@18|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@18|))) |d#0@@2|) (|M2.__default.GetSt#canCall| |d#0@@2| (Lit DatatypeTypeType |st#0@@18|)))) (=> (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@18|))) |d#0@@2|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@6|)) (|M2.__default.FindCert#canCall| |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))))) (|M2.__default.OracleWF#canCall| |d#0@@2| (M2.__default.FindCert |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|)))) (Lit DatatypeTypeType |st#0@@18|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3873|
 :pattern ( (M2.__default.FindCert |d#0@@2| (M2.WFCertificate.certs |cert#0@@6|)))
 :pattern ( (M2.__default.GetSt |d#0@@2| |st#0@@18|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@18|) |d#0@@2|))
 :pattern ( (|Set#IsMember| |deps#0@@10| |d#0@@2|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@6) (Lit BoxType |p#0@@21|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@18|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (Lit SetType |deps#0@@10|))) (|lambda#20| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@18|))) (Lit DatatypeTypeType |st#0@@18|) ($LS $ly@@6) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))) (Lit DatatypeTypeType |st#0@@18|)) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3874|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@6) (Lit BoxType |p#0@@21|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@18|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@19| T@U) ) (!  (=> (or (|M2.__default.ValidState#canCall| |st#0@@19|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@19| Tclass.M2.State))) (and (forall ((|p#0@@22| T@U) ) (!  (=> ($IsBox |p#0@@22| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@19|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@19|) |p#0@@22|) (|M2.__default.WellFounded#canCall| |p#0@@22|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4281|
 :pattern ( (M2.__default.WellFounded |p#0@@22|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@19|) |p#0@@22|))
)) (= (M2.__default.ValidState |st#0@@19|) (forall ((|p#0@@23| T@U) ) (!  (=> ($IsBox |p#0@@23| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@19|) |p#0@@23|) (M2.__default.WellFounded |p#0@@23|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4280|
 :pattern ( (M2.__default.WellFounded |p#0@@23|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@19|) |p#0@@23|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |4282|
 :pattern ( (M2.__default.ValidState |st#0@@19|))
))))
(assert (forall ((d@@5 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@5) (= (DatatypeCtorId d@@5) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (M2.WFCertificate.Cert_q d@@6) (= (DatatypeCtorId d@@6) |##M2.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |4661|
 :pattern ( (M2.WFCertificate.Cert_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (M2.State.StateCons_q d@@7) (= (DatatypeCtorId d@@7) |##M2.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |4677|
 :pattern ( (M2.State.StateCons_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M2.Tuple.Pair_q d@@8) (= (DatatypeCtorId d@@8) |##M2.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |4937|
 :pattern ( (M2.Tuple.Pair_q d@@8))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |3036|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |3037|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0@@3| T@U) (|st#0@@20| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| |paths#0@@3| |st#0@@20|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0@@3| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@20| Tclass.M2.State)))) ($Is MapType (M2.__default.Restrict |paths#0@@3| |st#0@@20|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |3503|
 :pattern ( (M2.__default.Restrict |paths#0@@3| |st#0@@20|))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Disjoint| a@@12 b@@9) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@12 o@@3)) (not (|Set#IsMember| b@@9 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2948|
 :pattern ( (|Set#IsMember| a@@12 o@@3))
 :pattern ( (|Set#IsMember| b@@9 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2949|
 :pattern ( (|Set#Disjoint| a@@12 b@@9))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2950|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@24| T@U) (|st#0@@21| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@24| |st#0@@21|) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@24| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@21| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| |p#0@@24|) (=> (M2.__default.WellFounded |p#0@@24|) (and (|M2.__default.GetCert#canCall| |p#0@@24|) (|M2.__default.OracleWF#canCall| |p#0@@24| (M2.__default.GetCert |p#0@@24|) |st#0@@21|)))) (=> (not (M2.__default.WellFounded |p#0@@24|)) (|M2.__default.OracleArbitrary#canCall| |p#0@@24|))) (= (M2.__default.Oracle |p#0@@24| |st#0@@21|) (ite (M2.__default.WellFounded |p#0@@24|) (M2.__default.OracleWF ($LS $LZ) |p#0@@24| (M2.__default.GetCert |p#0@@24|) |st#0@@21|) (M2.__default.OracleArbitrary |p#0@@24|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |3821|
 :pattern ( (M2.__default.Oracle |p#0@@24| |st#0@@21|))
))))
(assert (forall ((d@@9 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@9) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@9 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3247|
)))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( (_System.Tuple2.___hMake2_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (M2.WFCertificate.Cert_q d@@10) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@10 (|#M2.WFCertificate.Cert| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4662|
)))
 :qid |unknown.0:0|
 :skolemid |4663|
 :pattern ( (M2.WFCertificate.Cert_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (M2.Tuple.Pair_q d@@11) (exists ((|a#156#0#0| T@U) (|a#156#1#0| T@U) ) (! (= d@@11 (|#M2.Tuple.Pair| |a#156#0#0| |a#156#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4938|
)))
 :qid |unknown.0:0|
 :skolemid |4939|
 :pattern ( (M2.Tuple.Pair_q d@@11))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@22| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@22|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@22| Tclass.M2.State))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@22|)) (= (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@22|)) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m (Lit DatatypeTypeType |st#0@@22|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |4267|
 :pattern ( (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@22|)))
))))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2843|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2844|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@25| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| (Lit BoxType |p#0@@25|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) ($IsBox |p#0@@25| Tclass.M2.Path)))) (and |$let#6$canCall| (= (M2.__default.OracleArbitrary (Lit BoxType |p#0@@25|)) (let ((|a#1| |$let#6_a|))
|a#1|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :weight 3
 :skolemid |3842|
 :pattern ( (M2.__default.OracleArbitrary (Lit BoxType |p#0@@25|)) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@7| T@U) (|deps#0@@11| T@U) (|exps#0@@3| T@U) (|st#0@@23| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@3|) (Lit DatatypeTypeType |st#0@@23|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@7| (TSeq TChar)) ($Is SetType |deps#0@@11| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@23| Tclass.M2.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@23|)))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@23|))) (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|) (Lit DatatypeTypeType |st#0@@23|))) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2|) (Lit DatatypeTypeType |st#0@@23|))))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4406|
 :pattern ( (M2.__default.Loc |cmd#0@@7| |deps#0@@11| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#2|)))
)) (= (M2.__default.Post (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@3|) (Lit DatatypeTypeType |st#0@@23|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2@@0|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@23|))) (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2@@0|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2@@0|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@23|)) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@23|))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4405|
 :pattern ( (M2.__default.Loc |cmd#0@@7| |deps#0@@11| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |4407|
 :pattern ( (M2.__default.Post (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@3|) (Lit DatatypeTypeType |st#0@@23|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|p#0@@26| T@U) (|cert#0@@7| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@24|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@26| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@7| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@24| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@26|) (|M2.__default.LocInv__Deps#canCall| |p#0@@26|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@26|)) (let ((|e#1| (M2.__default.LocInv__Exp |p#0@@26|)))
(let ((|deps#1| (M2.__default.LocInv__Deps |p#0@@26|)))
(let ((|cmd#1| (M2.__default.LocInv__Cmd |p#0@@26|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |deps#1| |st#0@@24|) (|M2.__default.RunTool#canCall| |cmd#1| (M2.__default.CollectDependencies ($LS $ly@@7) |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |deps#1| |st#0@@24|) |e#1|)))))) (= (M2.__default.OracleWF ($LS $ly@@7) |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@24|) (let ((|e#1@@0| (M2.__default.LocInv__Exp |p#0@@26|)))
(let ((|deps#1@@0| (M2.__default.LocInv__Deps |p#0@@26|)))
(let ((|cmd#1@@0| (M2.__default.LocInv__Cmd |p#0@@26|)))
(M2.__default.RunTool |cmd#1@@0| (M2.__default.CollectDependencies ($LS $ly@@7) |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |deps#1@@0| |st#0@@24|) |e#1@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3849|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@7) |p#0@@26| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@24|))
))))
(assert (forall ((d@@12 T@U) ) (!  (=> (M2.State.StateCons_q d@@12) (exists ((|a#8#0#0| T@U) ) (! (= d@@12 (|#M2.State.StateCons| |a#8#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4678|
)))
 :qid |unknown.0:0|
 :skolemid |4679|
 :pattern ( (M2.State.StateCons_q d@@12))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#3$canCall| p) (and ($Is DatatypeTypeType (|$let#3_c| p) Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) p (|$let#3_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |3796|
 :pattern ( (|$let#3_c| p))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|d#0@@3| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@3| |certs#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@7) ($IsBox |d#0@@3| Tclass.M2.Path)) ($Is SetType |certs#0@@0| (TSet Tclass.M2.WFCertificate))) (exists ((|c#1| T@U) ) (!  (and ($Is DatatypeTypeType |c#1| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)) (= (M2.WFCertificate.p |c#1|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3894|
 :pattern ( (M2.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)))
))))) (and (|$let#9$canCall| |certs#0@@0| |d#0@@3|) (= (M2.__default.FindCert |d#0@@3| |certs#0@@0|) (let ((|c#2| (|$let#9_c| |certs#0@@0| |d#0@@3|)))
|c#2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |3897|
 :pattern ( (M2.__default.FindCert |d#0@@3| |certs#0@@0|) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@8 T@U) ($ly@@8 T@U) (|p#0@@27| T@U) (|cert#0@@8| T@U) (|st#0@@25| T@U) ) (!  (=> (and (or (|M2.__default.OracleWF#canCall| |p#0@@27| |cert#0@@8| |st#0@@25|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@27| Tclass.M2.Path) ($IsAllocBox |p#0@@27| Tclass.M2.Path $Heap@@8)) (and ($Is DatatypeTypeType |cert#0@@8| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@8| Tclass.M2.WFCertificate $Heap@@8))) (and ($Is DatatypeTypeType |st#0@@25| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@25| Tclass.M2.State $Heap@@8))) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@27| |cert#0@@8|)))) ($IsGoodHeap $Heap@@8)) ($IsAllocBox (M2.__default.OracleWF $ly@@8 |p#0@@27| |cert#0@@8| |st#0@@25|) Tclass.M2.Artifact $Heap@@8))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3846|
 :pattern ( ($IsAllocBox (M2.__default.OracleWF $ly@@8 |p#0@@27| |cert#0@@8| |st#0@@25|) Tclass.M2.Artifact $Heap@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@28| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| (Lit BoxType |p#0@@28|)) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@28| Tclass.M2.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@28|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3535|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@28| |cert#1|))
)) (= (M2.__default.WellFounded (Lit BoxType |p#0@@28|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@28|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3534|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@28| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |3536|
 :pattern ( (M2.__default.WellFounded (Lit BoxType |p#0@@28|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@26| T@U) ) (!  (=> (or (|M2.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@26|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@26| Tclass.M2.State))) (and (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@26|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@26|))) |p#1|) (|M2.__default.WellFounded#canCall| |p#1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4284|
 :pattern ( (M2.__default.WellFounded |p#1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@26|) |p#1|))
)) (= (M2.__default.ValidState (Lit DatatypeTypeType |st#0@@26|)) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@26|))) |p#1@@0|) (M2.__default.WellFounded |p#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4283|
 :pattern ( (M2.__default.WellFounded |p#1@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@26|) |p#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |4285|
 :pattern ( (M2.__default.ValidState (Lit DatatypeTypeType |st#0@@26|)))
))))
(assert (forall (($ly@@9 T@U) (|p#0@@29| T@U) (|cert#0@@9| T@U) ) (! (= (M2.__default.CheckWellFounded ($LS $ly@@9) |p#0@@29| |cert#0@@9|) (M2.__default.CheckWellFounded $ly@@9 |p#0@@29| |cert#0@@9|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3541|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@9) |p#0@@29| |cert#0@@9|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0@@8| T@U) (|deps#0@@12| T@U) (|exp#0@@3| T@U) ) (!  (=> (or (|M2.__default.RunTool#canCall| |cmd#0@@8| |deps#0@@12| |exp#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@8| (TSeq TChar)) ($Is MapType |deps#0@@12| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SeqType |exp#0@@3| (TSeq TChar))))) ($IsBox (M2.__default.RunTool |cmd#0@@8| |deps#0@@12| |exp#0@@3|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |3587|
 :pattern ( (M2.__default.RunTool |cmd#0@@8| |deps#0@@12| |exp#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|p#0@@30| T@U) (|cert#0@@10| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@30| (Lit DatatypeTypeType |cert#0@@10|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@30| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@10| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) |p#0@@30|) (and (forall ((|d#1| T@U) ) (!  (=> ($IsBox |d#1| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@30|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1|) (forall ((|c#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@0|)) (M2.WFCertificate.Cert_q |c#2@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3557|
 :pattern ( (M2.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3558|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1|))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($IsBox |d#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1@@0|) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@1|)) (= (M2.WFCertificate.p |c#2@@1|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3560|
 :pattern ( (M2.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3561|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1@@0|))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M2.WFCertificate.Cert_q |c#3@@0|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3559|
 :pattern ( (M2.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@10) |p#0@@30| (Lit DatatypeTypeType |cert#0@@10|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) |p#0@@30|) (forall ((|d#1@@1| T@U) ) (!  (=> ($IsBox |d#1@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1@@1|) (exists ((|c#2@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@2|)) (= (M2.WFCertificate.p |c#2@@2|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3554|
 :pattern ( (M2.WFCertificate.p |c#2@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3555|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@30|) |d#1@@1|))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#3@@1|)) (M2.__default.CheckWellFounded ($LS $ly@@10) (M2.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3556|
 :pattern ( (M2.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3562|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@10) |p#0@@30| (Lit DatatypeTypeType |cert#0@@10|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@31| T@U) (|st#0@@27| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@31| (Lit DatatypeTypeType |st#0@@27|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@31| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@27| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@27|))) |p#0@@31|)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@27|)) (= (M2.__default.GetSt |p#0@@31| (Lit DatatypeTypeType |st#0@@27|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@27|)))) |p#0@@31|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4260|
 :pattern ( (M2.__default.GetSt |p#0@@31| (Lit DatatypeTypeType |st#0@@27|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@13| T@U) (|exps#0@@4| T@U) (|st#0@@28| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@4|) |st#0@@28|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@13| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@28| Tclass.M2.State)))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is SeqType |e#1@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@4|) ($Box SeqType |e#1@@1|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|) (|M2.__default.DomSt#canCall| |st#0@@28|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@28|) (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|) |st#0@@28|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@1|) |st#0@@28|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4371|
 :pattern ( (M2.__default.Loc |cmd#0@@9| |deps#0@@13| |e#1@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#1@@1|)))
)) (= (M2.__default.Pre (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@4|) |st#0@@28|) (forall ((|e#1@@2| T@U) ) (!  (=> ($Is SeqType |e#1@@2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@4|) ($Box SeqType |e#1@@2|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@28|) (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@2|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@2|) |st#0@@28|) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) |e#1@@2|) |st#0@@28|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4370|
 :pattern ( (M2.__default.Loc |cmd#0@@9| |deps#0@@13| |e#1@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#1@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |4372|
 :pattern ( (M2.__default.Pre (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@4|) |st#0@@28|))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M2.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M2.State)))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsBox bx@@2 Tclass.M2.State))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M2.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M2.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($IsBox bx@@3 Tclass.M2.WFCertificate))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@32| T@U) (|a#0@@2| T@U) (|st#0@@29| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| (Lit BoxType |p#0@@32|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@29|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@32| Tclass.M2.Path) ($IsBox |a#0@@2| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@29| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@29|)) (= (M2.__default.SetSt (Lit BoxType |p#0@@32|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@29|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@29|))) (Lit BoxType |p#0@@32|) (Lit BoxType |a#0@@2|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3502|
 :pattern ( (M2.__default.SetSt (Lit BoxType |p#0@@32|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@29|)))
))))
(assert (forall ((|a#13#0#0| T@U) (bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@4) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#13#0#0|) bx@@4))) (DtRank (|#M2.State.StateCons| |a#13#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4686|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@4) (|#M2.State.StateCons| |a#13#0#0|))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |3094|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |3095|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |3096|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall ((certs T@U) (d@@13 T@U) ) (!  (=> (|$let#9$canCall| certs d@@13) (and ($Is DatatypeTypeType (|$let#9_c| certs d@@13) Tclass.M2.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#9_c| certs d@@13))) (= (M2.WFCertificate.p (|$let#9_c| certs d@@13)) d@@13))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |3896|
 :pattern ( (|$let#9_c| certs d@@13))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) (|cmd#0@@10| T@U) (|deps#0@@14| T@U) (|restrictedState#0@@1| T@U) (|exps#0@@5| T@U) (|st#0@@30| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@30|)) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is SetType |deps#0@@14| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@1| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@5| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@30| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@5| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) (Lit SetType |exps#0@@5|)) (let ((|exp#1| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@5|))))))
 (and (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@5| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@30|)) (let ((|st'#1| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@11) (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@5| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@30|))))))
 (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |exp#1|) (let ((|p#1@@1| (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |exp#1|)))
 (and (|M2.__default.DomSt#canCall| |st'#1|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#1|) |p#1@@1|)) (and (|M2.__default.RunTool#canCall| (Lit SeqType |cmd#0@@10|) (Lit MapType |restrictedState#0@@1|) |exp#1|) (|M2.__default.SetSt#canCall| |p#1@@1| (M2.__default.RunTool (Lit SeqType |cmd#0@@10|) (Lit MapType |restrictedState#0@@1|) |exp#1|) |st'#1|))))))))))) (= (M2.__default.execOne ($LS $ly@@11) (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@30|)) (ite (|Set#Equal| |exps#0@@5| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@30|))) (let ((|exp#1@@0| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@5|))))))
(let ((|st'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@11) (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@5| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@30|))))))
(let ((|paths#1| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne ($LS $ly@@11) (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@5| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@30|))))))
(let ((|p#1@@2| (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |exp#1@@0|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#1| (|Set#UnionOne| |Set#Empty| |p#1@@2|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#1@@0|) |p#1@@2|) |st'#1@@0| (M2.__default.SetSt |p#1@@2| (M2.__default.RunTool (Lit SeqType |cmd#0@@10|) (Lit MapType |restrictedState#0@@1|) |exp#1@@0|) |st'#1@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :weight 3
 :skolemid |3608|
 :pattern ( (M2.__default.execOne ($LS $ly@@11) (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@30|)))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@13 b@@10) o@@4)  (or (|Set#IsMember| a@@13 o@@4) (|Set#IsMember| b@@10 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2930|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@13 b@@10) o@@4))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Set#Disjoint| a@@14 b@@11) (and (= (|Set#Difference| (|Set#Union| a@@14 b@@11) a@@14) b@@11) (= (|Set#Difference| (|Set#Union| a@@14 b@@11) b@@11) a@@14)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2933|
 :pattern ( (|Set#Union| a@@14 b@@11))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@9 T@U) ($ly@@12 T@U) (|p#0@@33| T@U) (|cert#0@@11| T@U) (|deps#0@@15| T@U) (|st#0@@31| T@U) ) (!  (=> (and (or (|M2.__default.CollectDependencies#canCall| |p#0@@33| |cert#0@@11| |deps#0@@15| |st#0@@31|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and ($IsBox |p#0@@33| Tclass.M2.Path) ($IsAllocBox |p#0@@33| Tclass.M2.Path $Heap@@9)) (and ($Is DatatypeTypeType |cert#0@@11| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@11| Tclass.M2.WFCertificate $Heap@@9))) (and ($Is SetType |deps#0@@15| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@15| (TSet Tclass.M2.Path) $Heap@@9))) (and ($Is DatatypeTypeType |st#0@@31| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@31| Tclass.M2.State $Heap@@9))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@33| |cert#0@@11|) (|Set#Equal| |deps#0@@15| (M2.__default.LocInv__Deps |p#0@@33|)))))) ($IsGoodHeap $Heap@@9)) ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@12 |p#0@@33| |cert#0@@11| |deps#0@@15| |st#0@@31|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@9))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3867|
 :pattern ( ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@12 |p#0@@33| |cert#0@@11| |deps#0@@15| |st#0@@31|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@9))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@10 T@U) (|p#0@@34| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| (Lit BoxType |p#0@@34|)) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@10) ($IsBox |p#0@@34| Tclass.M2.Path)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@34|)))))))) (and (|$let#3$canCall| (Lit BoxType |p#0@@34|)) (= (M2.__default.GetCert (Lit BoxType |p#0@@34|)) (let ((|c#1@@0| (|$let#3_c| (Lit BoxType |p#0@@34|))))
|c#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |3798|
 :pattern ( (M2.__default.GetCert (Lit BoxType |p#0@@34|)) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M2._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|) M2._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@35| T@U) (|st#0@@32| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@35| (Lit DatatypeTypeType |st#0@@32|)) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@35| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@32| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| |p#0@@35|) (=> (M2.__default.WellFounded |p#0@@35|) (and (|M2.__default.GetCert#canCall| |p#0@@35|) (|M2.__default.OracleWF#canCall| |p#0@@35| (M2.__default.GetCert |p#0@@35|) (Lit DatatypeTypeType |st#0@@32|))))) (=> (not (M2.__default.WellFounded |p#0@@35|)) (|M2.__default.OracleArbitrary#canCall| |p#0@@35|))) (= (M2.__default.Oracle |p#0@@35| (Lit DatatypeTypeType |st#0@@32|)) (ite (M2.__default.WellFounded |p#0@@35|) (M2.__default.OracleWF ($LS $LZ) |p#0@@35| (M2.__default.GetCert |p#0@@35|) (Lit DatatypeTypeType |st#0@@32|)) (M2.__default.OracleArbitrary |p#0@@35|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |3822|
 :pattern ( (M2.__default.Oracle |p#0@@35| (Lit DatatypeTypeType |st#0@@32|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@36| T@U) (|a#0@@3| T@U) (|st#0@@33| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@36| |a#0@@3| |st#0@@33|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@36| Tclass.M2.Path) ($IsBox |a#0@@3| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@33| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.SetSt |p#0@@36| |a#0@@3| |st#0@@33|) Tclass.M2.State))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3497|
 :pattern ( (M2.__default.SetSt |p#0@@36| |a#0@@3| |st#0@@33|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@37| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0@@37|) (and (< 3 $FunctionContextHeight) (and ($IsBox |p#0@@37| Tclass.M2.Path) (M2.__default.WellFounded |p#0@@37|)))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@37| (M2.__default.GetCert |p#0@@37|)) ($Is DatatypeTypeType (M2.__default.GetCert |p#0@@37|) Tclass.M2.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |3794|
 :pattern ( (M2.__default.GetCert |p#0@@37|))
))))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (|Set#Equal| a@@15 b@@12) (= a@@15 b@@12))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2947|
 :pattern ( (|Set#Equal| a@@15 b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (|Seq#Equal| a@@16 b@@13) (= a@@16 b@@13))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |3038|
 :pattern ( (|Seq#Equal| a@@16 b@@13))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |3097|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@13 T@U) (|p#0@@38| T@U) (|cert#0@@12| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@38|) (Lit DatatypeTypeType |cert#0@@12|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@38| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@12| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@12|))) (Lit BoxType |p#0@@38|)) (and (forall ((|d#2| T@U) ) (!  (=> ($IsBox |d#2| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@38|)) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@38|)) |d#2|) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@0|)) (M2.WFCertificate.Cert_q |c#4@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3566|
 :pattern ( (M2.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3567|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@38|) |d#2|))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($IsBox |d#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@38|)) |d#2@@0|) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@1|)) (= (M2.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3569|
 :pattern ( (M2.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3570|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@38|) |d#2@@0|))
)) (forall ((|c#5| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#5|)) (and (M2.WFCertificate.Cert_q |c#5|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#5|) |c#5|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3568|
 :pattern ( (M2.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#5|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@13) (Lit BoxType |p#0@@38|) (Lit DatatypeTypeType |cert#0@@12|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@12|))) (Lit BoxType |p#0@@38|)) (forall ((|d#2@@1| T@U) ) (!  (=> ($IsBox |d#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@38|)) |d#2@@1|) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@2|)) (= (M2.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3563|
 :pattern ( (M2.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3564|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@38|) |d#2@@1|))
))) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#5@@0|)) (M2.__default.CheckWellFounded ($LS $ly@@13) (M2.WFCertificate.p |c#5@@0|) |c#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3565|
 :pattern ( (M2.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#5@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3571|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@13) (Lit BoxType |p#0@@38|) (Lit DatatypeTypeType |cert#0@@12|)))
))))
(assert (forall ((|l#0@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#1| |l#0@@1|) |$w#0@@1|) (M2.__default.GetSt |$w#0@@1| |l#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.473:45|
 :skolemid |7205|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#1| |l#0@@1|) |$w#0@@1|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@39| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| |p#0@@39|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@39| Tclass.M2.Path))) ($IsBox (M2.__default.OracleArbitrary |p#0@@39|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.648:34|
 :skolemid |3838|
 :pattern ( (M2.__default.OracleArbitrary |p#0@@39|))
))))
(assert (forall ((|a#9#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State) ($Is MapType |a#9#0#0| (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4680|
 :pattern ( ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2827|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2835|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|paths#0@@4| T@U) (|st#0@@34| T@U) ) (!  (=> (and (or (|M2.__default.Restrict#canCall| |paths#0@@4| |st#0@@34|) (and (< 3 $FunctionContextHeight) (and (and ($Is SetType |paths#0@@4| (TSet Tclass.M2.Path)) ($IsAlloc SetType |paths#0@@4| (TSet Tclass.M2.Path) $Heap@@11)) (and ($Is DatatypeTypeType |st#0@@34| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@34| Tclass.M2.State $Heap@@11))))) ($IsGoodHeap $Heap@@11)) ($IsAlloc MapType (M2.__default.Restrict |paths#0@@4| |st#0@@34|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@11))
 :qid |CloudMakeParallelBuildsdfy.473:18|
 :skolemid |3504|
 :pattern ( ($IsAlloc MapType (M2.__default.Restrict |paths#0@@4| |st#0@@34|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@11))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@16| T@U) (|exps#0@@6| T@U) (|paths#0@@5| T@U) ) (!  (=> (or (|M2.__default.OneToOne#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@6|) (Lit SetType |paths#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@11| (TSeq TChar)) ($Is SetType |deps#0@@16| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@5| (TSet Tclass.M2.Path))))) (and (forall ((|e#1@@3| T@U) ) (!  (=> ($Is SeqType |e#1@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#1@@3|)) (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@16|) |e#1@@3|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4391|
 :pattern ( (M2.__default.Loc |cmd#0@@11| |deps#0@@16| |e#1@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#1@@3|)))
)) (= (M2.__default.OneToOne (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@6|) (Lit SetType |paths#0@@5|)) (forall ((|e#1@@4| T@U) ) (!  (=> ($Is SeqType |e#1@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#1@@4|)) (|Set#IsMember| (Lit SetType |paths#0@@5|) (M2.__default.Loc (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@16|) |e#1@@4|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4390|
 :pattern ( (M2.__default.Loc |cmd#0@@11| |deps#0@@16| |e#1@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#1@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :weight 3
 :skolemid |4392|
 :pattern ( (M2.__default.OneToOne (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@6|) (Lit SetType |paths#0@@5|)))
))))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3018|
 :pattern ( (|Seq#Length| s@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@2 T@U) ($Heap@@12 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@12) ($Is SetType |s#0@@1| (TSet M2._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@2 |s#0@@1|) (= (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#0_x| M2._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |3525|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@12))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2864|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2865|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2806|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2807|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2808|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3262|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((M2.Tuple$A@@2 T@U) (M2.Tuple$B@@2 T@U) ) (! (= (Tclass.M2.Tuple_0 (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2)) M2.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |3591|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2))
)))
(assert (forall ((M2.Tuple$A@@3 T@U) (M2.Tuple$B@@3 T@U) ) (! (= (Tclass.M2.Tuple_1 (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3)) M2.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |3592|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#M2.WFCertificate.Cert| |a#0#0#0@@0| |a#0#1#0@@0|)) |##M2.WFCertificate.Cert|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4660|
 :pattern ( (|#M2.WFCertificate.Cert| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (M2.WFCertificate.p (|#M2.WFCertificate.Cert| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4668|
 :pattern ( (|#M2.WFCertificate.Cert| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (M2.WFCertificate.certs (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4669|
 :pattern ( (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#155#0#0| T@U) (|a#155#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|)) |##M2.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4936|
 :pattern ( (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|))
)))
(assert (forall ((|a#159#0#0| T@U) (|a#159#1#0| T@U) ) (! (= (M2.Tuple.fst (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|)) |a#159#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4947|
 :pattern ( (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|))
)))
(assert (forall ((|a#161#0#0| T@U) (|a#161#1#0| T@U) ) (! (= (M2.Tuple.snd (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|)) |a#161#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4949|
 :pattern ( (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|))
)))
(assert  (=> |$let#6$canCall| (and ($IsBox |$let#6_a| Tclass.M2.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@3 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2870|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2871|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@13 T@U) (|p#0@@40| T@U) ) (!  (=> (and (or (|M2.__default.OracleArbitrary#canCall| |p#0@@40|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0@@40| Tclass.M2.Path) ($IsAllocBox |p#0@@40| Tclass.M2.Path $Heap@@13)))) ($IsGoodHeap $Heap@@13)) ($IsAllocBox (M2.__default.OracleArbitrary |p#0@@40|) Tclass.M2.Artifact $Heap@@13))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |3839|
 :pattern ( ($IsAllocBox (M2.__default.OracleArbitrary |p#0@@40|) Tclass.M2.Artifact $Heap@@13))
))))
(assert (forall (($ly@@14 T@U) (|cmd#0@@12| T@U) (|deps#0@@17| T@U) (|restrictedState#0@@2| T@U) (|exps#0@@7| T@U) (|st#0@@35| T@U) ) (! (= (M2.__default.execOne ($LS $ly@@14) |cmd#0@@12| |deps#0@@17| |restrictedState#0@@2| |exps#0@@7| |st#0@@35|) (M2.__default.execOne $ly@@14 |cmd#0@@12| |deps#0@@17| |restrictedState#0@@2| |exps#0@@7| |st#0@@35|))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3602|
 :pattern ( (M2.__default.execOne ($LS $ly@@14) |cmd#0@@12| |deps#0@@17| |restrictedState#0@@2| |exps#0@@7| |st#0@@35|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2798|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2799|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2804|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2805|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.State.StateCons| |a#7#0#0|)) |##M2.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4676|
 :pattern ( (|#M2.State.StateCons| |a#7#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (M2.State.m (|#M2.State.StateCons| |a#11#0#0|)) |a#11#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4684|
 :pattern ( (|#M2.State.StateCons| |a#11#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MapType v@@5 (TMap t0@@4 t1@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@5) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@7) t1@@1 h@@3) ($IsAllocBox bx@@7 t0@@4 h@@3)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2872|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@5) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2873|
 :pattern ( ($IsAlloc MapType v@@5 (TMap t0@@4 t1@@1) h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@15 T@U) (|p#0@@41| T@U) (|cert#0@@13| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@41| |cert#0@@13|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@41| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@13| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (= (M2.WFCertificate.p |cert#0@@13|) |p#0@@41|) (and (forall ((|d#0@@4| T@U) ) (!  (=> ($IsBox |d#0@@4| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@41|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@4|) (forall ((|c#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@0|)) (M2.WFCertificate.Cert_q |c#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3548|
 :pattern ( (M2.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3549|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@4|))
)) (=> (forall ((|d#0@@5| T@U) ) (!  (=> ($IsBox |d#0@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@5|) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@1|)) (= (M2.WFCertificate.p |c#0@@1|) |d#0@@5|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3551|
 :pattern ( (M2.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3552|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@5|))
)) (forall ((|c#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@1| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@1|)) (and (M2.WFCertificate.Cert_q |c#1@@1|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#1@@1|) |c#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3550|
 :pattern ( (M2.WFCertificate.p |c#1@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@1|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@15) |p#0@@41| |cert#0@@13|)  (and (and (= (M2.WFCertificate.p |cert#0@@13|) |p#0@@41|) (forall ((|d#0@@6| T@U) ) (!  (=> ($IsBox |d#0@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@6|) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@2|)) (= (M2.WFCertificate.p |c#0@@2|) |d#0@@6|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3545|
 :pattern ( (M2.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3546|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#0@@6|))
))) (forall ((|c#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@2| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@2|)) (M2.__default.CheckWellFounded $ly@@15 (M2.WFCertificate.p |c#1@@2|) |c#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3547|
 :pattern ( (M2.WFCertificate.p |c#1@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@2|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3553|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@15) |p#0@@41| |cert#0@@13|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@7| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@7| |certs#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |d#0@@7| Tclass.M2.Path) ($Is SetType |certs#0@@1| (TSet Tclass.M2.WFCertificate))) (exists ((|c#0@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@3|)) (= (M2.WFCertificate.p |c#0@@3|) |d#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3892|
 :pattern ( (M2.WFCertificate.p |c#0@@3|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@3|)))
))))) ($Is DatatypeTypeType (M2.__default.FindCert |d#0@@7| |certs#0@@1|) Tclass.M2.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |3893|
 :pattern ( (M2.__default.FindCert |d#0@@7| |certs#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@42| T@U) ) (!  (=> (or (|M2.__default.LocInv__Deps#canCall| |p#0@@42|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@42| Tclass.M2.Path))) ($Is SetType (M2.__default.LocInv__Deps |p#0@@42|) (TSet Tclass.M2.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |3814|
 :pattern ( (M2.__default.LocInv__Deps |p#0@@42|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@14 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@14) ($IsBox |d#0@@8| Tclass.M2.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M2.WFCertificate))) (exists ((|c#5@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#5@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@2|) ($Box DatatypeTypeType |c#5@@1|)) (= (M2.WFCertificate.p |c#5@@1|) (Lit BoxType |d#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3900|
 :pattern ( (M2.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#5@@1|)))
))))) (and (|$let#9$canCall| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|)) (= (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (let ((|c#6| (|$let#9_c| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |3901|
 :pattern ( (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) ($IsGoodHeap $Heap@@14))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
)))
(assert (forall ((|a#160#0#0| T@U) (|a#160#1#0| T@U) ) (! (< (BoxRank |a#160#0#0|) (DtRank (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4948|
 :pattern ( (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|))
)))
(assert (forall ((|a#162#0#0| T@U) (|a#162#1#0| T@U) ) (! (< (BoxRank |a#162#1#0|) (DtRank (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4950|
 :pattern ( (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@2) ($IsAlloc MapType |a#9#0#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $h@@2)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4681|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@2))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2936|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@16 T@U) (|p#0@@43| T@U) (|cert#0@@14| T@U) (|deps#0@@18| T@U) (|st#0@@36| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@43| |cert#0@@14| |deps#0@@18| |st#0@@36|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@43| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@14| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@18| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@36| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@43| |cert#0@@14|) (|Set#Equal| |deps#0@@18| (M2.__default.LocInv__Deps |p#0@@43|)))))) ($Is MapType (M2.__default.CollectDependencies $ly@@16 |p#0@@43| |cert#0@@14| |deps#0@@18| |st#0@@36|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3866|
 :pattern ( (M2.__default.CollectDependencies $ly@@16 |p#0@@43| |cert#0@@14| |deps#0@@18| |st#0@@36|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) ($ly@@17 T@U) (|cmd#0@@13| T@U) (|deps#0@@19| T@U) (|restrictedState#0@@3| T@U) (|exps#0@@8| T@U) (|st#0@@37| T@U) ) (!  (=> (and (or (|M2.__default.execOne#canCall| |cmd#0@@13| |deps#0@@19| |restrictedState#0@@3| |exps#0@@8| |st#0@@37|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($Is SeqType |cmd#0@@13| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@13| (TSeq TChar) $Heap@@15)) (and ($Is SetType |deps#0@@19| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@19| (TSet Tclass.M2.Path) $Heap@@15))) (and ($Is MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@15))) (and ($Is SetType |exps#0@@8| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@8| (TSet (TSeq TChar)) $Heap@@15))) (and ($Is DatatypeTypeType |st#0@@37| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@37| Tclass.M2.State $Heap@@15))))) ($IsGoodHeap $Heap@@15)) ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@17 |cmd#0@@13| |deps#0@@19| |restrictedState#0@@3| |exps#0@@8| |st#0@@37|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@15))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3605|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@17 |cmd#0@@13| |deps#0@@19| |restrictedState#0@@3| |exps#0@@8| |st#0@@37|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@15))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|st#0@@38| T@U) (|st'#0@@1| T@U) ) (!  (=> (or (|M2.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@1|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@38| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@1| Tclass.M2.State)))) (and (and (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@1|))) (=> (|Set#Subset| (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|)) (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) |p#2|) (and (|M2.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@1|)) (|M2.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@38|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4427|
 :pattern ( (M2.__default.GetSt |p#2| |st#0@@38|))
 :pattern ( (M2.__default.GetSt |p#2| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@38|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) |p#2@@0|) (= (M2.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@1|)) (M2.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4429|
 :pattern ( (M2.__default.GetSt |p#2@@0| |st#0@@38|))
 :pattern ( (M2.__default.GetSt |p#2@@0| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@38|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@38|)) (=> (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) |p#3|)) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@1|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))) |p#3|) (and (|M2.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@1|)) (|M2.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@38|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4428|
 :pattern ( (M2.__default.Oracle |p#3| |st#0@@38|))
 :pattern ( (M2.__default.GetSt |p#3| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@1|) |p#3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@38|) |p#3|))
)))))) (= (M2.__default.Extends (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@1|))  (and (and (|Set#Subset| (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|)) (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) |p#2@@1|) (= (M2.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@1|)) (M2.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4425|
 :pattern ( (M2.__default.GetSt |p#2@@1| |st#0@@38|))
 :pattern ( (M2.__default.GetSt |p#2@@1| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@38|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@38|))) |p#3@@0|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))) |p#3@@0|)) (= (M2.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@1|)) (M2.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@38|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4426|
 :pattern ( (M2.__default.Oracle |p#3@@0| |st#0@@38|))
 :pattern ( (M2.__default.GetSt |p#3@@0| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@1|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@38|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |4430|
 :pattern ( (M2.__default.Extends (Lit DatatypeTypeType |st#0@@38|) (Lit DatatypeTypeType |st'#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@44| T@U) (|a#0@@4| T@U) (|st#0@@39| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@44| |a#0@@4| |st#0@@39|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@44| Tclass.M2.Path) ($IsBox |a#0@@4| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@39| Tclass.M2.State)))) (and (M2.State.StateCons_q |st#0@@39|) (= (M2.__default.SetSt |p#0@@44| |a#0@@4| |st#0@@39|) (|#M2.State.StateCons| (|Map#Build| (M2.State.m |st#0@@39|) |p#0@@44| |a#0@@4|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3500|
 :pattern ( (M2.__default.SetSt |p#0@@44| |a#0@@4| |st#0@@39|))
))))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3082|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@14| T@U) (|deps#0@@20| T@U) (|exps#0@@9| T@U) (|st#0@@40| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| |cmd#0@@14| |deps#0@@20| |exps#0@@9| |st#0@@40|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@14| (TSeq TChar)) ($Is SetType |deps#0@@20| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@9| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@40| Tclass.M2.State)))) (and (forall ((|e#0@@5| T@U) ) (!  (=> ($Is SeqType |e#0@@5| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#0@@5|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@14| |deps#0@@20| |e#0@@5|) (|M2.__default.DomSt#canCall| |st#0@@40|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@40|) (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@5|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@14| |deps#0@@20| |e#0@@5|) (|M2.__default.GetSt#canCall| (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@5|) |st#0@@40|)) (and (|M2.__default.Loc#canCall| |cmd#0@@14| |deps#0@@20| |e#0@@5|) (|M2.__default.Oracle#canCall| (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@5|) |st#0@@40|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4368|
 :pattern ( (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#0@@5|)))
)) (= (M2.__default.Pre |cmd#0@@14| |deps#0@@20| |exps#0@@9| |st#0@@40|) (forall ((|e#0@@6| T@U) ) (!  (=> ($Is SeqType |e#0@@6| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#0@@6|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@40|) (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@6|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@6|) |st#0@@40|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@6|) |st#0@@40|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4367|
 :pattern ( (M2.__default.Loc |cmd#0@@14| |deps#0@@20| |e#0@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#0@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |4369|
 :pattern ( (M2.__default.Pre |cmd#0@@14| |deps#0@@20| |exps#0@@9| |st#0@@40|))
))))
(assert (forall (($ly@@18 T@U) (|p#0@@45| T@U) (|cert#0@@15| T@U) (|st#0@@41| T@U) ) (! (= (M2.__default.OracleWF ($LS $ly@@18) |p#0@@45| |cert#0@@15| |st#0@@41|) (M2.__default.OracleWF $ly@@18 |p#0@@45| |cert#0@@15| |st#0@@41|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3843|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@18) |p#0@@45| |cert#0@@15| |st#0@@41|))
)))
(assert (forall ((bx@@8 T@U) (s@@1 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@1 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@1 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2833|
 :pattern ( ($IsBox bx@@8 (TMap s@@1 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M2.Tuple$A@@4 T@U) (M2.Tuple$B@@4 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |3593|
 :pattern ( ($IsBox bx@@10 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)))
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
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|M2.State#Equal| a@@18 b@@15) (|Map#Equal| (M2.State.m a@@18) (M2.State.m b@@15)))
 :qid |unknown.0:0|
 :skolemid |4689|
 :pattern ( (|M2.State#Equal| a@@18 b@@15))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M2.Tuple$A@@5 T@U) (M2.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) Tagclass.M2.Tuple) (= (TagFamily (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@1| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@2| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#20| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|) (ite (|Set#IsMember| |l#0@@3| |$w#0@@2|) (M2.__default.GetSt |$w#0@@2| |l#1@@2|) (M2.__default.OracleWF |l#2@@1| |$w#0@@2| (M2.__default.FindCert |$w#0@@2| |l#3@@0|) |l#4|)))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7209|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#20| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@16 T@U) (|p#0@@46| T@U) (|st#0@@42| T@U) ) (!  (=> (and (or (|M2.__default.Oracle#canCall| |p#0@@46| |st#0@@42|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |p#0@@46| Tclass.M2.Path) ($IsAllocBox |p#0@@46| Tclass.M2.Path $Heap@@16)) (and ($Is DatatypeTypeType |st#0@@42| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.M2.State $Heap@@16))))) ($IsGoodHeap $Heap@@16)) ($IsAllocBox (M2.__default.Oracle |p#0@@46| |st#0@@42|) Tclass.M2.Artifact $Heap@@16))
 :qid |CloudMakeParallelBuildsdfy.644:18|
 :skolemid |3819|
 :pattern ( ($IsAllocBox (M2.__default.Oracle |p#0@@46| |st#0@@42|) Tclass.M2.Artifact $Heap@@16))
))))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3070|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3071|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3072|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3073|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3081|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@7) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3079|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3080|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@7))
)))
(assert (forall ((m@@11 T@U) (u@@6 T@U) (|u'| T@U) (v@@8 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@8)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@8)) |u'|) v@@8))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@8)) |u'|) (|Set#IsMember| (|Map#Domain| m@@11) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@8)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@11) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |3087|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@8)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@8)) |u'|))
)))
(assert (forall ((d@@14 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@14)) (DtRank d@@14))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2881|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@14)))
)))
(assert (forall ((bx@@11 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@11 (TSet t@@11)))
)))
(assert (forall ((bx@@12 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2832|
 :pattern ( ($IsBox bx@@12 (TSeq t@@12)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|st#0@@43| T@U) (|st'#0@@2| T@U) ) (!  (=> (or (|M2.__default.Extends#canCall| |st#0@@43| |st'#0@@2|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@43| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@2| Tclass.M2.State)))) (and (and (and (|M2.__default.DomSt#canCall| |st#0@@43|) (|M2.__default.DomSt#canCall| |st'#0@@2|)) (=> (|Set#Subset| (M2.__default.DomSt |st#0@@43|) (M2.__default.DomSt |st'#0@@2|)) (and (forall ((|p#0@@47| T@U) ) (!  (=> ($IsBox |p#0@@47| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@43|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@47|) (and (|M2.__default.GetSt#canCall| |p#0@@47| |st'#0@@2|) (|M2.__default.GetSt#canCall| |p#0@@47| |st#0@@43|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4421|
 :pattern ( (M2.__default.GetSt |p#0@@47| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#0@@47| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@47|))
)) (=> (forall ((|p#0@@48| T@U) ) (!  (=> ($IsBox |p#0@@48| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@48|) (= (M2.__default.GetSt |p#0@@48| |st'#0@@2|) (M2.__default.GetSt |p#0@@48| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4423|
 :pattern ( (M2.__default.GetSt |p#0@@48| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#0@@48| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@48|))
)) (forall ((|p#1@@3| T@U) ) (!  (=> ($IsBox |p#1@@3| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@43|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#1@@3|)) (and (|M2.__default.DomSt#canCall| |st'#0@@2|) (=> (|Set#IsMember| (M2.__default.DomSt |st'#0@@2|) |p#1@@3|) (and (|M2.__default.GetSt#canCall| |p#1@@3| |st'#0@@2|) (|M2.__default.Oracle#canCall| |p#1@@3| |st#0@@43|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4422|
 :pattern ( (M2.__default.Oracle |p#1@@3| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#1@@3| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@2|) |p#1@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#1@@3|))
)))))) (= (M2.__default.Extends |st#0@@43| |st'#0@@2|)  (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@43|) (M2.__default.DomSt |st'#0@@2|)) (forall ((|p#0@@49| T@U) ) (!  (=> ($IsBox |p#0@@49| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@49|) (= (M2.__default.GetSt |p#0@@49| |st'#0@@2|) (M2.__default.GetSt |p#0@@49| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4419|
 :pattern ( (M2.__default.GetSt |p#0@@49| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#0@@49| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@49|))
))) (forall ((|p#1@@4| T@U) ) (!  (=> ($IsBox |p#1@@4| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#1@@4|)) (|Set#IsMember| (M2.__default.DomSt |st'#0@@2|) |p#1@@4|)) (= (M2.__default.GetSt |p#1@@4| |st'#0@@2|) (M2.__default.Oracle |p#1@@4| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4420|
 :pattern ( (M2.__default.Oracle |p#1@@4| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#1@@4| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@2|) |p#1@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#1@@4|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |4424|
 :pattern ( (M2.__default.Extends |st#0@@43| |st'#0@@2|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@50| T@U) (|st#0@@44| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| (Lit BoxType |p#0@@50|) (Lit DatatypeTypeType |st#0@@44|)) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@50| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@44| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| (Lit BoxType |p#0@@50|)) (=> (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@50|))))) (and (|M2.__default.GetCert#canCall| (Lit BoxType |p#0@@50|)) (|M2.__default.OracleWF#canCall| (Lit BoxType |p#0@@50|) (Lit DatatypeTypeType (M2.__default.GetCert (Lit BoxType |p#0@@50|))) (Lit DatatypeTypeType |st#0@@44|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@50|)))))) (|M2.__default.OracleArbitrary#canCall| (Lit BoxType |p#0@@50|)))) (= (M2.__default.Oracle (Lit BoxType |p#0@@50|) (Lit DatatypeTypeType |st#0@@44|)) (ite (M2.__default.WellFounded (Lit BoxType |p#0@@50|)) (M2.__default.OracleWF ($LS $LZ) (Lit BoxType |p#0@@50|) (Lit DatatypeTypeType (M2.__default.GetCert (Lit BoxType |p#0@@50|))) (Lit DatatypeTypeType |st#0@@44|)) (M2.__default.OracleArbitrary (Lit BoxType |p#0@@50|))))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |3823|
 :pattern ( (M2.__default.Oracle (Lit BoxType |p#0@@50|) (Lit DatatypeTypeType |st#0@@44|)))
))))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@6 t1@@3)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13) t1@@3) ($IsBox bx@@13 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2852|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2853|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) (d@@15 T@U) ) (!  (=> (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@15)) (< (DtRank d@@15) (DtRank (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4670|
 :pattern ( (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@15)) (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((d@@16 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@16 Tclass.M2.WFCertificate)) ($IsAlloc DatatypeTypeType d@@16 Tclass.M2.WFCertificate $h@@3))
 :qid |unknown.0:0|
 :skolemid |4671|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass.M2.WFCertificate $h@@3))
)))
(assert (= (Tag Tclass.M2.State) Tagclass.M2.State))
(assert (= (TagFamily Tclass.M2.State) tytagFamily$State))
(assert (= (Tag Tclass.M2.WFCertificate) Tagclass.M2.WFCertificate))
(assert (= (TagFamily Tclass.M2.WFCertificate) tytagFamily$WFCertificate))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@19 T@U) (|p#0@@51| T@U) (|cert#0@@16| T@U) (|st#0@@45| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@45|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@51| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@16| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@45| Tclass.M2.State)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|)))))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| (Lit BoxType |p#0@@51|)) (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@51|))) (|M2.__default.LocInv__Exp#canCall| (Lit BoxType |p#0@@51|))) (let ((|e#2@@1| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@51|))))
(let ((|deps#2| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@51|))))
(let ((|cmd#2| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@51|))))
 (and (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2| (Lit DatatypeTypeType |st#0@@45|)) (|M2.__default.RunTool#canCall| |cmd#2| (M2.__default.CollectDependencies ($LS $ly@@19) (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2| (Lit DatatypeTypeType |st#0@@45|)) |e#2@@1|)))))) (= (M2.__default.OracleWF ($LS $ly@@19) (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@45|)) (let ((|e#2@@2| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@51|))))
(let ((|deps#2@@0| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@51|))))
(let ((|cmd#2@@0| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@51|))))
(M2.__default.RunTool |cmd#2@@0| (M2.__default.CollectDependencies ($LS $ly@@19) (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@45|)) |e#2@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3850|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@19) (Lit BoxType |p#0@@51|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@45|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@15| T@U) (|deps#0@@21| T@U) (|exps#0@@10| T@U) (|st#0@@46| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@10|) (Lit DatatypeTypeType |st#0@@46|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@15| (TSeq TChar)) ($Is SetType |deps#0@@21| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@46| Tclass.M2.State)))) (and (forall ((|e#2@@3| T@U) ) (!  (=> ($Is SeqType |e#2@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@10|) ($Box SeqType |e#2@@3|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@46|))) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@46|))) (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@46|))) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@46|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4374|
 :pattern ( (M2.__default.Loc |cmd#0@@15| |deps#0@@21| |e#2@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#2@@3|)))
)) (= (M2.__default.Pre (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@10|) (Lit DatatypeTypeType |st#0@@46|)) (forall ((|e#2@@4| T@U) ) (!  (=> ($Is SeqType |e#2@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@10|) ($Box SeqType |e#2@@4|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@46|))) (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@4|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@46|)) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@46|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4373|
 :pattern ( (M2.__default.Loc |cmd#0@@15| |deps#0@@21| |e#2@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#2@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |4375|
 :pattern ( (M2.__default.Pre (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@10|) (Lit DatatypeTypeType |st#0@@46|)))
))))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (= (|Set#Equal| a@@19 b@@16) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@19 o@@5) (|Set#IsMember| b@@16 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2945|
 :pattern ( (|Set#IsMember| a@@19 o@@5))
 :pattern ( (|Set#IsMember| b@@16 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2946|
 :pattern ( (|Set#Equal| a@@19 b@@16))
)))
(assert (forall ((d@@17 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@17) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@17) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@17) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@18 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@18) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@18) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@18) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((d@@19 T@U) (M2.Tuple$A@@6 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M2.Tuple.Pair_q d@@19) (exists ((M2.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@19 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@6)
 :qid |unknown.0:0|
 :skolemid |4942|
 :pattern ( ($IsAlloc DatatypeTypeType d@@19 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@6))
)))) ($IsAllocBox (M2.Tuple.fst d@@19) M2.Tuple$A@@6 $h@@6))
 :qid |unknown.0:0|
 :skolemid |4943|
 :pattern ( ($IsAllocBox (M2.Tuple.fst d@@19) M2.Tuple$A@@6 $h@@6))
)))
(assert (forall ((d@@20 T@U) (M2.Tuple$B@@7 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (M2.Tuple.Pair_q d@@20) (exists ((M2.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@20 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@7)
 :qid |unknown.0:0|
 :skolemid |4944|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@7))
)))) ($IsAllocBox (M2.Tuple.snd d@@20) M2.Tuple$B@@7 $h@@7))
 :qid |unknown.0:0|
 :skolemid |4945|
 :pattern ( ($IsAllocBox (M2.Tuple.snd d@@20) M2.Tuple$B@@7 $h@@7))
)))
(assert (forall ((d@@21 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M2.WFCertificate.Cert_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.M2.WFCertificate $h@@8))) ($IsAllocBox (M2.WFCertificate.p d@@21) Tclass.M2.Path $h@@8))
 :qid |unknown.0:0|
 :skolemid |4665|
 :pattern ( ($IsAllocBox (M2.WFCertificate.p d@@21) Tclass.M2.Path $h@@8))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0@@0|) (Lit SetType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#M2.WFCertificate.Cert| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4667|
 :pattern ( (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0@@0|) (Lit SetType |a#3#1#0@@0|)))
)))
(assert (forall ((|a#158#0#0| T@U) (|a#158#1#0| T@U) ) (! (= (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)) (Lit DatatypeTypeType (|#M2.Tuple.Pair| |a#158#0#0| |a#158#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4946|
 :pattern ( (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)) (Lit DatatypeTypeType (|#M2.State.StateCons| |a#10#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4683|
 :pattern ( (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|a#12#0#0| T@U) (d@@22 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@22)) (< (DtRank d@@22) (DtRank (|#M2.State.StateCons| |a#12#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4685|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@22)) (|#M2.State.StateCons| |a#12#0#0|))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3019|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@16| T@U) (|deps#0@@22| T@U) (|exps#0@@11| T@U) (|st#0@@47| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@11|) |st#0@@47|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@16| (TSeq TChar)) ($Is SetType |deps#0@@22| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@11| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@47| Tclass.M2.State)))) (and (forall ((|e#1@@5| T@U) ) (!  (=> ($Is SeqType |e#1@@5| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@5|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|) (|M2.__default.DomSt#canCall| |st#0@@47|))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@5|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@47|) (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@5|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|) |st#0@@47|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@5|) |st#0@@47|)))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4403|
 :pattern ( (M2.__default.Loc |cmd#0@@16| |deps#0@@22| |e#1@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1@@5|)))
)) (= (M2.__default.Post (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@11|) |st#0@@47|) (forall ((|e#1@@6| T@U) ) (!  (=> ($Is SeqType |e#1@@6| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@6|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@47|) (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@6|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@6|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@6|) |st#0@@47|) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) |e#1@@6|) |st#0@@47|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4402|
 :pattern ( (M2.__default.Loc |cmd#0@@16| |deps#0@@22| |e#1@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |4404|
 :pattern ( (M2.__default.Post (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@22|) (Lit SetType |exps#0@@11|) |st#0@@47|))
))))
(assert (forall ((d@@23 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M2.WFCertificate.Cert_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.M2.WFCertificate $h@@9))) ($IsAlloc SetType (M2.WFCertificate.certs d@@23) (TSet Tclass.M2.WFCertificate) $h@@9))
 :qid |unknown.0:0|
 :skolemid |4666|
 :pattern ( ($IsAlloc SetType (M2.WFCertificate.certs d@@23) (TSet Tclass.M2.WFCertificate) $h@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@3 T@U) ($Heap@@17 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@17) ($Is SetType |s#0@@2| (TSet M2._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3526|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@17))
))))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2861|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@7)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@0) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2850|
 :pattern ( (|Seq#Index| v@@11 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2851|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@7)))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@12) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3074|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3075|
 :pattern ( (|Map#Items| m@@12))
)))
(assert (forall ((s@@3 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@3))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@1))) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3064|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@1))))
)))
(assert (forall ((v@@13 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2854|
 :pattern ( ($Is MapType v@@13 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is charType v@@14 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2840|
 :pattern ( ($Is charType v@@14 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#1_1@0| () T@U)
(declare-fun |$rhs#1_3@0| () T@U)
(declare-fun |st#0@@48| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |p#1_0@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |##cert#1_1_0_0_0_0@0| () T@U)
(declare-fun |##cmd#1_1_0_0_1_0@0| () T@U)
(declare-fun |##cert#1_1_0_0_1_0@0| () T@U)
(declare-fun |##deps#1_1_0_0_1_1@0| () T@U)
(declare-fun |##deps#1_1_0_0_1_0@0| () T@U)
(declare-fun |##exp#1_1_0_0_1_0@0| () T@U)
(declare-fun |##cert#1_1_0_0_1_1@0| () T@U)
(declare-fun |cmd#0@@17| () T@U)
(declare-fun |##cert#1_1_0_0_2_0@0| () T@U)
(declare-fun |deps#0@@23| () T@U)
(declare-fun |##deps#1_1_0_0_2_0@0| () T@U)
(declare-fun |exp#1_0@0| () T@U)
(declare-fun |##cmd#1_1_0_0_2_1@0| () T@U)
(declare-fun |##cert#1_1_0_0_2_1@0| () T@U)
(declare-fun |##deps#1_1_0_0_2_3@0| () T@U)
(declare-fun |##deps#1_1_0_0_2_2@0| () T@U)
(declare-fun |##exp#1_1_0_0_2_1@0| () T@U)
(declare-fun |##deps#1_1_0_0_3_0@0| () T@U)
(declare-fun |cert##1_1_0_0_3_0@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##cert#1_1_0_0_3_0@0| () T@U)
(declare-fun |##deps#1_1_0_0_3_1@0| () T@U)
(declare-fun |##deps#1_1_0_0_4_0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |##deps#1_1_0_0_4_1@0| () T@U)
(declare-fun |restrictedState#0@@4| () T@U)
(declare-fun |##deps#1_1_0_0_5_1@0| () T@U)
(declare-fun |a#1_0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |e#1_2_0@0| () T@U)
(declare-fun |##p#1_2_0@0| () T@U)
(declare-fun |##p#1_2_1@0| () T@U)
(declare-fun |p#1_2_0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |##deps#1_2_1_0_1_0@0| () T@U)
(declare-fun |##deps#1_2_1_0_2_1@0| () T@U)
(declare-fun |exps#0@@12| () T@U)
(declare-fun |$rhs#1_2@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |exps##1_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##exps#1_0@0| () T@U)
(declare-fun |rest#1_0@0| () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@18 () T@U)
(declare-fun |exp#1_0| () T@U)
(declare-fun |rest#1_0| () T@U)
(declare-fun |paths#1_0| () T@U)
(declare-fun |st'#1_0| () T@U)
(declare-fun |p#1_0| () T@U)
(declare-fun |a#1_0| () T@U)
(declare-fun |paths''#1_0| () T@U)
(declare-fun |st''#1_0| () T@U)
(declare-fun |p#1_2_0| () T@U)
(set-info :boogie-vc-id Impl$$M2.__default.ExecOneProperty)
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
 (=> (= (ControlFlow 0 0) 146) (let ((anon14_correct true))
(let ((anon60_Else_correct  (=> (and (not (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|)) (= (ControlFlow 0 130) 128)) anon14_correct)))
(let ((anon60_Then_correct  (=> (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (=> (and (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1)) (and (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (= (ControlFlow 0 129) 128))) anon14_correct))))
(let ((anon59_Then_correct  (=> ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|)) (and (=> (= (ControlFlow 0 131) 129) anon60_Then_correct) (=> (= (ControlFlow 0 131) 130) anon60_Else_correct))))))
(let ((anon69_Then_correct  (=> (and (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)) (and (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_0_0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_0_0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_0_0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3682|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_0_0|))
)))) (|M2.__default.GetCert#canCall| |p#1_0@0|))) (=> (and (and (and (and (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|)) (= |##cert#1_1_0_0_0_0@0| (M2.__default.GetCert |p#1_0@0|))) (and ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_0_0@0| Tclass.M2.WFCertificate $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6))) (and (and (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_0_0@0|) |p#1_0@0|))) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (forall ((|d#1_1_0_0_0_0| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_0_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_0_0|) (exists ((|c#1_1_0_0_0_0| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_0_0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_0_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_0_0|)) (= (M2.WFCertificate.p |c#1_1_0_0_0_0|) |d#1_1_0_0_0_0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3685|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_0_0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_0_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_0_0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3686|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_0_0|))
))))) (and (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_0_0@0|) (forall ((|c#1_1_0_0_0_1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_0_1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_0_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_0_1|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_0_1|) |c#1_1_0_0_0_1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3687|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_0_1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_0_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_0_1|)))
)))) (|M2.__default.OracleWF#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|)))) (and (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.OracleWF#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|)) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)) (and (|M2.__default.WellFounded#canCall| |p#1_0@0|) (|M2.__default.WellFounded#canCall| |p#1_0@0|)))) (and (=> (= (ControlFlow 0 123) (- 0 124)) (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_0_1| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_0_1| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_0_1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3692|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_0_1|))
))))) (=> (and (M2.__default.WellFounded |p#1_0@0|) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6) (|M2.__default.Oracle#canCall| |p#1_0@0| |$rhs#1_1@0|)) (and (|M2.__default.Oracle#canCall| |p#1_0@0| |$rhs#1_1@0|) (= (ControlFlow 0 123) (- 0 122)))) (= (M2.__default.OracleWF ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.Oracle |p#1_0@0| |$rhs#1_1@0|)))))))))
(let ((anon68_Then_correct  (=> (and (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) (|M2.__default.LocInv__Cmd#canCall| |p#1_0@0|)) (and (= |##cmd#1_1_0_0_1_0@0| (M2.__default.LocInv__Cmd |p#1_0@0|)) ($IsAlloc SeqType |##cmd#1_1_0_0_1_0@0| (TSeq TChar) $Heap@6))) (=> (and (and (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)) (and (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_1_0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_1_0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_1_0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3695|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_1_0|))
)))) (|M2.__default.GetCert#canCall| |p#1_0@0|))) (and (and (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|)) (= |##cert#1_1_0_0_1_0@0| (M2.__default.GetCert |p#1_0@0|))) (and ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_1_0@0| Tclass.M2.WFCertificate $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)))) (=> (and (and (and (and (and (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|) (= |##deps#1_1_0_0_1_1@0| (M2.__default.LocInv__Deps |p#1_0@0|))) (and ($IsAlloc SetType |##deps#1_1_0_0_1_1@0| (TSet Tclass.M2.Path) $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6))) (and (and (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_1_0@0|) |p#1_0@0|))) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (forall ((|d#1_1_0_0_1_0| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_1_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_1_0|) (exists ((|c#1_1_0_0_1_0| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_1_0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_0|)) (= (M2.WFCertificate.p |c#1_1_0_0_1_0|) |d#1_1_0_0_1_0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3698|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_1_0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3699|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_1_0|))
))))) (and (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_0@0|) (forall ((|c#1_1_0_0_1_1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_1_1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_1|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_1_1|) |c#1_1_0_0_1_1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3700|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_1_1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_1|)))
)))) (|Set#Equal| |##deps#1_1_0_0_1_1@0| (M2.__default.LocInv__Deps |p#1_0@0|))))) (and (and (and (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (= |##deps#1_1_0_0_1_0@0| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|))) (and ($IsAlloc MapType |##deps#1_1_0_0_1_0@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6))) (and (and (|M2.__default.LocInv__Exp#canCall| |p#1_0@0|) (= |##exp#1_1_0_0_1_0@0| (M2.__default.LocInv__Exp |p#1_0@0|))) (and ($IsAlloc SeqType |##exp#1_1_0_0_1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|)))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#1_0@0|) (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|)) (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|))) (|M2.__default.LocInv__Exp#canCall| |p#1_0@0|)) (|M2.__default.RunTool#canCall| (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|))) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)))) (and (=> (= (ControlFlow 0 117) (- 0 121)) (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_1_1| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_1_1| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_1_1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3705|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_1_1|))
))))) (=> (|M2.__default.GetCert#canCall| |p#1_0@0|) (=> (and (and (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|)) (= |##cert#1_1_0_0_1_1@0| (M2.__default.GetCert |p#1_0@0|))) (and ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_1_1@0| Tclass.M2.WFCertificate $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6))) (and (=> (= (ControlFlow 0 117) (- 0 120)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_1_1@0|) |p#1_0@0|)))) (and (=> (= (ControlFlow 0 117) (- 0 119)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (forall ((|d#1_1_0_0_1_1| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_1_1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_1_1|) (exists ((|c#1_1_0_0_1_2| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_1_2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_2|)) (= (M2.WFCertificate.p |c#1_1_0_0_1_2|) |d#1_1_0_0_1_1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3708|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_1_2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3709|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_1_1|))
))))) (and (=> (= (ControlFlow 0 117) (- 0 118)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_1_1@0|) (forall ((|c#1_1_0_0_1_3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_1_3| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_3|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_1_3|) |c#1_1_0_0_1_3|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3710|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_1_3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_1_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_1_3|)))
))))) (=> (|M2.__default.OracleWF#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|) (=> (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.OracleWF#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|)) (= (ControlFlow 0 117) (- 0 116))) (= (M2.__default.RunTool (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|)) (M2.__default.OracleWF ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |$rhs#1_1@0|)))))))))))))))
(let ((anon67_Then_correct  (=> ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) (=> (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6)) (=> (and (and (and (and (and (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_2_0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_2_0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_2_0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3715|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_2_0|))
)))) (|M2.__default.GetCert#canCall| |p#1_0@0|)) (and (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|)) (= |##cert#1_1_0_0_2_0@0| (M2.__default.GetCert |p#1_0@0|)))) (and (and ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_2_0@0| Tclass.M2.WFCertificate $Heap@6) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@6)) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_2_0@0|) |p#1_0@0|)))))) (and (and (and (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (forall ((|d#1_1_0_0_2_0| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_2_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_2_0|) (exists ((|c#1_1_0_0_2_0| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_2_0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_0|)) (= (M2.WFCertificate.p |c#1_1_0_0_2_0|) |d#1_1_0_0_2_0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3718|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_2_0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3719|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_2_0|))
)))) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_0@0|) (forall ((|c#1_1_0_0_2_1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_2_1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_1|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_2_1|) |c#1_1_0_0_2_1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3720|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_2_1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_1|)))
))))) (and (|Set#Equal| |deps#0@@23| (M2.__default.LocInv__Deps |p#1_0@0|)) (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|))) (and (and (= |##deps#1_1_0_0_2_0@0| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|)) ($IsAlloc MapType |##deps#1_1_0_0_2_0@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|))))) (and (and (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|)) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|)) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) (|M2.__default.LocInv__Cmd#canCall| |p#1_0@0|))) (and (and (= |##cmd#1_1_0_0_2_1@0| (M2.__default.LocInv__Cmd |p#1_0@0|)) ($IsAlloc SeqType |##cmd#1_1_0_0_2_1@0| (TSeq TChar) $Heap@6)) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6))))) (and (=> (= (ControlFlow 0 110) (- 0 115)) (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_2_1| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_2_1| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_2_1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3725|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_2_1|))
))))) (=> (|M2.__default.GetCert#canCall| |p#1_0@0|) (=> (and (and (and (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|)) (= |##cert#1_1_0_0_2_1@0| (M2.__default.GetCert |p#1_0@0|))) (and ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_2_1@0| Tclass.M2.WFCertificate $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6))) (and (and (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|) (= |##deps#1_1_0_0_2_3@0| (M2.__default.LocInv__Deps |p#1_0@0|))) (and ($IsAlloc SetType |##deps#1_1_0_0_2_3@0| (TSet Tclass.M2.Path) $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6)))) (and (=> (= (ControlFlow 0 110) (- 0 114)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_2_1@0|) |p#1_0@0|)))) (and (=> (= (ControlFlow 0 110) (- 0 113)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (forall ((|d#1_1_0_0_2_1| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_2_1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_2_1|) (exists ((|c#1_1_0_0_2_2| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_2_2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_2|)) (= (M2.WFCertificate.p |c#1_1_0_0_2_2|) |d#1_1_0_0_2_1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3728|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_2_2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3729|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_2_1|))
))))) (and (=> (= (ControlFlow 0 110) (- 0 112)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_2_1@0|) (forall ((|c#1_1_0_0_2_3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_2_3| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_3|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_2_3|) |c#1_1_0_0_2_3|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3730|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_2_3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_2_1@0|) ($Box DatatypeTypeType |c#1_1_0_0_2_3|)))
))))) (and (=> (= (ControlFlow 0 110) (- 0 111)) (|Set#Equal| |##deps#1_1_0_0_2_3@0| (M2.__default.LocInv__Deps |p#1_0@0|))) (=> (and (and (and (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (= |##deps#1_1_0_0_2_2@0| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|))) (and ($IsAlloc MapType |##deps#1_1_0_0_2_2@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6))) (and (and (|M2.__default.LocInv__Exp#canCall| |p#1_0@0|) (= |##exp#1_1_0_0_2_1@0| (M2.__default.LocInv__Exp |p#1_0@0|))) (and ($IsAlloc SeqType |##exp#1_1_0_0_2_1@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|))))) (=> (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#1_0@0|) (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|)) (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|))) (|M2.__default.LocInv__Exp#canCall| |p#1_0@0|)) (|M2.__default.RunTool#canCall| (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|))) (= (ControlFlow 0 110) (- 0 109))) (= (M2.__default.RunTool |cmd#0@@17| (M2.__default.CollectDependencies ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|) (M2.__default.RunTool (M2.__default.LocInv__Cmd |p#1_0@0|) (M2.__default.CollectDependencies ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) (M2.__default.LocInv__Deps |p#1_0@0|) |$rhs#1_1@0|) (M2.__default.LocInv__Exp |p#1_0@0|)))))))))))))))))
(let ((anon66_Then_correct  (=> (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@6)) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6) (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|))) (=> (and (and (and (= |##deps#1_1_0_0_3_0@0| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|)) ($IsAlloc MapType |##deps#1_1_0_0_3_0@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|))) (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|)) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@6))) (and (=> (= (ControlFlow 0 96) (- 0 108)) (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_3_0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_3_0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_3_0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3735|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_3_0|))
))))) (=> (M2.__default.WellFounded |p#1_0@0|) (=> (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|))) (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (= |cert##1_1_0_0_3_0@0| (M2.__default.GetCert |p#1_0@0|)))) (and (=> (= (ControlFlow 0 96) (- 0 107)) (=> (|M2.__default.ValidState#canCall| |$rhs#1_1@0|) (or (M2.__default.ValidState |$rhs#1_1@0|) (forall ((|p#1@@5| T@U) ) (!  (=> ($IsBox |p#1@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@5|) (M2.__default.WellFounded |p#1@@5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4003|
 :pattern ( (M2.__default.WellFounded |p#1@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@5|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |$rhs#1_1@0|) (or (M2.__default.ValidState |$rhs#1_1@0|) (forall ((|p#1@@6| T@U) ) (!  (=> ($IsBox |p#1@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@6|) (M2.__default.WellFounded |p#1@@6|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4003|
 :pattern ( (M2.__default.WellFounded |p#1@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@6|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 106)) (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |$rhs#1_1@0|))) (=> (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |$rhs#1_1@0|)) (and (=> (= (ControlFlow 0 96) (- 0 105)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (= (M2.WFCertificate.p |cert##1_1_0_0_3_0@0|) |p#1_0@0|)))) (=> (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (= (M2.WFCertificate.p |cert##1_1_0_0_3_0@0|) |p#1_0@0|))) (and (=> (= (ControlFlow 0 96) (- 0 104)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|d#1@@2| T@U) ) (!  (=> ($IsBox |d#1@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@2|) (exists ((|c#2@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@3|)) (= (M2.WFCertificate.p |c#2@@3|) |d#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |4005|
 :pattern ( (M2.WFCertificate.p |c#2@@3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |4006|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@2|))
))))) (=> (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|d#1@@3| T@U) ) (!  (=> ($IsBox |d#1@@3| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@3|) (exists ((|c#2@@4| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@4| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@4|)) (= (M2.WFCertificate.p |c#2@@4|) |d#1@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |4005|
 :pattern ( (M2.WFCertificate.p |c#2@@4|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#2@@4|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |4006|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@3|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 103)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|c#3@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@2| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@2|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#3@@2|) |c#3@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |4007|
 :pattern ( (M2.WFCertificate.p |c#3@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@2|)))
))))) (=> (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert##1_1_0_0_3_0@0|) (forall ((|c#3@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@3| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@3|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#3@@3|) |c#3@@3|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |4007|
 :pattern ( (M2.WFCertificate.p |c#3@@3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert##1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#3@@3|)))
)))) (and (=> (= (ControlFlow 0 96) (- 0 102)) (|Set#Equal| |deps#0@@23| (M2.__default.LocInv__Deps |p#1_0@0|))) (=> (|Set#Equal| |deps#0@@23| (M2.__default.LocInv__Deps |p#1_0@0|)) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (and (|M2.__default.CollectDependencies#canCall| |p#1_0@0| |cert##1_1_0_0_3_0@0| |deps#0@@23| |$rhs#1_1@0|) (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|)) (|Map#Equal| (M2.__default.CollectDependencies ($LS ($LS $LZ)) |p#1_0@0| |cert##1_1_0_0_3_0@0| |deps#0@@23| |$rhs#1_1@0|) (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|))) (and (and (= $Heap@6 $Heap@8) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@8)) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@8) ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@8)))) (and (=> (= (ControlFlow 0 96) (- 0 101)) (=> (|M2.__default.WellFounded#canCall| |p#1_0@0|) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_1_0_0_3_1| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_1_0_0_3_1| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_3_1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3739|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_1_0_0_3_1|))
))))) (=> (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (M2.WFCertificate.Cert_q (M2.__default.GetCert |p#1_0@0|))) (=> (and (and (= |##cert#1_1_0_0_3_0@0| (M2.__default.GetCert |p#1_0@0|)) ($IsAlloc DatatypeTypeType |##cert#1_1_0_0_3_0@0| Tclass.M2.WFCertificate $Heap@8)) (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@8) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@8))) (and (=> (= (ControlFlow 0 96) (- 0 100)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (= (M2.WFCertificate.p |##cert#1_1_0_0_3_0@0|) |p#1_0@0|)))) (and (=> (= (ControlFlow 0 96) (- 0 99)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (forall ((|d#1_1_0_0_3_0| T@U) ) (!  (=> ($IsBox |d#1_1_0_0_3_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_3_0|) (exists ((|c#1_1_0_0_3_0| T@U) ) (!  (and ($Is DatatypeTypeType |c#1_1_0_0_3_0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_3_0|)) (= (M2.WFCertificate.p |c#1_1_0_0_3_0|) |d#1_1_0_0_3_0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3742|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_3_0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_3_0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3743|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1_1_0_0_3_0|))
))))) (and (=> (= (ControlFlow 0 96) (- 0 98)) (=> (|M2.__default.CheckWellFounded#canCall| |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |##cert#1_1_0_0_3_0@0|) (forall ((|c#1_1_0_0_3_1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1_1_0_0_3_1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_3_1|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1_1_0_0_3_1|) |c#1_1_0_0_3_1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3744|
 :pattern ( (M2.WFCertificate.p |c#1_1_0_0_3_1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |##cert#1_1_0_0_3_0@0|) ($Box DatatypeTypeType |c#1_1_0_0_3_1|)))
))))) (and (=> (= (ControlFlow 0 96) (- 0 97)) (|Set#Equal| |deps#0@@23| (M2.__default.LocInv__Deps |p#1_0@0|))) (=> (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) (=> (and (and (= |##deps#1_1_0_0_3_1@0| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|)) ($IsAlloc MapType |##deps#1_1_0_0_3_1@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@8)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@8) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|))) (=> (and (and (and (|M2.__default.GetCert#canCall| |p#1_0@0|) (|M2.__default.CollectDependencies#canCall| |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|)) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.CollectDependencies ($LS $LZ) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|)) (= (ControlFlow 0 96) (- 0 95))) (= (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|) (M2.__default.RunTool |cmd#0@@17| (M2.__default.CollectDependencies ($LS ($LS $LZ)) |p#1_0@0| (M2.__default.GetCert |p#1_0@0|) |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|)))))))))))))))))))))))))))))))))
(let ((anon65_Then_correct  (=> (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@6)) (=> (and (and (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@6) (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|)) (and (= |##deps#1_1_0_0_4_0@0| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) ($IsAlloc MapType |##deps#1_1_0_0_4_0@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6))) (and (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)) (and (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)))) (and (=> (= (ControlFlow 0 90) (- 0 94)) (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |st#0@@48|))) (=> (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |st#0@@48|)) (and (=> (= (ControlFlow 0 90) (- 0 93)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_1@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 90) (- 0 92)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#0@@52| T@U) ) (!  (=> ($IsBox |p#0@@52| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@52|) (= (M2.__default.GetSt |p#0@@52| |$rhs#1_1@0|) (M2.__default.GetSt |p#0@@52| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3513|
 :pattern ( (M2.__default.GetSt |p#0@@52| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#0@@52| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@52|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#0@@53| T@U) ) (!  (=> ($IsBox |p#0@@53| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@53|) (= (M2.__default.GetSt |p#0@@53| |$rhs#1_1@0|) (M2.__default.GetSt |p#0@@53| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3513|
 :pattern ( (M2.__default.GetSt |p#0@@53| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#0@@53| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@53|))
)))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#1@@7| T@U) ) (!  (=> ($IsBox |p#1@@7| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@7|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@7|)) (= (M2.__default.GetSt |p#1@@7| |$rhs#1_1@0|) (M2.__default.Oracle |p#1@@7| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3514|
 :pattern ( (M2.__default.Oracle |p#1@@7| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@7| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@7|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#1@@8| T@U) ) (!  (=> ($IsBox |p#1@@8| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@8|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@8|)) (= (M2.__default.GetSt |p#1@@8| |$rhs#1_1@0|) (M2.__default.Oracle |p#1@@8| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3514|
 :pattern ( (M2.__default.Oracle |p#1@@8| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@8| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@8|))
)))) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|) (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|)) (and (|Map#Equal| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|)) (= $Heap@6 $Heap@7))) (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@7) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@7)) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@7) (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|)))) (and (and (and (= |##deps#1_1_0_0_4_1@0| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|)) ($IsAlloc MapType |##deps#1_1_0_0_4_1@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@7)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@7) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|))) (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |$rhs#1_1@0|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|)) (= (ControlFlow 0 90) (- 0 89))))) (= (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|) (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |$rhs#1_1@0|) |exp#1_0@0|))))))))))))))))
(let ((anon64_Then_correct  (=> ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) (=> (and (and (and (and ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6)) (and (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|))) (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@6)) (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@6) (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|)))) (and (and (and (= |##deps#1_1_0_0_5_1@0| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) ($IsAlloc MapType |##deps#1_1_0_0_5_1@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|))) (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)) (= (ControlFlow 0 88) (- 0 87))))) (= (M2.__default.RunTool |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|))))))
(let ((anon63_Then_correct  (=> (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@6) ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@6)) (=> (and (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@6) (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|)) (and (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (= (ControlFlow 0 86) (- 0 85)))) (= |a#1_0@0| (M2.__default.RunTool |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|))))))
(let ((anon62_Then_correct true))
(let ((anon27_correct  (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@6)) (and (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|))) (and (=> (= (ControlFlow 0 68) (- 0 82)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|))))) (and (=> (= (ControlFlow 0 68) (- 0 81)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_0| T@U) ) (!  (=> ($IsBox |p#1_1_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_0|) (= (M2.__default.GetSt |p#1_1_0| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_1_0| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3750|
 :pattern ( (M2.__default.GetSt |p#1_1_0| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_0| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_0|))
))))) (and (=> (= (ControlFlow 0 68) (- 0 80)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_1| T@U) ) (!  (=> ($IsBox |p#1_1_1| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_1|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_1|)) (= (M2.__default.GetSt |p#1_1_1| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_1_1| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3751|
 :pattern ( (M2.__default.Oracle |p#1_1_1| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_1| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_1|))
))))) (=> (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (and (=> (= (ControlFlow 0 68) (- 0 79)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_1@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 68) (- 0 78)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#0@@54| T@U) ) (!  (=> ($IsBox |p#0@@54| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@54|) (= (M2.__default.GetSt |p#0@@54| |$rhs#1_1@0|) (M2.__default.GetSt |p#0@@54| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@54| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#0@@54| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@54|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#0@@55| T@U) ) (!  (=> ($IsBox |p#0@@55| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@55|) (= (M2.__default.GetSt |p#0@@55| |$rhs#1_1@0|) (M2.__default.GetSt |p#0@@55| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@55| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#0@@55| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@55|))
)))) (and (=> (= (ControlFlow 0 68) (- 0 77)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#1@@9| T@U) ) (!  (=> ($IsBox |p#1@@9| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@9|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@9|)) (= (M2.__default.GetSt |p#1@@9| |$rhs#1_1@0|) (M2.__default.Oracle |p#1@@9| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@9| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@9| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@9|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@9|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_1@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_1@0|) (forall ((|p#1@@10| T@U) ) (!  (=> ($IsBox |p#1@@10| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@10|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@10|)) (= (M2.__default.GetSt |p#1@@10| |$rhs#1_1@0|) (M2.__default.Oracle |p#1@@10| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@10| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@10| |$rhs#1_1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@10|))
)))) (and (=> (= (ControlFlow 0 68) (- 0 76)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 68) (- 0 75)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#2@@2| T@U) ) (!  (=> ($IsBox |p#2@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#2@@2|) (= (M2.__default.GetSt |p#2@@2| |$rhs#1_3@0|) (M2.__default.GetSt |p#2@@2| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@2| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#2@@2| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#2@@2|))
))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#2@@3| T@U) ) (!  (=> ($IsBox |p#2@@3| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#2@@3|) (= (M2.__default.GetSt |p#2@@3| |$rhs#1_3@0|) (M2.__default.GetSt |p#2@@3| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@3| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#2@@3| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#2@@3|))
)))) (and (=> (= (ControlFlow 0 68) (- 0 74)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#3@@1| T@U) ) (!  (=> ($IsBox |p#3@@1| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#3@@1|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#3@@1|)) (= (M2.__default.GetSt |p#3@@1| |$rhs#1_3@0|) (M2.__default.Oracle |p#3@@1| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@1| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#3@@1| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#3@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#3@@1|))
))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#3@@2| T@U) ) (!  (=> ($IsBox |p#3@@2| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#3@@2|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#3@@2|)) (= (M2.__default.GetSt |p#3@@2| |$rhs#1_3@0|) (M2.__default.Oracle |p#3@@2| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@2| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#3@@2| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#3@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#3@@2|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|)) (and (and (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (and (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|)) (forall ((|p#4| T@U) ) (!  (=> ($IsBox |p#4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#4|) (= (M2.__default.GetSt |p#4| |$rhs#1_3@0|) (M2.__default.GetSt |p#4| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#4| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#4|))
))) (forall ((|p#5| T@U) ) (!  (=> ($IsBox |p#5| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#5|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#5|)) (= (M2.__default.GetSt |p#5| |$rhs#1_3@0|) (M2.__default.Oracle |p#5| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#5| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#5|))
))))) (= $Heap@6 $Heap@9))) (and (=> (= (ControlFlow 0 68) (- 0 73)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 68) (- 0 72)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_2| T@U) ) (!  (=> ($IsBox |p#1_1_2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_2|) (= (M2.__default.GetSt |p#1_1_2| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_1_2| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3755|
 :pattern ( (M2.__default.GetSt |p#1_1_2| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_2| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_2|))
))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_2@@0| T@U) ) (!  (=> ($IsBox |p#1_1_2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_2@@0|) (= (M2.__default.GetSt |p#1_1_2@@0| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_1_2@@0| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3755|
 :pattern ( (M2.__default.GetSt |p#1_1_2@@0| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_2@@0| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_2@@0|))
)))) (and (=> (= (ControlFlow 0 68) (- 0 71)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_3| T@U) ) (!  (=> ($IsBox |p#1_1_3| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_3|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_3|)) (= (M2.__default.GetSt |p#1_1_3| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_1_3| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3756|
 :pattern ( (M2.__default.Oracle |p#1_1_3| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_3| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_3|))
))))) (=> (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_1_3@@0| T@U) ) (!  (=> ($IsBox |p#1_1_3@@0| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_3@@0|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_3@@0|)) (= (M2.__default.GetSt |p#1_1_3@@0| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_1_3@@0| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3756|
 :pattern ( (M2.__default.Oracle |p#1_1_3@@0| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_1_3@@0| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_3@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_1_3@@0|))
)))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1_1_4| T@U) ) (!  (=> ($IsBox |p#1_1_4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_4|) (= (M2.__default.GetSt |p#1_1_4| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_1_4| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3759|
 :pattern ( (M2.__default.GetSt |p#1_1_4| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1_1_4| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_4|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1_1_4@@0| T@U) ) (!  (=> ($IsBox |p#1_1_4@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_4@@0|) (= (M2.__default.GetSt |p#1_1_4@@0| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_1_4@@0| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3759|
 :pattern ( (M2.__default.GetSt |p#1_1_4@@0| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1_1_4@@0| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_4@@0|))
)))) (=> (= (ControlFlow 0 68) (- 0 67)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1_1_5| T@U) ) (!  (=> ($IsBox |p#1_1_5| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_5|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_5|)) (= (M2.__default.GetSt |p#1_1_5| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_1_5| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3760|
 :pattern ( (M2.__default.Oracle |p#1_1_5| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1_1_5| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_1_5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1_1_5|))
)))))))))))))))))))))))))))))))))))
(let ((anon69_Else_correct  (=> (and (= |a#1_0@0| (M2.__default.Oracle |p#1_0@0| |$rhs#1_1@0|)) (= (ControlFlow 0 125) 68)) anon27_correct)))
(let ((anon61_Then_correct  (=> (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|)) (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 126) 84) anon62_Then_correct) (=> (= (ControlFlow 0 126) 86) anon63_Then_correct)) (=> (= (ControlFlow 0 126) 88) anon64_Then_correct)) (=> (= (ControlFlow 0 126) 90) anon65_Then_correct)) (=> (= (ControlFlow 0 126) 96) anon66_Then_correct)) (=> (= (ControlFlow 0 126) 110) anon67_Then_correct)) (=> (= (ControlFlow 0 126) 117) anon68_Then_correct)) (=> (= (ControlFlow 0 126) 123) anon69_Then_correct)) (=> (= (ControlFlow 0 126) 125) anon69_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|) (= (ControlFlow 0 83) 68)) anon27_correct)))
(let ((anon59_Else_correct  (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Cmd#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|))) (|Seq#Equal| (M2.__default.LocInv__Cmd (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |cmd#0@@17|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Deps#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|))) (|Set#Equal| (M2.__default.LocInv__Deps (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |deps#0@@23|))) (and (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Exp#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|))) (|Seq#Equal| (M2.__default.LocInv__Exp (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |exp#1_0@0|)) (and (and (= $Heap@1 $Heap@6) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@6)) (and (|M2.__default.DomSt#canCall| |$rhs#1_1@0|) (|M2.__default.DomSt#canCall| |$rhs#1_1@0|))))) (and (=> (= (ControlFlow 0 127) 126) anon61_Then_correct) (=> (= (ControlFlow 0 127) 83) anon61_Else_correct))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 132) 131) anon59_Then_correct) (=> (= (ControlFlow 0 132) 127) anon59_Else_correct))))
(let ((anon33_correct true))
(let ((anon72_Else_correct  (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|))) (= (ControlFlow 0 62) 59)) anon33_correct)))
(let ((anon72_Then_correct  (=> (and (and (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|)) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1)) (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1) ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1))) (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) (= |##p#1_2_0@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|))) (and ($IsAllocBox |##p#1_2_0@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |##p#1_2_0@0|)) (=> (and (|M2.__default.GetSt#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) |$rhs#1_3@0|) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1)) (=> (and (and (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1) ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1)) (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) (= |##p#1_2_1@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|)))) (and (and ($IsAllocBox |##p#1_2_1@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1)) (and (|M2.__default.Oracle#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) |$rhs#1_3@0|) (= (ControlFlow 0 60) 59)))) anon33_correct))))))
(let ((anon71_Then_correct  (=> (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1)) (=> (and (and ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1) (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|)) (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (|M2.__default.DomSt#canCall| |$rhs#1_3@0|))) (and (=> (= (ControlFlow 0 63) 60) anon72_Then_correct) (=> (= (ControlFlow 0 63) 62) anon72_Else_correct))))))
(let ((anon39_correct  (=> (and (|M2.__default.DomSt#canCall| |$rhs#1_1@0|) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|) (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|))) (and (=> (= (ControlFlow 0 47) (- 0 52)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|)) (and (=> (= (ControlFlow 0 47) (- 0 51)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |$rhs#1_1@0|) (M2.__default.DomSt |$rhs#1_3@0|))))) (and (=> (= (ControlFlow 0 47) (- 0 50)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_2_0_0_2_0| T@U) ) (!  (=> ($IsBox |p#1_2_0_0_2_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0_0_2_0|) (= (M2.__default.GetSt |p#1_2_0_0_2_0| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_2_0_0_2_0| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3767|
 :pattern ( (M2.__default.GetSt |p#1_2_0_0_2_0| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_2_0_0_2_0| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0_0_2_0|))
))))) (and (=> (= (ControlFlow 0 47) (- 0 49)) (=> (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (or (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (forall ((|p#1_2_0_0_2_1| T@U) ) (!  (=> ($IsBox |p#1_2_0_0_2_1| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0_0_2_1|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0_0_2_1|)) (= (M2.__default.GetSt |p#1_2_0_0_2_1| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_2_0_0_2_1| |$rhs#1_1@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3768|
 :pattern ( (M2.__default.Oracle |p#1_2_0_0_2_1| |$rhs#1_1@0|))
 :pattern ( (M2.__default.GetSt |p#1_2_0_0_2_1| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0_0_2_1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0_0_2_1|))
))))) (=> (and (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|) (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|)) (and ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|)) (=> (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_1@0|) (=> (and (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_1@0|) (= (ControlFlow 0 47) (- 0 46))) (= (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_1@0|)))))))))))))
(let ((anon76_Else_correct  (=> (and (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|)) (= (ControlFlow 0 54) 47)) anon39_correct)))
(let ((anon76_Then_correct  (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1)) (and (|M2.__default.Extends#canCall| |$rhs#1_1@0| |$rhs#1_3@0|) (= (ControlFlow 0 53) 47))) anon39_correct))))
(let ((anon75_Then_correct  (=> ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|)) (=> (and (and (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|) (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1) (|M2.__default.DomSt#canCall| |$rhs#1_1@0|))) (and (=> (= (ControlFlow 0 55) 53) anon76_Then_correct) (=> (= (ControlFlow 0 55) 54) anon76_Else_correct)))))))
(let ((anon78_Then_correct  (=> (and (and ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|))) (and (=> (= (ControlFlow 0 41) (- 0 44)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 41) (- 0 43)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1@@11| T@U) ) (!  (=> ($IsBox |p#1@@11| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@11|) (= (M2.__default.GetSt |p#1@@11| |$rhs#1_3@0|) (M2.__default.GetSt |p#1@@11| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4048|
 :pattern ( (M2.__default.GetSt |p#1@@11| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@11| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@11|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1@@12| T@U) ) (!  (=> ($IsBox |p#1@@12| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@12|) (= (M2.__default.GetSt |p#1@@12| |$rhs#1_3@0|) (M2.__default.GetSt |p#1@@12| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4048|
 :pattern ( (M2.__default.GetSt |p#1@@12| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@12| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@12|))
)))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#2@@4| T@U) ) (!  (=> ($IsBox |p#2@@4| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@4|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@4|)) (= (M2.__default.GetSt |p#2@@4| |$rhs#1_3@0|) (M2.__default.Oracle |p#2@@4| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4049|
 :pattern ( (M2.__default.Oracle |p#2@@4| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#2@@4| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@4|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#2@@5| T@U) ) (!  (=> ($IsBox |p#2@@5| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@5|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@5|)) (= (M2.__default.GetSt |p#2@@5| |$rhs#1_3@0|) (M2.__default.Oracle |p#2@@5| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4049|
 :pattern ( (M2.__default.Oracle |p#2@@5| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#2@@5| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@5|))
)))) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (and (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (= (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|))) (and (= $Heap@1 $Heap@5) ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@5))) (and (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@5) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|) (= (ControlFlow 0 41) (- 0 40))))) (= (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)))))))))))))
(let ((anon77_Then_correct  (=> (and ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1)) (=> (and (and (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|) (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_1@0|)) (and (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_1@0|) ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1))) (and (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (= (ControlFlow 0 39) (- 0 38))))) (= (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_1@0|) (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|))))))
(let ((anon74_Then_correct  (=> ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (= (ControlFlow 0 37) (- 0 36))) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|)))))
(let ((anon50_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|))) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|)) (=> (= (ControlFlow 0 32) (- 0 31)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) |$rhs#1_3@0|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) |$rhs#1_3@0|)))))))
(let ((anon78_Else_correct  (=> (and (= (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)) (= (ControlFlow 0 45) 32)) anon50_correct)))
(let ((anon73_Then_correct  (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|) (and (and (and (and (=> (= (ControlFlow 0 56) 37) anon74_Then_correct) (=> (= (ControlFlow 0 56) 55) anon75_Then_correct)) (=> (= (ControlFlow 0 56) 39) anon77_Then_correct)) (=> (= (ControlFlow 0 56) 41) anon78_Then_correct)) (=> (= (ControlFlow 0 56) 45) anon78_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (= (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)) (= (ControlFlow 0 34) 32)) anon50_correct)))
(let ((anon83_Then_correct  (=> (and (and ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1@@13| T@U) ) (!  (=> ($IsBox |p#1@@13| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@13|) (= (M2.__default.GetSt |p#1@@13| |$rhs#1_3@0|) (M2.__default.GetSt |p#1@@13| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4048|
 :pattern ( (M2.__default.GetSt |p#1@@13| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@13| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@13|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#1@@14| T@U) ) (!  (=> ($IsBox |p#1@@14| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@14|) (= (M2.__default.GetSt |p#1@@14| |$rhs#1_3@0|) (M2.__default.GetSt |p#1@@14| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4048|
 :pattern ( (M2.__default.GetSt |p#1@@14| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#1@@14| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#1@@14|))
)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#2@@6| T@U) ) (!  (=> ($IsBox |p#2@@6| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@6|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@6|)) (= (M2.__default.GetSt |p#2@@6| |$rhs#1_3@0|) (M2.__default.Oracle |p#2@@6| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4049|
 :pattern ( (M2.__default.Oracle |p#2@@6| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#2@@6| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@6|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@48| |$rhs#1_3@0|) (or (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|) (forall ((|p#2@@7| T@U) ) (!  (=> ($IsBox |p#2@@7| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@7|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@7|)) (= (M2.__default.GetSt |p#2@@7| |$rhs#1_3@0|) (M2.__default.Oracle |p#2@@7| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4049|
 :pattern ( (M2.__default.Oracle |p#2@@7| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#2@@7| |$rhs#1_3@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#2@@7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@7|))
)))) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (= (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|))) (and (= $Heap@1 $Heap@4) ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@4))) (and (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@4) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |$rhs#1_3@0|) (= (ControlFlow 0 27) (- 0 26))))) (= (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|) (M2.__default.Oracle |p#1_2_0@0| |$rhs#1_3@0|)))))))))))))
(let ((anon82_Then_correct  (=> (and (and (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1)) (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|))) (and (and (= |##deps#1_2_1_0_1_0@0| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) ($IsAlloc MapType |##deps#1_2_1_0_1_0@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@1)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@1) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)))) (and (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)) ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1)) (and (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|)) (and (|M2.__default.Oracle#canCall| |p#1_2_0@0| |st#0@@48|) (= (ControlFlow 0 25) (- 0 24)))))) (= (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|) (M2.__default.Oracle |p#1_2_0@0| |st#0@@48|)))))
(let ((anon81_Then_correct  (=> ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) (=> (and (and (and (and ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@1) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@1)) (and (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|))) (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1)) (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|)))) (and (and (and (= |##deps#1_2_1_0_2_1@0| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) ($IsAlloc MapType |##deps#1_2_1_0_2_1@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@1)) (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@1) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|))) (and (and (|M2.__default.Restrict#canCall| |deps#0@@23| |st#0@@48|) (|M2.__default.RunTool#canCall| |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|)) (= (ControlFlow 0 23) (- 0 22))))) (= (M2.__default.RunTool |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (M2.__default.RunTool |cmd#0@@17| (M2.__default.Restrict |deps#0@@23| |st#0@@48|) |exp#1_0@0|))))))
(let ((anon80_Then_correct  (=> ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|)) (=> (and (and (and (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|) (|M2.__default.GetSt#canCall| |p#1_2_0@0| |$rhs#1_3@0|)) (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@1))) (and (and ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@1) (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|)) (and (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (= (ControlFlow 0 21) (- 0 20))))) (= (M2.__default.GetSt |p#1_2_0@0| |$rhs#1_3@0|) (M2.__default.RunTool |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|)))))))
(let ((anon79_Then_correct  (=> ($IsAllocBox |p#1_2_0@0| Tclass.M2.Path $Heap@1) (=> (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (= (ControlFlow 0 19) (- 0 18))) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|)))))
(let ((anon73_Else_correct  (=> (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_2_0@0|)) (and (and (and (and (and (=> (= (ControlFlow 0 35) 19) anon79_Then_correct) (=> (= (ControlFlow 0 35) 21) anon80_Then_correct)) (=> (= (ControlFlow 0 35) 23) anon81_Then_correct)) (=> (= (ControlFlow 0 35) 25) anon82_Then_correct)) (=> (= (ControlFlow 0 35) 27) anon83_Then_correct)) (=> (= (ControlFlow 0 35) 34) anon83_Else_correct)))))
(let ((anon71_Else_correct  (=> ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) (=> (and (and (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1) ($IsAlloc SeqType |e#1_2_0@0| (TSeq TChar) $Heap@1)) (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|) (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|))) (and (and (= |p#1_2_0@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_0@0|)) ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1)) (and (|M2.__default.DomSt#canCall| |$rhs#1_3@0|) (|M2.__default.DomSt#canCall| |$rhs#1_3@0|)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|)) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_2_0@0|) (=> ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@1) (=> (and (|M2.__default.DomSt#canCall| |$rhs#1_1@0|) (|M2.__default.DomSt#canCall| |$rhs#1_1@0|)) (and (=> (= (ControlFlow 0 57) 56) anon73_Then_correct) (=> (= (ControlFlow 0 57) 35) anon73_Else_correct))))))))))
(let ((anon70_Then_correct  (=> (and ($Is SeqType |e#1_2_0@0| (TSeq TChar)) (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#1_2_0@0|))) (and (=> (= (ControlFlow 0 64) 63) anon71_Then_correct) (=> (= (ControlFlow 0 64) 57) anon71_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 15)) (let ((|result''#0| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0|))))
 (=> (|M2.__default.ValidState#canCall| |st''#0|) (or (M2.__default.ValidState |st''#0|) (forall ((|p#5@@0| T@U) ) (!  (=> ($IsBox |p#5@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st''#0|) |p#5@@0|) (M2.__default.WellFounded |p#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3662|
 :pattern ( (M2.__default.WellFounded |p#5@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0|) |p#5@@0|))
))))))) (=> (let ((|result''#0@@0| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@0|))))
 (=> (|M2.__default.ValidState#canCall| |st''#0@@0|) (or (M2.__default.ValidState |st''#0@@0|) (forall ((|p#5@@1| T@U) ) (!  (=> ($IsBox |p#5@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st''#0@@0|) |p#5@@1|) (M2.__default.WellFounded |p#5@@1|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3662|
 :pattern ( (M2.__default.WellFounded |p#5@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0@@0|) |p#5@@1|))
)))))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (let ((|result''#0@@1| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@1| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@1|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@1|) (or (M2.__default.Extends |st#0@@48| |st''#0@@1|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |st''#0@@1|))))))) (=> (let ((|result''#0@@2| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@2| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@2|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@2|) (or (M2.__default.Extends |st#0@@48| |st''#0@@2|) (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |st''#0@@2|)))))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (let ((|result''#0@@3| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@3| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@3|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@3|) (or (M2.__default.Extends |st#0@@48| |st''#0@@3|) (forall ((|p#6| T@U) ) (!  (=> ($IsBox |p#6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#6|) (= (M2.__default.GetSt |p#6| |st''#0@@3|) (M2.__default.GetSt |p#6| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3664|
 :pattern ( (M2.__default.GetSt |p#6| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#6| |st''#0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#6|))
))))))) (=> (let ((|result''#0@@4| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@4| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@4|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@4|) (or (M2.__default.Extends |st#0@@48| |st''#0@@4|) (forall ((|p#6@@0| T@U) ) (!  (=> ($IsBox |p#6@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#6@@0|) (= (M2.__default.GetSt |p#6@@0| |st''#0@@4|) (M2.__default.GetSt |p#6@@0| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3664|
 :pattern ( (M2.__default.GetSt |p#6@@0| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#6@@0| |st''#0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#6@@0|))
)))))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (let ((|result''#0@@5| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@5| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@5|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@5|) (or (M2.__default.Extends |st#0@@48| |st''#0@@5|) (forall ((|p#7| T@U) ) (!  (=> ($IsBox |p#7| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#7|)) (|Set#IsMember| (M2.__default.DomSt |st''#0@@5|) |p#7|)) (= (M2.__default.GetSt |p#7| |st''#0@@5|) (M2.__default.Oracle |p#7| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3665|
 :pattern ( (M2.__default.Oracle |p#7| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#7| |st''#0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0@@5|) |p#7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#7|))
))))))) (=> (let ((|result''#0@@6| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@6| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@6|))))
 (=> (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@6|) (or (M2.__default.Extends |st#0@@48| |st''#0@@6|) (forall ((|p#7@@0| T@U) ) (!  (=> ($IsBox |p#7@@0| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#7@@0|)) (|Set#IsMember| (M2.__default.DomSt |st''#0@@6|) |p#7@@0|)) (= (M2.__default.GetSt |p#7@@0| |st''#0@@6|) (M2.__default.Oracle |p#7@@0| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3665|
 :pattern ( (M2.__default.Oracle |p#7@@0| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#7@@0| |st''#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0@@6|) |p#7@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#7@@0|))
)))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (let ((|result''#0@@7| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|paths''#0| ($Unbox SetType (M2.Tuple.fst |result''#0@@7|))))
 (=> (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |paths''#0|) (or (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps#0@@12| |paths''#0|) (forall ((|e#4| T@U) ) (!  (=> ($Is SeqType |e#4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4|)) (|Set#IsMember| |paths''#0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#4|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |3668|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#4|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4|)))
))))))) (=> (let ((|result''#0@@8| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|paths''#0@@0| ($Unbox SetType (M2.Tuple.fst |result''#0@@8|))))
 (=> (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |paths''#0@@0|) (or (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps#0@@12| |paths''#0@@0|) (forall ((|e#4@@0| T@U) ) (!  (=> ($Is SeqType |e#4@@0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4@@0|)) (|Set#IsMember| |paths''#0@@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#4@@0|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |3668|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#4@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4@@0|)))
)))))) (=> (= (ControlFlow 0 10) (- 0 9)) (let ((|result''#0@@9| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))
(let ((|st''#0@@7| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@9|))))
 (=> (|M2.__default.Post#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |st''#0@@7|) (or (M2.__default.Post |cmd#0@@17| |deps#0@@23| |exps#0@@12| |st''#0@@7|) (forall ((|e#5| T@U) ) (!  (=> ($Is SeqType |e#5| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#5|)) (|Set#IsMember| (M2.__default.DomSt |st''#0@@7|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#5|))) (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#5|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#5|) |st''#0@@7|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#5|) |st''#0@@7|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |3670|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#5|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#5|)))
)))))))))))))))))))
(let ((anon70_Else_correct  (=> (and (forall ((|e#1_2_1| T@U) ) (!  (=> (and ($Is SeqType |e#1_2_1| (TSeq TChar)) (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#1_2_1|))) (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_1|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_1|) |$rhs#1_3@0|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_1|) |$rhs#1_3@0|))))
 :qid |CloudMakeParallelBuildsdfy.591:14|
 :skolemid |3772|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_2_1|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#1_2_1|)))
)) (= (ControlFlow 0 17) 10)) GeneratedUnifiedExit_correct)))
(let ((anon58_Else_correct  (=> (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (M2.__default.Extends |$rhs#1_1@0| |$rhs#1_3@0|) (M2.__default.Extends |st#0@@48| |$rhs#1_3@0|))) (=> (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1)) (=> (and (and ($IsAlloc SetType |exps#0@@12| (TSet (TSeq TChar)) $Heap@1) ($IsAlloc SetType |$rhs#1_2@0| (TSet Tclass.M2.Path) $Heap@1)) (and (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |$rhs#1_2@0|) (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |$rhs#1_2@0|))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (=> (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |$rhs#1_2@0|) (or (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps#0@@12| |$rhs#1_2@0|) (forall ((|e#1_0| T@U) ) (!  (=> ($Is SeqType |e#1_0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#1_0|)) (|Set#IsMember| |$rhs#1_2@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_0|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |3764|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1_0|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#1_0|)))
))))) (=> (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps#0@@12| |$rhs#1_2@0|) (and (=> (= (ControlFlow 0 65) 64) anon70_Then_correct) (=> (= (ControlFlow 0 65) 17) anon70_Else_correct)))))))))
(let ((anon57_Else_correct  (=> (=> true (M2.__default.ValidState |$rhs#1_3@0|)) (and (=> (= (ControlFlow 0 133) 132) anon58_Then_correct) (=> (= (ControlFlow 0 133) 65) anon58_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (|Set#Equal| |exps#0@@12| |Set#Empty|) (= (ControlFlow 0 16) 10)) GeneratedUnifiedExit_correct)))
(let ((anon57_Then_correct  (=> (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@1) (|M2.__default.WellFounded#canCall| |p#1_0@0|)) (=> (and (and (|M2.__default.WellFounded#canCall| |p#1_0@0|) (M2.__default.WellFounded |p#1_0@0|)) (and ($IsAlloc DatatypeTypeType |$rhs#1_3@0| Tclass.M2.State $Heap@1) (|M2.__default.ValidState#canCall| |$rhs#1_3@0|))) (=> (and (and (and (|M2.__default.ValidState#canCall| |$rhs#1_3@0|) (= (ControlFlow 0 8) (- 0 7))) (M2.__default.WellFounded |p#1_0@0|)) (|M2.__default.ValidState#canCall| |$rhs#1_3@0|)) (or (M2.__default.ValidState |$rhs#1_3@0|) (forall ((|p#1_0_0_0| T@U) ) (!  (=> ($IsBox |p#1_0_0_0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_0_0_0|) (M2.__default.WellFounded |p#1_0_0_0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3674|
 :pattern ( (M2.__default.WellFounded |p#1_0_0_0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1_3@0|) |p#1_0_0_0|))
))))))))
(let ((anon56_Then_correct  (=> (and (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@1) (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|)) (and (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|) (|Set#Equal| (M2.__default.LocInv__Deps |p#1_0@0|) |deps#0@@23|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((|d#1@@4| T@U) ) (!  (=> ($IsBox |d#1@@4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@4|) (M2.__default.WellFounded |d#1@@4|)))
 :qid |CloudMakeParallelBuildsdfy.621:21|
 :skolemid |3774|
 :pattern ( (M2.__default.WellFounded |d#1@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@4|))
))) (=> (forall ((|d#1@@5| T@U) ) (!  (=> ($IsBox |d#1@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@5|) (M2.__default.WellFounded |d#1@@5|)))
 :qid |CloudMakeParallelBuildsdfy.621:21|
 :skolemid |3774|
 :pattern ( (M2.__default.WellFounded |d#1@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#1_0@0|) |d#1@@5|))
)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|M2.__default.WellFounded#canCall| |p#1_0@0|)) (=> (and (and (and (and (|M2.__default.WellFounded#canCall| |p#1_0@0|) (and (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#0@@17| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@17| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#0@@17|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3777|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#0@@17|))
)))) (= $Heap@1 $Heap@3)) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@3) (|M2.__default.WellFounded#canCall| |p#1_0@0|))) (and (and (and (|M2.__default.WellFounded#canCall| |p#1_0@0|) (= (ControlFlow 0 5) (- 0 4))) (|Set#Equal| (M2.__default.LocInv__Deps |p#1_0@0|) |deps#0@@23|)) (|M2.__default.WellFounded#canCall| |p#1_0@0|))) (or (M2.__default.WellFounded |p#1_0@0|) (exists ((|cert#1_0_1_0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1_0_1_0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_0_1_0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3677|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#1_0@0| |cert#1_0_1_0|))
))))))))))
(let ((anon55_Then_correct  (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Cmd#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|))) (|Seq#Equal| (M2.__default.LocInv__Cmd (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |cmd#0@@17|)) (=> (and (and (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Deps#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|))) (|Set#Equal| (M2.__default.LocInv__Deps (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |deps#0@@23|)) (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.LocInv__Exp#canCall| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)))) (and (and (and (|Seq#Equal| (M2.__default.LocInv__Exp (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) |exp#1_0@0|) (= $Heap@1 $Heap@2)) (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@2) (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|))) (and (and (|M2.__default.LocInv__Deps#canCall| |p#1_0@0|) (= (ControlFlow 0 3) (- 0 2))) (U_2_bool (Lit boolType (bool_2_U true)))))) (|Set#Equal| (M2.__default.LocInv__Deps |p#1_0@0|) |deps#0@@23|))))))
(let ((anon54_Then_correct true))
(let ((anon5_correct  (=> (and (and (|M2.__default.DomSt#canCall| |$rhs#1_1@0|) (=> (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|)) (|M2.__default.SetSt#canCall| |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|))) (and (= |$rhs#1_3@0| (ite (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|) |$rhs#1_1@0| (M2.__default.SetSt |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|))) (= |exps##1_0@0| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|)))))) (and (=> (= (ControlFlow 0 134) (- 0 140)) (or (< (|Seq#Rank| |cmd#0@@17|) (|Seq#Rank| |cmd#0@@17|)) (and (= (|Seq#Rank| |cmd#0@@17|) (|Seq#Rank| |cmd#0@@17|)) (or (and (|Set#Subset| |deps#0@@23| |deps#0@@23|) (not (|Set#Subset| |deps#0@@23| |deps#0@@23|))) (and (|Set#Equal| |deps#0@@23| |deps#0@@23|) (or (and (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)))) (and (|Set#Equal| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (or (and (|Set#Subset| |exps##1_0@0| |exps#0@@12|) (not (|Set#Subset| |exps#0@@12| |exps##1_0@0|))) (and (|Set#Equal| |exps##1_0@0| |exps#0@@12|) (< (DtRank |st#0@@48|) (DtRank |st#0@@48|))))))))))) (=> (or (< (|Seq#Rank| |cmd#0@@17|) (|Seq#Rank| |cmd#0@@17|)) (and (= (|Seq#Rank| |cmd#0@@17|) (|Seq#Rank| |cmd#0@@17|)) (or (and (|Set#Subset| |deps#0@@23| |deps#0@@23|) (not (|Set#Subset| |deps#0@@23| |deps#0@@23|))) (and (|Set#Equal| |deps#0@@23| |deps#0@@23|) (or (and (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)))) (and (|Set#Equal| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (or (and (|Set#Subset| |exps##1_0@0| |exps#0@@12|) (not (|Set#Subset| |exps#0@@12| |exps##1_0@0|))) (and (|Set#Equal| |exps##1_0@0| |exps#0@@12|) (< (DtRank |st#0@@48|) (DtRank |st#0@@48|)))))))))) (and (=> (= (ControlFlow 0 134) (- 0 139)) (=> (|M2.__default.ValidState#canCall| |st#0@@48|) (or (M2.__default.ValidState |st#0@@48|) (forall ((|p#0@@56| T@U) ) (!  (=> ($IsBox |p#0@@56| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@56|) (M2.__default.WellFounded |p#0@@56|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3644|
 :pattern ( (M2.__default.WellFounded |p#0@@56|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@56|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@48|) (or (M2.__default.ValidState |st#0@@48|) (forall ((|p#0@@57| T@U) ) (!  (=> ($IsBox |p#0@@57| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@57|) (M2.__default.WellFounded |p#0@@57|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3644|
 :pattern ( (M2.__default.WellFounded |p#0@@57|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#0@@57|))
)))) (and (=> (= (ControlFlow 0 134) (- 0 138)) (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |st#0@@48|))) (=> (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |st#0@@48|)) (and (=> (= (ControlFlow 0 134) (- 0 137)) (=> (|M2.__default.Pre#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st#0@@48|) (or (M2.__default.Pre |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st#0@@48|) (forall ((|e#0@@7| T@U) ) (!  (=> ($Is SeqType |e#0@@7| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@7|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@7|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@7|) |st#0@@48|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@7|) |st#0@@48|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |3646|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@7|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@7|)))
))))) (=> (=> (|M2.__default.Pre#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st#0@@48|) (or (M2.__default.Pre |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st#0@@48|) (forall ((|e#0@@8| T@U) ) (!  (=> ($Is SeqType |e#0@@8| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@8|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@8|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@8|) |st#0@@48|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@8|) |st#0@@48|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |3646|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#0@@8|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#0@@8|)))
)))) (and (=> (= (ControlFlow 0 134) (- 0 136)) (|Map#Equal| |restrictedState#0@@4| (M2.__default.Restrict |deps#0@@23| |st#0@@48|))) (=> (|Map#Equal| |restrictedState#0@@4| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (|M2.__default.execOne#canCall| |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|) (let ((|result''#0@@10| (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|)))
 (and (and (M2.Tuple.Pair_q |result''#0@@10|) (M2.Tuple.Pair_q |result''#0@@10|)) (let ((|st''#0@@8| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@10|))))
(let ((|paths''#0@@1| ($Unbox SetType (M2.Tuple.fst |result''#0@@10|))))
 (and (|M2.__default.ValidState#canCall| |st''#0@@8|) (=> (M2.__default.ValidState |st''#0@@8|) (and (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@8|) (=> (M2.__default.Extends |st#0@@48| |st''#0@@8|) (and (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |paths''#0@@1|) (=> (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |paths''#0@@1|) (|M2.__default.Post#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st''#0@@8|)))))))))))) (let ((|result''#0@@11| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|)))
(let ((|st''#0@@9| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@11|))))
 (and (|M2.__default.ValidState#canCall| |st''#0@@9|) (and (M2.__default.ValidState |st''#0@@9|) (forall ((|p#1@@15| T@U) ) (!  (=> ($IsBox |p#1@@15| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st''#0@@9|) |p#1@@15|) (M2.__default.WellFounded |p#1@@15|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3649|
 :pattern ( (M2.__default.WellFounded |p#1@@15|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0@@9|) |p#1@@15|))
))))))) (=> (and (and (and (and (let ((|result''#0@@12| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|)))
(let ((|st''#0@@10| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@12|))))
 (and (|M2.__default.Extends#canCall| |st#0@@48| |st''#0@@10|) (and (M2.__default.Extends |st#0@@48| |st''#0@@10|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@48|) (M2.__default.DomSt |st''#0@@10|)) (forall ((|p#2@@8| T@U) ) (!  (=> ($IsBox |p#2@@8| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@8|) (= (M2.__default.GetSt |p#2@@8| |st''#0@@10|) (M2.__default.GetSt |p#2@@8| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3652|
 :pattern ( (M2.__default.GetSt |p#2@@8| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#2@@8| |st''#0@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#2@@8|))
))) (forall ((|p#3@@3| T@U) ) (!  (=> ($IsBox |p#3@@3| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#3@@3|)) (|Set#IsMember| (M2.__default.DomSt |st''#0@@10|) |p#3@@3|)) (= (M2.__default.GetSt |p#3@@3| |st''#0@@10|) (M2.__default.Oracle |p#3@@3| |st#0@@48|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3653|
 :pattern ( (M2.__default.Oracle |p#3@@3| |st#0@@48|))
 :pattern ( (M2.__default.GetSt |p#3@@3| |st''#0@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st''#0@@10|) |p#3@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#3@@3|))
))))))) (let ((|result''#0@@13| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|)))
(let ((|paths''#0@@2| ($Unbox SetType (M2.Tuple.fst |result''#0@@13|))))
 (and (|M2.__default.OneToOne#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |paths''#0@@2|) (and (M2.__default.OneToOne |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |paths''#0@@2|) (forall ((|e#1@@7| T@U) ) (!  (=> ($Is SeqType |e#1@@7| (TSeq TChar)) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#1@@7|)) (|Set#IsMember| |paths''#0@@2| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1@@7|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |3655|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#1@@7|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#1@@7|)))
))))))) (and (let ((|result''#0@@14| (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps##1_0@0| |st#0@@48|)))
(let ((|st''#0@@11| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#0@@14|))))
 (and (|M2.__default.Post#canCall| |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st''#0@@11|) (and (M2.__default.Post |cmd#0@@17| |deps#0@@23| |exps##1_0@0| |st''#0@@11|) (forall ((|e#2@@5| T@U) ) (!  (=> ($Is SeqType |e#2@@5| (TSeq TChar)) (and (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)) (|Set#IsMember| (M2.__default.DomSt |st''#0@@11|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#2@@5|))) (=> (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#2@@5|) |st''#0@@11|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#2@@5|) |st''#0@@11|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |3657|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#2@@5|))
 :pattern ( (|Set#IsMember| |exps##1_0@0| ($Box SeqType |e#2@@5|)))
)))))) (= $Heap@0 $Heap@1))) (and (and ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@1) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@1)) (and ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@1) ($IsAlloc SetType |exps#0@@12| (TSet (TSeq TChar)) $Heap@1)))) (and (and (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@1) (|M2.__default.execOne#canCall| |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)) (and (M2.Tuple.Pair_q (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)) (M2.Tuple.Pair_q (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))) (and (and (|$IsA#M2.State| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))) (|$IsA#M2.State| |$rhs#1_3@0|)) (and (|M2.__default.execOne#canCall| |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|) (M2.Tuple.Pair_q (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|)))))) (and (=> (= (ControlFlow 0 134) (- 0 135)) (|M2.State#Equal| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS ($LS $LZ)) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|))) |$rhs#1_3@0|)) (=> (|M2.State#Equal| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| |exps#0@@12| |st#0@@48|))) |$rhs#1_3@0|) (and (and (and (and (=> (= (ControlFlow 0 134) 1) anon54_Then_correct) (=> (= (ControlFlow 0 134) 3) anon55_Then_correct)) (=> (= (ControlFlow 0 134) 5) anon56_Then_correct)) (=> (= (ControlFlow 0 134) 8) anon57_Then_correct)) (=> (= (ControlFlow 0 134) 133) anon57_Else_correct))))))))))))))))))))
(let ((anon53_Else_correct  (=> (not (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|)) (=> (and ($IsAllocBox |p#1_0@0| Tclass.M2.Path $Heap@0) ($IsAllocBox |a#1_0@0| Tclass.M2.Artifact $Heap@0)) (=> (and (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@0) (|M2.__default.SetSt#canCall| |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|)) (and (M2.State.StateCons_q (M2.__default.SetSt |p#1_0@0| |a#1_0@0| |$rhs#1_1@0|)) (= (ControlFlow 0 142) 134))) anon5_correct)))))
(let ((anon53_Then_correct  (=> (and (|Set#IsMember| (M2.__default.DomSt |$rhs#1_1@0|) |p#1_0@0|) (= (ControlFlow 0 141) 134)) anon5_correct)))
(let ((anon52_Else_correct  (=> (and (not (|Set#Equal| |exps#0@@12| |Set#Empty|)) ($IsAlloc SetType |exps#0@@12| (TSet (TSeq TChar)) $Heap@0)) (and (=> (= (ControlFlow 0 143) (- 0 144)) (not (|Set#Equal| |exps#0@@12| |Set#Empty|))) (=> (not (|Set#Equal| |exps#0@@12| |Set#Empty|)) (=> (and (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@12|) (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@12|)) (=> (and (and (and (and (and (= |exp#1_0@0| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@12|))) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@0)) (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@0) ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@0))) (and (and (= |##exps#1_0@0| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|)))) ($IsAlloc SetType |##exps#1_0@0| (TSet (TSeq TChar)) $Heap@0)) (and ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@0) (|M2.__default.execOne#canCall| |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@48|)))) (and (and (and (M2.Tuple.Pair_q (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@48|)) (|M2.__default.execOne#canCall| |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@48|)) (and (= |rest#1_0@0| (M2.__default.execOne ($LS $LZ) |cmd#0@@17| |deps#0@@23| |restrictedState#0@@4| (|Set#Difference| |exps#0@@12| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1_0@0|))) |st#0@@48|)) (M2.Tuple.Pair_q |rest#1_0@0|))) (and (and (M2.Tuple.Pair_q |rest#1_0@0|) (= |$rhs#1_0@0| ($Unbox SetType (M2.Tuple.fst |rest#1_0@0|)))) (and (M2.Tuple.Pair_q |rest#1_0@0|) (M2.Tuple.Pair_q |rest#1_0@0|))))) (and (and (and (and (= |$rhs#1_1@0| ($Unbox DatatypeTypeType (M2.Tuple.snd |rest#1_0@0|))) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@0)) (and ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@0) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@0))) (and (and (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|) (|M2.__default.Loc#canCall| |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) (and (= |p#1_0@0| (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |exp#1_0@0|)) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@0)))) (and (and (and ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@0) ($IsAlloc SeqType |exp#1_0@0| (TSeq TChar) $Heap@0)) (and (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|) (|M2.__default.RunTool#canCall| |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|))) (and (and (= |a#1_0@0| (M2.__default.RunTool |cmd#0@@17| |restrictedState#0@@4| |exp#1_0@0|)) (= |$rhs#1_2@0| (|Set#Union| |$rhs#1_0@0| (|Set#UnionOne| |Set#Empty| |p#1_0@0|)))) (and ($IsAlloc DatatypeTypeType |$rhs#1_1@0| Tclass.M2.State $Heap@0) (|M2.__default.DomSt#canCall| |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 143) 141) anon53_Then_correct) (=> (= (ControlFlow 0 143) 142) anon53_Else_correct)))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@18 alloc false)) (|$IsA#M2.State| |st#0@@48|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@18 $Heap@0) (forall ((|$ih#cmd0#0| T@U) (|$ih#deps0#0| T@U) (|$ih#restrictedState0#0| T@U) (|$ih#exps0#0| T@U) (|$ih#st0#0| T@U) ) (!  (=> (and (and (and (and (and (and ($Is SeqType |$ih#cmd0#0| (TSeq TChar)) ($Is SetType |$ih#deps0#0| (TSet Tclass.M2.Path))) ($Is MapType |$ih#restrictedState0#0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |$ih#exps0#0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |$ih#st0#0| Tclass.M2.State)) (and (and (and (M2.__default.ValidState |$ih#st0#0|) (|Set#Subset| |$ih#deps0#0| (M2.__default.DomSt |$ih#st0#0|))) (M2.__default.Pre |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |$ih#st0#0|)) (|Map#Equal| |$ih#restrictedState0#0| (M2.__default.Restrict |$ih#deps0#0| |$ih#st0#0|)))) (or (< (|Seq#Rank| |$ih#cmd0#0|) (|Seq#Rank| |cmd#0@@17|)) (and (= (|Seq#Rank| |$ih#cmd0#0|) (|Seq#Rank| |cmd#0@@17|)) (or (and (|Set#Subset| |$ih#deps0#0| |deps#0@@23|) (not (|Set#Subset| |deps#0@@23| |$ih#deps0#0|))) (and (|Set#Equal| |$ih#deps0#0| |deps#0@@23|) (or (and (|Set#Subset| (|Map#Domain| |$ih#restrictedState0#0|) (|Map#Domain| |restrictedState#0@@4|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |$ih#restrictedState0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#restrictedState0#0|) (|Map#Domain| |restrictedState#0@@4|)) (or (and (|Set#Subset| |$ih#exps0#0| |exps#0@@12|) (not (|Set#Subset| |exps#0@@12| |$ih#exps0#0|))) (and (|Set#Equal| |$ih#exps0#0| |exps#0@@12|) (< (DtRank |$ih#st0#0|) (DtRank |st#0@@48|))))))))))) (let ((|result''#1| (M2.__default.execOne ($LS $LZ) |$ih#cmd0#0| |$ih#deps0#0| |$ih#restrictedState0#0| |$ih#exps0#0| |$ih#st0#0|)))
(let ((|st''#1| ($Unbox DatatypeTypeType (M2.Tuple.snd |result''#1|))))
(let ((|paths''#1| ($Unbox SetType (M2.Tuple.fst |result''#1|))))
 (and (and (and (M2.__default.ValidState |st''#1|) (M2.__default.Extends |$ih#st0#0| |st''#1|)) (M2.__default.OneToOne |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |paths''#1|)) (M2.__default.Post |$ih#cmd0#0| |$ih#deps0#0| |$ih#exps0#0| |st''#1|))))))
 :qid |CloudMakeParallelBuildsdfy.528:25|
 :skolemid |3672|
 :pattern ( (M2.__default.execOne ($LS $LZ) |$ih#cmd0#0| |$ih#deps0#0| |$ih#restrictedState0#0| |$ih#exps0#0| |$ih#st0#0|))
)))) (and (=> (= (ControlFlow 0 145) 16) anon52_Then_correct) (=> (= (ControlFlow 0 145) 143) anon52_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@18) ($IsHeapAnchor $Heap@@18)) (=> (and (and ($Is SeqType |cmd#0@@17| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@17| (TSeq TChar) $Heap@@18)) (and ($Is SetType |deps#0@@23| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@23| (TSet Tclass.M2.Path) $Heap@@18))) (=> (and (and (and ($Is MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@18)) (and ($Is SetType |exps#0@@12| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@12| (TSet (TSeq TChar)) $Heap@@18))) (and (and ($Is DatatypeTypeType |st#0@@48| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@48| Tclass.M2.State $Heap@@18)) (|$IsA#M2.State| |st#0@@48|))) (=> (and (and (and (and ($Is SeqType |exp#1_0| (TSeq TChar)) ($IsAlloc SeqType |exp#1_0| (TSeq TChar) $Heap@@18)) true) (and (and ($Is DatatypeTypeType |rest#1_0| (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)) ($IsAlloc DatatypeTypeType |rest#1_0| (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@18)) true)) (and (and (and ($Is SetType |paths#1_0| (TSet Tclass.M2.Path)) ($IsAlloc SetType |paths#1_0| (TSet Tclass.M2.Path) $Heap@@18)) true) (and (and ($Is DatatypeTypeType |st'#1_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#1_0| Tclass.M2.State $Heap@@18)) true))) (=> (and (and (and (and (and ($IsBox |p#1_0| Tclass.M2.Path) ($IsAllocBox |p#1_0| Tclass.M2.Path $Heap@@18)) true) (and (and ($IsBox |a#1_0| Tclass.M2.Artifact) ($IsAllocBox |a#1_0| Tclass.M2.Artifact $Heap@@18)) true)) (and (and (and ($Is SetType |paths''#1_0| (TSet Tclass.M2.Path)) ($IsAlloc SetType |paths''#1_0| (TSet Tclass.M2.Path) $Heap@@18)) true) (and (and ($Is DatatypeTypeType |st''#1_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st''#1_0| Tclass.M2.State $Heap@@18)) true))) (and (and (and (and ($IsBox |p#1_2_0| Tclass.M2.Path) ($IsAllocBox |p#1_2_0| Tclass.M2.Path $Heap@@18)) true) (= 9 $FunctionContextHeight)) (and (and (and (|M2.__default.ValidState#canCall| |st#0@@48|) (and (M2.__default.ValidState |st#0@@48|) (forall ((|p#4@@0| T@U) ) (!  (=> ($IsBox |p#4@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#4@@0|) (M2.__default.WellFounded |p#4@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3659|
 :pattern ( (M2.__default.WellFounded |p#4@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) |p#4@@0|))
)))) (|Set#Subset| |deps#0@@23| (M2.__default.DomSt |st#0@@48|))) (and (and (|M2.__default.Pre#canCall| |cmd#0@@17| |deps#0@@23| |exps#0@@12| |st#0@@48|) (and (M2.__default.Pre |cmd#0@@17| |deps#0@@23| |exps#0@@12| |st#0@@48|) (forall ((|e#3| T@U) ) (!  (=> ($Is SeqType |e#3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#3|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@48|) (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#3|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#3|) |st#0@@48|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#3|) |st#0@@48|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |3661|
 :pattern ( (M2.__default.Loc |cmd#0@@17| |deps#0@@23| |e#3|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#3|)))
)))) (and (|Map#Equal| |restrictedState#0@@4| (M2.__default.Restrict |deps#0@@23| |st#0@@48|)) (= (ControlFlow 0 146) 145)))))) anon0_correct)))))))
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
