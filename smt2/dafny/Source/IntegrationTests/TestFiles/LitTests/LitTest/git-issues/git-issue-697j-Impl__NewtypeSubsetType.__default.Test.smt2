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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.NewtypeSubsetType.Type0 () T@U)
(declare-fun Tagclass.NewtypeSubsetType.NonCompilableTest () T@U)
(declare-fun Tagclass.NewtypeSubsetType.Type2 () T@U)
(declare-fun Tagclass.NewtypeSubsetType.NonCompilableTestInt32 () T@U)
(declare-fun Tagclass.NewtypeSubsetType.Type4 () T@U)
(declare-fun Tagclass.NewtypeSubsetType.CompilableTest () T@U)
(declare-fun Tagclass.NewtypeSubsetType.Type6 () T@U)
(declare-fun tytagFamily$Type0 () T@U)
(declare-fun tytagFamily$NonCompilableTest () T@U)
(declare-fun tytagFamily$Type2 () T@U)
(declare-fun tytagFamily$NonCompilableTestInt32 () T@U)
(declare-fun tytagFamily$Type4 () T@U)
(declare-fun tytagFamily$CompilableTest () T@U)
(declare-fun tytagFamily$Type6 () T@U)
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
(declare-fun Tclass.NewtypeSubsetType.NonCompilableTest () T@U)
(declare-fun Tclass.NewtypeSubsetType.NonCompilableTestInt32 () T@U)
(declare-fun Tclass.NewtypeSubsetType.Type0 () T@U)
(declare-fun Tclass.NewtypeSubsetType.Type2 () T@U)
(declare-fun Tclass.NewtypeSubsetType.CompilableTest () T@U)
(declare-fun Tclass.NewtypeSubsetType.Type4 () T@U)
(declare-fun Tclass.NewtypeSubsetType.Type6 () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun NewtypeSubsetType.__default.P (Int) Bool)
(declare-fun |NewtypeSubsetType.__default.P#canCall| (Int) Bool)
(declare-fun NewtypeSubsetType.__default.Q (Int) Bool)
(declare-fun |NewtypeSubsetType.__default.Q#canCall| (Int) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |lambda#5| (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass.NewtypeSubsetType.Type0 Tagclass.NewtypeSubsetType.NonCompilableTest Tagclass.NewtypeSubsetType.Type2 Tagclass.NewtypeSubsetType.NonCompilableTestInt32 Tagclass.NewtypeSubsetType.Type4 Tagclass.NewtypeSubsetType.CompilableTest Tagclass.NewtypeSubsetType.Type6 tytagFamily$Type0 tytagFamily$NonCompilableTest tytagFamily$Type2 tytagFamily$NonCompilableTestInt32 tytagFamily$Type4 tytagFamily$CompilableTest tytagFamily$Type6)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.NewtypeSubsetType.NonCompilableTest $h)
 :qid |unknown.0:0|
 :skolemid |2551|
 :pattern ( ($IsAlloc intType |x#0| Tclass.NewtypeSubsetType.NonCompilableTest $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.NewtypeSubsetType.NonCompilableTestInt32 $h@@0)
 :qid |unknown.0:0|
 :skolemid |2554|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.NewtypeSubsetType.NonCompilableTestInt32 $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass.NewtypeSubsetType.Type0 $h@@1)
 :qid |unknown.0:0|
 :skolemid |2556|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass.NewtypeSubsetType.Type0 $h@@1))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass.NewtypeSubsetType.Type2 $h@@2)
 :qid |unknown.0:0|
 :skolemid |2558|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass.NewtypeSubsetType.Type2 $h@@2))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass.NewtypeSubsetType.CompilableTest $h@@3)
 :qid |unknown.0:0|
 :skolemid |2561|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass.NewtypeSubsetType.CompilableTest $h@@3))
)))
(assert (forall ((|x#0@@4| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@4| Tclass.NewtypeSubsetType.Type4 $h@@4)
 :qid |unknown.0:0|
 :skolemid |2563|
 :pattern ( ($IsAlloc intType |x#0@@4| Tclass.NewtypeSubsetType.Type4 $h@@4))
)))
(assert (forall ((|x#0@@5| T@U) ($h@@5 T@U) ) (! ($IsAlloc intType |x#0@@5| Tclass.NewtypeSubsetType.Type6 $h@@5)
 :qid |unknown.0:0|
 :skolemid |2565|
 :pattern ( ($IsAlloc intType |x#0@@5| Tclass.NewtypeSubsetType.Type6 $h@@5))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2069|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2067|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@6| Int) ) (!  (=> (or (|NewtypeSubsetType.__default.P#canCall| |x#0@@6|) (< 0 $FunctionContextHeight)) (= (NewtypeSubsetType.__default.P |x#0@@6|)  (or (not (= |x#0@@6| 3)) (not true))))
 :qid |gitissue697jdfy.159:15|
 :skolemid |2533|
 :pattern ( (NewtypeSubsetType.__default.P |x#0@@6|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@7| Int) ) (!  (=> (or (|NewtypeSubsetType.__default.Q#canCall| |x#0@@7|) (< 0 $FunctionContextHeight)) (= (NewtypeSubsetType.__default.Q |x#0@@7|)  (or (not (= |x#0@@7| 5)) (not true))))
 :qid |gitissue697jdfy.169:15|
 :skolemid |2537|
 :pattern ( (NewtypeSubsetType.__default.Q |x#0@@7|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2078|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@8| T@U) ) (! (= ($Is intType |x#0@@8| Tclass.NewtypeSubsetType.Type6)  (and (and (NewtypeSubsetType.__default.Q (U_2_int |x#0@@8|)) (< (U_2_int |x#0@@8|) 8)) (<= (LitInt 0) (U_2_int |x#0@@8|))))
 :qid |unknown.0:0|
 :skolemid |2564|
 :pattern ( ($Is intType |x#0@@8| Tclass.NewtypeSubsetType.Type6))
)))
(assert (forall ((|x#0@@9| T@U) ) (! (= ($Is intType |x#0@@9| Tclass.NewtypeSubsetType.CompilableTest)  (and (NewtypeSubsetType.__default.Q (U_2_int |x#0@@9|)) (< (U_2_int |x#0@@9|) 8)))
 :qid |unknown.0:0|
 :skolemid |2560|
 :pattern ( ($Is intType |x#0@@9| Tclass.NewtypeSubsetType.CompilableTest))
)))
(assert (forall ((|x#0@@10| T@U) ) (! (= ($Is intType |x#0@@10| Tclass.NewtypeSubsetType.Type4)  (and (NewtypeSubsetType.__default.Q (U_2_int |x#0@@10|)) (< (U_2_int |x#0@@10|) 8)))
 :qid |unknown.0:0|
 :skolemid |2562|
 :pattern ( ($Is intType |x#0@@10| Tclass.NewtypeSubsetType.Type4))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2205|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((|x#0@@11| T@U) ) (! (= ($Is intType |x#0@@11| Tclass.NewtypeSubsetType.NonCompilableTestInt32)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@11|)) (< (U_2_int |x#0@@11|) 2147483648)) (NewtypeSubsetType.__default.P (U_2_int |x#0@@11|))))
 :qid |unknown.0:0|
 :skolemid |2553|
 :pattern ( ($Is intType |x#0@@11| Tclass.NewtypeSubsetType.NonCompilableTestInt32))
)))
(assert (forall ((|x#0@@12| T@U) ) (! (= ($Is intType |x#0@@12| Tclass.NewtypeSubsetType.Type2)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@12|)) (< (U_2_int |x#0@@12|) 2147483648)) (NewtypeSubsetType.__default.P (U_2_int |x#0@@12|))))
 :qid |unknown.0:0|
 :skolemid |2557|
 :pattern ( ($Is intType |x#0@@12| Tclass.NewtypeSubsetType.Type2))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2098|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2099|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2091|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@13| Int) ) (!  (=> (or (|NewtypeSubsetType.__default.P#canCall| (LitInt |x#0@@13|)) (< 0 $FunctionContextHeight)) (= (NewtypeSubsetType.__default.P (LitInt |x#0@@13|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@13| 3)) (not true)))))))
 :qid |gitissue697jdfy.159:15|
 :weight 3
 :skolemid |2534|
 :pattern ( (NewtypeSubsetType.__default.P (LitInt |x#0@@13|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@14| Int) ) (!  (=> (or (|NewtypeSubsetType.__default.Q#canCall| (LitInt |x#0@@14|)) (< 0 $FunctionContextHeight)) (= (NewtypeSubsetType.__default.Q (LitInt |x#0@@14|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@14| 5)) (not true)))))))
 :qid |gitissue697jdfy.169:15|
 :weight 3
 :skolemid |2538|
 :pattern ( (NewtypeSubsetType.__default.Q (LitInt |x#0@@14|)))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.NewtypeSubsetType.Type0) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.NewtypeSubsetType.Type0)))
 :qid |unknown.0:0|
 :skolemid |2542|
 :pattern ( ($IsBox bx@@1 Tclass.NewtypeSubsetType.Type0))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.NewtypeSubsetType.NonCompilableTest) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.NewtypeSubsetType.NonCompilableTest)))
 :qid |unknown.0:0|
 :skolemid |2543|
 :pattern ( ($IsBox bx@@2 Tclass.NewtypeSubsetType.NonCompilableTest))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.NewtypeSubsetType.Type2) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass.NewtypeSubsetType.Type2)))
 :qid |unknown.0:0|
 :skolemid |2544|
 :pattern ( ($IsBox bx@@3 Tclass.NewtypeSubsetType.Type2))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.NewtypeSubsetType.NonCompilableTestInt32) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass.NewtypeSubsetType.NonCompilableTestInt32)))
 :qid |unknown.0:0|
 :skolemid |2545|
 :pattern ( ($IsBox bx@@4 Tclass.NewtypeSubsetType.NonCompilableTestInt32))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.NewtypeSubsetType.Type4) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass.NewtypeSubsetType.Type4)))
 :qid |unknown.0:0|
 :skolemid |2546|
 :pattern ( ($IsBox bx@@5 Tclass.NewtypeSubsetType.Type4))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.NewtypeSubsetType.CompilableTest) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.NewtypeSubsetType.CompilableTest)))
 :qid |unknown.0:0|
 :skolemid |2547|
 :pattern ( ($IsBox bx@@6 Tclass.NewtypeSubsetType.CompilableTest))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.NewtypeSubsetType.Type6) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) Tclass.NewtypeSubsetType.Type6)))
 :qid |unknown.0:0|
 :skolemid |2548|
 :pattern ( ($IsBox bx@@7 Tclass.NewtypeSubsetType.Type6))
)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|))))
 :qid |gitissue697jdfy.164:8|
 :skolemid |5348|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2090|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2119|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2120|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2053|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2054|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2077|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|x#0@@15| T@U) ) (! (= ($Is intType |x#0@@15| Tclass.NewtypeSubsetType.NonCompilableTest) (NewtypeSubsetType.__default.P (U_2_int |x#0@@15|)))
 :qid |unknown.0:0|
 :skolemid |2550|
 :pattern ( ($Is intType |x#0@@15| Tclass.NewtypeSubsetType.NonCompilableTest))
)))
(assert (forall ((|x#0@@16| T@U) ) (! (= ($Is intType |x#0@@16| Tclass.NewtypeSubsetType.Type0) (NewtypeSubsetType.__default.P (U_2_int |x#0@@16|)))
 :qid |unknown.0:0|
 :skolemid |2555|
 :pattern ( ($Is intType |x#0@@16| Tclass.NewtypeSubsetType.Type0))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5347|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| Int) (|$y#4| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#5| |l#0@@1| |l#1@@1|) |$y#4|))  (and ($IsBox |$y#4| |l#0@@1|) (<= |l#1@@1| (U_2_int ($Unbox intType |$y#4|)))))
 :qid |gitissue697jdfy.172:8|
 :skolemid |5349|
 :pattern ( (MapType0Select BoxType boolType (|lambda#5| |l#0@@1| |l#1@@1|) |$y#4|))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2084|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (= (Tag Tclass.NewtypeSubsetType.Type0) Tagclass.NewtypeSubsetType.Type0))
(assert (= (TagFamily Tclass.NewtypeSubsetType.Type0) tytagFamily$Type0))
(assert (= (Tag Tclass.NewtypeSubsetType.NonCompilableTest) Tagclass.NewtypeSubsetType.NonCompilableTest))
(assert (= (TagFamily Tclass.NewtypeSubsetType.NonCompilableTest) tytagFamily$NonCompilableTest))
(assert (= (Tag Tclass.NewtypeSubsetType.Type2) Tagclass.NewtypeSubsetType.Type2))
(assert (= (TagFamily Tclass.NewtypeSubsetType.Type2) tytagFamily$Type2))
(assert (= (Tag Tclass.NewtypeSubsetType.NonCompilableTestInt32) Tagclass.NewtypeSubsetType.NonCompilableTestInt32))
(assert (= (TagFamily Tclass.NewtypeSubsetType.NonCompilableTestInt32) tytagFamily$NonCompilableTestInt32))
(assert (= (Tag Tclass.NewtypeSubsetType.Type4) Tagclass.NewtypeSubsetType.Type4))
(assert (= (TagFamily Tclass.NewtypeSubsetType.Type4) tytagFamily$Type4))
(assert (= (Tag Tclass.NewtypeSubsetType.CompilableTest) Tagclass.NewtypeSubsetType.CompilableTest))
(assert (= (TagFamily Tclass.NewtypeSubsetType.CompilableTest) tytagFamily$CompilableTest))
(assert (= (Tag Tclass.NewtypeSubsetType.Type6) Tagclass.NewtypeSubsetType.Type6))
(assert (= (TagFamily Tclass.NewtypeSubsetType.Type6) tytagFamily$Type6))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2070|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2068|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#12@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |r5#0@1| () T@U)
(declare-fun |y#10@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |r4#0@1| () T@U)
(declare-fun |y#8@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |r3#0@1| () T@U)
(declare-fun |r4#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |r5#0@0| () T@U)
(declare-fun |r6#0@0| () T@U)
(declare-fun |y#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |r2#0@1| () T@U)
(declare-fun |y#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |r1#0@1| () T@U)
(declare-fun |y#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |r0#0@1| () T@U)
(declare-fun |y#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |r0#0@0| () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun |r2#0@0| () T@U)
(declare-fun |r3#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |r2#0| () T@U)
(declare-fun |r3#0| () T@U)
(declare-fun |r4#0| () T@U)
(declare-fun |r5#0| () T@U)
(declare-fun |r6#0| () T@U)
(set-info :boogie-vc-id Impl$$NewtypeSubsetType.__default.Test)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon29_correct true))
(let ((anon47_Else_correct  (=> (and (< |y#12@0| (LitInt 2)) (= (ControlFlow 0 4) 1)) anon29_correct)))
(let ((anon47_Then_correct  (=> (and (<= (LitInt 2) |y#12@0|) (= (ControlFlow 0 3) 1)) anon29_correct)))
(let ((anon46_Then_correct  (=> (and (and (and (NewtypeSubsetType.__default.Q |y#12@0|) (< |y#12@0| 8)) (<= (LitInt 0) |y#12@0|)) (= |newtype$check#10@0| (LitInt 2))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (NewtypeSubsetType.__default.Q |newtype$check#10@0|) (< |newtype$check#10@0| 8))) (=> (and (NewtypeSubsetType.__default.Q |newtype$check#10@0|) (< |newtype$check#10@0| 8)) (and (=> (= (ControlFlow 0 5) 3) anon47_Then_correct) (=> (= (ControlFlow 0 5) 4) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (not (and (and (NewtypeSubsetType.__default.Q |y#12@0|) (< |y#12@0| 8)) (<= (LitInt 0) |y#12@0|))) (= (ControlFlow 0 2) 1)) anon29_correct)))
(let ((anon26_correct  (=> (= |r5#0@1| (|Set#FromBoogieMap| (|lambda#5| Tclass.NewtypeSubsetType.CompilableTest (LitInt 2)))) (and (=> (= (ControlFlow 0 7) 5) anon46_Then_correct) (=> (= (ControlFlow 0 7) 2) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (< |y#10@0| (LitInt 2)) (= (ControlFlow 0 10) 7)) anon26_correct)))
(let ((anon45_Then_correct  (=> (and (<= (LitInt 2) |y#10@0|) (= (ControlFlow 0 9) 7)) anon26_correct)))
(let ((anon44_Then_correct  (=> (and (and (NewtypeSubsetType.__default.Q |y#10@0|) (< |y#10@0| 8)) (= |newtype$check#9@0| (LitInt 2))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (NewtypeSubsetType.__default.Q |newtype$check#9@0|) (< |newtype$check#9@0| 8))) (=> (and (NewtypeSubsetType.__default.Q |newtype$check#9@0|) (< |newtype$check#9@0| 8)) (and (=> (= (ControlFlow 0 11) 9) anon45_Then_correct) (=> (= (ControlFlow 0 11) 10) anon45_Else_correct)))))))
(let ((anon44_Else_correct  (=> (and (not (and (NewtypeSubsetType.__default.Q |y#10@0|) (< |y#10@0| 8))) (= (ControlFlow 0 8) 7)) anon26_correct)))
(let ((anon23_correct  (=> (= |r4#0@1| (|Set#FromBoogieMap| (|lambda#5| Tclass.NewtypeSubsetType.Type4 (LitInt 2)))) (and (=> (= (ControlFlow 0 13) 11) anon44_Then_correct) (=> (= (ControlFlow 0 13) 8) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (< |y#8@0| (LitInt 2)) (= (ControlFlow 0 16) 13)) anon23_correct)))
(let ((anon43_Then_correct  (=> (and (<= (LitInt 2) |y#8@0|) (= (ControlFlow 0 15) 13)) anon23_correct)))
(let ((anon42_Then_correct  (=> (and (and (NewtypeSubsetType.__default.Q |y#8@0|) (< |y#8@0| 8)) (= |newtype$check#8@0| (LitInt 2))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (NewtypeSubsetType.__default.Q |newtype$check#8@0|) (< |newtype$check#8@0| 8))) (=> (and (NewtypeSubsetType.__default.Q |newtype$check#8@0|) (< |newtype$check#8@0| 8)) (and (=> (= (ControlFlow 0 17) 15) anon43_Then_correct) (=> (= (ControlFlow 0 17) 16) anon43_Else_correct)))))))
(let ((anon42_Else_correct  (=> (and (not (and (NewtypeSubsetType.__default.Q |y#8@0|) (< |y#8@0| 8))) (= (ControlFlow 0 14) 13)) anon23_correct)))
(let ((anon20_correct  (=> (= |r3#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.NewtypeSubsetType.NonCompilableTestInt32 (LitInt 2) 6))) (=> (and ($Is SetType |r4#0@0| (TSet Tclass.NewtypeSubsetType.Type4)) ($IsAlloc SetType |r4#0@0| (TSet Tclass.NewtypeSubsetType.Type4) $Heap)) (=> (and (and ($Is SetType |r5#0@0| (TSet Tclass.NewtypeSubsetType.CompilableTest)) ($IsAlloc SetType |r5#0@0| (TSet Tclass.NewtypeSubsetType.CompilableTest) $Heap)) (and ($Is SetType |r6#0@0| (TSet Tclass.NewtypeSubsetType.Type6)) ($IsAlloc SetType |r6#0@0| (TSet Tclass.NewtypeSubsetType.Type6) $Heap))) (and (=> (= (ControlFlow 0 19) 17) anon42_Then_correct) (=> (= (ControlFlow 0 19) 14) anon42_Else_correct)))))))
(let ((anon41_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#6@0|) (< |y#6@0| 6))) (= (ControlFlow 0 22) 19)) anon20_correct)))
(let ((anon41_Then_correct  (=> (and (and (<= (LitInt 2) |y#6@0|) (< |y#6@0| 6)) (= (ControlFlow 0 21) 19)) anon20_correct)))
(let ((anon40_Else_correct  (=> (< |y#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 25) 21) anon41_Then_correct) (=> (= (ControlFlow 0 25) 22) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (<= (LitInt 2) |y#6@0|) (= |newtype$check#7@0| (LitInt 6))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#7@0|))) (=> (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#7@0|)) (and (=> (= (ControlFlow 0 23) 21) anon41_Then_correct) (=> (= (ControlFlow 0 23) 22) anon41_Else_correct)))))))
(let ((anon39_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#6@0|) (< |y#6@0| 2147483648)) (NewtypeSubsetType.__default.P |y#6@0|)) (= |newtype$check#6@0| (LitInt 2))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#6@0|))) (=> (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#6@0|)) (and (=> (= (ControlFlow 0 26) 23) anon40_Then_correct) (=> (= (ControlFlow 0 26) 25) anon40_Else_correct)))))))
(let ((anon39_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#6@0|) (< |y#6@0| 2147483648)) (NewtypeSubsetType.__default.P |y#6@0|))) (= (ControlFlow 0 20) 19)) anon20_correct)))
(let ((anon15_correct  (=> (= |r2#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.NewtypeSubsetType.Type2 (LitInt 2) 6))) (and (=> (= (ControlFlow 0 28) 26) anon39_Then_correct) (=> (= (ControlFlow 0 28) 20) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#4@0|) (< |y#4@0| 6))) (= (ControlFlow 0 31) 28)) anon15_correct)))
(let ((anon38_Then_correct  (=> (and (and (<= (LitInt 2) |y#4@0|) (< |y#4@0| 6)) (= (ControlFlow 0 30) 28)) anon15_correct)))
(let ((anon37_Else_correct  (=> (< |y#4@0| (LitInt 2)) (and (=> (= (ControlFlow 0 34) 30) anon38_Then_correct) (=> (= (ControlFlow 0 34) 31) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (<= (LitInt 2) |y#4@0|) (= |newtype$check#5@0| (LitInt 6))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#5@0|))) (=> (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#5@0|)) (and (=> (= (ControlFlow 0 32) 30) anon38_Then_correct) (=> (= (ControlFlow 0 32) 31) anon38_Else_correct)))))))
(let ((anon36_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#4@0|) (< |y#4@0| 2147483648)) (NewtypeSubsetType.__default.P |y#4@0|)) (= |newtype$check#4@0| (LitInt 2))) (and (=> (= (ControlFlow 0 35) (- 0 36)) (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#4@0|))) (=> (and (and (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648)) (NewtypeSubsetType.__default.P |newtype$check#4@0|)) (and (=> (= (ControlFlow 0 35) 32) anon37_Then_correct) (=> (= (ControlFlow 0 35) 34) anon37_Else_correct)))))))
(let ((anon36_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#4@0|) (< |y#4@0| 2147483648)) (NewtypeSubsetType.__default.P |y#4@0|))) (= (ControlFlow 0 29) 28)) anon15_correct)))
(let ((anon10_correct  (=> (= |r1#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.NewtypeSubsetType.NonCompilableTest (LitInt 2) 6))) (and (=> (= (ControlFlow 0 37) 35) anon36_Then_correct) (=> (= (ControlFlow 0 37) 29) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#2@0|) (< |y#2@0| 6))) (= (ControlFlow 0 40) 37)) anon10_correct)))
(let ((anon35_Then_correct  (=> (and (and (<= (LitInt 2) |y#2@0|) (< |y#2@0| 6)) (= (ControlFlow 0 39) 37)) anon10_correct)))
(let ((anon34_Else_correct  (=> (< |y#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 43) 39) anon35_Then_correct) (=> (= (ControlFlow 0 43) 40) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 2) |y#2@0|) (= |newtype$check#3@0| (LitInt 6))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (NewtypeSubsetType.__default.P |newtype$check#3@0|)) (=> (NewtypeSubsetType.__default.P |newtype$check#3@0|) (and (=> (= (ControlFlow 0 41) 39) anon35_Then_correct) (=> (= (ControlFlow 0 41) 40) anon35_Else_correct)))))))
(let ((anon33_Then_correct  (=> (and (NewtypeSubsetType.__default.P |y#2@0|) (= |newtype$check#2@0| (LitInt 2))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (NewtypeSubsetType.__default.P |newtype$check#2@0|)) (=> (NewtypeSubsetType.__default.P |newtype$check#2@0|) (and (=> (= (ControlFlow 0 44) 41) anon34_Then_correct) (=> (= (ControlFlow 0 44) 43) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (and (not (NewtypeSubsetType.__default.P |y#2@0|)) (= (ControlFlow 0 38) 37)) anon10_correct)))
(let ((anon5_correct  (=> (= |r0#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.NewtypeSubsetType.Type0 (LitInt 2) 6))) (and (=> (= (ControlFlow 0 46) 44) anon33_Then_correct) (=> (= (ControlFlow 0 46) 38) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#0@0|) (< |y#0@0| 6))) (= (ControlFlow 0 49) 46)) anon5_correct)))
(let ((anon32_Then_correct  (=> (and (and (<= (LitInt 2) |y#0@0|) (< |y#0@0| 6)) (= (ControlFlow 0 48) 46)) anon5_correct)))
(let ((anon31_Else_correct  (=> (< |y#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 52) 48) anon32_Then_correct) (=> (= (ControlFlow 0 52) 49) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (<= (LitInt 2) |y#0@0|) (= |newtype$check#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (NewtypeSubsetType.__default.P |newtype$check#1@0|)) (=> (NewtypeSubsetType.__default.P |newtype$check#1@0|) (and (=> (= (ControlFlow 0 50) 48) anon32_Then_correct) (=> (= (ControlFlow 0 50) 49) anon32_Else_correct)))))))
(let ((anon30_Then_correct  (=> (and (NewtypeSubsetType.__default.P |y#0@0|) (= |newtype$check#0@0| (LitInt 2))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (NewtypeSubsetType.__default.P |newtype$check#0@0|)) (=> (NewtypeSubsetType.__default.P |newtype$check#0@0|) (and (=> (= (ControlFlow 0 53) 50) anon31_Then_correct) (=> (= (ControlFlow 0 53) 52) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (and (not (NewtypeSubsetType.__default.P |y#0@0|)) (= (ControlFlow 0 47) 46)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and ($Is SetType |r0#0@0| (TSet Tclass.NewtypeSubsetType.Type0)) ($IsAlloc SetType |r0#0@0| (TSet Tclass.NewtypeSubsetType.Type0) $Heap)) (and ($Is SetType |r1#0@0| (TSet Tclass.NewtypeSubsetType.NonCompilableTest)) ($IsAlloc SetType |r1#0@0| (TSet Tclass.NewtypeSubsetType.NonCompilableTest) $Heap))) (and (and ($Is SetType |r2#0@0| (TSet Tclass.NewtypeSubsetType.Type2)) ($IsAlloc SetType |r2#0@0| (TSet Tclass.NewtypeSubsetType.Type2) $Heap)) (and ($Is SetType |r3#0@0| (TSet Tclass.NewtypeSubsetType.NonCompilableTestInt32)) ($IsAlloc SetType |r3#0@0| (TSet Tclass.NewtypeSubsetType.NonCompilableTestInt32) $Heap)))) (and (=> (= (ControlFlow 0 55) 53) anon30_Then_correct) (=> (= (ControlFlow 0 55) 47) anon30_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is SetType |r0#0| (TSet Tclass.NewtypeSubsetType.Type0)) ($IsAlloc SetType |r0#0| (TSet Tclass.NewtypeSubsetType.Type0) $Heap)) true) (and (and ($Is SetType |r1#0| (TSet Tclass.NewtypeSubsetType.NonCompilableTest)) ($IsAlloc SetType |r1#0| (TSet Tclass.NewtypeSubsetType.NonCompilableTest) $Heap)) true)) (and (and (and ($Is SetType |r2#0| (TSet Tclass.NewtypeSubsetType.Type2)) ($IsAlloc SetType |r2#0| (TSet Tclass.NewtypeSubsetType.Type2) $Heap)) true) (and (and ($Is SetType |r3#0| (TSet Tclass.NewtypeSubsetType.NonCompilableTestInt32)) ($IsAlloc SetType |r3#0| (TSet Tclass.NewtypeSubsetType.NonCompilableTestInt32) $Heap)) true))) (and (and (and (and ($Is SetType |r4#0| (TSet Tclass.NewtypeSubsetType.Type4)) ($IsAlloc SetType |r4#0| (TSet Tclass.NewtypeSubsetType.Type4) $Heap)) true) (and (and ($Is SetType |r5#0| (TSet Tclass.NewtypeSubsetType.CompilableTest)) ($IsAlloc SetType |r5#0| (TSet Tclass.NewtypeSubsetType.CompilableTest) $Heap)) true)) (and (and (and ($Is SetType |r6#0| (TSet Tclass.NewtypeSubsetType.Type6)) ($IsAlloc SetType |r6#0| (TSet Tclass.NewtypeSubsetType.Type6) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 56) 55))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
