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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TypeDescriptorInDatatypeValue.Datatype () T@U)
(declare-fun Tagclass.TypeDescriptorInDatatypeValue.Wrapper () T@U)
(declare-fun Tagclass.TypeDescriptorInDatatypeValue.Stream () T@U)
(declare-fun Tagclass.TypeDescriptorInDatatypeValue.ContraStream () T@U)
(declare-fun Tagclass.TypeDescriptorInDatatypeValue.CoEnum () T@U)
(declare-fun tytagFamily$Datatype () T@U)
(declare-fun tytagFamily$Wrapper () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$ContraStream () T@U)
(declare-fun tytagFamily$CoEnum () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Datatype (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Datatype_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Datatype_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Datatype_2 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Datatype_3 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Wrapper (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Wrapper_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Wrapper_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Wrapper_2 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Wrapper_3 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Stream (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Stream_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Stream_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Stream_2 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.Stream_3 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.ContraStream (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.ContraStream_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.ContraStream_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.ContraStream_2 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.ContraStream_3 (T@U) T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.TypeDescriptorInDatatypeValue.CoEnum () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun charType () T@T)
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
(assert (distinct TBool TChar TInt TReal TagBool TagChar TagInt TagReal alloc Tagclass.TypeDescriptorInDatatypeValue.Datatype Tagclass.TypeDescriptorInDatatypeValue.Wrapper Tagclass.TypeDescriptorInDatatypeValue.Stream Tagclass.TypeDescriptorInDatatypeValue.ContraStream Tagclass.TypeDescriptorInDatatypeValue.CoEnum tytagFamily$Datatype tytagFamily$Wrapper tytagFamily$Stream tytagFamily$ContraStream tytagFamily$CoEnum)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((TypeDescriptorInDatatypeValue.Datatype$A T@U) (TypeDescriptorInDatatypeValue.Datatype$B T@U) (TypeDescriptorInDatatypeValue.Datatype$C T@U) (TypeDescriptorInDatatypeValue.Datatype$D T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Datatype_0 (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A TypeDescriptorInDatatypeValue.Datatype$B TypeDescriptorInDatatypeValue.Datatype$C TypeDescriptorInDatatypeValue.Datatype$D)) TypeDescriptorInDatatypeValue.Datatype$A)
 :qid |unknown.0:0|
 :skolemid |3756|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A TypeDescriptorInDatatypeValue.Datatype$B TypeDescriptorInDatatypeValue.Datatype$C TypeDescriptorInDatatypeValue.Datatype$D))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Datatype$A@@0 T@U) (TypeDescriptorInDatatypeValue.Datatype$B@@0 T@U) (TypeDescriptorInDatatypeValue.Datatype$C@@0 T@U) (TypeDescriptorInDatatypeValue.Datatype$D@@0 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Datatype_1 (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@0 TypeDescriptorInDatatypeValue.Datatype$B@@0 TypeDescriptorInDatatypeValue.Datatype$C@@0 TypeDescriptorInDatatypeValue.Datatype$D@@0)) TypeDescriptorInDatatypeValue.Datatype$B@@0)
 :qid |unknown.0:0|
 :skolemid |3757|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@0 TypeDescriptorInDatatypeValue.Datatype$B@@0 TypeDescriptorInDatatypeValue.Datatype$C@@0 TypeDescriptorInDatatypeValue.Datatype$D@@0))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Datatype$A@@1 T@U) (TypeDescriptorInDatatypeValue.Datatype$B@@1 T@U) (TypeDescriptorInDatatypeValue.Datatype$C@@1 T@U) (TypeDescriptorInDatatypeValue.Datatype$D@@1 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Datatype_2 (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@1 TypeDescriptorInDatatypeValue.Datatype$B@@1 TypeDescriptorInDatatypeValue.Datatype$C@@1 TypeDescriptorInDatatypeValue.Datatype$D@@1)) TypeDescriptorInDatatypeValue.Datatype$C@@1)
 :qid |unknown.0:0|
 :skolemid |3758|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@1 TypeDescriptorInDatatypeValue.Datatype$B@@1 TypeDescriptorInDatatypeValue.Datatype$C@@1 TypeDescriptorInDatatypeValue.Datatype$D@@1))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Datatype$A@@2 T@U) (TypeDescriptorInDatatypeValue.Datatype$B@@2 T@U) (TypeDescriptorInDatatypeValue.Datatype$C@@2 T@U) (TypeDescriptorInDatatypeValue.Datatype$D@@2 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Datatype_3 (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@2 TypeDescriptorInDatatypeValue.Datatype$B@@2 TypeDescriptorInDatatypeValue.Datatype$C@@2 TypeDescriptorInDatatypeValue.Datatype$D@@2)) TypeDescriptorInDatatypeValue.Datatype$D@@2)
 :qid |unknown.0:0|
 :skolemid |3759|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@2 TypeDescriptorInDatatypeValue.Datatype$B@@2 TypeDescriptorInDatatypeValue.Datatype$C@@2 TypeDescriptorInDatatypeValue.Datatype$D@@2))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Wrapper$A T@U) (TypeDescriptorInDatatypeValue.Wrapper$B T@U) (TypeDescriptorInDatatypeValue.Wrapper$C T@U) (TypeDescriptorInDatatypeValue.Wrapper$D T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Wrapper_0 (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A TypeDescriptorInDatatypeValue.Wrapper$B TypeDescriptorInDatatypeValue.Wrapper$C TypeDescriptorInDatatypeValue.Wrapper$D)) TypeDescriptorInDatatypeValue.Wrapper$A)
 :qid |unknown.0:0|
 :skolemid |3763|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A TypeDescriptorInDatatypeValue.Wrapper$B TypeDescriptorInDatatypeValue.Wrapper$C TypeDescriptorInDatatypeValue.Wrapper$D))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Wrapper$A@@0 T@U) (TypeDescriptorInDatatypeValue.Wrapper$B@@0 T@U) (TypeDescriptorInDatatypeValue.Wrapper$C@@0 T@U) (TypeDescriptorInDatatypeValue.Wrapper$D@@0 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Wrapper_1 (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@0 TypeDescriptorInDatatypeValue.Wrapper$B@@0 TypeDescriptorInDatatypeValue.Wrapper$C@@0 TypeDescriptorInDatatypeValue.Wrapper$D@@0)) TypeDescriptorInDatatypeValue.Wrapper$B@@0)
 :qid |unknown.0:0|
 :skolemid |3764|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@0 TypeDescriptorInDatatypeValue.Wrapper$B@@0 TypeDescriptorInDatatypeValue.Wrapper$C@@0 TypeDescriptorInDatatypeValue.Wrapper$D@@0))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Wrapper$A@@1 T@U) (TypeDescriptorInDatatypeValue.Wrapper$B@@1 T@U) (TypeDescriptorInDatatypeValue.Wrapper$C@@1 T@U) (TypeDescriptorInDatatypeValue.Wrapper$D@@1 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Wrapper_2 (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@1 TypeDescriptorInDatatypeValue.Wrapper$B@@1 TypeDescriptorInDatatypeValue.Wrapper$C@@1 TypeDescriptorInDatatypeValue.Wrapper$D@@1)) TypeDescriptorInDatatypeValue.Wrapper$C@@1)
 :qid |unknown.0:0|
 :skolemid |3765|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@1 TypeDescriptorInDatatypeValue.Wrapper$B@@1 TypeDescriptorInDatatypeValue.Wrapper$C@@1 TypeDescriptorInDatatypeValue.Wrapper$D@@1))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Wrapper$A@@2 T@U) (TypeDescriptorInDatatypeValue.Wrapper$B@@2 T@U) (TypeDescriptorInDatatypeValue.Wrapper$C@@2 T@U) (TypeDescriptorInDatatypeValue.Wrapper$D@@2 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Wrapper_3 (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@2 TypeDescriptorInDatatypeValue.Wrapper$B@@2 TypeDescriptorInDatatypeValue.Wrapper$C@@2 TypeDescriptorInDatatypeValue.Wrapper$D@@2)) TypeDescriptorInDatatypeValue.Wrapper$D@@2)
 :qid |unknown.0:0|
 :skolemid |3766|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@2 TypeDescriptorInDatatypeValue.Wrapper$B@@2 TypeDescriptorInDatatypeValue.Wrapper$C@@2 TypeDescriptorInDatatypeValue.Wrapper$D@@2))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Stream$A T@U) (TypeDescriptorInDatatypeValue.Stream$B T@U) (TypeDescriptorInDatatypeValue.Stream$C T@U) (TypeDescriptorInDatatypeValue.Stream$D T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Stream_0 (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A TypeDescriptorInDatatypeValue.Stream$B TypeDescriptorInDatatypeValue.Stream$C TypeDescriptorInDatatypeValue.Stream$D)) TypeDescriptorInDatatypeValue.Stream$A)
 :qid |unknown.0:0|
 :skolemid |3770|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A TypeDescriptorInDatatypeValue.Stream$B TypeDescriptorInDatatypeValue.Stream$C TypeDescriptorInDatatypeValue.Stream$D))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Stream$A@@0 T@U) (TypeDescriptorInDatatypeValue.Stream$B@@0 T@U) (TypeDescriptorInDatatypeValue.Stream$C@@0 T@U) (TypeDescriptorInDatatypeValue.Stream$D@@0 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Stream_1 (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@0 TypeDescriptorInDatatypeValue.Stream$B@@0 TypeDescriptorInDatatypeValue.Stream$C@@0 TypeDescriptorInDatatypeValue.Stream$D@@0)) TypeDescriptorInDatatypeValue.Stream$B@@0)
 :qid |unknown.0:0|
 :skolemid |3771|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@0 TypeDescriptorInDatatypeValue.Stream$B@@0 TypeDescriptorInDatatypeValue.Stream$C@@0 TypeDescriptorInDatatypeValue.Stream$D@@0))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Stream$A@@1 T@U) (TypeDescriptorInDatatypeValue.Stream$B@@1 T@U) (TypeDescriptorInDatatypeValue.Stream$C@@1 T@U) (TypeDescriptorInDatatypeValue.Stream$D@@1 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Stream_2 (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@1 TypeDescriptorInDatatypeValue.Stream$B@@1 TypeDescriptorInDatatypeValue.Stream$C@@1 TypeDescriptorInDatatypeValue.Stream$D@@1)) TypeDescriptorInDatatypeValue.Stream$C@@1)
 :qid |unknown.0:0|
 :skolemid |3772|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@1 TypeDescriptorInDatatypeValue.Stream$B@@1 TypeDescriptorInDatatypeValue.Stream$C@@1 TypeDescriptorInDatatypeValue.Stream$D@@1))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Stream$A@@2 T@U) (TypeDescriptorInDatatypeValue.Stream$B@@2 T@U) (TypeDescriptorInDatatypeValue.Stream$C@@2 T@U) (TypeDescriptorInDatatypeValue.Stream$D@@2 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.Stream_3 (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@2 TypeDescriptorInDatatypeValue.Stream$B@@2 TypeDescriptorInDatatypeValue.Stream$C@@2 TypeDescriptorInDatatypeValue.Stream$D@@2)) TypeDescriptorInDatatypeValue.Stream$D@@2)
 :qid |unknown.0:0|
 :skolemid |3773|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@2 TypeDescriptorInDatatypeValue.Stream$B@@2 TypeDescriptorInDatatypeValue.Stream$C@@2 TypeDescriptorInDatatypeValue.Stream$D@@2))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.ContraStream$A T@U) (TypeDescriptorInDatatypeValue.ContraStream$B T@U) (TypeDescriptorInDatatypeValue.ContraStream$C T@U) (TypeDescriptorInDatatypeValue.ContraStream$D T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.ContraStream_0 (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A TypeDescriptorInDatatypeValue.ContraStream$B TypeDescriptorInDatatypeValue.ContraStream$C TypeDescriptorInDatatypeValue.ContraStream$D)) TypeDescriptorInDatatypeValue.ContraStream$A)
 :qid |unknown.0:0|
 :skolemid |3777|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A TypeDescriptorInDatatypeValue.ContraStream$B TypeDescriptorInDatatypeValue.ContraStream$C TypeDescriptorInDatatypeValue.ContraStream$D))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.ContraStream$A@@0 T@U) (TypeDescriptorInDatatypeValue.ContraStream$B@@0 T@U) (TypeDescriptorInDatatypeValue.ContraStream$C@@0 T@U) (TypeDescriptorInDatatypeValue.ContraStream$D@@0 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.ContraStream_1 (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@0 TypeDescriptorInDatatypeValue.ContraStream$B@@0 TypeDescriptorInDatatypeValue.ContraStream$C@@0 TypeDescriptorInDatatypeValue.ContraStream$D@@0)) TypeDescriptorInDatatypeValue.ContraStream$B@@0)
 :qid |unknown.0:0|
 :skolemid |3778|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@0 TypeDescriptorInDatatypeValue.ContraStream$B@@0 TypeDescriptorInDatatypeValue.ContraStream$C@@0 TypeDescriptorInDatatypeValue.ContraStream$D@@0))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.ContraStream$A@@1 T@U) (TypeDescriptorInDatatypeValue.ContraStream$B@@1 T@U) (TypeDescriptorInDatatypeValue.ContraStream$C@@1 T@U) (TypeDescriptorInDatatypeValue.ContraStream$D@@1 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.ContraStream_2 (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@1 TypeDescriptorInDatatypeValue.ContraStream$B@@1 TypeDescriptorInDatatypeValue.ContraStream$C@@1 TypeDescriptorInDatatypeValue.ContraStream$D@@1)) TypeDescriptorInDatatypeValue.ContraStream$C@@1)
 :qid |unknown.0:0|
 :skolemid |3779|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@1 TypeDescriptorInDatatypeValue.ContraStream$B@@1 TypeDescriptorInDatatypeValue.ContraStream$C@@1 TypeDescriptorInDatatypeValue.ContraStream$D@@1))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.ContraStream$A@@2 T@U) (TypeDescriptorInDatatypeValue.ContraStream$B@@2 T@U) (TypeDescriptorInDatatypeValue.ContraStream$C@@2 T@U) (TypeDescriptorInDatatypeValue.ContraStream$D@@2 T@U) ) (! (= (Tclass.TypeDescriptorInDatatypeValue.ContraStream_3 (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@2 TypeDescriptorInDatatypeValue.ContraStream$B@@2 TypeDescriptorInDatatypeValue.ContraStream$C@@2 TypeDescriptorInDatatypeValue.ContraStream$D@@2)) TypeDescriptorInDatatypeValue.ContraStream$D@@2)
 :qid |unknown.0:0|
 :skolemid |3780|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@2 TypeDescriptorInDatatypeValue.ContraStream$B@@2 TypeDescriptorInDatatypeValue.ContraStream$C@@2 TypeDescriptorInDatatypeValue.ContraStream$D@@2))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3219|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3220|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Datatype$A@@3 T@U) (TypeDescriptorInDatatypeValue.Datatype$B@@3 T@U) (TypeDescriptorInDatatypeValue.Datatype$C@@3 T@U) (TypeDescriptorInDatatypeValue.Datatype$D@@3 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@3 TypeDescriptorInDatatypeValue.Datatype$B@@3 TypeDescriptorInDatatypeValue.Datatype$C@@3 TypeDescriptorInDatatypeValue.Datatype$D@@3)) Tagclass.TypeDescriptorInDatatypeValue.Datatype) (= (TagFamily (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@3 TypeDescriptorInDatatypeValue.Datatype$B@@3 TypeDescriptorInDatatypeValue.Datatype$C@@3 TypeDescriptorInDatatypeValue.Datatype$D@@3)) tytagFamily$Datatype))
 :qid |unknown.0:0|
 :skolemid |3755|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Datatype TypeDescriptorInDatatypeValue.Datatype$A@@3 TypeDescriptorInDatatypeValue.Datatype$B@@3 TypeDescriptorInDatatypeValue.Datatype$C@@3 TypeDescriptorInDatatypeValue.Datatype$D@@3))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Wrapper$A@@3 T@U) (TypeDescriptorInDatatypeValue.Wrapper$B@@3 T@U) (TypeDescriptorInDatatypeValue.Wrapper$C@@3 T@U) (TypeDescriptorInDatatypeValue.Wrapper$D@@3 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@3 TypeDescriptorInDatatypeValue.Wrapper$B@@3 TypeDescriptorInDatatypeValue.Wrapper$C@@3 TypeDescriptorInDatatypeValue.Wrapper$D@@3)) Tagclass.TypeDescriptorInDatatypeValue.Wrapper) (= (TagFamily (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@3 TypeDescriptorInDatatypeValue.Wrapper$B@@3 TypeDescriptorInDatatypeValue.Wrapper$C@@3 TypeDescriptorInDatatypeValue.Wrapper$D@@3)) tytagFamily$Wrapper))
 :qid |unknown.0:0|
 :skolemid |3762|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Wrapper TypeDescriptorInDatatypeValue.Wrapper$A@@3 TypeDescriptorInDatatypeValue.Wrapper$B@@3 TypeDescriptorInDatatypeValue.Wrapper$C@@3 TypeDescriptorInDatatypeValue.Wrapper$D@@3))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.Stream$A@@3 T@U) (TypeDescriptorInDatatypeValue.Stream$B@@3 T@U) (TypeDescriptorInDatatypeValue.Stream$C@@3 T@U) (TypeDescriptorInDatatypeValue.Stream$D@@3 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@3 TypeDescriptorInDatatypeValue.Stream$B@@3 TypeDescriptorInDatatypeValue.Stream$C@@3 TypeDescriptorInDatatypeValue.Stream$D@@3)) Tagclass.TypeDescriptorInDatatypeValue.Stream) (= (TagFamily (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@3 TypeDescriptorInDatatypeValue.Stream$B@@3 TypeDescriptorInDatatypeValue.Stream$C@@3 TypeDescriptorInDatatypeValue.Stream$D@@3)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |3769|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.Stream TypeDescriptorInDatatypeValue.Stream$A@@3 TypeDescriptorInDatatypeValue.Stream$B@@3 TypeDescriptorInDatatypeValue.Stream$C@@3 TypeDescriptorInDatatypeValue.Stream$D@@3))
)))
(assert (forall ((TypeDescriptorInDatatypeValue.ContraStream$A@@3 T@U) (TypeDescriptorInDatatypeValue.ContraStream$B@@3 T@U) (TypeDescriptorInDatatypeValue.ContraStream$C@@3 T@U) (TypeDescriptorInDatatypeValue.ContraStream$D@@3 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@3 TypeDescriptorInDatatypeValue.ContraStream$B@@3 TypeDescriptorInDatatypeValue.ContraStream$C@@3 TypeDescriptorInDatatypeValue.ContraStream$D@@3)) Tagclass.TypeDescriptorInDatatypeValue.ContraStream) (= (TagFamily (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@3 TypeDescriptorInDatatypeValue.ContraStream$B@@3 TypeDescriptorInDatatypeValue.ContraStream$C@@3 TypeDescriptorInDatatypeValue.ContraStream$D@@3)) tytagFamily$ContraStream))
 :qid |unknown.0:0|
 :skolemid |3776|
 :pattern ( (Tclass.TypeDescriptorInDatatypeValue.ContraStream TypeDescriptorInDatatypeValue.ContraStream$A@@3 TypeDescriptorInDatatypeValue.ContraStream$B@@3 TypeDescriptorInDatatypeValue.ContraStream$C@@3 TypeDescriptorInDatatypeValue.ContraStream$D@@3))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3127|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3211|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3218|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3126|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6054|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d Tclass.TypeDescriptorInDatatypeValue.CoEnum)) ($IsAlloc DatatypeTypeType d Tclass.TypeDescriptorInDatatypeValue.CoEnum $h))
 :qid |unknown.0:0|
 :skolemid |3906|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass.TypeDescriptorInDatatypeValue.CoEnum $h))
)))
(assert (= (Tag Tclass.TypeDescriptorInDatatypeValue.CoEnum) Tagclass.TypeDescriptorInDatatypeValue.CoEnum))
(assert (= (TagFamily Tclass.TypeDescriptorInDatatypeValue.CoEnum) tytagFamily$CoEnum))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3162|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@1 T@U) ) (! ($IsAlloc realType v@@1 TReal h@@2)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |3163|
 :pattern ( ($IsAlloc realType v@@1 TReal h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3164|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@3))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |3165|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3141|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |3142|
 :pattern ( ($Is realType v@@5 TReal))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |3143|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |3144|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$TypeDescriptorInDatatypeValue.__default.Test)
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
