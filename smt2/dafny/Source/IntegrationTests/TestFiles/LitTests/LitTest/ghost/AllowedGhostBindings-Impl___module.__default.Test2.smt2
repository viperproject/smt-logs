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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#11OOOOOOOOOOG._#Make11| () T@U)
(declare-fun Tagclass._System.Tuple11OOOOOOOOOOG () T@U)
(declare-fun |tytagFamily$_tuple#11OOOOOOOOOOG| () T@U)
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
(declare-fun |#_System._tuple#11OOOOOOOOOOG._#Make11| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#_System.Tuple11OOOOOOOOOOG| (T@U) Bool)
(declare-fun _System.Tuple11OOOOOOOOOOG.___hMake11_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_3 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_4 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_5 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_6 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_7 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_8 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_9 (T@U) T@U)
(declare-fun Tclass._System.Tuple11OOOOOOOOOOG_10 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._0 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._1 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._2 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._3 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._4 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._5 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._6 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._7 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._8 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._9 (T@U) T@U)
(declare-fun _System.Tuple11OOOOOOOOOOG._10 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_System.Tuple11OOOOOOOOOOG#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt alloc |##_System._tuple#11OOOOOOOOOOG._#Make11| Tagclass._System.Tuple11OOOOOOOOOOG |tytagFamily$_tuple#11OOOOOOOOOOG|)
)
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) (|a#49#2#0| T@U) (|a#49#3#0| T@U) (|a#49#4#0| T@U) (|a#49#5#0| T@U) (|a#49#6#0| T@U) (|a#49#7#0| T@U) (|a#49#8#0| T@U) (|a#49#9#0| T@U) (|a#49#10#0| T@U) ) (! (< (BoxRank |a#49#0#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#49#0#0| |a#49#1#0| |a#49#2#0| |a#49#3#0| |a#49#4#0| |a#49#5#0| |a#49#6#0| |a#49#7#0| |a#49#8#0| |a#49#9#0| |a#49#10#0|)))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#49#0#0| |a#49#1#0| |a#49#2#0| |a#49#3#0| |a#49#4#0| |a#49#5#0| |a#49#6#0| |a#49#7#0| |a#49#8#0| |a#49#9#0| |a#49#10#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (|a#51#2#0| T@U) (|a#51#3#0| T@U) (|a#51#4#0| T@U) (|a#51#5#0| T@U) (|a#51#6#0| T@U) (|a#51#7#0| T@U) (|a#51#8#0| T@U) (|a#51#9#0| T@U) (|a#51#10#0| T@U) ) (! (< (BoxRank |a#51#1#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0| |a#51#4#0| |a#51#5#0| |a#51#6#0| |a#51#7#0| |a#51#8#0| |a#51#9#0| |a#51#10#0|)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0| |a#51#4#0| |a#51#5#0| |a#51#6#0| |a#51#7#0| |a#51#8#0| |a#51#9#0| |a#51#10#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) (|a#53#2#0| T@U) (|a#53#3#0| T@U) (|a#53#4#0| T@U) (|a#53#5#0| T@U) (|a#53#6#0| T@U) (|a#53#7#0| T@U) (|a#53#8#0| T@U) (|a#53#9#0| T@U) (|a#53#10#0| T@U) ) (! (< (BoxRank |a#53#2#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0| |a#53#4#0| |a#53#5#0| |a#53#6#0| |a#53#7#0| |a#53#8#0| |a#53#9#0| |a#53#10#0|)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0| |a#53#4#0| |a#53#5#0| |a#53#6#0| |a#53#7#0| |a#53#8#0| |a#53#9#0| |a#53#10#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) (|a#55#2#0| T@U) (|a#55#3#0| T@U) (|a#55#4#0| T@U) (|a#55#5#0| T@U) (|a#55#6#0| T@U) (|a#55#7#0| T@U) (|a#55#8#0| T@U) (|a#55#9#0| T@U) (|a#55#10#0| T@U) ) (! (< (BoxRank |a#55#3#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0| |a#55#4#0| |a#55#5#0| |a#55#6#0| |a#55#7#0| |a#55#8#0| |a#55#9#0| |a#55#10#0|)))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0| |a#55#4#0| |a#55#5#0| |a#55#6#0| |a#55#7#0| |a#55#8#0| |a#55#9#0| |a#55#10#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) (|a#57#3#0| T@U) (|a#57#4#0| T@U) (|a#57#5#0| T@U) (|a#57#6#0| T@U) (|a#57#7#0| T@U) (|a#57#8#0| T@U) (|a#57#9#0| T@U) (|a#57#10#0| T@U) ) (! (< (BoxRank |a#57#4#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#57#0#0| |a#57#1#0| |a#57#2#0| |a#57#3#0| |a#57#4#0| |a#57#5#0| |a#57#6#0| |a#57#7#0| |a#57#8#0| |a#57#9#0| |a#57#10#0|)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#57#0#0| |a#57#1#0| |a#57#2#0| |a#57#3#0| |a#57#4#0| |a#57#5#0| |a#57#6#0| |a#57#7#0| |a#57#8#0| |a#57#9#0| |a#57#10#0|))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) (|a#59#3#0| T@U) (|a#59#4#0| T@U) (|a#59#5#0| T@U) (|a#59#6#0| T@U) (|a#59#7#0| T@U) (|a#59#8#0| T@U) (|a#59#9#0| T@U) (|a#59#10#0| T@U) ) (! (< (BoxRank |a#59#5#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#59#0#0| |a#59#1#0| |a#59#2#0| |a#59#3#0| |a#59#4#0| |a#59#5#0| |a#59#6#0| |a#59#7#0| |a#59#8#0| |a#59#9#0| |a#59#10#0|)))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#59#0#0| |a#59#1#0| |a#59#2#0| |a#59#3#0| |a#59#4#0| |a#59#5#0| |a#59#6#0| |a#59#7#0| |a#59#8#0| |a#59#9#0| |a#59#10#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) (|a#61#3#0| T@U) (|a#61#4#0| T@U) (|a#61#5#0| T@U) (|a#61#6#0| T@U) (|a#61#7#0| T@U) (|a#61#8#0| T@U) (|a#61#9#0| T@U) (|a#61#10#0| T@U) ) (! (< (BoxRank |a#61#6#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#61#0#0| |a#61#1#0| |a#61#2#0| |a#61#3#0| |a#61#4#0| |a#61#5#0| |a#61#6#0| |a#61#7#0| |a#61#8#0| |a#61#9#0| |a#61#10#0|)))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#61#0#0| |a#61#1#0| |a#61#2#0| |a#61#3#0| |a#61#4#0| |a#61#5#0| |a#61#6#0| |a#61#7#0| |a#61#8#0| |a#61#9#0| |a#61#10#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) (|a#63#3#0| T@U) (|a#63#4#0| T@U) (|a#63#5#0| T@U) (|a#63#6#0| T@U) (|a#63#7#0| T@U) (|a#63#8#0| T@U) (|a#63#9#0| T@U) (|a#63#10#0| T@U) ) (! (< (BoxRank |a#63#7#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#63#0#0| |a#63#1#0| |a#63#2#0| |a#63#3#0| |a#63#4#0| |a#63#5#0| |a#63#6#0| |a#63#7#0| |a#63#8#0| |a#63#9#0| |a#63#10#0|)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#63#0#0| |a#63#1#0| |a#63#2#0| |a#63#3#0| |a#63#4#0| |a#63#5#0| |a#63#6#0| |a#63#7#0| |a#63#8#0| |a#63#9#0| |a#63#10#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) (|a#65#3#0| T@U) (|a#65#4#0| T@U) (|a#65#5#0| T@U) (|a#65#6#0| T@U) (|a#65#7#0| T@U) (|a#65#8#0| T@U) (|a#65#9#0| T@U) (|a#65#10#0| T@U) ) (! (< (BoxRank |a#65#8#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#65#0#0| |a#65#1#0| |a#65#2#0| |a#65#3#0| |a#65#4#0| |a#65#5#0| |a#65#6#0| |a#65#7#0| |a#65#8#0| |a#65#9#0| |a#65#10#0|)))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#65#0#0| |a#65#1#0| |a#65#2#0| |a#65#3#0| |a#65#4#0| |a#65#5#0| |a#65#6#0| |a#65#7#0| |a#65#8#0| |a#65#9#0| |a#65#10#0|))
)))
(assert (forall ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) (|a#67#3#0| T@U) (|a#67#4#0| T@U) (|a#67#5#0| T@U) (|a#67#6#0| T@U) (|a#67#7#0| T@U) (|a#67#8#0| T@U) (|a#67#9#0| T@U) (|a#67#10#0| T@U) ) (! (< (BoxRank |a#67#9#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#67#0#0| |a#67#1#0| |a#67#2#0| |a#67#3#0| |a#67#4#0| |a#67#5#0| |a#67#6#0| |a#67#7#0| |a#67#8#0| |a#67#9#0| |a#67#10#0|)))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#67#0#0| |a#67#1#0| |a#67#2#0| |a#67#3#0| |a#67#4#0| |a#67#5#0| |a#67#6#0| |a#67#7#0| |a#67#8#0| |a#67#9#0| |a#67#10#0|))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) (|a#69#3#0| T@U) (|a#69#4#0| T@U) (|a#69#5#0| T@U) (|a#69#6#0| T@U) (|a#69#7#0| T@U) (|a#69#8#0| T@U) (|a#69#9#0| T@U) (|a#69#10#0| T@U) ) (! (< (BoxRank |a#69#10#0|) (DtRank (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#69#0#0| |a#69#1#0| |a#69#2#0| |a#69#3#0| |a#69#4#0| |a#69#5#0| |a#69#6#0| |a#69#7#0| |a#69#8#0| |a#69#9#0| |a#69#10#0|)))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#69#0#0| |a#69#1#0| |a#69#2#0| |a#69#3#0| |a#69#4#0| |a#69#5#0| |a#69#6#0| |a#69#7#0| |a#69#8#0| |a#69#9#0| |a#69#10#0|))
)))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0| T@U) (|_System._tuple#11OOOOOOOOOOG$T1| T@U) (|_System._tuple#11OOOOOOOOOOG$T2| T@U) (|_System._tuple#11OOOOOOOOOOG$T3| T@U) (|_System._tuple#11OOOOOOOOOOG$T4| T@U) (|_System._tuple#11OOOOOOOOOOG$T5| T@U) (|_System._tuple#11OOOOOOOOOOG$T6| T@U) (|_System._tuple#11OOOOOOOOOOG$T7| T@U) (|_System._tuple#11OOOOOOOOOOG$T8| T@U) (|_System._tuple#11OOOOOOOOOOG$T9| T@U) (|_System._tuple#11OOOOOOOOOOG$T10| T@U) (|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) (|a#46#3#0| T@U) (|a#46#4#0| T@U) (|a#46#5#0| T@U) (|a#46#6#0| T@U) (|a#46#7#0| T@U) (|a#46#8#0| T@U) (|a#46#9#0| T@U) (|a#46#10#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0| |a#46#4#0| |a#46#5#0| |a#46#6#0| |a#46#7#0| |a#46#8#0| |a#46#9#0| |a#46#10#0|) (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0| |_System._tuple#11OOOOOOOOOOG$T1| |_System._tuple#11OOOOOOOOOOG$T2| |_System._tuple#11OOOOOOOOOOG$T3| |_System._tuple#11OOOOOOOOOOG$T4| |_System._tuple#11OOOOOOOOOOG$T5| |_System._tuple#11OOOOOOOOOOG$T6| |_System._tuple#11OOOOOOOOOOG$T7| |_System._tuple#11OOOOOOOOOOG$T8| |_System._tuple#11OOOOOOOOOOG$T9| |_System._tuple#11OOOOOOOOOOG$T10|) $h)  (and (and (and (and (and (and (and (and (and (and ($IsAllocBox |a#46#0#0| |_System._tuple#11OOOOOOOOOOG$T0| $h) ($IsAllocBox |a#46#1#0| |_System._tuple#11OOOOOOOOOOG$T1| $h)) ($IsAllocBox |a#46#2#0| |_System._tuple#11OOOOOOOOOOG$T2| $h)) ($IsAllocBox |a#46#3#0| |_System._tuple#11OOOOOOOOOOG$T3| $h)) ($IsAllocBox |a#46#4#0| |_System._tuple#11OOOOOOOOOOG$T4| $h)) ($IsAllocBox |a#46#5#0| |_System._tuple#11OOOOOOOOOOG$T5| $h)) ($IsAllocBox |a#46#6#0| |_System._tuple#11OOOOOOOOOOG$T6| $h)) ($IsAllocBox |a#46#7#0| |_System._tuple#11OOOOOOOOOOG$T7| $h)) ($IsAllocBox |a#46#8#0| |_System._tuple#11OOOOOOOOOOG$T8| $h)) ($IsAllocBox |a#46#9#0| |_System._tuple#11OOOOOOOOOOG$T9| $h)) ($IsAllocBox |a#46#10#0| |_System._tuple#11OOOOOOOOOOG$T10| $h))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0| |a#46#4#0| |a#46#5#0| |a#46#6#0| |a#46#7#0| |a#46#8#0| |a#46#9#0| |a#46#10#0|) (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0| |_System._tuple#11OOOOOOOOOOG$T1| |_System._tuple#11OOOOOOOOOOG$T2| |_System._tuple#11OOOOOOOOOOG$T3| |_System._tuple#11OOOOOOOOOOG$T4| |_System._tuple#11OOOOOOOOOOG$T5| |_System._tuple#11OOOOOOOOOOG$T6| |_System._tuple#11OOOOOOOOOOG$T7| |_System._tuple#11OOOOOOOOOOG$T8| |_System._tuple#11OOOOOOOOOOG$T9| |_System._tuple#11OOOOOOOOOOG$T10|) $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple11OOOOOOOOOOG| d) (_System.Tuple11OOOOOOOOOOG.___hMake11_q d))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (|$IsA#_System.Tuple11OOOOOOOOOOG| d))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) (|a#44#3#0| T@U) (|a#44#4#0| T@U) (|a#44#5#0| T@U) (|a#44#6#0| T@U) (|a#44#7#0| T@U) (|a#44#8#0| T@U) (|a#44#9#0| T@U) (|a#44#10#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#44#0#0| |a#44#1#0| |a#44#2#0| |a#44#3#0| |a#44#4#0| |a#44#5#0| |a#44#6#0| |a#44#7#0| |a#44#8#0| |a#44#9#0| |a#44#10#0|)) |##_System._tuple#11OOOOOOOOOOG._#Make11|)
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#44#0#0| |a#44#1#0| |a#44#2#0| |a#44#3#0| |a#44#4#0| |a#44#5#0| |a#44#6#0| |a#44#7#0| |a#44#8#0| |a#44#9#0| |a#44#10#0|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@0| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@0| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_0 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@0| |_System._tuple#11OOOOOOOOOOG$T1@@0| |_System._tuple#11OOOOOOOOOOG$T2@@0| |_System._tuple#11OOOOOOOOOOG$T3@@0| |_System._tuple#11OOOOOOOOOOG$T4@@0| |_System._tuple#11OOOOOOOOOOG$T5@@0| |_System._tuple#11OOOOOOOOOOG$T6@@0| |_System._tuple#11OOOOOOOOOOG$T7@@0| |_System._tuple#11OOOOOOOOOOG$T8@@0| |_System._tuple#11OOOOOOOOOOG$T9@@0| |_System._tuple#11OOOOOOOOOOG$T10@@0|)) |_System._tuple#11OOOOOOOOOOG$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@0| |_System._tuple#11OOOOOOOOOOG$T1@@0| |_System._tuple#11OOOOOOOOOOG$T2@@0| |_System._tuple#11OOOOOOOOOOG$T3@@0| |_System._tuple#11OOOOOOOOOOG$T4@@0| |_System._tuple#11OOOOOOOOOOG$T5@@0| |_System._tuple#11OOOOOOOOOOG$T6@@0| |_System._tuple#11OOOOOOOOOOG$T7@@0| |_System._tuple#11OOOOOOOOOOG$T8@@0| |_System._tuple#11OOOOOOOOOOG$T9@@0| |_System._tuple#11OOOOOOOOOOG$T10@@0|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@1| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@1| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_1 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@1| |_System._tuple#11OOOOOOOOOOG$T1@@1| |_System._tuple#11OOOOOOOOOOG$T2@@1| |_System._tuple#11OOOOOOOOOOG$T3@@1| |_System._tuple#11OOOOOOOOOOG$T4@@1| |_System._tuple#11OOOOOOOOOOG$T5@@1| |_System._tuple#11OOOOOOOOOOG$T6@@1| |_System._tuple#11OOOOOOOOOOG$T7@@1| |_System._tuple#11OOOOOOOOOOG$T8@@1| |_System._tuple#11OOOOOOOOOOG$T9@@1| |_System._tuple#11OOOOOOOOOOG$T10@@1|)) |_System._tuple#11OOOOOOOOOOG$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@1| |_System._tuple#11OOOOOOOOOOG$T1@@1| |_System._tuple#11OOOOOOOOOOG$T2@@1| |_System._tuple#11OOOOOOOOOOG$T3@@1| |_System._tuple#11OOOOOOOOOOG$T4@@1| |_System._tuple#11OOOOOOOOOOG$T5@@1| |_System._tuple#11OOOOOOOOOOG$T6@@1| |_System._tuple#11OOOOOOOOOOG$T7@@1| |_System._tuple#11OOOOOOOOOOG$T8@@1| |_System._tuple#11OOOOOOOOOOG$T9@@1| |_System._tuple#11OOOOOOOOOOG$T10@@1|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@2| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@2| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_2 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@2| |_System._tuple#11OOOOOOOOOOG$T1@@2| |_System._tuple#11OOOOOOOOOOG$T2@@2| |_System._tuple#11OOOOOOOOOOG$T3@@2| |_System._tuple#11OOOOOOOOOOG$T4@@2| |_System._tuple#11OOOOOOOOOOG$T5@@2| |_System._tuple#11OOOOOOOOOOG$T6@@2| |_System._tuple#11OOOOOOOOOOG$T7@@2| |_System._tuple#11OOOOOOOOOOG$T8@@2| |_System._tuple#11OOOOOOOOOOG$T9@@2| |_System._tuple#11OOOOOOOOOOG$T10@@2|)) |_System._tuple#11OOOOOOOOOOG$T2@@2|)
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@2| |_System._tuple#11OOOOOOOOOOG$T1@@2| |_System._tuple#11OOOOOOOOOOG$T2@@2| |_System._tuple#11OOOOOOOOOOG$T3@@2| |_System._tuple#11OOOOOOOOOOG$T4@@2| |_System._tuple#11OOOOOOOOOOG$T5@@2| |_System._tuple#11OOOOOOOOOOG$T6@@2| |_System._tuple#11OOOOOOOOOOG$T7@@2| |_System._tuple#11OOOOOOOOOOG$T8@@2| |_System._tuple#11OOOOOOOOOOG$T9@@2| |_System._tuple#11OOOOOOOOOOG$T10@@2|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@3| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@3| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_3 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@3| |_System._tuple#11OOOOOOOOOOG$T1@@3| |_System._tuple#11OOOOOOOOOOG$T2@@3| |_System._tuple#11OOOOOOOOOOG$T3@@3| |_System._tuple#11OOOOOOOOOOG$T4@@3| |_System._tuple#11OOOOOOOOOOG$T5@@3| |_System._tuple#11OOOOOOOOOOG$T6@@3| |_System._tuple#11OOOOOOOOOOG$T7@@3| |_System._tuple#11OOOOOOOOOOG$T8@@3| |_System._tuple#11OOOOOOOOOOG$T9@@3| |_System._tuple#11OOOOOOOOOOG$T10@@3|)) |_System._tuple#11OOOOOOOOOOG$T3@@3|)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@3| |_System._tuple#11OOOOOOOOOOG$T1@@3| |_System._tuple#11OOOOOOOOOOG$T2@@3| |_System._tuple#11OOOOOOOOOOG$T3@@3| |_System._tuple#11OOOOOOOOOOG$T4@@3| |_System._tuple#11OOOOOOOOOOG$T5@@3| |_System._tuple#11OOOOOOOOOOG$T6@@3| |_System._tuple#11OOOOOOOOOOG$T7@@3| |_System._tuple#11OOOOOOOOOOG$T8@@3| |_System._tuple#11OOOOOOOOOOG$T9@@3| |_System._tuple#11OOOOOOOOOOG$T10@@3|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@4| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@4| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_4 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@4| |_System._tuple#11OOOOOOOOOOG$T1@@4| |_System._tuple#11OOOOOOOOOOG$T2@@4| |_System._tuple#11OOOOOOOOOOG$T3@@4| |_System._tuple#11OOOOOOOOOOG$T4@@4| |_System._tuple#11OOOOOOOOOOG$T5@@4| |_System._tuple#11OOOOOOOOOOG$T6@@4| |_System._tuple#11OOOOOOOOOOG$T7@@4| |_System._tuple#11OOOOOOOOOOG$T8@@4| |_System._tuple#11OOOOOOOOOOG$T9@@4| |_System._tuple#11OOOOOOOOOOG$T10@@4|)) |_System._tuple#11OOOOOOOOOOG$T4@@4|)
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@4| |_System._tuple#11OOOOOOOOOOG$T1@@4| |_System._tuple#11OOOOOOOOOOG$T2@@4| |_System._tuple#11OOOOOOOOOOG$T3@@4| |_System._tuple#11OOOOOOOOOOG$T4@@4| |_System._tuple#11OOOOOOOOOOG$T5@@4| |_System._tuple#11OOOOOOOOOOG$T6@@4| |_System._tuple#11OOOOOOOOOOG$T7@@4| |_System._tuple#11OOOOOOOOOOG$T8@@4| |_System._tuple#11OOOOOOOOOOG$T9@@4| |_System._tuple#11OOOOOOOOOOG$T10@@4|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@5| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@5| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_5 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@5| |_System._tuple#11OOOOOOOOOOG$T1@@5| |_System._tuple#11OOOOOOOOOOG$T2@@5| |_System._tuple#11OOOOOOOOOOG$T3@@5| |_System._tuple#11OOOOOOOOOOG$T4@@5| |_System._tuple#11OOOOOOOOOOG$T5@@5| |_System._tuple#11OOOOOOOOOOG$T6@@5| |_System._tuple#11OOOOOOOOOOG$T7@@5| |_System._tuple#11OOOOOOOOOOG$T8@@5| |_System._tuple#11OOOOOOOOOOG$T9@@5| |_System._tuple#11OOOOOOOOOOG$T10@@5|)) |_System._tuple#11OOOOOOOOOOG$T5@@5|)
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@5| |_System._tuple#11OOOOOOOOOOG$T1@@5| |_System._tuple#11OOOOOOOOOOG$T2@@5| |_System._tuple#11OOOOOOOOOOG$T3@@5| |_System._tuple#11OOOOOOOOOOG$T4@@5| |_System._tuple#11OOOOOOOOOOG$T5@@5| |_System._tuple#11OOOOOOOOOOG$T6@@5| |_System._tuple#11OOOOOOOOOOG$T7@@5| |_System._tuple#11OOOOOOOOOOG$T8@@5| |_System._tuple#11OOOOOOOOOOG$T9@@5| |_System._tuple#11OOOOOOOOOOG$T10@@5|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@6| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@6| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_6 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@6| |_System._tuple#11OOOOOOOOOOG$T1@@6| |_System._tuple#11OOOOOOOOOOG$T2@@6| |_System._tuple#11OOOOOOOOOOG$T3@@6| |_System._tuple#11OOOOOOOOOOG$T4@@6| |_System._tuple#11OOOOOOOOOOG$T5@@6| |_System._tuple#11OOOOOOOOOOG$T6@@6| |_System._tuple#11OOOOOOOOOOG$T7@@6| |_System._tuple#11OOOOOOOOOOG$T8@@6| |_System._tuple#11OOOOOOOOOOG$T9@@6| |_System._tuple#11OOOOOOOOOOG$T10@@6|)) |_System._tuple#11OOOOOOOOOOG$T6@@6|)
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@6| |_System._tuple#11OOOOOOOOOOG$T1@@6| |_System._tuple#11OOOOOOOOOOG$T2@@6| |_System._tuple#11OOOOOOOOOOG$T3@@6| |_System._tuple#11OOOOOOOOOOG$T4@@6| |_System._tuple#11OOOOOOOOOOG$T5@@6| |_System._tuple#11OOOOOOOOOOG$T6@@6| |_System._tuple#11OOOOOOOOOOG$T7@@6| |_System._tuple#11OOOOOOOOOOG$T8@@6| |_System._tuple#11OOOOOOOOOOG$T9@@6| |_System._tuple#11OOOOOOOOOOG$T10@@6|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@7| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@7| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_7 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@7| |_System._tuple#11OOOOOOOOOOG$T1@@7| |_System._tuple#11OOOOOOOOOOG$T2@@7| |_System._tuple#11OOOOOOOOOOG$T3@@7| |_System._tuple#11OOOOOOOOOOG$T4@@7| |_System._tuple#11OOOOOOOOOOG$T5@@7| |_System._tuple#11OOOOOOOOOOG$T6@@7| |_System._tuple#11OOOOOOOOOOG$T7@@7| |_System._tuple#11OOOOOOOOOOG$T8@@7| |_System._tuple#11OOOOOOOOOOG$T9@@7| |_System._tuple#11OOOOOOOOOOG$T10@@7|)) |_System._tuple#11OOOOOOOOOOG$T7@@7|)
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@7| |_System._tuple#11OOOOOOOOOOG$T1@@7| |_System._tuple#11OOOOOOOOOOG$T2@@7| |_System._tuple#11OOOOOOOOOOG$T3@@7| |_System._tuple#11OOOOOOOOOOG$T4@@7| |_System._tuple#11OOOOOOOOOOG$T5@@7| |_System._tuple#11OOOOOOOOOOG$T6@@7| |_System._tuple#11OOOOOOOOOOG$T7@@7| |_System._tuple#11OOOOOOOOOOG$T8@@7| |_System._tuple#11OOOOOOOOOOG$T9@@7| |_System._tuple#11OOOOOOOOOOG$T10@@7|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@8| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@8| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_8 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@8| |_System._tuple#11OOOOOOOOOOG$T1@@8| |_System._tuple#11OOOOOOOOOOG$T2@@8| |_System._tuple#11OOOOOOOOOOG$T3@@8| |_System._tuple#11OOOOOOOOOOG$T4@@8| |_System._tuple#11OOOOOOOOOOG$T5@@8| |_System._tuple#11OOOOOOOOOOG$T6@@8| |_System._tuple#11OOOOOOOOOOG$T7@@8| |_System._tuple#11OOOOOOOOOOG$T8@@8| |_System._tuple#11OOOOOOOOOOG$T9@@8| |_System._tuple#11OOOOOOOOOOG$T10@@8|)) |_System._tuple#11OOOOOOOOOOG$T8@@8|)
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@8| |_System._tuple#11OOOOOOOOOOG$T1@@8| |_System._tuple#11OOOOOOOOOOG$T2@@8| |_System._tuple#11OOOOOOOOOOG$T3@@8| |_System._tuple#11OOOOOOOOOOG$T4@@8| |_System._tuple#11OOOOOOOOOOG$T5@@8| |_System._tuple#11OOOOOOOOOOG$T6@@8| |_System._tuple#11OOOOOOOOOOG$T7@@8| |_System._tuple#11OOOOOOOOOOG$T8@@8| |_System._tuple#11OOOOOOOOOOG$T9@@8| |_System._tuple#11OOOOOOOOOOG$T10@@8|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@9| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@9| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_9 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@9| |_System._tuple#11OOOOOOOOOOG$T1@@9| |_System._tuple#11OOOOOOOOOOG$T2@@9| |_System._tuple#11OOOOOOOOOOG$T3@@9| |_System._tuple#11OOOOOOOOOOG$T4@@9| |_System._tuple#11OOOOOOOOOOG$T5@@9| |_System._tuple#11OOOOOOOOOOG$T6@@9| |_System._tuple#11OOOOOOOOOOG$T7@@9| |_System._tuple#11OOOOOOOOOOG$T8@@9| |_System._tuple#11OOOOOOOOOOG$T9@@9| |_System._tuple#11OOOOOOOOOOG$T10@@9|)) |_System._tuple#11OOOOOOOOOOG$T9@@9|)
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@9| |_System._tuple#11OOOOOOOOOOG$T1@@9| |_System._tuple#11OOOOOOOOOOG$T2@@9| |_System._tuple#11OOOOOOOOOOG$T3@@9| |_System._tuple#11OOOOOOOOOOG$T4@@9| |_System._tuple#11OOOOOOOOOOG$T5@@9| |_System._tuple#11OOOOOOOOOOG$T6@@9| |_System._tuple#11OOOOOOOOOOG$T7@@9| |_System._tuple#11OOOOOOOOOOG$T8@@9| |_System._tuple#11OOOOOOOOOOG$T9@@9| |_System._tuple#11OOOOOOOOOOG$T10@@9|))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@10| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@10| T@U) ) (! (= (Tclass._System.Tuple11OOOOOOOOOOG_10 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@10| |_System._tuple#11OOOOOOOOOOG$T1@@10| |_System._tuple#11OOOOOOOOOOG$T2@@10| |_System._tuple#11OOOOOOOOOOG$T3@@10| |_System._tuple#11OOOOOOOOOOG$T4@@10| |_System._tuple#11OOOOOOOOOOG$T5@@10| |_System._tuple#11OOOOOOOOOOG$T6@@10| |_System._tuple#11OOOOOOOOOOG$T7@@10| |_System._tuple#11OOOOOOOOOOG$T8@@10| |_System._tuple#11OOOOOOOOOOG$T9@@10| |_System._tuple#11OOOOOOOOOOG$T10@@10|)) |_System._tuple#11OOOOOOOOOOG$T10@@10|)
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@10| |_System._tuple#11OOOOOOOOOOG$T1@@10| |_System._tuple#11OOOOOOOOOOG$T2@@10| |_System._tuple#11OOOOOOOOOOG$T3@@10| |_System._tuple#11OOOOOOOOOOG$T4@@10| |_System._tuple#11OOOOOOOOOOG$T5@@10| |_System._tuple#11OOOOOOOOOOG$T6@@10| |_System._tuple#11OOOOOOOOOOG$T7@@10| |_System._tuple#11OOOOOOOOOOG$T8@@10| |_System._tuple#11OOOOOOOOOOG$T9@@10| |_System._tuple#11OOOOOOOOOOG$T10@@10|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) (|a#48#2#0| T@U) (|a#48#3#0| T@U) (|a#48#4#0| T@U) (|a#48#5#0| T@U) (|a#48#6#0| T@U) (|a#48#7#0| T@U) (|a#48#8#0| T@U) (|a#48#9#0| T@U) (|a#48#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._0 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0| |a#48#4#0| |a#48#5#0| |a#48#6#0| |a#48#7#0| |a#48#8#0| |a#48#9#0| |a#48#10#0|)) |a#48#0#0|)
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0| |a#48#4#0| |a#48#5#0| |a#48#6#0| |a#48#7#0| |a#48#8#0| |a#48#9#0| |a#48#10#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) (|a#50#2#0| T@U) (|a#50#3#0| T@U) (|a#50#4#0| T@U) (|a#50#5#0| T@U) (|a#50#6#0| T@U) (|a#50#7#0| T@U) (|a#50#8#0| T@U) (|a#50#9#0| T@U) (|a#50#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._1 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0| |a#50#4#0| |a#50#5#0| |a#50#6#0| |a#50#7#0| |a#50#8#0| |a#50#9#0| |a#50#10#0|)) |a#50#1#0|)
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0| |a#50#4#0| |a#50#5#0| |a#50#6#0| |a#50#7#0| |a#50#8#0| |a#50#9#0| |a#50#10#0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) (|a#52#2#0| T@U) (|a#52#3#0| T@U) (|a#52#4#0| T@U) (|a#52#5#0| T@U) (|a#52#6#0| T@U) (|a#52#7#0| T@U) (|a#52#8#0| T@U) (|a#52#9#0| T@U) (|a#52#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._2 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0| |a#52#4#0| |a#52#5#0| |a#52#6#0| |a#52#7#0| |a#52#8#0| |a#52#9#0| |a#52#10#0|)) |a#52#2#0|)
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0| |a#52#4#0| |a#52#5#0| |a#52#6#0| |a#52#7#0| |a#52#8#0| |a#52#9#0| |a#52#10#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (|a#54#2#0| T@U) (|a#54#3#0| T@U) (|a#54#4#0| T@U) (|a#54#5#0| T@U) (|a#54#6#0| T@U) (|a#54#7#0| T@U) (|a#54#8#0| T@U) (|a#54#9#0| T@U) (|a#54#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._3 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0| |a#54#4#0| |a#54#5#0| |a#54#6#0| |a#54#7#0| |a#54#8#0| |a#54#9#0| |a#54#10#0|)) |a#54#3#0|)
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0| |a#54#4#0| |a#54#5#0| |a#54#6#0| |a#54#7#0| |a#54#8#0| |a#54#9#0| |a#54#10#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) (|a#56#3#0| T@U) (|a#56#4#0| T@U) (|a#56#5#0| T@U) (|a#56#6#0| T@U) (|a#56#7#0| T@U) (|a#56#8#0| T@U) (|a#56#9#0| T@U) (|a#56#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._4 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#56#0#0| |a#56#1#0| |a#56#2#0| |a#56#3#0| |a#56#4#0| |a#56#5#0| |a#56#6#0| |a#56#7#0| |a#56#8#0| |a#56#9#0| |a#56#10#0|)) |a#56#4#0|)
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#56#0#0| |a#56#1#0| |a#56#2#0| |a#56#3#0| |a#56#4#0| |a#56#5#0| |a#56#6#0| |a#56#7#0| |a#56#8#0| |a#56#9#0| |a#56#10#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) (|a#58#2#0| T@U) (|a#58#3#0| T@U) (|a#58#4#0| T@U) (|a#58#5#0| T@U) (|a#58#6#0| T@U) (|a#58#7#0| T@U) (|a#58#8#0| T@U) (|a#58#9#0| T@U) (|a#58#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._5 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#58#0#0| |a#58#1#0| |a#58#2#0| |a#58#3#0| |a#58#4#0| |a#58#5#0| |a#58#6#0| |a#58#7#0| |a#58#8#0| |a#58#9#0| |a#58#10#0|)) |a#58#5#0|)
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#58#0#0| |a#58#1#0| |a#58#2#0| |a#58#3#0| |a#58#4#0| |a#58#5#0| |a#58#6#0| |a#58#7#0| |a#58#8#0| |a#58#9#0| |a#58#10#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) (|a#60#3#0| T@U) (|a#60#4#0| T@U) (|a#60#5#0| T@U) (|a#60#6#0| T@U) (|a#60#7#0| T@U) (|a#60#8#0| T@U) (|a#60#9#0| T@U) (|a#60#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._6 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#60#0#0| |a#60#1#0| |a#60#2#0| |a#60#3#0| |a#60#4#0| |a#60#5#0| |a#60#6#0| |a#60#7#0| |a#60#8#0| |a#60#9#0| |a#60#10#0|)) |a#60#6#0|)
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#60#0#0| |a#60#1#0| |a#60#2#0| |a#60#3#0| |a#60#4#0| |a#60#5#0| |a#60#6#0| |a#60#7#0| |a#60#8#0| |a#60#9#0| |a#60#10#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) (|a#62#3#0| T@U) (|a#62#4#0| T@U) (|a#62#5#0| T@U) (|a#62#6#0| T@U) (|a#62#7#0| T@U) (|a#62#8#0| T@U) (|a#62#9#0| T@U) (|a#62#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._7 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#62#0#0| |a#62#1#0| |a#62#2#0| |a#62#3#0| |a#62#4#0| |a#62#5#0| |a#62#6#0| |a#62#7#0| |a#62#8#0| |a#62#9#0| |a#62#10#0|)) |a#62#7#0|)
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#62#0#0| |a#62#1#0| |a#62#2#0| |a#62#3#0| |a#62#4#0| |a#62#5#0| |a#62#6#0| |a#62#7#0| |a#62#8#0| |a#62#9#0| |a#62#10#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) (|a#64#3#0| T@U) (|a#64#4#0| T@U) (|a#64#5#0| T@U) (|a#64#6#0| T@U) (|a#64#7#0| T@U) (|a#64#8#0| T@U) (|a#64#9#0| T@U) (|a#64#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._8 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#64#0#0| |a#64#1#0| |a#64#2#0| |a#64#3#0| |a#64#4#0| |a#64#5#0| |a#64#6#0| |a#64#7#0| |a#64#8#0| |a#64#9#0| |a#64#10#0|)) |a#64#8#0|)
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#64#0#0| |a#64#1#0| |a#64#2#0| |a#64#3#0| |a#64#4#0| |a#64#5#0| |a#64#6#0| |a#64#7#0| |a#64#8#0| |a#64#9#0| |a#64#10#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) (|a#66#3#0| T@U) (|a#66#4#0| T@U) (|a#66#5#0| T@U) (|a#66#6#0| T@U) (|a#66#7#0| T@U) (|a#66#8#0| T@U) (|a#66#9#0| T@U) (|a#66#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._9 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#66#0#0| |a#66#1#0| |a#66#2#0| |a#66#3#0| |a#66#4#0| |a#66#5#0| |a#66#6#0| |a#66#7#0| |a#66#8#0| |a#66#9#0| |a#66#10#0|)) |a#66#9#0|)
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#66#0#0| |a#66#1#0| |a#66#2#0| |a#66#3#0| |a#66#4#0| |a#66#5#0| |a#66#6#0| |a#66#7#0| |a#66#8#0| |a#66#9#0| |a#66#10#0|))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) (|a#68#3#0| T@U) (|a#68#4#0| T@U) (|a#68#5#0| T@U) (|a#68#6#0| T@U) (|a#68#7#0| T@U) (|a#68#8#0| T@U) (|a#68#9#0| T@U) (|a#68#10#0| T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG._10 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#68#0#0| |a#68#1#0| |a#68#2#0| |a#68#3#0| |a#68#4#0| |a#68#5#0| |a#68#6#0| |a#68#7#0| |a#68#8#0| |a#68#9#0| |a#68#10#0|)) |a#68#10#0|)
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#68#0#0| |a#68#1#0| |a#68#2#0| |a#68#3#0| |a#68#4#0| |a#68#5#0| |a#68#6#0| |a#68#7#0| |a#68#8#0| |a#68#9#0| |a#68#10#0|))
)))
(assert (forall ((d@@0 T@U) (|_System._tuple#11OOOOOOOOOOG$T0@@11| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@0) (exists ((|_System._tuple#11OOOOOOOOOOG$T1@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@11| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@11| T@U) ) (! ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@11| |_System._tuple#11OOOOOOOOOOG$T1@@11| |_System._tuple#11OOOOOOOOOOG$T2@@11| |_System._tuple#11OOOOOOOOOOG$T3@@11| |_System._tuple#11OOOOOOOOOOG$T4@@11| |_System._tuple#11OOOOOOOOOOG$T5@@11| |_System._tuple#11OOOOOOOOOOG$T6@@11| |_System._tuple#11OOOOOOOOOOG$T7@@11| |_System._tuple#11OOOOOOOOOOG$T8@@11| |_System._tuple#11OOOOOOOOOOG$T9@@11| |_System._tuple#11OOOOOOOOOOG$T10@@11|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@11| |_System._tuple#11OOOOOOOOOOG$T1@@11| |_System._tuple#11OOOOOOOOOOG$T2@@11| |_System._tuple#11OOOOOOOOOOG$T3@@11| |_System._tuple#11OOOOOOOOOOG$T4@@11| |_System._tuple#11OOOOOOOOOOG$T5@@11| |_System._tuple#11OOOOOOOOOOG$T6@@11| |_System._tuple#11OOOOOOOOOOG$T7@@11| |_System._tuple#11OOOOOOOOOOG$T8@@11| |_System._tuple#11OOOOOOOOOOG$T9@@11| |_System._tuple#11OOOOOOOOOOG$T10@@11|) $h@@0))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._0 d@@0) |_System._tuple#11OOOOOOOOOOG$T0@@11| $h@@0))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._0 d@@0) |_System._tuple#11OOOOOOOOOOG$T0@@11| $h@@0))
)))
(assert (forall ((d@@1 T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@12| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@1) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@12| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@12| T@U) ) (! ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@12| |_System._tuple#11OOOOOOOOOOG$T1@@12| |_System._tuple#11OOOOOOOOOOG$T2@@12| |_System._tuple#11OOOOOOOOOOG$T3@@12| |_System._tuple#11OOOOOOOOOOG$T4@@12| |_System._tuple#11OOOOOOOOOOG$T5@@12| |_System._tuple#11OOOOOOOOOOG$T6@@12| |_System._tuple#11OOOOOOOOOOG$T7@@12| |_System._tuple#11OOOOOOOOOOG$T8@@12| |_System._tuple#11OOOOOOOOOOG$T9@@12| |_System._tuple#11OOOOOOOOOOG$T10@@12|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@12| |_System._tuple#11OOOOOOOOOOG$T1@@12| |_System._tuple#11OOOOOOOOOOG$T2@@12| |_System._tuple#11OOOOOOOOOOG$T3@@12| |_System._tuple#11OOOOOOOOOOG$T4@@12| |_System._tuple#11OOOOOOOOOOG$T5@@12| |_System._tuple#11OOOOOOOOOOG$T6@@12| |_System._tuple#11OOOOOOOOOOG$T7@@12| |_System._tuple#11OOOOOOOOOOG$T8@@12| |_System._tuple#11OOOOOOOOOOG$T9@@12| |_System._tuple#11OOOOOOOOOOG$T10@@12|) $h@@1))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._1 d@@1) |_System._tuple#11OOOOOOOOOOG$T1@@12| $h@@1))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._1 d@@1) |_System._tuple#11OOOOOOOOOOG$T1@@12| $h@@1))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@13| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@2) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@13| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@13| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@13| |_System._tuple#11OOOOOOOOOOG$T1@@13| |_System._tuple#11OOOOOOOOOOG$T2@@13| |_System._tuple#11OOOOOOOOOOG$T3@@13| |_System._tuple#11OOOOOOOOOOG$T4@@13| |_System._tuple#11OOOOOOOOOOG$T5@@13| |_System._tuple#11OOOOOOOOOOG$T6@@13| |_System._tuple#11OOOOOOOOOOG$T7@@13| |_System._tuple#11OOOOOOOOOOG$T8@@13| |_System._tuple#11OOOOOOOOOOG$T9@@13| |_System._tuple#11OOOOOOOOOOG$T10@@13|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@13| |_System._tuple#11OOOOOOOOOOG$T1@@13| |_System._tuple#11OOOOOOOOOOG$T2@@13| |_System._tuple#11OOOOOOOOOOG$T3@@13| |_System._tuple#11OOOOOOOOOOG$T4@@13| |_System._tuple#11OOOOOOOOOOG$T5@@13| |_System._tuple#11OOOOOOOOOOG$T6@@13| |_System._tuple#11OOOOOOOOOOG$T7@@13| |_System._tuple#11OOOOOOOOOOG$T8@@13| |_System._tuple#11OOOOOOOOOOG$T9@@13| |_System._tuple#11OOOOOOOOOOG$T10@@13|) $h@@2))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._2 d@@2) |_System._tuple#11OOOOOOOOOOG$T2@@13| $h@@2))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._2 d@@2) |_System._tuple#11OOOOOOOOOOG$T2@@13| $h@@2))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@14| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@3) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@14| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@14| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@14| |_System._tuple#11OOOOOOOOOOG$T1@@14| |_System._tuple#11OOOOOOOOOOG$T2@@14| |_System._tuple#11OOOOOOOOOOG$T3@@14| |_System._tuple#11OOOOOOOOOOG$T4@@14| |_System._tuple#11OOOOOOOOOOG$T5@@14| |_System._tuple#11OOOOOOOOOOG$T6@@14| |_System._tuple#11OOOOOOOOOOG$T7@@14| |_System._tuple#11OOOOOOOOOOG$T8@@14| |_System._tuple#11OOOOOOOOOOG$T9@@14| |_System._tuple#11OOOOOOOOOOG$T10@@14|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@14| |_System._tuple#11OOOOOOOOOOG$T1@@14| |_System._tuple#11OOOOOOOOOOG$T2@@14| |_System._tuple#11OOOOOOOOOOG$T3@@14| |_System._tuple#11OOOOOOOOOOG$T4@@14| |_System._tuple#11OOOOOOOOOOG$T5@@14| |_System._tuple#11OOOOOOOOOOG$T6@@14| |_System._tuple#11OOOOOOOOOOG$T7@@14| |_System._tuple#11OOOOOOOOOOG$T8@@14| |_System._tuple#11OOOOOOOOOOG$T9@@14| |_System._tuple#11OOOOOOOOOOG$T10@@14|) $h@@3))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._3 d@@3) |_System._tuple#11OOOOOOOOOOG$T3@@14| $h@@3))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._3 d@@3) |_System._tuple#11OOOOOOOOOOG$T3@@14| $h@@3))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@15| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@4) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@15| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@15| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@15| |_System._tuple#11OOOOOOOOOOG$T1@@15| |_System._tuple#11OOOOOOOOOOG$T2@@15| |_System._tuple#11OOOOOOOOOOG$T3@@15| |_System._tuple#11OOOOOOOOOOG$T4@@15| |_System._tuple#11OOOOOOOOOOG$T5@@15| |_System._tuple#11OOOOOOOOOOG$T6@@15| |_System._tuple#11OOOOOOOOOOG$T7@@15| |_System._tuple#11OOOOOOOOOOG$T8@@15| |_System._tuple#11OOOOOOOOOOG$T9@@15| |_System._tuple#11OOOOOOOOOOG$T10@@15|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@15| |_System._tuple#11OOOOOOOOOOG$T1@@15| |_System._tuple#11OOOOOOOOOOG$T2@@15| |_System._tuple#11OOOOOOOOOOG$T3@@15| |_System._tuple#11OOOOOOOOOOG$T4@@15| |_System._tuple#11OOOOOOOOOOG$T5@@15| |_System._tuple#11OOOOOOOOOOG$T6@@15| |_System._tuple#11OOOOOOOOOOG$T7@@15| |_System._tuple#11OOOOOOOOOOG$T8@@15| |_System._tuple#11OOOOOOOOOOG$T9@@15| |_System._tuple#11OOOOOOOOOOG$T10@@15|) $h@@4))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._4 d@@4) |_System._tuple#11OOOOOOOOOOG$T4@@15| $h@@4))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._4 d@@4) |_System._tuple#11OOOOOOOOOOG$T4@@15| $h@@4))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@16| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@5) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@16| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@16| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@16| |_System._tuple#11OOOOOOOOOOG$T1@@16| |_System._tuple#11OOOOOOOOOOG$T2@@16| |_System._tuple#11OOOOOOOOOOG$T3@@16| |_System._tuple#11OOOOOOOOOOG$T4@@16| |_System._tuple#11OOOOOOOOOOG$T5@@16| |_System._tuple#11OOOOOOOOOOG$T6@@16| |_System._tuple#11OOOOOOOOOOG$T7@@16| |_System._tuple#11OOOOOOOOOOG$T8@@16| |_System._tuple#11OOOOOOOOOOG$T9@@16| |_System._tuple#11OOOOOOOOOOG$T10@@16|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@16| |_System._tuple#11OOOOOOOOOOG$T1@@16| |_System._tuple#11OOOOOOOOOOG$T2@@16| |_System._tuple#11OOOOOOOOOOG$T3@@16| |_System._tuple#11OOOOOOOOOOG$T4@@16| |_System._tuple#11OOOOOOOOOOG$T5@@16| |_System._tuple#11OOOOOOOOOOG$T6@@16| |_System._tuple#11OOOOOOOOOOG$T7@@16| |_System._tuple#11OOOOOOOOOOG$T8@@16| |_System._tuple#11OOOOOOOOOOG$T9@@16| |_System._tuple#11OOOOOOOOOOG$T10@@16|) $h@@5))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._5 d@@5) |_System._tuple#11OOOOOOOOOOG$T5@@16| $h@@5))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._5 d@@5) |_System._tuple#11OOOOOOOOOOG$T5@@16| $h@@5))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@17| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@6) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@17| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@17| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@17| |_System._tuple#11OOOOOOOOOOG$T1@@17| |_System._tuple#11OOOOOOOOOOG$T2@@17| |_System._tuple#11OOOOOOOOOOG$T3@@17| |_System._tuple#11OOOOOOOOOOG$T4@@17| |_System._tuple#11OOOOOOOOOOG$T5@@17| |_System._tuple#11OOOOOOOOOOG$T6@@17| |_System._tuple#11OOOOOOOOOOG$T7@@17| |_System._tuple#11OOOOOOOOOOG$T8@@17| |_System._tuple#11OOOOOOOOOOG$T9@@17| |_System._tuple#11OOOOOOOOOOG$T10@@17|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@17| |_System._tuple#11OOOOOOOOOOG$T1@@17| |_System._tuple#11OOOOOOOOOOG$T2@@17| |_System._tuple#11OOOOOOOOOOG$T3@@17| |_System._tuple#11OOOOOOOOOOG$T4@@17| |_System._tuple#11OOOOOOOOOOG$T5@@17| |_System._tuple#11OOOOOOOOOOG$T6@@17| |_System._tuple#11OOOOOOOOOOG$T7@@17| |_System._tuple#11OOOOOOOOOOG$T8@@17| |_System._tuple#11OOOOOOOOOOG$T9@@17| |_System._tuple#11OOOOOOOOOOG$T10@@17|) $h@@6))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._6 d@@6) |_System._tuple#11OOOOOOOOOOG$T6@@17| $h@@6))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._6 d@@6) |_System._tuple#11OOOOOOOOOOG$T6@@17| $h@@6))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@18| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@7) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@18| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@18| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@18| |_System._tuple#11OOOOOOOOOOG$T1@@18| |_System._tuple#11OOOOOOOOOOG$T2@@18| |_System._tuple#11OOOOOOOOOOG$T3@@18| |_System._tuple#11OOOOOOOOOOG$T4@@18| |_System._tuple#11OOOOOOOOOOG$T5@@18| |_System._tuple#11OOOOOOOOOOG$T6@@18| |_System._tuple#11OOOOOOOOOOG$T7@@18| |_System._tuple#11OOOOOOOOOOG$T8@@18| |_System._tuple#11OOOOOOOOOOG$T9@@18| |_System._tuple#11OOOOOOOOOOG$T10@@18|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@18| |_System._tuple#11OOOOOOOOOOG$T1@@18| |_System._tuple#11OOOOOOOOOOG$T2@@18| |_System._tuple#11OOOOOOOOOOG$T3@@18| |_System._tuple#11OOOOOOOOOOG$T4@@18| |_System._tuple#11OOOOOOOOOOG$T5@@18| |_System._tuple#11OOOOOOOOOOG$T6@@18| |_System._tuple#11OOOOOOOOOOG$T7@@18| |_System._tuple#11OOOOOOOOOOG$T8@@18| |_System._tuple#11OOOOOOOOOOG$T9@@18| |_System._tuple#11OOOOOOOOOOG$T10@@18|) $h@@7))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._7 d@@7) |_System._tuple#11OOOOOOOOOOG$T7@@18| $h@@7))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._7 d@@7) |_System._tuple#11OOOOOOOOOOG$T7@@18| $h@@7))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@19| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@8) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@19| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@19| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@19| |_System._tuple#11OOOOOOOOOOG$T1@@19| |_System._tuple#11OOOOOOOOOOG$T2@@19| |_System._tuple#11OOOOOOOOOOG$T3@@19| |_System._tuple#11OOOOOOOOOOG$T4@@19| |_System._tuple#11OOOOOOOOOOG$T5@@19| |_System._tuple#11OOOOOOOOOOG$T6@@19| |_System._tuple#11OOOOOOOOOOG$T7@@19| |_System._tuple#11OOOOOOOOOOG$T8@@19| |_System._tuple#11OOOOOOOOOOG$T9@@19| |_System._tuple#11OOOOOOOOOOG$T10@@19|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@19| |_System._tuple#11OOOOOOOOOOG$T1@@19| |_System._tuple#11OOOOOOOOOOG$T2@@19| |_System._tuple#11OOOOOOOOOOG$T3@@19| |_System._tuple#11OOOOOOOOOOG$T4@@19| |_System._tuple#11OOOOOOOOOOG$T5@@19| |_System._tuple#11OOOOOOOOOOG$T6@@19| |_System._tuple#11OOOOOOOOOOG$T7@@19| |_System._tuple#11OOOOOOOOOOG$T8@@19| |_System._tuple#11OOOOOOOOOOG$T9@@19| |_System._tuple#11OOOOOOOOOOG$T10@@19|) $h@@8))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._8 d@@8) |_System._tuple#11OOOOOOOOOOG$T8@@19| $h@@8))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._8 d@@8) |_System._tuple#11OOOOOOOOOOG$T8@@19| $h@@8))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@20| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@9) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@20| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@20| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@20| |_System._tuple#11OOOOOOOOOOG$T1@@20| |_System._tuple#11OOOOOOOOOOG$T2@@20| |_System._tuple#11OOOOOOOOOOG$T3@@20| |_System._tuple#11OOOOOOOOOOG$T4@@20| |_System._tuple#11OOOOOOOOOOG$T5@@20| |_System._tuple#11OOOOOOOOOOG$T6@@20| |_System._tuple#11OOOOOOOOOOG$T7@@20| |_System._tuple#11OOOOOOOOOOG$T8@@20| |_System._tuple#11OOOOOOOOOOG$T9@@20| |_System._tuple#11OOOOOOOOOOG$T10@@20|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@20| |_System._tuple#11OOOOOOOOOOG$T1@@20| |_System._tuple#11OOOOOOOOOOG$T2@@20| |_System._tuple#11OOOOOOOOOOG$T3@@20| |_System._tuple#11OOOOOOOOOOG$T4@@20| |_System._tuple#11OOOOOOOOOOG$T5@@20| |_System._tuple#11OOOOOOOOOOG$T6@@20| |_System._tuple#11OOOOOOOOOOG$T7@@20| |_System._tuple#11OOOOOOOOOOG$T8@@20| |_System._tuple#11OOOOOOOOOOG$T9@@20| |_System._tuple#11OOOOOOOOOOG$T10@@20|) $h@@9))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._9 d@@9) |_System._tuple#11OOOOOOOOOOG$T9@@20| $h@@9))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._9 d@@9) |_System._tuple#11OOOOOOOOOOG$T9@@20| $h@@9))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@21| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@10) (exists ((|_System._tuple#11OOOOOOOOOOG$T0@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@21| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@21| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@21| |_System._tuple#11OOOOOOOOOOG$T1@@21| |_System._tuple#11OOOOOOOOOOG$T2@@21| |_System._tuple#11OOOOOOOOOOG$T3@@21| |_System._tuple#11OOOOOOOOOOG$T4@@21| |_System._tuple#11OOOOOOOOOOG$T5@@21| |_System._tuple#11OOOOOOOOOOG$T6@@21| |_System._tuple#11OOOOOOOOOOG$T7@@21| |_System._tuple#11OOOOOOOOOOG$T8@@21| |_System._tuple#11OOOOOOOOOOG$T9@@21| |_System._tuple#11OOOOOOOOOOG$T10@@21|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@21| |_System._tuple#11OOOOOOOOOOG$T1@@21| |_System._tuple#11OOOOOOOOOOG$T2@@21| |_System._tuple#11OOOOOOOOOOG$T3@@21| |_System._tuple#11OOOOOOOOOOG$T4@@21| |_System._tuple#11OOOOOOOOOOG$T5@@21| |_System._tuple#11OOOOOOOOOOG$T6@@21| |_System._tuple#11OOOOOOOOOOG$T7@@21| |_System._tuple#11OOOOOOOOOOG$T8@@21| |_System._tuple#11OOOOOOOOOOG$T9@@21| |_System._tuple#11OOOOOOOOOOG$T10@@21|) $h@@10))
)))) ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._10 d@@10) |_System._tuple#11OOOOOOOOOOG$T10@@21| $h@@10))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAllocBox (_System.Tuple11OOOOOOOOOOG._10 d@@10) |_System._tuple#11OOOOOOOOOOG$T10@@21| $h@@10))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@22| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@22| T@U) (|a#46#0#0@@0| T@U) (|a#46#1#0@@0| T@U) (|a#46#2#0@@0| T@U) (|a#46#3#0@@0| T@U) (|a#46#4#0@@0| T@U) (|a#46#5#0@@0| T@U) (|a#46#6#0@@0| T@U) (|a#46#7#0@@0| T@U) (|a#46#8#0@@0| T@U) (|a#46#9#0@@0| T@U) (|a#46#10#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#46#0#0@@0| |a#46#1#0@@0| |a#46#2#0@@0| |a#46#3#0@@0| |a#46#4#0@@0| |a#46#5#0@@0| |a#46#6#0@@0| |a#46#7#0@@0| |a#46#8#0@@0| |a#46#9#0@@0| |a#46#10#0@@0|) (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@22| |_System._tuple#11OOOOOOOOOOG$T1@@22| |_System._tuple#11OOOOOOOOOOG$T2@@22| |_System._tuple#11OOOOOOOOOOG$T3@@22| |_System._tuple#11OOOOOOOOOOG$T4@@22| |_System._tuple#11OOOOOOOOOOG$T5@@22| |_System._tuple#11OOOOOOOOOOG$T6@@22| |_System._tuple#11OOOOOOOOOOG$T7@@22| |_System._tuple#11OOOOOOOOOOG$T8@@22| |_System._tuple#11OOOOOOOOOOG$T9@@22| |_System._tuple#11OOOOOOOOOOG$T10@@22|))  (and (and (and (and (and (and (and (and (and (and ($IsBox |a#46#0#0@@0| |_System._tuple#11OOOOOOOOOOG$T0@@22|) ($IsBox |a#46#1#0@@0| |_System._tuple#11OOOOOOOOOOG$T1@@22|)) ($IsBox |a#46#2#0@@0| |_System._tuple#11OOOOOOOOOOG$T2@@22|)) ($IsBox |a#46#3#0@@0| |_System._tuple#11OOOOOOOOOOG$T3@@22|)) ($IsBox |a#46#4#0@@0| |_System._tuple#11OOOOOOOOOOG$T4@@22|)) ($IsBox |a#46#5#0@@0| |_System._tuple#11OOOOOOOOOOG$T5@@22|)) ($IsBox |a#46#6#0@@0| |_System._tuple#11OOOOOOOOOOG$T6@@22|)) ($IsBox |a#46#7#0@@0| |_System._tuple#11OOOOOOOOOOG$T7@@22|)) ($IsBox |a#46#8#0@@0| |_System._tuple#11OOOOOOOOOOG$T8@@22|)) ($IsBox |a#46#9#0@@0| |_System._tuple#11OOOOOOOOOOG$T9@@22|)) ($IsBox |a#46#10#0@@0| |_System._tuple#11OOOOOOOOOOG$T10@@22|)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#46#0#0@@0| |a#46#1#0@@0| |a#46#2#0@@0| |a#46#3#0@@0| |a#46#4#0@@0| |a#46#5#0@@0| |a#46#6#0@@0| |a#46#7#0@@0| |a#46#8#0@@0| |a#46#9#0@@0| |a#46#10#0@@0|) (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@22| |_System._tuple#11OOOOOOOOOOG$T1@@22| |_System._tuple#11OOOOOOOOOOG$T2@@22| |_System._tuple#11OOOOOOOOOOG$T3@@22| |_System._tuple#11OOOOOOOOOOG$T4@@22| |_System._tuple#11OOOOOOOOOOG$T5@@22| |_System._tuple#11OOOOOOOOOOG$T6@@22| |_System._tuple#11OOOOOOOOOOG$T7@@22| |_System._tuple#11OOOOOOOOOOG$T8@@22| |_System._tuple#11OOOOOOOOOOG$T9@@22| |_System._tuple#11OOOOOOOOOOG$T10@@22|)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple11OOOOOOOOOOG#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (|_System.Tuple11OOOOOOOOOOG#Equal| a b))
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
(assert (= (Ctor BoxType) 4))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) (|a#47#2#0| T@U) (|a#47#3#0| T@U) (|a#47#4#0| T@U) (|a#47#5#0| T@U) (|a#47#6#0| T@U) (|a#47#7#0| T@U) (|a#47#8#0| T@U) (|a#47#9#0| T@U) (|a#47#10#0| T@U) ) (! (= (|#_System._tuple#11OOOOOOOOOOG._#Make11| (Lit BoxType |a#47#0#0|) (Lit BoxType |a#47#1#0|) (Lit BoxType |a#47#2#0|) (Lit BoxType |a#47#3#0|) (Lit BoxType |a#47#4#0|) (Lit BoxType |a#47#5#0|) (Lit BoxType |a#47#6#0|) (Lit BoxType |a#47#7#0|) (Lit BoxType |a#47#8#0|) (Lit BoxType |a#47#9#0|) (Lit BoxType |a#47#10#0|)) (Lit DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0| |a#47#4#0| |a#47#5#0| |a#47#6#0| |a#47#7#0| |a#47#8#0| |a#47#9#0| |a#47#10#0|)))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (|#_System._tuple#11OOOOOOOOOOG._#Make11| (Lit BoxType |a#47#0#0|) (Lit BoxType |a#47#1#0|) (Lit BoxType |a#47#2#0|) (Lit BoxType |a#47#3#0|) (Lit BoxType |a#47#4#0|) (Lit BoxType |a#47#5#0|) (Lit BoxType |a#47#6#0|) (Lit BoxType |a#47#7#0|) (Lit BoxType |a#47#8#0|) (Lit BoxType |a#47#9#0|) (Lit BoxType |a#47#10#0|)))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@11) (= (DatatypeCtorId d@@11) |##_System._tuple#11OOOOOOOOOOG._#Make11|))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@11))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@23| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@23| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@23| |_System._tuple#11OOOOOOOOOOG$T1@@23| |_System._tuple#11OOOOOOOOOOG$T2@@23| |_System._tuple#11OOOOOOOOOOG$T3@@23| |_System._tuple#11OOOOOOOOOOG$T4@@23| |_System._tuple#11OOOOOOOOOOG$T5@@23| |_System._tuple#11OOOOOOOOOOG$T6@@23| |_System._tuple#11OOOOOOOOOOG$T7@@23| |_System._tuple#11OOOOOOOOOOG$T8@@23| |_System._tuple#11OOOOOOOOOOG$T9@@23| |_System._tuple#11OOOOOOOOOOG$T10@@23|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@23| |_System._tuple#11OOOOOOOOOOG$T1@@23| |_System._tuple#11OOOOOOOOOOG$T2@@23| |_System._tuple#11OOOOOOOOOOG$T3@@23| |_System._tuple#11OOOOOOOOOOG$T4@@23| |_System._tuple#11OOOOOOOOOOG$T5@@23| |_System._tuple#11OOOOOOOOOOG$T6@@23| |_System._tuple#11OOOOOOOOOOG$T7@@23| |_System._tuple#11OOOOOOOOOOG$T8@@23| |_System._tuple#11OOOOOOOOOOG$T9@@23| |_System._tuple#11OOOOOOOOOOG$T10@@23|))))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsBox bx (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@23| |_System._tuple#11OOOOOOOOOOG$T1@@23| |_System._tuple#11OOOOOOOOOOG$T2@@23| |_System._tuple#11OOOOOOOOOOG$T3@@23| |_System._tuple#11OOOOOOOOOOG$T4@@23| |_System._tuple#11OOOOOOOOOOG$T5@@23| |_System._tuple#11OOOOOOOOOOG$T6@@23| |_System._tuple#11OOOOOOOOOOG$T7@@23| |_System._tuple#11OOOOOOOOOOG$T8@@23| |_System._tuple#11OOOOOOOOOOG$T9@@23| |_System._tuple#11OOOOOOOOOOG$T10@@23|)))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@24| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@24| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@24| |_System._tuple#11OOOOOOOOOOG$T1@@24| |_System._tuple#11OOOOOOOOOOG$T2@@24| |_System._tuple#11OOOOOOOOOOG$T3@@24| |_System._tuple#11OOOOOOOOOOG$T4@@24| |_System._tuple#11OOOOOOOOOOG$T5@@24| |_System._tuple#11OOOOOOOOOOG$T6@@24| |_System._tuple#11OOOOOOOOOOG$T7@@24| |_System._tuple#11OOOOOOOOOOG$T8@@24| |_System._tuple#11OOOOOOOOOOG$T9@@24| |_System._tuple#11OOOOOOOOOOG$T10@@24|)) Tagclass._System.Tuple11OOOOOOOOOOG) (= (TagFamily (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@24| |_System._tuple#11OOOOOOOOOOG$T1@@24| |_System._tuple#11OOOOOOOOOOG$T2@@24| |_System._tuple#11OOOOOOOOOOG$T3@@24| |_System._tuple#11OOOOOOOOOOG$T4@@24| |_System._tuple#11OOOOOOOOOOG$T5@@24| |_System._tuple#11OOOOOOOOOOG$T6@@24| |_System._tuple#11OOOOOOOOOOG$T7@@24| |_System._tuple#11OOOOOOOOOOG$T8@@24| |_System._tuple#11OOOOOOOOOOG$T9@@24| |_System._tuple#11OOOOOOOOOOG$T10@@24|)) |tytagFamily$_tuple#11OOOOOOOOOOG|))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@24| |_System._tuple#11OOOOOOOOOOG$T1@@24| |_System._tuple#11OOOOOOOOOOG$T2@@24| |_System._tuple#11OOOOOOOOOOG$T3@@24| |_System._tuple#11OOOOOOOOOOG$T4@@24| |_System._tuple#11OOOOOOOOOOG$T5@@24| |_System._tuple#11OOOOOOOOOOG$T6@@24| |_System._tuple#11OOOOOOOOOOG$T7@@24| |_System._tuple#11OOOOOOOOOOG$T8@@24| |_System._tuple#11OOOOOOOOOOG$T9@@24| |_System._tuple#11OOOOOOOOOOG$T10@@24|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple11OOOOOOOOOOG#Equal| a@@0 b@@0)  (and (and (and (and (and (and (and (and (and (and (= (_System.Tuple11OOOOOOOOOOG._0 a@@0) (_System.Tuple11OOOOOOOOOOG._0 b@@0)) (= (_System.Tuple11OOOOOOOOOOG._1 a@@0) (_System.Tuple11OOOOOOOOOOG._1 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._2 a@@0) (_System.Tuple11OOOOOOOOOOG._2 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._3 a@@0) (_System.Tuple11OOOOOOOOOOG._3 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._4 a@@0) (_System.Tuple11OOOOOOOOOOG._4 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._5 a@@0) (_System.Tuple11OOOOOOOOOOG._5 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._6 a@@0) (_System.Tuple11OOOOOOOOOOG._6 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._7 a@@0) (_System.Tuple11OOOOOOOOOOG._7 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._8 a@@0) (_System.Tuple11OOOOOOOOOOG._8 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._9 a@@0) (_System.Tuple11OOOOOOOOOOG._9 b@@0))) (= (_System.Tuple11OOOOOOOOOOG._10 a@@0) (_System.Tuple11OOOOOOOOOOG._10 b@@0))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (|_System.Tuple11OOOOOOOOOOG#Equal| a@@0 b@@0))
)))
(assert (forall ((|_System._tuple#11OOOOOOOOOOG$T0@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T1@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T2@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T3@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T4@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T5@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T6@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T7@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T8@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T9@@25| T@U) (|_System._tuple#11OOOOOOOOOOG$T10@@25| T@U) (d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@25| |_System._tuple#11OOOOOOOOOOG$T1@@25| |_System._tuple#11OOOOOOOOOOG$T2@@25| |_System._tuple#11OOOOOOOOOOG$T3@@25| |_System._tuple#11OOOOOOOOOOG$T4@@25| |_System._tuple#11OOOOOOOOOOG$T5@@25| |_System._tuple#11OOOOOOOOOOG$T6@@25| |_System._tuple#11OOOOOOOOOOG$T7@@25| |_System._tuple#11OOOOOOOOOOG$T8@@25| |_System._tuple#11OOOOOOOOOOG$T9@@25| |_System._tuple#11OOOOOOOOOOG$T10@@25|)) (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@12))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@12) ($Is DatatypeTypeType d@@12 (Tclass._System.Tuple11OOOOOOOOOOG |_System._tuple#11OOOOOOOOOOG$T0@@25| |_System._tuple#11OOOOOOOOOOG$T1@@25| |_System._tuple#11OOOOOOOOOOG$T2@@25| |_System._tuple#11OOOOOOOOOOG$T3@@25| |_System._tuple#11OOOOOOOOOOG$T4@@25| |_System._tuple#11OOOOOOOOOOG$T5@@25| |_System._tuple#11OOOOOOOOOOG$T6@@25| |_System._tuple#11OOOOOOOOOOG$T7@@25| |_System._tuple#11OOOOOOOOOOG$T8@@25| |_System._tuple#11OOOOOOOOOOG$T9@@25| |_System._tuple#11OOOOOOOOOOG$T10@@25|)))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@13) (exists ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) (|a#45#3#0| T@U) (|a#45#4#0| T@U) (|a#45#5#0| T@U) (|a#45#6#0| T@U) (|a#45#7#0| T@U) (|a#45#8#0| T@U) (|a#45#9#0| T@U) (|a#45#10#0| T@U) ) (! (= d@@13 (|#_System._tuple#11OOOOOOOOOOG._#Make11| |a#45#0#0| |a#45#1#0| |a#45#2#0| |a#45#3#0| |a#45#4#0| |a#45#5#0| |a#45#6#0| |a#45#7#0| |a#45#8#0| |a#45#9#0| |a#45#10#0|))
 :qid |unknown.0:0|
 :skolemid |567|
)))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (_System.Tuple11OOOOOOOOOOG.___hMake11_q d@@13))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |639|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@14 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@14)) (DtRank d@@14))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@14)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |tuple0#0@0| () T@U)
(declare-fun |tuple1#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |tuple0#0| () T@U)
(declare-fun |tuple1#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Test2)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |tuple0#0@0| (Lit DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 7))) ($Box intType (int_2_U (LitInt 8))) ($Box intType (int_2_U (LitInt 9))) ($Box intType (int_2_U (LitInt 10)))))) (= |tuple1#0@0| (Lit DatatypeTypeType (|#_System._tuple#11OOOOOOOOOOG._#Make11| ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 7))) ($Box intType (int_2_U (LitInt 8))) ($Box intType (int_2_U (LitInt 9))) ($Box intType (int_2_U (LitInt 10))))))) (=> (and (and (|$IsA#_System.Tuple11OOOOOOOOOOG| |tuple0#0@0|) (|$IsA#_System.Tuple11OOOOOOOOOOG| |tuple1#0@0|)) (= (ControlFlow 0 2) (- 0 1))) (|_System.Tuple11OOOOOOOOOOG#Equal| |tuple0#0@0| |tuple1#0@0|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |tuple0#0| (Tclass._System.Tuple11OOOOOOOOOOG TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt)) ($IsAlloc DatatypeTypeType |tuple0#0| (Tclass._System.Tuple11OOOOOOOOOOG TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt) $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |tuple1#0| (Tclass._System.Tuple11OOOOOOOOOOG TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt)) ($IsAlloc DatatypeTypeType |tuple1#0| (Tclass._System.Tuple11OOOOOOOOOOG TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
