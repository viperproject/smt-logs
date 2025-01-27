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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.ClEnv () T@U)
(declare-fun Tagclass._module.Val () T@U)
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass._module.ConstOrAbs () T@U)
(declare-fun Tagclass._module.LambdaAbs () T@U)
(declare-fun |##_module.Val.ValConst| () T@U)
(declare-fun |##_module.Val.ValCl| () T@U)
(declare-fun |##_module.Cl.Closure| () T@U)
(declare-fun |##_module.ClEnv.ClEnvironment| () T@U)
(declare-fun |##_module.ConstOrAbs.CC| () T@U)
(declare-fun |##_module.ConstOrAbs.AA| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$ClEnv () T@U)
(declare-fun tytagFamily$Val () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$ConstOrAbs () T@U)
(declare-fun tytagFamily$LambdaAbs () T@U)
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
(declare-fun _module.ClEnv.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass._module.Var () T@U)
(declare-fun Tclass._module.Val () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.ClEnv.ClEnvironment_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ClEnv () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#_module.Cl.Closure| (T@U T@U) T@U)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun Tclass._module.LambdaAbs () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#18| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.Const () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.Cl.Closure_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Val.ValConst_q (T@U) Bool)
(declare-fun _module.Val.ValCl_q (T@U) Bool)
(declare-fun _module.ConstOrAbs.CC_q (T@U) Bool)
(declare-fun _module.ConstOrAbs.AA_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.Val.ValConst| (T@U) T@U)
(declare-fun |#_module.Val.ValCl| (T@U) T@U)
(declare-fun |#_module.ClEnv.ClEnvironment| (T@U) T@U)
(declare-fun |#_module.ConstOrAbs.CC| (T@U) T@U)
(declare-fun |#_module.ConstOrAbs.AA| (T@U) T@U)
(declare-fun |lambda#19| (T@U T@U T@U T@U) T@U)
(declare-fun _module.ConstOrAbs.abs (T@U) T@U)
(declare-fun _module.ConstOrAbs.c (T@U) T@U)
(declare-fun Tclass._module.ConstOrAbs () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ClosureConvertedMap (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ClosureConvertedMap#canCall| (T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.Cl.abs (T@U) T@U)
(declare-fun _module.Cl.env (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun _module.Val._h2 (T@U) T@U)
(declare-fun _module.Val.cl (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.ClEnv Tagclass._module.Val Tagclass._module.Cl Tagclass._module.ConstOrAbs Tagclass._module.LambdaAbs |##_module.Val.ValConst| |##_module.Val.ValCl| |##_module.Cl.Closure| |##_module.ClEnv.ClEnvironment| |##_module.ConstOrAbs.CC| |##_module.ConstOrAbs.AA| |tytagFamily$_tuple#2| tytagFamily$ClEnv tytagFamily$Val tytagFamily$Cl tytagFamily$ConstOrAbs tytagFamily$LambdaAbs)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.ClEnv.ClEnvironment_q d) ($IsAlloc DatatypeTypeType d Tclass._module.ClEnv $h))) ($IsAlloc MapType (_module.ClEnv.m d) (TMap Tclass._module.Var Tclass._module.Val) $h))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( ($IsAlloc MapType (_module.ClEnv.m d) (TMap Tclass._module.Var Tclass._module.Val) $h))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Cl.Closure| |a#49#0#0| |a#49#1#0|) Tclass._module.Cl)  (and ($Is DatatypeTypeType |a#49#0#0| Tclass._module.LambdaAbs) ($Is DatatypeTypeType |a#49#1#0| Tclass._module.ClEnv)))
 :qid |KozenSilvadfy.173:25|
 :skolemid |1006|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cl.Closure| |a#49#0#0| |a#49#1#0|) Tclass._module.Cl))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#18| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |KozenSilvadfy.169:6|
 :skolemid |1088|
 :pattern ( (MapType0Select BoxType boolType (|lambda#18| |l#0| |l#1|) |$w#0|))
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
(assert ($AlwaysAllocated Tclass._module.Var))
(assert ($AlwaysAllocated Tclass._module.Const))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass._module.Cl) (_module.Cl.Closure_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (_module.Cl.Closure_q d@@1) ($Is DatatypeTypeType d@@1 Tclass._module.Cl))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass._module.ClEnv) (_module.ClEnv.ClEnvironment_q d@@2))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@2) ($Is DatatypeTypeType d@@2 Tclass._module.ClEnv))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
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
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Val.ValConst_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Val.ValConst|))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( (_module.Val.ValConst_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Val.ValCl_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Val.ValCl|))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (_module.Val.ValCl_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Cl.Closure_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Cl.Closure|))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (_module.Cl.Closure_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.ClEnv.ClEnvironment_q d@@7) (= (DatatypeCtorId d@@7) |##_module.ClEnv.ClEnvironment|))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.ConstOrAbs.CC_q d@@8) (= (DatatypeCtorId d@@8) |##_module.ConstOrAbs.CC|))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.ConstOrAbs.CC_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.ConstOrAbs.AA_q d@@9) (= (DatatypeCtorId d@@9) |##_module.ConstOrAbs.AA|))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( (_module.ConstOrAbs.AA_q d@@9))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@10) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@10 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.Cl.Closure_q d@@11) (exists ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= d@@11 (|#_module.Cl.Closure| |a#48#0#0| |a#48#1#0|))
 :qid |KozenSilvadfy.173:25|
 :skolemid |1004|
)))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( (_module.Cl.Closure_q d@@11))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.Val.ValConst_q d@@12) (exists ((|a#40#0#0| T@U) ) (! (= d@@12 (|#_module.Val.ValConst| |a#40#0#0|))
 :qid |KozenSilvadfy.172:27|
 :skolemid |976|
)))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (_module.Val.ValConst_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Val.ValCl_q d@@13) (exists ((|a#44#0#0| T@U) ) (! (= d@@13 (|#_module.Val.ValCl| |a#44#0#0|))
 :qid |KozenSilvadfy.172:42|
 :skolemid |983|
)))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (_module.Val.ValCl_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.ClEnv.ClEnvironment_q d@@14) (exists ((|a#53#0#0| T@U) ) (! (= d@@14 (|#_module.ClEnv.ClEnvironment| |a#53#0#0|))
 :qid |KozenSilvadfy.174:34|
 :skolemid |1027|
)))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.ConstOrAbs.CC_q d@@15) (exists ((|a#66#0#0| T@U) ) (! (= d@@15 (|#_module.ConstOrAbs.CC| |a#66#0#0|))
 :qid |KozenSilvadfy.206:26|
 :skolemid |1066|
)))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (_module.ConstOrAbs.CC_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.ConstOrAbs.AA_q d@@16) (exists ((|a#71#0#0| T@U) ) (! (= d@@16 (|#_module.ConstOrAbs.AA| |a#71#0#0|))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1074|
)))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( (_module.ConstOrAbs.AA_q d@@16))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t@@1 h) ($IsAlloc T@@0 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t@@1 h))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#19| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|) ($Box DatatypeTypeType (ite (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#0@@0| |$w#0@@0|))) (|#_module.Val.ValCl| (|#_module.Cl.Closure| (_module.ConstOrAbs.abs ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#1@@0| |$w#0@@0|))) |l#2|)) (|#_module.Val.ValConst| (_module.ConstOrAbs.c ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#3| |$w#0@@0|)))))))
 :qid |KozenSilvadfy.225:44|
 :skolemid |1089|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#19| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.ClEnv) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.ClEnv)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@2 Tclass._module.ClEnv))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Val) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Val)))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsBox bx@@3 Tclass._module.Val))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cl) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Cl)))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cl))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.ConstOrAbs) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass._module.ConstOrAbs)))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsBox bx@@5 Tclass._module.ConstOrAbs))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.LambdaAbs) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.LambdaAbs)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( ($IsBox bx@@6 Tclass._module.LambdaAbs))
)))
(assert (forall ((|a#41#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Val.ValConst| |a#41#0#0|) Tclass._module.Val) ($IsBox |a#41#0#0| Tclass._module.Const))
 :qid |KozenSilvadfy.172:27|
 :skolemid |978|
 :pattern ( ($Is DatatypeTypeType (|#_module.Val.ValConst| |a#41#0#0|) Tclass._module.Val))
)))
(assert (forall ((|a#45#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Val.ValCl| |a#45#0#0|) Tclass._module.Val) ($Is DatatypeTypeType |a#45#0#0| Tclass._module.Cl))
 :qid |KozenSilvadfy.172:42|
 :skolemid |985|
 :pattern ( ($Is DatatypeTypeType (|#_module.Val.ValCl| |a#45#0#0|) Tclass._module.Val))
)))
(assert (forall ((|a#67#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ConstOrAbs.CC| |a#67#0#0|) Tclass._module.ConstOrAbs) ($IsBox |a#67#0#0| Tclass._module.Const))
 :qid |KozenSilvadfy.206:26|
 :skolemid |1068|
 :pattern ( ($Is DatatypeTypeType (|#_module.ConstOrAbs.CC| |a#67#0#0|) Tclass._module.ConstOrAbs))
)))
(assert (forall ((|a#72#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ConstOrAbs.AA| |a#72#0#0|) Tclass._module.ConstOrAbs) ($Is DatatypeTypeType |a#72#0#0| Tclass._module.LambdaAbs))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1076|
 :pattern ( ($Is DatatypeTypeType (|#_module.ConstOrAbs.AA| |a#72#0#0|) Tclass._module.ConstOrAbs))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.ClosureConvertedMap#canCall| |s#0|) (and (< 2 $FunctionContextHeight) ($Is MapType |s#0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)))) (and (forall ((|y#0| T@U) ) (!  (=> ($IsBox |y#0| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| |s#0|) |y#0|) (=> (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0|) |y#0|))) (|_module.__default.ClosureConvertedMap#canCall| |s#0|))))
 :qid |KozenSilvadfy.225:21|
 :skolemid |779|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0|) |y#0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0|) |y#0|))
)) (= (_module.__default.ClosureConvertedMap ($LS $ly) |s#0|) (|#_module.ClEnv.ClEnvironment| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#18| Tclass._module.Var (|Map#Domain| |s#0|))) (|lambda#19| (|Map#Elements| |s#0|) (|Map#Elements| |s#0|) (_module.__default.ClosureConvertedMap $ly |s#0|) (|Map#Elements| |s#0|)) (TMap Tclass._module.Var Tclass._module.Val))))))
 :qid |KozenSilvadfy.220:16|
 :skolemid |780|
 :pattern ( (_module.__default.ClosureConvertedMap ($LS $ly) |s#0|))
))))
(assert (forall ((|a#54#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ClEnv.ClEnvironment| |a#54#0#0|) Tclass._module.ClEnv) ($Is MapType |a#54#0#0| (TMap Tclass._module.Var Tclass._module.Val)))
 :qid |KozenSilvadfy.174:34|
 :skolemid |1029|
 :pattern ( ($Is DatatypeTypeType (|#_module.ClEnv.ClEnvironment| |a#54#0#0|) Tclass._module.ClEnv))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 Tclass._module.Val) (or (_module.Val.ValConst_q d@@17) (_module.Val.ValCl_q d@@17)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (_module.Val.ValCl_q d@@17) ($Is DatatypeTypeType d@@17 Tclass._module.Val))
 :pattern ( (_module.Val.ValConst_q d@@17) ($Is DatatypeTypeType d@@17 Tclass._module.Val))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 Tclass._module.ConstOrAbs) (or (_module.ConstOrAbs.CC_q d@@18) (_module.ConstOrAbs.AA_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |1083|
 :pattern ( (_module.ConstOrAbs.AA_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.ConstOrAbs))
 :pattern ( (_module.ConstOrAbs.CC_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.ConstOrAbs))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@2) ($Is T@@1 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@2))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
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
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Cl.Closure| |a#47#0#0| |a#47#1#0|)) |##_module.Cl.Closure|)
 :qid |KozenSilvadfy.173:25|
 :skolemid |1002|
 :pattern ( (|#_module.Cl.Closure| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (_module.Cl.abs (|#_module.Cl.Closure| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |KozenSilvadfy.173:25|
 :skolemid |1009|
 :pattern ( (|#_module.Cl.Closure| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= (_module.Cl.env (|#_module.Cl.Closure| |a#51#0#0| |a#51#1#0|)) |a#51#1#0|)
 :qid |KozenSilvadfy.173:25|
 :skolemid |1010|
 :pattern ( (|#_module.Cl.Closure| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Val.ValConst| |a#39#0#0|)) |##_module.Val.ValConst|)
 :qid |KozenSilvadfy.172:27|
 :skolemid |974|
 :pattern ( (|#_module.Val.ValConst| |a#39#0#0|))
)))
(assert (forall ((|a#42#0#0| T@U) ) (! (= (_module.Val._h2 (|#_module.Val.ValConst| |a#42#0#0|)) |a#42#0#0|)
 :qid |KozenSilvadfy.172:27|
 :skolemid |980|
 :pattern ( (|#_module.Val.ValConst| |a#42#0#0|))
)))
(assert (forall ((|a#43#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Val.ValCl| |a#43#0#0|)) |##_module.Val.ValCl|)
 :qid |KozenSilvadfy.172:42|
 :skolemid |981|
 :pattern ( (|#_module.Val.ValCl| |a#43#0#0|))
)))
(assert (forall ((|a#46#0#0| T@U) ) (! (= (_module.Val.cl (|#_module.Val.ValCl| |a#46#0#0|)) |a#46#0#0|)
 :qid |KozenSilvadfy.172:42|
 :skolemid |987|
 :pattern ( (|#_module.Val.ValCl| |a#46#0#0|))
)))
(assert (forall ((|a#52#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.ClEnv.ClEnvironment| |a#52#0#0|)) |##_module.ClEnv.ClEnvironment|)
 :qid |KozenSilvadfy.174:34|
 :skolemid |1025|
 :pattern ( (|#_module.ClEnv.ClEnvironment| |a#52#0#0|))
)))
(assert (forall ((|a#55#0#0| T@U) ) (! (= (_module.ClEnv.m (|#_module.ClEnv.ClEnvironment| |a#55#0#0|)) |a#55#0#0|)
 :qid |KozenSilvadfy.174:34|
 :skolemid |1031|
 :pattern ( (|#_module.ClEnv.ClEnvironment| |a#55#0#0|))
)))
(assert (forall ((|a#65#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.ConstOrAbs.CC| |a#65#0#0|)) |##_module.ConstOrAbs.CC|)
 :qid |KozenSilvadfy.206:26|
 :skolemid |1064|
 :pattern ( (|#_module.ConstOrAbs.CC| |a#65#0#0|))
)))
(assert (forall ((|a#69#0#0| T@U) ) (! (= (_module.ConstOrAbs.c (|#_module.ConstOrAbs.CC| |a#69#0#0|)) |a#69#0#0|)
 :qid |KozenSilvadfy.206:26|
 :skolemid |1071|
 :pattern ( (|#_module.ConstOrAbs.CC| |a#69#0#0|))
)))
(assert (forall ((|a#70#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.ConstOrAbs.AA| |a#70#0#0|)) |##_module.ConstOrAbs.AA|)
 :qid |KozenSilvadfy.206:41|
 :skolemid |1072|
 :pattern ( (|#_module.ConstOrAbs.AA| |a#70#0#0|))
)))
(assert (forall ((|a#74#0#0| T@U) ) (! (= (_module.ConstOrAbs.abs (|#_module.ConstOrAbs.AA| |a#74#0#0|)) |a#74#0#0|)
 :qid |KozenSilvadfy.206:41|
 :skolemid |1079|
 :pattern ( (|#_module.ConstOrAbs.AA| |a#74#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@2) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@8) t1@@1 h@@2) ($IsAllocBox bx@@8 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.ClosureConvertedMap#canCall| |s#0@@0|) (and (< 2 $FunctionContextHeight) ($Is MapType |s#0@@0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)))) ($Is DatatypeTypeType (_module.__default.ClosureConvertedMap $ly@@0 |s#0@@0|) Tclass._module.ClEnv))
 :qid |KozenSilvadfy.220:16|
 :skolemid |777|
 :pattern ( (_module.__default.ClosureConvertedMap $ly@@0 |s#0@@0|))
))))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($ly@@1 T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.ClosureConvertedMap ($LS $ly@@1) |s#0@@1|) (_module.__default.ClosureConvertedMap $ly@@1 |s#0@@1|))
 :qid |KozenSilvadfy.220:16|
 :skolemid |775|
 :pattern ( (_module.__default.ClosureConvertedMap ($LS $ly@@1) |s#0@@1|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@9 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@9)) bx@@9) ($Is MapType ($Unbox MapType bx@@9) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@9 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#75#0#0| T@U) ) (! (< (DtRank |a#75#0#0|) (DtRank (|#_module.ConstOrAbs.AA| |a#75#0#0|)))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1080|
 :pattern ( (|#_module.ConstOrAbs.AA| |a#75#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1087|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))
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
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@5)
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
(assert (forall ((m@@8 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@6))
)))
(assert (forall ((d@@19 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@19)) (DtRank d@@19))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@19)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@9)))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@5 t1@@3)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@12) t1@@3) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((d@@20 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@20 Tclass._module.LambdaAbs)) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.LambdaAbs $h@@1))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 Tclass._module.LambdaAbs $h@@1))
)))
(assert (forall ((d@@21 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@21 Tclass._module.Val)) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Val $h@@2))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Val $h@@2))
)))
(assert (forall ((d@@22 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@22 Tclass._module.Cl)) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Cl $h@@3))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Cl $h@@3))
)))
(assert (forall ((d@@23 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@23 Tclass._module.ClEnv)) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.ClEnv $h@@4))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass._module.ClEnv $h@@4))
)))
(assert (forall ((d@@24 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@24 Tclass._module.ConstOrAbs)) ($IsAlloc DatatypeTypeType d@@24 Tclass._module.ConstOrAbs $h@@5))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 Tclass._module.ConstOrAbs $h@@5))
)))
(assert (= (Tag Tclass._module.ClEnv) Tagclass._module.ClEnv))
(assert (= (TagFamily Tclass._module.ClEnv) tytagFamily$ClEnv))
(assert (= (Tag Tclass._module.Val) Tagclass._module.Val))
(assert (= (TagFamily Tclass._module.Val) tytagFamily$Val))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass._module.ConstOrAbs) Tagclass._module.ConstOrAbs))
(assert (= (TagFamily Tclass._module.ConstOrAbs) tytagFamily$ConstOrAbs))
(assert (= (Tag Tclass._module.LambdaAbs) Tagclass._module.LambdaAbs))
(assert (= (TagFamily Tclass._module.LambdaAbs) tytagFamily$LambdaAbs))
(assert (forall ((d@@25 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@25) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._0 d@@25) |_System._tuple#2$T0@@6| $h@@6))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@25) |_System._tuple#2$T0@@6| $h@@6))
)))
(assert (forall ((d@@26 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@26) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._1 d@@26) |_System._tuple#2$T1@@7| $h@@7))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@26) |_System._tuple#2$T1@@7| $h@@7))
)))
(assert (forall ((d@@27 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Val.ValConst_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Val $h@@8))) ($IsAllocBox (_module.Val._h2 d@@27) Tclass._module.Const $h@@8))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($IsAllocBox (_module.Val._h2 d@@27) Tclass._module.Const $h@@8))
)))
(assert (forall ((d@@28 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Val.ValCl_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.Val $h@@9))) ($IsAlloc DatatypeTypeType (_module.Val.cl d@@28) Tclass._module.Cl $h@@9))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Val.cl d@@28) Tclass._module.Cl $h@@9))
)))
(assert (forall ((d@@29 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Cl.Closure_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass._module.Cl $h@@10))) ($IsAlloc DatatypeTypeType (_module.Cl.abs d@@29) Tclass._module.LambdaAbs $h@@10))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Cl.abs d@@29) Tclass._module.LambdaAbs $h@@10))
)))
(assert (forall ((d@@30 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Cl.Closure_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.Cl $h@@11))) ($IsAlloc DatatypeTypeType (_module.Cl.env d@@30) Tclass._module.ClEnv $h@@11))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Cl.env d@@30) Tclass._module.ClEnv $h@@11))
)))
(assert (forall ((d@@31 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.ConstOrAbs.CC_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.ConstOrAbs $h@@12))) ($IsAllocBox (_module.ConstOrAbs.c d@@31) Tclass._module.Const $h@@12))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( ($IsAllocBox (_module.ConstOrAbs.c d@@31) Tclass._module.Const $h@@12))
)))
(assert (forall ((d@@32 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.ConstOrAbs.AA_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass._module.ConstOrAbs $h@@13))) ($IsAlloc DatatypeTypeType (_module.ConstOrAbs.abs d@@32) Tclass._module.LambdaAbs $h@@13))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.ConstOrAbs.abs d@@32) Tclass._module.LambdaAbs $h@@13))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@2| () T@U)
(declare-fun |y#1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.ClosureConvertedMap)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon8_correct true))
(let ((anon13_Else_correct  (=> (not (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|)))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (_module.ConstOrAbs.CC_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|)))) (=> (_module.ConstOrAbs.CC_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|))) (=> (= (ControlFlow 0 8) 2) anon8_correct))))))))
(let ((anon13_Then_correct  (=> (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|)))) (=> (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@2|) |y#1@0|))) (=> (and (and ($IsAlloc MapType |s#0@@2| (TMap Tclass._module.Var Tclass._module.ConstOrAbs) $Heap) (|_module.__default.ClosureConvertedMap#canCall| |s#0@@2|)) (and (_module.ClEnv.ClEnvironment_q (_module.__default.ClosureConvertedMap ($LS $LZ) |s#0@@2|)) (= (ControlFlow 0 5) 2))) anon8_correct))))))))
(let ((anon12_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|) (and (=> (= (ControlFlow 0 11) 5) anon13_Then_correct) (=> (= (ControlFlow 0 11) 8) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |s#0@@2|) |y#1@0|)) (= (ControlFlow 0 4) 2)) anon8_correct)))
(let ((anon11_Then_correct  (=> (and ($IsBox |y#1@0| Tclass._module.Var) ($IsAllocBox |y#1@0| Tclass._module.Var $Heap)) (and (=> (= (ControlFlow 0 13) 11) anon12_Then_correct) (=> (= (ControlFlow 0 13) 4) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (not (and ($IsBox |y#1@0| Tclass._module.Var) ($IsAllocBox |y#1@0| Tclass._module.Var $Heap))) (= (ControlFlow 0 3) 2)) anon8_correct)))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 14) 1) anon10_Then_correct) (=> (= (ControlFlow 0 14) 13) anon11_Then_correct)) (=> (= (ControlFlow 0 14) 3) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is MapType |s#0@@2| (TMap Tclass._module.Var Tclass._module.ConstOrAbs))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
