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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.u8 () T@U)
(declare-fun Tagclass._module.Result () T@U)
(declare-fun Tagclass._module.ZeroContainer () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun Tagclass._module.ZeroContainer? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$u8 () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$ZeroContainer () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.u8 () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ZeroContainer? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.ZeroContainer () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Result.msg (T@U) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun |map$project$0#0#k#0| (Int) Int)
(declare-fun |lambda#2| (T@U T@U Int) T@U)
(declare-fun charType () T@T)
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
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.u8 Tagclass._module.Result Tagclass._module.ZeroContainer |##_module.Result.Success| |##_module.Result.Failure| Tagclass._module.ZeroContainer? |tytagFamily$_tuple#2| tytagFamily$u8 tytagFamily$Result tytagFamily$ZeroContainer)
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
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.u8 $h)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.u8 $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
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
(assert (= (Ctor refType) 5))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ZeroContainer?)  (or (= $o null) (= (dtype $o) Tclass._module.ZeroContainer?)))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($Is refType $o Tclass._module.ZeroContainer?))
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
(assert  (and (and (and (= (Ctor FieldType) 6) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s T@U) (bx T@U) (t@@1 T@U) ) (!  (=> (and ($Is SeqType s (TSeq t@@1)) ($IsBox bx t@@1)) ($Is SeqType (|Seq#Build| s bx) (TSeq t@@1)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t@@1)))
)))
(assert (= (Ctor MapType) 9))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@2) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2))
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
(assert (= (Ctor SetType) 10))
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
(assert (forall ((v@@1 T@U) (t@@2 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@2 h@@0) ($IsAlloc T@@1 v@@1 t@@2 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@2 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@3 h@@1) ($IsAllocBox bx@@3 t@@3 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@3 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@4 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@4 h@@2) ($IsAlloc T@@2 v@@2 t@@4 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@4 h@@2))
)))
(assert (forall ((_module.Result$T T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._module.Result _module.Result$T))
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
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@3 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i@@0) v@@3)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i@@0))
)))
(assert (forall ((_module.Result$T@@0 T@U) (|a#2#0#0@@2| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@0) $h@@3) ($IsAllocBox |a#2#0#0@@2| _module.Result$T@@0 $h@@3)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@2|) (Tclass._module.Result _module.Result$T@@0) $h@@3))
)))
(assert (forall ((d@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Result.Failure_q d@@6) (exists ((_module.Result$T@@1 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@4)
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Result _module.Result$T@@1) $h@@4))
)))) ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@4))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc SeqType (_module.Result.msg d@@6) (TSeq TChar) $h@@4))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#8#0#0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@5) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@5)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@5))
)))
(assert (forall ((_module.Result$T@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)) (or (_module.Result.Success_q d@@7) (_module.Result.Failure_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Result.Failure_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
 :pattern ( (_module.Result.Success_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@3)))
)))
(assert (forall ((|l#0@@0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#3| |l#0@@0|) |$w#0|) (MapType0Select BoxType BoxType |l#0@@0| ($Box intType (int_2_U (|map$project$0#0#k#0| (U_2_int ($Unbox intType |$w#0|)))))))
 :qid |loopsdfy.32:38|
 :skolemid |572|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#3| |l#0@@0|) |$w#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| Int) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0@@1| |l#1@@0| |l#2@@0|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@1|) (exists ((|a#0#0#0| Int) ) (!  (and (|Set#IsMember| |l#1@@0| ($Box intType (int_2_U |a#0#0#0|))) (= (U_2_int ($Unbox intType |$w#0@@0|)) (+ |a#0#0#0| |l#2@@0|)))
 :qid |loopsdfy.32:16|
 :skolemid |494|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |571|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0@@1| |l#1@@0| |l#2@@0|) |$w#0@@0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
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
(assert (= (Ctor charType) 11))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((v@@4 T@U) (t@@5 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@5) ($Is T@@3 v@@4 t@@5))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@5))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@6 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@6 u)) t@@6)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@6 u))
)))
(assert (forall ((t@@7 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@7 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@7 u@@0))
)))
(assert (forall ((t@@8 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@8 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@8 u@@1))
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
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@1) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSet (TSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSet t@@10)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@12))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@7 (TMap t0@@4 t1@@1) h@@5) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11) t1@@1 h@@5) ($IsAllocBox bx@@11 t0@@4 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@7 (TMap t0@@4 t1@@1) h@@5))
)))
(assert (forall ((_module.Result$T@@5 T@U) (|a#2#0#0@@3| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@3|) (Tclass._module.Result _module.Result$T@@5)) ($IsBox |a#2#0#0@@3| _module.Result$T@@5))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@3|) (Tclass._module.Result _module.Result$T@@5)))
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
(assert (forall ((bx@@12 T@U) (s@@3 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@12 (TMap s@@3 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@12)) bx@@12) ($Is MapType ($Unbox MapType bx@@12) (TMap s@@3 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@12 (TMap s@@3 t@@13)))
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
(assert (forall ((d@@8 T@U) (_module.Result$T@@6 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Result.Success_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@6) $h@@6))) ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@6))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAllocBox (_module.Result.value d@@8) _module.Result$T@@6 $h@@6))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@1| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@1) |l#2@@1|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@1| |l#3|) $o@@1 $f))
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
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@8 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@8)
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
(assert (forall ((m@@8 T@U) (v@@9 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@9) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@9 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@9))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@10 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@10)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@10)) |u'|) v@@10))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@10)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@10)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@10)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@10)) |u'|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@14 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@14)))
)))
(assert (forall ((bx@@15 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@15)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@15))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@15 (TSeq t@@15)))
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
(assert (forall ((v@@11 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@11 (TMap t0@@6 t1@@3)) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@11) bx@@17) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@17) t1@@3) ($IsBox bx@@17 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@17))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@11) bx@@17))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@11 (TMap t0@@6 t1@@3)))
)))
(assert (= (Tag Tclass._module.u8) Tagclass._module.u8))
(assert (= (TagFamily Tclass._module.u8) tytagFamily$u8))
(assert (= (Tag Tclass._module.ZeroContainer) Tagclass._module.ZeroContainer))
(assert (= (TagFamily Tclass._module.ZeroContainer) tytagFamily$ZeroContainer))
(assert (= (Tag Tclass._module.ZeroContainer?) Tagclass._module.ZeroContainer?))
(assert (= (TagFamily Tclass._module.ZeroContainer?) tytagFamily$ZeroContainer))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@7))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@7))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@8))
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
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((h@@6 T@U) (v@@12 T@U) ) (! ($IsAlloc intType v@@12 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@12 TInt h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@13 T@U) ) (! ($IsAlloc boolType v@@13 TBool h@@7)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@13 TBool h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@14 T@U) ) (! ($IsAlloc charType v@@14 TChar h@@8)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@14 TChar h@@8))
)))
(assert (forall ((v@@15 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@15 (TSeq t0@@7)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@15))) ($IsBox (|Seq#Index| v@@15 i@@2) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@15 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@15 (TSeq t0@@7)))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@3 T@U) (v@@16 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@16)))
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
(assert (forall ((v@@17 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@17 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@17) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@17) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@17) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@17 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is intType v@@18 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@18 TInt))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is boolType v@@19 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@19 TBool))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is charType v@@20 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@20 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |u8toInt#0@0| () T@U)
(declare-fun |k#6@0| () Int)
(declare-fun |k#prime#2@0| () Int)
(declare-fun |x#0@0| () T@U)
(declare-fun |IntToU8#0@0| () T@U)
(declare-fun |k#4@0| () Int)
(declare-fun |k#prime#1@0| () Int)
(declare-fun |z#0@0| () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun |call3formal@r#0| () T@U)
(declare-fun call0formal@_module._default.ToSet$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main_split0)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon120_Then_correct  (=> (and (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#2@0|)))) (= (ControlFlow 0 2) (- 0 1))) (or (or (not (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#2@0|))))))) (not true)) (= (|#_module.Result.Success| ($Box intType (int_2_U |k#6@0|))) (|#_module.Result.Success| ($Box intType (int_2_U |k#prime#2@0|))))))))
(let ((anon119_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (= (ControlFlow 0 4) 2)) anon120_Then_correct)))
(let ((anon119_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (= (ControlFlow 0 3) 2)) anon120_Then_correct)))
(let ((anon118_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (and (=> (= (ControlFlow 0 8) 3) anon119_Then_correct) (=> (= (ControlFlow 0 8) 4) anon119_Else_correct)))))
(let ((anon118_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|Set#IsMember| (|Map#Domain| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|))))) (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#6@0|)))) (and (=> (= (ControlFlow 0 5) 3) anon119_Then_correct) (=> (= (ControlFlow 0 5) 4) anon119_Else_correct)))))))))
(let ((anon19_correct  (=> (and (forall ((|a#3#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$1#0#k#0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))))))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U (|map$project$1#0#k#0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))))))))))))
 :qid |loopsdfy.38:22|
 :skolemid |499|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType |a#3#0#0@@1|)))
)) (= |IntToU8#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#4| TInt (|Map#Domain| |u8toInt#0@0|) (|Map#Elements| |u8toInt#0@0|))) |lambda#5| (TMap TInt Tclass._module.u8)))) (=> (and (and (<= (LitInt 0) |k#6@0|) (< |k#6@0| 10)) (and (<= (LitInt 0) |k#prime#2@0|) (< |k#prime#2@0| 10))) (and (=> (= (ControlFlow 0 9) 5) anon118_Then_correct) (=> (= (ControlFlow 0 9) 8) anon118_Else_correct))))))
(let ((anon116_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|))))) (= (ControlFlow 0 13) 9)) anon19_correct)))
(let ((anon116_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (or (not (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|))))))) (not true)) (= |k#4@0| |k#prime#1@0|))) (=> (or (or (not (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u8toInt#0@0|) ($Box intType (int_2_U |k#prime#1@0|))))))) (not true)) (= |k#4@0| |k#prime#1@0|)) (=> (= (ControlFlow 0 11) 9) anon19_correct))))))
(let ((anon115_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 15) 11) anon116_Then_correct) (=> (= (ControlFlow 0 15) 13) anon116_Else_correct)))))
(let ((anon115_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (and (=> (= (ControlFlow 0 14) 11) anon116_Then_correct) (=> (= (ControlFlow 0 14) 13) anon116_Else_correct)))))
(let ((anon114_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 18) 14) anon115_Then_correct) (=> (= (ControlFlow 0 18) 15) anon115_Else_correct)))))
(let ((anon114_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|)))) (=> (|Set#IsMember| (|Map#Domain| |u8toInt#0@0|) ($Box intType (int_2_U |k#4@0|))) (and (=> (= (ControlFlow 0 16) 14) anon115_Then_correct) (=> (= (ControlFlow 0 16) 15) anon115_Else_correct)))))))
(let ((anon113_Then_correct  (=> (and (and (<= (LitInt 0) |k#4@0|) (< |k#4@0| 10)) (and (<= (LitInt 0) |k#prime#1@0|) (< |k#prime#1@0| 10))) (and (=> (= (ControlFlow 0 19) 16) anon114_Then_correct) (=> (= (ControlFlow 0 19) 18) anon114_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#4@0|) (< |k#4@0| 10))) (= (ControlFlow 0 10) 9)) anon19_correct)))
(let ((anon12_correct  (=> (and (forall ((|a#1#0#0@@1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |a#1#0#0@@1|)) (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U (|map$project$0#0#k#0| (+ (U_2_int |a#1#0#0@@1|) 1))))) (= (+ (U_2_int |a#1#0#0@@1|) 1) (+ (|map$project$0#0#k#0| (+ (U_2_int |a#1#0#0@@1|) 1)) 1))))
 :qid |loopsdfy.32:16|
 :skolemid |495|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |a#1#0#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |a#1#0#0@@1|)))
)) (= |z#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| TInt (|Map#Domain| |x#0@0|) 1)) (|lambda#3| (|Map#Elements| |x#0@0|)) (TMap TInt (TSeq TChar))))) (and (=> (= (ControlFlow 0 20) (- 0 26)) (|Set#IsMember| (|Map#Domain| |z#0@0|) ($Box intType (int_2_U (LitInt 2))))) (and (=> (= (ControlFlow 0 20) (- 0 25)) (|Set#IsMember| (|Map#Domain| |z#0@0|) ($Box intType (int_2_U (LitInt 3))))) (=> (= |s##0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))))) (=> (and (and ($Is SetType |call3formal@r#0| (TSet call0formal@_module._default.ToSet$T)) ($IsAlloc SetType |call3formal@r#0| (TSet call0formal@_module._default.ToSet$T) $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and ($Is SetType |call3formal@r#0@0| (TSet TInt)) ($IsAlloc SetType |call3formal@r#0@0| (TSet TInt) $Heap@0)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |loopsdfy.7:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 20) (- 0 24)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 10))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 10)) (=> (= |newtype$check#1@0| (LitInt 1)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 10))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 10)) (=> (= |newtype$check#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 10))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 10)) (=> (= |newtype$check#3@0| (LitInt 2)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 10))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 10)) (=> (= |u8toInt#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 20) 19) anon113_Then_correct) (=> (= (ControlFlow 0 20) 10) anon113_Else_correct))))))))))))))))))))))
(let ((anon112_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|))))) (= (ControlFlow 0 29) 20)) anon12_correct)))
(let ((anon112_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (or (not (= (+ |k#2@0| 1) (+ |k#prime#0@0| 1))) (not true)) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|))))))) (=> (or (or (not (= (+ |k#2@0| 1) (+ |k#prime#0@0| 1))) (not true)) (= ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType (int_2_U |k#prime#0@0|)))))) (=> (= (ControlFlow 0 27) 20) anon12_correct))))))
(let ((anon111_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 32) 27) anon112_Then_correct) (=> (= (ControlFlow 0 32) 29) anon112_Else_correct)))))
(let ((anon111_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (and (=> (= (ControlFlow 0 30) 27) anon112_Then_correct) (=> (= (ControlFlow 0 30) 29) anon112_Else_correct)))))))
(let ((anon110_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 34) 30) anon111_Then_correct) (=> (= (ControlFlow 0 34) 32) anon111_Else_correct)))))
(let ((anon110_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#2@0|))) (and (=> (= (ControlFlow 0 33) 30) anon111_Then_correct) (=> (= (ControlFlow 0 33) 32) anon111_Else_correct)))))
(let ((anon3_correct  (=> (forall ((|k#1| T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |k#1|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |k#1|)))) (LitInt 5)))
 :qid |loopsdfy.30:17|
 :skolemid |493|
 :pattern ( ($Unbox SeqType (MapType0Select BoxType BoxType (|Map#Elements| |x#0@0|) ($Box intType |k#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType |k#1|)))
)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U (LitInt 1))))) (and (=> (= (ControlFlow 0 35) (- 0 36)) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U (LitInt 2))))) (and (=> (= (ControlFlow 0 35) 33) anon110_Then_correct) (=> (= (ControlFlow 0 35) 34) anon110_Else_correct)))))))
(let ((anon107_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#0@0|)))) (= (ControlFlow 0 40) 35)) anon3_correct)))
(let ((anon107_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#0@0|))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (|Set#IsMember| (|Map#Domain| |x#0@0|) ($Box intType (int_2_U |k#0@0|)))) (=> (= (ControlFlow 0 38) 35) anon3_correct)))))
(let ((anon0_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MapType |x#0@@1| (TMap TInt (TSeq TChar))) ($IsAlloc MapType |x#0@@1| (TMap TInt (TSeq TChar)) $Heap)) true) (=> (and (and (and ($Is MapType |z#0| (TMap TInt (TSeq TChar))) ($IsAlloc MapType |z#0| (TMap TInt (TSeq TChar)) $Heap)) true) (and (and ($Is SetType |t#0| (TSet TInt)) ($IsAlloc SetType |t#0| (TSet TInt) $Heap)) true)) (=> (and (and (and (and ($Is MapType |u8toInt#0| (TMap Tclass._module.u8 TInt)) ($IsAlloc MapType |u8toInt#0| (TMap Tclass._module.u8 TInt) $Heap)) true) (and (and ($Is MapType |IntToU8#0| (TMap TInt Tclass._module.u8)) ($IsAlloc MapType |IntToU8#0| (TMap TInt Tclass._module.u8) $Heap)) true)) (and (and (and ($Is MapType |helloWorldAgain#0| (TMap (TSeq TChar) (Tclass._module.Result Tclass._module.u8))) ($IsAlloc MapType |helloWorldAgain#0| (TMap (TSeq TChar) (Tclass._module.Result Tclass._module.u8)) $Heap)) true) (and (and ($Is DatatypeTypeType |successbool#0| (Tclass._module.Result (Tclass._module.Result TBool))) ($IsAlloc DatatypeTypeType |successbool#0| (Tclass._module.Result (Tclass._module.Result TBool)) $Heap)) true))) (=> (and (and (and (and (and ($Is MapType |s#0| (TMap TInt (Tclass._module.Result (TSeq TChar)))) ($IsAlloc MapType |s#0| (TMap TInt (Tclass._module.Result (TSeq TChar))) $Heap)) true) (and (and ($Is MapType |zBefore#0| (TMap (TSeq TChar) (TSeq TChar))) ($IsAlloc MapType |zBefore#0| (TMap (TSeq TChar) (TSeq TChar)) $Heap)) true)) (and (and (and ($Is MapType |zAfter#0| (TMap (TSeq TChar) (TSeq TChar))) ($IsAlloc MapType |zAfter#0| (TMap (TSeq TChar) (TSeq TChar)) $Heap)) true) (and (=> |defass#zeroContainer#0| (and ($Is refType |zeroContainer#0| Tclass._module.ZeroContainer) ($IsAlloc refType |zeroContainer#0| Tclass._module.ZeroContainer $Heap))) true))) (and (and (and (and ($Is SeqType |c#0@@1| (TSeq TChar)) ($IsAlloc SeqType |c#0@@1| (TSeq TChar) $Heap)) true) (= 3 $FunctionContextHeight)) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))) ($Box intType (int_2_U (LitInt 2))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 119))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 100))))))))))) (and (=> (= (ControlFlow 0 41) 38) anon107_Then_correct) (=> (= (ControlFlow 0 41) 40) anon107_Else_correct)))))))))
anon0_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
