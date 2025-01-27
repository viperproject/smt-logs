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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun |##_System._tuple#4._#Make4| () T@U)
(declare-fun Tagclass._System.Tuple4 () T@U)
(declare-fun Tagclass._module.WClass () T@U)
(declare-fun Tagclass._module.Class () T@U)
(declare-fun Tagclass._module.SomeObject? () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun Tagclass._module.Class? () T@U)
(declare-fun Tagclass._module.WClass? () T@U)
(declare-fun |##_module.Stream.Next| () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun class._module.WClass? () T@U)
(declare-fun |##_module.Cell.Cell| () T@U)
(declare-fun Tagclass._module.SomeObject () T@U)
(declare-fun class._module.Class? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun |tytagFamily$_tuple#4| () T@U)
(declare-fun tytagFamily$WClass () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$SomeObject () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun field$pair () T@U)
(declare-fun field$cell () T@U)
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
(declare-fun |#_System._tuple#4._#Make4| (T@U T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple4 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple4_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple4_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple4_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple4_3 (T@U) T@U)
(declare-fun _System.Tuple4._0 (T@U) T@U)
(declare-fun _System.Tuple4._1 (T@U) T@U)
(declare-fun _System.Tuple4._2 (T@U) T@U)
(declare-fun _System.Tuple4._3 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun bv3Type () T@T)
(declare-fun bv3_2_U ((_ BitVec 3)) T@U)
(declare-fun U_2_bv3 (T@U) (_ BitVec 3))
(declare-fun bv5Type () T@T)
(declare-fun bv5_2_U ((_ BitVec 5)) T@U)
(declare-fun U_2_bv5 (T@U) (_ BitVec 5))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun bv30Type () T@T)
(declare-fun bv30_2_U ((_ BitVec 30)) T@U)
(declare-fun U_2_bv30 (T@U) (_ BitVec 30))
(declare-fun bv2009Type () T@T)
(declare-fun bv2009_2_U ((_ BitVec 2009)) T@U)
(declare-fun U_2_bv2009 (T@U) (_ BitVec 2009))
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _System.Tuple4.___hMake4_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |$IsA#_System.Tuple4| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.WClass (T@U) T@U)
(declare-fun Tclass._module.WClass? (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.Stream.Next_q (T@U) Bool)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.Cell.Cell_q (T@U) Bool)
(declare-fun Tclass._module.Cell (T@U) T@U)
(declare-fun Tclass._module.SomeObject? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Class? () T@U)
(declare-fun Tclass._module.SomeObject () T@U)
(declare-fun Tclass._module.Class () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.WClass.pair () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Class.cell () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |#_module.Stream.Next| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.WClass.strm (T@U T@U) T@U)
(declare-fun |#_module.Cell.Cell| (T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.WClass_0 (T@U) T@U)
(declare-fun Tclass._module.Cell_0 (T@U) T@U)
(declare-fun Tclass._module.WClass?_0 (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun _module.Cell.data (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal TagSet TagSeq TagMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.Tuple0 |##_System._tuple#4._#Make4| Tagclass._System.Tuple4 Tagclass._module.WClass Tagclass._module.Class Tagclass._module.SomeObject? Tagclass._module.Cell Tagclass._module.Class? Tagclass._module.WClass? |##_module.Stream.Next| Tagclass._module.Stream class._module.WClass? |##_module.Cell.Cell| Tagclass._module.SomeObject class._module.Class? |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| |tytagFamily$_tuple#4| tytagFamily$WClass tytagFamily$Class tytagFamily$SomeObject tytagFamily$Cell tytagFamily$Stream field$pair field$cell)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) (|a#12#3#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#4._#Make4| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0|)) |##_System._tuple#4._#Make4|)
 :qid |unknown.0:0|
 :skolemid |5192|
 :pattern ( (|#_System._tuple#4._#Make4| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0|))
)))
(assert (forall ((|_System._tuple#4$T0| T@U) (|_System._tuple#4$T1| T@U) (|_System._tuple#4$T2| T@U) (|_System._tuple#4$T3| T@U) ) (! (= (Tclass._System.Tuple4_0 (Tclass._System.Tuple4 |_System._tuple#4$T0| |_System._tuple#4$T1| |_System._tuple#4$T2| |_System._tuple#4$T3|)) |_System._tuple#4$T0|)
 :qid |unknown.0:0|
 :skolemid |5197|
 :pattern ( (Tclass._System.Tuple4 |_System._tuple#4$T0| |_System._tuple#4$T1| |_System._tuple#4$T2| |_System._tuple#4$T3|))
)))
(assert (forall ((|_System._tuple#4$T0@@0| T@U) (|_System._tuple#4$T1@@0| T@U) (|_System._tuple#4$T2@@0| T@U) (|_System._tuple#4$T3@@0| T@U) ) (! (= (Tclass._System.Tuple4_1 (Tclass._System.Tuple4 |_System._tuple#4$T0@@0| |_System._tuple#4$T1@@0| |_System._tuple#4$T2@@0| |_System._tuple#4$T3@@0|)) |_System._tuple#4$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |5198|
 :pattern ( (Tclass._System.Tuple4 |_System._tuple#4$T0@@0| |_System._tuple#4$T1@@0| |_System._tuple#4$T2@@0| |_System._tuple#4$T3@@0|))
)))
(assert (forall ((|_System._tuple#4$T0@@1| T@U) (|_System._tuple#4$T1@@1| T@U) (|_System._tuple#4$T2@@1| T@U) (|_System._tuple#4$T3@@1| T@U) ) (! (= (Tclass._System.Tuple4_2 (Tclass._System.Tuple4 |_System._tuple#4$T0@@1| |_System._tuple#4$T1@@1| |_System._tuple#4$T2@@1| |_System._tuple#4$T3@@1|)) |_System._tuple#4$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |5199|
 :pattern ( (Tclass._System.Tuple4 |_System._tuple#4$T0@@1| |_System._tuple#4$T1@@1| |_System._tuple#4$T2@@1| |_System._tuple#4$T3@@1|))
)))
(assert (forall ((|_System._tuple#4$T0@@2| T@U) (|_System._tuple#4$T1@@2| T@U) (|_System._tuple#4$T2@@2| T@U) (|_System._tuple#4$T3@@2| T@U) ) (! (= (Tclass._System.Tuple4_3 (Tclass._System.Tuple4 |_System._tuple#4$T0@@2| |_System._tuple#4$T1@@2| |_System._tuple#4$T2@@2| |_System._tuple#4$T3@@2|)) |_System._tuple#4$T3@@2|)
 :qid |unknown.0:0|
 :skolemid |5200|
 :pattern ( (Tclass._System.Tuple4 |_System._tuple#4$T0@@2| |_System._tuple#4$T1@@2| |_System._tuple#4$T2@@2| |_System._tuple#4$T3@@2|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) (|a#16#3#0| T@U) ) (! (= (_System.Tuple4._0 (|#_System._tuple#4._#Make4| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |5213|
 :pattern ( (|#_System._tuple#4._#Make4| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (|a#18#3#0| T@U) ) (! (= (_System.Tuple4._1 (|#_System._tuple#4._#Make4| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |5215|
 :pattern ( (|#_System._tuple#4._#Make4| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (|a#20#3#0| T@U) ) (! (= (_System.Tuple4._2 (|#_System._tuple#4._#Make4| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |5217|
 :pattern ( (|#_System._tuple#4._#Make4| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) (|a#22#3#0| T@U) ) (! (= (_System.Tuple4._3 (|#_System._tuple#4._#Make4| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0|)) |a#22#3#0|)
 :qid |unknown.0:0|
 :skolemid |5219|
 :pattern ( (|#_System._tuple#4._#Make4| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0|))
)))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |4706|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv3Type) 3) (forall ((arg0@@2 (_ BitVec 3)) ) (! (= (U_2_bv3 (bv3_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv3|
 :pattern ( (bv3_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv3_2_U (U_2_bv3 x@@2)) x@@2)
 :qid |cast:U_2_bv3|
 :pattern ( (U_2_bv3 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv3Type v@@0 (TBitvector 3) heap)
 :qid |unknown.0:0|
 :skolemid |4985|
 :pattern ( ($IsAlloc bv3Type v@@0 (TBitvector 3) heap))
)))
(assert  (and (and (= (Ctor bv5Type) 4) (forall ((arg0@@3 (_ BitVec 5)) ) (! (= (U_2_bv5 (bv5_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv5|
 :pattern ( (bv5_2_U arg0@@3))
))) (forall ((x@@3 T@U) ) (! (= (bv5_2_U (U_2_bv5 x@@3)) x@@3)
 :qid |cast:U_2_bv5|
 :pattern ( (U_2_bv5 x@@3))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv5Type v@@1 (TBitvector 5) heap@@0)
 :qid |unknown.0:0|
 :skolemid |5005|
 :pattern ( ($IsAlloc bv5Type v@@1 (TBitvector 5) heap@@0))
)))
(assert  (and (and (= (Ctor bv7Type) 5) (forall ((arg0@@4 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@4))
))) (forall ((x@@4 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@4)) x@@4)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@4))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv7Type v@@2 (TBitvector 7) heap@@1)
 :qid |unknown.0:0|
 :skolemid |4997|
 :pattern ( ($IsAlloc bv7Type v@@2 (TBitvector 7) heap@@1))
)))
(assert  (and (and (= (Ctor bv8Type) 6) (forall ((arg0@@5 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@5))
))) (forall ((x@@5 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@5)) x@@5)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@5))
))))
(assert (forall ((v@@3 T@U) (heap@@2 T@U) ) (! ($IsAlloc bv8Type v@@3 (TBitvector 8) heap@@2)
 :qid |unknown.0:0|
 :skolemid |4993|
 :pattern ( ($IsAlloc bv8Type v@@3 (TBitvector 8) heap@@2))
)))
(assert  (and (and (= (Ctor bv30Type) 7) (forall ((arg0@@6 (_ BitVec 30)) ) (! (= (U_2_bv30 (bv30_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv30|
 :pattern ( (bv30_2_U arg0@@6))
))) (forall ((x@@6 T@U) ) (! (= (bv30_2_U (U_2_bv30 x@@6)) x@@6)
 :qid |cast:U_2_bv30|
 :pattern ( (U_2_bv30 x@@6))
))))
(assert (forall ((v@@4 T@U) (heap@@3 T@U) ) (! ($IsAlloc bv30Type v@@4 (TBitvector 30) heap@@3)
 :qid |unknown.0:0|
 :skolemid |4989|
 :pattern ( ($IsAlloc bv30Type v@@4 (TBitvector 30) heap@@3))
)))
(assert  (and (and (= (Ctor bv2009Type) 8) (forall ((arg0@@7 (_ BitVec 2009)) ) (! (= (U_2_bv2009 (bv2009_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv2009|
 :pattern ( (bv2009_2_U arg0@@7))
))) (forall ((x@@7 T@U) ) (! (= (bv2009_2_U (U_2_bv2009 x@@7)) x@@7)
 :qid |cast:U_2_bv2009|
 :pattern ( (U_2_bv2009 x@@7))
))))
(assert (forall ((v@@5 T@U) (heap@@4 T@U) ) (! ($IsAlloc bv2009Type v@@5 (TBitvector 2009) heap@@4)
 :qid |unknown.0:0|
 :skolemid |5001|
 :pattern ( ($IsAlloc bv2009Type v@@5 (TBitvector 2009) heap@@4))
)))
(assert (= (Ctor DatatypeTypeType) 9))
(assert (forall ((d T@U) (|_System._tuple#4$T0@@3| T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_System.Tuple4.___hMake4_q d) (exists ((|_System._tuple#4$T1@@3| T@U) (|_System._tuple#4$T2@@3| T@U) (|_System._tuple#4$T3@@3| T@U) ) (! ($IsAlloc DatatypeTypeType d (Tclass._System.Tuple4 |_System._tuple#4$T0@@3| |_System._tuple#4$T1@@3| |_System._tuple#4$T2@@3| |_System._tuple#4$T3@@3|) $h)
 :qid |unknown.0:0|
 :skolemid |5204|
 :pattern ( ($IsAlloc DatatypeTypeType d (Tclass._System.Tuple4 |_System._tuple#4$T0@@3| |_System._tuple#4$T1@@3| |_System._tuple#4$T2@@3| |_System._tuple#4$T3@@3|) $h))
)))) ($IsAllocBox (_System.Tuple4._0 d) |_System._tuple#4$T0@@3| $h))
 :qid |unknown.0:0|
 :skolemid |5205|
 :pattern ( ($IsAllocBox (_System.Tuple4._0 d) |_System._tuple#4$T0@@3| $h))
)))
(assert (forall ((d@@0 T@U) (|_System._tuple#4$T1@@4| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple4.___hMake4_q d@@0) (exists ((|_System._tuple#4$T0@@4| T@U) (|_System._tuple#4$T2@@4| T@U) (|_System._tuple#4$T3@@4| T@U) ) (! ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple4 |_System._tuple#4$T0@@4| |_System._tuple#4$T1@@4| |_System._tuple#4$T2@@4| |_System._tuple#4$T3@@4|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |5206|
 :pattern ( ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple4 |_System._tuple#4$T0@@4| |_System._tuple#4$T1@@4| |_System._tuple#4$T2@@4| |_System._tuple#4$T3@@4|) $h@@0))
)))) ($IsAllocBox (_System.Tuple4._1 d@@0) |_System._tuple#4$T1@@4| $h@@0))
 :qid |unknown.0:0|
 :skolemid |5207|
 :pattern ( ($IsAllocBox (_System.Tuple4._1 d@@0) |_System._tuple#4$T1@@4| $h@@0))
)))
(assert (forall ((d@@1 T@U) (|_System._tuple#4$T2@@5| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple4.___hMake4_q d@@1) (exists ((|_System._tuple#4$T0@@5| T@U) (|_System._tuple#4$T1@@5| T@U) (|_System._tuple#4$T3@@5| T@U) ) (! ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple4 |_System._tuple#4$T0@@5| |_System._tuple#4$T1@@5| |_System._tuple#4$T2@@5| |_System._tuple#4$T3@@5|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |5208|
 :pattern ( ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple4 |_System._tuple#4$T0@@5| |_System._tuple#4$T1@@5| |_System._tuple#4$T2@@5| |_System._tuple#4$T3@@5|) $h@@1))
)))) ($IsAllocBox (_System.Tuple4._2 d@@1) |_System._tuple#4$T2@@5| $h@@1))
 :qid |unknown.0:0|
 :skolemid |5209|
 :pattern ( ($IsAllocBox (_System.Tuple4._2 d@@1) |_System._tuple#4$T2@@5| $h@@1))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#4$T3@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple4.___hMake4_q d@@2) (exists ((|_System._tuple#4$T0@@6| T@U) (|_System._tuple#4$T1@@6| T@U) (|_System._tuple#4$T2@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple4 |_System._tuple#4$T0@@6| |_System._tuple#4$T1@@6| |_System._tuple#4$T2@@6| |_System._tuple#4$T3@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |5210|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple4 |_System._tuple#4$T0@@6| |_System._tuple#4$T1@@6| |_System._tuple#4$T2@@6| |_System._tuple#4$T3@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple4._3 d@@2) |_System._tuple#4$T3@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |5211|
 :pattern ( ($IsAllocBox (_System.Tuple4._3 d@@2) |_System._tuple#4$T3@@6| $h@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_System.Tuple2| d@@3) (_System.Tuple2.___hMake2_q d@@3))
 :qid |unknown.0:0|
 :skolemid |5131|
 :pattern ( (|$IsA#_System.Tuple2| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (|$IsA#_System.Tuple4| d@@4) (_System.Tuple4.___hMake4_q d@@4))
 :qid |unknown.0:0|
 :skolemid |5221|
 :pattern ( (|$IsA#_System.Tuple4| d@@4))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |4685|
 :pattern ( ($Is intType v@@6 (TBitvector 0)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is bv3Type v@@7 (TBitvector 3))
 :qid |unknown.0:0|
 :skolemid |4984|
 :pattern ( ($Is bv3Type v@@7 (TBitvector 3)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is bv5Type v@@8 (TBitvector 5))
 :qid |unknown.0:0|
 :skolemid |5004|
 :pattern ( ($Is bv5Type v@@8 (TBitvector 5)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is bv7Type v@@9 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |4996|
 :pattern ( ($Is bv7Type v@@9 (TBitvector 7)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is bv8Type v@@10 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |4992|
 :pattern ( ($Is bv8Type v@@10 (TBitvector 8)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is bv30Type v@@11 (TBitvector 30))
 :qid |unknown.0:0|
 :skolemid |4988|
 :pattern ( ($Is bv30Type v@@11 (TBitvector 30)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is bv2009Type v@@12 (TBitvector 2009))
 :qid |unknown.0:0|
 :skolemid |5000|
 :pattern ( ($Is bv2009Type v@@12 (TBitvector 2009)))
)))
(assert (= (Ctor refType) 10))
(assert (forall ((_module.WClass$W T@U) (|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h@@3) ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h@@3))
 :qid |unknown.0:0|
 :skolemid |5384|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h@@3))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h@@3))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@5))
 :qid |unknown.0:0|
 :skolemid |5132|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5) ($Is DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) (|a#17#3#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#4._#Make4| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0|)))
 :qid |unknown.0:0|
 :skolemid |5214|
 :pattern ( (|#_System._tuple#4._#Make4| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) (|a#19#3#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#4._#Make4| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0|)))
 :qid |unknown.0:0|
 :skolemid |5216|
 :pattern ( (|#_System._tuple#4._#Make4| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) (|a#21#3#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#4._#Make4| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0|)))
 :qid |unknown.0:0|
 :skolemid |5218|
 :pattern ( (|#_System._tuple#4._#Make4| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) (|a#23#3#0| T@U) ) (! (< (BoxRank |a#23#3#0|) (DtRank (|#_System._tuple#4._#Make4| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0|)))
 :qid |unknown.0:0|
 :skolemid |5220|
 :pattern ( (|#_System._tuple#4._#Make4| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.Stream$G T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$G)) (_module.Stream.Next_q d@@6))
 :qid |unknown.0:0|
 :skolemid |5355|
 :pattern ( (_module.Stream.Next_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$G)))
)))
(assert (forall ((_module.Cell$T T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Cell _module.Cell$T)) (_module.Cell.Cell_q d@@7))
 :qid |unknown.0:0|
 :skolemid |5396|
 :pattern ( (_module.Cell.Cell_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Cell _module.Cell$T)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.SomeObject?)  (or (= $o null) (= (dtype $o) Tclass._module.SomeObject?)))
 :qid |unknown.0:0|
 :skolemid |5399|
 :pattern ( ($Is refType $o Tclass._module.SomeObject?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Class?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Class?)))
 :qid |unknown.0:0|
 :skolemid |5404|
 :pattern ( ($Is refType $o@@0 Tclass._module.Class?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.SomeObject $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.SomeObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |5403|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.SomeObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.SomeObject? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Class $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.Class? $h@@5))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Class $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Class? $h@@5))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |5120|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 11)) (= (Ctor BoxType) 12)) (forall ((arg0@@8 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@8 arg1)) 13)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@9 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@9 arg1@@0)) arg0@@9)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@9 arg1@@0))
))) (forall ((arg0@@10 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@10 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@10 arg1@@1))
))))
(assert (forall ((_module.WClass$W@@0 T@U) ($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.WClass? _module.WClass$W@@0) $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5368|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.WClass? _module.WClass$W@@0) $h@@6))
)))
(assert (= (FDim _module.WClass.pair) 0))
(assert (= (FieldOfDecl class._module.WClass? field$pair) _module.WClass.pair))
(assert  (not ($IsGhostField _module.WClass.pair)))
(assert (= (FDim _module.Class.cell) 0))
(assert (= (FieldOfDecl class._module.Class? field$cell) _module.Class.cell))
(assert  (not ($IsGhostField _module.Class.cell)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.SomeObject? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5400|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.SomeObject? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Class? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5405|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Class? $h@@8))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4758|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4759|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((|_System._tuple#4$T0@@7| T@U) (|_System._tuple#4$T1@@7| T@U) (|_System._tuple#4$T2@@7| T@U) (|_System._tuple#4$T3@@7| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) (|a#14#3#0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#4._#Make4| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0|) (Tclass._System.Tuple4 |_System._tuple#4$T0@@7| |_System._tuple#4$T1@@7| |_System._tuple#4$T2@@7| |_System._tuple#4$T3@@7|) $h@@9)  (and (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#4$T0@@7| $h@@9) ($IsAllocBox |a#14#1#0| |_System._tuple#4$T1@@7| $h@@9)) ($IsAllocBox |a#14#2#0| |_System._tuple#4$T2@@7| $h@@9)) ($IsAllocBox |a#14#3#0| |_System._tuple#4$T3@@7| $h@@9))))
 :qid |unknown.0:0|
 :skolemid |5203|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#4._#Make4| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0|) (Tclass._System.Tuple4 |_System._tuple#4$T0@@7| |_System._tuple#4$T1@@7| |_System._tuple#4$T2@@7| |_System._tuple#4$T3@@7|) $h@@9))
)))
(assert (forall ((x@@8 Int) ) (! (= (LitInt x@@8) x@@8)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4657|
 :pattern ( (LitInt x@@8))
)))
(assert (forall ((x@@9 T@U) (T T@T) ) (! (= (Lit T x@@9) x@@9)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4655|
 :pattern ( (Lit T x@@9))
)))
(assert (forall ((|_System._tuple#4$T0@@8| T@U) (|_System._tuple#4$T1@@8| T@U) (|_System._tuple#4$T2@@8| T@U) (|_System._tuple#4$T3@@8| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple4 |_System._tuple#4$T0@@8| |_System._tuple#4$T1@@8| |_System._tuple#4$T2@@8| |_System._tuple#4$T3@@8|)) Tagclass._System.Tuple4) (= (TagFamily (Tclass._System.Tuple4 |_System._tuple#4$T0@@8| |_System._tuple#4$T1@@8| |_System._tuple#4$T2@@8| |_System._tuple#4$T3@@8|)) |tytagFamily$_tuple#4|))
 :qid |unknown.0:0|
 :skolemid |5196|
 :pattern ( (Tclass._System.Tuple4 |_System._tuple#4$T0@@8| |_System._tuple#4$T1@@8| |_System._tuple#4$T2@@8| |_System._tuple#4$T3@@8|))
)))
(assert (forall ((_module.Stream$G@@0 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Next| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$G@@0))  (and ($IsBox |a#2#0#0@@0| _module.Stream$G@@0) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$G@@0))))
 :qid |unknown.0:0|
 :skolemid |5348|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Next| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$G@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@10)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@10) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@10))))
 :qid |unknown.0:0|
 :skolemid |5121|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@10))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@8) (= (DatatypeCtorId d@@8) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |5113|
 :pattern ( (_System.Tuple2.___hMake2_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_System.Tuple4.___hMake4_q d@@9) (= (DatatypeCtorId d@@9) |##_System._tuple#4._#Make4|))
 :qid |unknown.0:0|
 :skolemid |5193|
 :pattern ( (_System.Tuple4.___hMake4_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.Stream.Next_q d@@10) (= (DatatypeCtorId d@@10) |##_module.Stream.Next|))
 :qid |unknown.0:0|
 :skolemid |5342|
 :pattern ( (_module.Stream.Next_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.Cell.Cell_q d@@11) (= (DatatypeCtorId d@@11) |##_module.Cell.Cell|))
 :qid |unknown.0:0|
 :skolemid |5386|
 :pattern ( (_module.Cell.Cell_q d@@11))
)))
(assert (forall ((x@@10 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@10)) x@@10)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4666|
 :pattern ( ($Unbox T@@0 x@@10))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@12) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@12 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5114|
)))
 :qid |unknown.0:0|
 :skolemid |5115|
 :pattern ( (_System.Tuple2.___hMake2_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Stream.Next_q d@@13) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@13 (|#_module.Stream.Next| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |AutoInitdfy.6:29|
 :skolemid |5343|
)))
 :qid |unknown.0:0|
 :skolemid |5344|
 :pattern ( (_module.Stream.Next_q d@@13))
)))
(assert (= (Ctor SetType) 14))
(assert (forall ((v@@13 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@13 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@13 bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |4686|
 :pattern ( (|Set#IsMember| v@@13 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |4687|
 :pattern ( ($Is SetType v@@13 (TSet t0@@0)))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@1 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.WClass? _module.WClass$W@@1))) ($Is DatatypeTypeType (_module.WClass.strm _module.WClass$W@@1 $o@@4) (Tclass._module.Stream _module.WClass$W@@1)))
 :qid |unknown.0:0|
 :skolemid |5369|
 :pattern ( (_module.WClass.strm _module.WClass$W@@1 $o@@4))
))))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.Cell.Cell_q d@@14) (exists ((|a#1#0#0@@1| T@U) ) (! (= d@@14 (|#_module.Cell.Cell| |a#1#0#0@@1|))
 :qid |AutoInitdfy.19:25|
 :skolemid |5387|
)))
 :qid |unknown.0:0|
 :skolemid |5388|
 :pattern ( (_module.Cell.Cell_q d@@14))
)))
(assert ($IsGhostField alloc))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (|a#15#3#0| T@U) ) (! (= (|#_System._tuple#4._#Make4| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|)) (Lit DatatypeTypeType (|#_System._tuple#4._#Make4| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0|)))
 :qid |unknown.0:0|
 :skolemid |5212|
 :pattern ( (|#_System._tuple#4._#Make4| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|)))
)))
(assert (forall ((_module.WClass$W@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.WClass _module.WClass$W@@2))  (and ($Is refType |c#0@@2| (Tclass._module.WClass? _module.WClass$W@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5383|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.WClass _module.WClass$W@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.WClass? _module.WClass$W@@2)))
)))
(assert (forall ((v@@14 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@14) t h@@1) ($IsAlloc T@@1 v@@14 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4679|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@14) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@2) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4751|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@0 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@15 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@15 t@@1 h@@3) ($IsAlloc T@@2 v@@15 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4750|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@15 t@@1 h@@3))
)))
(assert (forall ((_module.WClass$W@@3 T@U) ($h@@11 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.WClass? _module.WClass$W@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) _module.WClass.pair)) (Tclass._System.Tuple2 TBool TInt) $h@@11))
 :qid |unknown.0:0|
 :skolemid |5372|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) _module.WClass.pair)) (Tclass._module.WClass? _module.WClass$W@@3))
)))
(assert (forall ((|_System._tuple#4$T0@@9| T@U) (|_System._tuple#4$T1@@9| T@U) (|_System._tuple#4$T2@@9| T@U) (|_System._tuple#4$T3@@9| T@U) (d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 (Tclass._System.Tuple4 |_System._tuple#4$T0@@9| |_System._tuple#4$T1@@9| |_System._tuple#4$T2@@9| |_System._tuple#4$T3@@9|)) (_System.Tuple4.___hMake4_q d@@15))
 :qid |unknown.0:0|
 :skolemid |5222|
 :pattern ( (_System.Tuple4.___hMake4_q d@@15) ($Is DatatypeTypeType d@@15 (Tclass._System.Tuple4 |_System._tuple#4$T0@@9| |_System._tuple#4$T1@@9| |_System._tuple#4$T2@@9| |_System._tuple#4$T3@@9|)))
)))
(assert (forall ((_module.WClass$W@@4 T@U) ) (!  (and (= (Tag (Tclass._module.WClass _module.WClass$W@@4)) Tagclass._module.WClass) (= (TagFamily (Tclass._module.WClass _module.WClass$W@@4)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |5298|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@4))
)))
(assert (forall ((_module.Cell$T@@0 T@U) ) (!  (and (= (Tag (Tclass._module.Cell _module.Cell$T@@0)) Tagclass._module.Cell) (= (TagFamily (Tclass._module.Cell _module.Cell$T@@0)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |5305|
 :pattern ( (Tclass._module.Cell _module.Cell$T@@0))
)))
(assert (forall ((_module.WClass$W@@5 T@U) ) (!  (and (= (Tag (Tclass._module.WClass? _module.WClass$W@@5)) Tagclass._module.WClass?) (= (TagFamily (Tclass._module.WClass? _module.WClass$W@@5)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |5309|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@5))
)))
(assert (forall ((_module.Stream$G@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$G@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$G@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |5345|
 :pattern ( (Tclass._module.Stream _module.Stream$G@@1))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@6 T@U) ($h@@12 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.WClass? _module.WClass$W@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))) ($IsAlloc DatatypeTypeType (_module.WClass.strm _module.WClass$W@@6 $o@@6) (Tclass._module.Stream _module.WClass$W@@6) $h@@12))
 :qid |unknown.0:0|
 :skolemid |5370|
 :pattern ( (_module.WClass.strm _module.WClass$W@@6 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))
))))
(assert (forall (($h@@13 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Class?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) _module.Class.cell)) (Tclass._module.Cell TBool) $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5407|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) _module.Class.cell)))
)))
(assert (forall ((|_System._tuple#4$T0@@10| T@U) (|_System._tuple#4$T1@@10| T@U) (|_System._tuple#4$T2@@10| T@U) (|_System._tuple#4$T3@@10| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.Tuple4 |_System._tuple#4$T0@@10| |_System._tuple#4$T1@@10| |_System._tuple#4$T2@@10| |_System._tuple#4$T3@@10|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._System.Tuple4 |_System._tuple#4$T0@@10| |_System._tuple#4$T1@@10| |_System._tuple#4$T2@@10| |_System._tuple#4$T3@@10|))))
 :qid |unknown.0:0|
 :skolemid |5201|
 :pattern ( ($IsBox bx@@1 (Tclass._System.Tuple4 |_System._tuple#4$T0@@10| |_System._tuple#4$T1@@10| |_System._tuple#4$T2@@10| |_System._tuple#4$T3@@10|)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |5137|
 :pattern ( ($IsBox bx@@2 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Class) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Class)))
 :qid |unknown.0:0|
 :skolemid |5302|
 :pattern ( ($IsBox bx@@3 Tclass._module.Class))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.SomeObject?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.SomeObject?)))
 :qid |unknown.0:0|
 :skolemid |5304|
 :pattern ( ($IsBox bx@@4 Tclass._module.SomeObject?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Class?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Class?)))
 :qid |unknown.0:0|
 :skolemid |5308|
 :pattern ( ($IsBox bx@@5 Tclass._module.Class?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.SomeObject) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.SomeObject)))
 :qid |unknown.0:0|
 :skolemid |5401|
 :pattern ( ($IsBox bx@@6 Tclass._module.SomeObject))
)))
(assert (forall ((_module.WClass$W@@7 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._module.WClass? _module.WClass$W@@7))  (or (= $o@@8 null) (= (dtype $o@@8) (Tclass._module.WClass? _module.WClass$W@@7))))
 :qid |unknown.0:0|
 :skolemid |5367|
 :pattern ( ($Is refType $o@@8 (Tclass._module.WClass? _module.WClass$W@@7)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.SomeObject)  (and ($Is refType |c#0@@3| Tclass._module.SomeObject?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5402|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.SomeObject))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.SomeObject?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Class)  (and ($Is refType |c#0@@4| Tclass._module.Class?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Class))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Class?))
)))
(assert (forall ((_module.Cell$T@@1 T@U) (|a#2#0#0@@2| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@2|) (Tclass._module.Cell _module.Cell$T@@1) $h@@14) ($IsAllocBox |a#2#0#0@@2| _module.Cell$T@@1 $h@@14)))
 :qid |unknown.0:0|
 :skolemid |5390|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@2|) (Tclass._module.Cell _module.Cell$T@@1) $h@@14))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4757|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |4747|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4667|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TReal) (and (= ($Box realType ($Unbox realType bx@@8)) bx@@8) ($Is realType ($Unbox realType bx@@8) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |4668|
 :pattern ( ($IsBox bx@@8 TReal))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |4669|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@16 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@16) t@@2) ($Is T@@3 v@@16 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4678|
 :pattern ( ($IsBox ($Box T@@3 v@@16) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |4861|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@17 T@U) (t0@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@17 (TSet t0@@1) h@@4) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@17 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |4707|
 :pattern ( (|Set#IsMember| v@@17 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |4708|
 :pattern ( ($IsAlloc SetType v@@17 (TSet t0@@1) h@@4))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |4649|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |4650|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |4651|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |5112|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |5117|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |5118|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |5127|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |5129|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Next| |a#0#0#0@@0| |a#0#1#0@@0|)) |##_module.Stream.Next|)
 :qid |AutoInitdfy.6:29|
 :skolemid |5341|
 :pattern ( (|#_module.Stream.Next| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Next| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |AutoInitdfy.6:29|
 :skolemid |5352|
 :pattern ( (|#_module.Stream.Next| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Next| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#1#0@@0|)
 :qid |AutoInitdfy.6:29|
 :skolemid |5353|
 :pattern ( (|#_module.Stream.Next| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (= (Ctor SeqType) 15))
(assert (forall ((v@@18 T@U) (t0@@2 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SeqType v@@18 (TSeq t0@@2) h@@5) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@18))) ($IsAllocBox (|Seq#Index| v@@18 i) t0@@2 h@@5))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |4713|
 :pattern ( (|Seq#Index| v@@18 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |4714|
 :pattern ( ($IsAlloc SeqType v@@18 (TSeq t0@@2) h@@5))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_System.Tuple4.___hMake4_q d@@16) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) (|a#13#3#0| T@U) ) (! (= d@@16 (|#_System._tuple#4._#Make4| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0|))
 :qid |unknown.0:0|
 :skolemid |5194|
)))
 :qid |unknown.0:0|
 :skolemid |5195|
 :pattern ( (_System.Tuple4.___hMake4_q d@@16))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |4640|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4641|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4642|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4647|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4648|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((_module.WClass$W@@8 T@U) ) (! (= (Tclass._module.WClass_0 (Tclass._module.WClass _module.WClass$W@@8)) _module.WClass$W@@8)
 :qid |unknown.0:0|
 :skolemid |5299|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@8))
)))
(assert (forall ((_module.Cell$T@@2 T@U) ) (! (= (Tclass._module.Cell_0 (Tclass._module.Cell _module.Cell$T@@2)) _module.Cell$T@@2)
 :qid |unknown.0:0|
 :skolemid |5306|
 :pattern ( (Tclass._module.Cell _module.Cell$T@@2))
)))
(assert (forall ((_module.WClass$W@@9 T@U) ) (! (= (Tclass._module.WClass?_0 (Tclass._module.WClass? _module.WClass$W@@9)) _module.WClass$W@@9)
 :qid |unknown.0:0|
 :skolemid |5310|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@9))
)))
(assert (forall ((_module.Stream$G@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$G@@2)) _module.Stream$G@@2)
 :qid |unknown.0:0|
 :skolemid |5346|
 :pattern ( (Tclass._module.Stream _module.Stream$G@@2))
)))
(assert (forall ((|a#0#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#_module.Cell.Cell| |a#0#0#0@@1|)) |##_module.Cell.Cell|)
 :qid |AutoInitdfy.19:25|
 :skolemid |5385|
 :pattern ( (|#_module.Cell.Cell| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) ) (! (= (_module.Cell.data (|#_module.Cell.Cell| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |AutoInitdfy.19:25|
 :skolemid |5393|
 :pattern ( (|#_module.Cell.Cell| |a#4#0#0@@1|))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@11)) x@@11)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4665|
 :pattern ( ($Box T@@4 x@@11))
)))
(assert (= (Ctor MapType) 16))
(assert (forall ((v@@19 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MapType v@@19 (TMap t0@@3 t1@@0) h@@6) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@19) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@19) bx@@11) t1@@0 h@@6) ($IsAllocBox bx@@11 t0@@3 h@@6)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |4715|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@19) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@19) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |4716|
 :pattern ( ($IsAlloc MapType v@@19 (TMap t0@@3 t1@@0) h@@6))
)))
(assert (forall ((_module.Cell$T@@3 T@U) (|a#2#0#0@@3| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@3|) (Tclass._module.Cell _module.Cell$T@@3)) ($IsBox |a#2#0#0@@3| _module.Cell$T@@3))
 :qid |unknown.0:0|
 :skolemid |5389|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@3|) (Tclass._module.Cell _module.Cell$T@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5128|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5130|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |4925|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@12 T@U) (s@@0 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@12 (TMap s@@0 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@12)) bx@@12) ($Is MapType ($Unbox MapType bx@@12) (TMap s@@0 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4676|
 :pattern ( ($IsBox bx@@12 (TMap s@@0 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5119|
 :pattern ( ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((_module.WClass$W@@10 T@U) ($h@@15 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.WClass? _module.WClass$W@@10)))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@9) _module.WClass.pair)) (Tclass._System.Tuple2 TBool TInt)))
 :qid |unknown.0:0|
 :skolemid |5371|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@9) _module.WClass.pair)) (Tclass._module.WClass? _module.WClass$W@@10))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_module.Cell.Cell| |a#5#0#0@@0|)))
 :qid |AutoInitdfy.19:25|
 :skolemid |5394|
 :pattern ( (|#_module.Cell.Cell| |a#5#0#0@@0|))
)))
(assert (forall ((d@@17 T@U) (_module.Stream$G@@3 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.Stream.Next_q d@@17) ($IsAlloc DatatypeTypeType d@@17 (Tclass._module.Stream _module.Stream$G@@3) $h@@16))) ($IsAllocBox (_module.Stream.head d@@17) _module.Stream$G@@3 $h@@16))
 :qid |unknown.0:0|
 :skolemid |5350|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@17) _module.Stream$G@@3 $h@@16))
)))
(assert (forall ((d@@18 T@U) (_module.Cell$T@@4 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_module.Cell.Cell_q d@@18) ($IsAlloc DatatypeTypeType d@@18 (Tclass._module.Cell _module.Cell$T@@4) $h@@17))) ($IsAllocBox (_module.Cell.data d@@18) _module.Cell$T@@4 $h@@17))
 :qid |unknown.0:0|
 :skolemid |5391|
 :pattern ( ($IsAllocBox (_module.Cell.data d@@18) _module.Cell$T@@4 $h@@17))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@10 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6055|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))
)))
(assert (forall ((|_System._tuple#4$T0@@11| T@U) (|_System._tuple#4$T1@@11| T@U) (|_System._tuple#4$T2@@11| T@U) (|_System._tuple#4$T3@@11| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) (|a#14#3#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#4._#Make4| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0|) (Tclass._System.Tuple4 |_System._tuple#4$T0@@11| |_System._tuple#4$T1@@11| |_System._tuple#4$T2@@11| |_System._tuple#4$T3@@11|))  (and (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#4$T0@@11|) ($IsBox |a#14#1#0@@0| |_System._tuple#4$T1@@11|)) ($IsBox |a#14#2#0@@0| |_System._tuple#4$T2@@11|)) ($IsBox |a#14#3#0@@0| |_System._tuple#4$T3@@11|)))
 :qid |unknown.0:0|
 :skolemid |5202|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#4._#Make4| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0|) (Tclass._System.Tuple4 |_System._tuple#4$T0@@11| |_System._tuple#4$T1@@11| |_System._tuple#4$T2@@11| |_System._tuple#4$T3@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5116|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |4913|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |4914|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@20 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@20)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |4915|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |4916|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |4924|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@21 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@21) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@21 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |4922|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |4923|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@21))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@22 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@22)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@22)) |u'|) v@@22))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@22)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@22)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |4930|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@22)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@22)) |u'|))
)))
(assert (forall ((d@@19 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@19)) (DtRank d@@19))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |4724|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@19)))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@14)) bx@@14) ($Is intType ($Unbox intType bx@@14) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |4671|
 :pattern ( ($IsBox bx@@14 (TBitvector 0)))
)))
(assert (forall ((bx@@15 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4672|
 :pattern ( ($IsBox bx@@15 (TSet t@@11)))
)))
(assert (forall ((bx@@16 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@16 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@16)) bx@@16) ($Is SeqType ($Unbox SeqType bx@@16) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4675|
 :pattern ( ($IsBox bx@@16 (TSeq t@@12)))
)))
(assert (forall ((_module.WClass$W@@11 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._module.WClass _module.WClass$W@@11)) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) (Tclass._module.WClass _module.WClass$W@@11))))
 :qid |unknown.0:0|
 :skolemid |5300|
 :pattern ( ($IsBox bx@@17 (Tclass._module.WClass _module.WClass$W@@11)))
)))
(assert (forall ((_module.Cell$T@@5 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._module.Cell _module.Cell$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@18)) bx@@18) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@18) (Tclass._module.Cell _module.Cell$T@@5))))
 :qid |unknown.0:0|
 :skolemid |5307|
 :pattern ( ($IsBox bx@@18 (Tclass._module.Cell _module.Cell$T@@5)))
)))
(assert (forall ((_module.WClass$W@@12 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._module.WClass? _module.WClass$W@@12)) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) (Tclass._module.WClass? _module.WClass$W@@12))))
 :qid |unknown.0:0|
 :skolemid |5311|
 :pattern ( ($IsBox bx@@19 (Tclass._module.WClass? _module.WClass$W@@12)))
)))
(assert (forall ((_module.Stream$G@@4 T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._module.Stream _module.Stream$G@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@20)) bx@@20) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@20) (Tclass._module.Stream _module.Stream$G@@4))))
 :qid |unknown.0:0|
 :skolemid |5347|
 :pattern ( ($IsBox bx@@20 (Tclass._module.Stream _module.Stream$G@@4)))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (TBitvector 3)) (and (= ($Box bv3Type ($Unbox bv3Type bx@@21)) bx@@21) ($Is bv3Type ($Unbox bv3Type bx@@21) (TBitvector 3))))
 :qid |unknown.0:0|
 :skolemid |4983|
 :pattern ( ($IsBox bx@@21 (TBitvector 3)))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (TBitvector 5)) (and (= ($Box bv5Type ($Unbox bv5Type bx@@22)) bx@@22) ($Is bv5Type ($Unbox bv5Type bx@@22) (TBitvector 5))))
 :qid |unknown.0:0|
 :skolemid |5003|
 :pattern ( ($IsBox bx@@22 (TBitvector 5)))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (TBitvector 7)) (and (= ($Box bv7Type ($Unbox bv7Type bx@@23)) bx@@23) ($Is bv7Type ($Unbox bv7Type bx@@23) (TBitvector 7))))
 :qid |unknown.0:0|
 :skolemid |4995|
 :pattern ( ($IsBox bx@@23 (TBitvector 7)))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 (TBitvector 8)) (and (= ($Box bv8Type ($Unbox bv8Type bx@@24)) bx@@24) ($Is bv8Type ($Unbox bv8Type bx@@24) (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@24 (TBitvector 8)))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (TBitvector 30)) (and (= ($Box bv30Type ($Unbox bv30Type bx@@25)) bx@@25) ($Is bv30Type ($Unbox bv30Type bx@@25) (TBitvector 30))))
 :qid |unknown.0:0|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@25 (TBitvector 30)))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (TBitvector 2009)) (and (= ($Box bv2009Type ($Unbox bv2009Type bx@@26)) bx@@26) ($Is bv2009Type ($Unbox bv2009Type bx@@26) (TBitvector 2009))))
 :qid |unknown.0:0|
 :skolemid |4999|
 :pattern ( ($IsBox bx@@26 (TBitvector 2009)))
)))
(assert (forall ((v@@23 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@23 (TMap t0@@5 t1@@2)) (forall ((bx@@27 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@23) bx@@27) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@23) bx@@27) t1@@2) ($IsBox bx@@27 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |4695|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@23) bx@@27))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@23) bx@@27))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |4696|
 :pattern ( ($Is MapType v@@23 (TMap t0@@5 t1@@2)))
)))
(assert (forall (($h@@18 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Class?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@11) _module.Class.cell)) (Tclass._module.Cell TBool)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5406|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@11) _module.Class.cell)))
)))
(assert (forall ((d@@20 T@U) (_module.Stream$G@@5 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_module.Stream.Next_q d@@20) ($IsAlloc DatatypeTypeType d@@20 (Tclass._module.Stream _module.Stream$G@@5) $h@@19))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@20) (Tclass._module.Stream _module.Stream$G@@5) $h@@19))
 :qid |unknown.0:0|
 :skolemid |5351|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@20) (Tclass._module.Stream _module.Stream$G@@5) $h@@19))
)))
(assert (forall ((d@@21 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) ($Is DatatypeTypeType d@@21 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@21 Tclass._System.Tuple0 $h@@20))
 :qid |unknown.0:0|
 :skolemid |5138|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass._System.Tuple0 $h@@20))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.Class) Tagclass._module.Class))
(assert (= (TagFamily Tclass._module.Class) tytagFamily$Class))
(assert (= (Tag Tclass._module.SomeObject?) Tagclass._module.SomeObject?))
(assert (= (TagFamily Tclass._module.SomeObject?) tytagFamily$SomeObject))
(assert (= (Tag Tclass._module.Class?) Tagclass._module.Class?))
(assert (= (TagFamily Tclass._module.Class?) tytagFamily$Class))
(assert (= (Tag Tclass._module.SomeObject) Tagclass._module.SomeObject))
(assert (= (TagFamily Tclass._module.SomeObject) tytagFamily$SomeObject))
(assert (forall ((d@@22 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@22) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |5122|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@22) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |5123|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@22) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@23 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@23) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |5124|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@23) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |5125|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@23) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |5126|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4658|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((|a#3#0#0@@1| T@U) ) (! (= (|#_module.Cell.Cell| (Lit BoxType |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#_module.Cell.Cell| |a#3#0#0@@1|)))
 :qid |AutoInitdfy.19:25|
 :skolemid |5392|
 :pattern ( (|#_module.Cell.Cell| (Lit BoxType |a#3#0#0@@1|)))
)))
(assert (forall ((x@@13 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@13)) (Lit BoxType ($Box T@@5 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4656|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@13)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |4862|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((h@@7 T@U) (v@@24 T@U) ) (! ($IsAlloc intType v@@24 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4701|
 :pattern ( ($IsAlloc intType v@@24 TInt h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@25 T@U) ) (! ($IsAlloc realType v@@25 TReal h@@8)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |4702|
 :pattern ( ($IsAlloc realType v@@25 TReal h@@8))
)))
(assert (forall ((h@@9 T@U) (v@@26 T@U) ) (! ($IsAlloc boolType v@@26 TBool h@@9)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |4703|
 :pattern ( ($IsAlloc boolType v@@26 TBool h@@9))
)))
(assert (forall ((_module.Stream$G@@6 T@U) (|a#2#0#0@@4| T@U) (|a#2#1#0@@2| T@U) ($h@@23 T@U) ) (!  (=> ($IsGoodHeap $h@@23) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Next| |a#2#0#0@@4| |a#2#1#0@@2|) (Tclass._module.Stream _module.Stream$G@@6) $h@@23)  (and ($IsAllocBox |a#2#0#0@@4| _module.Stream$G@@6 $h@@23) ($IsAlloc DatatypeTypeType |a#2#1#0@@2| (Tclass._module.Stream _module.Stream$G@@6) $h@@23))))
 :qid |unknown.0:0|
 :skolemid |5349|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Next| |a#2#0#0@@4| |a#2#1#0@@2|) (Tclass._module.Stream _module.Stream$G@@6) $h@@23))
)))
(assert (forall ((v@@27 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@27 (TSeq t0@@6)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@27))) ($IsBox (|Seq#Index| v@@27 i@@0) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |4693|
 :pattern ( (|Seq#Index| v@@27 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |4694|
 :pattern ( ($Is SeqType v@@27 (TSeq t0@@6)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@3 T@U) (v@@28 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@28)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |4917|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |4918|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@2 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |4907|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))))
)))
(assert (forall ((v@@29 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@29 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@29) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@29) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@29) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |4697|
 :pattern ( ($Is MapType v@@29 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@30 T@U) ) (! ($Is intType v@@30 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4680|
 :pattern ( ($Is intType v@@30 TInt))
)))
(assert (forall ((v@@31 T@U) ) (! ($Is realType v@@31 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |4681|
 :pattern ( ($Is realType v@@31 TReal))
)))
(assert (forall ((v@@32 T@U) ) (! ($Is boolType v@@32 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |4682|
 :pattern ( ($Is boolType v@@32 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |w##0@0| () (_ BitVec 8))
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@_module.WClass$W () T@U)
(declare-fun call0formal@_module.WClass$W@0 () T@U)
(declare-fun |call1formal@w#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call3formal@this@0 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |x0#0@0| () T@U)
(declare-fun |x4#0@0| () T@U)
(declare-fun |null2#0@0| () T@U)
(declare-fun |null2'#0@0| () T@U)
(declare-fun |null4#0@0| () T@U)
(declare-fun |null4'#0@0| () T@U)
(declare-fun |_module.__default.Same#canCall| (T@U T@U T@U) Bool)
(declare-fun |##a1#1@0| () T@U)
(declare-fun |##a0#2@0| () T@U)
(declare-fun |##a0#3@0| () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |m#0@1| () T@U)
(declare-fun |m#0@2| () T@U)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@5| () T@U)
(declare-fun |x0#0| () T@U)
(declare-fun |x4#0| () T@U)
(declare-fun |null2#0| () T@U)
(declare-fun |null2'#0| () T@U)
(declare-fun |null4#0| () T@U)
(declare-fun |null4'#0| () T@U)
(declare-fun |m#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon0_correct  (=> (and (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |w##0@0| (U_2_bv8 (Lit bv8Type (bv8_2_U #x03))))) (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass._module.WClass call0formal@_module.WClass$W)) ($IsAlloc refType call3formal@this (Tclass._module.WClass call0formal@_module.WClass$W) $Heap)))) (and (and (= call0formal@_module.WClass$W@0 (TBitvector 8)) (= |call1formal@w#0@0| ($Box bv8Type (bv8_2_U |w##0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass._module.WClass call0formal@_module.WClass$W@0)) ($IsAlloc refType call3formal@this@0 (Tclass._module.WClass call0formal@_module.WClass$W@0) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0) alloc))))) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12)))
 :qid |AutoInitdfy.11:15|
 :skolemid |5374|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= call3formal@this@0 null)) (not true))) (=> (and (and (_module.Stream.Next_q (_module.WClass.strm (TBitvector 8) call3formal@this@0)) (_module.Stream.Next_q (_module.Stream.tail (_module.WClass.strm (TBitvector 8) call3formal@this@0)))) (and (_module.Stream.Next_q (_module.WClass.strm (TBitvector 8) call3formal@this@0)) (_module.Stream.Next_q (_module.Stream.tail (_module.WClass.strm (TBitvector 8) call3formal@this@0))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= call3formal@this@0 null)) (not true))) (=> (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.WClass.pair))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.WClass.pair)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= call3formal@this@0 null)) (not true))) (=> (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.WClass.pair))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.WClass.pair)))) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Class) ($IsAlloc refType call1formal@this Tclass._module.Class $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Class) ($IsAlloc refType call1formal@this@0 Tclass._module.Class $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) alloc))))) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13)))
 :qid |AutoInitdfy.26:3|
 :skolemid |5411|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= call1formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= call1formal@this@0 null)) (not true))) (=> (and (_module.Cell.Cell_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.Class.cell))) (_module.Cell.Cell_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.Class.cell)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= call1formal@this@0 null)) (not true))) (=> (and (and (and (and ($Is DatatypeTypeType |x0#0@0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |x0#0@0| Tclass._System.Tuple0 $Heap@1)) (and ($Is DatatypeTypeType |x4#0@0| (Tclass._System.Tuple4 TInt TBool TBool (TSeq TReal))) ($IsAlloc DatatypeTypeType |x4#0@0| (Tclass._System.Tuple4 TInt TBool TBool (TSeq TReal)) $Heap@1))) (and (and ($Is DatatypeTypeType |null2#0@0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null2#0@0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) $Heap@1)) (and ($Is DatatypeTypeType |null2'#0@0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null2'#0@0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) $Heap@1)))) (and (and (and (|$IsA#_System.Tuple2| |null2#0@0|) (|$IsA#_System.Tuple2| |null2'#0@0|)) (and ($Is DatatypeTypeType |null4#0@0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null4#0@0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt)) $Heap@1))) (and (and ($Is DatatypeTypeType |null4'#0@0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null4'#0@0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt)) $Heap@1)) (and (|$IsA#_System.Tuple4| |null4#0@0|) (|$IsA#_System.Tuple4| |null4'#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (_System.Tuple4.___hMake4_q |null4#0@0|) (=> (and (_System.Tuple4.___hMake4_q |null4#0@0|) (_System.Tuple4.___hMake4_q |null4#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (=> (_System.Tuple4.___hMake4_q |null4#0@0|) (=> (and (_System.Tuple4.___hMake4_q |null4#0@0|) (_System.Tuple4.___hMake4_q |null4#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (=> ($IsAlloc refType call1formal@this@0 Tclass._module.Class $Heap@1) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> ($IsAlloc refType call1formal@this@0 Tclass._module.Class $Heap@1) (=> (and (|_module.__default.Same#canCall| Tclass._module.Class ($Box refType call1formal@this@0) ($Box refType call1formal@this@0)) (|_module.__default.Same#canCall| Tclass._module.Class ($Box refType call1formal@this@0) ($Box refType call1formal@this@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> ($IsAlloc refType call1formal@this@0 Tclass._module.Class? $Heap@1) (=> (and (and (_System.Tuple4.___hMake4_q |null4#0@0|) (= |##a1#1@0| ($Unbox refType (_System.Tuple4._1 |null4#0@0|)))) (and ($IsAlloc refType |##a1#1@0| Tclass._module.Class? $Heap@1) (|_module.__default.Same#canCall| Tclass._module.Class? ($Box refType call1formal@this@0) (_System.Tuple4._1 |null4#0@0|)))) (=> (and (and (and (_System.Tuple4.___hMake4_q |null4#0@0|) (|_module.__default.Same#canCall| Tclass._module.Class? ($Box refType call1formal@this@0) (_System.Tuple4._1 |null4#0@0|))) (_System.Tuple4.___hMake4_q |null4#0@0|)) (and (= |##a0#2@0| ($Unbox refType (_System.Tuple4._1 |null4#0@0|))) ($IsAlloc refType |##a0#2@0| Tclass._module.Class? $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and ($IsAlloc refType call1formal@this@0 Tclass._module.Class? $Heap@1) (|_module.__default.Same#canCall| Tclass._module.Class? (_System.Tuple4._1 |null4#0@0|) ($Box refType call1formal@this@0))) (=> (and (and (and (and (and (_System.Tuple4.___hMake4_q |null4#0@0|) (|_module.__default.Same#canCall| Tclass._module.Class? (_System.Tuple4._1 |null4#0@0|) ($Box refType call1formal@this@0))) (_System.Tuple4.___hMake4_q |null4#0@0|)) (and (= |##a0#3@0| ($Unbox refType (_System.Tuple4._1 |null4#0@0|))) ($IsAlloc refType |##a0#3@0| Tclass._module.Class? $Heap@1))) (and (and ($IsAlloc refType null Tclass._module.Class? $Heap@1) (|_module.__default.Same#canCall| Tclass._module.Class? (_System.Tuple4._1 |null4#0@0|) ($Box refType null))) (and (_System.Tuple4.___hMake4_q |null4#0@0|) (|_module.__default.Same#canCall| Tclass._module.Class? (_System.Tuple4._1 |null4#0@0|) ($Box refType null))))) (and (and (and ($Is MapType |m#0@0| (TMap (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) TInt)) ($IsAlloc MapType |m#0@0| (TMap (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) TInt) $Heap@1)) (= |m#0@1| (|Map#Build| |m#0@0| ($Box DatatypeTypeType |null2#0@0|) ($Box intType (int_2_U (LitInt 15)))))) (and (= |m#0@2| (|Map#Build| |m#0@1| ($Box DatatypeTypeType |null2'#0@0|) ($Box intType (int_2_U (LitInt 17))))) (= (ControlFlow 0 2) (- 0 1))))) (|Set#IsMember| (|Map#Domain| |m#0@2|) ($Box DatatypeTypeType |null2#0@0|))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#w#0| (and ($Is refType |w#0| (Tclass._module.WClass (TBitvector 8))) ($IsAlloc refType |w#0| (Tclass._module.WClass (TBitvector 8)) $Heap))) true) (and (=> |defass#c#0| (and ($Is refType |c#0@@5| Tclass._module.Class) ($IsAlloc refType |c#0@@5| Tclass._module.Class $Heap))) true)) (=> (and (and (and (and (and ($Is DatatypeTypeType |x0#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |x0#0| Tclass._System.Tuple0 $Heap)) true) (and (and ($Is DatatypeTypeType |x4#0| (Tclass._System.Tuple4 TInt TBool TBool (TSeq TReal))) ($IsAlloc DatatypeTypeType |x4#0| (Tclass._System.Tuple4 TInt TBool TBool (TSeq TReal)) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |null2#0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null2#0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) $Heap)) true) (and (and ($Is DatatypeTypeType |null2'#0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null2'#0| (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |null4#0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null4#0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt)) $Heap)) true) (and (and ($Is DatatypeTypeType |null4'#0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt))) ($IsAlloc DatatypeTypeType |null4'#0| (Tclass._System.Tuple4 Tclass._module.SomeObject? Tclass._module.Class? (Tclass._module.WClass? TBool) (Tclass._module.Cell TInt)) $Heap)) true)) (and (and (and ($Is MapType |m#0| (TMap (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) TInt)) ($IsAlloc MapType |m#0| (TMap (Tclass._System.Tuple2 Tclass._module.SomeObject? (Tclass._module.Cell TInt)) TInt) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 23) 2))))) anon0_correct)))))
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
