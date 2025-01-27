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
(declare-fun |##M2.WFCertificate.Cert| () T@U)
(declare-fun |##M2.State.StateCons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
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
(declare-fun M2.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M2.Path () T@U)
(declare-fun Tclass.M2.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M2.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M2.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M2.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun M2.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M2.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun M2.__default.FindCert (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |M2.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M2.WFCertificate () T@U)
(declare-fun M2.WFCertificate.p (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$let#9$canCall| (T@U T@U) Bool)
(declare-fun |$let#9_c| (T@U T@U) T@U)
(declare-fun M2.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |M2.__default.CollectDependencies#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun M2.__default.LocInv__Deps (T@U) T@U)
(declare-fun M2.WFCertificate.certs (T@U) T@U)
(declare-fun M2.__default.GetSt (T@U T@U) T@U)
(declare-fun M2.__default.DomSt (T@U) T@U)
(declare-fun |M2.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |M2.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun M2.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |M2.__default.OracleWF#canCall| (T@U T@U T@U) Bool)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#19| (T@U T@U) T@U)
(declare-fun |lambda#20| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M2.WFCertificate| (T@U) Bool)
(declare-fun |$IsA#M2.State| (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M2.__default.OracleWF (T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun |M2.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun M2.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M2.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#M2.State.StateCons| (T@U) T@U)
(declare-fun |M2.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M2.State Tagclass.M2.WFCertificate |##M2.WFCertificate.Cert| |##M2.State.StateCons| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$WFCertificate)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M2.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M2.State $h))) ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |4682|
 :pattern ( ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor SeqType) 5))
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
(assert (= (Ctor SetType) 6))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|p#0@@1| T@U) (|cert#0| T@U) (|deps#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@1| (Lit DatatypeTypeType |cert#0|) |deps#0| |st#0|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@1| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@1| (Lit DatatypeTypeType |cert#0|)) (|Set#Equal| |deps#0| (M2.__default.LocInv__Deps |p#0@@1|)))))) (and (forall ((|d#0@@0| T@U) ) (!  (=> ($IsBox |d#0@@0| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0| |d#0@@0|) (and (and (|M2.__default.DomSt#canCall| |st#0|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0|) |d#0@@0|) (|M2.__default.GetSt#canCall| |d#0@@0| |st#0|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0|) |d#0@@0|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0|)) (|M2.__default.FindCert#canCall| |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))))) (|M2.__default.OracleWF#canCall| |d#0@@0| (M2.__default.FindCert |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|)))) |st#0|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3871|
 :pattern ( (M2.__default.FindCert |d#0@@0| (M2.WFCertificate.certs |cert#0|)))
 :pattern ( (M2.__default.GetSt |d#0@@0| |st#0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0|) |d#0@@0|))
 :pattern ( (|Set#IsMember| |deps#0| |d#0@@0|))
)) (= (M2.__default.CollectDependencies ($LS $ly) |p#0@@1| (Lit DatatypeTypeType |cert#0|) |deps#0| |st#0|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0|)) (|lambda#20| (M2.__default.DomSt |st#0|) |st#0| ($LS $ly) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))) |st#0|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3872|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly) |p#0@@1| (Lit DatatypeTypeType |cert#0|) |deps#0| |st#0|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@2| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@2| |st#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@2| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@0| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@0|) |p#0@@2|)))) (and (M2.State.StateCons_q |st#0@@0|) (= (M2.__default.GetSt |p#0@@2| |st#0@@0|) (MapType0Select BoxType BoxType (|Map#Elements| (M2.State.m |st#0@@0|)) |p#0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4259|
 :pattern ( (M2.__default.GetSt |p#0@@2| |st#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|p#0@@3| T@U) (|cert#0@@0| T@U) (|deps#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@3| |cert#0@@0| |deps#0@@0| |st#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@3| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@0| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@1| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@3| |cert#0@@0|) (|Set#Equal| |deps#0@@0| (M2.__default.LocInv__Deps |p#0@@3|)))))) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($IsBox |d#0@@1| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0@@0| |d#0@@1|) (and (and (|M2.__default.DomSt#canCall| |st#0@@1|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@1|) (|M2.__default.GetSt#canCall| |d#0@@1| |st#0@@1|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@1|)) (and (and (M2.WFCertificate.Cert_q |cert#0@@0|) (|M2.__default.FindCert#canCall| |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|))) (|M2.__default.OracleWF#canCall| |d#0@@1| (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)) |st#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3869|
 :pattern ( (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)))
 :pattern ( (M2.__default.GetSt |d#0@@1| |st#0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@1|) |d#0@@1|))
 :pattern ( (|Set#IsMember| |deps#0@@0| |d#0@@1|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@0) |p#0@@3| |cert#0@@0| |deps#0@@0| |st#0@@1|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0@@0|)) (|lambda#20| (M2.__default.DomSt |st#0@@1|) |st#0@@1| $ly@@0 (M2.WFCertificate.certs |cert#0@@0|) |st#0@@1|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3870|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@0) |p#0@@3| |cert#0@@0| |deps#0@@0| |st#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@2| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@2| Tclass.M2.State))) (and (forall ((|p#0@@4| T@U) ) (!  (=> ($IsBox |p#0@@4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@2|) |p#0@@4|) (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@2|)) |p#0@@4|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |4263|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@2|)) |p#0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@2|) |p#0@@4|))
)) ($Is SetType (M2.__default.DomSt |st#0@@2|) (TSet Tclass.M2.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4264|
 :pattern ( (M2.__default.DomSt |st#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@3| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@3| Tclass.M2.State))) (and (M2.State.StateCons_q |st#0@@3|) (= (M2.__default.DomSt |st#0@@3|) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m |st#0@@3|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4266|
 :pattern ( (M2.__default.DomSt |st#0@@3|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M2.WFCertificate| d@@0) (M2.WFCertificate.Cert_q d@@0))
 :qid |unknown.0:0|
 :skolemid |4672|
 :pattern ( (|$IsA#M2.WFCertificate| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M2.State| d@@1) (M2.State.StateCons_q d@@1))
 :qid |unknown.0:0|
 :skolemid |4687|
 :pattern ( (|$IsA#M2.State| d@@1))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7208|
 :pattern ( (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |3083|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |3084|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert ($AlwaysAllocated Tclass.M2.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@2))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@5| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| (Lit BoxType |p#0@@5|) (Lit DatatypeTypeType |st#0@@4|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@5| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@4| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@4|))) (Lit BoxType |p#0@@5|))))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@4|)) (= (M2.__default.GetSt (Lit BoxType |p#0@@5|) (Lit DatatypeTypeType |st#0@@4|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@4|)))) (Lit BoxType |p#0@@5|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4261|
 :pattern ( (M2.__default.GetSt (Lit BoxType |p#0@@5|) (Lit DatatypeTypeType |st#0@@4|)))
))))
(assert (forall (($ly@@1 T@U) (|p#0@@6| T@U) (|cert#0@@1| T@U) (|deps#0@@1| T@U) (|st#0@@5| T@U) ) (! (= (M2.__default.CollectDependencies ($LS $ly@@1) |p#0@@6| |cert#0@@1| |deps#0@@1| |st#0@@5|) (M2.__default.CollectDependencies $ly@@1 |p#0@@6| |cert#0@@1| |deps#0@@1| |st#0@@5|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3864|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@1) |p#0@@6| |cert#0@@1| |deps#0@@1| |st#0@@5|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@7| T@U) (|cert#0@@2| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@7| |cert#0@@2| |st#0@@6|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@7| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@2| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@6| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@7| |cert#0@@2|)))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@7|) (|M2.__default.LocInv__Deps#canCall| |p#0@@7|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@7|)) (let ((|e#0| (M2.__default.LocInv__Exp |p#0@@7|)))
(let ((|deps#0@@2| (M2.__default.LocInv__Deps |p#0@@7|)))
(let ((|cmd#0| (M2.__default.LocInv__Cmd |p#0@@7|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@7| |cert#0@@2| |deps#0@@2| |st#0@@6|) (|M2.__default.RunTool#canCall| |cmd#0| (M2.__default.CollectDependencies $ly@@2 |p#0@@7| |cert#0@@2| |deps#0@@2| |st#0@@6|) |e#0|)))))) (= (M2.__default.OracleWF ($LS $ly@@2) |p#0@@7| |cert#0@@2| |st#0@@6|) (let ((|e#0@@0| (M2.__default.LocInv__Exp |p#0@@7|)))
(let ((|deps#0@@3| (M2.__default.LocInv__Deps |p#0@@7|)))
(let ((|cmd#0@@0| (M2.__default.LocInv__Cmd |p#0@@7|)))
(M2.__default.RunTool |cmd#0@@0| (M2.__default.CollectDependencies $ly@@2 |p#0@@7| |cert#0@@2| |deps#0@@3| |st#0@@6|) |e#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3848|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@2) |p#0@@7| |cert#0@@2| |st#0@@6|))
))))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate)  (and ($IsBox |a#2#0#0| Tclass.M2.Path) ($Is SetType |a#2#1#0| (TSet Tclass.M2.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4664|
 :pattern ( ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|cmd#0@@1| T@U) (|deps#0@@4| T@U) (|exp#0| T@U) ) (!  (=> (and (or (|M2.__default.RunTool#canCall| |cmd#0@@1| |deps#0@@4| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@1| (TSeq TChar) $Heap@@0)) (and ($Is MapType |deps#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |deps#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@0))) (and ($Is SeqType |exp#0| (TSeq TChar)) ($IsAlloc SeqType |exp#0| (TSeq TChar) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M2.__default.RunTool |cmd#0@@1| |deps#0@@4| |exp#0|) Tclass.M2.Artifact $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.507:18|
 :skolemid |3588|
 :pattern ( ($IsAllocBox (M2.__default.RunTool |cmd#0@@1| |deps#0@@4| |exp#0|) Tclass.M2.Artifact $Heap@@0))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@8| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@8| |st#0@@7|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@7| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@7|) |p#0@@8|)))) ($IsBox (M2.__default.GetSt |p#0@@8| |st#0@@7|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4256|
 :pattern ( (M2.__default.GetSt |p#0@@8| |st#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@9| T@U) (|st#0@@8| T@U) ) (!  (=> (and (or (|M2.__default.GetSt#canCall| |p#0@@9| |st#0@@8|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@9| Tclass.M2.Path) ($IsAllocBox |p#0@@9| Tclass.M2.Path $Heap@@1)) (and ($Is DatatypeTypeType |st#0@@8| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@8| Tclass.M2.State $Heap@@1))) (|Set#IsMember| (M2.__default.DomSt |st#0@@8|) |p#0@@9|)))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (M2.__default.GetSt |p#0@@9| |st#0@@8|) Tclass.M2.Artifact $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |4257|
 :pattern ( ($IsAllocBox (M2.__default.GetSt |p#0@@9| |st#0@@8|) Tclass.M2.Artifact $Heap@@1))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |3085|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |3086|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|p#0@@10| T@U) (|cert#0@@3| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@10| |cert#0@@3| |st#0@@9|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@10| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@9| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@10| |cert#0@@3|)))) ($IsBox (M2.__default.OracleWF $ly@@3 |p#0@@10| |cert#0@@3| |st#0@@9|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3845|
 :pattern ( (M2.__default.OracleWF $ly@@3 |p#0@@10| |cert#0@@3| |st#0@@9|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|p#0@@11| T@U) (|cert#0@@4| T@U) (|deps#0@@5| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@11|) (Lit DatatypeTypeType |cert#0@@4|) (Lit SetType |deps#0@@5|) (Lit DatatypeTypeType |st#0@@10|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@11| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@4| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@5| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@10| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@11|) (Lit DatatypeTypeType |cert#0@@4|)) (|Set#Equal| |deps#0@@5| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@11|))))))) (and (forall ((|d#0@@2| T@U) ) (!  (=> ($IsBox |d#0@@2| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@5|) |d#0@@2|) (and (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@10|))) |d#0@@2|) (|M2.__default.GetSt#canCall| |d#0@@2| (Lit DatatypeTypeType |st#0@@10|)))) (=> (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@10|))) |d#0@@2|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@4|)) (|M2.__default.FindCert#canCall| |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))))) (|M2.__default.OracleWF#canCall| |d#0@@2| (M2.__default.FindCert |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|)))) (Lit DatatypeTypeType |st#0@@10|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3873|
 :pattern ( (M2.__default.FindCert |d#0@@2| (M2.WFCertificate.certs |cert#0@@4|)))
 :pattern ( (M2.__default.GetSt |d#0@@2| |st#0@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@10|) |d#0@@2|))
 :pattern ( (|Set#IsMember| |deps#0@@5| |d#0@@2|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@4) (Lit BoxType |p#0@@11|) (Lit DatatypeTypeType |cert#0@@4|) (Lit SetType |deps#0@@5|) (Lit DatatypeTypeType |st#0@@10|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (Lit SetType |deps#0@@5|))) (|lambda#20| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@10|))) (Lit DatatypeTypeType |st#0@@10|) ($LS $ly@@4) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@4|))) (Lit DatatypeTypeType |st#0@@10|)) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3874|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@4) (Lit BoxType |p#0@@11|) (Lit DatatypeTypeType |cert#0@@4|) (Lit SetType |deps#0@@5|) (Lit DatatypeTypeType |st#0@@10|)))
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
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2950|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@8) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@8 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3247|
)))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( (_System.Tuple2.___hMake2_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (M2.WFCertificate.Cert_q d@@9) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@9 (|#M2.WFCertificate.Cert| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4662|
)))
 :qid |unknown.0:0|
 :skolemid |4663|
 :pattern ( (M2.WFCertificate.Cert_q d@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@11| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@11|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@11| Tclass.M2.State))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@11|)) (= (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@11|)) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m (Lit DatatypeTypeType |st#0@@11|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |4267|
 :pattern ( (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@11|)))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|p#0@@12| T@U) (|cert#0@@5| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@12| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@12| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@12|) (|M2.__default.LocInv__Deps#canCall| |p#0@@12|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@12|)) (let ((|e#1| (M2.__default.LocInv__Exp |p#0@@12|)))
(let ((|deps#1| (M2.__default.LocInv__Deps |p#0@@12|)))
(let ((|cmd#1| (M2.__default.LocInv__Cmd |p#0@@12|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |deps#1| |st#0@@12|) (|M2.__default.RunTool#canCall| |cmd#1| (M2.__default.CollectDependencies ($LS $ly@@5) |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |deps#1| |st#0@@12|) |e#1|)))))) (= (M2.__default.OracleWF ($LS $ly@@5) |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@12|) (let ((|e#1@@0| (M2.__default.LocInv__Exp |p#0@@12|)))
(let ((|deps#1@@0| (M2.__default.LocInv__Deps |p#0@@12|)))
(let ((|cmd#1@@0| (M2.__default.LocInv__Cmd |p#0@@12|)))
(M2.__default.RunTool |cmd#1@@0| (M2.__default.CollectDependencies ($LS $ly@@5) |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |deps#1@@0| |st#0@@12|) |e#1@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3849|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@5) |p#0@@12| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@12|))
))))
(assert (forall ((d@@10 T@U) ) (!  (=> (M2.State.StateCons_q d@@10) (exists ((|a#8#0#0| T@U) ) (! (= d@@10 (|#M2.State.StateCons| |a#8#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4678|
)))
 :qid |unknown.0:0|
 :skolemid |4679|
 :pattern ( (M2.State.StateCons_q d@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|d#0@@3| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@3| |certs#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($IsBox |d#0@@3| Tclass.M2.Path)) ($Is SetType |certs#0@@0| (TSet Tclass.M2.WFCertificate))) (exists ((|c#1| T@U) ) (!  (and ($Is DatatypeTypeType |c#1| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)) (= (M2.WFCertificate.p |c#1|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3894|
 :pattern ( (M2.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)))
))))) (and (|$let#9$canCall| |certs#0@@0| |d#0@@3|) (= (M2.__default.FindCert |d#0@@3| |certs#0@@0|) (let ((|c#2| (|$let#9_c| |certs#0@@0| |d#0@@3|)))
|c#2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |3897|
 :pattern ( (M2.__default.FindCert |d#0@@3| |certs#0@@0|) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@3 T@U) ($ly@@6 T@U) (|p#0@@13| T@U) (|cert#0@@6| T@U) (|st#0@@13| T@U) ) (!  (=> (and (or (|M2.__default.OracleWF#canCall| |p#0@@13| |cert#0@@6| |st#0@@13|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@13| Tclass.M2.Path) ($IsAllocBox |p#0@@13| Tclass.M2.Path $Heap@@3)) (and ($Is DatatypeTypeType |cert#0@@6| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@6| Tclass.M2.WFCertificate $Heap@@3))) (and ($Is DatatypeTypeType |st#0@@13| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@13| Tclass.M2.State $Heap@@3))) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@13| |cert#0@@6|)))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M2.__default.OracleWF $ly@@6 |p#0@@13| |cert#0@@6| |st#0@@13|) Tclass.M2.Artifact $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3846|
 :pattern ( ($IsAllocBox (M2.__default.OracleWF $ly@@6 |p#0@@13| |cert#0@@6| |st#0@@13|) Tclass.M2.Artifact $Heap@@3))
))))
(assert (forall (($ly@@7 T@U) (|p#0@@14| T@U) (|cert#0@@7| T@U) ) (! (= (M2.__default.CheckWellFounded ($LS $ly@@7) |p#0@@14| |cert#0@@7|) (M2.__default.CheckWellFounded $ly@@7 |p#0@@14| |cert#0@@7|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3541|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@7) |p#0@@14| |cert#0@@7|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@6| T@U) (|exp#0@@0| T@U) ) (!  (=> (or (|M2.__default.RunTool#canCall| |cmd#0@@2| |deps#0@@6| |exp#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is MapType |deps#0@@6| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SeqType |exp#0@@0| (TSeq TChar))))) ($IsBox (M2.__default.RunTool |cmd#0@@2| |deps#0@@6| |exp#0@@0|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |3587|
 :pattern ( (M2.__default.RunTool |cmd#0@@2| |deps#0@@6| |exp#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|p#0@@15| T@U) (|cert#0@@8| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@15| (Lit DatatypeTypeType |cert#0@@8|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@15| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@8| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@8|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@8|))) |p#0@@15|) (and (forall ((|d#1| T@U) ) (!  (=> ($IsBox |d#1| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@15|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1|) (forall ((|c#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@8|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) ($Box DatatypeTypeType |c#2@@0|)) (M2.WFCertificate.Cert_q |c#2@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3557|
 :pattern ( (M2.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@8|) ($Box DatatypeTypeType |c#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3558|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1|))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($IsBox |d#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1@@0|) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) ($Box DatatypeTypeType |c#2@@1|)) (= (M2.WFCertificate.p |c#2@@1|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3560|
 :pattern ( (M2.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@8|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3561|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1@@0|))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@8|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M2.WFCertificate.Cert_q |c#3@@0|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3559|
 :pattern ( (M2.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@8|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@8) |p#0@@15| (Lit DatatypeTypeType |cert#0@@8|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@8|))) |p#0@@15|) (forall ((|d#1@@1| T@U) ) (!  (=> ($IsBox |d#1@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1@@1|) (exists ((|c#2@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) ($Box DatatypeTypeType |c#2@@2|)) (= (M2.WFCertificate.p |c#2@@2|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3554|
 :pattern ( (M2.WFCertificate.p |c#2@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@8|) ($Box DatatypeTypeType |c#2@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3555|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@15|) |d#1@@1|))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) ($Box DatatypeTypeType |c#3@@1|)) (M2.__default.CheckWellFounded ($LS $ly@@8) (M2.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3556|
 :pattern ( (M2.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@8|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3562|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@8) |p#0@@15| (Lit DatatypeTypeType |cert#0@@8|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@16| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@16| (Lit DatatypeTypeType |st#0@@14|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@16| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@14| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@14|))) |p#0@@16|)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@14|)) (= (M2.__default.GetSt |p#0@@16| (Lit DatatypeTypeType |st#0@@14|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@14|)))) |p#0@@16|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4260|
 :pattern ( (M2.__default.GetSt |p#0@@16| (Lit DatatypeTypeType |st#0@@14|)))
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
(assert (forall ((|a#13#0#0| T@U) (bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@4) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#13#0#0|) bx@@4))) (DtRank (|#M2.State.StateCons| |a#13#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4686|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@4) (|#M2.State.StateCons| |a#13#0#0|))
)))
(assert (forall ((certs T@U) (d@@11 T@U) ) (!  (=> (|$let#9$canCall| certs d@@11) (and ($Is DatatypeTypeType (|$let#9_c| certs d@@11) Tclass.M2.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#9_c| certs d@@11))) (= (M2.WFCertificate.p (|$let#9_c| certs d@@11)) d@@11))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |3896|
 :pattern ( (|$let#9_c| certs d@@11))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) ($ly@@9 T@U) (|p#0@@17| T@U) (|cert#0@@9| T@U) (|deps#0@@7| T@U) (|st#0@@15| T@U) ) (!  (=> (and (or (|M2.__default.CollectDependencies#canCall| |p#0@@17| |cert#0@@9| |deps#0@@7| |st#0@@15|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and ($IsBox |p#0@@17| Tclass.M2.Path) ($IsAllocBox |p#0@@17| Tclass.M2.Path $Heap@@4)) (and ($Is DatatypeTypeType |cert#0@@9| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@9| Tclass.M2.WFCertificate $Heap@@4))) (and ($Is SetType |deps#0@@7| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@7| (TSet Tclass.M2.Path) $Heap@@4))) (and ($Is DatatypeTypeType |st#0@@15| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@15| Tclass.M2.State $Heap@@4))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@17| |cert#0@@9|) (|Set#Equal| |deps#0@@7| (M2.__default.LocInv__Deps |p#0@@17|)))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@9 |p#0@@17| |cert#0@@9| |deps#0@@7| |st#0@@15|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@4))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3867|
 :pattern ( ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@9 |p#0@@17| |cert#0@@9| |deps#0@@7| |st#0@@15|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@4))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2947|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|p#0@@18| T@U) (|cert#0@@10| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@18|) (Lit DatatypeTypeType |cert#0@@10|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@18| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@10| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) (Lit BoxType |p#0@@18|)) (and (forall ((|d#2| T@U) ) (!  (=> ($IsBox |d#2| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@18|)) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@18|)) |d#2|) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#4@@0|)) (M2.WFCertificate.Cert_q |c#4@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3566|
 :pattern ( (M2.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3567|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@18|) |d#2|))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($IsBox |d#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@18|)) |d#2@@0|) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#4@@1|)) (= (M2.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3569|
 :pattern ( (M2.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3570|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@18|) |d#2@@0|))
)) (forall ((|c#5| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#5|)) (and (M2.WFCertificate.Cert_q |c#5|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#5|) |c#5|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3568|
 :pattern ( (M2.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#5|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@10) (Lit BoxType |p#0@@18|) (Lit DatatypeTypeType |cert#0@@10|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) (Lit BoxType |p#0@@18|)) (forall ((|d#2@@1| T@U) ) (!  (=> ($IsBox |d#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@18|)) |d#2@@1|) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#4@@2|)) (= (M2.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3563|
 :pattern ( (M2.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3564|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@18|) |d#2@@1|))
))) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#5@@0|)) (M2.__default.CheckWellFounded ($LS $ly@@10) (M2.WFCertificate.p |c#5@@0|) |c#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3565|
 :pattern ( (M2.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#5@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3571|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@10) (Lit BoxType |p#0@@18|) (Lit DatatypeTypeType |cert#0@@10|)))
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
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3018|
 :pattern ( (|Seq#Length| s))
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
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2864|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2865|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2806|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2807|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2808|
 :pattern ( (TMap t@@5 u@@1))
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
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@3 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2870|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2871|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@2))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@4))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@11 T@U) (|p#0@@19| T@U) (|cert#0@@11| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@19| |cert#0@@11|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@19| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@11| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q |cert#0@@11|) (=> (= (M2.WFCertificate.p |cert#0@@11|) |p#0@@19|) (and (forall ((|d#0@@4| T@U) ) (!  (=> ($IsBox |d#0@@4| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@19|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@4|) (forall ((|c#0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@11|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0|)) (M2.WFCertificate.Cert_q |c#0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3548|
 :pattern ( (M2.WFCertificate.p |c#0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3549|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@4|))
)) (=> (forall ((|d#0@@5| T@U) ) (!  (=> ($IsBox |d#0@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@5|) (exists ((|c#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@0| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0@@0|)) (= (M2.WFCertificate.p |c#0@@0|) |d#0@@5|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3551|
 :pattern ( (M2.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3552|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@5|))
)) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@11|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#1@@0|)) (and (M2.WFCertificate.Cert_q |c#1@@0|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#1@@0|) |c#1@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3550|
 :pattern ( (M2.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#1@@0|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@11) |p#0@@19| |cert#0@@11|)  (and (and (= (M2.WFCertificate.p |cert#0@@11|) |p#0@@19|) (forall ((|d#0@@6| T@U) ) (!  (=> ($IsBox |d#0@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@6|) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0@@1|)) (= (M2.WFCertificate.p |c#0@@1|) |d#0@@6|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3545|
 :pattern ( (M2.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3546|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@19|) |d#0@@6|))
))) (forall ((|c#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#1@@1|)) (M2.__default.CheckWellFounded $ly@@11 (M2.WFCertificate.p |c#1@@1|) |c#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3547|
 :pattern ( (M2.WFCertificate.p |c#1@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@11|) ($Box DatatypeTypeType |c#1@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3553|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@11) |p#0@@19| |cert#0@@11|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@7| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@7| |certs#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |d#0@@7| Tclass.M2.Path) ($Is SetType |certs#0@@1| (TSet Tclass.M2.WFCertificate))) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@2|)) (= (M2.WFCertificate.p |c#0@@2|) |d#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3892|
 :pattern ( (M2.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@2|)))
))))) ($Is DatatypeTypeType (M2.__default.FindCert |d#0@@7| |certs#0@@1|) Tclass.M2.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |3893|
 :pattern ( (M2.__default.FindCert |d#0@@7| |certs#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@20| T@U) ) (!  (=> (or (|M2.__default.LocInv__Deps#canCall| |p#0@@20|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@20| Tclass.M2.Path))) ($Is SetType (M2.__default.LocInv__Deps |p#0@@20|) (TSet Tclass.M2.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |3814|
 :pattern ( (M2.__default.LocInv__Deps |p#0@@20|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) ($IsBox |d#0@@8| Tclass.M2.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M2.WFCertificate))) (exists ((|c#5@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#5@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@2|) ($Box DatatypeTypeType |c#5@@1|)) (= (M2.WFCertificate.p |c#5@@1|) (Lit BoxType |d#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3900|
 :pattern ( (M2.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#5@@1|)))
))))) (and (|$let#9$canCall| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|)) (= (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (let ((|c#6| (|$let#9_c| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |3901|
 :pattern ( (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) ($IsGoodHeap $Heap@@5))
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
(assert (forall ((|a#9#0#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@1) ($IsAlloc MapType |a#9#0#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $h@@1)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4681|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@12 T@U) (|p#0@@21| T@U) (|cert#0@@12| T@U) (|deps#0@@8| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@21| |cert#0@@12| |deps#0@@8| |st#0@@16|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@21| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@12| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@8| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@16| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@21| |cert#0@@12|) (|Set#Equal| |deps#0@@8| (M2.__default.LocInv__Deps |p#0@@21|)))))) ($Is MapType (M2.__default.CollectDependencies $ly@@12 |p#0@@21| |cert#0@@12| |deps#0@@8| |st#0@@16|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3866|
 :pattern ( (M2.__default.CollectDependencies $ly@@12 |p#0@@21| |cert#0@@12| |deps#0@@8| |st#0@@16|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3082|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall (($ly@@13 T@U) (|p#0@@22| T@U) (|cert#0@@13| T@U) (|st#0@@17| T@U) ) (! (= (M2.__default.OracleWF ($LS $ly@@13) |p#0@@22| |cert#0@@13| |st#0@@17|) (M2.__default.OracleWF $ly@@13 |p#0@@22| |cert#0@@13| |st#0@@17|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3843|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@13) |p#0@@22| |cert#0@@13| |st#0@@17|))
)))
(assert (forall ((bx@@8 T@U) (s@@0 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@0 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@0 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2833|
 :pattern ( ($IsBox bx@@8 (TMap s@@0 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
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
 :skolemid |3249|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#20| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0| |l#4|) |$w#0@@0|) (ite (|Set#IsMember| |l#0@@1| |$w#0@@0|) (M2.__default.GetSt |$w#0@@0| |l#1@@1|) (M2.__default.OracleWF |l#2@@0| |$w#0@@0| (M2.__default.FindCert |$w#0@@0| |l#3@@0|) |l#4|)))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7209|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#20| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0| |l#4|) |$w#0@@0|))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3070|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3071|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3072|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3073|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3081|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@7) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3079|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3080|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@7))
)))
(assert (forall ((d@@12 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@12)) (DtRank d@@12))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2881|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@12)))
)))
(assert (forall ((bx@@10 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@10 (TSet t@@11)))
)))
(assert (forall ((bx@@11 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2832|
 :pattern ( ($IsBox bx@@11 (TSeq t@@12)))
)))
(assert (forall ((v@@8 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@6 t1@@3)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12) t1@@3) ($IsBox bx@@12 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2852|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2853|
 :pattern ( ($Is MapType v@@8 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) (d@@13 T@U) ) (!  (=> (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@13)) (< (DtRank d@@13) (DtRank (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4670|
 :pattern ( (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@13)) (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@14 Tclass.M2.WFCertificate)) ($IsAlloc DatatypeTypeType d@@14 Tclass.M2.WFCertificate $h@@2))
 :qid |unknown.0:0|
 :skolemid |4671|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass.M2.WFCertificate $h@@2))
)))
(assert (= (Tag Tclass.M2.State) Tagclass.M2.State))
(assert (= (TagFamily Tclass.M2.State) tytagFamily$State))
(assert (= (Tag Tclass.M2.WFCertificate) Tagclass.M2.WFCertificate))
(assert (= (TagFamily Tclass.M2.WFCertificate) tytagFamily$WFCertificate))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@14 T@U) (|p#0@@23| T@U) (|cert#0@@14| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) (Lit DatatypeTypeType |st#0@@18|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@23| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@14| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@18| Tclass.M2.State)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|)))))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| (Lit BoxType |p#0@@23|)) (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@23|))) (|M2.__default.LocInv__Exp#canCall| (Lit BoxType |p#0@@23|))) (let ((|e#2| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@23|))))
(let ((|deps#2| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@23|))))
(let ((|cmd#2| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@23|))))
 (and (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) |deps#2| (Lit DatatypeTypeType |st#0@@18|)) (|M2.__default.RunTool#canCall| |cmd#2| (M2.__default.CollectDependencies ($LS $ly@@14) (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) |deps#2| (Lit DatatypeTypeType |st#0@@18|)) |e#2|)))))) (= (M2.__default.OracleWF ($LS $ly@@14) (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) (Lit DatatypeTypeType |st#0@@18|)) (let ((|e#2@@0| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@23|))))
(let ((|deps#2@@0| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@23|))))
(let ((|cmd#2@@0| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@23|))))
(M2.__default.RunTool |cmd#2@@0| (M2.__default.CollectDependencies ($LS $ly@@14) (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@18|)) |e#2@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3850|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@14) (Lit BoxType |p#0@@23|) (Lit DatatypeTypeType |cert#0@@14|) (Lit DatatypeTypeType |st#0@@18|)))
))))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o T@U) ) (! (= (|Set#IsMember| a@@3 o) (|Set#IsMember| b@@3 o))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2945|
 :pattern ( (|Set#IsMember| a@@3 o))
 :pattern ( (|Set#IsMember| b@@3 o))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2946|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@15) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@16) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((d@@17 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (M2.WFCertificate.Cert_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.M2.WFCertificate $h@@5))) ($IsAllocBox (M2.WFCertificate.p d@@17) Tclass.M2.Path $h@@5))
 :qid |unknown.0:0|
 :skolemid |4665|
 :pattern ( ($IsAllocBox (M2.WFCertificate.p d@@17) Tclass.M2.Path $h@@5))
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
(assert (forall ((|a#10#0#0| T@U) ) (! (= (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)) (Lit DatatypeTypeType (|#M2.State.StateCons| |a#10#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4683|
 :pattern ( (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|a#12#0#0| T@U) (d@@18 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@18)) (< (DtRank d@@18) (DtRank (|#M2.State.StateCons| |a#12#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4685|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@18)) (|#M2.State.StateCons| |a#12#0#0|))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3019|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((d@@19 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M2.WFCertificate.Cert_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.M2.WFCertificate $h@@6))) ($IsAlloc SetType (M2.WFCertificate.certs d@@19) (TSet Tclass.M2.WFCertificate) $h@@6))
 :qid |unknown.0:0|
 :skolemid |4666|
 :pattern ( ($IsAlloc SetType (M2.WFCertificate.certs d@@19) (TSet Tclass.M2.WFCertificate) $h@@6))
)))
(assert (forall ((h@@4 T@U) (v@@9 T@U) ) (! ($IsAlloc charType v@@9 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2861|
 :pattern ( ($IsAlloc charType v@@9 TChar h@@4))
)))
(assert (forall ((v@@10 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@10 (TSeq t0@@7)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@10))) ($IsBox (|Seq#Index| v@@10 i@@0) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2850|
 :pattern ( (|Seq#Index| v@@10 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2851|
 :pattern ( ($Is SeqType v@@10 (TSeq t0@@7)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@11 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@11)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3074|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3075|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@2 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3064|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))))
)))
(assert (forall ((v@@12 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@12 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@12) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@12) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@12) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2854|
 :pattern ( ($Is MapType v@@12 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is charType v@@13 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2840|
 :pattern ( ($Is charType v@@13 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |p#0@@24| () T@U)
(declare-fun |cert0#0| () T@U)
(declare-fun |cert1#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |st#0@@19| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$M2.__default.OracleWF__CertificateInsensitivity)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@6 alloc false)) (=> (and ($IsAllocBox |p#0@@24| Tclass.M2.Path $Heap@@6) ($IsAlloc DatatypeTypeType |cert0#0| Tclass.M2.WFCertificate $Heap@@6)) (=> (and (and (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert0#0|) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert0#0|)) (and ($IsAllocBox |p#0@@24| Tclass.M2.Path $Heap@@6) ($IsAlloc DatatypeTypeType |cert1#0| Tclass.M2.WFCertificate $Heap@@6))) (=> (and (and (and (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert1#0|) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert1#0|)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (= $Heap@@6 $Heap@0) ($IsAllocBox |p#0@@24| Tclass.M2.Path $Heap@0)) (and ($IsAlloc DatatypeTypeType |cert0#0| Tclass.M2.WFCertificate $Heap@0) ($IsAlloc DatatypeTypeType |st#0@@19| Tclass.M2.State $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert0#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert0#0|) (= (M2.WFCertificate.p |cert0#0|) |p#0@@24|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert0#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert0#0|) (forall ((|d#0@@9| T@U) ) (!  (=> ($IsBox |d#0@@9| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@24|) |d#0@@9|) (exists ((|c#0@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#0@@3|)) (= (M2.WFCertificate.p |c#0@@3|) |d#0@@9|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3903|
 :pattern ( (M2.WFCertificate.p |c#0@@3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#0@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3904|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@24|) |d#0@@9|))
))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert0#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert0#0|) (forall ((|c#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@2| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#1@@2|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#1@@2|) |c#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3905|
 :pattern ( (M2.WFCertificate.p |c#1@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert0#0|) ($Box DatatypeTypeType |c#1@@2|)))
))))) (=> (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert0#0|) (=> (and (and (|M2.__default.OracleWF#canCall| |p#0@@24| |cert0#0| |st#0@@19|) ($IsAllocBox |p#0@@24| Tclass.M2.Path $Heap@0)) (and ($IsAlloc DatatypeTypeType |cert1#0| Tclass.M2.WFCertificate $Heap@0) ($IsAlloc DatatypeTypeType |st#0@@19| Tclass.M2.State $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert1#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert1#0|) (= (M2.WFCertificate.p |cert1#0|) |p#0@@24|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert1#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert1#0|) (forall ((|d#1@@2| T@U) ) (!  (=> ($IsBox |d#1@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@24|) |d#1@@2|) (exists ((|c#2@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#2@@3|)) (= (M2.WFCertificate.p |c#2@@3|) |d#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3910|
 :pattern ( (M2.WFCertificate.p |c#2@@3|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#2@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3911|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@24|) |d#1@@2|))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|M2.__default.CheckWellFounded#canCall| |p#0@@24| |cert1#0|) (or (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@24| |cert1#0|) (forall ((|c#3@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@2| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#3@@2|)) (M2.__default.CheckWellFounded ($LS ($LS $LZ)) (M2.WFCertificate.p |c#3@@2|) |c#3@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3912|
 :pattern ( (M2.WFCertificate.p |c#3@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert1#0|) ($Box DatatypeTypeType |c#3@@2|)))
))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (and ($IsBox |p#0@@24| Tclass.M2.Path) ($IsAllocBox |p#0@@24| Tclass.M2.Path $Heap@@6))) (=> (and (and (and (and ($Is DatatypeTypeType |cert0#0| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert0#0| Tclass.M2.WFCertificate $Heap@@6)) (|$IsA#M2.WFCertificate| |cert0#0|)) (and (and ($Is DatatypeTypeType |cert1#0| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert1#0| Tclass.M2.WFCertificate $Heap@@6)) (|$IsA#M2.WFCertificate| |cert1#0|))) (and (and (and ($Is DatatypeTypeType |st#0@@19| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@19| Tclass.M2.State $Heap@@6)) (|$IsA#M2.State| |st#0@@19|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 8) 2)))) anon0_correct))))
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
