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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.GenericBasics.Tr () T@U)
(declare-fun Tagclass.GenericBasics.Tr? () T@U)
(declare-fun class.GenericBasics.Tr? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun field$xyz () T@U)
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
(declare-fun TBitvector (Int) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun bv2Type () T@T)
(declare-fun bv2_2_U ((_ BitVec 2)) T@U)
(declare-fun U_2_bv2 (T@U) (_ BitVec 2))
(declare-fun bv3Type () T@T)
(declare-fun bv3_2_U ((_ BitVec 3)) T@U)
(declare-fun U_2_bv3 (T@U) (_ BitVec 3))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv9Type () T@T)
(declare-fun bv9_2_U ((_ BitVec 9)) T@U)
(declare-fun U_2_bv9 (T@U) (_ BitVec 9))
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun GenericBasics.Tr.xyz () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun GenericBasics.Tr.STeen (T@U T@U T@U T@U T@U) T@U)
(declare-fun |GenericBasics.Tr.STeen#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr (T@U T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun GenericBasics.Tr.Teen (T@U T@U T@U T@U T@U) T@U)
(declare-fun |GenericBasics.Tr.Teen#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_1 (T@U) T@U)
(declare-fun implements$GenericBasics.Tr (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal TagSet TagSeq alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.GenericBasics.Tr Tagclass.GenericBasics.Tr? class.GenericBasics.Tr? |tytagFamily$_tuple#2| tytagFamily$Tr field$xyz)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |1198|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1261|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (= (Ctor bv2Type) 3) (forall ((arg0@@2 (_ BitVec 2)) ) (! (= (U_2_bv2 (bv2_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv2|
 :pattern ( (bv2_2_U arg0@@2))
))) (forall ((x@@3 T@U) ) (! (= (bv2_2_U (U_2_bv2 x@@3)) x@@3)
 :qid |cast:U_2_bv2|
 :pattern ( (U_2_bv2 x@@3))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv2Type v@@0 (TBitvector 2) heap)
 :qid |unknown.0:0|
 :skolemid |1481|
 :pattern ( ($IsAlloc bv2Type v@@0 (TBitvector 2) heap))
)))
(assert  (and (and (= (Ctor bv3Type) 4) (forall ((arg0@@3 (_ BitVec 3)) ) (! (= (U_2_bv3 (bv3_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv3|
 :pattern ( (bv3_2_U arg0@@3))
))) (forall ((x@@4 T@U) ) (! (= (bv3_2_U (U_2_bv3 x@@4)) x@@4)
 :qid |cast:U_2_bv3|
 :pattern ( (U_2_bv3 x@@4))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv3Type v@@1 (TBitvector 3) heap@@0)
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsAlloc bv3Type v@@1 (TBitvector 3) heap@@0))
)))
(assert  (and (and (= (Ctor bv7Type) 5) (forall ((arg0@@4 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@4))
))) (forall ((x@@5 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@5)) x@@5)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@5))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv7Type v@@2 (TBitvector 7) heap@@1)
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($IsAlloc bv7Type v@@2 (TBitvector 7) heap@@1))
)))
(assert  (and (and (= (Ctor bv9Type) 6) (forall ((arg0@@5 (_ BitVec 9)) ) (! (= (U_2_bv9 (bv9_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv9|
 :pattern ( (bv9_2_U arg0@@5))
))) (forall ((x@@6 T@U) ) (! (= (bv9_2_U (U_2_bv9 x@@6)) x@@6)
 :qid |cast:U_2_bv9|
 :pattern ( (U_2_bv9 x@@6))
))))
(assert (forall ((v@@3 T@U) (heap@@2 T@U) ) (! ($IsAlloc bv9Type v@@3 (TBitvector 9) heap@@2)
 :qid |unknown.0:0|
 :skolemid |1477|
 :pattern ( ($IsAlloc bv9Type v@@3 (TBitvector 9) heap@@2))
)))
(assert (forall ((a@@0 T@U) (x@@7 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@7) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1262|
 :pattern ( (|Set#UnionOne| a@@0 x@@7) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@8 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@8) o)  (or (= o x@@8) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1260|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@8) o))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |1177|
 :pattern ( ($Is intType v@@4 (TBitvector 0)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is bv2Type v@@5 (TBitvector 2))
 :qid |unknown.0:0|
 :skolemid |1480|
 :pattern ( ($Is bv2Type v@@5 (TBitvector 2)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is bv3Type v@@6 (TBitvector 3))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($Is bv3Type v@@6 (TBitvector 3)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is bv7Type v@@7 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( ($Is bv7Type v@@7 (TBitvector 7)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is bv9Type v@@8 (TBitvector 9))
 :qid |unknown.0:0|
 :skolemid |1476|
 :pattern ( ($Is bv9Type v@@8 (TBitvector 9)))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1616|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1257|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1604|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim GenericBasics.Tr.xyz) 0))
(assert (= (FieldOfDecl class.GenericBasics.Tr? field$xyz) GenericBasics.Tr.xyz))
(assert  (not ($IsGhostField GenericBasics.Tr.xyz)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 8)) (= (Ctor BoxType) 9)) (= (Ctor refType) 10)) (forall ((arg0@@6 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@6 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@7 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@7 arg1@@0)) arg0@@7)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@7 arg1@@0))
))) (forall ((arg0@@8 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@8 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@8 arg1@@1))
))))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1250|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1251|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A T@U) (GenericBasics.Tr$B T@U) (GenericBasics.Tr.STeen$R T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|GenericBasics.Tr.STeen#canCall| GenericBasics.Tr$A GenericBasics.Tr$B GenericBasics.Tr.STeen$R |a#0| |b#0|) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| (Tclass._System.Tuple2 GenericBasics.Tr$A GenericBasics.Tr.STeen$R)) ($IsBox |b#0| GenericBasics.Tr$B)))) (= (GenericBasics.Tr.STeen GenericBasics.Tr$A GenericBasics.Tr$B GenericBasics.Tr.STeen$R |a#0| |b#0|) |b#0|))
 :qid |unknown.0:0|
 :skolemid |1723|
 :pattern ( (GenericBasics.Tr.STeen GenericBasics.Tr$A GenericBasics.Tr$B GenericBasics.Tr.STeen$R |a#0| |b#0|))
))))
(assert (forall ((x@@9 Int) ) (! (= (LitInt x@@9) x@@9)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1149|
 :pattern ( (LitInt x@@9))
)))
(assert (forall ((x@@10 Real) ) (! (= (LitReal x@@10) x@@10)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1151|
 :pattern ( (LitReal x@@10))
)))
(assert (forall ((x@@11 T@U) (T T@T) ) (! (= (Lit T x@@11) x@@11)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1147|
 :pattern ( (Lit T x@@11))
)))
(assert (= (Ctor SeqType) 12))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1390|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (GenericBasics.Tr$A@@0 T@U) (GenericBasics.Tr$B@@0 T@U) (GenericBasics.Tr.STeen$R@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (or (|GenericBasics.Tr.STeen#canCall| GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0 GenericBasics.Tr.STeen$R@@0 |a#0@@0| |b#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |a#0@@0| (Tclass._System.Tuple2 GenericBasics.Tr$A@@0 GenericBasics.Tr.STeen$R@@0)) ($IsAlloc DatatypeTypeType |a#0@@0| (Tclass._System.Tuple2 GenericBasics.Tr$A@@0 GenericBasics.Tr.STeen$R@@0) $Heap)) (and ($IsBox |b#0@@0| GenericBasics.Tr$B@@0) ($IsAllocBox |b#0@@0| GenericBasics.Tr$B@@0 $Heap))))) ($IsGoodHeap $Heap)) ($IsAllocBox (GenericBasics.Tr.STeen GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0 GenericBasics.Tr.STeen$R@@0 |a#0@@0| |b#0@@0|) GenericBasics.Tr$B@@0 $Heap))
 :qid |TraitCompiledfy.142:21|
 :skolemid |1721|
 :pattern ( ($IsAllocBox (GenericBasics.Tr.STeen GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0 GenericBasics.Tr.STeen$R@@0 |a#0@@0| |b#0@@0|) GenericBasics.Tr$B@@0 $Heap))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |1605|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@12 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@12)) x@@12)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1158|
 :pattern ( ($Unbox T@@0 x@@12))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1598|
)))
 :qid |unknown.0:0|
 :skolemid |1599|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 13))
(assert (forall ((v@@9 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@9 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@9 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1178|
 :pattern ( (|Set#IsMember| v@@9 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1179|
 :pattern ( ($Is SetType v@@9 (TSet t0@@0)))
)))
(assert (forall ((GenericBasics.Tr$A@@1 T@U) (GenericBasics.Tr$B@@1 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1))  (and ($Is refType |c#0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( ($Is refType |c#0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)))
 :pattern ( ($Is refType |c#0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@10 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@10)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1356|
 :pattern ( (|Seq#Build| s@@0 v@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((GenericBasics.Tr$A@@2 T@U) (GenericBasics.Tr$B@@2 T@U) (GenericBasics.Tr.Teen$R T@U) (this T@U) (|a#0@@1| T@U) ) (!  (=> (or (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2 GenericBasics.Tr.Teen$R this |a#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2))) ($Is DatatypeTypeType |a#0@@1| (Tclass._System.Tuple2 GenericBasics.Tr$A@@2 GenericBasics.Tr.Teen$R))))) ($IsBox (GenericBasics.Tr.Teen GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2 GenericBasics.Tr.Teen$R this |a#0@@1|) GenericBasics.Tr$B@@2))
 :qid |unknown.0:0|
 :skolemid |1717|
 :pattern ( (GenericBasics.Tr.Teen GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2 GenericBasics.Tr.Teen$R this |a#0@@1|))
))))
(assert (forall ((v@@11 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@11) t@@0 h@@1) ($IsAlloc T@@1 v@@11 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1171|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@11) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@2) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1243|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@12 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@12 t@@2 h@@3) ($IsAlloc T@@2 v@@12 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1242|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@12 t@@2 h@@3))
)))
(assert (forall ((GenericBasics.Tr$A@@3 T@U) (GenericBasics.Tr$B@@3 T@U) ($h@@0 T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) GenericBasics.Tr.xyz) GenericBasics.Tr$B@@3))
 :qid |unknown.0:0|
 :skolemid |1705|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) GenericBasics.Tr.xyz) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (= $o@@0 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8392|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((GenericBasics.Tr$A@@4 T@U) (GenericBasics.Tr$B@@4 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1757|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@1))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@13 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@13) i) v@@13)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@13) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1357|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@13) i))
)))
(assert (forall ((GenericBasics.Tr$A@@5 T@U) (GenericBasics.Tr$B@@5 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1704|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5) $h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A@@6 T@U) (GenericBasics.Tr$B@@6 T@U) (GenericBasics.Tr.STeen$R@@1 T@U) (|a#0@@2| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|GenericBasics.Tr.STeen#canCall| GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6 GenericBasics.Tr.STeen$R@@1 |a#0@@2| |b#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@2| (Tclass._System.Tuple2 GenericBasics.Tr$A@@6 GenericBasics.Tr.STeen$R@@1)) ($IsBox |b#0@@1| GenericBasics.Tr$B@@6)))) ($IsBox (GenericBasics.Tr.STeen GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6 GenericBasics.Tr.STeen$R@@1 |a#0@@2| |b#0@@1|) GenericBasics.Tr$B@@6))
 :qid |unknown.0:0|
 :skolemid |1720|
 :pattern ( (GenericBasics.Tr.STeen GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6 GenericBasics.Tr.STeen$R@@1 |a#0@@2| |b#0@@1|))
))))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1249|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1239|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1159|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TReal) (and (= ($Box realType ($Unbox realType bx@@3)) bx@@3) ($Is realType ($Unbox realType bx@@3) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |1160|
 :pattern ( ($IsBox bx@@3 TReal))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1161|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (forall ((v@@14 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@14) t@@3) ($Is T@@3 v@@14 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1170|
 :pattern ( ($IsBox ($Box T@@3 v@@14) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1353|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@15 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@15 (TSet t0@@2) h@@4) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@15 bx@@5) ($IsAllocBox bx@@5 t0@@2 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1199|
 :pattern ( (|Set#IsMember| v@@15 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1200|
 :pattern ( ($IsAlloc SetType v@@15 (TSet t0@@2) h@@4))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1596|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1601|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1602|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1611|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1613|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((GenericBasics.Tr$A@@7 T@U) (GenericBasics.Tr$B@@7 T@U) ) (! (= (Tclass.GenericBasics.Tr_0 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7)) GenericBasics.Tr$A@@7)
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7))
)))
(assert (forall ((GenericBasics.Tr$A@@8 T@U) (GenericBasics.Tr$B@@8 T@U) ) (! (= (Tclass.GenericBasics.Tr_1 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8)) GenericBasics.Tr$B@@8)
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8))
)))
(assert (forall ((GenericBasics.Tr$A@@9 T@U) (GenericBasics.Tr$B@@9 T@U) ) (! (= (Tclass.GenericBasics.Tr?_0 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9)) GenericBasics.Tr$A@@9)
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9))
)))
(assert (forall ((GenericBasics.Tr$A@@10 T@U) (GenericBasics.Tr$B@@10 T@U) ) (! (= (Tclass.GenericBasics.Tr?_1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10)) GenericBasics.Tr$B@@10)
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10))
)))
(assert (forall ((v@@16 T@U) (t0@@3 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SeqType v@@16 (TSeq t0@@3) h@@5) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@16))) ($IsAllocBox (|Seq#Index| v@@16 i@@0) t0@@3 h@@5))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1205|
 :pattern ( (|Seq#Index| v@@16 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1206|
 :pattern ( ($IsAlloc SeqType v@@16 (TSeq t0@@3) h@@5))
)))
(assert (forall ((GenericBasics.Tr$A@@11 T@U) (GenericBasics.Tr$B@@11 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11))  (or (= $o@@2 null) (implements$GenericBasics.Tr (dtype $o@@2) GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11)))
 :qid |unknown.0:0|
 :skolemid |1703|
 :pattern ( ($Is refType $o@@2 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A@@12 T@U) (GenericBasics.Tr$B@@12 T@U) (GenericBasics.Tr.STeen$R@@2 T@U) (|a#0@@3| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|GenericBasics.Tr.STeen#canCall| GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12 GenericBasics.Tr.STeen$R@@2 (Lit DatatypeTypeType |a#0@@3|) |b#0@@2|) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@3| (Tclass._System.Tuple2 GenericBasics.Tr$A@@12 GenericBasics.Tr.STeen$R@@2)) ($IsBox |b#0@@2| GenericBasics.Tr$B@@12)))) (= (GenericBasics.Tr.STeen GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12 GenericBasics.Tr.STeen$R@@2 (Lit DatatypeTypeType |a#0@@3|) |b#0@@2|) |b#0@@2|))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1724|
 :pattern ( (GenericBasics.Tr.STeen GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12 GenericBasics.Tr.STeen$R@@2 (Lit DatatypeTypeType |a#0@@3|) |b#0@@2|))
))))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |1132|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1133|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1134|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1139|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1140|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1157|
 :pattern ( ($Box T@@4 x@@13))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1612|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1614|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((GenericBasics.Tr$A@@13 T@U) (GenericBasics.Tr$B@@13 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@13 GenericBasics.Tr$B@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) GenericBasics.Tr.xyz) GenericBasics.Tr$B@@13 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1706|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) GenericBasics.Tr.xyz) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@13 GenericBasics.Tr$B@@13))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1603|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((GenericBasics.Tr$A@@14 T@U) (GenericBasics.Tr$B@@14 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14))))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( ($IsBox bx@@7 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14)))
)))
(assert (forall ((GenericBasics.Tr$A@@15 T@U) (GenericBasics.Tr$B@@15 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@15 GenericBasics.Tr$B@@15)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@15 GenericBasics.Tr$B@@15))))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsBox bx@@8 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@15 GenericBasics.Tr$B@@15)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (GenericBasics.Tr$A@@16 T@U) (GenericBasics.Tr$B@@16 T@U) (GenericBasics.Tr.Teen$R@@0 T@U) (this@@0 T@U) (|a#0@@4| T@U) ) (!  (=> (and (or (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@16 GenericBasics.Tr$B@@16 GenericBasics.Tr.Teen$R@@0 this@@0 |a#0@@4|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($IsAlloc refType this@@0 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@16 GenericBasics.Tr$B@@16) $Heap@@0)) (and ($Is DatatypeTypeType |a#0@@4| (Tclass._System.Tuple2 GenericBasics.Tr$A@@16 GenericBasics.Tr.Teen$R@@0)) ($IsAlloc DatatypeTypeType |a#0@@4| (Tclass._System.Tuple2 GenericBasics.Tr$A@@16 GenericBasics.Tr.Teen$R@@0) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (GenericBasics.Tr.Teen GenericBasics.Tr$A@@16 GenericBasics.Tr$B@@16 GenericBasics.Tr.Teen$R@@0 this@@0 |a#0@@4|) GenericBasics.Tr$B@@16 $Heap@@0))
 :qid |TraitCompiledfy.141:14|
 :skolemid |1718|
 :pattern ( ($IsAllocBox (GenericBasics.Tr.Teen GenericBasics.Tr$A@@16 GenericBasics.Tr$B@@16 GenericBasics.Tr.Teen$R@@0 this@@0 |a#0@@4|) GenericBasics.Tr$B@@16 $Heap@@0))
))))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1355|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1600|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((GenericBasics.Tr$A@@17 T@U) (GenericBasics.Tr$B@@17 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@17 GenericBasics.Tr$B@@17)) Tagclass.GenericBasics.Tr) (= (TagFamily (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@17 GenericBasics.Tr$B@@17)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@17 GenericBasics.Tr$B@@17))
)))
(assert (forall ((GenericBasics.Tr$A@@18 T@U) (GenericBasics.Tr$B@@18 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@18 GenericBasics.Tr$B@@18)) Tagclass.GenericBasics.Tr?) (= (TagFamily (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@18 GenericBasics.Tr$B@@18)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@18 GenericBasics.Tr$B@@18))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1216|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |1163|
 :pattern ( ($IsBox bx@@9 (TBitvector 0)))
)))
(assert (forall ((bx@@10 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1164|
 :pattern ( ($IsBox bx@@10 (TSet t@@8)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1167|
 :pattern ( ($IsBox bx@@11 (TSeq t@@9)))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (TBitvector 2)) (and (= ($Box bv2Type ($Unbox bv2Type bx@@12)) bx@@12) ($Is bv2Type ($Unbox bv2Type bx@@12) (TBitvector 2))))
 :qid |unknown.0:0|
 :skolemid |1479|
 :pattern ( ($IsBox bx@@12 (TBitvector 2)))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (TBitvector 3)) (and (= ($Box bv3Type ($Unbox bv3Type bx@@13)) bx@@13) ($Is bv3Type ($Unbox bv3Type bx@@13) (TBitvector 3))))
 :qid |unknown.0:0|
 :skolemid |1483|
 :pattern ( ($IsBox bx@@13 (TBitvector 3)))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (TBitvector 7)) (and (= ($Box bv7Type ($Unbox bv7Type bx@@14)) bx@@14) ($Is bv7Type ($Unbox bv7Type bx@@14) (TBitvector 7))))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( ($IsBox bx@@14 (TBitvector 7)))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (TBitvector 9)) (and (= ($Box bv9Type ($Unbox bv9Type bx@@15)) bx@@15) ($Is bv9Type ($Unbox bv9Type bx@@15) (TBitvector 9))))
 :qid |unknown.0:0|
 :skolemid |1475|
 :pattern ( ($IsBox bx@@15 (TBitvector 9)))
)))
(assert (forall ((h@@6 T@U) (r T@U) (f T@U) (x@@14 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@14))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@14))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1248|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@14)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |1606|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |1607|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |1608|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |1609|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1610|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1150|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@16))) (Lit BoxType ($Box realType (real_2_U x@@16))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1152|
 :pattern ( ($Box realType (real_2_U (LitReal x@@16))))
)))
(assert (forall ((x@@17 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@17)) (Lit BoxType ($Box T@@5 x@@17)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1148|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@17)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A@@19 T@U) (GenericBasics.Tr$B@@19 T@U) (GenericBasics.Tr.STeen$R@@3 T@U) (|a#0@@5| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|GenericBasics.Tr.STeen#canCall| GenericBasics.Tr$A@@19 GenericBasics.Tr$B@@19 GenericBasics.Tr.STeen$R@@3 (Lit DatatypeTypeType |a#0@@5|) (Lit BoxType |b#0@@3|)) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@5| (Tclass._System.Tuple2 GenericBasics.Tr$A@@19 GenericBasics.Tr.STeen$R@@3)) ($IsBox |b#0@@3| GenericBasics.Tr$B@@19)))) (= (GenericBasics.Tr.STeen GenericBasics.Tr$A@@19 GenericBasics.Tr$B@@19 GenericBasics.Tr.STeen$R@@3 (Lit DatatypeTypeType |a#0@@5|) (Lit BoxType |b#0@@3|)) (Lit BoxType |b#0@@3|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1725|
 :pattern ( (GenericBasics.Tr.STeen GenericBasics.Tr$A@@19 GenericBasics.Tr$B@@19 GenericBasics.Tr.STeen$R@@3 (Lit DatatypeTypeType |a#0@@5|) (Lit BoxType |b#0@@3|)))
))))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1354|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@7 T@U) (v@@17 T@U) ) (! ($IsAlloc intType v@@17 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1193|
 :pattern ( ($IsAlloc intType v@@17 TInt h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@18 T@U) ) (! ($IsAlloc realType v@@18 TReal h@@8)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1194|
 :pattern ( ($IsAlloc realType v@@18 TReal h@@8))
)))
(assert (forall ((h@@9 T@U) (v@@19 T@U) ) (! ($IsAlloc boolType v@@19 TBool h@@9)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1195|
 :pattern ( ($IsAlloc boolType v@@19 TBool h@@9))
)))
(assert (forall ((v@@20 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@20 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@20))) ($IsBox (|Seq#Index| v@@20 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1185|
 :pattern ( (|Seq#Index| v@@20 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1186|
 :pattern ( ($Is SeqType v@@20 (TSeq t0@@4)))
)))
(assert (forall ((s@@5 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1399|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))))
)))
(assert (forall ((v@@21 T@U) ) (! ($Is intType v@@21 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1172|
 :pattern ( ($Is intType v@@21 TInt))
)))
(assert (forall ((v@@22 T@U) ) (! ($Is realType v@@22 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1173|
 :pattern ( ($Is realType v@@22 TReal))
)))
(assert (forall ((v@@23 T@U) ) (! ($Is boolType v@@23 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1174|
 :pattern ( ($Is boolType v@@23 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |b#0@@4| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |call7formal@bb#0| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B () T@U)
(declare-fun |call8formal@cc#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call7formal@bb#0@0| () T@U)
(declare-fun GenericBasics.Tr$B@@20 () T@U)
(declare-fun |call8formal@cc#0@0| () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun |call7formal@bb#0@@0| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@0 () T@U)
(declare-fun |call8formal@cc#0@@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call7formal@bb#0@0@@0| () T@U)
(declare-fun |call8formal@cc#0@0@@0| () T@U)
(declare-fun |tt#0| () T@U)
(declare-fun |x##2@0| () Int)
(declare-fun |a##2@0| () Bool)
(declare-fun |b##2@0| () Real)
(declare-fun |call7formal@bb#0@@1| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@1 () T@U)
(declare-fun |call8formal@cc#0@@1| () T@U)
(declare-fun |call4formal@a#0@0| () T@U)
(declare-fun |call5formal@b#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call7formal@bb#0@0@@1| () T@U)
(declare-fun |call8formal@cc#0@0@@1| () T@U)
(declare-fun |$rhs##4@0| () Real)
(declare-fun |y##0@0| () Int)
(declare-fun |call6formal@bb#0| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@2 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call6formal@bb#0@0| () T@U)
(declare-fun |y##1@0| () Int)
(declare-fun |call6formal@bb#0@@0| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@3 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call6formal@bb#0@0@@0| () T@U)
(declare-fun |y##2@0| () Int)
(declare-fun |a##5@0| () Bool)
(declare-fun |b##5@0| () Real)
(declare-fun |call6formal@bb#0@@1| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@4 () T@U)
(declare-fun |call3formal@a#0@0| () T@U)
(declare-fun |call4formal@b#0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call6formal@bb#0@0@@1| () T@U)
(declare-fun |$rhs##8@0| () Real)
(declare-fun |y##3@0| () Int)
(declare-fun |call6formal@bb#0@@2| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@5 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call6formal@bb#0@0@@2| () T@U)
(declare-fun |y##4@0| () Int)
(declare-fun |a##7@0| () T@U)
(declare-fun |b##7@0| () T@U)
(declare-fun |call6formal@bb#0@@3| () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@@6 () T@U)
(declare-fun call0formal@GenericBasics.Tr$A@0 () T@U)
(declare-fun call1formal@GenericBasics.Tr$B@0 () T@U)
(declare-fun |call3formal@a#0@0@@0| () T@U)
(declare-fun |call4formal@b#0@0@@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |call6formal@bb#0@0@@3| () T@U)
(declare-fun |$rhs##10@0| () T@U)
(declare-fun GenericBasics.Tr$A@@20 () T@U)
(declare-fun |##a#0@0| () T@U)
(declare-fun |a#0@@6| () T@U)
(declare-fun |bb#0@0| () T@U)
(declare-fun |##a#1@0| () T@U)
(declare-fun |bb#0@1| () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun |sq#0| () T@U)
(declare-fun |_v0#0| () T@U)
(declare-fun |ss#0| () T@U)
(set-info :boogie-vc-id Impl$$GenericBasics.Tr.ReferToTraitMembers)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc this@@1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 GenericBasics.Tr.xyz))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 GenericBasics.Tr.xyz)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) GenericBasics.Tr.xyz |b#0@@4|))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 GenericBasics.Tr.xyz))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 GenericBasics.Tr.xyz)) (=> (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) GenericBasics.Tr.xyz |b#0@@4|))) (=> (and (and ($IsGoodHeap $Heap@1) (= |x#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) GenericBasics.Tr.xyz))) (and (= |y#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) GenericBasics.Tr.xyz)) (= |x##0@0| (LitInt 0)))) (=> (and (and (and ($IsBox |call7formal@bb#0| call1formal@GenericBasics.Tr$B) ($IsAllocBox |call7formal@bb#0| call1formal@GenericBasics.Tr$B $Heap@@1)) (and ($Is SeqType |call8formal@cc#0| (TSeq call1formal@GenericBasics.Tr$B)) ($IsAlloc SeqType |call8formal@cc#0| (TSeq call1formal@GenericBasics.Tr$B) $Heap@@1))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($IsBox |call7formal@bb#0@0| GenericBasics.Tr$B@@20) ($IsAllocBox |call7formal@bb#0@0| GenericBasics.Tr$B@@20 $Heap@2)))) (=> (and (and (and (and (and ($Is SeqType |call8formal@cc#0@0| (TSeq GenericBasics.Tr$B@@20)) ($IsAlloc SeqType |call8formal@cc#0@0| (TSeq GenericBasics.Tr$B@@20) $Heap@2)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |TraitCompiledfy.138:12|
 :skolemid |1712|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |x##1@0| (LitInt 0)))) (and (and ($IsBox |call7formal@bb#0@@0| call1formal@GenericBasics.Tr$B@@0) ($IsAllocBox |call7formal@bb#0@@0| call1formal@GenericBasics.Tr$B@@0 $Heap@@1)) (and ($Is SeqType |call8formal@cc#0@@0| (TSeq call1formal@GenericBasics.Tr$B@@0)) ($IsAlloc SeqType |call8formal@cc#0@@0| (TSeq call1formal@GenericBasics.Tr$B@@0) $Heap@@1)))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and ($IsBox |call7formal@bb#0@0@@0| GenericBasics.Tr$B@@20) ($IsAllocBox |call7formal@bb#0@0@@0| GenericBasics.Tr$B@@20 $Heap@3))) (and (and ($Is SeqType |call8formal@cc#0@0@@0| (TSeq GenericBasics.Tr$B@@20)) ($IsAlloc SeqType |call8formal@cc#0@0@@0| (TSeq GenericBasics.Tr$B@@20) $Heap@3)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |TraitCompiledfy.138:12|
 :skolemid |1712|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@3))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |tt#0| null)) (not true))) (=> (or (not (= |tt#0| null)) (not true)) (=> (= |x##2@0| (LitInt 0)) (=> (and (= |a##2@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= |b##2@0| (LitReal 5.0))) (=> (and (and ($IsBox |call7formal@bb#0@@1| call1formal@GenericBasics.Tr$B@@1) ($IsAllocBox |call7formal@bb#0@@1| call1formal@GenericBasics.Tr$B@@1 $Heap@@1)) (and ($Is SeqType |call8formal@cc#0@@1| (TSeq call1formal@GenericBasics.Tr$B@@1)) ($IsAlloc SeqType |call8formal@cc#0@@1| (TSeq call1formal@GenericBasics.Tr$B@@1) $Heap@@1))) (=> (and (and (and (and (= |call4formal@a#0@0| ($Box boolType (bool_2_U |a##2@0|))) (= |call5formal@b#0@0| ($Box realType (real_2_U |b##2@0|)))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (and (and ($IsBox |call7formal@bb#0@0@@1| TReal) ($IsAllocBox |call7formal@bb#0@0@@1| TReal $Heap@4)) (and ($Is SeqType |call8formal@cc#0@0@@1| (TSeq TReal)) ($IsAlloc SeqType |call8formal@cc#0@0@@1| (TSeq TReal) $Heap@4)))) (and (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6)))
 :qid |TraitCompiledfy.138:12|
 :skolemid |1712|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |$rhs##4@0| (U_2_real ($Unbox realType |call7formal@bb#0@0@@1|))) (= |y##0@0| (LitInt 1)))) (and (and ($IsBox |call6formal@bb#0| call1formal@GenericBasics.Tr$B@@2) ($IsAllocBox |call6formal@bb#0| call1formal@GenericBasics.Tr$B@@2 $Heap@@1)) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))))) (=> (and (and (and (and (and (and (and ($IsBox |call6formal@bb#0@0| GenericBasics.Tr$B@@20) ($IsAllocBox |call6formal@bb#0@0| GenericBasics.Tr$B@@20 $Heap@5)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7)))
 :qid |TraitCompiledfy.139:19|
 :skolemid |1715|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |y##1@0| (LitInt 1)))) (and (and ($IsBox |call6formal@bb#0@@0| call1formal@GenericBasics.Tr$B@@3) ($IsAllocBox |call6formal@bb#0@@0| call1formal@GenericBasics.Tr$B@@3 $Heap@@1)) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)))) (and (and (and ($IsBox |call6formal@bb#0@0@@0| GenericBasics.Tr$B@@20) ($IsAllocBox |call6formal@bb#0@0@@0| GenericBasics.Tr$B@@20 $Heap@6)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8)))
 :qid |TraitCompiledfy.139:19|
 :skolemid |1715|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@8))
))) (and (and ($HeapSucc $Heap@5 $Heap@6) (= |y##2@0| (LitInt 1))) (and (= |a##5@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= |b##5@0| (LitReal 5.0)))))) (and (and (and (and ($IsBox |call6formal@bb#0@@1| call1formal@GenericBasics.Tr$B@@4) ($IsAllocBox |call6formal@bb#0@@1| call1formal@GenericBasics.Tr$B@@4 $Heap@@1)) (and (= |call3formal@a#0@0| ($Box boolType (bool_2_U |a##5@0|))) (= |call4formal@b#0@0| ($Box realType (real_2_U |b##5@0|))))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and ($IsBox |call6formal@bb#0@0@@1| TReal) ($IsAllocBox |call6formal@bb#0@0@@1| TReal $Heap@7)))) (and (and (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9)))
 :qid |TraitCompiledfy.139:19|
 :skolemid |1715|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@9))
)) ($HeapSucc $Heap@6 $Heap@7)) (and (= |$rhs##8@0| (U_2_real ($Unbox realType |call6formal@bb#0@0@@1|))) (= |y##3@0| (LitInt 1)))) (and (and ($IsBox |call6formal@bb#0@@2| call1formal@GenericBasics.Tr$B@@5) ($IsAllocBox |call6formal@bb#0@@2| call1formal@GenericBasics.Tr$B@@5 $Heap@@1)) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)))))) (and (and (and (and (and (and ($IsBox |call6formal@bb#0@0@@2| GenericBasics.Tr$B@@20) ($IsAllocBox |call6formal@bb#0@0@@2| GenericBasics.Tr$B@@20 $Heap@8)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10)))
 :qid |TraitCompiledfy.139:19|
 :skolemid |1715|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@10))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |y##4@0| (LitInt 2)))) (and (and (= |a##7@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))) (= |b##7@0| (Lit SetType (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (and ($IsBox |call6formal@bb#0@@3| call1formal@GenericBasics.Tr$B@@6) ($IsAllocBox |call6formal@bb#0@@3| call1formal@GenericBasics.Tr$B@@6 $Heap@@1)))) (and (and (and (= call0formal@GenericBasics.Tr$A@0 (TSeq TInt)) (= call1formal@GenericBasics.Tr$B@0 (TSet TInt))) (and (= |call3formal@a#0@0@@0| ($Box SeqType |a##7@0|)) (= |call4formal@b#0@0@@0| ($Box SetType |b##7@0|)))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and ($IsBox |call6formal@bb#0@0@@3| call1formal@GenericBasics.Tr$B@0) ($IsAllocBox |call6formal@bb#0@0@@3| call1formal@GenericBasics.Tr$B@0 $Heap@9))))) (and (and (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11)))
 :qid |TraitCompiledfy.139:19|
 :skolemid |1715|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (= |$rhs##10@0| ($Unbox SetType |call6formal@bb#0@0@@3|)) ($IsAllocBox ($Box refType this@@1) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20) $Heap@9))) (and (and (= |##a#0@0| (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110))))) ($IsAlloc DatatypeTypeType |##a#0@0| (Tclass._System.Tuple2 GenericBasics.Tr$A@@20 (TBitvector 7)) $Heap@9)) (and (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110))))) (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110)))))))) (and (and (and (= |bb#0@0| (GenericBasics.Tr.Teen GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110)))))) ($IsAllocBox ($Box refType this@@1) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20) $Heap@9)) (and (= |##a#1@0| (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110))))) ($IsAlloc DatatypeTypeType |##a#1@0| (Tclass._System.Tuple2 GenericBasics.Tr$A@@20 (TBitvector 7)) $Heap@9))) (and (and (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110))))) (|GenericBasics.Tr.Teen#canCall| GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110)))))) (and (= |bb#0@1| (GenericBasics.Tr.Teen GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20 (TBitvector 7) this@@1 (|#_System._tuple#2._#Make2| |a#0@@6| ($Box bv7Type (Lit bv7Type (bv7_2_U #b1000110)))))) (= (ControlFlow 0 2) (- 0 1)))))))) (or (not (= |tt#0| null)) (not true)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20)) ($IsAlloc refType this@@1 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@20 GenericBasics.Tr$B@@20) $Heap@@1))) (and ($IsBox |a#0@@6| GenericBasics.Tr$A@@20) ($IsAllocBox |a#0@@6| GenericBasics.Tr$A@@20 $Heap@@1))) (=> (and (and (and (and (and ($IsBox |b#0@@4| GenericBasics.Tr$B@@20) ($IsAllocBox |b#0@@4| GenericBasics.Tr$B@@20 $Heap@@1)) (and ($Is refType |tt#0| (Tclass.GenericBasics.Tr TBool TReal)) ($IsAlloc refType |tt#0| (Tclass.GenericBasics.Tr TBool TReal) $Heap@@1))) (and (and ($IsBox |x#0| GenericBasics.Tr$B@@20) ($IsAllocBox |x#0| GenericBasics.Tr$B@@20 $Heap@@1)) true)) (and (and (and ($IsBox |y#0| GenericBasics.Tr$B@@20) ($IsAllocBox |y#0| GenericBasics.Tr$B@@20 $Heap@@1)) true) (and (and ($IsBox |bb#0| GenericBasics.Tr$B@@20) ($IsAllocBox |bb#0| GenericBasics.Tr$B@@20 $Heap@@1)) true))) (and (and (and (and ($Is SeqType |sq#0| (TSeq GenericBasics.Tr$B@@20)) ($IsAlloc SeqType |sq#0| (TSeq GenericBasics.Tr$B@@20) $Heap@@1)) true) (and (and ($Is SeqType |_v0#0| (TSeq TReal)) ($IsAlloc SeqType |_v0#0| (TSeq TReal) $Heap@@1)) true)) (and (and (and ($Is SetType |ss#0| (TSet TInt)) ($IsAlloc SetType |ss#0| (TSet TInt) $Heap@@1)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2))))) anon0_correct)))))
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
