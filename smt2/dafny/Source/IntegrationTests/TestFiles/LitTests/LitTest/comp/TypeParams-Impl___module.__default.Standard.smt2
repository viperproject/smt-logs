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
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._module.Color () T@U)
(declare-fun Tagclass._module.Six () T@U)
(declare-fun Tagclass._module.Even () T@U)
(declare-fun Tagclass._module.DtZ () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun Tagclass._module.ReallyJustANullableMyClass () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$array3 () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun tytagFamily$Color () T@U)
(declare-fun tytagFamily$Six () T@U)
(declare-fun tytagFamily$Even () T@U)
(declare-fun tytagFamily$DtZ () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$ReallyJustANullableMyClass () T@U)
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
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
(declare-fun TBitvector (Int) T@U)
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv12Type () T@T)
(declare-fun bv12_2_U ((_ BitVec 12)) T@U)
(declare-fun U_2_bv12 (T@U) (_ BitVec 12))
(declare-fun bv20Type () T@T)
(declare-fun bv20_2_U ((_ BitVec 20)) T@U)
(declare-fun U_2_bv20 (T@U) (_ BitVec 20))
(declare-fun Tclass._module.Six () T@U)
(declare-fun Tclass._module.Even () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun Tclass._System.array3? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun Tclass._module.ReallyJustANullableMyClass () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._module.DtZ (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._module.Color () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |ISet#Empty| () T@U)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun Tclass._module.DtZ_0 (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal TagSet TagISet TagMultiSet TagSeq TagMap TagIMap alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.array3? Tagclass._System.array3 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._module.Color Tagclass._module.Six Tagclass._module.Even Tagclass._module.DtZ Tagclass._module.MyClass? Tagclass._module.ReallyJustANullableMyClass Tagclass._module.MyClass tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_tuple#2| tytagFamily$array3 |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| tytagFamily$Color tytagFamily$Six tytagFamily$Even tytagFamily$DtZ tytagFamily$MyClass tytagFamily$ReallyJustANullableMyClass)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |447|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((v T@U) (h@@0 T@U) ) (! ($IsAlloc intType v (TBitvector 0) h@@0)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h@@0))
)))
(assert  (and (and (= (Ctor bv7Type) 8) (forall ((arg0@@5 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@5))
))) (forall ((x@@2 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@2)) x@@2)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv7Type v@@0 (TBitvector 7) heap)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( ($IsAlloc bv7Type v@@0 (TBitvector 7) heap))
)))
(assert  (and (and (= (Ctor bv12Type) 9) (forall ((arg0@@6 (_ BitVec 12)) ) (! (= (U_2_bv12 (bv12_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv12|
 :pattern ( (bv12_2_U arg0@@6))
))) (forall ((x@@3 T@U) ) (! (= (bv12_2_U (U_2_bv12 x@@3)) x@@3)
 :qid |cast:U_2_bv12|
 :pattern ( (U_2_bv12 x@@3))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv12Type v@@1 (TBitvector 12) heap@@0)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv12Type v@@1 (TBitvector 12) heap@@0))
)))
(assert  (and (and (= (Ctor bv20Type) 10) (forall ((arg0@@7 (_ BitVec 20)) ) (! (= (U_2_bv20 (bv20_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv20|
 :pattern ( (bv20_2_U arg0@@7))
))) (forall ((x@@4 T@U) ) (! (= (bv20_2_U (U_2_bv20 x@@4)) x@@4)
 :qid |cast:U_2_bv20|
 :pattern ( (U_2_bv20 x@@4))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv20Type v@@2 (TBitvector 20) heap@@1)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc bv20Type v@@2 (TBitvector 20) heap@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.Six $h)
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.Six $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.Even $h@@0)
 :qid |unknown.0:0|
 :skolemid |749|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.Even $h@@0))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@3 (TBitvector 0)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is bv7Type v@@4 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($Is bv7Type v@@4 (TBitvector 7)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is bv12Type v@@5 (TBitvector 12))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv12Type v@@5 (TBitvector 12)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is bv20Type v@@6 (TBitvector 20))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is bv20Type v@@6 (TBitvector 20)))
)))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@1) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@1))
 :qid |unknown.0:0|
 :skolemid |377|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h@@1))
)))
(assert (forall ((|#$R@@5| T@U) (|f#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R@@5|) $h@@2) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R@@5|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R@@5|) $h@@2))
)))
(assert (forall ((_System.array3$arg T@U) (|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg) $h@@3) ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg) $h@@3))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg) $h@@3))
)))
(assert (= (Ctor DatatypeTypeType) 11))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 12))
(assert (forall ((v@@7 T@U) (t0@@1 T@U) ) (!  (=> ($Is MultiSetType v@@7 (TMultiSet t0@@1)) ($IsGoodMultiSet v@@7))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v@@7 (TMultiSet t0@@1)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@6| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@6|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@6|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@6|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@7| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@7|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@7|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@7|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@8| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@8|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@9| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@9|)))
)))
(assert (forall ((f@@0 T@U) (t0@@2 T@U) (t1@@0 T@U) (u0@@0 T@U) (u1@@0 T@U) ) (!  (=> (and (and ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@2 t1@@0)) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u0@@0) ($IsBox bx@@1 t0@@2))
 :qid |unknown.0:0|
 :skolemid |401|
 :pattern ( ($IsBox bx@@1 u0@@0))
 :pattern ( ($IsBox bx@@1 t0@@2))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t1@@0) ($IsBox bx@@2 u1@@0))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($IsBox bx@@2 t1@@0))
 :pattern ( ($IsBox bx@@2 u1@@0))
))) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@0 u1@@0)))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@2 t1@@0)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@0 u1@@0)))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@4) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.MyClass $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.MyClass? $h@@5))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.MyClass $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.MyClass? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.ReallyJustANullableMyClass $h@@6) ($IsAlloc refType |c#0@@3| Tclass._module.MyClass? $h@@6))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.ReallyJustANullableMyClass $h@@6))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((_System.array$arg@@0 T@U) ($o@@0 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@0) $h@@7)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@0) $h@@7))
)))
(assert (forall ((_System.array3$arg@@0 T@U) ($o@@1 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array3? _System.array3$arg@@0) $h@@8)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array3? _System.array3$arg@@0) $h@@8))
)))
(assert (forall (($o@@2 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@9)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@9))
)))
(assert (forall (($o@@3 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.MyClass? $h@@10)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.MyClass? $h@@10))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@8 (TISet t0@@3)) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@8 bx@@3)) ($IsBox bx@@3 t0@@3))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |48|
 :pattern ( (MapType0Select BoxType boolType v@@8 bx@@3))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |49|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@8 (TISet t0@@3)))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((t0@@4 T@U) (t1@@1 T@U) (heap@@2 T@U) (f@@1 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) (and ($IsBox bx0 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@4 t1@@1 $OneHeap f@@1 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@4 t1@@1 heap@@2 f@@1 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Reads1 t0@@4 t1@@1 $OneHeap f@@1 bx0) ($IsGoodHeap heap@@2))
 :pattern ( (Reads1 t0@@4 t1@@1 heap@@2 f@@1 bx0))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@10| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@10|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@10|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0@@9|) ($IsBox |x1#0| |#$T1@@9|)) (|Set#Equal| (Reads2 |#$T0@@9| |#$T1@@9| |#$R@@10| $OneHeap |f#0@@0| |x0#0| |x1#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |603|
))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@10|)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@11)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@11) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@11))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@11))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((t0@@5 T@U) (heap@@3 T@U) (f@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@5))) (|Set#Equal| (Reads0 t0@@5 $OneHeap f@@2) |Set#Empty|)) (= (Requires0 t0@@5 $OneHeap f@@2) (Requires0 t0@@5 heap@@3 f@@2)))
 :qid |unknown.0:0|
 :skolemid |442|
 :pattern ( (Requires0 t0@@5 $OneHeap f@@2) ($IsGoodHeap heap@@3))
 :pattern ( (Requires0 t0@@5 heap@@3 f@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |462|
)))
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((t0@@6 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@6) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@2 h0 f@@3 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |389|
))) (= (Requires1 t0@@6 t1@@2 h0 f@@3 bx0@@0) (Requires1 t0@@6 t1@@2 h1 f@@3 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@6 t1@@2 h1 f@@3 bx0@@0))
)))
(assert (forall ((t0@@7 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@3 h1@@0 f@@4 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |391|
))) (= (Requires1 t0@@7 t1@@3 h0@@0 f@@4 bx0@@1) (Requires1 t0@@7 t1@@3 h1@@0 f@@4 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@7 t1@@3 h1@@0 f@@4 bx0@@1))
)))
(assert (= (Ctor SetType) 13))
(assert (forall ((v@@9 T@U) (t0@@8 T@U) ) (! (= ($Is SetType v@@9 (TSet t0@@8)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@9 bx@@4) ($IsBox bx@@4 t0@@8))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@9 bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@9 (TSet t0@@8)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@1))  (and ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@1)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@1)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((_System.array3$arg@@1 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@1))  (and ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@1)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3 _System.array3$arg@@1)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array3? _System.array3$arg@@1)))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._module.Six) (<= (U_2_int |x#0@@1|) (LitInt 6)))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( ($Is intType |x#0@@1| Tclass._module.Six))
)))
(assert (forall ((v@@10 T@U) (t T@U) (h@@2 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@10) t h@@2) ($IsAlloc T@@1 v@@10 t h@@2))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@10) t h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@3 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@3) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@5 t@@0 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@11 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@4 k@@1) (=> ($IsAlloc T@@2 v@@11 t@@1 h@@4) ($IsAlloc T@@2 v@@11 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc T@@2 v@@11 t@@1 h@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@9) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@9 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@4 h0@@1 f@@5 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |385|
))) (= (Reads1 t0@@9 t1@@4 h0@@1 f@@5 bx0@@2) (Reads1 t0@@9 t1@@4 h1@@1 f@@5 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@9 t1@@4 h1@@1 f@@5 bx0@@2))
)))
(assert (forall ((t0@@10 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@10) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@10 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@5 h1@@2 f@@6 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |387|
))) (= (Reads1 t0@@10 t1@@5 h0@@2 f@@6 bx0@@3) (Reads1 t0@@10 t1@@5 h1@@2 f@@6 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@10 t1@@5 h1@@2 f@@6 bx0@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@11) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@11 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@11 t1@@6 h0@@3 f@@7 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |393|
))) (= (Apply1 t0@@11 t1@@6 h0@@3 f@@7 bx0@@4) (Apply1 t0@@11 t1@@6 h1@@3 f@@7 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@11 t1@@6 h1@@3 f@@7 bx0@@4))
)))
(assert (forall ((t0@@12 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@12) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@12 t1@@7 h1@@4 f@@8 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |395|
))) (= (Apply1 t0@@12 t1@@7 h0@@4 f@@8 bx0@@5) (Apply1 t0@@12 t1@@7 h1@@4 f@@8 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@12 t1@@7 h1@@4 f@@8 bx0@@5))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@2)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@2)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@3)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |373|
 :pattern ( (Tclass._System.array _System.array$arg@@3))
)))
(assert (forall ((|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@11|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@11|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |423|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@11|))
)))
(assert (forall ((|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@12|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@12|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |450|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@12|))
)))
(assert (forall ((_System.array3$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@2)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@2)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@2))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@3)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@3)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@3))
)))
(assert (forall ((_module.DtZ$G T@U) ) (!  (and (= (Tag (Tclass._module.DtZ _module.DtZ$G)) Tagclass._module.DtZ) (= (TagFamily (Tclass._module.DtZ _module.DtZ$G)) tytagFamily$DtZ))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Tclass._module.DtZ _module.DtZ$G))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@13| T@U) (|f#0@@1| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@13|) $h@@12) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@13|) $h@@12))
 :qid |unknown.0:0|
 :skolemid |415|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@13|) $h@@12))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass._module.Color)))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@8 Tclass._module.Color))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Six) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) Tclass._module.Six)))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsBox bx@@9 Tclass._module.Six))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Even) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) Tclass._module.Even)))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( ($IsBox bx@@10 Tclass._module.Even))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.MyClass?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@11 Tclass._module.MyClass?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.ReallyJustANullableMyClass) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.ReallyJustANullableMyClass)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsBox bx@@12 Tclass._module.ReallyJustANullableMyClass))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.MyClass) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.MyClass)))
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( ($IsBox bx@@13 Tclass._module.MyClass))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((_System.array3$arg@@4 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array3? _System.array3$arg@@4))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array3? _System.array3$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.MyClass)  (and ($Is refType |c#0@@7| Tclass._module.MyClass?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.MyClass?))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@12 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@12))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@8 T@U) (t2 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@13 t1@@8 t2) h@@5) (forall ((bx0@@6 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@6 t0@@13) ($IsAllocBox bx0@@6 t0@@13 h@@5)) (and ($IsBox bx1 t1@@8) ($IsAllocBox bx1 t1@@8 h@@5))) (Requires2 t0@@13 t1@@8 t2 h@@5 f@@9 bx0@@6 bx1)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads2 t0@@13 t1@@8 t2 h@@5 f@@9 bx0@@6 bx1) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (|Set#IsMember| (Reads2 t0@@13 t1@@8 t2 h@@5 f@@9 bx0@@6 bx1) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (Apply2 t0@@13 t1@@8 t2 h@@5 f@@9 bx0@@6 bx1))
 :pattern ( (Reads2 t0@@13 t1@@8 t2 h@@5 f@@9 bx0@@6 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@13 t1@@8 t2) h@@5))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) (t1@@9 T@U) (h@@6 T@U) ) (!  (=> (and ($IsGoodHeap h@@6) ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@14 t1@@9) h@@6)) (forall ((bx0@@7 T@U) ) (!  (=> (and ($IsAllocBox bx0@@7 t0@@14 h@@6) (Requires1 t0@@14 t1@@9 h@@6 f@@10 bx0@@7)) ($IsAllocBox (Apply1 t0@@14 t1@@9 h@@6 f@@10 bx0@@7) t1@@9 h@@6))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( (Apply1 t0@@14 t1@@9 h@@6 f@@10 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |408|
 :pattern ( ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@14 t1@@9) h@@6))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._module.Even) (= (Mod (U_2_int |x#0@@2|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( ($Is intType |x#0@@2| Tclass._module.Even))
)))
(assert (forall ((f@@11 T@U) (t0@@15 T@U) (t1@@10 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@15 t1@@10 t2@@0)) (forall ((h@@7 T@U) (bx0@@8 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) (and ($IsBox bx0@@8 t0@@15) ($IsBox bx1@@0 t1@@10))) (Requires2 t0@@15 t1@@10 t2@@0 h@@7 f@@11 bx0@@8 bx1@@0)) ($IsBox (Apply2 t0@@15 t1@@10 t2@@0 h@@7 f@@11 bx0@@8 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |587|
 :pattern ( (Apply2 t0@@15 t1@@10 t2@@0 h@@7 f@@11 bx0@@8 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@15 t1@@10 t2@@0)))
)))
(assert (forall ((v@@13 T@U) (t0@@16 T@U) (h@@8 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@13 (TISet t0@@16) h@@8) (forall ((bx@@14 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@13 bx@@14)) ($IsAllocBox bx@@14 t0@@16 h@@8))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@13 bx@@14))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@13 (TISet t0@@16) h@@8))
)))
(assert (forall ((t0@@17 T@U) (heap@@4 T@U) (f@@12 T@U) ) (!  (=> (and ($IsGoodHeap heap@@4) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@17))) (= (|Set#Equal| (Reads0 t0@@17 $OneHeap f@@12) |Set#Empty|) (|Set#Equal| (Reads0 t0@@17 heap@@4 f@@12) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( (Reads0 t0@@17 $OneHeap f@@12) ($IsGoodHeap heap@@4))
 :pattern ( (Reads0 t0@@17 heap@@4 f@@12))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@14 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@14)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@14 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@14))
)))
(assert (= (Ctor IMapType) 14))
(assert (forall ((v@@15 T@U) (t0@@18 T@U) (t1@@11 T@U) (h@@9 T@U) ) (! (= ($IsAlloc IMapType v@@15 (TIMap t0@@18 t1@@11) h@@9) (forall ((bx@@15 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@15) bx@@15)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@15) bx@@15) t1@@11 h@@9) ($IsAllocBox bx@@15 t0@@18 h@@9)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@15) bx@@15))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@15) bx@@15))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@15 (TIMap t0@@18 t1@@11) h@@9))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((v@@16 T@U) (t0@@19 T@U) ) (! (= ($Is MultiSetType v@@16 (TMultiSet t0@@19)) (forall ((bx@@16 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@16 bx@@16)) ($IsBox bx@@16 t0@@19))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@16 bx@@16))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@16 (TMultiSet t0@@19)))
)))
(assert (forall ((t0@@20 T@U) (t1@@12 T@U) (t2@@1 T@U) (heap@@5 T@U) (f@@13 T@U) (bx0@@9 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@5) (and (and ($IsBox bx0@@9 t0@@20) ($IsBox bx1@@1 t1@@12)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@20 t1@@12 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@20 t1@@12 t2@@1 $OneHeap f@@13 bx0@@9 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@20 t1@@12 t2@@1 heap@@5 f@@13 bx0@@9 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (Reads2 t0@@20 t1@@12 t2@@1 $OneHeap f@@13 bx0@@9 bx1@@1) ($IsGoodHeap heap@@5))
 :pattern ( (Reads2 t0@@20 t1@@12 t2@@1 heap@@5 f@@13 bx0@@9 bx1@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@14 T@U) (t0@@21 T@U) (t1@@13 T@U) ) (! (= ($Is HandleTypeType f@@14 (Tclass._System.___hFunc1 t0@@21 t1@@13)) (forall ((h@@10 T@U) (bx0@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@10) ($IsBox bx0@@10 t0@@21)) (Requires1 t0@@21 t1@@13 h@@10 f@@14 bx0@@10)) ($IsBox (Apply1 t0@@21 t1@@13 h@@10 f@@14 bx0@@10) t1@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |399|
 :pattern ( (Apply1 t0@@21 t1@@13 h@@10 f@@14 bx0@@10))
)))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($Is HandleTypeType f@@14 (Tclass._System.___hFunc1 t0@@21 t1@@13)))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |309|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |310|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((f@@15 T@U) (t0@@22 T@U) (t1@@14 T@U) (t2@@2 T@U) (h@@11 T@U) ) (!  (=> (and ($IsGoodHeap h@@11) ($IsAlloc HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@22 t1@@14 t2@@2) h@@11)) (forall ((bx0@@11 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@11 t0@@22 h@@11) ($IsAllocBox bx1@@2 t1@@14 h@@11)) (Requires2 t0@@22 t1@@14 t2@@2 h@@11 f@@15 bx0@@11 bx1@@2)) ($IsAllocBox (Apply2 t0@@22 t1@@14 t2@@2 h@@11 f@@15 bx0@@11 bx1@@2) t2@@2 h@@11))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (Apply2 t0@@22 t1@@14 t2@@2 h@@11 f@@15 bx0@@11 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAlloc HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@22 t1@@14 t2@@2) h@@11))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@3 T@U) (v@@17 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@17))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((t0@@23 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@16 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) ($Is HandleTypeType f@@16 (Tclass._System.___hFunc0 t0@@23))) (forall ((o@@7 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@23 h0@@5 f@@16) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@5 o@@7) fld@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@5 o@@7) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |433|
))) (= (Requires0 t0@@23 h0@@5 f@@16) (Requires0 t0@@23 h1@@5 f@@16)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires0 t0@@23 h1@@5 f@@16))
)))
(assert (forall ((t0@@24 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@17 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) ($Is HandleTypeType f@@17 (Tclass._System.___hFunc0 t0@@24))) (forall ((o@@8 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads0 t0@@24 h1@@6 f@@17) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@6 o@@8) fld@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@6 o@@8) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |435|
))) (= (Requires0 t0@@24 h0@@6 f@@17) (Requires0 t0@@24 h1@@6 f@@17)))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires0 t0@@24 h1@@6 f@@17))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 TInt) (and (= ($Box intType ($Unbox intType bx@@17)) bx@@17) ($Is intType ($Unbox intType bx@@17) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@17 TInt))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 TReal) (and (= ($Box realType ($Unbox realType bx@@18)) bx@@18) ($Is realType ($Unbox realType bx@@18) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@18 TReal))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 TBool) (and (= ($Box boolType ($Unbox boolType bx@@19)) bx@@19) ($Is boolType ($Unbox boolType bx@@19) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@19 TBool))
)))
(assert (forall ((v@@18 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@18) t@@2) ($Is T@@3 v@@18 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@18) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@20 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@20)) (<= (|MultiSet#Multiplicity| ms bx@@20) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@20))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@19 T@U) (t0@@25 T@U) (h@@12 T@U) ) (! (= ($IsAlloc SetType v@@19 (TSet t0@@25) h@@12) (forall ((bx@@21 T@U) ) (!  (=> (|Set#IsMember| v@@19 bx@@21) ($IsAllocBox bx@@21 t0@@25 h@@12))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@19 bx@@21))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@19 (TSet t0@@25) h@@12))
)))
(assert (forall ((o@@9 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@9) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@9))
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
(assert (forall ((t@@6 T@U) (u@@4 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@4)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@6 u@@4))
)))
(assert (forall ((t@@7 T@U) (u@@5 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@5)) u@@5)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@7 u@@5))
)))
(assert (forall ((t@@8 T@U) (u@@6 T@U) ) (! (= (Tag (TIMap t@@8 u@@6)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@8 u@@6))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@14| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@11| |#$R@@14|)) |#$T0@@11|)
 :qid |unknown.0:0|
 :skolemid |379|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@11| |#$R@@14|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@15| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@15|)) |#$R@@15|)
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@15|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@16| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@16|)) |#$T0@@13|)
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@16|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@17| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@14| |#$R@@17|)) |#$R@@17|)
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@14| |#$R@@17|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |475|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |477|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 15))
(assert (forall ((v@@20 T@U) (t0@@26 T@U) (h@@13 T@U) ) (! (= ($IsAlloc SeqType v@@20 (TSeq t0@@26) h@@13) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@20))) ($IsAllocBox (|Seq#Index| v@@20 i) t0@@26 h@@13))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@20 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@20 (TSeq t0@@26) h@@13))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
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
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TISet (TISet t@@11)) t@@11)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TISet t@@12)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@12))
)))
(assert (forall ((t@@13 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@13)) t@@13)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@13))
)))
(assert (forall ((t@@14 T@U) ) (! (= (Tag (TMultiSet t@@14)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@14))
)))
(assert (forall ((t@@15 T@U) ) (! (= (Inv0_TSeq (TSeq t@@15)) t@@15)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@15))
)))
(assert (forall ((t@@16 T@U) ) (! (= (Tag (TSeq t@@16)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@16))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@5)) _System.array$arg@@5)
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((|#$R@@18| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@18|)) |#$R@@18|)
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@18|))
)))
(assert (forall ((|#$R@@19| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@19|)) |#$R@@19|)
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@19|))
)))
(assert (forall ((_System.array3$arg@@5 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@5)) _System.array3$arg@@5)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@6)) _System.array3$arg@@6)
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((_module.DtZ$G@@0 T@U) ) (! (= (Tclass._module.DtZ_0 (Tclass._module.DtZ _module.DtZ$G@@0)) _module.DtZ$G@@0)
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (Tclass._module.DtZ _module.DtZ$G@@0))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (= (Ctor MapType) 16))
(assert (forall ((v@@21 T@U) (t0@@27 T@U) (t1@@15 T@U) (h@@14 T@U) ) (! (= ($IsAlloc MapType v@@21 (TMap t0@@27 t1@@15) h@@14) (forall ((bx@@22 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@21) bx@@22) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@21) bx@@22) t1@@15 h@@14) ($IsAllocBox bx@@22 t0@@27 h@@14)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@21) bx@@22))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@21) bx@@22))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@21 (TMap t0@@27 t1@@15) h@@14))
)))
(assert (forall ((v@@22 T@U) (t0@@28 T@U) (t1@@16 T@U) ) (! (= ($Is IMapType v@@22 (TIMap t0@@28 t1@@16)) (forall ((bx@@23 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@22) bx@@23)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@22) bx@@23) t1@@16) ($IsBox bx@@23 t0@@28)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@22) bx@@23))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@22) bx@@23))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@22 (TIMap t0@@28 t1@@16)))
)))
(assert (forall ((t0@@29 T@U) (t1@@17 T@U) (t2@@3 T@U) (heap@@6 T@U) (f@@18 T@U) (bx0@@12 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@6) (and (and ($IsBox bx0@@12 t0@@29) ($IsBox bx1@@3 t1@@17)) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc2 t0@@29 t1@@17 t2@@3)))) (|Set#Equal| (Reads2 t0@@29 t1@@17 t2@@3 $OneHeap f@@18 bx0@@12 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@29 t1@@17 t2@@3 $OneHeap f@@18 bx0@@12 bx1@@3) (Requires2 t0@@29 t1@@17 t2@@3 heap@@6 f@@18 bx0@@12 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (Requires2 t0@@29 t1@@17 t2@@3 $OneHeap f@@18 bx0@@12 bx1@@3) ($IsGoodHeap heap@@6))
 :pattern ( (Requires2 t0@@29 t1@@17 t2@@3 heap@@6 f@@18 bx0@@12 bx1@@3))
)))
(assert (forall ((t0@@30 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@19 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) ($Is HandleTypeType f@@19 (Tclass._System.___hFunc0 t0@@30))) (forall ((o@@10 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads0 t0@@30 h0@@7 f@@19) ($Box refType o@@10))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@7 o@@10) fld@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@7 o@@10) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |429|
))) (= (Reads0 t0@@30 h0@@7 f@@19) (Reads0 t0@@30 h1@@7 f@@19)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads0 t0@@30 h1@@7 f@@19))
)))
(assert (forall ((t0@@31 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@20 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc0 t0@@31))) (forall ((o@@11 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads0 t0@@31 h1@@8 f@@20) ($Box refType o@@11))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@8 o@@11) fld@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@8 o@@11) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |431|
))) (= (Reads0 t0@@31 h0@@8 f@@20) (Reads0 t0@@31 h1@@8 f@@20)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads0 t0@@31 h1@@8 f@@20))
)))
(assert (forall ((t0@@32 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@21 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc0 t0@@32))) (forall ((o@@12 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads0 t0@@32 h0@@9 f@@21) ($Box refType o@@12))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@9 o@@12) fld@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@9 o@@12) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |437|
))) (= (Apply0 t0@@32 h0@@9 f@@21) (Apply0 t0@@32 h1@@9 f@@21)))
 :qid |unknown.0:0|
 :skolemid |438|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply0 t0@@32 h1@@9 f@@21))
)))
(assert (forall ((t0@@33 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@22 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc0 t0@@33))) (forall ((o@@13 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads0 t0@@33 h1@@10 f@@22) ($Box refType o@@13))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@10 o@@13) fld@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@10 o@@13) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |439|
))) (= (Apply0 t0@@33 h0@@10 f@@22) (Apply0 t0@@33 h1@@10 f@@22)))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply0 t0@@33 h1@@10 f@@22))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |476|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |478|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((f@@23 T@U) (t0@@34 T@U) (t1@@18 T@U) (t2@@4 T@U) (u0@@1 T@U) (u1@@1 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 t0@@34 t1@@18 t2@@4)) (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 u0@@1) ($IsBox bx@@24 t0@@34))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsBox bx@@24 u0@@1))
 :pattern ( ($IsBox bx@@24 t0@@34))
))) (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 u1@@1) ($IsBox bx@@25 t1@@18))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@25 u1@@1))
 :pattern ( ($IsBox bx@@25 t1@@18))
))) (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 t2@@4) ($IsBox bx@@26 u2))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsBox bx@@26 t2@@4))
 :pattern ( ($IsBox bx@@26 u2))
))) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 t0@@34 t1@@18 t2@@4)) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2)))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$R@@20| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@20|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@15| |#$R@@20|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@15|) (|Set#Equal| (Reads1 |#$T0@@15| |#$R@@20| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |413|
))))
 :qid |unknown.0:0|
 :skolemid |414|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@20|)))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((u@@7 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
)))
(assert (forall ((f@@24 T@U) (t0@@35 T@U) (t1@@19 T@U) (h@@15 T@U) ) (!  (=> ($IsGoodHeap h@@15) (= ($IsAlloc HandleTypeType f@@24 (Tclass._System.___hFunc1 t0@@35 t1@@19) h@@15) (forall ((bx0@@13 T@U) ) (!  (=> (and (and ($IsBox bx0@@13 t0@@35) ($IsAllocBox bx0@@13 t0@@35 h@@15)) (Requires1 t0@@35 t1@@19 h@@15 f@@24 bx0@@13)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@35 t1@@19 h@@15 f@@24 bx0@@13) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@15 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (|Set#IsMember| (Reads1 t0@@35 t1@@19 h@@15 f@@24 bx0@@13) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Apply1 t0@@35 t1@@19 h@@15 f@@24 bx0@@13))
 :pattern ( (Reads1 t0@@35 t1@@19 h@@15 f@@24 bx0@@13))
))))
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( ($IsAlloc HandleTypeType f@@24 (Tclass._System.___hFunc1 t0@@35 t1@@19) h@@15))
)))
(assert (forall ((bx@@27 T@U) (s@@2 T@U) (t@@17 T@U) ) (!  (=> ($IsBox bx@@27 (TMap s@@2 t@@17)) (and (= ($Box MapType ($Unbox MapType bx@@27)) bx@@27) ($Is MapType ($Unbox MapType bx@@27) (TMap s@@2 t@@17))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@27 (TMap s@@2 t@@17)))
)))
(assert (forall ((bx@@28 T@U) (s@@3 T@U) (t@@18 T@U) ) (!  (=> ($IsBox bx@@28 (TIMap s@@3 t@@18)) (and (= ($Box IMapType ($Unbox IMapType bx@@28)) bx@@28) ($Is IMapType ($Unbox IMapType bx@@28) (TIMap s@@3 t@@18))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@28 (TIMap s@@3 t@@18)))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@21| T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@21|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@29)) bx@@29) ($Is HandleTypeType ($Unbox HandleTypeType bx@@29) (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@21|))))
 :qid |unknown.0:0|
 :skolemid |381|
 :pattern ( ($IsBox bx@@29 (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@21|)))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@22| T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@22|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@30)) bx@@30) ($Is HandleTypeType ($Unbox HandleTypeType bx@@30) (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@22|))))
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( ($IsBox bx@@30 (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@22|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@31)) bx@@31) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@31) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( ($IsBox bx@@31 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@14 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@14)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@14))
)))
(assert  (and (forall ((t0@@36 T@T) (t1@@20 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@36 t1@@20 t2@@5 (MapType1Store t0@@36 t1@@20 t2@@5 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@2 u1@@2 u2@@0 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@3 u1@@3 u2@@1 (MapType1Store u0@@3 u1@@3 u2@@1 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@3 u1@@3 u2@@1 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1005|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$T1@@10| T@U) (|#$R@@23| T@U) (|f#0@@3| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@18| |#$T1@@10| |#$R@@23|) $h@@13) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc2 |#$T0@@18| |#$T1@@10| |#$R@@23|) $h@@13))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@18| |#$T1@@10| |#$R@@23|) $h@@13))
)))
(assert (forall ((x@@10 Int) (y Int) ) (! (= (Mod x@@10 y) (mod x@@10 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@10 y))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@24| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@24|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@24|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@24|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@25| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@25|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@25|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@25|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((t0@@37 T@U) (t1@@21 T@U) (heap@@7 T@U) (f@@25 T@U) (bx0@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@7) (and ($IsBox bx0@@14 t0@@37) ($Is HandleTypeType f@@25 (Tclass._System.___hFunc1 t0@@37 t1@@21)))) (|Set#Equal| (Reads1 t0@@37 t1@@21 $OneHeap f@@25 bx0@@14) |Set#Empty|)) (= (Requires1 t0@@37 t1@@21 $OneHeap f@@25 bx0@@14) (Requires1 t0@@37 t1@@21 heap@@7 f@@25 bx0@@14)))
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Requires1 t0@@37 t1@@21 $OneHeap f@@25 bx0@@14) ($IsGoodHeap heap@@7))
 :pattern ( (Requires1 t0@@37 t1@@21 heap@@7 f@@25 bx0@@14))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@4 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@12) k@@4)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((v@@23 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@13) v@@23)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@13))
)))
(assert (forall ((m@@14 T@U) (item@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@14) item@@0)  (and (|Set#IsMember| (|Map#Domain| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@14) item@@0))
)))
(assert (forall ((m@@15 T@U) (v@@24 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@15) v@@24) (exists ((u@@8 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@15) u@@8) (= v@@24 (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@15) u@@8))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@15) v@@24))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((f@@26 T@U) (t0@@38 T@U) ) (! (= ($Is HandleTypeType f@@26 (Tclass._System.___hFunc0 t0@@38)) (forall ((h@@16 T@U) ) (!  (=> (and ($IsGoodHeap h@@16) (Requires0 t0@@38 h@@16 f@@26)) ($IsBox (Apply0 t0@@38 h@@16 f@@26) t0@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |443|
 :pattern ( (Apply0 t0@@38 h@@16 f@@26))
)))
 :qid |unknown.0:0|
 :skolemid |444|
 :pattern ( ($Is HandleTypeType f@@26 (Tclass._System.___hFunc0 t0@@38)))
)))
(assert (forall ((t0@@39 T@U) (t1@@22 T@U) (t2@@6 T@U) (h0@@11 T@U) (h1@@11 T@U) (f@@27 T@U) (bx0@@15 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@11 h1@@11) (and ($IsGoodHeap h0@@11) ($IsGoodHeap h1@@11))) (and (and ($IsBox bx0@@15 t0@@39) ($IsBox bx1@@4 t1@@22)) ($Is HandleTypeType f@@27 (Tclass._System.___hFunc2 t0@@39 t1@@22 t2@@6)))) (forall ((o@@15 T@U) (fld@@11 T@U) ) (!  (=> (and (or (not (= o@@15 null)) (not true)) (|Set#IsMember| (Reads2 t0@@39 t1@@22 t2@@6 h0@@11 f@@27 bx0@@15 bx1@@4) ($Box refType o@@15))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@11 o@@15) fld@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@11 o@@15) fld@@11)))
 :qid |unknown.0:0|
 :skolemid |577|
))) (= (Requires2 t0@@39 t1@@22 t2@@6 h0@@11 f@@27 bx0@@15 bx1@@4) (Requires2 t0@@39 t1@@22 t2@@6 h1@@11 f@@27 bx0@@15 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($HeapSucc h0@@11 h1@@11) (Requires2 t0@@39 t1@@22 t2@@6 h1@@11 f@@27 bx0@@15 bx1@@4))
)))
(assert (forall ((t0@@40 T@U) (t1@@23 T@U) (t2@@7 T@U) (h0@@12 T@U) (h1@@12 T@U) (f@@28 T@U) (bx0@@16 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@12 h1@@12) (and ($IsGoodHeap h0@@12) ($IsGoodHeap h1@@12))) (and (and ($IsBox bx0@@16 t0@@40) ($IsBox bx1@@5 t1@@23)) ($Is HandleTypeType f@@28 (Tclass._System.___hFunc2 t0@@40 t1@@23 t2@@7)))) (forall ((o@@16 T@U) (fld@@12 T@U) ) (!  (=> (and (or (not (= o@@16 null)) (not true)) (|Set#IsMember| (Reads2 t0@@40 t1@@23 t2@@7 h1@@12 f@@28 bx0@@16 bx1@@5) ($Box refType o@@16))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@12 o@@16) fld@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@12 o@@16) fld@@12)))
 :qid |unknown.0:0|
 :skolemid |579|
))) (= (Requires2 t0@@40 t1@@23 t2@@7 h0@@12 f@@28 bx0@@16 bx1@@5) (Requires2 t0@@40 t1@@23 t2@@7 h1@@12 f@@28 bx0@@16 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($HeapSucc h0@@12 h1@@12) (Requires2 t0@@40 t1@@23 t2@@7 h1@@12 f@@28 bx0@@16 bx1@@5))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@32)) bx@@32) ($Is intType ($Unbox intType bx@@32) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@32 (TBitvector 0)))
)))
(assert (forall ((bx@@33 T@U) (t@@19 T@U) ) (!  (=> ($IsBox bx@@33 (TSet t@@19)) (and (= ($Box SetType ($Unbox SetType bx@@33)) bx@@33) ($Is SetType ($Unbox SetType bx@@33) (TSet t@@19))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@33 (TSet t@@19)))
)))
(assert (forall ((bx@@34 T@U) (t@@20 T@U) ) (!  (=> ($IsBox bx@@34 (TISet t@@20)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@34)) bx@@34) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@34) (TISet t@@20))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@34 (TISet t@@20)))
)))
(assert (forall ((bx@@35 T@U) (t@@21 T@U) ) (!  (=> ($IsBox bx@@35 (TMultiSet t@@21)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@35)) bx@@35) ($Is MultiSetType ($Unbox MultiSetType bx@@35) (TMultiSet t@@21))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@35 (TMultiSet t@@21)))
)))
(assert (forall ((bx@@36 T@U) (t@@22 T@U) ) (!  (=> ($IsBox bx@@36 (TSeq t@@22)) (and (= ($Box SeqType ($Unbox SeqType bx@@36)) bx@@36) ($Is SeqType ($Unbox SeqType bx@@36) (TSeq t@@22))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@36 (TSeq t@@22)))
)))
(assert (forall ((_System.array$arg@@7 T@U) (bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 (Tclass._System.array? _System.array$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@37)) bx@@37) ($Is refType ($Unbox refType bx@@37) (Tclass._System.array? _System.array$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( ($IsBox bx@@37 (Tclass._System.array? _System.array$arg@@7)))
)))
(assert (forall ((_System.array$arg@@8 T@U) (bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 (Tclass._System.array _System.array$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@38)) bx@@38) ($Is refType ($Unbox refType bx@@38) (Tclass._System.array _System.array$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |375|
 :pattern ( ($IsBox bx@@38 (Tclass._System.array _System.array$arg@@8)))
)))
(assert (forall ((|#$R@@26| T@U) (bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 (Tclass._System.___hFunc0 |#$R@@26|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@39)) bx@@39) ($Is HandleTypeType ($Unbox HandleTypeType bx@@39) (Tclass._System.___hFunc0 |#$R@@26|))))
 :qid |unknown.0:0|
 :skolemid |425|
 :pattern ( ($IsBox bx@@39 (Tclass._System.___hFunc0 |#$R@@26|)))
)))
(assert (forall ((|#$R@@27| T@U) (bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@27|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@40)) bx@@40) ($Is HandleTypeType ($Unbox HandleTypeType bx@@40) (Tclass._System.___hPartialFunc0 |#$R@@27|))))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@27|)))
)))
(assert (forall ((_System.array3$arg@@7 T@U) (bx@@41 T@U) ) (!  (=> ($IsBox bx@@41 (Tclass._System.array3? _System.array3$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@41)) bx@@41) ($Is refType ($Unbox refType bx@@41) (Tclass._System.array3? _System.array3$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@41 (Tclass._System.array3? _System.array3$arg@@7)))
)))
(assert (forall ((_System.array3$arg@@8 T@U) (bx@@42 T@U) ) (!  (=> ($IsBox bx@@42 (Tclass._System.array3 _System.array3$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@42)) bx@@42) ($Is refType ($Unbox refType bx@@42) (Tclass._System.array3 _System.array3$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsBox bx@@42 (Tclass._System.array3 _System.array3$arg@@8)))
)))
(assert (forall ((_module.DtZ$G@@1 T@U) (bx@@43 T@U) ) (!  (=> ($IsBox bx@@43 (Tclass._module.DtZ _module.DtZ$G@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@43)) bx@@43) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@43) (Tclass._module.DtZ _module.DtZ$G@@1))))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( ($IsBox bx@@43 (Tclass._module.DtZ _module.DtZ$G@@1)))
)))
(assert (forall ((bx@@44 T@U) ) (!  (=> ($IsBox bx@@44 (TBitvector 7)) (and (= ($Box bv7Type ($Unbox bv7Type bx@@44)) bx@@44) ($Is bv7Type ($Unbox bv7Type bx@@44) (TBitvector 7))))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsBox bx@@44 (TBitvector 7)))
)))
(assert (forall ((bx@@45 T@U) ) (!  (=> ($IsBox bx@@45 (TBitvector 12)) (and (= ($Box bv12Type ($Unbox bv12Type bx@@45)) bx@@45) ($Is bv12Type ($Unbox bv12Type bx@@45) (TBitvector 12))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@45 (TBitvector 12)))
)))
(assert (forall ((bx@@46 T@U) ) (!  (=> ($IsBox bx@@46 (TBitvector 20)) (and (= ($Box bv20Type ($Unbox bv20Type bx@@46)) bx@@46) ($Is bv20Type ($Unbox bv20Type bx@@46) (TBitvector 20))))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@46 (TBitvector 20)))
)))
(assert (forall ((v@@25 T@U) (t0@@41 T@U) (t1@@24 T@U) ) (! (= ($Is MapType v@@25 (TMap t0@@41 t1@@24)) (forall ((bx@@47 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@25) bx@@47) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@25) bx@@47) t1@@24) ($IsBox bx@@47 t0@@41)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@25) bx@@47))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@25) bx@@47))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@25 (TMap t0@@41 t1@@24)))
)))
(assert (forall ((d@@3 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) ($Is DatatypeTypeType d@@3 Tclass._module.Color)) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Color $h@@14))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Color $h@@14))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Color) Tagclass._module.Color))
(assert (= (TagFamily Tclass._module.Color) tytagFamily$Color))
(assert (= (Tag Tclass._module.Six) Tagclass._module.Six))
(assert (= (TagFamily Tclass._module.Six) tytagFamily$Six))
(assert (= (Tag Tclass._module.Even) Tagclass._module.Even))
(assert (= (TagFamily Tclass._module.Even) tytagFamily$Even))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.ReallyJustANullableMyClass) Tagclass._module.ReallyJustANullableMyClass))
(assert (= (TagFamily Tclass._module.ReallyJustANullableMyClass) tytagFamily$ReallyJustANullableMyClass))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (forall ((f@@29 T@U) (t0@@42 T@U) (h@@17 T@U) ) (!  (=> (and ($IsGoodHeap h@@17) ($IsAlloc HandleTypeType f@@29 (Tclass._System.___hFunc0 t0@@42) h@@17)) (=> (Requires0 t0@@42 h@@17 f@@29) ($IsAllocBox (Apply0 t0@@42 h@@17 f@@29) t0@@42 h@@17)))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( ($IsAlloc HandleTypeType f@@29 (Tclass._System.___hFunc0 t0@@42) h@@17))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@17 T@U) ) (! (= (|Set#IsMember| a@@1 o@@17) (|Set#IsMember| b@@1 o@@17))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@17))
 :pattern ( (|Set#IsMember| b@@1 o@@17))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15))
)))) ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@15))
 :qid |unknown.0:0|
 :skolemid |471|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@15))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple2.___hMake2_q d@@5) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |472|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16))
)))) ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@16))
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@16))
)))
(assert (forall ((f@@30 T@U) (t0@@43 T@U) (u0@@4 T@U) ) (!  (=> (and ($Is HandleTypeType f@@30 (Tclass._System.___hFunc0 t0@@43)) (forall ((bx@@48 T@U) ) (!  (=> ($IsBox bx@@48 t0@@43) ($IsBox bx@@48 u0@@4))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@48 t0@@43))
 :pattern ( ($IsBox bx@@48 u0@@4))
))) ($Is HandleTypeType f@@30 (Tclass._System.___hFunc0 u0@@4)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType f@@30 (Tclass._System.___hFunc0 t0@@43)) ($Is HandleTypeType f@@30 (Tclass._System.___hFunc0 u0@@4)))
)))
(assert (forall ((t0@@44 T@U) (t1@@25 T@U) (t2@@8 T@U) (h0@@13 T@U) (h1@@13 T@U) (f@@31 T@U) (bx0@@17 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@13 h1@@13) (and ($IsGoodHeap h0@@13) ($IsGoodHeap h1@@13))) (and (and ($IsBox bx0@@17 t0@@44) ($IsBox bx1@@6 t1@@25)) ($Is HandleTypeType f@@31 (Tclass._System.___hFunc2 t0@@44 t1@@25 t2@@8)))) (forall ((o@@18 T@U) (fld@@13 T@U) ) (!  (=> (and (or (not (= o@@18 null)) (not true)) (|Set#IsMember| (Reads2 t0@@44 t1@@25 t2@@8 h0@@13 f@@31 bx0@@17 bx1@@6) ($Box refType o@@18))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@13 o@@18) fld@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@13 o@@18) fld@@13)))
 :qid |unknown.0:0|
 :skolemid |573|
))) (= (Reads2 t0@@44 t1@@25 t2@@8 h0@@13 f@@31 bx0@@17 bx1@@6) (Reads2 t0@@44 t1@@25 t2@@8 h1@@13 f@@31 bx0@@17 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($HeapSucc h0@@13 h1@@13) (Reads2 t0@@44 t1@@25 t2@@8 h1@@13 f@@31 bx0@@17 bx1@@6))
)))
(assert (forall ((t0@@45 T@U) (t1@@26 T@U) (t2@@9 T@U) (h0@@14 T@U) (h1@@14 T@U) (f@@32 T@U) (bx0@@18 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@14 h1@@14) (and ($IsGoodHeap h0@@14) ($IsGoodHeap h1@@14))) (and (and ($IsBox bx0@@18 t0@@45) ($IsBox bx1@@7 t1@@26)) ($Is HandleTypeType f@@32 (Tclass._System.___hFunc2 t0@@45 t1@@26 t2@@9)))) (forall ((o@@19 T@U) (fld@@14 T@U) ) (!  (=> (and (or (not (= o@@19 null)) (not true)) (|Set#IsMember| (Reads2 t0@@45 t1@@26 t2@@9 h1@@14 f@@32 bx0@@18 bx1@@7) ($Box refType o@@19))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@14 o@@19) fld@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@14 o@@19) fld@@14)))
 :qid |unknown.0:0|
 :skolemid |575|
))) (= (Reads2 t0@@45 t1@@26 t2@@9 h0@@14 f@@32 bx0@@18 bx1@@7) (Reads2 t0@@45 t1@@26 t2@@9 h1@@14 f@@32 bx0@@18 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($HeapSucc h0@@14 h1@@14) (Reads2 t0@@45 t1@@26 t2@@9 h1@@14 f@@32 bx0@@18 bx1@@7))
)))
(assert (forall ((t0@@46 T@U) (t1@@27 T@U) (t2@@10 T@U) (h0@@15 T@U) (h1@@15 T@U) (f@@33 T@U) (bx0@@19 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@15 h1@@15) (and ($IsGoodHeap h0@@15) ($IsGoodHeap h1@@15))) (and (and ($IsBox bx0@@19 t0@@46) ($IsBox bx1@@8 t1@@27)) ($Is HandleTypeType f@@33 (Tclass._System.___hFunc2 t0@@46 t1@@27 t2@@10)))) (forall ((o@@20 T@U) (fld@@15 T@U) ) (!  (=> (and (or (not (= o@@20 null)) (not true)) (|Set#IsMember| (Reads2 t0@@46 t1@@27 t2@@10 h0@@15 f@@33 bx0@@19 bx1@@8) ($Box refType o@@20))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@15 o@@20) fld@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@15 o@@20) fld@@15)))
 :qid |unknown.0:0|
 :skolemid |581|
))) (= (Apply2 t0@@46 t1@@27 t2@@10 h0@@15 f@@33 bx0@@19 bx1@@8) (Apply2 t0@@46 t1@@27 t2@@10 h1@@15 f@@33 bx0@@19 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($HeapSucc h0@@15 h1@@15) (Apply2 t0@@46 t1@@27 t2@@10 h1@@15 f@@33 bx0@@19 bx1@@8))
)))
(assert (forall ((t0@@47 T@U) (t1@@28 T@U) (t2@@11 T@U) (h0@@16 T@U) (h1@@16 T@U) (f@@34 T@U) (bx0@@20 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@16 h1@@16) (and ($IsGoodHeap h0@@16) ($IsGoodHeap h1@@16))) (and (and ($IsBox bx0@@20 t0@@47) ($IsBox bx1@@9 t1@@28)) ($Is HandleTypeType f@@34 (Tclass._System.___hFunc2 t0@@47 t1@@28 t2@@11)))) (forall ((o@@21 T@U) (fld@@16 T@U) ) (!  (=> (and (or (not (= o@@21 null)) (not true)) (|Set#IsMember| (Reads2 t0@@47 t1@@28 t2@@11 h1@@16 f@@34 bx0@@20 bx1@@9) ($Box refType o@@21))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@16 o@@21) fld@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@16 o@@21) fld@@16)))
 :qid |unknown.0:0|
 :skolemid |583|
))) (= (Apply2 t0@@47 t1@@28 t2@@11 h0@@16 f@@34 bx0@@20 bx1@@9) (Apply2 t0@@47 t1@@28 t2@@11 h1@@16 f@@34 bx0@@20 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($HeapSucc h0@@16 h1@@16) (Apply2 t0@@47 t1@@28 t2@@11 h1@@16 f@@34 bx0@@20 bx1@@9))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.ReallyJustANullableMyClass)  (and ($Is refType |c#0@@8| Tclass._module.MyClass?) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.ReallyJustANullableMyClass))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@26 T@U) (t0@@48 T@U) (h@@18 T@U) ) (! (= ($IsAlloc MultiSetType v@@26 (TMultiSet t0@@48) h@@18) (forall ((bx@@49 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@26 bx@@49)) ($IsAllocBox bx@@49 t0@@48 h@@18))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@26 bx@@49))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@26 (TMultiSet t0@@48) h@@18))
)))
(assert (forall ((h@@19 T@U) (v@@27 T@U) ) (! ($IsAlloc intType v@@27 TInt h@@19)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@27 TInt h@@19))
)))
(assert (forall ((h@@20 T@U) (v@@28 T@U) ) (! ($IsAlloc realType v@@28 TReal h@@20)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@28 TReal h@@20))
)))
(assert (forall ((h@@21 T@U) (v@@29 T@U) ) (! ($IsAlloc boolType v@@29 TBool h@@21)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@29 TBool h@@21))
)))
(assert (forall ((v@@30 T@U) (t0@@49 T@U) ) (! (= ($Is SeqType v@@30 (TSeq t0@@49)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@30))) ($IsBox (|Seq#Index| v@@30 i@@0) t0@@49))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@30 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@30 (TSeq t0@@49)))
)))
(assert (forall ((|#$R@@28| T@U) (|f#0@@4| T@U) ) (! (= ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc0 |#$R@@28|))  (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hFunc0 |#$R@@28|)) (|Set#Equal| (Reads0 |#$R@@28| $OneHeap |f#0@@4|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc0 |#$R@@28|)))
)))
(assert (forall ((m@@16 T@U) ) (!  (or (= m@@16 |Map#Empty|) (exists ((k@@5 T@U) (v@@31 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@16) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@5 v@@31)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@16))
)))
(assert (forall ((s@@5 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@1))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@1))))
)))
(assert (forall ((v@@32 T@U) (t0@@50 T@U) (t1@@29 T@U) ) (!  (=> ($Is MapType v@@32 (TMap t0@@50 t1@@29)) (and (and ($Is SetType (|Map#Domain| v@@32) (TSet t0@@50)) ($Is SetType (|Map#Values| v@@32) (TSet t1@@29))) ($Is SetType (|Map#Items| v@@32) (TSet (Tclass._System.Tuple2 t0@@50 t1@@29)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@32 (TMap t0@@50 t1@@29)))
)))
(assert (forall ((v@@33 T@U) (t0@@51 T@U) (t1@@30 T@U) ) (!  (=> ($Is IMapType v@@33 (TIMap t0@@51 t1@@30)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@33) (TISet t0@@51)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@33) (TISet t1@@30))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@33) (TISet (Tclass._System.Tuple2 t0@@51 t1@@30)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@33 (TIMap t0@@51 t1@@30)))
)))
(assert (forall ((v@@34 T@U) ) (! ($Is intType v@@34 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@34 TInt))
)))
(assert (forall ((v@@35 T@U) ) (! ($Is realType v@@35 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@35 TReal))
)))
(assert (forall ((v@@36 T@U) ) (! ($Is boolType v@@36 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@36 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$_module.__default.Standard)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
