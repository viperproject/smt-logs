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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.u8 () T@U)
(declare-fun Tagclass._module.Result () T@U)
(declare-fun Tagclass._module.ZeroContainer () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun class._module.ZeroContainer? () T@U)
(declare-fun Tagclass._module.ZeroContainer? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$u8 () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$ZeroContainer () T@U)
(declare-fun field$i () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.u8 () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |lambda#7| () T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun |map$project$2#0#k#0| (T@U) Int)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ZeroContainer? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._module.ZeroContainer () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _module.ZeroContainer.i () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |lambda#8| (T@U T@U) T@U)
(declare-fun _module.__default.PrependPrefix (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.CONST1 () T@U)
(declare-fun _module.__default.CONST3 () T@U)
(declare-fun _module.__default.CONST5 () T@U)
(declare-fun _module.__default.PREFIX () T@U)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun _module.Result.msg (T@U) T@U)
(declare-fun |lambda#10| (T@U Int Int) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun |map$project$0#0#k#0| (Int) Int)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun |map$project$3#0#k#0| (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U Int) T@U)
(declare-fun |_module.__default.PrependPrefix#canCall| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |lambda#5| () T@U)
(declare-fun |map$project$1#0#k#0| (Int) Int)
(declare-fun |lambda#6| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.u8 Tagclass._module.Result Tagclass._module.ZeroContainer |##_module.Result.Success| |##_module.Result.Failure| class._module.ZeroContainer? Tagclass._module.ZeroContainer? |tytagFamily$_tuple#2| tytagFamily$u8 tytagFamily$Result tytagFamily$ZeroContainer field$i)
)
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$w#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$w#1|))  (and ($IsBox |$w#1| |l#0|) (exists ((|a#2#0#0| Int) ) (!  (and (|Set#IsMember| |l#1| ($Box intType (int_2_U |a#2#0#0|))) (= (U_2_int ($Unbox intType |$w#1|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType |l#2| ($Box intType (int_2_U |a#2#0#0|)))))))
 :qid |loopsdfy.38:22|
 :skolemid |498|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |573|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$w#1|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.u8 $h)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.u8 $h))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |loopsdfy.17:50|
 :skolemid |553|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@1 b@@1 t)) a@@1)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@1 b@@1 t)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@2 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@2 b@@2 t@@0)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@3 b@@3) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@3 b@@3) (|Set#IsMember| b@@3 y@@1))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((|$w#2| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#7| |$w#2|) ($Box DatatypeTypeType (|#_module.Result.Success| ($Box intType (int_2_U (|map$project$2#0#k#0| ($Unbox SeqType |$w#2|)))))))
 :qid |loopsdfy.39:26|
 :skolemid |576|
 :pattern ( (MapType0Select BoxType BoxType |lambda#7| |$w#2|))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (= (Ctor refType) 6))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ZeroContainer?)  (or (= $o null) (= (dtype $o) Tclass._module.ZeroContainer?)))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($Is refType $o Tclass._module.ZeroContainer?))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4) (|Set#Union| a@@4 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o)  (and (|Set#IsMember| a@@5 o) (not (|Set#IsMember| b@@5 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o))
)))
(assert (forall ((s@@1 T@U) (t@@1 T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t@@1) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t@@1) n@@0) t@@1)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t@@1) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t@@1) n@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.ZeroContainer $h@@0) ($IsAlloc refType |c#0| Tclass._module.ZeroContainer? $h@@0))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.ZeroContainer $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.ZeroContainer? $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim _module.ZeroContainer.i) 0))
(assert (= (FieldOfDecl class._module.ZeroContainer? field$i) _module.ZeroContainer.i))
(assert  (not ($IsGhostField _module.ZeroContainer.i)))
(assert  (and (and (and (= (Ctor FieldType) 7) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.ZeroContainer? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.ZeroContainer? $h@@1))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$w#3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#8| |l#0@@0| |l#1@@0|) |$w#3|))  (and ($IsBox |$w#3| |l#0@@0|) (exists ((|a#6#0#0| T@U) ) (!  (and (|Set#IsMember| |l#1@@0| ($Box SeqType |a#6#0#0|)) (= ($Unbox SeqType |$w#3|) (_module.__default.PrependPrefix |a#6#0#0|)))
 :qid |loopsdfy.62:13|
 :skolemid |507|
))))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (MapType0Select BoxType boolType (|lambda#8| |l#0@@0| |l#1@@0|) |$w#3|))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@3 T@U) (bx T@U) (t@@2 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@2)) ($IsBox bx t@@2)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@2)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@2)))
)))
(assert (= (Ctor MapType) 9))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@6 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@6 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@6 b@@6 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@6 b@@6 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@2) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
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
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((s@@6 T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i@@0)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i@@0)))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@7) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@1)) (not (|Set#IsMember| b@@7 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@1))
 :pattern ( (|Set#IsMember| b@@7 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@7))
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
(assert (= (Ctor SetType) 10))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@1 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@1 (TSet t0@@1)))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) ) (!  (=> (and (< 0 i@@1) (<= i@@1 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@1)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@1)))
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
(assert ($IsGhostField alloc))
(assert (forall ((s@@8 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@2)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@8 v@@2))
)))
(assert (forall (($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.ZeroContainer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) _module.ZeroContainer.i)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |564|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) _module.ZeroContainer.i)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc SeqType _module.__default.CONST1 (TSeq TChar) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($IsAlloc SeqType _module.__default.CONST1 (TSeq TChar) $h@@4))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc SeqType _module.__default.CONST3 (TSeq TChar) $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($IsAlloc SeqType _module.__default.CONST3 (TSeq TChar) $h@@5))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) ($IsAlloc SeqType _module.__default.CONST5 (TSeq TChar) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |484|
 :pattern ( ($IsAlloc SeqType _module.__default.CONST5 (TSeq TChar) $h@@6))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) ($IsAlloc SeqType _module.__default.PREFIX (TSeq TChar) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |485|
 :pattern ( ($IsAlloc SeqType _module.__default.PREFIX (TSeq TChar) $h@@7))
))))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@3 h@@0) ($IsAlloc T@@1 v@@3 t@@3 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@3 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@4 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@4 h@@1) ($IsAllocBox bx@@3 t@@4 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@4 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@4 T@U) (t@@5 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@5 h@@2) ($IsAlloc T@@2 v@@4 t@@5 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@4 t@@5 h@@2))
)))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall ((_module.Result$T T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._module.Result _module.Result$T))
)))
(assert (forall ((m@@2 T@U) (n@@5 T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@2 n@@5)) u) (and (=> (not (|Set#IsMember| (|Map#Domain| n@@5) u)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@5)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u))) (=> (|Set#IsMember| (|Map#Domain| n@@5) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@5)) u) (MapType0Select BoxType BoxType (|Map#Elements| n@@5) u)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@5)) u))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.u8) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass._module.u8)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@4 Tclass._module.u8))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.ZeroContainer) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.ZeroContainer)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@5 Tclass._module.ZeroContainer))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.ZeroContainer?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.ZeroContainer?)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsBox bx@@6 Tclass._module.ZeroContainer?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.ZeroContainer)  (and ($Is refType |c#0@@0| Tclass._module.ZeroContainer?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.ZeroContainer))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.ZeroContainer?))
)))
(assert (forall ((s@@10 T@U) (i@@2 Int) (v@@5 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@2) v@@5)) (=> (or (not (= i@@2 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@2) (|Seq#Index| s@@10 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@2))
)))
(assert (forall ((m@@3 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@3 |m'|)  (and (forall ((u@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@3) u@@0) (|Set#IsMember| (|Map#Domain| |m'|) u@@0))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@3) u@@1) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@1) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@1)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@3 |m'|))
)))
(assert (forall ((_module.Result$T@@0 T@U) (|a#2#0#0@@2| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@0) $h@@8) ($IsAllocBox |a#2#0#0@@2| _module.Result$T@@0 $h@@8)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@0) $h@@8))
)))
(assert (= (Ctor charType) 11))
(assert (= _module.__default.PREFIX (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))))))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@2)  (or (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@8 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@2))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7)  (or (|Seq#Contains| s0@@1 x@@7) (|Seq#Contains| s1@@1 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7))
)))
(assert (forall ((s@@11 T@U) (n@@6 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@6) x@@8) (exists ((i@@3 Int) ) (!  (and (and (and (<= 0 i@@3) (< i@@3 n@@6)) (< i@@3 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@3) x@@8))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@11 i@@3))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@6) x@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@9) a@@9) b@@9) (= (|Set#Difference| (|Set#Union| a@@9 b@@9) b@@9) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@9))
)))
(assert (forall ((s@@12 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s@@12 x@@9) (exists ((i@@4 Int) ) (!  (and (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@4) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@12 i@@4))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@12 x@@9))
)))
(assert (forall ((|l#0@@1| T@U) (|$w#4| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#11| |l#0@@1|) |$w#4|) |l#0@@1|)
 :qid |loopsdfy.76:11|
 :skolemid |580|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#11| |l#0@@1|) |$w#4|))
)))
(assert (forall ((d@@6 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Result.Failure_q d@@6) (exists ((_module.Result$T@@1 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@9)
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@9))
)))) ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@9))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#8#0#0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@10) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@10)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@10))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| Int) (|l#2@@0| Int) (|$w#4@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#10| |l#0@@2| |l#1@@1| |l#2@@0|) |$w#4@@0|))  (and ($IsBox |$w#4@@0| |l#0@@2|) (exists ((|a#9#0#0| Int) ) (!  (and (= |a#9#0#0| |l#1@@1|) (= (U_2_int ($Unbox intType |$w#4@@0|)) (Mod |a#9#0#0| |l#2@@0|)))
 :qid |loopsdfy.76:15|
 :skolemid |518|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |579|
 :pattern ( (MapType0Select BoxType boolType (|lambda#10| |l#0@@2| |l#1@@1| |l#2@@0|) |$w#4@@0|))
)))
(assert (forall ((_module.Result$T@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)) (or (_module.Result.Success_q d@@7) (_module.Result.Failure_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Result.Failure_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
 :pattern ( (_module.Result.Success_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (!  (=> (|Seq#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@10 b@@10))
)))
(assert (forall ((m@@4 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@4 |m'@@0|) (= m@@4 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@4 |m'@@0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#3| |l#0@@3|) |$w#0|) (MapType0Select BoxType BoxType |l#0@@3| ($Box intType (int_2_U (|map$project$0#0#k#0| (U_2_int ($Unbox intType |$w#0|)))))))
 :qid |loopsdfy.32:38|
 :skolemid |572|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#3| |l#0@@3|) |$w#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$w#3@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#9| |l#0@@4|) |$w#3@@0|) (MapType0Select BoxType BoxType |l#0@@4| ($Box SeqType (|map$project$3#0#k#0| ($Unbox SeqType |$w#3@@0|)))))
 :qid |loopsdfy.62:56|
 :skolemid |578|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#9| |l#0@@4|) |$w#3@@0|))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@2| T@U) (|l#2@@1| Int) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0@@5| |l#1@@2| |l#2@@1|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@5|) (exists ((|a#0#0#0| Int) ) (!  (and (|Set#IsMember| |l#1@@2| ($Box intType (int_2_U |a#0#0#0|))) (= (U_2_int ($Unbox intType |$w#0@@0|)) (+ |a#0#0#0| |l#2@@1|)))
 :qid |loopsdfy.32:16|
 :skolemid |494|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |571|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0@@5| |l#1@@2| |l#2@@1|) |$w#0@@0|))
)))
(assert (forall ((s@@13 T@U) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@7)) n@@7))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@7)))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@11) ($HeapSucc b@@11 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@11) ($HeapSucc b@@11 c))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|_module.__default.PrependPrefix#canCall| |p#0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |p#0| (TSeq TChar)))) (= (_module.__default.PrependPrefix |p#0|) (|Seq#Append| _module.__default.PREFIX |p#0|)))
 :qid |loopsdfy.24:24|
 :skolemid |488|
 :pattern ( (_module.__default.PrependPrefix |p#0|))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((v@@6 T@U) (t@@6 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@6) ($Is T@@3 v@@6 t@@6))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@6))
)))
(assert (forall ((s@@14 T@U) ) (! (<= 0 (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@14))
)))
(assert (forall ((s@@15 T@U) (i@@5 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@5) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@5) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (= _module.__default.CONST1 (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49))))))
(assert (= _module.__default.CONST3 (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 51))))))
(assert (= _module.__default.CONST5 (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))))))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@2) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@7 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@7 T@U) (u@@2 T@U) ) (! (= (Inv0_TMap (TMap t@@7 u@@2)) t@@7)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@7 u@@2))
)))
(assert (forall ((t@@8 T@U) (u@@3 T@U) ) (! (= (Inv1_TMap (TMap t@@8 u@@3)) u@@3)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@8 u@@3))
)))
(assert (forall ((t@@9 T@U) (u@@4 T@U) ) (! (= (Tag (TMap t@@9 u@@4)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@9 u@@4))
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
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@4) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@6) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@8 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@4))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Inv0_TSet (TSet t@@10)) t@@10)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Tag (TSet t@@11)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Inv0_TSeq (TSeq t@@12)) t@@12)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((t@@13 T@U) ) (! (= (Tag (TSeq t@@13)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@13))
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
(assert (forall ((|a#6#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0@@1|)) |##_module.Result.Failure|)
 :qid |loopsdfy.17:50|
 :skolemid |543|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0@@1|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.msg (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |loopsdfy.17:50|
 :skolemid |552|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@5) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@11) t1@@1 h@@5) ($IsAllocBox bx@@11 t0@@4 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@5))
)))
(assert (forall ((_module.Result$T@@5 T@U) (|a#2#0#0@@3| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@3|) (Tclass._module.Result _module.Result$T@@5)) ($IsBox |a#2#0#0@@3| _module.Result$T@@5))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@3|) (Tclass._module.Result _module.Result$T@@5)))
)))
(assert (forall (($h@@11 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.ZeroContainer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@2) _module.ZeroContainer.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |563|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@2) _module.ZeroContainer.i)))
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
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@12)) (|Set#Union| a@@12 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@12)))
)))
(assert (forall ((u@@5 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@5))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|_module.__default.PrependPrefix#canCall| (Lit SeqType |p#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |p#0@@0| (TSeq TChar)))) (= (_module.__default.PrependPrefix (Lit SeqType |p#0@@0|)) (|Seq#Append| _module.__default.PREFIX |p#0@@0|)))
 :qid |loopsdfy.24:24|
 :weight 3
 :skolemid |489|
 :pattern ( (_module.__default.PrependPrefix (Lit SeqType |p#0@@0|)))
))))
(assert (forall ((n@@8 Int) ) (!  (=> (or (and (<= 0 n@@8) (< n@@8 55296)) (and (<= 57344 n@@8) (< n@@8 1114112))) (= (|char#ToInt| (|char#FromInt| n@@8)) n@@8))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@8))
)))
(assert (forall ((bx@@12 T@U) (s@@16 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@12 (TMap s@@16 t@@14)) (and (= ($Box MapType ($Unbox MapType bx@@12)) bx@@12) ($Is MapType ($Unbox MapType bx@@12) (TMap s@@16 t@@14))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@12 (TMap s@@16 t@@14)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((d@@8 T@U) (_module.Result$T@@6 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Result.Success_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@6) $h@@12))) ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@12))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@12))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@5 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@5 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@6 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@6 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@6 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@7 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@7 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@7 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@6| T@U) (|l#1@@3| T@U) (|l#2@@2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@3| |l#2@@2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@3| $o@@3) |l#2@@2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@3| |l#2@@2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@11 Int) (y@@2 Int) ) (! (= (Mod x@@11 y@@2) (mod x@@11 y@@2))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@11 y@@2))
)))
(assert (forall ((s@@17 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@17 val@@4)) s@@17) (= (|Seq#Build_inv1| (|Seq#Build| s@@17 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@17 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.CONST1 (TSeq TChar))))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.CONST3 (TSeq TChar))))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.CONST5 (TSeq TChar))))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.PREFIX (TSeq TChar))))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@8) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@9) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@9))
)))
(assert (forall ((m@@10 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@10) item)  (and (|Set#IsMember| (|Map#Domain| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@10) item))
)))
(assert (forall ((m@@11 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@11) v@@11) (exists ((u@@6 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@11) u@@6) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@6)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@11) u@@6))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@6))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@11) v@@11))
)))
(assert (forall ((m@@12 T@U) (u@@7 T@U) (|u'| T@U) (v@@12 T@U) ) (!  (and (=> (= |u'| u@@7) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@7 v@@12)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@7 v@@12)) |u'|) v@@12))) (=> (or (not (= |u'| u@@7)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@7 v@@12)) |u'|) (|Set#IsMember| (|Map#Domain| m@@12) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@7 v@@12)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@12) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@7 v@@12)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@7 v@@12)) |u'|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((s@@18 T@U) (n@@9 Int) (x@@12 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@18 n@@9) x@@12) (exists ((i@@7 Int) ) (!  (and (and (and (<= 0 n@@9) (<= n@@9 i@@7)) (< i@@7 (|Seq#Length| s@@18))) (= (|Seq#Index| s@@18 i@@7) x@@12))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@18 i@@7))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@18 n@@9) x@@12))
)))
(assert (forall ((bx@@14 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@15)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@15))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@15)))
)))
(assert (forall ((bx@@15 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@16)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@16))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@15 (TSeq t@@16)))
)))
(assert (forall ((_module.Result$T@@7 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._module.Result _module.Result$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) (Tclass._module.Result _module.Result$T@@7))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@16 (Tclass._module.Result _module.Result$T@@7)))
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
(assert (forall ((v@@13 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@13 (TMap t0@@6 t1@@3)) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@17) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@17) t1@@3) ($IsBox bx@@17 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@17))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@17))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@13 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((h@@6 T@U) (r T@U) (f T@U) (x@@13 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@13))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@13))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@13)))
)))
(assert (= (Tag Tclass._module.u8) Tagclass._module.u8))
(assert (= (TagFamily Tclass._module.u8) tytagFamily$u8))
(assert (= (Tag Tclass._module.ZeroContainer) Tagclass._module.ZeroContainer))
(assert (= (TagFamily Tclass._module.ZeroContainer) tytagFamily$ZeroContainer))
(assert (= (Tag Tclass._module.ZeroContainer?) Tagclass._module.ZeroContainer?))
(assert (= (TagFamily Tclass._module.ZeroContainer?) tytagFamily$ZeroContainer))
(assert (forall ((s@@19 T@U) (n@@10 Int) (k@@3 Int) ) (!  (=> (and (and (<= 0 n@@10) (<= n@@10 k@@3)) (< k@@3 (|Seq#Length| s@@19))) (= (|Seq#Index| (|Seq#Drop| s@@19 n@@10) (- k@@3 n@@10)) (|Seq#Index| s@@19 k@@3)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@19 k@@3) (|Seq#Drop| s@@19 n@@10))
)))
(assert (forall ((s@@20 T@U) (m@@13 Int) (n@@11 Int) ) (!  (=> (and (and (<= 0 m@@13) (<= 0 n@@11)) (<= (+ m@@13 n@@11) (|Seq#Length| s@@20))) (= (|Seq#Drop| (|Seq#Drop| s@@20 m@@13) n@@11) (|Seq#Drop| s@@20 (+ m@@13 n@@11))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@20 m@@13) n@@11))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@13))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@13))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@14))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@14))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@14))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@12 Int) ) (!  (and (=> (< n@@12 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@12) (|Seq#Index| s0@@2 n@@12))) (=> (<= (|Seq#Length| s0@@2) n@@12) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@12) (|Seq#Index| s1@@2 (- n@@12 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@12))
)))
(assert (forall ((|$w#1@@0| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#5| |$w#1@@0|) ($Box intType (int_2_U (|map$project$1#0#k#0| (U_2_int ($Unbox intType |$w#1@@0|))))))
 :qid |loopsdfy.38:18|
 :skolemid |574|
 :pattern ( (MapType0Select BoxType BoxType |lambda#5| |$w#1@@0|))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.u8)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 10)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.u8))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@14 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@14))) (Lit BoxType ($Box intType (int_2_U x@@14))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@14))))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0@@0|)))
 :qid |loopsdfy.17:30|
 :skolemid |540|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0@@0|)))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0@@0|)))
 :qid |loopsdfy.17:50|
 :skolemid |551|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0@@0|)))
)))
(assert (forall ((x@@15 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@15)) (Lit BoxType ($Box T@@5 x@@15)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@15)))
)))
(assert (forall ((m@@14 T@U) (n@@13 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@14 n@@13)) (|Set#Union| (|Map#Domain| m@@14) (|Map#Domain| n@@13)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |293|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@14 n@@13)))
)))
(assert (forall ((s@@21 T@U) ) (!  (=> (= (|Seq#Length| s@@21) 0) (= s@@21 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@21))
)))
(assert (forall ((s@@22 T@U) (n@@14 Int) ) (!  (=> (= n@@14 0) (= (|Seq#Take| s@@22 n@@14) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@22 n@@14))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@4| T@U) (|l#2@@3| T@U) (|l#3@@0| T@U) (|$w#2@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#6| |l#0@@7| |l#1@@4| |l#2@@3| |l#3@@0|) |$w#2@@0|))  (and ($IsBox |$w#2@@0| |l#0@@7|) (exists ((|a#4#0#0@@1| Int) ) (!  (and (|Set#IsMember| |l#1@@4| ($Box intType (int_2_U |a#4#0#0@@1|))) (= ($Unbox SeqType |$w#2@@0|) ($Unbox SeqType (MapType0Select BoxType BoxType |l#2@@3| (MapType0Select BoxType BoxType |l#3@@0| ($Box intType (int_2_U |a#4#0#0@@1|)))))))
 :qid |loopsdfy.39:30|
 :skolemid |503|
))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (MapType0Select BoxType boolType (|lambda#6| |l#0@@7| |l#1@@4| |l#2@@3| |l#3@@0|) |$w#2@@0|))
)))
(assert (forall ((h@@7 T@U) (v@@14 T@U) ) (! ($IsAlloc intType v@@14 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@14 TInt h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@15 T@U) ) (! ($IsAlloc boolType v@@15 TBool h@@8)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@15 TBool h@@8))
)))
(assert (forall ((h@@9 T@U) (v@@16 T@U) ) (! ($IsAlloc charType v@@16 TChar h@@9)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@16 TChar h@@9))
)))
(assert (forall ((v@@17 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@17 (TSeq t0@@7)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| v@@17))) ($IsBox (|Seq#Index| v@@17 i@@8) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@17 i@@8))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@17 (TSeq t0@@7)))
)))
(assert (forall ((m@@15 T@U) ) (!  (or (= m@@15 |Map#Empty|) (exists ((k@@4 T@U) (v@@18 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@15) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@4 v@@18)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@15))
)))
(assert (forall ((s@@23 T@U) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@23))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@23 i@@9))) (|Seq#Rank| s@@23)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@23 i@@9))))
)))
(assert (forall ((v@@19 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@19 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@19) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@19) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@19) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@19 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is intType v@@20 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@20 TInt))
)))
(assert (forall ((v@@21 T@U) ) (! ($Is boolType v@@21 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@21 TBool))
)))
(assert (forall ((v@@22 T@U) ) (! ($Is charType v@@22 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@22 TChar))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) ) (!  (=> (or (|_module.__default.PrependPrefix#canCall| |p#0@@1|) (and (< 1 $FunctionContextHeight) ($Is SeqType |p#0@@1| (TSeq TChar)))) ($Is SeqType (_module.__default.PrependPrefix |p#0@@1|) (TSeq TChar)))
 :qid |loopsdfy.24:24|
 :skolemid |486|
 :pattern ( (_module.__default.PrependPrefix |p#0@@1|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0_0@0| () T@U)
(declare-fun |k'#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |zBefore#0@0| () T@U)
(declare-fun |i#10@0| () Int)
(declare-fun |i#prime#1@0| () Int)
(declare-fun |i#8@0| () Int)
(declare-fun |map$project$4#0#i#0| (Int) Int)
(declare-fun |i#6@0| () Int)
(declare-fun |i#prime#0@0| () Int)
(declare-fun |i#4@0| () Int)
(declare-fun |c#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |ch#0@0| () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |zAfter#0@0| () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |k#10@0| () T@U)
(declare-fun |k#prime#3@0| () T@U)
(declare-fun |is_result#0@0| () Bool)
(declare-fun |s#0@0| () T@U)
(declare-fun |k#9@0| () Int)
(declare-fun |k'#1@0| () Int)
(declare-fun |u8toInt#0@0| () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun |helloWorldAgain#0@0| () T@U)
(declare-fun |successbool#0@0| () T@U)
(declare-fun |k#6@0| () Int)
(declare-fun |k#prime#2@0| () Int)
(declare-fun |IntToU8#0@0| () T@U)
(declare-fun |k#4@0| () Int)
(declare-fun |k#prime#1@0| () Int)
(declare-fun |z#0@0| () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun |call3formal@r#0| () T@U)
(declare-fun call0formal@_module._default.ToSet$T () T@U)
(declare-fun |call3formal@r#0@0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |k#2@0| () Int)
(declare-fun |k#prime#0@0| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun |x#0@@1| () T@U)
(declare-fun |z#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u8toInt#0| () T@U)
(declare-fun |IntToU8#0| () T@U)
(declare-fun |helloWorldAgain#0| () T@U)
(declare-fun |successbool#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |zBefore#0| () T@U)
(declare-fun |zAfter#0| () T@U)
(declare-fun |defass#zeroContainer#0| () Bool)
(declare-fun |zeroContainer#0| () T@U)
(declare-fun |c#0@@1| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main_split2)
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
 (=> (= (ControlFlow 0 0) 112) (let ((anon46_correct  (=> (= (ControlFlow 0 64) (- 0 63)) (=> (not (|Seq#Equal| |k#0_0@0| |k'#0_0@0|)) (not (|Seq#Equal| (_module.__default.PrependPrefix |k#0_0@0|) (_module.__default.PrependPrefix |k'#0_0@0|)))))))
(let ((anon131_Else_correct  (=> (and (not (|Seq#Equal| (_module.__default.PrependPrefix |k#0_0@0|) (_module.__default.PrependPrefix |k'#0_0@0|))) (= (ControlFlow 0 71) 64)) anon46_correct)))
(let ((anon131_Then_correct  (=> (|Seq#Equal| (_module.__default.PrependPrefix |k#0_0@0|) (_module.__default.PrependPrefix |k'#0_0@0|)) (=> (and ($IsAlloc SeqType |k#0_0@0| (TSeq TChar) $Heap@0) (|_module.__default.PrependPrefix#canCall| |k#0_0@0|)) (and (=> (= (ControlFlow 0 65) (- 0 70)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (|Seq#Length| (_module.__default.PrependPrefix |k#0_0@0|))))) (=> (|_module.__default.PrependPrefix#canCall| |k#0_0@0|) (and (=> (= (ControlFlow 0 65) (- 0 69)) (|Seq#Equal| |k#0_0@0| (|Seq#Drop| (_module.__default.PrependPrefix |k#0_0@0|) (LitInt 2)))) (=> (|Seq#Equal| |k#0_0@0| (|Seq#Drop| (_module.__default.PrependPrefix |k#0_0@0|) (LitInt 2))) (=> (and ($IsAlloc SeqType |k'#0_0@0| (TSeq TChar) $Heap@0) (|_module.__default.PrependPrefix#canCall| |k'#0_0@0|)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (|Seq#Length| (_module.__default.PrependPrefix |k'#0_0@0|))))) (=> (|_module.__default.PrependPrefix#canCall| |k'#0_0@0|) (and (=> (= (ControlFlow 0 65) (- 0 67)) (|Seq#Equal| |k'#0_0@0| (|Seq#Drop| (_module.__default.PrependPrefix |k'#0_0@0|) (LitInt 2)))) (=> (|Seq#Equal| |k'#0_0@0| (|Seq#Drop| (_module.__default.PrependPrefix |k'#0_0@0|) (LitInt 2))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (|Seq#Equal| |k#0_0@0| |k'#0_0@0|)) (=> (|Seq#Equal| |k#0_0@0| |k'#0_0@0|) (=> (= (ControlFlow 0 65) 64) anon46_correct))))))))))))))))
(let ((anon39_correct  (=> (and (and (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_0@0|)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k'#0_0@0|))) (and ($IsAlloc SeqType |k#0_0@0| (TSeq TChar) $Heap@0) (|_module.__default.PrependPrefix#canCall| |k#0_0@0|))) (and (and ($IsAlloc SeqType |k'#0_0@0| (TSeq TChar) $Heap@0) (|_module.__default.PrependPrefix#canCall| |k'#0_0@0|)) (and (|_module.__default.PrependPrefix#canCall| |k#0_0@0|) (|_module.__default.PrependPrefix#canCall| |k'#0_0@0|)))) (and (=> (= (ControlFlow 0 72) 65) anon131_Then_correct) (=> (= (ControlFlow 0 72) 71) anon131_Else_correct)))))
(let ((anon128_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_0@0|))) (= (ControlFlow 0 74) 72)) anon39_correct)))
(let ((anon128_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_0@0|)) (= (ControlFlow 0 73) 72)) anon39_correct)))
(let ((anon127_Then_correct  (=> (and ($Is SeqType |k#0_0@0| (TSeq TChar)) ($Is SeqType |k'#0_0@0| (TSeq TChar))) (and (=> (= (ControlFlow 0 75) 73) anon128_Then_correct) (=> (= (ControlFlow 0 75) 74) anon128_Else_correct)))))
(let ((anon163_Then_correct  (=> (and (and (or (or (= |i#10@0| (LitInt 1)) (= |i#10@0| (LitInt 1))) (= |i#10@0| (LitInt 3))) (or (or (= |i#prime#1@0| (LitInt 1)) (= |i#prime#1@0| (LitInt 1))) (= |i#prime#1@0| (LitInt 3)))) (= (ControlFlow 0 2) (- 0 1))) (or (or (not (= (Mod |i#10@0| (LitInt 2)) (Mod |i#prime#1@0| (LitInt 2)))) (not true)) (= (LitInt 2) (LitInt 2))))))
(let ((anon162_Else_correct  (=> (and (not (or (or (= |i#10@0| (LitInt 1)) (= |i#10@0| (LitInt 1))) (= |i#10@0| (LitInt 3)))) (= (ControlFlow 0 4) 2)) anon163_Then_correct)))
(let ((anon162_Then_correct  (=> (and (or (or (= |i#10@0| (LitInt 1)) (= |i#10@0| (LitInt 1))) (= |i#10@0| (LitInt 3))) (= (ControlFlow 0 3) 2)) anon163_Then_correct)))
(let ((anon161_Else_correct  (=> (not (or (or (= |i#10@0| (LitInt 1)) (= |i#10@0| (LitInt 1))) (= |i#10@0| (LitInt 3)))) (and (=> (= (ControlFlow 0 7) 3) anon162_Then_correct) (=> (= (ControlFlow 0 7) 4) anon162_Else_correct)))))
(let ((anon161_Then_correct  (=> (or (or (= |i#10@0| (LitInt 1)) (= |i#10@0| (LitInt 1))) (= |i#10@0| (LitInt 3))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 5) 3) anon162_Then_correct) (=> (= (ControlFlow 0 5) 4) anon162_Else_correct))))))
(let ((anon95_correct  (=> (forall ((|i#9| Int) ) (!  (=> (or (or (= |i#9| (LitInt 1)) (= |i#9| (LitInt 1))) (= |i#9| (LitInt 3))) (= (Mod |i#9| (LitInt 2)) (LitInt 1)))
 :qid |loopsdfy.79:17|
 :skolemid |519|
 :pattern ( (Mod |i#9| 2))
)) (and (=> (= (ControlFlow 0 8) 5) anon161_Then_correct) (=> (= (ControlFlow 0 8) 7) anon161_Else_correct)))))
(let ((anon158_Else_correct  (=> (and (not (or (or (= |i#8@0| (LitInt 1)) (= |i#8@0| (LitInt 1))) (= |i#8@0| (LitInt 3)))) (= (ControlFlow 0 11) 8)) anon95_correct)))
(let ((anon158_Then_correct  (=> (or (or (= |i#8@0| (LitInt 1)) (= |i#8@0| (LitInt 1))) (= |i#8@0| (LitInt 3))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= (LitInt 2) 0)) (not true))) (=> (= (ControlFlow 0 9) 8) anon95_correct)))))
(let ((anon90_correct  (=> (and (forall ((|a#8#0#0@@1| Int) ) (!  (=> (= |a#8#0#0@@1| (LitInt 1)) (and (= (|map$project$4#0#i#0| (Mod |a#8#0#0@@1| (LitInt 2))) (LitInt 1)) (= (Mod |a#8#0#0@@1| (LitInt 2)) (Mod (|map$project$4#0#i#0| (Mod |a#8#0#0@@1| (LitInt 2))) (LitInt 2)))))
 :qid |loopsdfy.76:15|
 :skolemid |517|
 :pattern ( (Mod |a#8#0#0@@1| 2))
)) (|Map#Equal| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#10| TInt (LitInt 1) (LitInt 2))) (|lambda#11| ($Box intType (int_2_U (LitInt 2)))) (TMap TInt TInt)) (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 12) 9) anon158_Then_correct) (=> (= (ControlFlow 0 12) 11) anon158_Else_correct)))))
(let ((anon155_Else_correct  (=> (and (not (and (= |i#6@0| (LitInt 1)) (= |i#prime#0@0| (LitInt 1)))) (= (ControlFlow 0 15) 12)) anon90_correct)))
(let ((anon155_Then_correct  (=> (and (= |i#6@0| (LitInt 1)) (= |i#prime#0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (or (not (= (Mod |i#6@0| (LitInt 2)) (Mod |i#prime#0@0| (LitInt 2)))) (not true)) (= (LitInt 2) (LitInt 2)))) (=> (or (or (not (= (Mod |i#6@0| (LitInt 2)) (Mod |i#prime#0@0| (LitInt 2)))) (not true)) (= (LitInt 2) (LitInt 2))) (=> (= (ControlFlow 0 13) 12) anon90_correct))))))
(let ((anon154_Else_correct  (=> (or (not (= |i#6@0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 17) 13) anon155_Then_correct) (=> (= (ControlFlow 0 17) 15) anon155_Else_correct)))))
(let ((anon154_Then_correct  (=> (= |i#6@0| (LitInt 1)) (and (=> (= (ControlFlow 0 16) 13) anon155_Then_correct) (=> (= (ControlFlow 0 16) 15) anon155_Else_correct)))))
(let ((anon153_Else_correct  (=> (or (not (= |i#6@0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 20) 16) anon154_Then_correct) (=> (= (ControlFlow 0 20) 17) anon154_Else_correct)))))
(let ((anon153_Then_correct  (=> (= |i#6@0| (LitInt 1)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 18) 16) anon154_Then_correct) (=> (= (ControlFlow 0 18) 17) anon154_Else_correct))))))
(let ((anon81_correct  (=> (forall ((|i#5| Int) ) (!  (=> (= |i#5| (LitInt 1)) (= (Mod |i#5| (LitInt 2)) (LitInt 1)))
 :qid |loopsdfy.75:17|
 :skolemid |516|
 :pattern ( (Mod |i#5| 2))
)) (and (=> (= (ControlFlow 0 21) 18) anon153_Then_correct) (=> (= (ControlFlow 0 21) 20) anon153_Else_correct)))))
(let ((anon150_Else_correct  (=> (and (or (not (= |i#4@0| (LitInt 1))) (not true)) (= (ControlFlow 0 24) 21)) anon81_correct)))
(let ((anon150_Then_correct  (=> (= |i#4@0| (LitInt 1)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= (LitInt 2) 0)) (not true))) (=> (= (ControlFlow 0 22) 21) anon81_correct)))))
(let ((anon76_correct  (=> (forall ((|ch#1| T@U) ) (!  (=> (and ($Is charType |ch#1| TChar) (|Seq#Contains| |c#0@0| ($Box charType |ch#1|))) (not (|Seq#Contains| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 101))) ($Box charType |ch#1|))))
 :qid |loopsdfy.70:17|
 :skolemid |514|
 :pattern ( (|Seq#Contains| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 101))) ($Box charType |ch#1|)))
 :pattern ( (|Seq#Contains| |c#0@0| ($Box charType |ch#1|)))
)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4)))
 :qid |loopsdfy.83:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 25) 22) anon150_Then_correct) (=> (= (ControlFlow 0 25) 24) anon150_Else_correct))))))
(let ((anon147_Else_correct  (=> (and (not (|Seq#Contains| |c#0@0| ($Box charType |ch#0@0|))) (= (ControlFlow 0 28) 25)) anon76_correct)))
(let ((anon147_Then_correct  (=> (and (|Seq#Contains| |c#0@0| ($Box charType |ch#0@0|)) (= (ControlFlow 0 27) 25)) anon76_correct)))
(let ((anon146_Then_correct  (=> ($Is charType |ch#0@0| TChar) (and (=> (= (ControlFlow 0 29) 27) anon147_Then_correct) (=> (= (ControlFlow 0 29) 28) anon147_Else_correct)))))
(let ((anon146_Else_correct  (=> (and (not ($Is charType |ch#0@0| TChar)) (= (ControlFlow 0 26) 25)) anon76_correct)))
(let ((anon71_correct  (=> (and (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 1) |i#3|) (<= |i#3| (LitInt 10))) (or (not (= (Mod |i#3| (LitInt 11)) 0)) (not true)))
 :qid |loopsdfy.68:17|
 :skolemid |513|
 :pattern ( (Mod |i#3| 11))
)) (= |c#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 97)))))) (and (=> (= (ControlFlow 0 30) 29) anon146_Then_correct) (=> (= (ControlFlow 0 30) 26) anon146_Else_correct)))))
(let ((anon144_Else_correct  (=> (and (not (and (<= (LitInt 1) |i#2@0|) (<= |i#2@0| (LitInt 10)))) (= (ControlFlow 0 33) 30)) anon71_correct)))
(let ((anon144_Then_correct  (=> (and (<= (LitInt 1) |i#2@0|) (<= |i#2@0| (LitInt 10))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= (LitInt 11) 0)) (not true))) (=> (= (ControlFlow 0 31) 30) anon71_correct)))))
(let ((anon143_Else_correct  (=> (< |i#2@0| (LitInt 1)) (and (=> (= (ControlFlow 0 35) 31) anon144_Then_correct) (=> (= (ControlFlow 0 35) 33) anon144_Else_correct)))))
(let ((anon143_Then_correct  (=> (<= (LitInt 1) |i#2@0|) (and (=> (= (ControlFlow 0 34) 31) anon144_Then_correct) (=> (= (ControlFlow 0 34) 33) anon144_Else_correct)))))
(let ((anon64_correct  (=> (exists ((|i#1| Int) ) (!  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) _module.ZeroContainer.i))) |i#1|) (< |i#1| 10)) (= (Mod |i#1| (LitInt 3)) (LitInt 2)))
 :qid |loopsdfy.67:17|
 :skolemid |512|
 :pattern ( (Mod |i#1| 3))
)) (and (=> (= (ControlFlow 0 36) 34) anon143_Then_correct) (=> (= (ControlFlow 0 36) 35) anon143_Else_correct)))))
(let ((anon140_Else_correct  (=> (and (not (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) _module.ZeroContainer.i))) |i#0@0|) (< |i#0@0| 10))) (= (ControlFlow 0 39) 36)) anon64_correct)))
(let ((anon140_Then_correct  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) _module.ZeroContainer.i))) |i#0@0|) (< |i#0@0| 10)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (not (= (LitInt 3) 0)) (not true))) (=> (= (ControlFlow 0 37) 36) anon64_correct)))))
(let ((anon139_Else_correct  (=> (< |i#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) _module.ZeroContainer.i)))) (and (=> (= (ControlFlow 0 41) 37) anon140_Then_correct) (=> (= (ControlFlow 0 41) 39) anon140_Else_correct)))))
(let ((anon139_Then_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) _module.ZeroContainer.i))) |i#0@0|) (and (=> (= (ControlFlow 0 40) 37) anon140_Then_correct) (=> (= (ControlFlow 0 40) 39) anon140_Else_correct)))))
(let ((anon57_correct  (=> (and (|Set#IsMember| (|Map#Domain| |zAfter#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))) ($Box charType (|char#FromInt| 51))))) (|Seq#Equal| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zAfter#0@0|) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))) ($Box charType (|char#FromInt| 51))))))) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))))) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.ZeroContainer) ($IsAlloc refType call1formal@this Tclass._module.ZeroContainer $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.ZeroContainer) ($IsAlloc refType call1formal@this@0 Tclass._module.ZeroContainer $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) alloc))))) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |loopsdfy.95:3|
 :skolemid |566|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 42) (- 0 47)) true) (and (=> (= (ControlFlow 0 42) (- 0 46)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 42) (- 0 45)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.ZeroContainer.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.ZeroContainer.i)) (=> (= |$rhs#0@0| (LitInt 0)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.ZeroContainer.i ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 42) (- 0 44)) true) (and (=> (= (ControlFlow 0 42) (- 0 43)) (or (not (= call1formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 42) 40) anon139_Then_correct) (=> (= (ControlFlow 0 42) 41) anon139_Else_correct))))))))))))))))
(let ((anon136_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |zAfter#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))) ($Box charType (|char#FromInt| 51)))))) (= (ControlFlow 0 50) 42)) anon57_correct)))
(let ((anon136_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |zAfter#0@0|) ($Box SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))) ($Box charType (|char#FromInt| 51))))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (|Set#IsMember| (|Map#Domain| |zAfter#0@0|) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 95))) ($Box charType (|char#FromInt| 51))))))) (=> (= (ControlFlow 0 48) 42) anon57_correct)))))
(let ((anon55_correct  (=> (and (forall ((|k#11| T@U) ) (!  (=> ($Is SeqType |k#11| (TSeq TChar)) (and (|_module.__default.PrependPrefix#canCall| |k#11|) (forall ((|a#7#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |a#7#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType (|map$project$3#0#k#0| (_module.__default.PrependPrefix |a#7#0#0@@1|)))) (= (_module.__default.PrependPrefix |a#7#0#0@@1|) (_module.__default.PrependPrefix (|map$project$3#0#k#0| (_module.__default.PrependPrefix |a#7#0#0@@1|))))))
 :qid |loopsdfy.62:13|
 :skolemid |508|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |a#7#0#0@@1|))))
 :pattern ( (_module.__default.PrependPrefix |a#7#0#0@@1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |a#7#0#0@@1|)))
))))
 :qid |loopsdfy.62:13|
 :skolemid |509|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |k#11|))))
 :pattern ( (_module.__default.PrependPrefix |k#11|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#11|)))
)) (= |zAfter#0@0| (|Map#Merge| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box SeqType _module.__default.CONST1) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98)))))) ($Box SeqType _module.__default.CONST3) ($Box SeqType (|Seq#Append| _module.__default.CONST1 (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 99)))))) ($Box SeqType _module.__default.CONST5) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49)))))) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#8| (TSeq TChar) (|Map#Domain| |zBefore#0@0|))) (|lambda#9| (|Map#Elements| |zBefore#0@0|)) (TMap (TSeq TChar) (TSeq TChar)))))) (and (=> (= (ControlFlow 0 51) 48) anon136_Then_correct) (=> (= (ControlFlow 0 51) 50) anon136_Else_correct)))))
(let ((anon135_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#prime#3@0|)))) (= (ControlFlow 0 55) 51)) anon55_correct)))
(let ((anon135_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#prime#3@0|))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (or (not (= (_module.__default.PrependPrefix |k#10@0|) (_module.__default.PrependPrefix |k#prime#3@0|))) (not true)) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |k#10@0|))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |k#prime#3@0|)))))) (=> (or (or (not (= (_module.__default.PrependPrefix |k#10@0|) (_module.__default.PrependPrefix |k#prime#3@0|))) (not true)) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |k#10@0|))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |zBefore#0@0|) ($Box SeqType |k#prime#3@0|))))) (=> (= (ControlFlow 0 53) 51) anon55_correct))))))
(let ((anon134_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|))) (and (=> (= (ControlFlow 0 58) 53) anon135_Then_correct) (=> (= (ControlFlow 0 58) 55) anon135_Else_correct)))))
(let ((anon134_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|))) (=> (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|)) (and (=> (= (ControlFlow 0 56) 53) anon135_Then_correct) (=> (= (ControlFlow 0 56) 55) anon135_Else_correct)))))))
(let ((anon133_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|))) (and (=> (= (ControlFlow 0 60) 56) anon134_Then_correct) (=> (= (ControlFlow 0 60) 58) anon134_Else_correct)))))
(let ((anon133_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#10@0|)) (=> (and ($IsAlloc SeqType |k#10@0| (TSeq TChar) $Heap@0) (|_module.__default.PrependPrefix#canCall| |k#10@0|)) (and (=> (= (ControlFlow 0 59) 56) anon134_Then_correct) (=> (= (ControlFlow 0 59) 58) anon134_Else_correct))))))
(let ((anon132_Then_correct  (=> (and (and ($Is SeqType |k#10@0| (TSeq TChar)) ($IsAlloc SeqType |k#10@0| (TSeq TChar) $Heap@0)) (and ($Is SeqType |k#prime#3@0| (TSeq TChar)) ($IsAlloc SeqType |k#prime#3@0| (TSeq TChar) $Heap@0))) (and (=> (= (ControlFlow 0 61) 59) anon133_Then_correct) (=> (= (ControlFlow 0 61) 60) anon133_Else_correct)))))
(let ((anon132_Else_correct  (=> (and (not (and ($Is SeqType |k#10@0| (TSeq TChar)) ($IsAlloc SeqType |k#10@0| (TSeq TChar) $Heap@0))) (= (ControlFlow 0 52) 51)) anon55_correct)))
(let ((anon127_Else_correct  (=> (forall ((|k#0_1| T@U) (|k'#0_1| T@U) ) (!  (=> (and (and ($Is SeqType |k#0_1| (TSeq TChar)) ($Is SeqType |k'#0_1| (TSeq TChar))) (and (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_1|)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k'#0_1|)))) (=> (not (|Seq#Equal| |k#0_1| |k'#0_1|)) (not (|Seq#Equal| (_module.__default.PrependPrefix |k#0_1|) (_module.__default.PrependPrefix |k'#0_1|)))))
 :qid |loopsdfy.51:10|
 :skolemid |506|
 :pattern ( (_module.__default.PrependPrefix |k'#0_1|) (_module.__default.PrependPrefix |k#0_1|))
 :pattern ( (_module.__default.PrependPrefix |k'#0_1|) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_1|)))
 :pattern ( (_module.__default.PrependPrefix |k#0_1|) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k'#0_1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k'#0_1|)) (|Set#IsMember| (|Map#Domain| |zBefore#0@0|) ($Box SeqType |k#0_1|)))
)) (and (=> (= (ControlFlow 0 62) 61) anon132_Then_correct) (=> (= (ControlFlow 0 62) 52) anon132_Else_correct)))))
(let ((anon34_correct  (=> (= |is_result#0@0| (forall ((|k#8| Int) (|k'#0| Int) ) (!  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#8|))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#0|)))) (=> (or (not (= |k#8| |k'#0|)) (not true)) (not (|Seq#Equal| ($Unbox SeqType (_module.Result.value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k#8|)))))) ($Unbox SeqType (_module.Result.value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k'#0|))))))))))
 :qid |loopsdfy.45:27|
 :skolemid |505|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k'#0|)))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k#8|)))))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k'#0|)))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#8|))))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k#8|)))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#0|))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#8|))))
))) (=> (and |is_result#0@0| (= |zBefore#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 51))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 55))))))))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 76) 75) anon127_Then_correct) (=> (= (ControlFlow 0 76) 62) anon127_Else_correct))))))))
(let ((anon125_Else_correct  (=> (and (= |k#9@0| |k'#1@0|) (= (ControlFlow 0 80) 76)) anon34_correct)))
(let ((anon125_Then_correct  (=> (and (or (not (= |k#9@0| |k'#1@0|)) (not true)) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#9@0|)))) (=> (and (and (_module.Result.Success_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k#9@0|))))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#1@0|)))) (and (_module.Result.Success_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U |k'#1@0|))))) (= (ControlFlow 0 79) 76))) anon34_correct))))
(let ((anon124_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#9@0|))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#1@0|)))) (and (=> (= (ControlFlow 0 81) 79) anon125_Then_correct) (=> (= (ControlFlow 0 81) 80) anon125_Else_correct)))))
(let ((anon124_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#9@0|))) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k'#1@0|))))) (= (ControlFlow 0 78) 76)) anon34_correct)))
(let ((anon123_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#9@0|)))) (and (=> (= (ControlFlow 0 83) 81) anon124_Then_correct) (=> (= (ControlFlow 0 83) 78) anon124_Else_correct)))))
(let ((anon123_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U |k#9@0|))) (and (=> (= (ControlFlow 0 82) 81) anon124_Then_correct) (=> (= (ControlFlow 0 82) 78) anon124_Else_correct)))))
(let ((anon26_correct  (=> (and (and (and (forall ((|a#5#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$2#0#k#0| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|)))))))) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|)))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$2#0#k#0| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|)))))))))))))
 :qid |loopsdfy.39:30|
 :skolemid |504|
 :pattern ( (|#_module.Result.Success| ($Box intType |a#5#0#0@@1|)))
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#5#0#0@@1|)))
)) (= |helloWorldAgain#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) (|Map#Domain| |u8toInt#0@0|) (|Map#Elements| |x#0@0|) (|Map#Elements| |u8toInt#0@0|))) |lambda#7| (TMap (TSeq TChar) (Tclass._module.Result Tclass._module.u8))))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= |successbool#0@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Result.Success| ($Box boolType (Lit boolType (bool_2_U true))))))))))) (and (and (_module.Result.Success_q |successbool#0@0|) (_module.Result.Success_q ($Unbox DatatypeTypeType (_module.Result.value |successbool#0@0|)))) (and (= (U_2_bool ($Unbox boolType (_module.Result.value ($Unbox DatatypeTypeType (_module.Result.value |successbool#0@0|))))) (U_2_bool (Lit boolType (bool_2_U true)))) (= |s#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Result.Success| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))))))))) ($Box intType (int_2_U (LitInt 2))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Result.Success| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 119))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 100)))))))))))))) (and (=> (= (ControlFlow 0 84) 82) anon123_Then_correct) (=> (= (ControlFlow 0 84) 83) anon123_Else_correct)))))
(let ((anon120_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#2@0|))))) (= (ControlFlow 0 87) 84)) anon26_correct)))
(let ((anon120_Then_correct  (=> (and (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#2@0|)))) (and (or (or (not (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#2@0|))))))) (not true)) (= (|#_module.Result.Success| ($Box intType (int_2_U |k#6@0|))) (|#_module.Result.Success| ($Box intType (int_2_U |k#prime#2@0|))))) (= (ControlFlow 0 86) 84))) anon26_correct)))
(let ((anon119_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (and (=> (= (ControlFlow 0 89) 86) anon120_Then_correct) (=> (= (ControlFlow 0 89) 87) anon120_Else_correct)))))
(let ((anon119_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (and (=> (= (ControlFlow 0 88) 86) anon120_Then_correct) (=> (= (ControlFlow 0 88) 87) anon120_Else_correct)))))
(let ((anon118_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (and (=> (= (ControlFlow 0 91) 88) anon119_Then_correct) (=> (= (ControlFlow 0 91) 89) anon119_Else_correct)))))
(let ((anon118_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (=> (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))))) (and (=> (= (ControlFlow 0 90) 88) anon119_Then_correct) (=> (= (ControlFlow 0 90) 89) anon119_Else_correct))))))
(let ((anon117_Then_correct  (=> (and (and (<= (LitInt 0) |k#6@0|) (< |k#6@0| 10)) (and (<= (LitInt 0) |k#prime#2@0|) (< |k#prime#2@0| 10))) (and (=> (= (ControlFlow 0 92) 90) anon118_Then_correct) (=> (= (ControlFlow 0 92) 91) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#6@0|) (< |k#6@0| 10))) (= (ControlFlow 0 85) 84)) anon26_correct)))
(let ((anon19_correct  (=> (and (forall ((|a#3#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$1#0#k#0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))))))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$1#0#k#0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))))))))))))
 :qid |loopsdfy.38:22|
 :skolemid |499|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))
)) (= |IntToU8#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#4| TInt (|Map#Domain| |u8toInt#0@0|) (|Map#Elements| |u8toInt#0@0|))) |lambda#5| (TMap TInt Tclass._module.u8)))) (and (=> (= (ControlFlow 0 93) 92) anon117_Then_correct) (=> (= (ControlFlow 0 93) 85) anon117_Else_correct)))))
(let ((anon116_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|))))) (= (ControlFlow 0 96) 93)) anon19_correct)))
(let ((anon116_Then_correct  (=> (and (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|)))) (and (or (or (not (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|))))))) (not true)) (= |k#4@0| |k#prime#1@0|)) (= (ControlFlow 0 95) 93))) anon19_correct)))
(let ((anon115_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 98) 95) anon116_Then_correct) (=> (= (ControlFlow 0 98) 96) anon116_Else_correct)))))
(let ((anon115_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (and (=> (= (ControlFlow 0 97) 95) anon116_Then_correct) (=> (= (ControlFlow 0 97) 96) anon116_Else_correct)))))
(let ((anon114_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 100) 97) anon115_Then_correct) (=> (= (ControlFlow 0 100) 98) anon115_Else_correct)))))
(let ((anon114_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 99) 97) anon115_Then_correct) (=> (= (ControlFlow 0 99) 98) anon115_Else_correct)))))
(let ((anon113_Then_correct  (=> (and (and (<= (LitInt 0) |k#4@0|) (< |k#4@0| 10)) (and (<= (LitInt 0) |k#prime#1@0|) (< |k#prime#1@0| 10))) (and (=> (= (ControlFlow 0 101) 99) anon114_Then_correct) (=> (= (ControlFlow 0 101) 100) anon114_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#4@0|) (< |k#4@0| 10))) (= (ControlFlow 0 94) 93)) anon19_correct)))
(let ((anon12_correct  (=> (forall ((|a#1#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |a#1#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U (|map$project$0#0#k#0| (+ (U_2_int |a#1#0#0@@1|) 1))))) (= (+ (U_2_int |a#1#0#0@@1|) 1) (+ (|map$project$0#0#k#0| (+ (U_2_int |a#1#0#0@@1|) 1)) 1))))
 :qid |loopsdfy.32:16|
 :skolemid |495|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |a#1#0#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |a#1#0#0@@1|)))
)) (=> (and (= |z#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| TInt (|Map#Domain| |x#0@0|) 1)) (|lambda#3| (|Map#Elements| |x#0@0|)) (TMap TInt (TSeq TChar)))) (= |s##0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) (=> (and (and ($Is SetType |call3formal@r#0| (TSet call0formal@_module._default.ToSet$T)) ($IsAlloc SetType |call3formal@r#0| (TSet call0formal@_module._default.ToSet$T) $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and ($Is SetType |call3formal@r#0@0| (TSet TInt)) ($IsAlloc SetType |call3formal@r#0@0| (TSet TInt) $Heap@0)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |loopsdfy.7:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0@0| (LitInt 1)))) (=> (and (and (and (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 10)) (= |newtype$check#1@0| (LitInt 1))) (and (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 10)) (= |newtype$check#2@0| (LitInt 2)))) (and (and (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 10)) (= |newtype$check#3@0| (LitInt 2))) (and (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 10)) (= |u8toInt#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 2))))))))) (and (=> (= (ControlFlow 0 102) 101) anon113_Then_correct) (=> (= (ControlFlow 0 102) 94) anon113_Else_correct)))))))))
(let ((anon112_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|))))) (= (ControlFlow 0 104) 102)) anon12_correct)))
(let ((anon112_Then_correct  (=> (and (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|)))) (and (or (or (not (= (+ |k#2@0| 1) (+ |k#prime#0@0| 1))) (not true)) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|)))))) (= (ControlFlow 0 103) 102))) anon12_correct)))
(let ((anon111_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 106) 103) anon112_Then_correct) (=> (= (ControlFlow 0 106) 104) anon112_Else_correct)))))
(let ((anon111_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 105) 103) anon112_Then_correct) (=> (= (ControlFlow 0 105) 104) anon112_Else_correct)))))
(let ((anon110_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 108) 105) anon111_Then_correct) (=> (= (ControlFlow 0 108) 106) anon111_Else_correct)))))
(let ((anon110_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (and (=> (= (ControlFlow 0 107) 105) anon111_Then_correct) (=> (= (ControlFlow 0 107) 106) anon111_Else_correct)))))
(let ((anon3_correct  (=> (forall ((|k#1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |k#1|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |k#1|)))) (LitInt 5)))
 :qid |loopsdfy.30:17|
 :skolemid |493|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |k#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |k#1|)))
)) (and (=> (= (ControlFlow 0 109) 107) anon110_Then_correct) (=> (= (ControlFlow 0 109) 108) anon110_Else_correct)))))
(let ((anon107_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#0@0|)))) (= (ControlFlow 0 111) 109)) anon3_correct)))
(let ((anon107_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#0@0|))) (= (ControlFlow 0 110) 109)) anon3_correct)))
(let ((anon0_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MapType |x#0@@1| (TMap TInt (TSeq TChar))) ($IsAlloc MapType |x#0@@1| (TMap TInt (TSeq TChar)) $Heap)) true) (=> (and (and (and ($Is MapType |z#0| (TMap TInt (TSeq TChar))) ($IsAlloc MapType |z#0| (TMap TInt (TSeq TChar)) $Heap)) true) (and (and ($Is SetType |t#0| (TSet TInt)) ($IsAlloc SetType |t#0| (TSet TInt) $Heap)) true)) (=> (and (and (and (and ($Is MapType |u8toInt#0| (TMap Tclass._module.u8 TInt)) ($IsAlloc MapType |u8toInt#0| (TMap Tclass._module.u8 TInt) $Heap)) true) (and (and ($Is MapType |IntToU8#0| (TMap TInt Tclass._module.u8)) ($IsAlloc MapType |IntToU8#0| (TMap TInt Tclass._module.u8) $Heap)) true)) (and (and (and ($Is MapType |helloWorldAgain#0| (TMap (TSeq TChar) (Tclass._module.Result Tclass._module.u8))) ($IsAlloc MapType |helloWorldAgain#0| (TMap (TSeq TChar) (Tclass._module.Result Tclass._module.u8)) $Heap)) true) (and (and ($Is DatatypeTypeType |successbool#0| (Tclass._module.Result (Tclass._module.Result TBool))) ($IsAlloc DatatypeTypeType |successbool#0| (Tclass._module.Result (Tclass._module.Result TBool)) $Heap)) true))) (=> (and (and (and (and (and ($Is MapType |s#0| (TMap TInt (Tclass._module.Result (TSeq TChar)))) ($IsAlloc MapType |s#0| (TMap TInt (Tclass._module.Result (TSeq TChar))) $Heap)) true) (and (and ($Is MapType |zBefore#0| (TMap (TSeq TChar) (TSeq TChar))) ($IsAlloc MapType |zBefore#0| (TMap (TSeq TChar) (TSeq TChar)) $Heap)) true)) (and (and (and ($Is MapType |zAfter#0| (TMap (TSeq TChar) (TSeq TChar))) ($IsAlloc MapType |zAfter#0| (TMap (TSeq TChar) (TSeq TChar)) $Heap)) true) (and (=> |defass#zeroContainer#0| (and ($Is refType |zeroContainer#0| Tclass._module.ZeroContainer) ($IsAlloc refType |zeroContainer#0| Tclass._module.ZeroContainer $Heap))) true))) (and (and (and (and ($Is SeqType |c#0@@1| (TSeq TChar)) ($IsAlloc SeqType |c#0@@1| (TSeq TChar) $Heap)) true) (= 3 $FunctionContextHeight)) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))) ($Box intType (int_2_U (LitInt 2))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 119))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 100))))))))))) (and (=> (= (ControlFlow 0 112) 110) anon107_Then_correct) (=> (= (ControlFlow 0 112) 111) anon107_Else_correct)))))))))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
