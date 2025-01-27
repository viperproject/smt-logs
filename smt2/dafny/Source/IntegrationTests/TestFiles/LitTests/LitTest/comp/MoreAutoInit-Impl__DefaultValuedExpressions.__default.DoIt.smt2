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
(declare-fun TReal () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.NT0 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.NT1 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.NT2 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.NT3 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.NR0 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Class? () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Trait? () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Stream () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.PossiblyFiniteStream () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Color () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Class () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.PossibleCell () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Cell () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.S0 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.S1 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.S2 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.ST0 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.ST2 () T@U)
(declare-fun Tagclass.DefaultValuedExpressions.Trait () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$array3 () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$NT0 () T@U)
(declare-fun tytagFamily$NT1 () T@U)
(declare-fun tytagFamily$NT2 () T@U)
(declare-fun tytagFamily$NT3 () T@U)
(declare-fun tytagFamily$NR0 () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$PossiblyFiniteStream () T@U)
(declare-fun tytagFamily$Color () T@U)
(declare-fun tytagFamily$PossibleCell () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$S0 () T@U)
(declare-fun tytagFamily$S1 () T@U)
(declare-fun tytagFamily$S2 () T@U)
(declare-fun tytagFamily$ST0 () T@U)
(declare-fun tytagFamily$ST2 () T@U)
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
(declare-fun Tclass.DefaultValuedExpressions.ST0 (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.ST2 (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TBitvector (Int) T@U)
(declare-fun bv1Type () T@T)
(declare-fun bv1_2_U ((_ BitVec 1)) T@U)
(declare-fun U_2_bv1 (T@U) (_ BitVec 1))
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun bv16Type () T@T)
(declare-fun bv16_2_U ((_ BitVec 16)) T@U)
(declare-fun U_2_bv16 (T@U) (_ BitVec 16))
(declare-fun bv32Type () T@T)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv53Type () T@T)
(declare-fun bv53_2_U ((_ BitVec 53)) T@U)
(declare-fun U_2_bv53 (T@U) (_ BitVec 53))
(declare-fun bv64Type () T@T)
(declare-fun bv64_2_U ((_ BitVec 64)) T@U)
(declare-fun U_2_bv64 (T@U) (_ BitVec 64))
(declare-fun bv100Type () T@T)
(declare-fun bv100_2_U ((_ BitVec 100)) T@U)
(declare-fun U_2_bv100 (T@U) (_ BitVec 100))
(declare-fun Tclass.DefaultValuedExpressions.NT0 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.NT1 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.NT2 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.NT3 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.NR0 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.S0 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.S1 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.S2 () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitReal (Real) Real)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun Tclass._System.array3? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class? (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait? (T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Stream (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.PossiblyFiniteStream (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun Tclass.DefaultValuedExpressions.Color () T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |ISet#Empty| () T@U)
(declare-fun charType () T@T)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class?_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class?_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait?_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait?_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Class_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.PossibleCell (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.PossibleCell_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.PossibleCell_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Cell (T@U T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Cell_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Cell_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.ST0_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.ST0_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.ST2_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.ST2_1 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Trait_1 (T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.Stream_0 (T@U) T@U)
(declare-fun Tclass.DefaultValuedExpressions.PossiblyFiniteStream_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TReal TagChar TagInt TagReal TagSet TagISet TagMultiSet TagSeq TagMap TagIMap alloc Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.Tuple0 Tagclass._System.array3? Tagclass._System.array3 Tagclass._System.Tuple3 Tagclass.DefaultValuedExpressions.NT0 Tagclass.DefaultValuedExpressions.NT1 Tagclass.DefaultValuedExpressions.NT2 Tagclass.DefaultValuedExpressions.NT3 Tagclass.DefaultValuedExpressions.NR0 Tagclass.DefaultValuedExpressions.Class? Tagclass.DefaultValuedExpressions.Trait? Tagclass.DefaultValuedExpressions.Stream Tagclass.DefaultValuedExpressions.PossiblyFiniteStream Tagclass.DefaultValuedExpressions.Color Tagclass.DefaultValuedExpressions.Class Tagclass.DefaultValuedExpressions.PossibleCell Tagclass.DefaultValuedExpressions.Cell Tagclass.DefaultValuedExpressions.S0 Tagclass.DefaultValuedExpressions.S1 Tagclass.DefaultValuedExpressions.S2 Tagclass.DefaultValuedExpressions.ST0 Tagclass.DefaultValuedExpressions.ST2 Tagclass.DefaultValuedExpressions.Trait tytagFamily$array |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| tytagFamily$array3 |tytagFamily$_tuple#3| tytagFamily$NT0 tytagFamily$NT1 tytagFamily$NT2 tytagFamily$NT3 tytagFamily$NR0 tytagFamily$Class tytagFamily$Trait tytagFamily$Stream tytagFamily$PossiblyFiniteStream tytagFamily$Color tytagFamily$PossibleCell tytagFamily$Cell tytagFamily$S0 tytagFamily$S1 tytagFamily$S2 tytagFamily$ST0 tytagFamily$ST2)
)
(assert (forall ((DefaultValuedExpressions.ST0$T T@U) (DefaultValuedExpressions.ST0$U T@U) (|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T DefaultValuedExpressions.ST0$U) $h)
 :qid |unknown.0:0|
 :skolemid |4106|
 :pattern ( ($IsAlloc intType |x#0| (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T DefaultValuedExpressions.ST0$U) $h))
)))
(assert (forall ((DefaultValuedExpressions.ST2$T T@U) (DefaultValuedExpressions.ST2$U T@U) (|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T DefaultValuedExpressions.ST2$U) $h@@0)
 :qid |unknown.0:0|
 :skolemid |4114|
 :pattern ( ($IsAlloc intType |x#0@@0| (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T DefaultValuedExpressions.ST2$U) $h@@0))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |3222|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv1Type) 3) (forall ((arg0@@2 (_ BitVec 1)) ) (! (= (U_2_bv1 (bv1_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv1|
 :pattern ( (bv1_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv1_2_U (U_2_bv1 x@@2)) x@@2)
 :qid |cast:U_2_bv1|
 :pattern ( (U_2_bv1 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv1Type v@@0 (TBitvector 1) heap)
 :qid |unknown.0:0|
 :skolemid |3501|
 :pattern ( ($IsAlloc bv1Type v@@0 (TBitvector 1) heap))
)))
(assert  (and (and (= (Ctor bv8Type) 4) (forall ((arg0@@3 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@3))
))) (forall ((x@@3 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@3)) x@@3)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@3))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv8Type v@@1 (TBitvector 8) heap@@0)
 :qid |unknown.0:0|
 :skolemid |3505|
 :pattern ( ($IsAlloc bv8Type v@@1 (TBitvector 8) heap@@0))
)))
(assert  (and (and (= (Ctor bv16Type) 5) (forall ((arg0@@4 (_ BitVec 16)) ) (! (= (U_2_bv16 (bv16_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv16|
 :pattern ( (bv16_2_U arg0@@4))
))) (forall ((x@@4 T@U) ) (! (= (bv16_2_U (U_2_bv16 x@@4)) x@@4)
 :qid |cast:U_2_bv16|
 :pattern ( (U_2_bv16 x@@4))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv16Type v@@2 (TBitvector 16) heap@@1)
 :qid |unknown.0:0|
 :skolemid |3509|
 :pattern ( ($IsAlloc bv16Type v@@2 (TBitvector 16) heap@@1))
)))
(assert  (and (and (= (Ctor bv32Type) 6) (forall ((arg0@@5 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@5))
))) (forall ((x@@5 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@5)) x@@5)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@5))
))))
(assert (forall ((v@@3 T@U) (heap@@2 T@U) ) (! ($IsAlloc bv32Type v@@3 (TBitvector 32) heap@@2)
 :qid |unknown.0:0|
 :skolemid |3513|
 :pattern ( ($IsAlloc bv32Type v@@3 (TBitvector 32) heap@@2))
)))
(assert  (and (and (= (Ctor bv53Type) 7) (forall ((arg0@@6 (_ BitVec 53)) ) (! (= (U_2_bv53 (bv53_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv53|
 :pattern ( (bv53_2_U arg0@@6))
))) (forall ((x@@6 T@U) ) (! (= (bv53_2_U (U_2_bv53 x@@6)) x@@6)
 :qid |cast:U_2_bv53|
 :pattern ( (U_2_bv53 x@@6))
))))
(assert (forall ((v@@4 T@U) (heap@@3 T@U) ) (! ($IsAlloc bv53Type v@@4 (TBitvector 53) heap@@3)
 :qid |unknown.0:0|
 :skolemid |3517|
 :pattern ( ($IsAlloc bv53Type v@@4 (TBitvector 53) heap@@3))
)))
(assert  (and (and (= (Ctor bv64Type) 8) (forall ((arg0@@7 (_ BitVec 64)) ) (! (= (U_2_bv64 (bv64_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv64|
 :pattern ( (bv64_2_U arg0@@7))
))) (forall ((x@@7 T@U) ) (! (= (bv64_2_U (U_2_bv64 x@@7)) x@@7)
 :qid |cast:U_2_bv64|
 :pattern ( (U_2_bv64 x@@7))
))))
(assert (forall ((v@@5 T@U) (heap@@4 T@U) ) (! ($IsAlloc bv64Type v@@5 (TBitvector 64) heap@@4)
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAlloc bv64Type v@@5 (TBitvector 64) heap@@4))
)))
(assert  (and (and (= (Ctor bv100Type) 9) (forall ((arg0@@8 (_ BitVec 100)) ) (! (= (U_2_bv100 (bv100_2_U arg0@@8)) arg0@@8)
 :qid |typeInv:U_2_bv100|
 :pattern ( (bv100_2_U arg0@@8))
))) (forall ((x@@8 T@U) ) (! (= (bv100_2_U (U_2_bv100 x@@8)) x@@8)
 :qid |cast:U_2_bv100|
 :pattern ( (U_2_bv100 x@@8))
))))
(assert (forall ((v@@6 T@U) (heap@@5 T@U) ) (! ($IsAlloc bv100Type v@@6 (TBitvector 100) heap@@5)
 :qid |unknown.0:0|
 :skolemid |3525|
 :pattern ( ($IsAlloc bv100Type v@@6 (TBitvector 100) heap@@5))
)))
(assert (forall ((|c1#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |c1#0| Tclass.DefaultValuedExpressions.NT0 $h@@1)
 :qid |unknown.0:0|
 :skolemid |3909|
 :pattern ( ($IsAlloc intType |c1#0| Tclass.DefaultValuedExpressions.NT0 $h@@1))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass.DefaultValuedExpressions.NT1 $h@@2)
 :qid |unknown.0:0|
 :skolemid |3911|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass.DefaultValuedExpressions.NT1 $h@@2))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass.DefaultValuedExpressions.NT2 $h@@3)
 :qid |unknown.0:0|
 :skolemid |3913|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass.DefaultValuedExpressions.NT2 $h@@3))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass.DefaultValuedExpressions.NT3 $h@@4)
 :qid |unknown.0:0|
 :skolemid |3915|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass.DefaultValuedExpressions.NT3 $h@@4))
)))
(assert (forall ((|r#0| T@U) ($h@@5 T@U) ) (! ($IsAlloc realType |r#0| Tclass.DefaultValuedExpressions.NR0 $h@@5)
 :qid |unknown.0:0|
 :skolemid |3923|
 :pattern ( ($IsAlloc realType |r#0| Tclass.DefaultValuedExpressions.NR0 $h@@5))
)))
(assert (forall ((|x#0@@4| T@U) ($h@@6 T@U) ) (! ($IsAlloc intType |x#0@@4| Tclass.DefaultValuedExpressions.S0 $h@@6)
 :qid |unknown.0:0|
 :skolemid |4091|
 :pattern ( ($IsAlloc intType |x#0@@4| Tclass.DefaultValuedExpressions.S0 $h@@6))
)))
(assert (forall ((|x#0@@5| T@U) ($h@@7 T@U) ) (! ($IsAlloc intType |x#0@@5| Tclass.DefaultValuedExpressions.S1 $h@@7)
 :qid |unknown.0:0|
 :skolemid |4093|
 :pattern ( ($IsAlloc intType |x#0@@5| Tclass.DefaultValuedExpressions.S1 $h@@7))
)))
(assert (forall ((|x#0@@6| T@U) ($h@@8 T@U) ) (! ($IsAlloc intType |x#0@@6| Tclass.DefaultValuedExpressions.S2 $h@@8)
 :qid |unknown.0:0|
 :skolemid |4095|
 :pattern ( ($IsAlloc intType |x#0@@6| Tclass.DefaultValuedExpressions.S2 $h@@8))
)))
(assert (forall ((|r#0@@0| T@U) ) (! (= ($Is realType |r#0@@0| Tclass.DefaultValuedExpressions.NR0)  (and (<= (LitReal 0.0) (U_2_real |r#0@@0|)) (<= (U_2_real |r#0@@0|) (LitReal 100.0))))
 :qid |unknown.0:0|
 :skolemid |3922|
 :pattern ( ($Is realType |r#0@@0| Tclass.DefaultValuedExpressions.NR0))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |3791|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |3792|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |3793|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |3201|
 :pattern ( ($Is intType v@@7 (TBitvector 0)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is bv1Type v@@8 (TBitvector 1))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($Is bv1Type v@@8 (TBitvector 1)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is bv8Type v@@9 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |3504|
 :pattern ( ($Is bv8Type v@@9 (TBitvector 8)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is bv16Type v@@10 (TBitvector 16))
 :qid |unknown.0:0|
 :skolemid |3508|
 :pattern ( ($Is bv16Type v@@10 (TBitvector 16)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is bv32Type v@@11 (TBitvector 32))
 :qid |unknown.0:0|
 :skolemid |3512|
 :pattern ( ($Is bv32Type v@@11 (TBitvector 32)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is bv53Type v@@12 (TBitvector 53))
 :qid |unknown.0:0|
 :skolemid |3516|
 :pattern ( ($Is bv53Type v@@12 (TBitvector 53)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is bv64Type v@@13 (TBitvector 64))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($Is bv64Type v@@13 (TBitvector 64)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is bv100Type v@@14 (TBitvector 100))
 :qid |unknown.0:0|
 :skolemid |3524|
 :pattern ( ($Is bv100Type v@@14 (TBitvector 100)))
)))
(assert (= (Ctor refType) 10))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@9) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@9))
 :qid |unknown.0:0|
 :skolemid |3549|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@9))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@9))
)))
(assert (forall ((_System.array3$arg T@U) (|c#0@@0| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg) $h@@10) ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg) $h@@10))
 :qid |unknown.0:0|
 :skolemid |3785|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg) $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg) $h@@10))
)))
(assert (= (Ctor DatatypeTypeType) 11))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |3652|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3281|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 12))
(assert (forall ((v@@15 T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v@@15 (TMultiSet t0)) ($IsGoodMultiSet v@@15))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |3208|
 :pattern ( ($Is MultiSetType v@@15 (TMultiSet t0)))
)))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |3790|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |3794|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (= (Ctor HandleTypeType) 13))
(assert (forall ((f T@U) (t0@@0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0) ($IsBox bx@@0 t0@@0))
 :qid |unknown.0:0|
 :skolemid |3573|
 :pattern ( ($IsBox bx@@0 u0))
 :pattern ( ($IsBox bx@@0 t0@@0))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1) ($IsBox bx@@1 u1))
 :qid |unknown.0:0|
 :skolemid |3574|
 :pattern ( ($IsBox bx@@1 t1))
 :pattern ( ($IsBox bx@@1 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |3575|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3640|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@1 t1@@0 (MapType0Store t0@@1 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 14)) (= (Ctor BoxType) 15)) (forall ((arg0@@9 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@9 arg1)) 16)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@10 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@10 arg1@@0)) arg0@@10)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@10 arg1@@0))
))) (forall ((arg0@@11 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@11 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@11 arg1@@1))
))))
(assert (forall ((_System.array$arg@@0 T@U) ($o T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o (Tclass._System.array? _System.array$arg@@0) $h@@11)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3542|
 :pattern ( ($IsAlloc refType $o (Tclass._System.array? _System.array$arg@@0) $h@@11))
)))
(assert (forall ((_System.array3$arg@@0 T@U) ($o@@0 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array3? _System.array3$arg@@0) $h@@12)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3774|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array3? _System.array3$arg@@0) $h@@12))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3274|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3275|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((v@@16 T@U) (t0@@2 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@16 (TISet t0@@2)) (forall ((bx@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@16 bx@@2)) ($IsBox bx@@2 t0@@2))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |3204|
 :pattern ( (MapType0Select BoxType boolType v@@16 bx@@2))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |3205|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@16 (TISet t0@@2)))
)))
(assert (forall ((x@@9 Int) ) (! (= (LitInt x@@9) x@@9)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3173|
 :pattern ( (LitInt x@@9))
)))
(assert (forall ((x@@10 Real) ) (! (= (LitReal x@@10) x@@10)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |3175|
 :pattern ( (LitReal x@@10))
)))
(assert (forall ((x@@11 T@U) (T T@T) ) (! (= (Lit T x@@11) x@@11)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3171|
 :pattern ( (Lit T x@@11))
)))
(assert (= (Ctor SeqType) 17))
(assert (forall ((s T@U) (bx@@3 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@3 t)) ($Is SeqType (|Seq#Build| s bx@@3) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3414|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@3) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@1 T@U) (heap@@6 T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@6) (and ($IsBox bx0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@1 heap@@6 f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |3569|
 :pattern ( (Reads1 t0@@3 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap@@6))
 :pattern ( (Reads1 t0@@3 t1@@1 heap@@6 f@@0 bx0))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@13)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@13) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@13))))
 :qid |unknown.0:0|
 :skolemid |3641|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@13))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3633|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@12 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@12)) x@@12)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3182|
 :pattern ( ($Unbox T@@0 x@@12))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3634|
)))
 :qid |unknown.0:0|
 :skolemid |3635|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((t0@@4 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |3561|
))) (= (Requires1 t0@@4 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@4 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |3562|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@5 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |3563|
))) (= (Requires1 t0@@5 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@5 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |3564|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert (= (Ctor SetType) 18))
(assert (forall ((v@@17 T@U) (t0@@6 T@U) ) (! (= ($Is SetType v@@17 (TSet t0@@6)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@17 bx@@4) ($IsBox bx@@4 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3202|
 :pattern ( (|Set#IsMember| v@@17 bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3203|
 :pattern ( ($Is SetType v@@17 (TSet t0@@6)))
)))
(assert (forall ((DefaultValuedExpressions.Class$T T@U) (DefaultValuedExpressions.Class$U T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T DefaultValuedExpressions.Class$U))  (and ($Is refType |c#0@@1| (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T DefaultValuedExpressions.Class$U)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3929|
 :pattern ( ($Is refType |c#0@@1| (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T DefaultValuedExpressions.Class$U)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T DefaultValuedExpressions.Class$U)))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T T@U) (DefaultValuedExpressions.Trait$U T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T DefaultValuedExpressions.Trait$U))  (and ($Is refType |c#0@@2| (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T DefaultValuedExpressions.Trait$U)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3937|
 :pattern ( ($Is refType |c#0@@2| (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T DefaultValuedExpressions.Trait$U)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T DefaultValuedExpressions.Trait$U)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v@@18 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@18)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3380|
 :pattern ( (|Seq#Build| s@@0 v@@18))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@1))  (and ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3548|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((_System.array3$arg@@1 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array3 _System.array3$arg@@1))  (and ($Is refType |c#0@@4| (Tclass._System.array3? _System.array3$arg@@1)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3784|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array3 _System.array3$arg@@1)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array3? _System.array3$arg@@1)))
)))
(assert (forall ((v@@19 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@19) t@@0 h@@1) ($IsAlloc T@@1 v@@19 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3195|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@19) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@5 t@@1 h@@2) ($IsAllocBox bx@@5 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3267|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@5 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@20 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@20 t@@2 h@@3) ($IsAlloc T@@2 v@@20 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3266|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@20 t@@2 h@@3))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@0 T@U) (DefaultValuedExpressions.Class$U@@0 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@0 DefaultValuedExpressions.Class$U@@0))  (or (= $o@@1 null) (= (dtype $o@@1) (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@0 DefaultValuedExpressions.Class$U@@0))))
 :qid |unknown.0:0|
 :skolemid |3927|
 :pattern ( ($Is refType $o@@1 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@0 DefaultValuedExpressions.Class$U@@0)))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@0 T@U) (DefaultValuedExpressions.Trait$U@@0 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@0 DefaultValuedExpressions.Trait$U@@0))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@0 DefaultValuedExpressions.Trait$U@@0))))
 :qid |unknown.0:0|
 :skolemid |3931|
 :pattern ( ($Is refType $o@@2 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@0 DefaultValuedExpressions.Trait$U@@0)))
)))
(assert (forall ((t0@@7 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@7) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@7 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |3557|
))) (= (Reads1 t0@@7 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@7 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |3558|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@8 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@8) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@8 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |3559|
))) (= (Reads1 t0@@8 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@8 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |3560|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@9 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@9) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@9 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |3565|
))) (= (Apply1 t0@@9 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@9 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |3566|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@10 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@10) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@10 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |3567|
))) (= (Apply1 t0@@10 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@10 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |3568|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@2)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@2)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |3536|
 :pattern ( (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@3)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |3545|
 :pattern ( (Tclass._System.array _System.array$arg@@3))
)))
(assert (forall ((_System.array3$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@2)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@2)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |3765|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@2))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@3)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@3)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |3781|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@3))
)))
(assert (forall ((DefaultValuedExpressions.Stream$T T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T)) Tagclass.DefaultValuedExpressions.Stream) (= (TagFamily (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |3865|
 :pattern ( (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T))
)))
(assert (forall ((DefaultValuedExpressions.PossiblyFiniteStream$T T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T)) Tagclass.DefaultValuedExpressions.PossiblyFiniteStream) (= (TagFamily (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T)) tytagFamily$PossiblyFiniteStream))
 :qid |unknown.0:0|
 :skolemid |3868|
 :pattern ( (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T))
)))
(assert (= (Ctor MapType) 19))
(assert (forall ((DefaultValuedExpressions.ST2$T@@0 T@U) (DefaultValuedExpressions.ST2$U@@0 T@U) (|x#0@@7| T@U) ) (! (= ($Is intType |x#0@@7| (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@0 DefaultValuedExpressions.ST2$U@@0)) (<= (ite (let ((|m#2| (Lit MapType |Map#Empty|)))
(|Map#Equal| |m#2| |Map#Empty|)) 0 8) (U_2_int |x#0@@7|)))
 :qid |unknown.0:0|
 :skolemid |4113|
 :pattern ( ($Is intType |x#0@@7| (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@0 DefaultValuedExpressions.ST2$U@@0)))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |3471|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@14 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@14) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@14))
 :qid |unknown.0:0|
 :skolemid |3587|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@14))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@1 T@U) (DefaultValuedExpressions.Class$U@@1 T@U) (|c#0@@5| T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType |c#0@@5| (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@1 DefaultValuedExpressions.Class$U@@1) $h@@15) ($IsAlloc refType |c#0@@5| (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@1 DefaultValuedExpressions.Class$U@@1) $h@@15))
 :qid |unknown.0:0|
 :skolemid |3930|
 :pattern ( ($IsAlloc refType |c#0@@5| (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@1 DefaultValuedExpressions.Class$U@@1) $h@@15))
 :pattern ( ($IsAlloc refType |c#0@@5| (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@1 DefaultValuedExpressions.Class$U@@1) $h@@15))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@1 T@U) (DefaultValuedExpressions.Trait$U@@1 T@U) (|c#0@@6| T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType |c#0@@6| (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@1 DefaultValuedExpressions.Trait$U@@1) $h@@16) ($IsAlloc refType |c#0@@6| (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@1 DefaultValuedExpressions.Trait$U@@1) $h@@16))
 :qid |unknown.0:0|
 :skolemid |3938|
 :pattern ( ($IsAlloc refType |c#0@@6| (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@1 DefaultValuedExpressions.Trait$U@@1) $h@@16))
 :pattern ( ($IsAlloc refType |c#0@@6| (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@1 DefaultValuedExpressions.Trait$U@@1) $h@@16))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |3657|
 :pattern ( ($IsBox bx@@6 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.DefaultValuedExpressions.NT0) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) Tclass.DefaultValuedExpressions.NT0)))
 :qid |unknown.0:0|
 :skolemid |3836|
 :pattern ( ($IsBox bx@@7 Tclass.DefaultValuedExpressions.NT0))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.DefaultValuedExpressions.NT1) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass.DefaultValuedExpressions.NT1)))
 :qid |unknown.0:0|
 :skolemid |3838|
 :pattern ( ($IsBox bx@@8 Tclass.DefaultValuedExpressions.NT1))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.DefaultValuedExpressions.NT2) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) Tclass.DefaultValuedExpressions.NT2)))
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( ($IsBox bx@@9 Tclass.DefaultValuedExpressions.NT2))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.DefaultValuedExpressions.NT3) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) Tclass.DefaultValuedExpressions.NT3)))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsBox bx@@10 Tclass.DefaultValuedExpressions.NT3))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.DefaultValuedExpressions.NR0) (and (= ($Box realType ($Unbox realType bx@@11)) bx@@11) ($Is realType ($Unbox realType bx@@11) Tclass.DefaultValuedExpressions.NR0)))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( ($IsBox bx@@11 Tclass.DefaultValuedExpressions.NR0))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.DefaultValuedExpressions.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) Tclass.DefaultValuedExpressions.Color)))
 :qid |unknown.0:0|
 :skolemid |3871|
 :pattern ( ($IsBox bx@@12 Tclass.DefaultValuedExpressions.Color))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.DefaultValuedExpressions.S0) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) Tclass.DefaultValuedExpressions.S0)))
 :qid |unknown.0:0|
 :skolemid |3892|
 :pattern ( ($IsBox bx@@13 Tclass.DefaultValuedExpressions.S0))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.DefaultValuedExpressions.S1) (and (= ($Box intType ($Unbox intType bx@@14)) bx@@14) ($Is intType ($Unbox intType bx@@14) Tclass.DefaultValuedExpressions.S1)))
 :qid |unknown.0:0|
 :skolemid |3894|
 :pattern ( ($IsBox bx@@14 Tclass.DefaultValuedExpressions.S1))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.DefaultValuedExpressions.S2) (and (= ($Box intType ($Unbox intType bx@@15)) bx@@15) ($Is intType ($Unbox intType bx@@15) Tclass.DefaultValuedExpressions.S2)))
 :qid |unknown.0:0|
 :skolemid |3896|
 :pattern ( ($IsBox bx@@15 Tclass.DefaultValuedExpressions.S2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |3541|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((_System.array3$arg@@4 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array3? _System.array3$arg@@4))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array3? _System.array3$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |3773|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((DefaultValuedExpressions.ST0$T@@0 T@U) (DefaultValuedExpressions.ST0$U@@0 T@U) (|x#0@@8| T@U) ) (! (= ($Is intType |x#0@@8| (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@0 DefaultValuedExpressions.ST0$U@@0)) (= (Mod (U_2_int |x#0@@8|) (LitInt 5)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |4105|
 :pattern ( ($Is intType |x#0@@8| (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@0 DefaultValuedExpressions.ST0$U@@0)))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@21 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@21) i) v@@21)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@21) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3381|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@21) i))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |3459|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |3460|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@22 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@22))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |3461|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |3462|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((m@@3 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@3 |m'|)  (and (forall ((u@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@3) u@@0) (|Set#IsMember| (|Map#Domain| |m'|) u@@0))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |3453|
)) (forall ((u@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@3) u@@1) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@1) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@1)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |3454|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |3455|
 :pattern ( (|Map#Equal| m@@3 |m'|))
)))
(assert (forall ((f@@7 T@U) (t0@@11 T@U) (t1@@8 T@U) (h@@4 T@U) ) (!  (=> (and ($IsGoodHeap h@@4) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@11 t1@@8) h@@4)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@11 h@@4) (Requires1 t0@@11 t1@@8 h@@4 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@11 t1@@8 h@@4 f@@7 bx0@@6) t1@@8 h@@4))
 :qid |unknown.0:0|
 :skolemid |3579|
 :pattern ( (Apply1 t0@@11 t1@@8 h@@4 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |3580|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@11 t1@@8) h@@4))
)))
(assert (forall ((|x#0@@9| T@U) ) (! (= ($Is intType |x#0@@9| Tclass.DefaultValuedExpressions.NT2) (= (Mod (U_2_int |x#0@@9|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |3912|
 :pattern ( ($Is intType |x#0@@9| Tclass.DefaultValuedExpressions.NT2))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@2 T@U) (DefaultValuedExpressions.Class$U@@2 T@U) ($o@@5 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@2 DefaultValuedExpressions.Class$U@@2) $h@@17)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3928|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@2 DefaultValuedExpressions.Class$U@@2) $h@@17))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@2 T@U) (DefaultValuedExpressions.Trait$U@@2 T@U) ($o@@6 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@2 DefaultValuedExpressions.Trait$U@@2) $h@@18)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3932|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@2 DefaultValuedExpressions.Trait$U@@2) $h@@18))
)))
(assert (forall ((v@@23 T@U) (t0@@12 T@U) (h@@5 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@23 (TISet t0@@12) h@@5) (forall ((bx@@16 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@23 bx@@16)) ($IsAllocBox bx@@16 t0@@12 h@@5))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |3225|
 :pattern ( (MapType0Select BoxType boolType v@@23 bx@@16))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |3226|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@23 (TISet t0@@12) h@@5))
)))
(assert (forall ((m@@4 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |3470|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))
)))
(assert (forall ((m@@5 T@U) (v@@24 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@24)) (exists ((u@@2 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@2)) (= v@@24 (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@2)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |3468|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@2))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@2))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |3469|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@24))
)))
(assert (= (Ctor IMapType) 20))
(assert (forall ((v@@25 T@U) (t0@@13 T@U) (t1@@9 T@U) (h@@6 T@U) ) (! (= ($IsAlloc IMapType v@@25 (TIMap t0@@13 t1@@9) h@@6) (forall ((bx@@17 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@25) bx@@17)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@25) bx@@17) t1@@9 h@@6) ($IsAllocBox bx@@17 t0@@13 h@@6)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |3233|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@25) bx@@17))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@25) bx@@17))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |3234|
 :pattern ( ($IsAlloc IMapType v@@25 (TIMap t0@@13 t1@@9) h@@6))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3306|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((m@@6 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@6 |m'@@0|) (= m@@6 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |3456|
 :pattern ( (|Map#Equal| m@@6 |m'@@0|))
)))
(assert (forall ((v@@26 T@U) (t0@@14 T@U) ) (! (= ($Is MultiSetType v@@26 (TMultiSet t0@@14)) (forall ((bx@@18 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@26 bx@@18)) ($IsBox bx@@18 t0@@14))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |3206|
 :pattern ( (|MultiSet#Multiplicity| v@@26 bx@@18))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |3207|
 :pattern ( ($Is MultiSetType v@@26 (TMultiSet t0@@14)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3273|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@8 T@U) (t0@@15 T@U) (t1@@10 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@15 t1@@10)) (forall ((h@@7 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) ($IsBox bx0@@7 t0@@15)) (Requires1 t0@@15 t1@@10 h@@7 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@15 t1@@10 h@@7 f@@8 bx0@@7) t1@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3571|
 :pattern ( (Apply1 t0@@15 t1@@10 h@@7 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |3572|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@15 t1@@10)))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Domain| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |3465|
 :pattern ( (|IMap#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (! (= (= m@@8 |IMap#Empty|) (= (|IMap#Values| m@@8) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |3466|
 :pattern ( (|IMap#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (! (= (= m@@9 |IMap#Empty|) (= (|IMap#Items| m@@9) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |3467|
 :pattern ( (|IMap#Items| m@@9))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |IMap#Empty|) (exists ((k@@3 T@U) (v@@27 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@27))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |3463|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |3464|
 :pattern ( (|IMap#Items| m@@10))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 TInt) (and (= ($Box intType ($Unbox intType bx@@19)) bx@@19) ($Is intType ($Unbox intType bx@@19) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3183|
 :pattern ( ($IsBox bx@@19 TInt))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 TReal) (and (= ($Box realType ($Unbox realType bx@@20)) bx@@20) ($Is realType ($Unbox realType bx@@20) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |3184|
 :pattern ( ($IsBox bx@@20 TReal))
)))
(assert (= (Ctor charType) 21))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 TChar) (and (= ($Box charType ($Unbox charType bx@@21)) bx@@21) ($Is charType ($Unbox charType bx@@21) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |3186|
 :pattern ( ($IsBox bx@@21 TChar))
)))
(assert (forall ((v@@28 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@28) t@@3) ($Is T@@3 v@@28 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3194|
 :pattern ( ($IsBox ($Box T@@3 v@@28) t@@3))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@22 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@22)) (<= (|MultiSet#Multiplicity| ms bx@@22) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |3339|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@22))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |3340|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|MultiSet#Card| s@@2))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |3341|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3377|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@29 T@U) (t0@@16 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@29 (TSet t0@@16) h@@8) (forall ((bx@@23 T@U) ) (!  (=> (|Set#IsMember| v@@29 bx@@23) ($IsAllocBox bx@@23 t0@@16 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3223|
 :pattern ( (|Set#IsMember| v@@29 bx@@23))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3224|
 :pattern ( ($IsAlloc SetType v@@29 (TSet t0@@16) h@@8))
)))
(assert (forall ((o@@7 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@7) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |3343|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@7))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Inv0_TMap (TMap t@@4 u@@3)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |3165|
 :pattern ( (TMap t@@4 u@@3))
)))
(assert (forall ((t@@5 T@U) (u@@4 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@4)) u@@4)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |3166|
 :pattern ( (TMap t@@5 u@@4))
)))
(assert (forall ((t@@6 T@U) (u@@5 T@U) ) (! (= (Tag (TMap t@@6 u@@5)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |3167|
 :pattern ( (TMap t@@6 u@@5))
)))
(assert (forall ((t@@7 T@U) (u@@6 T@U) ) (! (= (Inv0_TIMap (TIMap t@@7 u@@6)) t@@7)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |3168|
 :pattern ( (TIMap t@@7 u@@6))
)))
(assert (forall ((t@@8 T@U) (u@@7 T@U) ) (! (= (Inv1_TIMap (TIMap t@@8 u@@7)) u@@7)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |3169|
 :pattern ( (TIMap t@@8 u@@7))
)))
(assert (forall ((t@@9 T@U) (u@@8 T@U) ) (! (= (Tag (TIMap t@@9 u@@8)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |3170|
 :pattern ( (TIMap t@@9 u@@8))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |3551|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |3552|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3582|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |3583|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3632|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3637|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3638|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3647|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3649|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@3 T@U) (DefaultValuedExpressions.Class$U@@3 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Class?_0 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@3 DefaultValuedExpressions.Class$U@@3)) DefaultValuedExpressions.Class$T@@3)
 :qid |unknown.0:0|
 :skolemid |3847|
 :pattern ( (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@3 DefaultValuedExpressions.Class$U@@3))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@4 T@U) (DefaultValuedExpressions.Class$U@@4 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Class?_1 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@4 DefaultValuedExpressions.Class$U@@4)) DefaultValuedExpressions.Class$U@@4)
 :qid |unknown.0:0|
 :skolemid |3848|
 :pattern ( (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@4 DefaultValuedExpressions.Class$U@@4))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@3 T@U) (DefaultValuedExpressions.Trait$U@@3 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Trait?_0 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@3 DefaultValuedExpressions.Trait$U@@3)) DefaultValuedExpressions.Trait$T@@3)
 :qid |unknown.0:0|
 :skolemid |3851|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@3 DefaultValuedExpressions.Trait$U@@3))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@4 T@U) (DefaultValuedExpressions.Trait$U@@4 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Trait?_1 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@4 DefaultValuedExpressions.Trait$U@@4)) DefaultValuedExpressions.Trait$U@@4)
 :qid |unknown.0:0|
 :skolemid |3852|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@4 DefaultValuedExpressions.Trait$U@@4))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@5 T@U) (DefaultValuedExpressions.Class$U@@5 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Class_0 (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@5 DefaultValuedExpressions.Class$U@@5)) DefaultValuedExpressions.Class$T@@5)
 :qid |unknown.0:0|
 :skolemid |3873|
 :pattern ( (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@5 DefaultValuedExpressions.Class$U@@5))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@6 T@U) (DefaultValuedExpressions.Class$U@@6 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Class_1 (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@6 DefaultValuedExpressions.Class$U@@6)) DefaultValuedExpressions.Class$U@@6)
 :qid |unknown.0:0|
 :skolemid |3874|
 :pattern ( (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@6 DefaultValuedExpressions.Class$U@@6))
)))
(assert (forall ((DefaultValuedExpressions.PossibleCell$T T@U) (DefaultValuedExpressions.PossibleCell$U T@U) ) (! (= (Tclass.DefaultValuedExpressions.PossibleCell_0 (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T DefaultValuedExpressions.PossibleCell$U)) DefaultValuedExpressions.PossibleCell$T)
 :qid |unknown.0:0|
 :skolemid |3877|
 :pattern ( (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T DefaultValuedExpressions.PossibleCell$U))
)))
(assert (forall ((DefaultValuedExpressions.PossibleCell$T@@0 T@U) (DefaultValuedExpressions.PossibleCell$U@@0 T@U) ) (! (= (Tclass.DefaultValuedExpressions.PossibleCell_1 (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@0 DefaultValuedExpressions.PossibleCell$U@@0)) DefaultValuedExpressions.PossibleCell$U@@0)
 :qid |unknown.0:0|
 :skolemid |3878|
 :pattern ( (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@0 DefaultValuedExpressions.PossibleCell$U@@0))
)))
(assert (forall ((DefaultValuedExpressions.Cell$T T@U) (DefaultValuedExpressions.Cell$U T@U) ) (! (= (Tclass.DefaultValuedExpressions.Cell_0 (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T DefaultValuedExpressions.Cell$U)) DefaultValuedExpressions.Cell$T)
 :qid |unknown.0:0|
 :skolemid |3881|
 :pattern ( (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T DefaultValuedExpressions.Cell$U))
)))
(assert (forall ((DefaultValuedExpressions.Cell$T@@0 T@U) (DefaultValuedExpressions.Cell$U@@0 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Cell_1 (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@0 DefaultValuedExpressions.Cell$U@@0)) DefaultValuedExpressions.Cell$U@@0)
 :qid |unknown.0:0|
 :skolemid |3882|
 :pattern ( (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@0 DefaultValuedExpressions.Cell$U@@0))
)))
(assert (forall ((DefaultValuedExpressions.ST0$T@@1 T@U) (DefaultValuedExpressions.ST0$U@@1 T@U) ) (! (= (Tclass.DefaultValuedExpressions.ST0_0 (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@1 DefaultValuedExpressions.ST0$U@@1)) DefaultValuedExpressions.ST0$T@@1)
 :qid |unknown.0:0|
 :skolemid |3899|
 :pattern ( (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@1 DefaultValuedExpressions.ST0$U@@1))
)))
(assert (forall ((DefaultValuedExpressions.ST0$T@@2 T@U) (DefaultValuedExpressions.ST0$U@@2 T@U) ) (! (= (Tclass.DefaultValuedExpressions.ST0_1 (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@2 DefaultValuedExpressions.ST0$U@@2)) DefaultValuedExpressions.ST0$U@@2)
 :qid |unknown.0:0|
 :skolemid |3900|
 :pattern ( (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@2 DefaultValuedExpressions.ST0$U@@2))
)))
(assert (forall ((DefaultValuedExpressions.ST2$T@@1 T@U) (DefaultValuedExpressions.ST2$U@@1 T@U) ) (! (= (Tclass.DefaultValuedExpressions.ST2_0 (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@1 DefaultValuedExpressions.ST2$U@@1)) DefaultValuedExpressions.ST2$T@@1)
 :qid |unknown.0:0|
 :skolemid |3904|
 :pattern ( (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@1 DefaultValuedExpressions.ST2$U@@1))
)))
(assert (forall ((DefaultValuedExpressions.ST2$T@@2 T@U) (DefaultValuedExpressions.ST2$U@@2 T@U) ) (! (= (Tclass.DefaultValuedExpressions.ST2_1 (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@2 DefaultValuedExpressions.ST2$U@@2)) DefaultValuedExpressions.ST2$U@@2)
 :qid |unknown.0:0|
 :skolemid |3905|
 :pattern ( (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@2 DefaultValuedExpressions.ST2$U@@2))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@5 T@U) (DefaultValuedExpressions.Trait$U@@5 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Trait_0 (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@5 DefaultValuedExpressions.Trait$U@@5)) DefaultValuedExpressions.Trait$T@@5)
 :qid |unknown.0:0|
 :skolemid |3934|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@5 DefaultValuedExpressions.Trait$U@@5))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@6 T@U) (DefaultValuedExpressions.Trait$U@@6 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Trait_1 (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@6 DefaultValuedExpressions.Trait$U@@6)) DefaultValuedExpressions.Trait$U@@6)
 :qid |unknown.0:0|
 :skolemid |3935|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@6 DefaultValuedExpressions.Trait$U@@6))
)))
(assert (forall ((v@@30 T@U) (t0@@17 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@30 (TSeq t0@@17) h@@9) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@30))) ($IsAllocBox (|Seq#Index| v@@30 i@@0) t0@@17 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3229|
 :pattern ( (|Seq#Index| v@@30 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3230|
 :pattern ( ($IsAlloc SeqType v@@30 (TSeq t0@@17) h@@9))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |3156|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Inv0_TSet (TSet t@@10)) t@@10)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3157|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Tag (TSet t@@11)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3158|
 :pattern ( (TSet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Inv0_TISet (TISet t@@12)) t@@12)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3159|
 :pattern ( (TISet t@@12))
)))
(assert (forall ((t@@13 T@U) ) (! (= (Tag (TISet t@@13)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |3160|
 :pattern ( (TISet t@@13))
)))
(assert (forall ((t@@14 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@14)) t@@14)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |3161|
 :pattern ( (TMultiSet t@@14))
)))
(assert (forall ((t@@15 T@U) ) (! (= (Tag (TMultiSet t@@15)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |3162|
 :pattern ( (TMultiSet t@@15))
)))
(assert (forall ((t@@16 T@U) ) (! (= (Inv0_TSeq (TSeq t@@16)) t@@16)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3163|
 :pattern ( (TSeq t@@16))
)))
(assert (forall ((t@@17 T@U) ) (! (= (Tag (TSeq t@@17)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3164|
 :pattern ( (TSeq t@@17))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@5)) _System.array$arg@@5)
 :qid |unknown.0:0|
 :skolemid |3537|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |3546|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((_System.array3$arg@@5 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@5)) _System.array3$arg@@5)
 :qid |unknown.0:0|
 :skolemid |3766|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@6)) _System.array3$arg@@6)
 :qid |unknown.0:0|
 :skolemid |3782|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((DefaultValuedExpressions.Stream$T@@0 T@U) ) (! (= (Tclass.DefaultValuedExpressions.Stream_0 (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T@@0)) DefaultValuedExpressions.Stream$T@@0)
 :qid |unknown.0:0|
 :skolemid |3866|
 :pattern ( (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T@@0))
)))
(assert (forall ((DefaultValuedExpressions.PossiblyFiniteStream$T@@0 T@U) ) (! (= (Tclass.DefaultValuedExpressions.PossiblyFiniteStream_0 (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T@@0)) DefaultValuedExpressions.PossiblyFiniteStream$T@@0)
 :qid |unknown.0:0|
 :skolemid |3869|
 :pattern ( (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T@@0))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3181|
 :pattern ( ($Box T@@4 x@@13))
)))
(assert (forall ((v@@31 T@U) (t0@@18 T@U) (t1@@11 T@U) (h@@10 T@U) ) (! (= ($IsAlloc MapType v@@31 (TMap t0@@18 t1@@11) h@@10) (forall ((bx@@24 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@31) bx@@24) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@31) bx@@24) t1@@11 h@@10) ($IsAllocBox bx@@24 t0@@18 h@@10)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |3231|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@31) bx@@24))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@31) bx@@24))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |3232|
 :pattern ( ($IsAlloc MapType v@@31 (TMap t0@@18 t1@@11) h@@10))
)))
(assert (forall ((v@@32 T@U) (t0@@19 T@U) (t1@@12 T@U) ) (! (= ($Is IMapType v@@32 (TIMap t0@@19 t1@@12)) (forall ((bx@@25 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@32) bx@@25)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@32) bx@@25) t1@@12) ($IsBox bx@@25 t0@@19)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |3214|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@32) bx@@25))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@32) bx@@25))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |3215|
 :pattern ( ($Is IMapType v@@32 (TIMap t0@@19 t1@@12)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3648|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3650|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|c0#0| T@U) ) (! (= ($Is intType |c0#0| Tclass.DefaultValuedExpressions.NT0) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |3908|
 :pattern ( ($Is intType |c0#0| Tclass.DefaultValuedExpressions.NT0))
)))
(assert (forall ((|x#0@@10| T@U) ) (! (= ($Is intType |x#0@@10| Tclass.DefaultValuedExpressions.NT1) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |3910|
 :pattern ( ($Is intType |x#0@@10| Tclass.DefaultValuedExpressions.NT1))
)))
(assert (forall ((|x#0@@11| T@U) ) (! (= ($Is intType |x#0@@11| Tclass.DefaultValuedExpressions.S0) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |4090|
 :pattern ( ($Is intType |x#0@@11| Tclass.DefaultValuedExpressions.S0))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@4|) (|Set#Equal| (Reads1 |#$T0@@4| |#$R@@4| $OneHeap |f#0@@0| |x0#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |3585|
))))
 :qid |unknown.0:0|
 :skolemid |3586|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert (forall ((s@@4 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@4) 0) (= s@@4 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@4) 0)) (not true)) (exists ((x@@14 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@4 x@@14))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |3344|
 :pattern ( (|MultiSet#Multiplicity| s@@4 x@@14))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |3345|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((u@@9 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3441|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |3177|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((f@@9 T@U) (t0@@20 T@U) (t1@@13 T@U) (h@@11 T@U) ) (!  (=> ($IsGoodHeap h@@11) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@20 t1@@13) h@@11) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@20) ($IsAllocBox bx0@@8 t0@@20 h@@11)) (Requires1 t0@@20 t1@@13 h@@11 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@20 t1@@13 h@@11 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@11 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |3576|
 :pattern ( (|Set#IsMember| (Reads1 t0@@20 t1@@13 h@@11 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |3577|
 :pattern ( (Apply1 t0@@20 t1@@13 h@@11 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@20 t1@@13 h@@11 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |3578|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@20 t1@@13) h@@11))
)))
(assert (forall ((bx@@26 T@U) (s@@5 T@U) (t@@18 T@U) ) (!  (=> ($IsBox bx@@26 (TMap s@@5 t@@18)) (and (= ($Box MapType ($Unbox MapType bx@@26)) bx@@26) ($Is MapType ($Unbox MapType bx@@26) (TMap s@@5 t@@18))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |3192|
 :pattern ( ($IsBox bx@@26 (TMap s@@5 t@@18)))
)))
(assert (forall ((bx@@27 T@U) (s@@6 T@U) (t@@19 T@U) ) (!  (=> ($IsBox bx@@27 (TIMap s@@6 t@@19)) (and (= ($Box IMapType ($Unbox IMapType bx@@27)) bx@@27) ($Is IMapType ($Unbox IMapType bx@@27) (TIMap s@@6 t@@19))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |3193|
 :pattern ( ($IsBox bx@@27 (TIMap s@@6 t@@19)))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@28)) bx@@28) ($Is HandleTypeType ($Unbox HandleTypeType bx@@28) (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |3553|
 :pattern ( ($IsBox bx@@28 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@29)) bx@@29) ($Is HandleTypeType ($Unbox HandleTypeType bx@@29) (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |3584|
 :pattern ( ($IsBox bx@@29 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@30)) bx@@30) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@30) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3639|
 :pattern ( ($IsBox bx@@30 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@7 T@U) (DefaultValuedExpressions.Class$U@@7 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@7 DefaultValuedExpressions.Class$U@@7)) (and (= ($Box refType ($Unbox refType bx@@31)) bx@@31) ($Is refType ($Unbox refType bx@@31) (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@7 DefaultValuedExpressions.Class$U@@7))))
 :qid |unknown.0:0|
 :skolemid |3849|
 :pattern ( ($IsBox bx@@31 (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@7 DefaultValuedExpressions.Class$U@@7)))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@7 T@U) (DefaultValuedExpressions.Trait$U@@7 T@U) (bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@7 DefaultValuedExpressions.Trait$U@@7)) (and (= ($Box refType ($Unbox refType bx@@32)) bx@@32) ($Is refType ($Unbox refType bx@@32) (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@7 DefaultValuedExpressions.Trait$U@@7))))
 :qid |unknown.0:0|
 :skolemid |3853|
 :pattern ( ($IsBox bx@@32 (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@7 DefaultValuedExpressions.Trait$U@@7)))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@8 T@U) (DefaultValuedExpressions.Class$U@@8 T@U) (bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@8 DefaultValuedExpressions.Class$U@@8)) (and (= ($Box refType ($Unbox refType bx@@33)) bx@@33) ($Is refType ($Unbox refType bx@@33) (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@8 DefaultValuedExpressions.Class$U@@8))))
 :qid |unknown.0:0|
 :skolemid |3875|
 :pattern ( ($IsBox bx@@33 (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@8 DefaultValuedExpressions.Class$U@@8)))
)))
(assert (forall ((DefaultValuedExpressions.PossibleCell$T@@1 T@U) (DefaultValuedExpressions.PossibleCell$U@@1 T@U) (bx@@34 T@U) ) (!  (=> ($IsBox bx@@34 (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@1 DefaultValuedExpressions.PossibleCell$U@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@34)) bx@@34) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@34) (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@1 DefaultValuedExpressions.PossibleCell$U@@1))))
 :qid |unknown.0:0|
 :skolemid |3879|
 :pattern ( ($IsBox bx@@34 (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@1 DefaultValuedExpressions.PossibleCell$U@@1)))
)))
(assert (forall ((DefaultValuedExpressions.Cell$T@@1 T@U) (DefaultValuedExpressions.Cell$U@@1 T@U) (bx@@35 T@U) ) (!  (=> ($IsBox bx@@35 (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@1 DefaultValuedExpressions.Cell$U@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@35)) bx@@35) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@35) (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@1 DefaultValuedExpressions.Cell$U@@1))))
 :qid |unknown.0:0|
 :skolemid |3883|
 :pattern ( ($IsBox bx@@35 (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@1 DefaultValuedExpressions.Cell$U@@1)))
)))
(assert (forall ((DefaultValuedExpressions.ST0$T@@3 T@U) (DefaultValuedExpressions.ST0$U@@3 T@U) (bx@@36 T@U) ) (!  (=> ($IsBox bx@@36 (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@3 DefaultValuedExpressions.ST0$U@@3)) (and (= ($Box intType ($Unbox intType bx@@36)) bx@@36) ($Is intType ($Unbox intType bx@@36) (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@3 DefaultValuedExpressions.ST0$U@@3))))
 :qid |unknown.0:0|
 :skolemid |3901|
 :pattern ( ($IsBox bx@@36 (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@3 DefaultValuedExpressions.ST0$U@@3)))
)))
(assert (forall ((DefaultValuedExpressions.ST2$T@@3 T@U) (DefaultValuedExpressions.ST2$U@@3 T@U) (bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@3 DefaultValuedExpressions.ST2$U@@3)) (and (= ($Box intType ($Unbox intType bx@@37)) bx@@37) ($Is intType ($Unbox intType bx@@37) (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@3 DefaultValuedExpressions.ST2$U@@3))))
 :qid |unknown.0:0|
 :skolemid |3906|
 :pattern ( ($IsBox bx@@37 (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@3 DefaultValuedExpressions.ST2$U@@3)))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@8 T@U) (DefaultValuedExpressions.Trait$U@@8 T@U) (bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@8 DefaultValuedExpressions.Trait$U@@8)) (and (= ($Box refType ($Unbox refType bx@@38)) bx@@38) ($Is refType ($Unbox refType bx@@38) (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@8 DefaultValuedExpressions.Trait$U@@8))))
 :qid |unknown.0:0|
 :skolemid |3936|
 :pattern ( ($IsBox bx@@38 (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@8 DefaultValuedExpressions.Trait$U@@8)))
)))
(assert (forall ((o@@8 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@8)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |3310|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@8))
)))
(assert  (and (forall ((t0@@21 T@T) (t1@@14 T@T) (t2 T@T) (val@@1 T@U) (m@@11 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@21 t1@@14 t2 (MapType1Store t0@@21 t1@@14 t2 m@@11 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@12 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@12 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@12 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@13 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@13 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@13 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5455|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((x@@15 Int) (y Int) ) (! (= (Mod x@@15 y) (mod x@@15 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |3496|
 :pattern ( (Mod x@@15 y))
)))
(assert (forall ((s@@7 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@7 val@@4)) s@@7) (= (|Seq#Build_inv1| (|Seq#Build| s@@7 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3379|
 :pattern ( (|Seq#Build| s@@7 val@@4))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |3550|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |3581|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3636|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@9 T@U) (DefaultValuedExpressions.Class$U@@9 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@9 DefaultValuedExpressions.Class$U@@9)) Tagclass.DefaultValuedExpressions.Class?) (= (TagFamily (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@9 DefaultValuedExpressions.Class$U@@9)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( (Tclass.DefaultValuedExpressions.Class? DefaultValuedExpressions.Class$T@@9 DefaultValuedExpressions.Class$U@@9))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@9 T@U) (DefaultValuedExpressions.Trait$U@@9 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@9 DefaultValuedExpressions.Trait$U@@9)) Tagclass.DefaultValuedExpressions.Trait?) (= (TagFamily (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@9 DefaultValuedExpressions.Trait$U@@9)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |3850|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait? DefaultValuedExpressions.Trait$T@@9 DefaultValuedExpressions.Trait$U@@9))
)))
(assert (forall ((DefaultValuedExpressions.Class$T@@10 T@U) (DefaultValuedExpressions.Class$U@@10 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@10 DefaultValuedExpressions.Class$U@@10)) Tagclass.DefaultValuedExpressions.Class) (= (TagFamily (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@10 DefaultValuedExpressions.Class$U@@10)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |3872|
 :pattern ( (Tclass.DefaultValuedExpressions.Class DefaultValuedExpressions.Class$T@@10 DefaultValuedExpressions.Class$U@@10))
)))
(assert (forall ((DefaultValuedExpressions.PossibleCell$T@@2 T@U) (DefaultValuedExpressions.PossibleCell$U@@2 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@2 DefaultValuedExpressions.PossibleCell$U@@2)) Tagclass.DefaultValuedExpressions.PossibleCell) (= (TagFamily (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@2 DefaultValuedExpressions.PossibleCell$U@@2)) tytagFamily$PossibleCell))
 :qid |unknown.0:0|
 :skolemid |3876|
 :pattern ( (Tclass.DefaultValuedExpressions.PossibleCell DefaultValuedExpressions.PossibleCell$T@@2 DefaultValuedExpressions.PossibleCell$U@@2))
)))
(assert (forall ((DefaultValuedExpressions.Cell$T@@2 T@U) (DefaultValuedExpressions.Cell$U@@2 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@2 DefaultValuedExpressions.Cell$U@@2)) Tagclass.DefaultValuedExpressions.Cell) (= (TagFamily (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@2 DefaultValuedExpressions.Cell$U@@2)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |3880|
 :pattern ( (Tclass.DefaultValuedExpressions.Cell DefaultValuedExpressions.Cell$T@@2 DefaultValuedExpressions.Cell$U@@2))
)))
(assert (forall ((DefaultValuedExpressions.ST0$T@@4 T@U) (DefaultValuedExpressions.ST0$U@@4 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@4 DefaultValuedExpressions.ST0$U@@4)) Tagclass.DefaultValuedExpressions.ST0) (= (TagFamily (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@4 DefaultValuedExpressions.ST0$U@@4)) tytagFamily$ST0))
 :qid |unknown.0:0|
 :skolemid |3898|
 :pattern ( (Tclass.DefaultValuedExpressions.ST0 DefaultValuedExpressions.ST0$T@@4 DefaultValuedExpressions.ST0$U@@4))
)))
(assert (forall ((DefaultValuedExpressions.ST2$T@@4 T@U) (DefaultValuedExpressions.ST2$U@@4 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@4 DefaultValuedExpressions.ST2$U@@4)) Tagclass.DefaultValuedExpressions.ST2) (= (TagFamily (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@4 DefaultValuedExpressions.ST2$U@@4)) tytagFamily$ST2))
 :qid |unknown.0:0|
 :skolemid |3903|
 :pattern ( (Tclass.DefaultValuedExpressions.ST2 DefaultValuedExpressions.ST2$T@@4 DefaultValuedExpressions.ST2$U@@4))
)))
(assert (forall ((DefaultValuedExpressions.Trait$T@@10 T@U) (DefaultValuedExpressions.Trait$U@@10 T@U) ) (!  (and (= (Tag (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@10 DefaultValuedExpressions.Trait$U@@10)) Tagclass.DefaultValuedExpressions.Trait) (= (TagFamily (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@10 DefaultValuedExpressions.Trait$U@@10)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |3933|
 :pattern ( (Tclass.DefaultValuedExpressions.Trait DefaultValuedExpressions.Trait$T@@10 DefaultValuedExpressions.Trait$U@@10))
)))
(assert (forall ((t0@@22 T@U) (t1@@15 T@U) (heap@@7 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@7) (and ($IsBox bx0@@9 t0@@22) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@22 t1@@15)))) (|Set#Equal| (Reads1 t0@@22 t1@@15 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@22 t1@@15 $OneHeap f@@10 bx0@@9) (Requires1 t0@@22 t1@@15 heap@@7 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |3570|
 :pattern ( (Requires1 t0@@22 t1@@15 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@7))
 :pattern ( (Requires1 t0@@22 t1@@15 heap@@7 f@@10 bx0@@9))
)))
(assert (forall ((m@@14 T@U) ) (!  (or (= m@@14 |Map#Empty|) (exists ((k@@4 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@14) k@@4)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3429|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3430|
 :pattern ( (|Map#Domain| m@@14))
)))
(assert (forall ((m@@15 T@U) ) (!  (or (= m@@15 |Map#Empty|) (exists ((v@@33 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@15) v@@33)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3431|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3432|
 :pattern ( (|Map#Values| m@@15))
)))
(assert (forall ((m@@16 T@U) (item@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@16) item@@0)  (and (|Set#IsMember| (|Map#Domain| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3440|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@16) item@@0))
)))
(assert (forall ((m@@17 T@U) (v@@34 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@17) v@@34) (exists ((u@@10 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@17) u@@10) (= v@@34 (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3438|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@17) u@@10))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3439|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@17) v@@34))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |3240|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@39)) bx@@39) ($Is intType ($Unbox intType bx@@39) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |3187|
 :pattern ( ($IsBox bx@@39 (TBitvector 0)))
)))
(assert (forall ((bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 (TBitvector 1)) (and (= ($Box bv1Type ($Unbox bv1Type bx@@40)) bx@@40) ($Is bv1Type ($Unbox bv1Type bx@@40) (TBitvector 1))))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($IsBox bx@@40 (TBitvector 1)))
)))
(assert (forall ((bx@@41 T@U) (t@@20 T@U) ) (!  (=> ($IsBox bx@@41 (TSet t@@20)) (and (= ($Box SetType ($Unbox SetType bx@@41)) bx@@41) ($Is SetType ($Unbox SetType bx@@41) (TSet t@@20))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3188|
 :pattern ( ($IsBox bx@@41 (TSet t@@20)))
)))
(assert (forall ((bx@@42 T@U) (t@@21 T@U) ) (!  (=> ($IsBox bx@@42 (TISet t@@21)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@42)) bx@@42) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@42) (TISet t@@21))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |3189|
 :pattern ( ($IsBox bx@@42 (TISet t@@21)))
)))
(assert (forall ((bx@@43 T@U) (t@@22 T@U) ) (!  (=> ($IsBox bx@@43 (TMultiSet t@@22)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@43)) bx@@43) ($Is MultiSetType ($Unbox MultiSetType bx@@43) (TMultiSet t@@22))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |3190|
 :pattern ( ($IsBox bx@@43 (TMultiSet t@@22)))
)))
(assert (forall ((bx@@44 T@U) (t@@23 T@U) ) (!  (=> ($IsBox bx@@44 (TSeq t@@23)) (and (= ($Box SeqType ($Unbox SeqType bx@@44)) bx@@44) ($Is SeqType ($Unbox SeqType bx@@44) (TSeq t@@23))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3191|
 :pattern ( ($IsBox bx@@44 (TSeq t@@23)))
)))
(assert (forall ((_System.array$arg@@7 T@U) (bx@@45 T@U) ) (!  (=> ($IsBox bx@@45 (Tclass._System.array? _System.array$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@45)) bx@@45) ($Is refType ($Unbox refType bx@@45) (Tclass._System.array? _System.array$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |3538|
 :pattern ( ($IsBox bx@@45 (Tclass._System.array? _System.array$arg@@7)))
)))
(assert (forall ((_System.array$arg@@8 T@U) (bx@@46 T@U) ) (!  (=> ($IsBox bx@@46 (Tclass._System.array _System.array$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@46)) bx@@46) ($Is refType ($Unbox refType bx@@46) (Tclass._System.array _System.array$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |3547|
 :pattern ( ($IsBox bx@@46 (Tclass._System.array _System.array$arg@@8)))
)))
(assert (forall ((_System.array3$arg@@7 T@U) (bx@@47 T@U) ) (!  (=> ($IsBox bx@@47 (Tclass._System.array3? _System.array3$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@47)) bx@@47) ($Is refType ($Unbox refType bx@@47) (Tclass._System.array3? _System.array3$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |3767|
 :pattern ( ($IsBox bx@@47 (Tclass._System.array3? _System.array3$arg@@7)))
)))
(assert (forall ((_System.array3$arg@@8 T@U) (bx@@48 T@U) ) (!  (=> ($IsBox bx@@48 (Tclass._System.array3 _System.array3$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@48)) bx@@48) ($Is refType ($Unbox refType bx@@48) (Tclass._System.array3 _System.array3$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |3783|
 :pattern ( ($IsBox bx@@48 (Tclass._System.array3 _System.array3$arg@@8)))
)))
(assert (forall ((DefaultValuedExpressions.Stream$T@@1 T@U) (bx@@49 T@U) ) (!  (=> ($IsBox bx@@49 (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@49)) bx@@49) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@49) (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |3867|
 :pattern ( ($IsBox bx@@49 (Tclass.DefaultValuedExpressions.Stream DefaultValuedExpressions.Stream$T@@1)))
)))
(assert (forall ((DefaultValuedExpressions.PossiblyFiniteStream$T@@1 T@U) (bx@@50 T@U) ) (!  (=> ($IsBox bx@@50 (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@50)) bx@@50) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@50) (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |3870|
 :pattern ( ($IsBox bx@@50 (Tclass.DefaultValuedExpressions.PossiblyFiniteStream DefaultValuedExpressions.PossiblyFiniteStream$T@@1)))
)))
(assert (forall ((bx@@51 T@U) ) (!  (=> ($IsBox bx@@51 (TBitvector 8)) (and (= ($Box bv8Type ($Unbox bv8Type bx@@51)) bx@@51) ($Is bv8Type ($Unbox bv8Type bx@@51) (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($IsBox bx@@51 (TBitvector 8)))
)))
(assert (forall ((bx@@52 T@U) ) (!  (=> ($IsBox bx@@52 (TBitvector 16)) (and (= ($Box bv16Type ($Unbox bv16Type bx@@52)) bx@@52) ($Is bv16Type ($Unbox bv16Type bx@@52) (TBitvector 16))))
 :qid |unknown.0:0|
 :skolemid |3507|
 :pattern ( ($IsBox bx@@52 (TBitvector 16)))
)))
(assert (forall ((bx@@53 T@U) ) (!  (=> ($IsBox bx@@53 (TBitvector 32)) (and (= ($Box bv32Type ($Unbox bv32Type bx@@53)) bx@@53) ($Is bv32Type ($Unbox bv32Type bx@@53) (TBitvector 32))))
 :qid |unknown.0:0|
 :skolemid |3511|
 :pattern ( ($IsBox bx@@53 (TBitvector 32)))
)))
(assert (forall ((bx@@54 T@U) ) (!  (=> ($IsBox bx@@54 (TBitvector 53)) (and (= ($Box bv53Type ($Unbox bv53Type bx@@54)) bx@@54) ($Is bv53Type ($Unbox bv53Type bx@@54) (TBitvector 53))))
 :qid |unknown.0:0|
 :skolemid |3515|
 :pattern ( ($IsBox bx@@54 (TBitvector 53)))
)))
(assert (forall ((bx@@55 T@U) ) (!  (=> ($IsBox bx@@55 (TBitvector 64)) (and (= ($Box bv64Type ($Unbox bv64Type bx@@55)) bx@@55) ($Is bv64Type ($Unbox bv64Type bx@@55) (TBitvector 64))))
 :qid |unknown.0:0|
 :skolemid |3519|
 :pattern ( ($IsBox bx@@55 (TBitvector 64)))
)))
(assert (forall ((bx@@56 T@U) ) (!  (=> ($IsBox bx@@56 (TBitvector 100)) (and (= ($Box bv100Type ($Unbox bv100Type bx@@56)) bx@@56) ($Is bv100Type ($Unbox bv100Type bx@@56) (TBitvector 100))))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsBox bx@@56 (TBitvector 100)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |3178|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@35 T@U) (t0@@23 T@U) (t1@@16 T@U) ) (! (= ($Is MapType v@@35 (TMap t0@@23 t1@@16)) (forall ((bx@@57 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@35) bx@@57) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@35) bx@@57) t1@@16) ($IsBox bx@@57 t0@@23)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |3211|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@35) bx@@57))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@35) bx@@57))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |3212|
 :pattern ( ($Is MapType v@@35 (TMap t0@@23 t1@@16)))
)))
(assert (forall ((d@@3 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) ($Is DatatypeTypeType d@@3 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@3 Tclass._System.Tuple0 $h@@19))
 :qid |unknown.0:0|
 :skolemid |3658|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._System.Tuple0 $h@@19))
)))
(assert (forall ((d@@4 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) ($Is DatatypeTypeType d@@4 Tclass.DefaultValuedExpressions.Color)) ($IsAlloc DatatypeTypeType d@@4 Tclass.DefaultValuedExpressions.Color $h@@20))
 :qid |unknown.0:0|
 :skolemid |4025|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.DefaultValuedExpressions.Color $h@@20))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass.DefaultValuedExpressions.NT0) Tagclass.DefaultValuedExpressions.NT0))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.NT0) tytagFamily$NT0))
(assert (= (Tag Tclass.DefaultValuedExpressions.NT1) Tagclass.DefaultValuedExpressions.NT1))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.NT1) tytagFamily$NT1))
(assert (= (Tag Tclass.DefaultValuedExpressions.NT2) Tagclass.DefaultValuedExpressions.NT2))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.NT2) tytagFamily$NT2))
(assert (= (Tag Tclass.DefaultValuedExpressions.NT3) Tagclass.DefaultValuedExpressions.NT3))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.NT3) tytagFamily$NT3))
(assert (= (Tag Tclass.DefaultValuedExpressions.NR0) Tagclass.DefaultValuedExpressions.NR0))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.NR0) tytagFamily$NR0))
(assert (= (Tag Tclass.DefaultValuedExpressions.Color) Tagclass.DefaultValuedExpressions.Color))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.Color) tytagFamily$Color))
(assert (= (Tag Tclass.DefaultValuedExpressions.S0) Tagclass.DefaultValuedExpressions.S0))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.S0) tytagFamily$S0))
(assert (= (Tag Tclass.DefaultValuedExpressions.S1) Tagclass.DefaultValuedExpressions.S1))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.S1) tytagFamily$S1))
(assert (= (Tag Tclass.DefaultValuedExpressions.S2) Tagclass.DefaultValuedExpressions.S2))
(assert (= (TagFamily Tclass.DefaultValuedExpressions.S2) tytagFamily$S2))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@1 o@@9) (|Set#IsMember| b@@1 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3304|
 :pattern ( (|Set#IsMember| a@@1 o@@9))
 :pattern ( (|Set#IsMember| b@@1 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3305|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@5) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |3642|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@5) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |3643|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@5) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@6) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |3644|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@6) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |3645|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@6) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall ((|x#0@@12| T@U) ) (! (= ($Is intType |x#0@@12| Tclass.DefaultValuedExpressions.S1)  (and (<= (LitInt 0) (U_2_int |x#0@@12|)) (< (U_2_int |x#0@@12|) 10)))
 :qid |unknown.0:0|
 :skolemid |4092|
 :pattern ( ($Is intType |x#0@@12| Tclass.DefaultValuedExpressions.S1))
)))
(assert (forall ((|x#0@@13| T@U) ) (! (= ($Is intType |x#0@@13| Tclass.DefaultValuedExpressions.S2)  (and (<= (LitInt 0) (U_2_int |x#0@@13|)) (< (U_2_int |x#0@@13|) 10)))
 :qid |unknown.0:0|
 :skolemid |4094|
 :pattern ( ($Is intType |x#0@@13| Tclass.DefaultValuedExpressions.S2))
)))
(assert (forall ((|x#0@@14| T@U) ) (! (= ($Is intType |x#0@@14| Tclass.DefaultValuedExpressions.NT3)  (and (<= (LitInt 0) (U_2_int |x#0@@14|)) (< (U_2_int |x#0@@14|) 500)))
 :qid |unknown.0:0|
 :skolemid |3914|
 :pattern ( ($Is intType |x#0@@14| Tclass.DefaultValuedExpressions.NT3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3646|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@16 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@16))) (Lit BoxType ($Box intType (int_2_U x@@16))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3174|
 :pattern ( ($Box intType (int_2_U (LitInt x@@16))))
)))
(assert (forall ((x@@17 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@17))) (Lit BoxType ($Box realType (real_2_U x@@17))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |3176|
 :pattern ( ($Box realType (real_2_U (LitReal x@@17))))
)))
(assert (forall ((x@@18 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@18)) (Lit BoxType ($Box T@@5 x@@18)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3172|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@18)))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3378|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@36 T@U) (t0@@24 T@U) (h@@12 T@U) ) (! (= ($IsAlloc MultiSetType v@@36 (TMultiSet t0@@24) h@@12) (forall ((bx@@58 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@36 bx@@58)) ($IsAllocBox bx@@58 t0@@24 h@@12))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |3227|
 :pattern ( (|MultiSet#Multiplicity| v@@36 bx@@58))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |3228|
 :pattern ( ($IsAlloc MultiSetType v@@36 (TMultiSet t0@@24) h@@12))
)))
(assert (forall ((h@@13 T@U) (v@@37 T@U) ) (! ($IsAlloc intType v@@37 TInt h@@13)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3217|
 :pattern ( ($IsAlloc intType v@@37 TInt h@@13))
)))
(assert (forall ((h@@14 T@U) (v@@38 T@U) ) (! ($IsAlloc realType v@@38 TReal h@@14)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |3218|
 :pattern ( ($IsAlloc realType v@@38 TReal h@@14))
)))
(assert (forall ((h@@15 T@U) (v@@39 T@U) ) (! ($IsAlloc charType v@@39 TChar h@@15)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |3220|
 :pattern ( ($IsAlloc charType v@@39 TChar h@@15))
)))
(assert (forall ((v@@40 T@U) (t0@@25 T@U) ) (! (= ($Is SeqType v@@40 (TSeq t0@@25)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@40))) ($IsBox (|Seq#Index| v@@40 i@@1) t0@@25))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3209|
 :pattern ( (|Seq#Index| v@@40 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3210|
 :pattern ( ($Is SeqType v@@40 (TSeq t0@@25)))
)))
(assert (forall ((m@@18 T@U) ) (!  (or (= m@@18 |Map#Empty|) (exists ((k@@5 T@U) (v@@41 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@18) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@5 v@@41)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3433|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3434|
 :pattern ( (|Map#Items| m@@18))
)))
(assert (forall ((s@@9 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@9))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@9 i@@2))) (|Seq#Rank| s@@9)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3423|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@9 i@@2))))
)))
(assert (forall ((v@@42 T@U) (t0@@26 T@U) (t1@@17 T@U) ) (!  (=> ($Is MapType v@@42 (TMap t0@@26 t1@@17)) (and (and ($Is SetType (|Map#Domain| v@@42) (TSet t0@@26)) ($Is SetType (|Map#Values| v@@42) (TSet t1@@17))) ($Is SetType (|Map#Items| v@@42) (TSet (Tclass._System.Tuple2 t0@@26 t1@@17)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |3213|
 :pattern ( ($Is MapType v@@42 (TMap t0@@26 t1@@17)))
)))
(assert (forall ((v@@43 T@U) (t0@@27 T@U) (t1@@18 T@U) ) (!  (=> ($Is IMapType v@@43 (TIMap t0@@27 t1@@18)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@43) (TISet t0@@27)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@43) (TISet t1@@18))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@43) (TISet (Tclass._System.Tuple2 t0@@27 t1@@18)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |3216|
 :pattern ( ($Is IMapType v@@43 (TIMap t0@@27 t1@@18)))
)))
(assert (forall ((v@@44 T@U) ) (! ($Is intType v@@44 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3196|
 :pattern ( ($Is intType v@@44 TInt))
)))
(assert (forall ((v@@45 T@U) ) (! ($Is realType v@@45 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |3197|
 :pattern ( ($Is realType v@@45 TReal))
)))
(assert (forall ((v@@46 T@U) ) (! ($Is charType v@@46 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |3199|
 :pattern ( ($Is charType v@@46 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |ch#0@0| () T@U)
(declare-fun |suffix##0@0| () T@U)
(declare-fun |call1formal@x#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |suffix##1@0| () T@U)
(declare-fun |call1formal@x#0@0@@0| () T@U)
(declare-fun |r#0@0| () Real)
(declare-fun $Heap@1 () T@U)
(declare-fun |suffix##2@0| () T@U)
(declare-fun |call1formal@x#0@0@@1| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |suffix##3@0| () T@U)
(declare-fun |call1formal@x#0@0@@2| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |b0#0@0| () Int)
(declare-fun |suffix##4@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0 () T@U)
(declare-fun |call1formal@x#0@0@@3| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |suffix##5@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@0 () T@U)
(declare-fun |call1formal@x#0@0@@4| () T@U)
(declare-fun |b1#0@0| () (_ BitVec 1))
(declare-fun $Heap@5 () T@U)
(declare-fun |suffix##6@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@1 () T@U)
(declare-fun |call1formal@x#0@0@@5| () T@U)
(declare-fun |b8#0@0| () (_ BitVec 8))
(declare-fun $Heap@6 () T@U)
(declare-fun |suffix##7@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@2 () T@U)
(declare-fun |call1formal@x#0@0@@6| () T@U)
(declare-fun |b16#0@0| () (_ BitVec 16))
(declare-fun $Heap@7 () T@U)
(declare-fun |suffix##8@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@3 () T@U)
(declare-fun |call1formal@x#0@0@@7| () T@U)
(declare-fun |b32#0@0| () (_ BitVec 32))
(declare-fun $Heap@8 () T@U)
(declare-fun |suffix##9@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@4 () T@U)
(declare-fun |call1formal@x#0@0@@8| () T@U)
(declare-fun |b53#0@0| () (_ BitVec 53))
(declare-fun $Heap@9 () T@U)
(declare-fun |suffix##10@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@5 () T@U)
(declare-fun |call1formal@x#0@0@@9| () T@U)
(declare-fun |b64#0@0| () (_ BitVec 64))
(declare-fun $Heap@10 () T@U)
(declare-fun |suffix##11@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@6 () T@U)
(declare-fun |call1formal@x#0@0@@10| () T@U)
(declare-fun |b100#0@0| () (_ BitVec 100))
(declare-fun $Heap@11 () T@U)
(declare-fun |nt2#0@0| () Int)
(declare-fun |nt3#0@0| () Int)
(declare-fun |nt4#0@0| () Int)
(declare-fun |nt5#0@0| () Int)
(declare-fun |suffix##12@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@7 () T@U)
(declare-fun |call1formal@x#0@0@@11| () T@U)
(declare-fun |nt0#0@0| () Int)
(declare-fun $Heap@12 () T@U)
(declare-fun |suffix##13@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@8 () T@U)
(declare-fun |call1formal@x#0@0@@12| () T@U)
(declare-fun |nt1#0@0| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun |suffix##14@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@9 () T@U)
(declare-fun |call1formal@x#0@0@@13| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |suffix##15@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@10 () T@U)
(declare-fun |call1formal@x#0@0@@14| () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |nr0#0@0| () Real)
(declare-fun |nr1#0@0| () Real)
(declare-fun |suffix##16@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@11 () T@U)
(declare-fun |call1formal@x#0@0@@15| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |arr#0@0| () T@U)
(declare-fun |mat#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |suffix##17@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@12 () T@U)
(declare-fun |call1formal@x#0@0@@16| () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |suffix##18@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@13 () T@U)
(declare-fun |call1formal@x#0@0@@17| () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |suffix##19@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@14 () T@U)
(declare-fun |call1formal@x#0@0@@18| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |suffix##20@0| () T@U)
(declare-fun call0formal@DefaultValuedExpressions._default.Print$X@0@@15 () T@U)
(declare-fun |call1formal@x#0@0@@19| () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |Arr#0@0| () T@U)
(declare-fun |Mat#0@0| () T@U)
(declare-fun |ch#0| () T@U)
(declare-fun |b0#0| () Int)
(declare-fun |nt2#0| () Int)
(declare-fun |nt3#0| () Int)
(declare-fun |nt4#0| () Int)
(declare-fun |nt5#0| () Int)
(declare-fun |nr0#0| () Real)
(declare-fun |nr1#0| () Real)
(declare-fun |arr#0| () T@U)
(declare-fun |mat#0| () T@U)
(declare-fun |c#0@@7| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |Arr#0| () T@U)
(declare-fun |Mat#0| () T@U)
(declare-fun |x#0@@15| () T@U)
(declare-fun DefaultValuedExpressions._default.DoIt$X () T@U)
(declare-fun |st0#0| () T@U)
(declare-fun |st1#0| () T@U)
(declare-fun |ms#0| () T@U)
(declare-fun |sq#0| () T@U)
(declare-fun |m0#0| () T@U)
(declare-fun |m1#0| () T@U)
(declare-fun |stream#0| () T@U)
(declare-fun |pstream#0| () T@U)
(declare-fun |color#0| () T@U)
(declare-fun |pc#0| () T@U)
(declare-fun |cell#0| () T@U)
(declare-fun |tup0#0| () T@U)
(declare-fun |tup2#0| () T@U)
(declare-fun |tup3#0| () T@U)
(declare-fun |f0#0| () T@U)
(declare-fun |f1#0| () T@U)
(declare-fun |s1#0| () Int)
(declare-fun |s2#0| () Int)
(declare-fun |s3#0| () Int)
(declare-fun |s4#0| () Int)
(declare-fun |s5#0| () Int)
(declare-fun |t0#0| () Int)
(declare-fun |t1#0| () Int)
(declare-fun |t2#0| () Int)
(declare-fun |t3#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$DefaultValuedExpressions.__default.DoIt)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) ($Is charType |ch#0@0| TChar)) (=> (and (and (and (and (and (= |suffix##0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |call1formal@x#0@0| ($Box intType (int_2_U |i#0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap $Heap@0)) (and (= |suffix##1@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |call1formal@x#0@0@@0| ($Box realType (real_2_U |r#0@0|)))))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (= |suffix##2@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |call1formal@x#0@0@@1| ($Box boolType (bool_2_U |b#0@0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))))) (and (and (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |suffix##3@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |call1formal@x#0@0@@2| ($Box charType |ch#0@0|)))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (and (and (= 0 |b0#0@0|) (= |suffix##4@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0 (TBitvector 0)) (= |call1formal@x#0@0@@3| ($Box intType (int_2_U |b0#0@0|))))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12))
)))))) (=> (and (and (and (and (and (and ($HeapSucc $Heap@3 $Heap@4) (= |suffix##5@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@0 (TBitvector 1)) (= |call1formal@x#0@0@@4| ($Box bv1Type (bv1_2_U |b1#0@0|))))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@13)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13))
)))) (and (and (and ($HeapSucc $Heap@4 $Heap@5) (= |suffix##6@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@1 (TBitvector 8)) (= |call1formal@x#0@0@@5| ($Box bv8Type (bv8_2_U |b8#0@0|))))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@14))
))))) (and (and (and (and ($HeapSucc $Heap@5 $Heap@6) (= |suffix##7@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@2 (TBitvector 16)) (= |call1formal@x#0@0@@6| ($Box bv16Type (bv16_2_U |b16#0@0|))))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@15)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@15))
)))) (and (and (and ($HeapSucc $Heap@6 $Heap@7) (= |suffix##8@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@3 (TBitvector 32)) (= |call1formal@x#0@0@@7| ($Box bv32Type (bv32_2_U |b32#0@0|))))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@16)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@16))
)))))) (and (and (and (and (and ($HeapSucc $Heap@7 $Heap@8) (= |suffix##9@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@4 (TBitvector 53)) (= |call1formal@x#0@0@@8| ($Box bv53Type (bv53_2_U |b53#0@0|))))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@17)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@17))
)))) (and (and (and ($HeapSucc $Heap@8 $Heap@9) (= |suffix##10@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@5 (TBitvector 64)) (= |call1formal@x#0@0@@9| ($Box bv64Type (bv64_2_U |b64#0@0|))))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@18)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@18))
))))) (and (and (and (and ($HeapSucc $Heap@9 $Heap@10) (= |suffix##11@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@6 (TBitvector 100)) (= |call1formal@x#0@0@@10| ($Box bv100Type (bv100_2_U |b100#0@0|))))) (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@19)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@19))
)))) (and (and (and ($HeapSucc $Heap@10 $Heap@11) (U_2_bool (Lit boolType (bool_2_U true)))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= (Mod |nt2#0@0| (LitInt 2)) (LitInt 0)))) (and (and (<= (LitInt 0) |nt3#0@0|) (< |nt3#0@0| 500)) (= (Mod |nt4#0@0| (LitInt 2)) (LitInt 1))))))) (=> (and (and (and (and (and (and (and (<= (LitInt 0) |nt5#0@0|) (< |nt5#0@0| 500)) (= (Mod |nt5#0@0| (LitInt 2)) (LitInt 1))) (= |suffix##12@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@7 Tclass.DefaultValuedExpressions.NT0) (= |call1formal@x#0@0@@11| ($Box intType (int_2_U |nt0#0@0|))))) (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@20)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@20))
))) (and (and ($HeapSucc $Heap@11 $Heap@12) (= |suffix##13@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@8 Tclass.DefaultValuedExpressions.NT1) (= |call1formal@x#0@0@@12| ($Box intType (int_2_U |nt1#0@0|))))))) (and (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@21)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@21))
))) (and (and ($HeapSucc $Heap@12 $Heap@13) (= |suffix##14@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@9 Tclass.DefaultValuedExpressions.NT2) (= |call1formal@x#0@0@@13| ($Box intType (int_2_U |nt2#0@0|)))))) (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@22)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@22))
))) (and ($HeapSucc $Heap@13 $Heap@14) (= |suffix##15@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))))) (and (and (and (and (and (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@10 Tclass.DefaultValuedExpressions.NT3) (= |call1formal@x#0@0@@14| ($Box intType (int_2_U |nt3#0@0|)))) (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15))) (and (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@23)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@23))
)) ($HeapSucc $Heap@14 $Heap@15)) (and (<= (LitReal 0.0) |nr0#0@0|) (<= |nr0#0@0| (LitReal 100.0))))) (and (and (and (<= (LitReal 32.0) |nr1#0@0|) (<= |nr1#0@0| (LitReal 212.0))) (= |suffix##16@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@11 Tclass.DefaultValuedExpressions.NR0) (= |call1formal@x#0@0@@15| ($Box realType (real_2_U |nr0#0@0|)))) (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16))))) (and (and (and (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@24)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@24))
)) ($HeapSucc $Heap@15 $Heap@16)) (and ($Is refType |arr#0@0| (Tclass._System.array? TInt)) ($IsAlloc refType |arr#0@0| (Tclass._System.array? TInt) $Heap@16))) (and (and ($Is refType |mat#0@0| (Tclass._System.array3? TInt)) ($IsAlloc refType |mat#0@0| (Tclass._System.array3? TInt) $Heap@16)) (and ($Is refType |c#0@0| (Tclass.DefaultValuedExpressions.Class? TInt TInt)) ($IsAlloc refType |c#0@0| (Tclass.DefaultValuedExpressions.Class? TInt TInt) $Heap@16)))) (and (and (and ($Is refType |t#0@0| (Tclass.DefaultValuedExpressions.Trait? TInt TInt)) ($IsAlloc refType |t#0@0| (Tclass.DefaultValuedExpressions.Trait? TInt TInt) $Heap@16)) (= |suffix##17@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@12 (Tclass._System.array? TInt)) (= |call1formal@x#0@0@@16| ($Box refType |arr#0@0|)))))) (and (and (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@25)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@25))
))) (and (and ($HeapSucc $Heap@16 $Heap@17) (= |suffix##18@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@13 (Tclass._System.array3? TInt)) (= |call1formal@x#0@0@@17| ($Box refType |mat#0@0|))))) (and (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@26)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@26))
))) (and (and ($HeapSucc $Heap@17 $Heap@18) (= |suffix##19@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@14 (Tclass.DefaultValuedExpressions.Class? TInt TInt)) (= |call1formal@x#0@0@@18| ($Box refType |c#0@0|)))))) (and (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@27)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@27))
))) (and (and ($HeapSucc $Heap@18 $Heap@19) (= |suffix##20@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and (= call0formal@DefaultValuedExpressions._default.Print$X@0@@15 (Tclass.DefaultValuedExpressions.Trait? TInt TInt)) (= |call1formal@x#0@0@@19| ($Box refType |t#0@0|))))) (and (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@28)))
 :qid |MoreAutoInitdfy.354:10|
 :skolemid |3819|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@28))
)) ($HeapSucc $Heap@19 $Heap@20))) (and (and ($Is refType |Arr#0@0| (Tclass._System.array TInt)) ($IsAlloc refType |Arr#0@0| (Tclass._System.array TInt) $Heap@20)) (and ($Is refType |Mat#0@0| (Tclass._System.array3 TInt)) ($IsAlloc refType |Mat#0@0| (Tclass._System.array3 TInt) $Heap@20)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |Arr#0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |Mat#0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |Mat#0@0| null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= |Mat#0@0| null)) (not true))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is charType |ch#0| TChar) true)) (=> (and (and (and (and (= 0 |b0#0|) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true)) (and (and (U_2_bool (Lit boolType (bool_2_U true))) true) (and (= (Mod |nt2#0| (LitInt 2)) (LitInt 0)) true))) (and (and (and (<= (LitInt 0) |nt3#0|) (< |nt3#0| 500)) true) (and (= (Mod |nt4#0| (LitInt 2)) (LitInt 1)) true))) (=> (and (and (and (and (and (<= (LitInt 0) |nt5#0|) (< |nt5#0| 500)) (= (Mod |nt5#0| (LitInt 2)) (LitInt 1))) true) (and (and (and (<= (LitReal 0.0) |nr0#0|) (<= |nr0#0| (LitReal 100.0))) true) (and (and (<= (LitReal 32.0) |nr1#0|) (<= |nr1#0| (LitReal 212.0))) true))) (and (and (and (and ($Is refType |arr#0| (Tclass._System.array? TInt)) ($IsAlloc refType |arr#0| (Tclass._System.array? TInt) $Heap)) true) (and (and ($Is refType |mat#0| (Tclass._System.array3? TInt)) ($IsAlloc refType |mat#0| (Tclass._System.array3? TInt) $Heap)) true)) (and (and (and ($Is refType |c#0@@7| (Tclass.DefaultValuedExpressions.Class? TInt TInt)) ($IsAlloc refType |c#0@@7| (Tclass.DefaultValuedExpressions.Class? TInt TInt) $Heap)) true) (and (and ($Is refType |t#0| (Tclass.DefaultValuedExpressions.Trait? TInt TInt)) ($IsAlloc refType |t#0| (Tclass.DefaultValuedExpressions.Trait? TInt TInt) $Heap)) true)))) (=> (and (and (and (and (and (and (and ($Is refType |Arr#0| (Tclass._System.array TInt)) ($IsAlloc refType |Arr#0| (Tclass._System.array TInt) $Heap)) true) (and (and ($Is refType |Mat#0| (Tclass._System.array3 TInt)) ($IsAlloc refType |Mat#0| (Tclass._System.array3 TInt) $Heap)) true)) (and (and (and ($IsBox |x#0@@15| DefaultValuedExpressions._default.DoIt$X) ($IsAllocBox |x#0@@15| DefaultValuedExpressions._default.DoIt$X $Heap)) true) (and (and ($Is SetType |st0#0| (TSet TInt)) ($IsAlloc SetType |st0#0| (TSet TInt) $Heap)) true))) (and (and (and (and ($Is (MapType0Type BoxType boolType) |st1#0| (TISet TInt)) ($IsAlloc (MapType0Type BoxType boolType) |st1#0| (TISet TInt) $Heap)) true) (and (and ($Is MultiSetType |ms#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms#0| (TMultiSet TInt) $Heap)) true)) (and (and (and ($Is SeqType |sq#0| (TSeq TInt)) ($IsAlloc SeqType |sq#0| (TSeq TInt) $Heap)) true) (and (and ($Is MapType |m0#0| (TMap TInt TInt)) ($IsAlloc MapType |m0#0| (TMap TInt TInt) $Heap)) true)))) (and (and (and (and (and ($Is IMapType |m1#0| (TIMap TInt TInt)) ($IsAlloc IMapType |m1#0| (TIMap TInt TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |stream#0| (Tclass.DefaultValuedExpressions.Stream TInt)) ($IsAlloc DatatypeTypeType |stream#0| (Tclass.DefaultValuedExpressions.Stream TInt) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |pstream#0| (Tclass.DefaultValuedExpressions.PossiblyFiniteStream TInt)) ($IsAlloc DatatypeTypeType |pstream#0| (Tclass.DefaultValuedExpressions.PossiblyFiniteStream TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |color#0| Tclass.DefaultValuedExpressions.Color) ($IsAlloc DatatypeTypeType |color#0| Tclass.DefaultValuedExpressions.Color $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |pc#0| (Tclass.DefaultValuedExpressions.PossibleCell (Tclass.DefaultValuedExpressions.Class TInt TInt) TInt)) ($IsAlloc DatatypeTypeType |pc#0| (Tclass.DefaultValuedExpressions.PossibleCell (Tclass.DefaultValuedExpressions.Class TInt TInt) TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |cell#0| (Tclass.DefaultValuedExpressions.Cell TInt (Tclass.DefaultValuedExpressions.Class TInt TInt))) ($IsAlloc DatatypeTypeType |cell#0| (Tclass.DefaultValuedExpressions.Cell TInt (Tclass.DefaultValuedExpressions.Class TInt TInt)) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |tup0#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |tup0#0| Tclass._System.Tuple0 $Heap)) true) (and (and ($Is DatatypeTypeType |tup2#0| (Tclass._System.Tuple2 TInt TReal)) ($IsAlloc DatatypeTypeType |tup2#0| (Tclass._System.Tuple2 TInt TReal) $Heap)) true))))) (and (and (and (and (and (and ($Is DatatypeTypeType |tup3#0| (Tclass._System.Tuple3 Tclass.DefaultValuedExpressions.Color (Tclass._System.Tuple2 TInt TReal) Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType |tup3#0| (Tclass._System.Tuple3 Tclass.DefaultValuedExpressions.Color (Tclass._System.Tuple2 TInt TReal) Tclass._System.Tuple0) $Heap)) true) (and (and ($Is HandleTypeType |f0#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f0#0| (Tclass._System.___hFunc1 TInt TInt) $Heap)) true)) (and (and (and ($Is HandleTypeType |f1#0| (Tclass._System.___hPartialFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f1#0| (Tclass._System.___hPartialFunc1 TInt TInt) $Heap)) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true))) (and (and (and (and (<= (LitInt 0) |s1#0|) (< |s1#0| 10)) true) (and (and (<= (LitInt 0) |s2#0|) (< |s2#0| 10)) true)) (and (and (and (<= (LitInt 2) |s3#0|) (< |s3#0| 10)) true) (and (and (<= (LitInt 2) |s4#0|) (< |s4#0| 10)) true)))) (and (and (and (and (and (<= (LitInt 2) |s5#0|) (< |s5#0| 10)) (= (Mod |s5#0| (LitInt 5)) (LitInt 0))) true) (and (= (Mod |t0#0| (LitInt 5)) (LitInt 0)) true)) (and (and (and (= (Mod |t1#0| (LitInt 5)) (LitInt 1)) true) (and (<= (ite (let ((|m#0| (Lit MapType |Map#Empty|)))
(|Map#Equal| |m#0| |Map#Empty|)) 0 8) |t2#0|) true)) (and (and (<= (ite (let ((|m#1| (Lit MapType |Map#Empty|)))
(|Map#Equal| |m#1| |Map#Empty|)) 8 0) |t3#0|) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2))))))) anon0_correct))))))
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
