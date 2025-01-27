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
(declare-fun Tagclass._module.Result () T@U)
(declare-fun Tagclass._module.U8 () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$U8 () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.U8 () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#16| () T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun |map$project$6#0#r#0| (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#15| (T@U T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _module.Result.msg (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Result Tagclass._module.U8 |##_module.Result.Success| |##_module.Result.Failure| |tytagFamily$_tuple#2| tytagFamily$Result tytagFamily$U8)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.U8 $h)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.U8 $h))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.U8)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (<= (U_2_int |x#0@@0|) (LitInt 255))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.U8))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |loopsdfy.17:50|
 :skolemid |553|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)) (= (Ctor SeqType) 5)))
(assert (forall ((|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#16| |$w#0|) (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Result.value (|map$project$6#0#r#0| ($Unbox SeqType |$w#0|))))))
 :qid |loopsdfy.88:19|
 :skolemid |583|
 :pattern ( (MapType0Select BoxType BoxType |lambda#16| |$w#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t@@1 T@U) ) (!  (=> (and ($Is SeqType s (TSeq t@@1)) ($IsBox bx t@@1)) ($Is SeqType (|Seq#Build| s bx) (TSeq t@@1)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t@@1)))
)))
(assert (= (Ctor MapType) 6))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Result.Success_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (_module.Result.Success_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Result.Failure_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (_module.Result.Failure_q d@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Result.Success_q d@@4) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@4 (|#_module.Result.Success| |a#1#0#0@@0|))
 :qid |loopsdfy.17:30|
 :skolemid |535|
)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.Result.Success_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Result.Failure_q d@@5) (exists ((|a#7#0#0| T@U) ) (! (= d@@5 (|#_module.Result.Failure| |a#7#0#0|))
 :qid |loopsdfy.17:50|
 :skolemid |545|
)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.Result.Failure_q d@@5))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@2 h) ($IsAlloc T@@1 v@@1 t@@2 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@2 h))
)))
(assert (forall ((_module.Result$T T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._module.Result _module.Result$T))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.U8) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.U8)))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($IsBox bx@@3 Tclass._module.U8))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@2 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) v@@2)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0))
)))
(assert (forall ((_module.Result$T@@0 T@U) (|a#2#0#0@@1| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@1|) (Tclass._module.Result _module.Result$T@@0) $h@@1) ($IsAllocBox |a#2#0#0@@1| _module.Result$T@@0 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@1|) (Tclass._module.Result _module.Result$T@@0) $h@@1))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#15| |l#0| |l#1|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0|) (exists ((|a#0#0#0| T@U) ) (!  (and (|Set#IsMember| |l#1| ($Box DatatypeTypeType |a#0#0#0|)) (= ($Unbox SeqType |$w#0@@0|) ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |a#0#0#0|))))))
 :qid |loopsdfy.88:23|
 :skolemid |526|
))))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (MapType0Select BoxType boolType (|lambda#15| |l#0| |l#1|) |$w#0@@0|))
)))
(assert (forall ((d@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Failure_q d@@6) (exists ((_module.Result$T@@1 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@2)
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@2))
)))) ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@2))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#8#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@3)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3))
)))
(assert (forall ((_module.Result$T@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)) (or (_module.Result.Success_q d@@7) (_module.Result.Failure_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Result.Failure_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
 :pattern ( (_module.Result.Success_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Seq#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@2 b@@2))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TChar) (and (= ($Box charType ($Unbox charType bx@@4)) bx@@4) ($Is charType ($Unbox charType bx@@4) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@4 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@3) ($Is T@@2 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@5) ($IsAllocBox bx@@5 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@4 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@4 u)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@4 u))
)))
(assert (forall ((t@@5 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@5 u@@0))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@6 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@6 u@@1))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((_module.Result$T@@4 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@4)) _module.Result$T@@4)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.Result _module.Result$T@@4))
)))
(assert (forall ((|a#0#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0@@1|)) |##_module.Result.Success|)
 :qid |loopsdfy.17:30|
 :skolemid |533|
 :pattern ( (|#_module.Result.Success| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |loopsdfy.17:30|
 :skolemid |541|
 :pattern ( (|#_module.Result.Success| |a#4#0#0@@0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0@@0|)) |##_module.Result.Failure|)
 :qid |loopsdfy.17:50|
 :skolemid |543|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0@@0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.msg (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |loopsdfy.17:50|
 :skolemid |552|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@6) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@6) t1@@1 h@@2) ($IsAllocBox bx@@6 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@6))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall ((_module.Result$T@@5 T@U) (|a#2#0#0@@2| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@5)) ($IsBox |a#2#0#0@@2| _module.Result$T@@5))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@7 T@U) (s@@3 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@7 (TMap s@@3 t@@11)) (and (= ($Box MapType ($Unbox MapType bx@@7)) bx@@7) ($Is MapType ($Unbox MapType bx@@7) (TMap s@@3 t@@11))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@7 (TMap s@@3 t@@11)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_module.Result.Success| |a#5#0#0@@0|)))
 :qid |loopsdfy.17:30|
 :skolemid |542|
 :pattern ( (|#_module.Result.Success| |a#5#0#0@@0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Result.Failure| |a#12#0#0|)))
 :qid |loopsdfy.17:50|
 :skolemid |554|
 :pattern ( (|#_module.Result.Failure| |a#12#0#0|))
)))
(assert (forall ((d@@8 T@U) (_module.Result$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Result.Success_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@6) $h@@4))) ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@4))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@8) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@8))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@9 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@9)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@9)) |u'|) v@@9))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@9)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@9)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@9)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@9)) |u'|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@12)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@12))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@12)))
)))
(assert (forall ((bx@@10 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@13)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@13))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@13)))
)))
(assert (forall ((_module.Result$T@@7 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.Result _module.Result$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._module.Result _module.Result$T@@7))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@11 (Tclass._module.Result _module.Result$T@@7)))
)))
(assert (forall ((_module.Result$T@@8 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@6 t1@@3)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@12) t1@@3) ($IsBox bx@@12 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@10 (TMap t0@@6 t1@@3)))
)))
(assert (= (Tag Tclass._module.U8) Tagclass._module.U8))
(assert (= (TagFamily Tclass._module.U8) tytagFamily$U8))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0@@0|)))
 :qid |loopsdfy.17:30|
 :skolemid |540|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0@@0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0|)))
 :qid |loopsdfy.17:50|
 :skolemid |551|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((h@@3 T@U) (v@@11 T@U) ) (! ($IsAlloc charType v@@11 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@11 TChar h@@3))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@12 (TSeq t0@@7)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@12))) ($IsBox (|Seq#Index| v@@12 i@@2) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@12 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@12 (TSeq t0@@7)))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@0 T@U) (v@@13 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@13)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
)))
(assert (forall ((s@@6 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@3))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@3))))
)))
(assert (forall ((v@@14 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@14 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@14) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@14) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@14) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@14 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is charType v@@15 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@15 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |remapped#0@0| () T@U)
(declare-fun |sResults#0@0| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |r#prime#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |sResults#0| () T@U)
(declare-fun |remapped#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Remap)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon22_Else_correct true))
(let ((anon22_Then_correct true))
(let ((anon13_correct  (and (=> (= (ControlFlow 0 4) 2) anon22_Then_correct) (=> (= (ControlFlow 0 4) 3) anon22_Else_correct))))
(let ((anon21_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 50)))))) (= (ControlFlow 0 7) 4)) anon13_correct)))
(let ((anon21_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 50))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 50))))))) (=> (= (ControlFlow 0 5) 4) anon13_correct)))))
(let ((anon20_Else_correct  (=> (and (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |remapped#0@0|) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))))))) (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 102))))) (and (=> (= (ControlFlow 0 8) 5) anon21_Then_correct) (=> (= (ControlFlow 0 8) 7) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 9) 1) anon20_Then_correct) (=> (= (ControlFlow 0 9) 8) anon20_Else_correct))))
(let ((anon19_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99)))))) (= (ControlFlow 0 12) 9)) anon9_correct)))
(let ((anon19_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (|Set#IsMember| (|Map#Domain| |remapped#0@0|) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))))))) (=> (= (ControlFlow 0 10) 9) anon9_correct)))))
(let ((anon7_correct  (=> (and (forall ((|r#1| T@U) ) (!  (=> ($Is DatatypeTypeType |r#1| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar)))) (and (and (=> (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#1|)) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Result.value |r#1|)))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Result.value |r#1|)))) (forall ((|a#1#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |a#1#0#0@@1|)) (and (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType (|map$project$6#0#r#0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |a#1#0#0@@1|))))))) (= ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |a#1#0#0@@1|)))) ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value (|map$project$6#0#r#0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |a#1#0#0@@1|))))))))))))
 :qid |loopsdfy.88:23|
 :skolemid |527|
 :pattern ( ($Unbox DatatypeTypeType (_module.Result.value |a#1#0#0@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |a#1#0#0@@1|)))
))))
 :qid |loopsdfy.88:23|
 :skolemid |528|
 :pattern ( ($Unbox DatatypeTypeType (_module.Result.value |r#1|)))
 :pattern ( (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#1|)))
)) (= |remapped#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#15| (TSeq TChar) (|Map#Values| |sResults#0@0|))) |lambda#16| (TMap (TSeq TChar) (TSeq TChar))))) (and (=> (= (ControlFlow 0 13) 10) anon19_Then_correct) (=> (= (ControlFlow 0 13) 12) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|)) (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#prime#0@0|)))) (= (ControlFlow 0 17) 13)) anon7_correct)))
(let ((anon18_Then_correct  (=> (and (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|)) (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#prime#0@0|))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (or (not (= ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|)))) ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |r#prime#0@0|)))))) (not true)) (= ($Unbox SeqType (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|)))) ($Unbox SeqType (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Result.value |r#prime#0@0|))))))) (=> (or (or (not (= ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|)))) ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Result.value |r#prime#0@0|)))))) (not true)) (= ($Unbox SeqType (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|)))) ($Unbox SeqType (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Result.value |r#prime#0@0|)))))) (=> (= (ControlFlow 0 15) 13) anon7_correct))))))
(let ((anon17_Else_correct  (=> (not (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|))) (and (=> (= (ControlFlow 0 20) 15) anon18_Then_correct) (=> (= (ControlFlow 0 20) 17) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (_module.Result.Success_q |r#0@0|)) (=> (_module.Result.Success_q |r#0@0|) (=> (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|))) (and (=> (= (ControlFlow 0 18) 15) anon18_Then_correct) (=> (= (ControlFlow 0 18) 17) anon18_Else_correct))))))))
(let ((anon16_Else_correct  (=> (not (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|))) (and (=> (= (ControlFlow 0 23) 18) anon17_Then_correct) (=> (= (ControlFlow 0 23) 20) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (|Set#IsMember| (|Map#Values| |sResults#0@0|) ($Box DatatypeTypeType |r#0@0|)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (_module.Result.Success_q |r#0@0|)) (=> (_module.Result.Success_q |r#0@0|) (=> (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Result.value |r#0@0|))) (and (=> (= (ControlFlow 0 21) 18) anon17_Then_correct) (=> (= (ControlFlow 0 21) 20) anon17_Else_correct))))))))
(let ((anon15_Then_correct  (=> (and (and ($Is DatatypeTypeType |r#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar)))) ($IsAlloc DatatypeTypeType |r#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar))) $Heap)) (and ($Is DatatypeTypeType |r#prime#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar)))) ($IsAlloc DatatypeTypeType |r#prime#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar))) $Heap))) (and (=> (= (ControlFlow 0 24) 21) anon16_Then_correct) (=> (= (ControlFlow 0 24) 23) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |r#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar)))) ($IsAlloc DatatypeTypeType |r#0@0| (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar))) $Heap))) (= (ControlFlow 0 14) 13)) anon7_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 2))) (and (=> (= (ControlFlow 0 25) (- 0 31)) (and (<= (LitInt 0) |newtype$check#0@0|) (<= |newtype$check#0@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (<= |newtype$check#0@0| (LitInt 255))) (=> (= |newtype$check#1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 25) (- 0 30)) (and (<= (LitInt 0) |newtype$check#1@0|) (<= |newtype$check#1@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (<= |newtype$check#1@0| (LitInt 255))) (=> (= |newtype$check#2@0| (LitInt 3)) (and (=> (= (ControlFlow 0 25) (- 0 29)) (and (<= (LitInt 0) |newtype$check#2@0|) (<= |newtype$check#2@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (<= |newtype$check#2@0| (LitInt 255))) (=> (= |newtype$check#3@0| (LitInt 3)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (and (<= (LitInt 0) |newtype$check#3@0|) (<= |newtype$check#3@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (<= |newtype$check#3@0| (LitInt 255))) (=> (= |newtype$check#4@0| (LitInt 4)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (and (<= (LitInt 0) |newtype$check#4@0|) (<= |newtype$check#4@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (<= |newtype$check#4@0| (LitInt 255))) (=> (= |newtype$check#5@0| (LitInt 4)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (<= (LitInt 0) |newtype$check#5@0|) (<= |newtype$check#5@0| (LitInt 255)))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (<= |newtype$check#5@0| (LitInt 255))) (=> (= |sResults#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 102)))))))))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 50))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 50)))))))))))))) (and (=> (= (ControlFlow 0 25) 24) anon15_Then_correct) (=> (= (ControlFlow 0 25) 14) anon15_Else_correct)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MapType |sResults#0| (TMap (TSeq Tclass._module.U8) (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar))))) ($IsAlloc MapType |sResults#0| (TMap (TSeq Tclass._module.U8) (Tclass._module.Result (Tclass._System.Tuple2 (TSeq TChar) (TSeq TChar)))) $Heap)) true) (=> (and (and (and ($Is MapType |remapped#0| (TMap (TSeq TChar) (TSeq TChar))) ($IsAlloc MapType |remapped#0| (TMap (TSeq TChar) (TSeq TChar)) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 32) 25))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
