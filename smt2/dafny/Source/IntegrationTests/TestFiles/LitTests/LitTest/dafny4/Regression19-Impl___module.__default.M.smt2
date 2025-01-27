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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.R () T@U)
(declare-fun |##_module.R.MakeR| () T@U)
(declare-fun |##_module.R.Other| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$R () T@U)
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
(declare-fun _module.__default.Contains5 (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |_module.__default.Contains5#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun _module.__default.ContainsNothingBut5 (T@U) Bool)
(declare-fun |_module.__default.ContainsNothingBut5#canCall| (T@U) Bool)
(declare-fun |_module.R#Equal| (T@U T@U) Bool)
(declare-fun _module.R.MakeR_q (T@U) Bool)
(declare-fun _module.R._h0 (T@U) Int)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.__default.YeahContains5 (T@U) Bool)
(declare-fun |_module.__default.YeahContains5#canCall| (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.R.Other| () T@U)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._module.R () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.__default.RIs5 (T@U) Bool)
(declare-fun |_module.__default.RIs5#canCall| (T@U) Bool)
(declare-fun _module.__default.ViaMapComprehension (T@U) Bool)
(declare-fun |_module.__default.ViaMapComprehension#canCall| (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U Int) T@U)
(declare-fun |lambda#13| (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.__default.LambdaTest (T@U) Bool)
(declare-fun |_module.__default.LambdaTest#canCall| (T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun _module.R.Other_q (T@U) Bool)
(declare-fun LayerTypeType () T@T)
(declare-fun |#_module.R.MakeR| (Int) T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |$IsA#_module.R| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.__default.ViaSetComprehension (T@U) Bool)
(declare-fun |_module.__default.ViaSetComprehension#canCall| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#16| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagMap alloc Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.R |##_module.R.MakeR| |##_module.R.Other| tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$R)
)
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (or (|_module.__default.Contains5#canCall| (Lit SetType |s#0|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0| (TSet TInt)))) (= (_module.__default.Contains5 (Lit SetType |s#0|)) (let ((|q#1| (LitInt 5)))
(|Set#IsMember| (Lit SetType |s#0|) ($Box intType (int_2_U |q#1|))))))
 :qid |Regression19dfy.26:27|
 :weight 3
 :skolemid |510|
 :pattern ( (_module.__default.Contains5 (Lit SetType |s#0|)))
))))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
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
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#q#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#0#heap#0| |$l#0#q#0|)) ($IsBox |$l#0#q#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |543|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#0#heap#0| |$l#0#q#0|))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.ContainsNothingBut5#canCall| (Lit SetType |s#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@0| (TSet TInt)))) (= (_module.__default.ContainsNothingBut5 (Lit SetType |s#0@@0|)) (forall ((|q#1@@0| Int) ) (!  (=> (|Set#IsMember| (Lit SetType |s#0@@0|) ($Box intType (int_2_U |q#1@@0|))) (= |q#1@@0| (LitInt 5)))
 :qid |Regression19dfy.6:10|
 :skolemid |483|
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |q#1@@0|))))
))))
 :qid |Regression19dfy.4:37|
 :weight 3
 :skolemid |484|
 :pattern ( (_module.__default.ContainsNothingBut5 (Lit SetType |s#0@@0|)))
))))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (and (_module.R.MakeR_q a@@2) (_module.R.MakeR_q b)) (= (|_module.R#Equal| a@@2 b) (= (_module.R._h0 a@@2) (_module.R._h0 b))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (|_module.R#Equal| a@@2 b) (_module.R.MakeR_q a@@2))
 :pattern ( (|_module.R#Equal| a@@2 b) (_module.R.MakeR_q b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@3 b@@0 t)) a@@3)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@3 b@@0 t)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@4 b@@1 t@@0)) b@@1)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@4 b@@1 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.YeahContains5#canCall| (Lit SetType |s#0@@1|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@1| (TSet TInt)))) (= (_module.__default.YeahContains5 (Lit SetType |s#0@@1|)) (exists ((|q#1@@1| Int) ) (!  (and (|Set#IsMember| (Lit SetType |s#0@@1|) ($Box intType (int_2_U |q#1@@1|))) (= |q#1@@1| (LitInt 5)))
 :qid |Regression19dfy.11:10|
 :skolemid |491|
 :pattern ( (|Set#IsMember| |s#0@@1| ($Box intType (int_2_U |q#1@@1|))))
))))
 :qid |Regression19dfy.9:31|
 :weight 3
 :skolemid |492|
 :pattern ( (_module.__default.YeahContains5 (Lit SetType |s#0@@1|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (DatatypeCtorId |#_module.R.Other|) |##_module.R.Other|))
(assert (forall ((|l#0@@0| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#q#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0| |$l#0#q#0@@0|) ($Box boolType (bool_2_U (|Set#IsMember| |l#0@@0| |$l#0#q#0@@0|))))
 :qid |Regression19dfy.18:28|
 :skolemid |542|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0| |$l#0#q#0@@0|))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.R.Other| Tclass._module.R))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|_module.R#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (|_module.R#Equal| a@@5 b@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|r#0| T@U) ) (!  (=> (or (|_module.__default.RIs5#canCall| (Lit DatatypeTypeType |r#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |r#0| Tclass._module.R))) (= (_module.__default.RIs5 (Lit DatatypeTypeType |r#0|)) (ite (_module.R.MakeR_q (Lit DatatypeTypeType |r#0|)) (let ((|q#2| (LitInt (_module.R._h0 (Lit DatatypeTypeType |r#0|)))))
(= |q#2| (LitInt 5))) false)))
 :qid |Regression19dfy.33:22|
 :weight 3
 :skolemid |515|
 :pattern ( (_module.__default.RIs5 (Lit DatatypeTypeType |r#0|)))
))))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.ViaMapComprehension#canCall| |s#0@@2|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@2| (TSet TInt)))) (= (_module.__default.ViaMapComprehension |s#0@@2|)  (or (not (= (|Set#Card| (|Map#Domain| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@2| (LitInt 5))) (|lambda#13| ($Box boolType (Lit boolType (bool_2_U true)))) (TMap TInt TBool)))) 0)) (not true))))
 :qid |Regression19dfy.22:37|
 :skolemid |505|
 :pattern ( (_module.__default.ViaMapComprehension |s#0@@2|))
))))
(assert (= (Ctor MapType) 9))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (t0@@1 T@U) (t1@@1 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@6 bx) (and ($IsBox bx t0@@1) ($IsBox (MapType1Select BoxType BoxType b@@3 bx) t1@@1)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@6 b@@3 (TMap t0@@1 t1@@1)) (TMap t0@@1 t1@@1)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@6 b@@3 (TMap t0@@1 t1@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (= (Ctor HandleTypeType) 10))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.LambdaTest#canCall| |s#0@@3|) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is SetType |s#0@@3| (TSet TInt))))) (= (_module.__default.LambdaTest |s#0@@3|) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| |s#0@@3|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 5))))))))
 :qid |Regression19dfy.18:17|
 :skolemid |501|
 :pattern ( (_module.__default.LambdaTest |s#0@@3|) ($IsGoodHeap $Heap))
))))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.R.MakeR_q d@@1) (= (DatatypeCtorId d@@1) |##_module.R.MakeR|))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.R.MakeR_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.R.Other_q d@@2) (= (DatatypeCtorId d@@2) |##_module.R.Other|))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.R.Other_q d@@2))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((m@@4 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0) (U_2_bool (MapType1Select BoxType boolType m@@4 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#0| |l#0@@1| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@1|) (and (|Set#IsMember| |l#1| |$y#0|) (= (U_2_int ($Unbox intType |$y#0|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |541|
 :pattern ( (MapType1Select BoxType boolType (|lambda#0| |l#0@@1| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.R.Other_q d@@4) (= d@@4 |#_module.R.Other|))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (_module.R.Other_q d@@4))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert (= (Ctor LayerTypeType) 11))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType1Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f ly))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.R.MakeR_q d@@5) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@5 (|#_module.R.MakeR| |a#1#0#0@@0|))
 :qid |Regression19dfy.31:20|
 :skolemid |527|
)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.R.MakeR_q d@@5))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((s@@0 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@2) (U_2_bool (MapType1Select refType boolType s@@0 ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@2))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (heap T@U) (h@@0 T@U) (r T@U) (rd T@U) (bx0 T@U) ) (! (= (Apply1 t0@@3 t1@@2 heap (Handle1 h@@0 r rd) bx0) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@0 heap bx0))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@3 t1@@2 heap (Handle1 h@@0 r rd) bx0))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.R) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass._module.R)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsBox bx@@5 Tclass._module.R))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= (|Map#Card| m@@5) 0) (= m@@5 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |272|
 :pattern ( (|Map#Card| m@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.R| d@@6) (or (_module.R.MakeR_q d@@6) (_module.R.Other_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (|$IsA#_module.R| d@@6))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@2|) |$l#0#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@2|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@3|) |$l#0#ly#0|) |l#0@@3|)
 :qid |Regression19dfy.19:4|
 :skolemid |546|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@3|) |$l#0#ly#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$w#0| T@U) ) (! (= (MapType1Select BoxType BoxType (|lambda#13| |l#0@@4|) |$w#0|) |l#0@@4|)
 :qid |Regression19dfy.23:5|
 :skolemid |547|
 :pattern ( (MapType1Select BoxType BoxType (|lambda#13| |l#0@@4|) |$w#0|))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass._module.R) (or (_module.R.MakeR_q d@@7) (_module.R.Other_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.R.Other_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.R))
 :pattern ( (_module.R.MakeR_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.R))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TBool) (and (= ($Box boolType ($Unbox boolType bx@@7)) bx@@7) ($Is boolType ($Unbox boolType bx@@7) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@7 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Set#Card| s@@1))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@1))
)))
(assert (forall ((m@@6 T@U) ) (! (<= 0 (|Map#Card| m@@6))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |271|
 :pattern ( (|Map#Card| m@@6))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (!  (=> (and (_module.R.Other_q a@@8) (_module.R.Other_q b@@5)) (|_module.R#Equal| a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (|_module.R#Equal| a@@8 b@@5) (_module.R.Other_q a@@8))
 :pattern ( (|_module.R#Equal| a@@8 b@@5) (_module.R.Other_q b@@5))
)))
(assert (forall ((v@@2 T@U) (t0@@4 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@4) h@@1) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@4 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@4) h@@1))
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
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.ViaSetComprehension#canCall| |s#0@@4|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@4| (TSet TInt)))) (= (_module.__default.ViaSetComprehension |s#0@@4|)  (or (not (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@4| (LitInt 5)))) 0)) (not true))))
 :qid |Regression19dfy.14:37|
 :skolemid |497|
 :pattern ( (_module.__default.ViaSetComprehension |s#0@@4|))
))))
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
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#_module.R.MakeR| |a#0#0#0@@0|)) |##_module.R.MakeR|)
 :qid |Regression19dfy.31:20|
 :skolemid |525|
 :pattern ( (|#_module.R.MakeR| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (_module.R._h0 (|#_module.R.MakeR| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |Regression19dfy.31:20|
 :skolemid |532|
 :pattern ( (|#_module.R.MakeR| |a#4#0#0@@0|))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((v@@3 T@U) (t0@@5 T@U) (t1@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@5 t1@@3) h@@2) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@9) (and ($IsAllocBox (MapType1Select BoxType BoxType (|Map#Elements| v@@3) bx@@9) t1@@3 h@@2) ($IsAllocBox bx@@9 t0@@5 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType1Select BoxType BoxType (|Map#Elements| v@@3) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@9))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@5 t1@@3) h@@2))
)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@5| T@U) ) (!  (=> (or (|_module.__default.ViaMapComprehension#canCall| (Lit SetType |s#0@@5|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@5| (TSet TInt)))) (= (_module.__default.ViaMapComprehension (Lit SetType |s#0@@5|))  (or (not (= (|Set#Card| (|Map#Domain| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt (Lit SetType |s#0@@5|) (LitInt 5))) (|lambda#13| ($Box boolType (Lit boolType (bool_2_U true)))) (TMap TInt TBool)))) 0)) (not true))))
 :qid |Regression19dfy.22:37|
 :weight 3
 :skolemid |506|
 :pattern ( (_module.__default.ViaMapComprehension (Lit SetType |s#0@@5|)))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#_module.R.MakeR| |a#2#0#0@@1|) Tclass._module.R) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |Regression19dfy.31:20|
 :skolemid |529|
 :pattern ( ($Is DatatypeTypeType (|#_module.R.MakeR| |a#2#0#0@@1|) Tclass._module.R))
)))
(assert (forall ((f@@0 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@0 ($LS ly@@0)) (AtLayer A@@0 f@@0 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@0 ($LS ly@@0)))
)))
(assert (forall ((bx@@10 T@U) (s@@2 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s@@2 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s@@2 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@10 (TMap s@@2 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.LambdaTest#canCall| (Lit SetType |s#0@@6|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@6| (TSet TInt))))) (= (_module.__default.LambdaTest (Lit SetType |s#0@@6|)) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (Lit SetType |s#0@@6|)) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 5))))))))
 :qid |Regression19dfy.18:17|
 :weight 3
 :skolemid |502|
 :pattern ( (_module.__default.LambdaTest (Lit SetType |s#0@@6|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|l#0@@5| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#16| |l#0@@5| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@5|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |548|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#16| |l#0@@5| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.R.MakeR_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.R $h@@2))) ($IsAlloc intType (int_2_U (_module.R._h0 d@@8)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc intType (int_2_U (_module.R._h0 d@@8)) TInt $h@@2))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType1Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@3) (= v@@5 (MapType1Select BoxType BoxType (|Map#Elements| m@@10) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@3))
 :pattern ( (MapType1Select BoxType BoxType (|Map#Elements| m@@10) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@5))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((m@@11 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@11)) (|Map#Card| m@@11))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |279|
 :pattern ( (|Set#Card| (|Map#Domain| m@@11)))
 :pattern ( (|Map#Card| m@@11))
)))
(assert (forall ((m@@12 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@12)) (|Map#Card| m@@12))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |281|
 :pattern ( (|Set#Card| (|Map#Items| m@@12)))
 :pattern ( (|Map#Card| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@13)) (|Map#Card| m@@13))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |280|
 :pattern ( (|Set#Card| (|Map#Values| m@@13)))
 :pattern ( (|Map#Card| m@@13))
)))
(assert (forall ((bx@@12 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@9)))
)))
(assert (forall ((a@@9 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@9 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@9 x@@10)) (|Set#Card| a@@9)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@9 x@@10)))
)))
(assert (forall ((v@@6 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@6 t1@@4)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@13) (and ($IsBox (MapType1Select BoxType BoxType (|Map#Elements| v@@6) bx@@13) t1@@4) ($IsBox bx@@13 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType1Select BoxType BoxType (|Map#Elements| v@@6) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@6 t1@@4)))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@10 Tclass._module.R)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.R $h@@3))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.R $h@@3))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.R) Tagclass._module.R))
(assert (= (TagFamily Tclass._module.R) tytagFamily$R))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.Contains5#canCall| |s#0@@7|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@7| (TSet TInt)))) (= (_module.__default.Contains5 |s#0@@7|) (let ((|q#0| (LitInt 5)))
(|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |q#0|))))))
 :qid |Regression19dfy.26:27|
 :skolemid |509|
 :pattern ( (_module.__default.Contains5 |s#0@@7|))
))))
(assert (= |#_module.R.Other| (Lit DatatypeTypeType |#_module.R.Other|)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@8| T@U) ) (!  (=> (or (|_module.__default.ViaSetComprehension#canCall| (Lit SetType |s#0@@8|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@8| (TSet TInt)))) (= (_module.__default.ViaSetComprehension (Lit SetType |s#0@@8|))  (or (not (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt (Lit SetType |s#0@@8|) (LitInt 5)))) 0)) (not true))))
 :qid |Regression19dfy.14:37|
 :weight 3
 :skolemid |498|
 :pattern ( (_module.__default.ViaSetComprehension (Lit SetType |s#0@@8|)))
))))
(assert (forall ((s@@3 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@3) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@3))
)))
(assert (forall ((a@@10 T@U) (b@@6 T@U) ) (! (= (|Set#Equal| a@@10 b@@6) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@10 o@@1) (|Set#IsMember| b@@6 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@1))
 :pattern ( (|Set#IsMember| b@@6 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@6))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@9| T@U) ) (!  (=> (or (|_module.__default.ContainsNothingBut5#canCall| |s#0@@9|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@9| (TSet TInt)))) (= (_module.__default.ContainsNothingBut5 |s#0@@9|) (forall ((|q#0@@0| Int) ) (!  (=> (|Set#IsMember| |s#0@@9| ($Box intType (int_2_U |q#0@@0|))) (= |q#0@@0| (LitInt 5)))
 :qid |Regression19dfy.6:10|
 :skolemid |481|
 :pattern ( (|Set#IsMember| |s#0@@9| ($Box intType (int_2_U |q#0@@0|))))
))))
 :qid |Regression19dfy.4:37|
 :skolemid |482|
 :pattern ( (_module.__default.ContainsNothingBut5 |s#0@@9|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#_module.R.MakeR| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.R.MakeR| |a#3#0#0@@0|)))
 :qid |Regression19dfy.31:20|
 :skolemid |531|
 :pattern ( (|#_module.R.MakeR| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@10| T@U) ) (!  (=> (or (|_module.__default.YeahContains5#canCall| |s#0@@10|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@10| (TSet TInt)))) (= (_module.__default.YeahContains5 |s#0@@10|) (exists ((|q#0@@1| Int) ) (!  (and (|Set#IsMember| |s#0@@10| ($Box intType (int_2_U |q#0@@1|))) (= |q#0@@1| (LitInt 5)))
 :qid |Regression19dfy.11:10|
 :skolemid |489|
 :pattern ( (|Set#IsMember| |s#0@@10| ($Box intType (int_2_U |q#0@@1|))))
))))
 :qid |Regression19dfy.9:31|
 :skolemid |490|
 :pattern ( (_module.__default.YeahContains5 |s#0@@10|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|r#0@@0| T@U) ) (!  (=> (or (|_module.__default.RIs5#canCall| |r#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |r#0@@0| Tclass._module.R))) (= (_module.__default.RIs5 |r#0@@0|) (ite (_module.R.MakeR_q |r#0@@0|) (let ((|q#0@@2| (_module.R._h0 |r#0@@0|)))
(= |q#0@@2| (LitInt 5))) false)))
 :qid |Regression19dfy.33:22|
 :skolemid |514|
 :pattern ( (_module.__default.RIs5 |r#0@@0|))
))))
(assert (forall ((h@@3 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@8 T@U) ) (! ($IsAlloc boolType v@@8 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@8 TBool h@@4))
)))
(assert (forall ((a@@11 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@11 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@11 x@@13)) (+ (|Set#Card| a@@11) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@11 x@@13)))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#q#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#0#heap#0@@1| |$l#0#q#0@@1|) |l#0@@6|)
 :qid |Regression19dfy.19:4|
 :skolemid |545|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#0#heap#0@@1| |$l#0#q#0@@1|))
)))
(assert (forall ((m@@14 T@U) ) (!  (or (= m@@14 |Map#Empty|) (exists ((k@@0 T@U) (v@@9 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@14) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@9)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@14))
)))
(assert (forall ((v@@10 T@U) (t0@@7 T@U) (t1@@5 T@U) ) (!  (=> ($Is MapType v@@10 (TMap t0@@7 t1@@5)) (and (and ($Is SetType (|Map#Domain| v@@10) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@10) (TSet t1@@5))) ($Is SetType (|Map#Items| v@@10) (TSet (Tclass._System.Tuple2 t0@@7 t1@@5)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@10 (TMap t0@@7 t1@@5)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is intType v@@11 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@11 TInt))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is boolType v@@12 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@12 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s##1@0| () T@U)
(declare-fun |s#0@@11| () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |r#0@@1| () T@U)
(declare-fun |q#5@0| () Int)
(declare-fun |s##0@0| () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun |q#3@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon10_correct  (=> (= |s##1@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@11| (LitInt 5))) (|lambda#13| ($Box boolType (Lit boolType (bool_2_U true)))) (TMap TInt TBool))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (|Set#IsMember| (|Map#Domain| |s##1@0|) ($Box intType (int_2_U |x##1@0|)))) (=> (|Set#IsMember| (|Map#Domain| |s##1@0|) ($Box intType (int_2_U |x##1@0|))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (or (not (= (|Map#Card| |s##1@0|) 0)) (not true))) (and (and (= $Heap@0 $Heap@1) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@1)) (and (|_module.__default.ViaMapComprehension#canCall| |s#0@@11|) (|_module.__default.ViaMapComprehension#canCall| |s#0@@11|)))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (=> (|_module.__default.ViaMapComprehension#canCall| |s#0@@11|) (or (_module.__default.ViaMapComprehension |s#0@@11|) (or (not (= (|Set#Card| (|Map#Domain| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@11| (LitInt 5))) (|lambda#13| ($Box boolType (Lit boolType (bool_2_U true)))) (TMap TInt TBool)))) 0)) (not true))))) (=> (and (and (_module.__default.ViaMapComprehension |s#0@@11|) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@1)) (and (|_module.__default.LambdaTest#canCall| |s#0@@11|) (|_module.__default.LambdaTest#canCall| |s#0@@11|))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> (|_module.__default.LambdaTest#canCall| |s#0@@11|) (or (_module.__default.LambdaTest |s#0@@11|) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| |s#0@@11|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 5))))))))) (=> (and (and (_module.__default.LambdaTest |s#0@@11|) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@1)) (and (|_module.__default.Contains5#canCall| |s#0@@11|) (|_module.__default.Contains5#canCall| |s#0@@11|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (|_module.__default.Contains5#canCall| |s#0@@11|) (or (_module.__default.Contains5 |s#0@@11|) (let ((|q#7| (LitInt 5)))
(|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#7|))))))) (=> (and (and (_module.__default.Contains5 |s#0@@11|) ($IsAlloc DatatypeTypeType |r#0@@1| Tclass._module.R $Heap@1)) (and (|_module.__default.RIs5#canCall| |r#0@@1|) (|_module.__default.RIs5#canCall| |r#0@@1|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (|_module.__default.RIs5#canCall| |r#0@@1|) (or (_module.__default.RIs5 |r#0@@1|) (=> (_module.R.MakeR_q |r#0@@1|) (let ((|q#8| (_module.R._h0 |r#0@@1|)))
(= |q#8| (LitInt 5))))))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> (|_module.__default.RIs5#canCall| |r#0@@1|) (or (_module.__default.RIs5 |r#0@@1|) (=> (not (_module.R.MakeR_q |r#0@@1|)) (U_2_bool (Lit boolType (bool_2_U false))))))))))))))))))))
(let ((anon16_Else_correct  (=> (and (not (and (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#5@0|))) (= |q#5@0| (LitInt 5)))) (= (ControlFlow 0 11) 4)) anon10_correct)))
(let ((anon16_Then_correct  (=> (and (and (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#5@0|))) (= |q#5@0| (LitInt 5))) (= (ControlFlow 0 10) 4)) anon10_correct)))
(let ((anon15_Else_correct  (=> (not (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#5@0|)))) (and (=> (= (ControlFlow 0 13) 10) anon16_Then_correct) (=> (= (ControlFlow 0 13) 11) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#5@0|))) (and (=> (= (ControlFlow 0 12) 10) anon16_Then_correct) (=> (= (ControlFlow 0 12) 11) anon16_Else_correct)))))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 14) 12) anon15_Then_correct) (=> (= (ControlFlow 0 14) 13) anon15_Else_correct))))
(let ((anon14_Else_correct true))
(let ((anon5_correct  (=> (= |s##0@0| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@11| (LitInt 5)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (|Set#IsMember| |s##0@0| ($Box intType (int_2_U |x##0@0|)))) (=> (|Set#IsMember| |s##0@0| ($Box intType (int_2_U |x##0@0|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (or (not (= (|Set#Card| |s##0@0|) 0)) (not true))) (and (and (= $Heap@@1 $Heap@0) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@0)) (and (|_module.__default.ViaSetComprehension#canCall| |s#0@@11|) (|_module.__default.ViaSetComprehension#canCall| |s#0@@11|)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> (|_module.__default.ViaSetComprehension#canCall| |s#0@@11|) (or (_module.__default.ViaSetComprehension |s#0@@11|) (or (not (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |s#0@@11| (LitInt 5)))) 0)) (not true))))) (=> (and (_module.__default.ViaSetComprehension |s#0@@11|) (= |x##1@0| (LitInt 5))) (and (=> (= (ControlFlow 0 15) 14) anon14_Then_correct) (=> (= (ControlFlow 0 15) 2) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (not (and (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#3@0|))) (= |q#3@0| (LitInt 5)))) (= (ControlFlow 0 19) 15)) anon5_correct)))
(let ((anon13_Then_correct  (=> (and (and (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#3@0|))) (= |q#3@0| (LitInt 5))) (= (ControlFlow 0 18) 15)) anon5_correct)))
(let ((anon12_Else_correct  (=> (not (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#3@0|)))) (and (=> (= (ControlFlow 0 21) 18) anon13_Then_correct) (=> (= (ControlFlow 0 21) 19) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#3@0|))) (and (=> (= (ControlFlow 0 20) 18) anon13_Then_correct) (=> (= (ControlFlow 0 20) 19) anon13_Else_correct)))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 22) 20) anon12_Then_correct) (=> (= (ControlFlow 0 22) 21) anon12_Else_correct))))
(let ((anon11_Else_correct true))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#16| null $Heap@@1 alloc false)) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@@1)) (and (|_module.__default.ContainsNothingBut5#canCall| |s#0@@11|) (|_module.__default.ContainsNothingBut5#canCall| |s#0@@11|))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (=> (|_module.__default.ContainsNothingBut5#canCall| |s#0@@11|) (or (_module.__default.ContainsNothingBut5 |s#0@@11|) (forall ((|q#1@@2| Int) ) (!  (=> (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#1@@2|))) (= |q#1@@2| (LitInt 5)))
 :qid |Regression19dfy.6:10|
 :skolemid |519|
 :pattern ( (|Set#IsMember| |s#0@@11| ($Box intType (int_2_U |q#1@@2|))))
))))) (=> (and (and (_module.__default.ContainsNothingBut5 |s#0@@11|) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@@1)) (and (|_module.__default.YeahContains5#canCall| |s#0@@11|) (|_module.__default.YeahContains5#canCall| |s#0@@11|))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> (|_module.__default.YeahContains5#canCall| |s#0@@11|) (or (_module.__default.YeahContains5 |s#0@@11|) (exists ((|q#2@@0| T@U) ) (!  (and (|Set#IsMember| |s#0@@11| ($Box intType |q#2@@0|)) (= (U_2_int |q#2@@0|) (LitInt 5)))
 :qid |Regression19dfy.11:10|
 :skolemid |521|
 :pattern ( (|Set#IsMember| |s#0@@11| ($Box intType |q#2@@0|)))
))))) (=> (and (_module.__default.YeahContains5 |s#0@@11|) (= |x##0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 23) 22) anon11_Then_correct) (=> (= (ControlFlow 0 23) 1) anon11_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and ($Is SetType |s#0@@11| (TSet TInt)) ($IsAlloc SetType |s#0@@11| (TSet TInt) $Heap@@1))) (=> (and (and (and ($Is DatatypeTypeType |r#0@@1| Tclass._module.R) ($IsAlloc DatatypeTypeType |r#0@@1| Tclass._module.R $Heap@@1)) (|$IsA#_module.R| |r#0@@1|)) (and (and (= 2 $FunctionContextHeight) (|Set#Equal| |s#0@@11| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 5)))))) (and (|_module.R#Equal| |r#0@@1| (|#_module.R.MakeR| (LitInt 5))) (= (ControlFlow 0 26) 23)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
