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
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Div (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TBool TagBool alloc Tagclass._System.nat Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 tytagFamily$nat |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2|)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |#$T0@@6|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) |#$T1@@7|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)))
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
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@15| $OneHeap |f#0@@0| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0) (forall ((bx0 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h@@0)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h@@0))) (Requires2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
 :pattern ( (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0))
)))
(assert (forall ((f@@0 T@U) (t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)) (forall ((h@@1 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1))) (Requires2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0)) ($IsBox (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap T@U) (f@@1 T@U) (bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and ($IsBox bx0@@1 t0@@2) ($IsBox bx1@@1 t1@@2)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@2 t1@@2 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) ($IsGoodHeap heap))
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2)) (forall ((bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@2 t0@@3 h@@2) ($IsAllocBox bx1@@2 t1@@3 h@@2)) (Requires2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2)) ($IsAllocBox (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2) t2@@2 h@@2))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (heap@@0 T@U) (f@@3 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and ($IsBox bx0@@3 t0@@4) ($IsBox bx1@@3 t1@@4)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@4 t1@@4 t2@@3)))) (|Set#Equal| (Reads2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3))
)))
(assert (forall ((f@@4 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 u0@@0) ($IsBox bx@@4 t0@@5))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@4 u0@@0))
 :pattern ( ($IsBox bx@@4 t0@@5))
))) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 u1@@0) ($IsBox bx@@5 t1@@5))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@5 u1@@0))
 :pattern ( ($IsBox bx@@5 t1@@5))
))) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 t2@@4) ($IsBox bx@@6 u2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@6 t2@@4))
 :pattern ( ($IsBox bx@@6 u2))
))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@6 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@6 t2@@5 (MapType1Store t0@@6 t1@@6 t2@@5 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |645|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@16| T@U) (|#$R@@16| T@U) (|f#0@@1| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@17| T@U) (|#$R@@17| T@U) (|f#0@@2| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |P#0| () T@U)
(declare-fun |A#0| () Int)
(declare-fun |B#0| () Int)
(declare-fun |$rhs#1_1@0| () Int)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.INDUCTION__EVEN__ODD)
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
 (=> (= (ControlFlow 0 0) 29) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap@1 |P#0| ($Box intType (int_2_U |A#0|)) ($Box intType (int_2_U |B#0|))))))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 4) (- 0 15)) (or (= |B#0| (Mul (LitInt 2) |$rhs#1_1@0|)) (= |B#0| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)))) (=> (or (= |B#0| (Mul (LitInt 2) |$rhs#1_1@0|)) (= |B#0| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (and (=> (= (ControlFlow 0 4) (- 0 14)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 4) (- 0 13)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 4) (- 0 12)) (or (<= 0 |A#0|) (= |$rhs#1_0@0| |A#0|))) (=> (or (<= 0 |A#0|) (= |$rhs#1_0@0| |A#0|)) (and (=> (= (ControlFlow 0 4) (- 0 11)) (or (or (<= 0 |B#0|) (< |$rhs#1_0@0| |A#0|)) (= |$rhs#1_1@0| |B#0|))) (=> (or (or (<= 0 |B#0|) (< |$rhs#1_0@0| |A#0|)) (= |$rhs#1_1@0| |B#0|)) (and (=> (= (ControlFlow 0 4) (- 0 10)) (or (< |$rhs#1_0@0| |A#0|) (and (= |$rhs#1_0@0| |A#0|) (< |$rhs#1_1@0| |B#0|)))) (=> (or (< |$rhs#1_0@0| |A#0|) (and (= |$rhs#1_0@0| |A#0|) (< |$rhs#1_1@0| |B#0|))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 0))))))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 0)))))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (forall ((|a#1| Int) (|b#1| Int) ) (!  (=> (and (<= (LitInt 0) |a#1|) (<= (LitInt 0) |b#1|)) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#1|)) ($Box intType (int_2_U |b#1|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#1|))) ($Box intType (int_2_U (Mul (LitInt 2) |b#1|))))))))
 :qid |Lucasupdfy.300:19|
 :skolemid |611|
 :pattern ( (Mul 2 |b#1|) (Mul 2 |a#1|))
))) (=> (forall ((|a#1@@0| Int) (|b#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |a#1@@0|) (<= (LitInt 0) |b#1@@0|)) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#1@@0|)) ($Box intType (int_2_U |b#1@@0|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#1@@0|))) ($Box intType (int_2_U (Mul (LitInt 2) |b#1@@0|))))))))
 :qid |Lucasupdfy.300:19|
 :skolemid |611|
 :pattern ( (Mul 2 |b#1@@0|) (Mul 2 |a#1@@0|))
)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((|a#3| Int) (|b#3| Int) (|_t#0#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |a#3|) (<= (LitInt 0) |b#3|)) (= |_t#0#0| (+ (Mul (LitInt 2) |b#3|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3|)) ($Box intType (int_2_U |b#3|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#3|))) ($Box intType (int_2_U |_t#0#0|)))))))
 :qid |Lucasupdfy.301:19|
 :skolemid |612|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3|))) ($Box intType (int_2_U |_t#0#0|)))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3|)) ($Box intType (int_2_U |b#3|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3|))) ($Box intType (int_2_U |_t#0#0|)))) (Mul 2 |b#3|))
))) (=> (forall ((|a#3@@0| Int) (|b#3@@0| Int) (|_t#0#0@@0| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#3@@0|) (<= (LitInt 0) |b#3@@0|)) (= (U_2_int |_t#0#0@@0|) (+ (Mul (LitInt 2) |b#3@@0|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3@@0|)) ($Box intType (int_2_U |b#3@@0|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#3@@0|))) ($Box intType |_t#0#0@@0|))))))
 :qid |Lucasupdfy.301:19|
 :skolemid |612|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3@@0|))) ($Box intType |_t#0#0@@0|))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3@@0|)) ($Box intType (int_2_U |b#3@@0|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3@@0|))) ($Box intType |_t#0#0@@0|))) (Mul 2 |b#3@@0|))
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((|a#5| Int) (|b#5| Int) (|_t#0#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |a#5|) (<= (LitInt 0) |b#5|)) (= |_t#0#1| (+ (Mul (LitInt 2) |a#5|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5|)) ($Box intType (int_2_U |b#5|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#1|)) ($Box intType (int_2_U (Mul (LitInt 2) |b#5|))))))))
 :qid |Lucasupdfy.302:19|
 :skolemid |613|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#1|)) ($Box intType (int_2_U (Mul 2 |b#5|))))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5|)) ($Box intType (int_2_U |b#5|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#1|)) ($Box intType (int_2_U (Mul 2 |b#5|))))) (Mul 2 |a#5|))
))) (=> (forall ((|a#5@@0| Int) (|b#5@@0| Int) (|_t#0#1@@0| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#5@@0|) (<= (LitInt 0) |b#5@@0|)) (= (U_2_int |_t#0#1@@0|) (+ (Mul (LitInt 2) |a#5@@0|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5@@0|)) ($Box intType (int_2_U |b#5@@0|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@0|) ($Box intType (int_2_U (Mul (LitInt 2) |b#5@@0|))))))))
 :qid |Lucasupdfy.302:19|
 :skolemid |613|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@0|) ($Box intType (int_2_U (Mul 2 |b#5@@0|))))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5@@0|)) ($Box intType (int_2_U |b#5@@0|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@0|) ($Box intType (int_2_U (Mul 2 |b#5@@0|))))) (Mul 2 |a#5@@0|))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((|a#7| Int) (|b#7| Int) (|_t#0#2| Int) (|_t#1#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |a#7|) (<= (LitInt 0) |b#7|)) (and (= |_t#1#0| (+ (Mul (LitInt 2) |b#7|) 1)) (= |_t#0#2| (+ (Mul (LitInt 2) |a#7|) 1)))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7|)) ($Box intType (int_2_U |b#7|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#2|)) ($Box intType (int_2_U |_t#1#0|)))))))
 :qid |Lucasupdfy.303:19|
 :skolemid |614|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#2|)) ($Box intType (int_2_U |_t#1#0|)))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7|)) ($Box intType (int_2_U |b#7|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |_t#0#2|)) ($Box intType (int_2_U |_t#1#0|)))) (Mul 2 |a#7|) (Mul 2 |b#7|))
))) (=> (forall ((|a#7@@0| Int) (|b#7@@0| Int) (|_t#0#2@@0| T@U) (|_t#1#0@@0| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#7@@0|) (<= (LitInt 0) |b#7@@0|)) (and (= (U_2_int |_t#1#0@@0|) (+ (Mul (LitInt 2) |b#7@@0|) 1)) (= (U_2_int |_t#0#2@@0|) (+ (Mul (LitInt 2) |a#7@@0|) 1)))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7@@0|)) ($Box intType (int_2_U |b#7@@0|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@0|) ($Box intType |_t#1#0@@0|))))))
 :qid |Lucasupdfy.303:19|
 :skolemid |614|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@0|) ($Box intType |_t#1#0@@0|))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7@@0|)) ($Box intType (int_2_U |b#7@@0|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@0|) ($Box intType |_t#1#0@@0|))) (Mul 2 |a#7@@0|) (Mul 2 |b#7@@0|))
)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap@0 |P#0| ($Box intType (int_2_U |$rhs#1_0@0|)) ($Box intType (int_2_U |$rhs#1_1@0|))))) (= $Heap $Heap@0)) (and (= $Heap@1 $Heap@0) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))
(let ((anon12_Else_correct  (=> (and (= |B#0| (Mul (LitInt 2) |$rhs#1_1@0|)) (= (ControlFlow 0 17) 4)) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (or (not (= |B#0| (Mul (LitInt 2) |$rhs#1_1@0|))) (not true)) (= (ControlFlow 0 16) 4)) anon8_correct)))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (= |A#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |A#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (=> (or (= |A#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |A#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (and (=> (= (ControlFlow 0 18) 16) anon12_Then_correct) (=> (= (ControlFlow 0 18) 17) anon12_Else_correct))))))
(let ((anon11_Else_correct  (=> (and (= |A#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= (ControlFlow 0 21) 18)) anon6_correct)))
(let ((anon11_Then_correct  (=> (and (or (not (= |A#0| (Mul (LitInt 2) |$rhs#1_0@0|))) (not true)) (= (ControlFlow 0 20) 18)) anon6_correct)))
(let ((anon10_Else_correct  (=> (not (and (= |A#0| (LitInt 0)) (= |B#0| (LitInt 0)))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#1_0@0| (Div |A#0| (LitInt 2))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#1_1@0| (Div |B#0| (LitInt 2))) (and (=> (= (ControlFlow 0 22) 20) anon11_Then_correct) (=> (= (ControlFlow 0 22) 21) anon11_Else_correct)))))))))))
(let ((anon10_Then_correct  (=> (and (and (= |A#0| (LitInt 0)) (= |B#0| (LitInt 0))) (and (= $Heap@1 $Heap) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 25) 3) anon10_Then_correct) (=> (= (ControlFlow 0 25) 22) anon10_Else_correct))))
(let ((anon9_Else_correct  (=> (and (or (not (= |A#0| (LitInt 0))) (not true)) (= (ControlFlow 0 27) 25)) anon2_correct)))
(let ((anon9_Then_correct  (=> (and (= |A#0| (LitInt 0)) (= (ControlFlow 0 26) 25)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 28) 26) anon9_Then_correct) (=> (= (ControlFlow 0 28) 27) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is HandleTypeType |P#0| (Tclass._System.___hTotalFunc2 Tclass._System.nat Tclass._System.nat TBool)) ($IsAlloc HandleTypeType |P#0| (Tclass._System.___hTotalFunc2 Tclass._System.nat Tclass._System.nat TBool) $Heap)) (<= (LitInt 0) |A#0|)) (=> (and (and (and (<= (LitInt 0) |B#0|) (= 0 $FunctionContextHeight)) (and (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 0)))))) (forall ((|a#1@@1| Int) (|b#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |a#1@@1|) (<= (LitInt 0) |b#1@@1|)) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#1@@1|)) ($Box intType (int_2_U |b#1@@1|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#1@@1|))) ($Box intType (int_2_U (Mul (LitInt 2) |b#1@@1|))))))))
 :qid |Lucasupdfy.300:19|
 :skolemid |615|
 :pattern ( (Mul 2 |b#1@@1|) (Mul 2 |a#1@@1|))
)))) (and (and (forall ((|a#3@@1| Int) (|b#3@@1| Int) (|_t#0#0@@1| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#3@@1|) (<= (LitInt 0) |b#3@@1|)) (= (U_2_int |_t#0#0@@1|) (+ (Mul (LitInt 2) |b#3@@1|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3@@1|)) ($Box intType (int_2_U |b#3@@1|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul (LitInt 2) |a#3@@1|))) ($Box intType |_t#0#0@@1|))))))
 :qid |Lucasupdfy.301:19|
 :skolemid |616|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3@@1|))) ($Box intType |_t#0#0@@1|))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#3@@1|)) ($Box intType (int_2_U |b#3@@1|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U (Mul 2 |a#3@@1|))) ($Box intType |_t#0#0@@1|))) (Mul 2 |b#3@@1|))
)) (forall ((|a#5@@1| Int) (|b#5@@1| Int) (|_t#0#1@@1| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#5@@1|) (<= (LitInt 0) |b#5@@1|)) (= (U_2_int |_t#0#1@@1|) (+ (Mul (LitInt 2) |a#5@@1|) 1))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5@@1|)) ($Box intType (int_2_U |b#5@@1|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@1|) ($Box intType (int_2_U (Mul (LitInt 2) |b#5@@1|))))))))
 :qid |Lucasupdfy.302:19|
 :skolemid |617|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@1|) ($Box intType (int_2_U (Mul 2 |b#5@@1|))))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#5@@1|)) ($Box intType (int_2_U |b#5@@1|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#1@@1|) ($Box intType (int_2_U (Mul 2 |b#5@@1|))))) (Mul 2 |a#5@@1|))
))) (and (forall ((|a#7@@1| Int) (|b#7@@1| Int) (|_t#0#2@@1| T@U) (|_t#1#0@@1| T@U) ) (!  (=> (and (and (<= (LitInt 0) |a#7@@1|) (<= (LitInt 0) |b#7@@1|)) (and (= (U_2_int |_t#1#0@@1|) (+ (Mul (LitInt 2) |b#7@@1|) 1)) (= (U_2_int |_t#0#2@@1|) (+ (Mul (LitInt 2) |a#7@@1|) 1)))) (=> (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7@@1|)) ($Box intType (int_2_U |b#7@@1|))))) (U_2_bool ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@1|) ($Box intType |_t#1#0@@1|))))))
 :qid |Lucasupdfy.303:19|
 :skolemid |618|
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@1|) ($Box intType |_t#1#0@@1|))) ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType (int_2_U |a#7@@1|)) ($Box intType (int_2_U |b#7@@1|)))))
 :pattern ( ($Unbox boolType (Apply2 Tclass._System.nat Tclass._System.nat TBool $Heap |P#0| ($Box intType |_t#0#2@@1|) ($Box intType |_t#1#0@@1|))) (Mul 2 |a#7@@1|) (Mul 2 |b#7@@1|))
)) (= (ControlFlow 0 29) 28)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
