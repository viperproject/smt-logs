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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.Implementation.BirthdayBook () T@U)
(declare-fun class.Implementation.BirthdayBook? () T@U)
(declare-fun Tagclass.Implementation.BirthdayBook? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$BirthdayBook () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$known () T@U)
(declare-fun field$birthday () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Implementation.__default.Mar25 () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Implementation.__default.Dec20 () Int)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.Implementation.BirthdayBook? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Implementation.BirthdayBook () T@U)
(declare-fun SeqType () T@T)
(declare-fun Implementation.__default.John () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Implementation.__default.Mike () T@U)
(declare-fun Implementation.__default.Susan () T@U)
(declare-fun Implementation.BirthdayBook.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Implementation.BirthdayBook.known () T@U)
(declare-fun Implementation.BirthdayBook.birthday () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Implementation.BirthdayBook.Valid (T@U T@U) Bool)
(declare-fun |Implementation.BirthdayBook.Valid#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Int) T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.Implementation.BirthdayBook class.Implementation.BirthdayBook? Tagclass.Implementation.BirthdayBook? tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$BirthdayBook field$Repr field$known field$birthday)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc intType (int_2_U Implementation.__default.Mar25) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1646|
 :pattern ( ($IsAlloc intType (int_2_U Implementation.__default.Mar25) TInt $h))
)))
(assert (forall (($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc intType (int_2_U Implementation.__default.Dec20) TInt $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1647|
 :pattern ( ($IsAlloc intType (int_2_U Implementation.__default.Dec20) TInt $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1600|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1257|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Implementation.BirthdayBook?)  (or (= $o null) (= (dtype $o) Tclass.Implementation.BirthdayBook?)))
 :qid |unknown.0:0|
 :skolemid |1649|
 :pattern ( ($Is refType $o Tclass.Implementation.BirthdayBook?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1483|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook $h@@2) ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1677|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook? $h@@2))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc SeqType Implementation.__default.John (TSeq TChar) $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1643|
 :pattern ( ($IsAlloc SeqType Implementation.__default.John (TSeq TChar) $h@@3))
)))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc SeqType Implementation.__default.Mike (TSeq TChar) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1644|
 :pattern ( ($IsAlloc SeqType Implementation.__default.Mike (TSeq TChar) $h@@4))
)))
(assert (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc SeqType Implementation.__default.Susan (TSeq TChar) $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1645|
 :pattern ( ($IsAlloc SeqType Implementation.__default.Susan (TSeq TChar) $h@@5))
)))
(assert (= (FDim Implementation.BirthdayBook.Repr) 0))
(assert (= (FieldOfDecl class.Implementation.BirthdayBook? field$Repr) Implementation.BirthdayBook.Repr))
(assert ($IsGhostField Implementation.BirthdayBook.Repr))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1588|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim Implementation.BirthdayBook.known) 0))
(assert (= (FieldOfDecl class.Implementation.BirthdayBook? field$known) Implementation.BirthdayBook.known))
(assert  (not ($IsGhostField Implementation.BirthdayBook.known)))
(assert (= (FDim Implementation.BirthdayBook.birthday) 0))
(assert (= (FieldOfDecl class.Implementation.BirthdayBook? field$birthday) Implementation.BirthdayBook.birthday))
(assert  (not ($IsGhostField Implementation.BirthdayBook.birthday)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@6)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1480|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Implementation.BirthdayBook? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1650|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Implementation.BirthdayBook? $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1250|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1251|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1149|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1147|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1390|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (= (Ctor SetType) 9))
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|Implementation.BirthdayBook.Valid#canCall| $Heap this) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Implementation.BirthdayBook) ($IsAlloc refType this Tclass.Implementation.BirthdayBook $Heap))))) (=> (Implementation.BirthdayBook.Valid $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Implementation.BirthdayBook.Repr)) ($Box refType this))))
 :qid |ZBirthdayBookdfy.45:21|
 :skolemid |1671|
 :pattern ( (Implementation.BirthdayBook.Valid $Heap this))
)))
(assert (= (Ctor charType) 10))
(assert (= Implementation.__default.John (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 74))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 110))))))
(assert (= Implementation.__default.Mike (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 107))) ($Box charType (|char#FromInt| 101))))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@8) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@8))))
 :qid |unknown.0:0|
 :skolemid |1589|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1581|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1158|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1285|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1582|
)))
 :qid |unknown.0:0|
 :skolemid |1583|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1178|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1179|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1356|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1171|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@1 h@@1) ($IsAllocBox bx@@2 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1243|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1242|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert ($Is intType (int_2_U Implementation.__default.Mar25) TInt))
(assert ($Is intType (int_2_U Implementation.__default.Dec20) TInt))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1478|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1481|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Implementation.BirthdayBook) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.Implementation.BirthdayBook)))
 :qid |unknown.0:0|
 :skolemid |1614|
 :pattern ( ($IsBox bx@@5 Tclass.Implementation.BirthdayBook))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Implementation.BirthdayBook?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.Implementation.BirthdayBook?)))
 :qid |unknown.0:0|
 :skolemid |1648|
 :pattern ( ($IsBox bx@@6 Tclass.Implementation.BirthdayBook?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1482|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook)  (and ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1676|
 :pattern ( ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook))
 :pattern ( ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1357|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Int) (|$y#4| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) |$y#4|))  (and ($IsBox |$y#4| |l#0|) (and (|Set#IsMember| |l#1| |$y#4|) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType |l#2| |$y#4|))) |l#3|))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) |$y#4|))
)))
(assert (= (Ctor MapType) 11))
(assert (forall (($h@@9 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) Implementation.BirthdayBook.birthday)) (TMap (TSeq TChar) TInt) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1668|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) Implementation.BirthdayBook.birthday)))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |1429|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |1430|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |1431|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall (($h@@10 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) Implementation.BirthdayBook.known)) (TSet (TSeq TChar)) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1666|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) Implementation.BirthdayBook.known)))
)))
(assert ($Is SeqType Implementation.__default.John (TSeq TChar)))
(assert ($Is SeqType Implementation.__default.Mike (TSeq TChar)))
(assert ($Is SeqType Implementation.__default.Susan (TSeq TChar)))
(assert (forall (($h@@11 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Implementation.BirthdayBook?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@4) Implementation.BirthdayBook.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1674|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@4) Implementation.BirthdayBook.Repr)))
)))
(assert (forall (($h@@12 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@5) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@5) Implementation.BirthdayBook.Repr)) (TSet Tclass._System.object?) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1675|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@5) Implementation.BirthdayBook.Repr)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1282|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |1432|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1249|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1239|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1159|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TChar) (and (= ($Box charType ($Unbox charType bx@@8)) bx@@8) ($Is charType ($Unbox charType bx@@8) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1162|
 :pattern ( ($IsBox bx@@8 TChar))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1170|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1353|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1199|
 :pattern ( (|Set#IsMember| v@@5 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1200|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@4 u@@1)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1141|
 :pattern ( (TMap t@@4 u@@1))
)))
(assert (forall ((t@@5 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1142|
 :pattern ( (TMap t@@5 u@@2))
)))
(assert (forall ((t@@6 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@6 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1143|
 :pattern ( (TMap t@@6 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1580|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1585|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1586|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1595|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1479|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1205|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1206|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1133|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1134|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1139|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1140|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1157|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@7 (TMap t0@@3 t1@@0) h@@5) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@10) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10) t1@@0 h@@5) ($IsAllocBox bx@@10 t0@@3 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |1207|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@10))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |1208|
 :pattern ( ($IsAlloc MapType v@@7 (TMap t0@@3 t1@@0) h@@5))
)))
(assert (= Implementation.__default.Mar25 (LitInt 325)))
(assert (= Implementation.__default.Dec20 (LitInt 1220)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1596|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1598|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.Implementation.BirthdayBook))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (= $o@@7 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@7)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |1669|
)) (= (Implementation.BirthdayBook.Valid $h0 this@@0) (Implementation.BirthdayBook.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1670|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Implementation.BirthdayBook.Valid $h1 this@@0))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1417|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1153|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@11 T@U) (s@@3 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@11 (TMap s@@3 t@@11)) (and (= ($Box MapType ($Unbox MapType bx@@11)) bx@@11) ($Is MapType ($Unbox MapType bx@@11) (TMap s@@3 t@@11))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |1168|
 :pattern ( ($IsBox bx@@11 (TMap s@@3 t@@11)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1587|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@5 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@5 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@5 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@6 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@6 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@6 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@8 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@8 $f@@0))  (=> (and (or (not (= $o@@8 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@8) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1686|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@8 $f@@0))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1355|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1584|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (= Implementation.__default.Susan (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 110))))))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1405|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1406|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@8 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@8)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1407|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1408|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1416|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@9 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@9) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@9 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1414|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1415|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@9))
)))
(assert (forall ((m@@11 T@U) (u@@6 T@U) (|u'| T@U) (v@@10 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@10)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@10)) |u'|) v@@10))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@10)) |u'|) (|Set#IsMember| (|Map#Domain| m@@11) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@10)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@11) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |1422|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@10)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@10)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1216|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@13 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@12)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@12))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1164|
 :pattern ( ($IsBox bx@@13 (TSet t@@12)))
)))
(assert (forall ((bx@@14 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@13)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@13))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1167|
 :pattern ( ($IsBox bx@@14 (TSeq t@@13)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1154|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@11 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@11 (TMap t0@@5 t1@@2)) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@11) bx@@15) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@15) t1@@2) ($IsBox bx@@15 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |1187|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@11) bx@@15))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |1188|
 :pattern ( ($Is MapType v@@11 (TMap t0@@5 t1@@2)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Implementation.BirthdayBook) Tagclass.Implementation.BirthdayBook))
(assert (= (TagFamily Tclass.Implementation.BirthdayBook) tytagFamily$BirthdayBook))
(assert (= (Tag Tclass.Implementation.BirthdayBook?) Tagclass.Implementation.BirthdayBook?))
(assert (= (TagFamily Tclass.Implementation.BirthdayBook?) tytagFamily$BirthdayBook))
(assert (forall (($h@@13 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.Implementation.BirthdayBook?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) Implementation.BirthdayBook.birthday)) (TMap (TSeq TChar) TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1667|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) Implementation.BirthdayBook.birthday)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1280|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1281|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |1590|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@14))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@14))
 :qid |unknown.0:0|
 :skolemid |1591|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@14))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1592|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@15))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@15))
 :qid |unknown.0:0|
 :skolemid |1593|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@15))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1594|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1150|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1148|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|Implementation.BirthdayBook.Valid#canCall| $Heap@@0 this@@1) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.Implementation.BirthdayBook) ($IsAlloc refType this@@1 Tclass.Implementation.BirthdayBook $Heap@@0))))) (= (Implementation.BirthdayBook.Valid $Heap@@0 this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Implementation.BirthdayBook.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Implementation.BirthdayBook.birthday)))))))
 :qid |ZBirthdayBookdfy.45:21|
 :skolemid |1673|
 :pattern ( (Implementation.BirthdayBook.Valid $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1354|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall (($h@@16 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.Implementation.BirthdayBook?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) Implementation.BirthdayBook.known)) (TSet (TSeq TChar))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1665|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) Implementation.BirthdayBook.known)))
)))
(assert (forall ((h@@6 T@U) (v@@12 T@U) ) (! ($IsAlloc intType v@@12 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1193|
 :pattern ( ($IsAlloc intType v@@12 TInt h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@13 T@U) ) (! ($IsAlloc charType v@@13 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1196|
 :pattern ( ($IsAlloc charType v@@13 TChar h@@7))
)))
(assert (forall ((v@@14 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@6)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@1) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1185|
 :pattern ( (|Seq#Index| v@@14 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1186|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@6)))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@3 T@U) (v@@15 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@12) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@15)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1409|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1410|
 :pattern ( (|Map#Items| m@@12))
)))
(assert (forall ((s@@6 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1399|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))))
)))
(assert (forall ((v@@16 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@16 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@16) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@16) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@16) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1189|
 :pattern ( ($Is MapType v@@16 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is intType v@@17 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1172|
 :pattern ( ($Is intType v@@17 TInt))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is charType v@@18 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1175|
 :pattern ( ($Is charType v@@18 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |name##0@0| () T@U)
(declare-fun |date##0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |name##1@0| () T@U)
(declare-fun |date##1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |name##2@0| () T@U)
(declare-fun |date##2@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |name##3@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call3formal@date#0@0| () Int)
(declare-fun |today##0@0| () Int)
(declare-fun |call3formal@cards#0| () T@U)
(declare-fun |defass#bb#0| () Bool)
(declare-fun |bb#0| () T@U)
(declare-fun |cards#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 37) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.Implementation.BirthdayBook) ($IsAlloc refType call1formal@this Tclass.Implementation.BirthdayBook $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.Implementation.BirthdayBook) ($IsAlloc refType call1formal@this@0 Tclass.Implementation.BirthdayBook $Heap@0))) (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0))) (and (and (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (and (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (and (forall (($o@@11 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@11)) (or (not (= $o@@11 null)) (not true)))
 :qid |ZBirthdayBookdfy.152:17|
 :skolemid |1662|
 :pattern (  (or (not (= $o@@11 null)) (not true)))
)) (forall (($o@@12 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@12)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))))
 :qid |ZBirthdayBookdfy.152:17|
 :skolemid |1663|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@12)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) |Set#Empty|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call1formal@this@0) alloc))))) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13)))
 :qid |ZBirthdayBookdfy.190:17|
 :skolemid |1664|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13))
)) ($HeapSucc $Heap@@1 $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 36)) true) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (and (= |name##0@0| Implementation.__default.John) (= |date##0@0| Implementation.__default.Mar25)) (and (=> (= (ControlFlow 0 2) (- 0 34)) (forall (($o@@14 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (= $o@@14 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@1)))
 :qid |ZBirthdayBookdfy.201:17|
 :skolemid |1616|
))) (=> (forall (($o@@15 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) alloc)))) (= $o@@15 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@2)))
 :qid |ZBirthdayBookdfy.201:17|
 :skolemid |1616|
)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@0 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.birthday)))))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##0@0|)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##0@0|))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0)) (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (and (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.birthday)))))))) (and (and (and (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@16)))) (or (not (= $o@@16 null)) (not true)))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1651|
 :pattern (  (or (not (= $o@@16 null)) (not true)))
)) (forall (($o@@17 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@17)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@17)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) alloc)))))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1652|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) alloc)))
))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.birthday)) (|Map#Build| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Implementation.BirthdayBook.birthday)) ($Box SeqType |name##0@0|) ($Box intType (int_2_U |date##0@0|))))) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@18) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@18)) (= $o@@18 call1formal@this@0)))
 :qid |ZBirthdayBookdfy.174:12|
 :skolemid |1653|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) true) (and (=> (= (ControlFlow 0 2) (- 0 28)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (and (= |name##1@0| Implementation.__default.Mike) (= |date##1@0| Implementation.__default.Dec20)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (forall (($o@@19 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19) alloc)))) (= $o@@19 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@3)))
 :qid |ZBirthdayBookdfy.202:17|
 :skolemid |1617|
))) (=> (forall (($o@@20 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) alloc)))) (= $o@@20 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@20 $f@@4)))
 :qid |ZBirthdayBookdfy.202:17|
 :skolemid |1617|
)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@1 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@1 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.birthday)))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##1@0|)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##1@0|))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0)) (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (and (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.birthday)))))))) (and (and (and (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@21)))) (or (not (= $o@@21 null)) (not true)))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1651|
 :pattern (  (or (not (= $o@@21 null)) (not true)))
)) (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@22)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) alloc)))))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1652|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) alloc)))
))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.birthday)) (|Map#Build| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Implementation.BirthdayBook.birthday)) ($Box SeqType |name##1@0|) ($Box intType (int_2_U |date##1@0|))))) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23)) (= $o@@23 call1formal@this@0)))
 :qid |ZBirthdayBookdfy.174:12|
 :skolemid |1653|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (and (= |name##2@0| Implementation.__default.Susan) (= |date##2@0| Implementation.__default.Dec20)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (forall (($o@@24 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24) alloc)))) (= $o@@24 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@24 $f@@5)))
 :qid |ZBirthdayBookdfy.203:17|
 :skolemid |1618|
))) (=> (forall (($o@@25 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) alloc)))) (= $o@@25 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@25 $f@@6)))
 :qid |ZBirthdayBookdfy.203:17|
 :skolemid |1618|
)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@2 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@2 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.birthday)))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##2@0|)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##2@0|))) (=> (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0)) (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (and (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.birthday)))))))) (and (and (and (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@26)))) (or (not (= $o@@26 null)) (not true)))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1651|
 :pattern (  (or (not (= $o@@26 null)) (not true)))
)) (forall (($o@@27 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@27)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@27)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) alloc)))))
 :qid |ZBirthdayBookdfy.58:12|
 :skolemid |1652|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) alloc)))
))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.birthday)) (|Map#Build| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Implementation.BirthdayBook.birthday)) ($Box SeqType |name##2@0|) ($Box intType (int_2_U |date##2@0|))))) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28)) (= $o@@28 call1formal@this@0)))
 :qid |ZBirthdayBookdfy.174:12|
 :skolemid |1653|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |name##3@0| Implementation.__default.John) (and (=> (= (ControlFlow 0 2) (- 0 13)) (forall (($o@@29 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@29))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@7)))
 :qid |ZBirthdayBookdfy.205:27|
 :skolemid |1619|
))) (=> (forall (($o@@30 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@30))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@30 $f@@8)))
 :qid |ZBirthdayBookdfy.205:27|
 :skolemid |1619|
)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@3 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@3 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.birthday)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##3@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.known)) ($Box SeqType |name##3@0|)) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0)) (=> (and (and (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (and (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.birthday))))))) (and (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@31)))) (or (not (= $o@@31 null)) (not true)))
 :qid |ZBirthdayBookdfy.113:12|
 :skolemid |1654|
 :pattern (  (or (not (= $o@@31 null)) (not true)))
)) (forall (($o@@32 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@32)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@32)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))))
 :qid |ZBirthdayBookdfy.113:12|
 :skolemid |1655|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))
)))) (and (and (forall (($o@@33 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 call1formal@this@0) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@33) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@33) $f@@9))))
 :qid |ZBirthdayBookdfy.123:15|
 :skolemid |1656|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@33) $f@@9))
)) (= |call3formal@date#0@0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.birthday))) ($Box SeqType |name##3@0|)))))) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@34) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@34)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@34))))
 :qid |ZBirthdayBookdfy.180:12|
 :skolemid |1657|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@34))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= |call3formal@date#0@0| Implementation.__default.Mar25)) (=> (= |call3formal@date#0@0| Implementation.__default.Mar25) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |today##0@0| Implementation.__default.Dec20) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall (($o@@35 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@35) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@35))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@35 $f@@10)))
 :qid |ZBirthdayBookdfy.208:25|
 :skolemid |1620|
))) (=> (forall (($o@@36 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@36) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@36))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@36 $f@@11)))
 :qid |ZBirthdayBookdfy.208:25|
 :skolemid |1620|
)) (=> (and ($Is SetType |call3formal@cards#0| (TSet (TSeq TChar))) ($IsAlloc SetType |call3formal@cards#0| (TSet (TSeq TChar)) $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null)))))) (=> (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.Repr)) ($Box refType null))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|Implementation.BirthdayBook.Valid#canCall| $Heap@4 call1formal@this@0) (or (Implementation.BirthdayBook.Valid $Heap@4 call1formal@this@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) Implementation.BirthdayBook.birthday)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (=> |defass#bb#0| (and ($Is refType |bb#0| Tclass.Implementation.BirthdayBook) ($IsAlloc refType |bb#0| Tclass.Implementation.BirthdayBook $Heap@@1))) true)) (=> (and (and (and ($Is SetType |cards#0| (TSet (TSeq TChar))) ($IsAlloc SetType |cards#0| (TSet (TSeq TChar)) $Heap@@1)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 37) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
