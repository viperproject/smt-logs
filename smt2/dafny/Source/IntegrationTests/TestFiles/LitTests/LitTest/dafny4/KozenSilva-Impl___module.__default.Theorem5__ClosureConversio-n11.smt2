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
(declare-fun Tagclass._module.Term () T@U)
(declare-fun Tagclass._module.LambdaAbs () T@U)
(declare-fun |##_module.LambdaAbs.Fun| () T@U)
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
(declare-fun tytagFamily$Term () T@U)
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
(declare-fun |#_module.LambdaAbs.Fun| (T@U T@U) T@U)
(declare-fun Tclass._module.LambdaAbs () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Term () T@U)
(declare-fun |#_module.Cl.Closure| (T@U T@U) T@U)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun |$Eq#_module.Val| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |$Eq#_module.Cl| (T@U T@U T@U) Bool)
(declare-fun |$Eq#_module.ClEnv| (T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun _module.Val.ValConst_q (T@U) Bool)
(declare-fun _module.Val._h2 (T@U) T@U)
(declare-fun _module.Val.ValCl_q (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Val.cl (T@U) T@U)
(declare-fun |$IsA#_module.LambdaAbs| (T@U) Bool)
(declare-fun _module.LambdaAbs.Fun_q (T@U) Bool)
(declare-fun |_module.ConstOrAbs#Equal| (T@U T@U) Bool)
(declare-fun _module.ConstOrAbs.CC_q (T@U) Bool)
(declare-fun _module.ConstOrAbs.c (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#18| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.Const () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |$PrefixEq#_module.Val| (T@U T@U T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |$PrefixEq#_module.Cl| (T@U T@U T@U T@U) Bool)
(declare-fun |$PrefixEq#_module.ClEnv| (T@U T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ValBelow_h (T@U Int T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.ValBelow_h#canCall| (Int T@U T@U) Bool)
(declare-fun |$IsA#_module.Val| (T@U) Bool)
(declare-fun _module.Cl.abs (T@U) T@U)
(declare-fun _module.Cl.Closure_q (T@U) Bool)
(declare-fun |_module.LambdaAbs#Equal| (T@U T@U) Bool)
(declare-fun |_module.__default.ClEnvBelow_h#canCall| (Int T@U T@U) Bool)
(declare-fun _module.Cl.env (T@U) T@U)
(declare-fun _module.__default.ClEnvBelow_h (T@U Int T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |_module.Term#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
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
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |lambda#19| (T@U T@U T@U T@U) T@U)
(declare-fun _module.ConstOrAbs.abs (T@U) T@U)
(declare-fun Tclass._module.ConstOrAbs () T@U)
(declare-fun _module.__default.ClosureConvertedMap (T@U T@U) T@U)
(declare-fun |_module.__default.ClosureConvertedMap#canCall| (T@U) Bool)
(declare-fun _module.LambdaAbs.v (T@U) T@U)
(declare-fun _module.LambdaAbs.body (T@U) T@U)
(declare-fun |$IsA#_module.ConstOrAbs| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun _module.__default.CapsuleEnvironmentBelow (T@U T@U) Bool)
(declare-fun |_module.__default.CapsuleEnvironmentBelow#canCall| (T@U T@U) Bool)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.ClEnv Tagclass._module.Val Tagclass._module.Cl Tagclass._module.ConstOrAbs Tagclass._module.Term Tagclass._module.LambdaAbs |##_module.LambdaAbs.Fun| |##_module.Val.ValConst| |##_module.Val.ValCl| |##_module.Cl.Closure| |##_module.ClEnv.ClEnvironment| |##_module.ConstOrAbs.CC| |##_module.ConstOrAbs.AA| |tytagFamily$_tuple#2| tytagFamily$ClEnv tytagFamily$Val tytagFamily$Cl tytagFamily$ConstOrAbs tytagFamily$Term tytagFamily$LambdaAbs)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.ClEnv.ClEnvironment_q d) ($IsAlloc DatatypeTypeType d Tclass._module.ClEnv $h))) ($IsAlloc MapType (_module.ClEnv.m d) (TMap Tclass._module.Var Tclass._module.Val) $h))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( ($IsAlloc MapType (_module.ClEnv.m d) (TMap Tclass._module.Var Tclass._module.Val) $h))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.LambdaAbs.Fun| |a#34#0#0| |a#34#1#0|) Tclass._module.LambdaAbs)  (and ($IsBox |a#34#0#0| Tclass._module.Var) ($Is DatatypeTypeType |a#34#1#0| Tclass._module.Term)))
 :qid |KozenSilvadfy.171:26|
 :skolemid |962|
 :pattern ( ($Is DatatypeTypeType (|#_module.LambdaAbs.Fun| |a#34#0#0| |a#34#1#0|) Tclass._module.LambdaAbs))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Cl.Closure| |a#49#0#0| |a#49#1#0|) Tclass._module.Cl)  (and ($Is DatatypeTypeType |a#49#0#0| Tclass._module.LambdaAbs) ($Is DatatypeTypeType |a#49#1#0| Tclass._module.ClEnv)))
 :qid |KozenSilvadfy.173:25|
 :skolemid |1006|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cl.Closure| |a#49#0#0| |a#49#1#0|) Tclass._module.Cl))
)))
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#_module.Val| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (|$Eq#_module.Val| ($LS ly) d0 d1))
)))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (! (= (|$Eq#_module.Cl| ($LS ly@@0) d0@@0 d1@@0) (= d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( (|$Eq#_module.Cl| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.ClEnv| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( (|$Eq#_module.ClEnv| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 Tclass._module.Val) ($Is DatatypeTypeType d1@@2 Tclass._module.Val)) (= (|$Eq#_module.Val| ($LS ly@@2) d0@@2 d1@@2)  (or (and (and (_module.Val.ValConst_q d0@@2) (_module.Val.ValConst_q d1@@2)) (=> (and (_module.Val.ValConst_q d0@@2) (_module.Val.ValConst_q d1@@2)) (= (_module.Val._h2 d0@@2) (_module.Val._h2 d1@@2)))) (and (and (_module.Val.ValCl_q d0@@2) (_module.Val.ValCl_q d1@@2)) (=> (and (_module.Val.ValCl_q d0@@2) (_module.Val.ValCl_q d1@@2)) (|$Eq#_module.Cl| ($LS ($LS $LZ)) (_module.Val.cl d0@@2) (_module.Val.cl d1@@2)))))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (|$Eq#_module.Val| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_module.LambdaAbs| d@@0) (_module.LambdaAbs.Fun_q d@@0))
 :qid |unknown.0:0|
 :skolemid |970|
 :pattern ( (|$IsA#_module.LambdaAbs| d@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.ConstOrAbs.CC_q a) (_module.ConstOrAbs.CC_q b)) (= (|_module.ConstOrAbs#Equal| a b) (= (_module.ConstOrAbs.c a) (_module.ConstOrAbs.c b))))
 :qid |unknown.0:0|
 :skolemid |1084|
 :pattern ( (|_module.ConstOrAbs#Equal| a b) (_module.ConstOrAbs.CC_q a))
 :pattern ( (|_module.ConstOrAbs#Equal| a b) (_module.ConstOrAbs.CC_q b))
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
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@0 b@@0 t)) a@@0)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@0 b@@0 t)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@1 b@@1 t@@0)) b@@1)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@1 b@@1 t@@0)))
)))
(assert ($AlwaysAllocated Tclass._module.Var))
(assert ($AlwaysAllocated Tclass._module.Const))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#_module.Val| (|ORD#FromNat| k) ($LS ly@@3) d0@@3 d1@@3))
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( (|$PrefixEq#_module.Val| (|ORD#FromNat| k) ($LS ly@@3) d0@@3 d1@@3))
)) (|$Eq#_module.Val| ($LS ly@@3) d0@@3 d1@@3))
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (|$Eq#_module.Val| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (!  (=> (forall ((k@@0 Int) ) (!  (=> (<= 0 k@@0) (|$PrefixEq#_module.Cl| (|ORD#FromNat| k@@0) ($LS ly@@4) d0@@4 d1@@4))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( (|$PrefixEq#_module.Cl| (|ORD#FromNat| k@@0) ($LS ly@@4) d0@@4 d1@@4))
)) (|$Eq#_module.Cl| ($LS ly@@4) d0@@4 d1@@4))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (|$Eq#_module.Cl| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (!  (=> (forall ((k@@1 Int) ) (!  (=> (<= 0 k@@1) (|$PrefixEq#_module.ClEnv| (|ORD#FromNat| k@@1) ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (|$PrefixEq#_module.ClEnv| (|ORD#FromNat| k@@1) ($LS ly@@5) d0@@5 d1@@5))
)) (|$Eq#_module.ClEnv| ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( (|$Eq#_module.ClEnv| ($LS ly@@5) d0@@5 d1@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| Int) (|u#0| T@U) (|v#0| T@U) ) (!  (=> (or (|_module.__default.ValBelow_h#canCall| (LitInt |_k#0|) |u#0| |v#0|) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0|) ($Is DatatypeTypeType |u#0| Tclass._module.Val)) ($Is DatatypeTypeType |v#0| Tclass._module.Val)))) (and (=> (< 0 |_k#0|) (and (=> (_module.Val.ValConst_q |u#0|) (=> (_module.Val.ValConst_q |v#0|) (and (|$IsA#_module.Val| |u#0|) (|$IsA#_module.Val| |v#0|)))) (=> (not (and (and (_module.Val.ValConst_q |u#0|) (_module.Val.ValConst_q |v#0|)) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0| |v#0|))) (=> (_module.Val.ValCl_q |u#0|) (=> (_module.Val.ValCl_q |v#0|) (and (and (and (|$IsA#_module.LambdaAbs| (_module.Cl.abs (_module.Val.cl |u#0|))) (|$IsA#_module.LambdaAbs| (_module.Cl.abs (_module.Val.cl |v#0|)))) (and (_module.Cl.Closure_q (_module.Val.cl |u#0|)) (_module.Cl.Closure_q (_module.Val.cl |v#0|)))) (=> (|_module.LambdaAbs#Equal| (_module.Cl.abs (_module.Val.cl |u#0|)) (_module.Cl.abs (_module.Val.cl |v#0|))) (and (and (_module.Cl.Closure_q (_module.Val.cl |u#0|)) (_module.Cl.Closure_q (_module.Val.cl |v#0|))) (|_module.__default.ClEnvBelow_h#canCall| (- |_k#0| 1) (_module.Cl.env (_module.Val.cl |u#0|)) (_module.Cl.env (_module.Val.cl |v#0|))))))))))) (= (_module.__default.ValBelow_h ($LS $ly) (LitInt |_k#0|) |u#0| |v#0|)  (=> (< 0 |_k#0|) (or (and (and (_module.Val.ValConst_q |u#0|) (_module.Val.ValConst_q |v#0|)) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0| |v#0|)) (and (and (and (_module.Val.ValCl_q |u#0|) (_module.Val.ValCl_q |v#0|)) (|_module.LambdaAbs#Equal| (_module.Cl.abs (_module.Val.cl |u#0|)) (_module.Cl.abs (_module.Val.cl |v#0|)))) (_module.__default.ClEnvBelow_h ($LS $LZ) (- |_k#0| 1) (_module.Cl.env (_module.Val.cl |u#0|)) (_module.Cl.env (_module.Val.cl |v#0|)))))))))
 :qid |KozenSilvadfy.182:20|
 :weight 3
 :skolemid |728|
 :pattern ( (_module.__default.ValBelow_h ($LS $ly) (LitInt |_k#0|) |u#0| |v#0|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass._module.LambdaAbs) (_module.LambdaAbs.Fun_q d@@2))
 :qid |unknown.0:0|
 :skolemid |971|
 :pattern ( (_module.LambdaAbs.Fun_q d@@2) ($Is DatatypeTypeType d@@2 Tclass._module.LambdaAbs))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Cl) (_module.Cl.Closure_q d@@3))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (_module.Cl.Closure_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Cl))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.ClEnv) (_module.ClEnv.ClEnvironment_q d@@4))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.ClEnv))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.Term#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( (|_module.Term#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|_module.LambdaAbs#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |973|
 :pattern ( (|_module.LambdaAbs#Equal| a@@3 b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|_module.ConstOrAbs#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( (|_module.ConstOrAbs#Equal| a@@4 b@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| Int) (|u#0@@0| T@U) (|v#0@@0| T@U) ) (!  (=> (or (|_module.__default.ValBelow_h#canCall| (LitInt |_k#0@@0|) (Lit DatatypeTypeType |u#0@@0|) (Lit DatatypeTypeType |v#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@0|) ($Is DatatypeTypeType |u#0@@0| Tclass._module.Val)) ($Is DatatypeTypeType |v#0@@0| Tclass._module.Val)))) (and (=> (< 0 |_k#0@@0|) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Val.ValConst_q (Lit DatatypeTypeType |u#0@@0|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Val.ValConst_q (Lit DatatypeTypeType |v#0@@0|))))) (and (|$IsA#_module.Val| (Lit DatatypeTypeType |u#0@@0|)) (|$IsA#_module.Val| (Lit DatatypeTypeType |v#0@@0|))))) (=> (not (and (and (_module.Val.ValConst_q (Lit DatatypeTypeType |u#0@@0|)) (_module.Val.ValConst_q (Lit DatatypeTypeType |v#0@@0|))) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0@@0| |v#0@@0|))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Val.ValCl_q (Lit DatatypeTypeType |u#0@@0|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Val.ValCl_q (Lit DatatypeTypeType |v#0@@0|))))) (and (and (and (|$IsA#_module.LambdaAbs| (Lit DatatypeTypeType (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|)))))) (|$IsA#_module.LambdaAbs| (Lit DatatypeTypeType (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|))))))) (and (_module.Cl.Closure_q (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|)))) (_module.Cl.Closure_q (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|)))))) (=> (|_module.LambdaAbs#Equal| (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|)))) (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|))))) (and (and (_module.Cl.Closure_q (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|)))) (_module.Cl.Closure_q (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|))))) (|_module.__default.ClEnvBelow_h#canCall| (- |_k#0@@0| 1) (Lit DatatypeTypeType (_module.Cl.env (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|))))) (Lit DatatypeTypeType (_module.Cl.env (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|)))))))))))))) (= (_module.__default.ValBelow_h ($LS $ly@@0) (LitInt |_k#0@@0|) (Lit DatatypeTypeType |u#0@@0|) (Lit DatatypeTypeType |v#0@@0|))  (=> (< 0 |_k#0@@0|) (or (and (and (_module.Val.ValConst_q (Lit DatatypeTypeType |u#0@@0|)) (_module.Val.ValConst_q (Lit DatatypeTypeType |v#0@@0|))) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0@@0| |v#0@@0|)) (and (and (and (_module.Val.ValCl_q (Lit DatatypeTypeType |u#0@@0|)) (_module.Val.ValCl_q (Lit DatatypeTypeType |v#0@@0|))) (|_module.LambdaAbs#Equal| (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|)))) (_module.Cl.abs (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|)))))) (_module.__default.ClEnvBelow_h ($LS $LZ) (- |_k#0@@0| 1) (Lit DatatypeTypeType (_module.Cl.env (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |u#0@@0|))))) (Lit DatatypeTypeType (_module.Cl.env (Lit DatatypeTypeType (_module.Val.cl (Lit DatatypeTypeType |v#0@@0|))))))))))))
 :qid |KozenSilvadfy.182:20|
 :weight 3
 :skolemid |729|
 :pattern ( (_module.__default.ValBelow_h ($LS $ly@@0) (LitInt |_k#0@@0|) (Lit DatatypeTypeType |u#0@@0|) (Lit DatatypeTypeType |v#0@@0|)))
))))
(assert (forall ((k@@2 T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) (m@@1 T@U) ) (!  (=> (and (|ORD#Less| k@@2 m@@1) (|$PrefixEq#_module.Val| m@@1 ($LS ly@@6) d0@@6 d1@@6)) (|$PrefixEq#_module.Val| k@@2 ($LS ly@@6) d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (|$PrefixEq#_module.Val| k@@2 ($LS ly@@6) d0@@6 d1@@6) (|$PrefixEq#_module.Val| m@@1 ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((k@@3 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) (m@@2 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@2) (|$PrefixEq#_module.Cl| m@@2 ($LS ly@@7) d0@@7 d1@@7)) (|$PrefixEq#_module.Cl| k@@3 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|$PrefixEq#_module.Cl| k@@3 ($LS ly@@7) d0@@7 d1@@7) (|$PrefixEq#_module.Cl| m@@2 ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((k@@4 T@U) (ly@@8 T@U) (d0@@8 T@U) (d1@@8 T@U) (m@@3 T@U) ) (!  (=> (and (|ORD#Less| k@@4 m@@3) (|$PrefixEq#_module.ClEnv| m@@3 ($LS ly@@8) d0@@8 d1@@8)) (|$PrefixEq#_module.ClEnv| k@@4 ($LS ly@@8) d0@@8 d1@@8))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (|$PrefixEq#_module.ClEnv| k@@4 ($LS ly@@8) d0@@8 d1@@8) (|$PrefixEq#_module.ClEnv| m@@3 ($LS ly@@8) d0@@8 d1@@8))
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
(assert (forall ((a@@5 T@U) (b@@5 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@5 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@5 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((ly@@9 T@U) (d0@@9 T@U) (d1@@9 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@9 Tclass._module.ClEnv) ($Is DatatypeTypeType d1@@9 Tclass._module.ClEnv)) (= (|$Eq#_module.ClEnv| ($LS ly@@9) d0@@9 d1@@9)  (and (and (_module.ClEnv.ClEnvironment_q d0@@9) (_module.ClEnv.ClEnvironment_q d1@@9)) (=> (and (_module.ClEnv.ClEnvironment_q d0@@9) (_module.ClEnv.ClEnvironment_q d1@@9)) (|Map#Equal| (_module.ClEnv.m d0@@9) (_module.ClEnv.m d1@@9))))))
 :qid |unknown.0:0|
 :skolemid |1035|
 :pattern ( (|$Eq#_module.ClEnv| ($LS ly@@9) d0@@9 d1@@9))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Subset| a@@6 b@@6) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@6 o@@0) (|Set#IsMember| b@@6 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@6 o@@0))
 :pattern ( (|Set#IsMember| b@@6 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@6 b@@6))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@5) (= (DatatypeCtorId d@@5) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.LambdaAbs.Fun_q d@@6) (= (DatatypeCtorId d@@6) |##_module.LambdaAbs.Fun|))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( (_module.LambdaAbs.Fun_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Val.ValConst_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Val.ValConst|))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( (_module.Val.ValConst_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.Val.ValCl_q d@@8) (= (DatatypeCtorId d@@8) |##_module.Val.ValCl|))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (_module.Val.ValCl_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.Cl.Closure_q d@@9) (= (DatatypeCtorId d@@9) |##_module.Cl.Closure|))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (_module.Cl.Closure_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.ClEnv.ClEnvironment_q d@@10) (= (DatatypeCtorId d@@10) |##_module.ClEnv.ClEnvironment|))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.ConstOrAbs.CC_q d@@11) (= (DatatypeCtorId d@@11) |##_module.ConstOrAbs.CC|))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.ConstOrAbs.CC_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_module.ConstOrAbs.AA_q d@@12) (= (DatatypeCtorId d@@12) |##_module.ConstOrAbs.AA|))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( (_module.ConstOrAbs.AA_q d@@12))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@1| Int) (|c#0| T@U) (|d#0| T@U) ) (!  (=> (or (|_module.__default.ClEnvBelow_h#canCall| (LitInt |_k#0@@1|) |c#0| |d#0|) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@1|) ($Is DatatypeTypeType |c#0| Tclass._module.ClEnv)) ($Is DatatypeTypeType |d#0| Tclass._module.ClEnv)))) (and (=> (< 0 |_k#0@@1|) (forall ((|y#4| T@U) ) (!  (=> ($IsBox |y#4| Tclass._module.Var) (and (_module.ClEnv.ClEnvironment_q |c#0|) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0|)) |y#4|) (and (_module.ClEnv.ClEnvironment_q |d#0|) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0|)) |y#4|) (and (and (_module.ClEnv.ClEnvironment_q |c#0|) (_module.ClEnv.ClEnvironment_q |d#0|)) (|_module.__default.ValBelow_h#canCall| (- |_k#0@@1| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0|)) |y#4|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0|)) |y#4|)))))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |708|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0|)) |y#4|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0|)) |y#4|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0|)) |y#4|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0|)) |y#4|))
))) (= (_module.__default.ClEnvBelow_h ($LS $ly@@1) (LitInt |_k#0@@1|) |c#0| |d#0|)  (=> (< 0 |_k#0@@1|) (forall ((|y#4@@0| T@U) ) (!  (=> ($IsBox |y#4@@0| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0|)) |y#4@@0|) (and (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0|)) |y#4@@0|) (_module.__default.ValBelow_h ($LS $LZ) (- |_k#0@@1| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0|)) |y#4@@0|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0|)) |y#4@@0|))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |707|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0|)) |y#4@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0|)) |y#4@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0|)) |y#4@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0|)) |y#4@@0|))
))))))
 :qid |KozenSilvadfy.176:20|
 :weight 3
 :skolemid |709|
 :pattern ( (_module.__default.ClEnvBelow_h ($LS $ly@@1) (LitInt |_k#0@@1|) |c#0| |d#0|))
))))
(assert (forall ((m@@4 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@4 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@13) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@13 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.LambdaAbs.Fun_q d@@14) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@14 (|#_module.LambdaAbs.Fun| |a#33#0#0| |a#33#1#0|))
 :qid |KozenSilvadfy.171:26|
 :skolemid |960|
)))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( (_module.LambdaAbs.Fun_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.Cl.Closure_q d@@15) (exists ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= d@@15 (|#_module.Cl.Closure| |a#48#0#0| |a#48#1#0|))
 :qid |KozenSilvadfy.173:25|
 :skolemid |1004|
)))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( (_module.Cl.Closure_q d@@15))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|_k#0@@2| Int) (|u#0@@1| T@U) (|v#0@@1| T@U) ) (!  (=> (or (|_module.__default.ValBelow_h#canCall| |_k#0@@2| |u#0@@1| |v#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@2|) ($Is DatatypeTypeType |u#0@@1| Tclass._module.Val)) ($Is DatatypeTypeType |v#0@@1| Tclass._module.Val)))) (and (=> (< 0 |_k#0@@2|) (and (=> (_module.Val.ValConst_q |u#0@@1|) (=> (_module.Val.ValConst_q |v#0@@1|) (and (|$IsA#_module.Val| |u#0@@1|) (|$IsA#_module.Val| |v#0@@1|)))) (=> (not (and (and (_module.Val.ValConst_q |u#0@@1|) (_module.Val.ValConst_q |v#0@@1|)) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0@@1| |v#0@@1|))) (=> (_module.Val.ValCl_q |u#0@@1|) (=> (_module.Val.ValCl_q |v#0@@1|) (and (and (and (|$IsA#_module.LambdaAbs| (_module.Cl.abs (_module.Val.cl |u#0@@1|))) (|$IsA#_module.LambdaAbs| (_module.Cl.abs (_module.Val.cl |v#0@@1|)))) (and (_module.Cl.Closure_q (_module.Val.cl |u#0@@1|)) (_module.Cl.Closure_q (_module.Val.cl |v#0@@1|)))) (=> (|_module.LambdaAbs#Equal| (_module.Cl.abs (_module.Val.cl |u#0@@1|)) (_module.Cl.abs (_module.Val.cl |v#0@@1|))) (and (and (_module.Cl.Closure_q (_module.Val.cl |u#0@@1|)) (_module.Cl.Closure_q (_module.Val.cl |v#0@@1|))) (|_module.__default.ClEnvBelow_h#canCall| (- |_k#0@@2| 1) (_module.Cl.env (_module.Val.cl |u#0@@1|)) (_module.Cl.env (_module.Val.cl |v#0@@1|))))))))))) (= (_module.__default.ValBelow_h ($LS $ly@@2) |_k#0@@2| |u#0@@1| |v#0@@1|)  (=> (< 0 |_k#0@@2|) (or (and (and (_module.Val.ValConst_q |u#0@@1|) (_module.Val.ValConst_q |v#0@@1|)) (|$Eq#_module.Val| ($LS ($LS $LZ)) |u#0@@1| |v#0@@1|)) (and (and (and (_module.Val.ValCl_q |u#0@@1|) (_module.Val.ValCl_q |v#0@@1|)) (|_module.LambdaAbs#Equal| (_module.Cl.abs (_module.Val.cl |u#0@@1|)) (_module.Cl.abs (_module.Val.cl |v#0@@1|)))) (_module.__default.ClEnvBelow_h ($LS $LZ) (- |_k#0@@2| 1) (_module.Cl.env (_module.Val.cl |u#0@@1|)) (_module.Cl.env (_module.Val.cl |v#0@@1|)))))))))
 :qid |KozenSilvadfy.182:20|
 :skolemid |727|
 :pattern ( (_module.__default.ValBelow_h ($LS $ly@@2) |_k#0@@2| |u#0@@1| |v#0@@1|))
))))
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
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.Val.ValConst_q d@@16) (exists ((|a#40#0#0| T@U) ) (! (= d@@16 (|#_module.Val.ValConst| |a#40#0#0|))
 :qid |KozenSilvadfy.172:27|
 :skolemid |976|
)))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (_module.Val.ValConst_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_module.Val.ValCl_q d@@17) (exists ((|a#44#0#0| T@U) ) (! (= d@@17 (|#_module.Val.ValCl| |a#44#0#0|))
 :qid |KozenSilvadfy.172:42|
 :skolemid |983|
)))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (_module.Val.ValCl_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (_module.ClEnv.ClEnvironment_q d@@18) (exists ((|a#53#0#0| T@U) ) (! (= d@@18 (|#_module.ClEnv.ClEnvironment| |a#53#0#0|))
 :qid |KozenSilvadfy.174:34|
 :skolemid |1027|
)))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( (_module.ClEnv.ClEnvironment_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.ConstOrAbs.CC_q d@@19) (exists ((|a#66#0#0| T@U) ) (! (= d@@19 (|#_module.ConstOrAbs.CC| |a#66#0#0|))
 :qid |KozenSilvadfy.206:26|
 :skolemid |1066|
)))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (_module.ConstOrAbs.CC_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.ConstOrAbs.AA_q d@@20) (exists ((|a#71#0#0| T@U) ) (! (= d@@20 (|#_module.ConstOrAbs.AA| |a#71#0#0|))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1074|
)))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( (_module.ConstOrAbs.AA_q d@@20))
)))
(assert (forall ((k@@5 T@U) (ly@@10 T@U) (d0@@10 T@U) (d1@@10 T@U) ) (!  (=> (or (not (= k@@5 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Val| k@@5 ($LS ly@@10) d0@@10 d1@@10) (|$PrefixEq#_module.Val| k@@5 ly@@10 d0@@10 d1@@10)))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( (|$PrefixEq#_module.Val| k@@5 ($LS ly@@10) d0@@10 d1@@10))
)))
(assert (forall ((k@@6 T@U) (ly@@11 T@U) (d0@@11 T@U) (d1@@11 T@U) ) (!  (=> (or (not (= k@@6 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Cl| k@@6 ($LS ly@@11) d0@@11 d1@@11) (|$PrefixEq#_module.Cl| k@@6 ly@@11 d0@@11 d1@@11)))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( (|$PrefixEq#_module.Cl| k@@6 ($LS ly@@11) d0@@11 d1@@11))
)))
(assert (forall ((k@@7 T@U) (ly@@12 T@U) (d0@@12 T@U) (d1@@12 T@U) ) (!  (=> (or (not (= k@@7 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.ClEnv| k@@7 ($LS ly@@12) d0@@12 d1@@12) (|$PrefixEq#_module.ClEnv| k@@7 ly@@12 d0@@12 d1@@12)))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( (|$PrefixEq#_module.ClEnv| k@@7 ($LS ly@@12) d0@@12 d1@@12))
)))
(assert (forall ((ly@@13 T@U) (d0@@13 T@U) (d1@@13 T@U) ) (! (= (|$Eq#_module.Val| ($LS ly@@13) d0@@13 d1@@13) (|$Eq#_module.Val| ly@@13 d0@@13 d1@@13))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (|$Eq#_module.Val| ($LS ly@@13) d0@@13 d1@@13))
)))
(assert (forall ((ly@@14 T@U) (d0@@14 T@U) (d1@@14 T@U) ) (! (= (|$Eq#_module.Cl| ($LS ly@@14) d0@@14 d1@@14) (|$Eq#_module.Cl| ly@@14 d0@@14 d1@@14))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (|$Eq#_module.Cl| ($LS ly@@14) d0@@14 d1@@14))
)))
(assert (forall ((ly@@15 T@U) (d0@@15 T@U) (d1@@15 T@U) ) (! (= (|$Eq#_module.ClEnv| ($LS ly@@15) d0@@15 d1@@15) (|$Eq#_module.ClEnv| ly@@15 d0@@15 d1@@15))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( (|$Eq#_module.ClEnv| ($LS ly@@15) d0@@15 d1@@15))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((k@@8 T@U) (ly@@16 T@U) (d0@@16 T@U) (d1@@16 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@16 Tclass._module.Val) ($Is DatatypeTypeType d1@@16 Tclass._module.Val)) (= (|$PrefixEq#_module.Val| k@@8 ($LS ly@@16) d0@@16 d1@@16)  (and (=> (< 0 (|ORD#Offset| k@@8)) (or (and (and (_module.Val.ValConst_q d0@@16) (_module.Val.ValConst_q d1@@16)) (=> (and (_module.Val.ValConst_q d0@@16) (_module.Val.ValConst_q d1@@16)) (= (_module.Val._h2 d0@@16) (_module.Val._h2 d1@@16)))) (and (and (_module.Val.ValCl_q d0@@16) (_module.Val.ValCl_q d1@@16)) (=> (and (_module.Val.ValCl_q d0@@16) (_module.Val.ValCl_q d1@@16)) (|$Eq#_module.Cl| ($LS ($LS $LZ)) (_module.Val.cl d0@@16) (_module.Val.cl d1@@16)))))) (=> (and (or (not (= k@@8 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@8) 0)) (|$Eq#_module.Val| ly@@16 d0@@16 d1@@16)))))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( (|$PrefixEq#_module.Val| k@@8 ($LS ly@@16) d0@@16 d1@@16))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#19| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|) ($Box DatatypeTypeType (ite (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#0@@0| |$w#0@@0|))) (|#_module.Val.ValCl| (|#_module.Cl.Closure| (_module.ConstOrAbs.abs ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#1@@0| |$w#0@@0|))) |l#2|)) (|#_module.Val.ValConst| (_module.ConstOrAbs.c ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType |l#3| |$w#0@@0|)))))))
 :qid |KozenSilvadfy.225:44|
 :skolemid |1089|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#19| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|))
)))
(assert (forall ((k@@9 T@U) (ly@@17 T@U) (d0@@17 T@U) (d1@@17 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@17 Tclass._module.Cl) ($Is DatatypeTypeType d1@@17 Tclass._module.Cl)) (= (|$PrefixEq#_module.Cl| k@@9 ($LS ly@@17) d0@@17 d1@@17)  (and (=> (< 0 (|ORD#Offset| k@@9)) (and (and (_module.Cl.Closure_q d0@@17) (_module.Cl.Closure_q d1@@17)) (=> (and (_module.Cl.Closure_q d0@@17) (_module.Cl.Closure_q d1@@17)) (and (|_module.LambdaAbs#Equal| (_module.Cl.abs d0@@17) (_module.Cl.abs d1@@17)) (|$Eq#_module.ClEnv| ($LS ($LS $LZ)) (_module.Cl.env d0@@17) (_module.Cl.env d1@@17)))))) (=> (and (or (not (= k@@9 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@9) 0)) (|$Eq#_module.Cl| ly@@17 d0@@17 d1@@17)))))
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( (|$PrefixEq#_module.Cl| k@@9 ($LS ly@@17) d0@@17 d1@@17))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Term) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Term)))
 :qid |unknown.0:0|
 :skolemid |928|
 :pattern ( ($IsBox bx@@6 Tclass._module.Term))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.LambdaAbs) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.LambdaAbs)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( ($IsBox bx@@7 Tclass._module.LambdaAbs))
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
(assert (forall ((ly@@18 T@U) (d0@@18 T@U) (d1@@18 T@U) ) (! (= (|$Eq#_module.Val| ($LS ly@@18) d0@@18 d1@@18) (forall ((k@@10 T@U) ) (! (|$PrefixEq#_module.Val| k@@10 ($LS ly@@18) d0@@18 d1@@18)
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( (|$PrefixEq#_module.Val| k@@10 ($LS ly@@18) d0@@18 d1@@18))
)))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( (|$Eq#_module.Val| ($LS ly@@18) d0@@18 d1@@18))
)))
(assert (forall ((ly@@19 T@U) (d0@@19 T@U) (d1@@19 T@U) ) (! (= (|$Eq#_module.Cl| ($LS ly@@19) d0@@19 d1@@19) (forall ((k@@11 T@U) ) (! (|$PrefixEq#_module.Cl| k@@11 ($LS ly@@19) d0@@19 d1@@19)
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (|$PrefixEq#_module.Cl| k@@11 ($LS ly@@19) d0@@19 d1@@19))
)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (|$Eq#_module.Cl| ($LS ly@@19) d0@@19 d1@@19))
)))
(assert (forall ((ly@@20 T@U) (d0@@20 T@U) (d1@@20 T@U) ) (! (= (|$Eq#_module.ClEnv| ($LS ly@@20) d0@@20 d1@@20) (forall ((k@@12 T@U) ) (! (|$PrefixEq#_module.ClEnv| k@@12 ($LS ly@@20) d0@@20 d1@@20)
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (|$PrefixEq#_module.ClEnv| k@@12 ($LS ly@@20) d0@@20 d1@@20))
)))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( (|$Eq#_module.ClEnv| ($LS ly@@20) d0@@20 d1@@20))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (_module.ConstOrAbs.AA_q a@@7) (_module.ConstOrAbs.AA_q b@@7)) (= (|_module.ConstOrAbs#Equal| a@@7 b@@7) (|_module.LambdaAbs#Equal| (_module.ConstOrAbs.abs a@@7) (_module.ConstOrAbs.abs b@@7))))
 :qid |unknown.0:0|
 :skolemid |1085|
 :pattern ( (|_module.ConstOrAbs#Equal| a@@7 b@@7) (_module.ConstOrAbs.AA_q a@@7))
 :pattern ( (|_module.ConstOrAbs#Equal| a@@7 b@@7) (_module.ConstOrAbs.AA_q b@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.ClosureConvertedMap#canCall| |s#0|) (and (< 2 $FunctionContextHeight) ($Is MapType |s#0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)))) (and (forall ((|y#0| T@U) ) (!  (=> ($IsBox |y#0| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| |s#0|) |y#0|) (=> (_module.ConstOrAbs.AA_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0|) |y#0|))) (|_module.__default.ClosureConvertedMap#canCall| |s#0|))))
 :qid |KozenSilvadfy.225:21|
 :skolemid |779|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0|) |y#0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0|) |y#0|))
)) (= (_module.__default.ClosureConvertedMap ($LS $ly@@3) |s#0|) (|#_module.ClEnv.ClEnvironment| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#18| Tclass._module.Var (|Map#Domain| |s#0|))) (|lambda#19| (|Map#Elements| |s#0|) (|Map#Elements| |s#0|) (_module.__default.ClosureConvertedMap $ly@@3 |s#0|) (|Map#Elements| |s#0|)) (TMap Tclass._module.Var Tclass._module.Val))))))
 :qid |KozenSilvadfy.220:16|
 :skolemid |780|
 :pattern ( (_module.__default.ClosureConvertedMap ($LS $ly@@3) |s#0|))
))))
(assert (forall ((m@@5 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@5 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@5) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@5) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@5) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@5 |m'|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@3| Int) (|c#0@@0| T@U) (|d#0@@0| T@U) ) (!  (=> (or (|_module.__default.ClEnvBelow_h#canCall| |_k#0@@3| |c#0@@0| |d#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@3|) ($Is DatatypeTypeType |c#0@@0| Tclass._module.ClEnv)) ($Is DatatypeTypeType |d#0@@0| Tclass._module.ClEnv)))) (and (=> (< 0 |_k#0@@3|) (forall ((|y#3| T@U) ) (!  (=> ($IsBox |y#3| Tclass._module.Var) (and (_module.ClEnv.ClEnvironment_q |c#0@@0|) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@0|)) |y#3|) (and (_module.ClEnv.ClEnvironment_q |d#0@@0|) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@0|)) |y#3|) (and (and (_module.ClEnv.ClEnvironment_q |c#0@@0|) (_module.ClEnv.ClEnvironment_q |d#0@@0|)) (|_module.__default.ValBelow_h#canCall| (- |_k#0@@3| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@0|)) |y#3|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@0|)) |y#3|)))))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |705|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@0|)) |y#3|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@0|)) |y#3|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@0|)) |y#3|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@0|)) |y#3|))
))) (= (_module.__default.ClEnvBelow_h ($LS $ly@@4) |_k#0@@3| |c#0@@0| |d#0@@0|)  (=> (< 0 |_k#0@@3|) (forall ((|y#3@@0| T@U) ) (!  (=> ($IsBox |y#3@@0| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@0|)) |y#3@@0|) (and (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@0|)) |y#3@@0|) (_module.__default.ValBelow_h ($LS $LZ) (- |_k#0@@3| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@0|)) |y#3@@0|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@0|)) |y#3@@0|))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |704|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@0|)) |y#3@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@0|)) |y#3@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@0|)) |y#3@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@0|)) |y#3@@0|))
))))))
 :qid |KozenSilvadfy.176:20|
 :skolemid |706|
 :pattern ( (_module.__default.ClEnvBelow_h ($LS $ly@@4) |_k#0@@3| |c#0@@0| |d#0@@0|))
))))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (! (= (|_module.LambdaAbs#Equal| a@@8 b@@8)  (and (= (_module.LambdaAbs.v a@@8) (_module.LambdaAbs.v b@@8)) (|_module.Term#Equal| (_module.LambdaAbs.body a@@8) (_module.LambdaAbs.body b@@8))))
 :qid |unknown.0:0|
 :skolemid |972|
 :pattern ( (|_module.LambdaAbs#Equal| a@@8 b@@8))
)))
(assert (forall ((ly@@21 T@U) (d0@@21 T@U) (d1@@21 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@21 Tclass._module.Cl) ($Is DatatypeTypeType d1@@21 Tclass._module.Cl)) (= (|$Eq#_module.Cl| ($LS ly@@21) d0@@21 d1@@21)  (and (and (_module.Cl.Closure_q d0@@21) (_module.Cl.Closure_q d1@@21)) (=> (and (_module.Cl.Closure_q d0@@21) (_module.Cl.Closure_q d1@@21)) (and (|_module.LambdaAbs#Equal| (_module.Cl.abs d0@@21) (_module.Cl.abs d1@@21)) (|$Eq#_module.ClEnv| ($LS ($LS $LZ)) (_module.Cl.env d0@@21) (_module.Cl.env d1@@21)))))))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (|$Eq#_module.Cl| ($LS ly@@21) d0@@21 d1@@21))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (|$IsA#_module.Val| d@@21) (or (_module.Val.ValConst_q d@@21) (_module.Val.ValCl_q d@@21)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (|$IsA#_module.Val| d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (|$IsA#_module.ConstOrAbs| d@@22) (or (_module.ConstOrAbs.CC_q d@@22) (_module.ConstOrAbs.AA_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( (|$IsA#_module.ConstOrAbs| d@@22))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@1 p@@0) (= o@@1 p@@0)) (|ORD#Less| p@@0 o@@1))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@1 p@@0) (|ORD#Less| p@@0 o@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@4| Int) (|c#0@@1| T@U) (|d#0@@1| T@U) ) (!  (=> (or (|_module.__default.ClEnvBelow_h#canCall| (LitInt |_k#0@@4|) (Lit DatatypeTypeType |c#0@@1|) (Lit DatatypeTypeType |d#0@@1|)) (and (< 3 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@4|) ($Is DatatypeTypeType |c#0@@1| Tclass._module.ClEnv)) ($Is DatatypeTypeType |d#0@@1| Tclass._module.ClEnv)))) (and (=> (< 0 |_k#0@@4|) (forall ((|y#5| T@U) ) (!  (=> ($IsBox |y#5| Tclass._module.Var) (and (_module.ClEnv.ClEnvironment_q (Lit DatatypeTypeType |c#0@@1|)) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (Lit DatatypeTypeType |c#0@@1|))) |y#5|) (and (_module.ClEnv.ClEnvironment_q (Lit DatatypeTypeType |d#0@@1|)) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (Lit DatatypeTypeType |d#0@@1|))) |y#5|) (and (and (_module.ClEnv.ClEnvironment_q (Lit DatatypeTypeType |c#0@@1|)) (_module.ClEnv.ClEnvironment_q (Lit DatatypeTypeType |d#0@@1|))) (|_module.__default.ValBelow_h#canCall| (- |_k#0@@4| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (_module.ClEnv.m (Lit DatatypeTypeType |c#0@@1|)))) |y#5|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (_module.ClEnv.m (Lit DatatypeTypeType |d#0@@1|)))) |y#5|)))))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |711|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@1|)) |y#5|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@1|)) |y#5|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@1|)) |y#5|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@1|)) |y#5|))
))) (= (_module.__default.ClEnvBelow_h ($LS $ly@@5) (LitInt |_k#0@@4|) (Lit DatatypeTypeType |c#0@@1|) (Lit DatatypeTypeType |d#0@@1|))  (=> (< 0 |_k#0@@4|) (forall ((|y#5@@0| T@U) ) (!  (=> ($IsBox |y#5@@0| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (Lit DatatypeTypeType |c#0@@1|))) |y#5@@0|) (and (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (Lit DatatypeTypeType |d#0@@1|))) |y#5@@0|) (_module.__default.ValBelow_h ($LS $LZ) (- |_k#0@@4| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (_module.ClEnv.m (Lit DatatypeTypeType |c#0@@1|)))) |y#5@@0|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (_module.ClEnv.m (Lit DatatypeTypeType |d#0@@1|)))) |y#5@@0|))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |710|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |d#0@@1|)) |y#5@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m |c#0@@1|)) |y#5@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |d#0@@1|)) |y#5@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m |c#0@@1|)) |y#5@@0|))
))))))
 :qid |KozenSilvadfy.176:20|
 :weight 3
 :skolemid |712|
 :pattern ( (_module.__default.ClEnvBelow_h ($LS $ly@@5) (LitInt |_k#0@@4|) (Lit DatatypeTypeType |c#0@@1|) (Lit DatatypeTypeType |d#0@@1|)))
))))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@9 b@@9) (= a@@9 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@9 b@@9))
)))
(assert (forall ((m@@6 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@6 |m'@@0|) (= m@@6 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@6 |m'@@0|))
)))
(assert (forall ((|a#54#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ClEnv.ClEnvironment| |a#54#0#0|) Tclass._module.ClEnv) ($Is MapType |a#54#0#0| (TMap Tclass._module.Var Tclass._module.Val)))
 :qid |KozenSilvadfy.174:34|
 :skolemid |1029|
 :pattern ( ($Is DatatypeTypeType (|#_module.ClEnv.ClEnvironment| |a#54#0#0|) Tclass._module.ClEnv))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> ($Is DatatypeTypeType d@@23 Tclass._module.Val) (or (_module.Val.ValConst_q d@@23) (_module.Val.ValCl_q d@@23)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (_module.Val.ValCl_q d@@23) ($Is DatatypeTypeType d@@23 Tclass._module.Val))
 :pattern ( (_module.Val.ValConst_q d@@23) ($Is DatatypeTypeType d@@23 Tclass._module.Val))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> ($Is DatatypeTypeType d@@24 Tclass._module.ConstOrAbs) (or (_module.ConstOrAbs.CC_q d@@24) (_module.ConstOrAbs.AA_q d@@24)))
 :qid |unknown.0:0|
 :skolemid |1083|
 :pattern ( (_module.ConstOrAbs.AA_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.ConstOrAbs))
 :pattern ( (_module.ConstOrAbs.CC_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.ConstOrAbs))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@5| Int) (|c#0@@2| T@U) (|d#0@@2| T@U) ) (! (= (_module.__default.ClEnvBelow_h ($LS $ly@@6) |_k#0@@5| |c#0@@2| |d#0@@2|) (_module.__default.ClEnvBelow_h $ly@@6 |_k#0@@5| |c#0@@2| |d#0@@2|))
 :qid |KozenSilvadfy.176:20|
 :skolemid |700|
 :pattern ( (_module.__default.ClEnvBelow_h ($LS $ly@@6) |_k#0@@5| |c#0@@2| |d#0@@2|))
)))
(assert (forall (($ly@@7 T@U) (|_k#0@@6| Int) (|u#0@@2| T@U) (|v#0@@2| T@U) ) (! (= (_module.__default.ValBelow_h ($LS $ly@@7) |_k#0@@6| |u#0@@2| |v#0@@2|) (_module.__default.ValBelow_h $ly@@7 |_k#0@@6| |u#0@@2| |v#0@@2|))
 :qid |KozenSilvadfy.182:20|
 :skolemid |723|
 :pattern ( (_module.__default.ValBelow_h ($LS $ly@@7) |_k#0@@6| |u#0@@2| |v#0@@2|))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (|ORD#Offset| o@@2))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@2))
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
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@2 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@1))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@3))
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
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.LambdaAbs.Fun| |a#32#0#0| |a#32#1#0|)) |##_module.LambdaAbs.Fun|)
 :qid |KozenSilvadfy.171:26|
 :skolemid |958|
 :pattern ( (|#_module.LambdaAbs.Fun| |a#32#0#0| |a#32#1#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (= (_module.LambdaAbs.v (|#_module.LambdaAbs.Fun| |a#36#0#0| |a#36#1#0|)) |a#36#0#0|)
 :qid |KozenSilvadfy.171:26|
 :skolemid |966|
 :pattern ( (|#_module.LambdaAbs.Fun| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= (_module.LambdaAbs.body (|#_module.LambdaAbs.Fun| |a#37#0#0| |a#37#1#0|)) |a#37#1#0|)
 :qid |KozenSilvadfy.171:26|
 :skolemid |967|
 :pattern ( (|#_module.LambdaAbs.Fun| |a#37#0#0| |a#37#1#0|))
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
(assert (forall ((k@@13 T@U) (ly@@22 T@U) (d0@@22 T@U) (d1@@22 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@22 Tclass._module.ClEnv) ($Is DatatypeTypeType d1@@22 Tclass._module.ClEnv)) (= (|$PrefixEq#_module.ClEnv| k@@13 ($LS ly@@22) d0@@22 d1@@22)  (and (=> (< 0 (|ORD#Offset| k@@13)) (and (and (_module.ClEnv.ClEnvironment_q d0@@22) (_module.ClEnv.ClEnvironment_q d1@@22)) (=> (and (_module.ClEnv.ClEnvironment_q d0@@22) (_module.ClEnv.ClEnvironment_q d1@@22)) (|Map#Equal| (_module.ClEnv.m d0@@22) (_module.ClEnv.m d1@@22))))) (=> (and (or (not (= k@@13 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@13) 0)) (|$Eq#_module.ClEnv| ly@@22 d0@@22 d1@@22)))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( (|$PrefixEq#_module.ClEnv| k@@13 ($LS ly@@22) d0@@22 d1@@22))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@2) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@9) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@9) t1@@1 h@@2) ($IsAllocBox bx@@9 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@9))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@0| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.CapsuleEnvironmentBelow#canCall| |s#0@@0| |t#0|) (and (< 2 $FunctionContextHeight) (and ($Is MapType |s#0@@0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)) ($Is MapType |t#0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs))))) (and (forall ((|y#0@@0| T@U) ) (!  (=> ($IsBox |y#0@@0| Tclass._module.Var) (=> (=> (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@0|) (|Set#IsMember| (|Map#Domain| |t#0|) |y#0@@0|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@0|) (and (|$IsA#_module.ConstOrAbs| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@0|) |y#0@@0|))) (|$IsA#_module.ConstOrAbs| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0|) |y#0@@0|)))))))
 :qid |KozenSilvadfy.230:10|
 :skolemid |786|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0|) |y#0@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@0|) |y#0@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#0|) |y#0@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@0|))
)) (= (_module.__default.CapsuleEnvironmentBelow |s#0@@0| |t#0|) (forall ((|y#0@@1| T@U) ) (!  (=> ($IsBox |y#0@@1| Tclass._module.Var) (and (=> (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@1|) (|Set#IsMember| (|Map#Domain| |t#0|) |y#0@@1|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@1|) (|_module.ConstOrAbs#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@0|) |y#0@@1|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0|) |y#0@@1|))))))
 :qid |KozenSilvadfy.230:10|
 :skolemid |785|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0|) |y#0@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@0|) |y#0@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#0|) |y#0@@1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@0|) |y#0@@1|))
)))))
 :qid |KozenSilvadfy.228:41|
 :skolemid |787|
 :pattern ( (_module.__default.CapsuleEnvironmentBelow |s#0@@0| |t#0|))
))))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@3 p@@1) (or (not (= o@@3 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@3) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@3 p@@1))) (=> (and (|ORD#IsNat| o@@3) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@3 p@@1) (< (|ORD#Offset| o@@3) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@3 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@3)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@3 p@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.ClosureConvertedMap#canCall| |s#0@@1|) (and (< 2 $FunctionContextHeight) ($Is MapType |s#0@@1| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)))) ($Is DatatypeTypeType (_module.__default.ClosureConvertedMap $ly@@8 |s#0@@1|) Tclass._module.ClEnv))
 :qid |KozenSilvadfy.220:16|
 :skolemid |777|
 :pattern ( (_module.__default.ClosureConvertedMap $ly@@8 |s#0@@1|))
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
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (< (DtRank |a#38#1#0|) (DtRank (|#_module.LambdaAbs.Fun| |a#38#0#0| |a#38#1#0|)))
 :qid |KozenSilvadfy.171:26|
 :skolemid |968|
 :pattern ( (|#_module.LambdaAbs.Fun| |a#38#0#0| |a#38#1#0|))
)))
(assert (forall (($ly@@9 T@U) (|s#0@@2| T@U) ) (! (= (_module.__default.ClosureConvertedMap ($LS $ly@@9) |s#0@@2|) (_module.__default.ClosureConvertedMap $ly@@9 |s#0@@2|))
 :qid |KozenSilvadfy.220:16|
 :skolemid |775|
 :pattern ( (_module.__default.ClosureConvertedMap ($LS $ly@@9) |s#0@@2|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@10 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@10 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#75#0#0| T@U) ) (! (< (DtRank |a#75#0#0|) (DtRank (|#_module.ConstOrAbs.AA| |a#75#0#0|)))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1080|
 :pattern ( (|#_module.ConstOrAbs.AA| |a#75#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@7 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@7 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@8 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@8 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@8 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@9 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@9 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@9 y0@@1 y1@@0)))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@10 T@U) (|c#0@@3| T@U) (|d#0@@3| T@U) (|_k#0@@7| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |c#0@@3| Tclass._module.ClEnv) ($Is DatatypeTypeType |d#0@@3| Tclass._module.ClEnv)) (= |_k#0@@7| 0)) (_module.__default.ClEnvBelow_h $ly@@10 |_k#0@@7| |c#0@@3| |d#0@@3|))
 :qid |KozenSilvadfy.176:20|
 :skolemid |694|
 :pattern ( (_module.__default.ClEnvBelow_h $ly@@10 |_k#0@@7| |c#0@@3| |d#0@@3|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|u#0@@3| T@U) (|v#0@@3| T@U) (|_k#0@@8| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |u#0@@3| Tclass._module.Val) ($Is DatatypeTypeType |v#0@@3| Tclass._module.Val)) (= |_k#0@@8| 0)) (_module.__default.ValBelow_h $ly@@11 |_k#0@@8| |u#0@@3| |v#0@@3|))
 :qid |KozenSilvadfy.182:20|
 :skolemid |721|
 :pattern ( (_module.__default.ValBelow_h $ly@@11 |_k#0@@8| |u#0@@3| |v#0@@3|))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@14 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@10) k@@14)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@10))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@11) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@11))
)))
(assert (forall ((m@@12 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@12) item)  (and (|Set#IsMember| (|Map#Domain| m@@12) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@12) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@12) item))
)))
(assert (forall ((m@@13 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@13) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@13) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@13) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@13) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@13) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@13) v@@6))
)))
(assert (forall ((d@@25 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@25)) (DtRank d@@25))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@25)))
)))
(assert (forall ((bx@@12 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@9)))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@5 t1@@3)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@13) t1@@3) ($IsBox bx@@13 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((o@@4 T@U) ) (!  (=> (|ORD#IsNat| o@@4) (= o@@4 (|ORD#FromNat| (|ORD#Offset| o@@4))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@4))
 :pattern ( (|ORD#IsNat| o@@4))
)))
(assert (forall ((d@@26 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@26 Tclass._module.Term)) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.Term $h@@1))
 :qid |unknown.0:0|
 :skolemid |951|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass._module.Term $h@@1))
)))
(assert (forall ((d@@27 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@27 Tclass._module.LambdaAbs)) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.LambdaAbs $h@@2))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass._module.LambdaAbs $h@@2))
)))
(assert (forall ((d@@28 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@28 Tclass._module.Val)) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.Val $h@@3))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass._module.Val $h@@3))
)))
(assert (forall ((d@@29 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@29 Tclass._module.Cl)) ($IsAlloc DatatypeTypeType d@@29 Tclass._module.Cl $h@@4))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 Tclass._module.Cl $h@@4))
)))
(assert (forall ((d@@30 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@30 Tclass._module.ClEnv)) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.ClEnv $h@@5))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( ($IsAlloc DatatypeTypeType d@@30 Tclass._module.ClEnv $h@@5))
)))
(assert (forall ((d@@31 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@31 Tclass._module.ConstOrAbs)) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.ConstOrAbs $h@@6))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc DatatypeTypeType d@@31 Tclass._module.ConstOrAbs $h@@6))
)))
(assert (= (Tag Tclass._module.ClEnv) Tagclass._module.ClEnv))
(assert (= (TagFamily Tclass._module.ClEnv) tytagFamily$ClEnv))
(assert (= (Tag Tclass._module.Val) Tagclass._module.Val))
(assert (= (TagFamily Tclass._module.Val) tytagFamily$Val))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass._module.ConstOrAbs) Tagclass._module.ConstOrAbs))
(assert (= (TagFamily Tclass._module.ConstOrAbs) tytagFamily$ConstOrAbs))
(assert (= (Tag Tclass._module.Term) Tagclass._module.Term))
(assert (= (TagFamily Tclass._module.Term) tytagFamily$Term))
(assert (= (Tag Tclass._module.LambdaAbs) Tagclass._module.LambdaAbs))
(assert (= (TagFamily Tclass._module.LambdaAbs) tytagFamily$LambdaAbs))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@10 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((d@@32 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@32) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._0 d@@32) |_System._tuple#2$T0@@6| $h@@7))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@32) |_System._tuple#2$T0@@6| $h@@7))
)))
(assert (forall ((d@@33 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@33) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@33 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._1 d@@33) |_System._tuple#2$T1@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@33) |_System._tuple#2$T1@@7| $h@@8))
)))
(assert (forall ((d@@34 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.LambdaAbs.Fun_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass._module.LambdaAbs $h@@9))) ($IsAllocBox (_module.LambdaAbs.v d@@34) Tclass._module.Var $h@@9))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($IsAllocBox (_module.LambdaAbs.v d@@34) Tclass._module.Var $h@@9))
)))
(assert (forall ((d@@35 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.LambdaAbs.Fun_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass._module.LambdaAbs $h@@10))) ($IsAlloc DatatypeTypeType (_module.LambdaAbs.body d@@35) Tclass._module.Term $h@@10))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.LambdaAbs.body d@@35) Tclass._module.Term $h@@10))
)))
(assert (forall ((d@@36 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Val.ValConst_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass._module.Val $h@@11))) ($IsAllocBox (_module.Val._h2 d@@36) Tclass._module.Const $h@@11))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($IsAllocBox (_module.Val._h2 d@@36) Tclass._module.Const $h@@11))
)))
(assert (forall ((d@@37 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Val.ValCl_q d@@37) ($IsAlloc DatatypeTypeType d@@37 Tclass._module.Val $h@@12))) ($IsAlloc DatatypeTypeType (_module.Val.cl d@@37) Tclass._module.Cl $h@@12))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Val.cl d@@37) Tclass._module.Cl $h@@12))
)))
(assert (forall ((d@@38 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Cl.Closure_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass._module.Cl $h@@13))) ($IsAlloc DatatypeTypeType (_module.Cl.abs d@@38) Tclass._module.LambdaAbs $h@@13))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Cl.abs d@@38) Tclass._module.LambdaAbs $h@@13))
)))
(assert (forall ((d@@39 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Cl.Closure_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass._module.Cl $h@@14))) ($IsAlloc DatatypeTypeType (_module.Cl.env d@@39) Tclass._module.ClEnv $h@@14))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Cl.env d@@39) Tclass._module.ClEnv $h@@14))
)))
(assert (forall ((d@@40 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.ConstOrAbs.CC_q d@@40) ($IsAlloc DatatypeTypeType d@@40 Tclass._module.ConstOrAbs $h@@15))) ($IsAllocBox (_module.ConstOrAbs.c d@@40) Tclass._module.Const $h@@15))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( ($IsAllocBox (_module.ConstOrAbs.c d@@40) Tclass._module.Const $h@@15))
)))
(assert (forall ((d@@41 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.ConstOrAbs.AA_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass._module.ConstOrAbs $h@@16))) ($IsAlloc DatatypeTypeType (_module.ConstOrAbs.abs d@@41) Tclass._module.LambdaAbs $h@@16))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.ConstOrAbs.abs d@@41) Tclass._module.LambdaAbs $h@@16))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@3| T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.CapsuleEnvironmentBelow#canCall| (Lit MapType |s#0@@3|) (Lit MapType |t#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is MapType |s#0@@3| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)) ($Is MapType |t#0@@0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs))))) (and (forall ((|y#1| T@U) ) (!  (=> ($IsBox |y#1| Tclass._module.Var) (=> (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1|) (|Set#IsMember| (|Map#Domain| |t#0@@0|) |y#1|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1|) (and (|$IsA#_module.ConstOrAbs| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |s#0@@3|)) |y#1|))) (|$IsA#_module.ConstOrAbs| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |t#0@@0|)) |y#1|)))))))
 :qid |KozenSilvadfy.230:10|
 :skolemid |789|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0@@0|) |y#1|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@3|) |y#1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#0@@0|) |y#1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1|))
)) (= (_module.__default.CapsuleEnvironmentBelow (Lit MapType |s#0@@3|) (Lit MapType |t#0@@0|)) (forall ((|y#1@@0| T@U) ) (!  (=> ($IsBox |y#1@@0| Tclass._module.Var) (and (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1@@0|) (|Set#IsMember| (|Map#Domain| |t#0@@0|) |y#1@@0|)) (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1@@0|) (|_module.ConstOrAbs#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |s#0@@3|)) |y#1@@0|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |t#0@@0|)) |y#1@@0|))))))
 :qid |KozenSilvadfy.230:10|
 :skolemid |788|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#0@@0|) |y#1@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@3|) |y#1@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#0@@0|) |y#1@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@3|) |y#1@@0|))
)))))
 :qid |KozenSilvadfy.228:41|
 :weight 3
 :skolemid |790|
 :pattern ( (_module.__default.CapsuleEnvironmentBelow (Lit MapType |s#0@@3|) (Lit MapType |t#0@@0|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (= (|#_module.LambdaAbs.Fun| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)) (Lit DatatypeTypeType (|#_module.LambdaAbs.Fun| |a#35#0#0| |a#35#1#0|)))
 :qid |KozenSilvadfy.171:26|
 :skolemid |965|
 :pattern ( (|#_module.LambdaAbs.Fun| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#68#0#0| T@U) ) (! (= (|#_module.ConstOrAbs.CC| (Lit BoxType |a#68#0#0|)) (Lit DatatypeTypeType (|#_module.ConstOrAbs.CC| |a#68#0#0|)))
 :qid |KozenSilvadfy.206:26|
 :skolemid |1070|
 :pattern ( (|#_module.ConstOrAbs.CC| (Lit BoxType |a#68#0#0|)))
)))
(assert (forall ((|a#73#0#0| T@U) ) (! (= (|#_module.ConstOrAbs.AA| (Lit DatatypeTypeType |a#73#0#0|)) (Lit DatatypeTypeType (|#_module.ConstOrAbs.AA| |a#73#0#0|)))
 :qid |KozenSilvadfy.206:41|
 :skolemid |1078|
 :pattern ( (|#_module.ConstOrAbs.AA| (Lit DatatypeTypeType |a#73#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((m@@14 T@U) ) (!  (or (= m@@14 |Map#Empty|) (exists ((k@@15 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@14) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@15 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@14))
)))
(assert (forall ((k@@16 T@U) (ly@@23 T@U) (d0@@23 T@U) (d1@@23 T@U) ) (!  (=> (= d0@@23 d1@@23) (|$PrefixEq#_module.Val| k@@16 ($LS ly@@23) d0@@23 d1@@23))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (|$PrefixEq#_module.Val| k@@16 ($LS ly@@23) d0@@23 d1@@23))
)))
(assert (forall ((k@@17 T@U) (ly@@24 T@U) (d0@@24 T@U) (d1@@24 T@U) ) (!  (=> (= d0@@24 d1@@24) (|$PrefixEq#_module.Cl| k@@17 ($LS ly@@24) d0@@24 d1@@24))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (|$PrefixEq#_module.Cl| k@@17 ($LS ly@@24) d0@@24 d1@@24))
)))
(assert (forall ((k@@18 T@U) (ly@@25 T@U) (d0@@25 T@U) (d1@@25 T@U) ) (!  (=> (= d0@@25 d1@@25) (|$PrefixEq#_module.ClEnv| k@@18 ($LS ly@@25) d0@@25 d1@@25))
 :qid |unknown.0:0|
 :skolemid |1045|
 :pattern ( (|$PrefixEq#_module.ClEnv| k@@18 ($LS ly@@25) d0@@25 d1@@25))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@9| () Int)
(declare-fun |s#1| () T@U)
(declare-fun |t#1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem5__ClosureConversion__Is__Monotone_h)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.ClEnvBelow_h#canCall| |_k#0@@9| (_module.__default.ClosureConvertedMap ($LS $LZ) |s#1|) (_module.__default.ClosureConvertedMap ($LS $LZ) |t#1|)) (or (_module.__default.ClEnvBelow_h ($LS $LZ) |_k#0@@9| (_module.__default.ClosureConvertedMap ($LS $LZ) |s#1|) (_module.__default.ClosureConvertedMap ($LS $LZ) |t#1|)) (=> (< 0 |_k#0@@9|) (forall ((|y#5@@1| T@U) ) (!  (=> ($IsBox |y#5@@1| Tclass._module.Var) (=> (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |s#1|))) |y#5@@1|) (and (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |t#1|))) |y#5@@1|) (_module.__default.ValBelow_h ($LS ($LS $LZ)) (- |_k#0@@9| 1) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |s#1|))) |y#5@@1|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |t#1|))) |y#5@@1|))))))
 :qid |KozenSilvadfy.180:10|
 :skolemid |806|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |t#1|))) |y#5@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |s#1|))) |y#5@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |t#1|))) |y#5@@1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.ClEnv.m (_module.__default.ClosureConvertedMap ($LS ($LS $LZ)) |s#1|))) |y#5@@1|))
))))))))
(let ((anon3_Else_correct  (=> (and (<= |_k#0@@9| 0) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct  (=> (and (< 0 |_k#0@@9|) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| Int) (|$ih#s0#0| T@U) (|$ih#t0#0| T@U) ) (!  (=> (and (and (and (and (<= (LitInt 0) |$ih#_k0#0|) ($Is MapType |$ih#s0#0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs))) ($Is MapType |$ih#t0#0| (TMap Tclass._module.Var Tclass._module.ConstOrAbs))) (_module.__default.CapsuleEnvironmentBelow |$ih#s0#0| |$ih#t0#0|)) (or (and (<= 0 |$ih#_k0#0|) (< |$ih#_k0#0| |_k#0@@9|)) (and (= |$ih#_k0#0| |_k#0@@9|) (or (and (|Set#Subset| (|Map#Domain| |$ih#s0#0|) (|Map#Domain| |s#1|)) (not (|Set#Subset| (|Map#Domain| |s#1|) (|Map#Domain| |$ih#s0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#s0#0|) (|Map#Domain| |s#1|)) (and (|Set#Subset| (|Map#Domain| |$ih#t0#0|) (|Map#Domain| |t#1|)) (not (|Set#Subset| (|Map#Domain| |t#1|) (|Map#Domain| |$ih#t0#0|))))))))) (_module.__default.ClEnvBelow_h ($LS $LZ) |$ih#_k0#0| (_module.__default.ClosureConvertedMap ($LS $LZ) |$ih#s0#0|) (_module.__default.ClosureConvertedMap ($LS $LZ) |$ih#t0#0|)))
 :qid |KozenSilvadfy.233:16|
 :skolemid |809|
 :pattern ( (_module.__default.ClEnvBelow_h ($LS $LZ) |$ih#_k0#0| (_module.__default.ClosureConvertedMap ($LS $LZ) |$ih#s0#0|) (_module.__default.ClosureConvertedMap ($LS $LZ) |$ih#t0#0|)))
)))) (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |_k#0@@9|)) (and ($Is MapType |s#1| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)) ($IsAlloc MapType |s#1| (TMap Tclass._module.Var Tclass._module.ConstOrAbs) $Heap))) (and (and (and ($Is MapType |t#1| (TMap Tclass._module.Var Tclass._module.ConstOrAbs)) ($IsAlloc MapType |t#1| (TMap Tclass._module.Var Tclass._module.ConstOrAbs) $Heap)) (= 4 $FunctionContextHeight)) (and (and (|_module.__default.CapsuleEnvironmentBelow#canCall| |s#1| |t#1|) (and (_module.__default.CapsuleEnvironmentBelow |s#1| |t#1|) (forall ((|y#4@@1| T@U) ) (!  (=> ($IsBox |y#4@@1| Tclass._module.Var) (and (=> (|Set#IsMember| (|Map#Domain| |s#1|) |y#4@@1|) (|Set#IsMember| (|Map#Domain| |t#1|) |y#4@@1|)) (=> (|Set#IsMember| (|Map#Domain| |s#1|) |y#4@@1|) (|_module.ConstOrAbs#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#1|) |y#4@@1|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#1|) |y#4@@1|))))))
 :qid |KozenSilvadfy.230:10|
 :skolemid |805|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |t#1|) |y#4@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#1|) |y#4@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#1|) |y#4@@1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#1|) |y#4@@1|))
)))) (= (ControlFlow 0 6) 5)))) anon0_correct)))
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
