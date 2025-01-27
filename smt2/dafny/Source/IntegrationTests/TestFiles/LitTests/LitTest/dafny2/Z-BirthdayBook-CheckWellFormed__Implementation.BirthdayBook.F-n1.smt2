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
(declare-fun class.Implementation.BirthdayBook? () T@U)
(declare-fun Tagclass.Implementation.BirthdayBook? () T@U)
(declare-fun Tagclass.Implementation.BirthdayBook () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$BirthdayBook () T@U)
(declare-fun field$known () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.Implementation.BirthdayBook? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Implementation.BirthdayBook () T@U)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Implementation.BirthdayBook.Valid (T@U T@U) Bool)
(declare-fun |Implementation.BirthdayBook.Valid#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class.Implementation.BirthdayBook? Tagclass.Implementation.BirthdayBook? Tagclass.Implementation.BirthdayBook tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$BirthdayBook field$known field$Repr field$birthday)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Implementation.BirthdayBook?)  (or (= $o null) (= (dtype $o) Tclass.Implementation.BirthdayBook?)))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( ($Is refType $o Tclass.Implementation.BirthdayBook?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook $h@@0) ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Implementation.BirthdayBook? $h@@0))
)))
(assert (= (FDim Implementation.BirthdayBook.Repr) 0))
(assert (= (FieldOfDecl class.Implementation.BirthdayBook? field$Repr) Implementation.BirthdayBook.Repr))
(assert ($IsGhostField Implementation.BirthdayBook.Repr))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1015|
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
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Implementation.BirthdayBook? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1045|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Implementation.BirthdayBook? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |677|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |678|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |585|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1009|
)))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |605|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |606|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |598|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |669|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Implementation.BirthdayBook?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Implementation.BirthdayBook?)))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( ($IsBox bx@@3 Tclass.Implementation.BirthdayBook?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Implementation.BirthdayBook) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Implementation.BirthdayBook)))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($IsBox bx@@4 Tclass.Implementation.BirthdayBook))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook)  (and ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook))
 :pattern ( ($Is refType |c#0@@2| Tclass.Implementation.BirthdayBook?))
)))
(assert (= (Ctor MapType) 9))
(assert (forall (($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) Implementation.BirthdayBook.birthday)) (TMap (TSeq TChar) TInt) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1092|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) Implementation.BirthdayBook.birthday)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|Implementation.BirthdayBook.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Implementation.BirthdayBook) ($IsAlloc refType this Tclass.Implementation.BirthdayBook $Heap)))))) (= (Implementation.BirthdayBook.Valid $Heap this)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Implementation.BirthdayBook.Repr)) ($Box refType this)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Implementation.BirthdayBook.Repr)) ($Box refType null)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Implementation.BirthdayBook.known)) (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Implementation.BirthdayBook.birthday)))))))
 :qid |ZBirthdayBookdfy.45:21|
 :skolemid |1097|
 :pattern ( (Implementation.BirthdayBook.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) Implementation.BirthdayBook.known)) (TSet (TSeq TChar)) $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1090|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) Implementation.BirthdayBook.known)))
)))
(assert (forall (($h@@6 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Implementation.BirthdayBook?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) Implementation.BirthdayBook.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1128|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) Implementation.BirthdayBook.Repr)))
)))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.Implementation.BirthdayBook?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) Implementation.BirthdayBook.Repr)) (TSet Tclass._System.object?) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1129|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) Implementation.BirthdayBook.Repr)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |709|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |676|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |666|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |586|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (= (Ctor charType) 10))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TChar) (and (= ($Box charType ($Unbox charType bx@@6)) bx@@6) ($Is charType ($Unbox charType bx@@6) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |589|
 :pattern ( ($IsBox bx@@6 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |597|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |780|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |626|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |627|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |568|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |569|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |570|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |632|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |633|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |560|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |561|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |566|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |567|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |584|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@5) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@5) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@8) t1@@0 h@@5) ($IsAllocBox bx@@8 t0@@3 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |634|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@5) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |635|
 :pattern ( ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.Implementation.BirthdayBook))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (= $o@@7 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) Implementation.BirthdayBook.Repr)) ($Box refType $o@@7)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |1093|
)) (= (Implementation.BirthdayBook.Valid $h0 this@@0) (Implementation.BirthdayBook.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1094|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Implementation.BirthdayBook.Valid $h1 this@@0))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |844|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@9 T@U) (s@@0 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@9 (TMap s@@0 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@9)) bx@@9) ($Is MapType ($Unbox MapType bx@@9) (TMap s@@0 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |595|
 :pattern ( ($IsBox bx@@9 (TMap s@@0 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@1) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |832|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |833|
 :pattern ( (|Map#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@2) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |834|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |835|
 :pattern ( (|Map#Values| m@@2))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@3) item)  (and (|Set#IsMember| (|Map#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |843|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@4) v@@7) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@4) u@@3) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |841|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@4) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |842|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@4) v@@7))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |643|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@11 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |591|
 :pattern ( ($IsBox bx@@11 (TSet t@@11)))
)))
(assert (forall ((bx@@12 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |594|
 :pattern ( ($IsBox bx@@12 (TSeq t@@12)))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (t1@@1 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@4 t1@@1)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@13) t1@@1) ($IsBox bx@@13 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |614|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |615|
 :pattern ( ($Is MapType v@@8 (TMap t0@@4 t1@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|Implementation.BirthdayBook.Valid#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.Implementation.BirthdayBook) ($IsAlloc refType this@@1 Tclass.Implementation.BirthdayBook $Heap@@0)))))) (=> (Implementation.BirthdayBook.Valid $Heap@@0 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) Implementation.BirthdayBook.Repr)) ($Box refType this@@1))))
 :qid |ZBirthdayBookdfy.45:21|
 :skolemid |1095|
 :pattern ( (Implementation.BirthdayBook.Valid $Heap@@0 this@@1))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Implementation.BirthdayBook?) Tagclass.Implementation.BirthdayBook?))
(assert (= (TagFamily Tclass.Implementation.BirthdayBook?) tytagFamily$BirthdayBook))
(assert (= (Tag Tclass.Implementation.BirthdayBook) Tagclass.Implementation.BirthdayBook))
(assert (= (TagFamily Tclass.Implementation.BirthdayBook) tytagFamily$BirthdayBook))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.Implementation.BirthdayBook?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) Implementation.BirthdayBook.birthday)) (TMap (TSeq TChar) TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1091|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) Implementation.BirthdayBook.birthday)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@1 o@@0) (|Set#IsMember| b@@1 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |707|
 :pattern ( (|Set#IsMember| a@@1 o@@0))
 :pattern ( (|Set#IsMember| b@@1 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |708|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |781|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.Implementation.BirthdayBook?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) Implementation.BirthdayBook.known)) (TSet (TSeq TChar))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1089|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) Implementation.BirthdayBook.known)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@10 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@0))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@10))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1679|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@0))
)))
(assert (forall ((h@@6 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |620|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |623|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@7))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@6)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@0) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |612|
 :pattern ( (|Seq#Index| v@@11 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |613|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@6)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@3 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |836|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |837|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@2 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |826|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |616|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is intType v@@14 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |599|
 :pattern ( ($Is intType v@@14 TInt))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is charType v@@15 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |602|
 :pattern ( ($Is charType v@@15 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |name#0| () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$Implementation.BirthdayBook.FindBirthday)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Implementation.BirthdayBook.Repr)))) (=> (and (and ($IsAllocBox ($Box refType this@@2) Tclass.Implementation.BirthdayBook? $Heap@@1) (|Implementation.BirthdayBook.Valid#canCall| $Heap@@1 this@@2)) (and (Implementation.BirthdayBook.Valid $Heap@@1 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Implementation.BirthdayBook.known)) ($Box SeqType |name#0|)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Implementation.BirthdayBook.Repr)) ($Box refType $o@@11))))
 :qid |ZBirthdayBookdfy.180:12|
 :skolemid |1056|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11))
))) (and (and ($HeapSucc $Heap@@1 $Heap@0) ($IsAllocBox ($Box refType this@@2) Tclass.Implementation.BirthdayBook? $Heap@0)) (and (|Implementation.BirthdayBook.Valid#canCall| $Heap@0 this@@2) (Implementation.BirthdayBook.Valid $Heap@0 this@@2)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType this@@2 Tclass.Implementation.BirthdayBook $Heap@@1)) (=> ($IsAlloc refType this@@2 Tclass.Implementation.BirthdayBook $Heap@@1) (=> (and (forall (($o@@12 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Implementation.BirthdayBook.Repr)) ($Box refType $o@@12)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Implementation.BirthdayBook.Repr)) ($Box refType $o@@12)))) (or (not (= $o@@12 null)) (not true)))
 :qid |ZBirthdayBookdfy.113:12|
 :skolemid |1057|
 :pattern (  (or (not (= $o@@12 null)) (not true)))
)) (forall (($o@@13 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Implementation.BirthdayBook.Repr)) ($Box refType $o@@13)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) Implementation.BirthdayBook.Repr)) ($Box refType $o@@13)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))))
 :qid |ZBirthdayBookdfy.113:12|
 :skolemid |1058|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))
))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@2 Tclass.Implementation.BirthdayBook $Heap@@1)) (=> ($IsAlloc refType this@@2 Tclass.Implementation.BirthdayBook $Heap@@1) (=> (and (forall (($o@@14 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 this@@2) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@14) $f@@1))))
 :qid |ZBirthdayBookdfy.123:15|
 :skolemid |1059|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) $f@@1))
)) (= (ControlFlow 0 2) (- 0 1))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) Implementation.BirthdayBook.birthday))) ($Box SeqType |name#0|)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.Implementation.BirthdayBook) ($IsAlloc refType this@@2 Tclass.Implementation.BirthdayBook $Heap@@1)))) (and (and ($Is SeqType |name#0| (TSeq TChar)) ($IsAlloc SeqType |name#0| (TSeq TChar) $Heap@@1)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))) anon0_correct)))
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
