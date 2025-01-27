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
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass.FunctionsAsValues.Class () T@U)
(declare-fun Tagclass.FunctionsAsValues.Trait? () T@U)
(declare-fun Tagclass.FunctionsAsValues.Trait () T@U)
(declare-fun Tagclass.FunctionsAsValues.Class? () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
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
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun |FunctionsAsValues.Trait.Select#requires| (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.FunctionsAsValues.Trait (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.FunctionsAsValues.Trait? (T@U T@U T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait?_0 (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait?_1 (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait?_2 (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait_0 (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait_1 (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Trait_2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.FunctionsAsValues.Class? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.FunctionsAsValues.Class () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun FunctionsAsValues.Trait.ApplySelect (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |FunctionsAsValues.Trait.ApplySelect#canCall| (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |FunctionsAsValues.Trait.Select#Handle| (T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun FunctionsAsValues.Trait.Select (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |FunctionsAsValues.Trait.Select#canCall| (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun implements$FunctionsAsValues.Trait (T@U T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc3 Tagclass.FunctionsAsValues.Class Tagclass.FunctionsAsValues.Trait? Tagclass.FunctionsAsValues.Trait Tagclass.FunctionsAsValues.Class? |tytagFamily$_#Func3| tytagFamily$Class tytagFamily$Trait)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |3010|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |3011|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |3012|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |3013|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((FunctionsAsValues.Trait$G T@U) (FunctionsAsValues.Trait$H T@U) (FunctionsAsValues.Trait$J T@U) (this T@U) (|g#0| T@U) (|h#0| T@U) (|j#0| T@U) ) (!  (=> (and (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G FunctionsAsValues.Trait$H FunctionsAsValues.Trait$J))) ($IsBox |g#0| FunctionsAsValues.Trait$G)) ($IsBox |h#0| FunctionsAsValues.Trait$H)) ($IsBox |j#0| FunctionsAsValues.Trait$J)) (= (|FunctionsAsValues.Trait.Select#requires| FunctionsAsValues.Trait$G FunctionsAsValues.Trait$H FunctionsAsValues.Trait$J this |g#0| |h#0| |j#0|) true))
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( (|FunctionsAsValues.Trait.Select#requires| FunctionsAsValues.Trait$G FunctionsAsValues.Trait$H FunctionsAsValues.Trait$J this |g#0| |h#0| |j#0|))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@0 T@U) (FunctionsAsValues.Trait$H@@0 T@U) (FunctionsAsValues.Trait$J@@0 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait?_0 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@0 FunctionsAsValues.Trait$H@@0 FunctionsAsValues.Trait$J@@0)) FunctionsAsValues.Trait$G@@0)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@0 FunctionsAsValues.Trait$H@@0 FunctionsAsValues.Trait$J@@0))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@1 T@U) (FunctionsAsValues.Trait$H@@1 T@U) (FunctionsAsValues.Trait$J@@1 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait?_1 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@1 FunctionsAsValues.Trait$H@@1 FunctionsAsValues.Trait$J@@1)) FunctionsAsValues.Trait$H@@1)
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@1 FunctionsAsValues.Trait$H@@1 FunctionsAsValues.Trait$J@@1))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@2 T@U) (FunctionsAsValues.Trait$H@@2 T@U) (FunctionsAsValues.Trait$J@@2 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait?_2 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@2 FunctionsAsValues.Trait$H@@2 FunctionsAsValues.Trait$J@@2)) FunctionsAsValues.Trait$J@@2)
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@2 FunctionsAsValues.Trait$H@@2 FunctionsAsValues.Trait$J@@2))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@3 T@U) (FunctionsAsValues.Trait$H@@3 T@U) (FunctionsAsValues.Trait$J@@3 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait_0 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@3 FunctionsAsValues.Trait$H@@3 FunctionsAsValues.Trait$J@@3)) FunctionsAsValues.Trait$G@@3)
 :qid |unknown.0:0|
 :skolemid |3124|
 :pattern ( (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@3 FunctionsAsValues.Trait$H@@3 FunctionsAsValues.Trait$J@@3))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@4 T@U) (FunctionsAsValues.Trait$H@@4 T@U) (FunctionsAsValues.Trait$J@@4 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait_1 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@4 FunctionsAsValues.Trait$H@@4 FunctionsAsValues.Trait$J@@4)) FunctionsAsValues.Trait$H@@4)
 :qid |unknown.0:0|
 :skolemid |3125|
 :pattern ( (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@4 FunctionsAsValues.Trait$H@@4 FunctionsAsValues.Trait$J@@4))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@5 T@U) (FunctionsAsValues.Trait$H@@5 T@U) (FunctionsAsValues.Trait$J@@5 T@U) ) (! (= (Tclass.FunctionsAsValues.Trait_2 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@5 FunctionsAsValues.Trait$H@@5 FunctionsAsValues.Trait$J@@5)) FunctionsAsValues.Trait$J@@5)
 :qid |unknown.0:0|
 :skolemid |3126|
 :pattern ( (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@5 FunctionsAsValues.Trait$H@@5 FunctionsAsValues.Trait$J@@5))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2578|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (t3 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h) (forall ((bx0 T@U) (bx1 T@U) (bx2 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h))) (and ($IsBox bx2 t2) ($IsAllocBox bx2 t2 h))) (Requires3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |3039|
 :pattern ( (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |3040|
 :pattern ( (Apply3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
 :pattern ( (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
))))
 :qid |unknown.0:0|
 :skolemid |3041|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.FunctionsAsValues.Class?)  (or (= $o null) (= (dtype $o) Tclass.FunctionsAsValues.Class?)))
 :qid |unknown.0:0|
 :skolemid |3145|
 :pattern ( ($Is refType $o Tclass.FunctionsAsValues.Class?))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@6 T@U) (FunctionsAsValues.Trait$H@@6 T@U) (FunctionsAsValues.Trait$J@@6 T@U) ) (!  (and (= (Tag (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@6 FunctionsAsValues.Trait$H@@6 FunctionsAsValues.Trait$J@@6)) Tagclass.FunctionsAsValues.Trait?) (= (TagFamily (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@6 FunctionsAsValues.Trait$H@@6 FunctionsAsValues.Trait$J@@6)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@6 FunctionsAsValues.Trait$H@@6 FunctionsAsValues.Trait$J@@6))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@7 T@U) (FunctionsAsValues.Trait$H@@7 T@U) (FunctionsAsValues.Trait$J@@7 T@U) ) (!  (and (= (Tag (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@7 FunctionsAsValues.Trait$H@@7 FunctionsAsValues.Trait$J@@7)) Tagclass.FunctionsAsValues.Trait) (= (TagFamily (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@7 FunctionsAsValues.Trait$H@@7 FunctionsAsValues.Trait$J@@7)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |3123|
 :pattern ( (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@7 FunctionsAsValues.Trait$H@@7 FunctionsAsValues.Trait$J@@7))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@8 T@U) (FunctionsAsValues.Trait$H@@8 T@U) (FunctionsAsValues.Trait$J@@8 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@8 FunctionsAsValues.Trait$H@@8 FunctionsAsValues.Trait$J@@8)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@8 FunctionsAsValues.Trait$H@@8 FunctionsAsValues.Trait$J@@8))))
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( ($IsBox bx (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@8 FunctionsAsValues.Trait$H@@8 FunctionsAsValues.Trait$J@@8)))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@9 T@U) (FunctionsAsValues.Trait$H@@9 T@U) (FunctionsAsValues.Trait$J@@9 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@9 FunctionsAsValues.Trait$H@@9 FunctionsAsValues.Trait$J@@9)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@9 FunctionsAsValues.Trait$H@@9 FunctionsAsValues.Trait$J@@9))))
 :qid |unknown.0:0|
 :skolemid |3127|
 :pattern ( ($IsBox bx@@0 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@9 FunctionsAsValues.Trait$H@@9 FunctionsAsValues.Trait$J@@9)))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@10 T@U) (FunctionsAsValues.Trait$H@@10 T@U) (FunctionsAsValues.Trait$J@@10 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@10 FunctionsAsValues.Trait$H@@10 FunctionsAsValues.Trait$J@@10))  (and ($Is refType |c#0| (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@10 FunctionsAsValues.Trait$H@@10 FunctionsAsValues.Trait$J@@10)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3142|
 :pattern ( ($Is refType |c#0| (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@10 FunctionsAsValues.Trait$H@@10 FunctionsAsValues.Trait$J@@10)))
 :pattern ( ($Is refType |c#0| (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@10 FunctionsAsValues.Trait$H@@10 FunctionsAsValues.Trait$J@@10)))
)))
(assert (forall ((|c#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.FunctionsAsValues.Class $h) ($IsAlloc refType |c#0@@0| Tclass.FunctionsAsValues.Class? $h))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.FunctionsAsValues.Class $h))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.FunctionsAsValues.Class? $h))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> ($Is refType $o@@0 Tclass.FunctionsAsValues.Class?) ($Is refType $o@@0 (Tclass.FunctionsAsValues.Trait? TInt TInt TInt)))
 :qid |unknown.0:0|
 :skolemid |3154|
 :pattern ( ($Is refType $o@@0 Tclass.FunctionsAsValues.Class?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.FunctionsAsValues.Class?) ($IsBox bx@@1 (Tclass.FunctionsAsValues.Trait? TInt TInt TInt)))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsBox bx@@1 Tclass.FunctionsAsValues.Class?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@11 T@U) (FunctionsAsValues.Trait$H@@11 T@U) (FunctionsAsValues.Trait$J@@11 T@U) ($Heap T@U) (this@@0 T@U) (|g#0@@0| T@U) (|h#0@@0| T@U) (|j#0@@0| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.ApplySelect#canCall| FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11 (Lit refType this@@0) (Lit BoxType |g#0@@0|) (Lit BoxType |h#0@@0|) (Lit BoxType |j#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11)) ($IsAlloc refType this@@0 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11) $Heap)))) ($IsBox |g#0@@0| FunctionsAsValues.Trait$G@@11)) ($IsBox |h#0@@0| FunctionsAsValues.Trait$H@@11)) ($IsBox |j#0@@0| FunctionsAsValues.Trait$J@@11)))) (= (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11 (Lit refType this@@0) (Lit BoxType |g#0@@0|) (Lit BoxType |h#0@@0|) (Lit BoxType |j#0@@0|)) (let ((|f#1| (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11 (Lit refType this@@0))))
(Apply3 FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11 FunctionsAsValues.Trait$G@@11 $Heap |f#1| (Lit BoxType |g#0@@0|) (Lit BoxType |h#0@@0|) (Lit BoxType |j#0@@0|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3141|
 :pattern ( (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@11 FunctionsAsValues.Trait$H@@11 FunctionsAsValues.Trait$J@@11 (Lit refType this@@0) (Lit BoxType |g#0@@0|) (Lit BoxType |h#0@@0|) (Lit BoxType |j#0@@0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (t3@@0 T@U) (heap T@U) (f@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1)) ($IsBox bx2@@0 t2@@0)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@1 t1@@1 t2@@0 t3@@0)))) (= (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|) (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |3030|
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) ($IsGoodHeap heap))
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0))
)))
(assert (forall (($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.FunctionsAsValues.Class? $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3146|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.FunctionsAsValues.Class? $h@@0))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (t3@@1 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) (u3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 u0@@0) ($IsBox bx@@2 t0@@2))
 :qid |unknown.0:0|
 :skolemid |3034|
 :pattern ( ($IsBox bx@@2 u0@@0))
 :pattern ( ($IsBox bx@@2 t0@@2))
))) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u1@@0) ($IsBox bx@@3 t1@@2))
 :qid |unknown.0:0|
 :skolemid |3035|
 :pattern ( ($IsBox bx@@3 u1@@0))
 :pattern ( ($IsBox bx@@3 t1@@2))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 u2) ($IsBox bx@@4 t2@@1))
 :qid |unknown.0:0|
 :skolemid |3036|
 :pattern ( ($IsBox bx@@4 u2))
 :pattern ( ($IsBox bx@@4 t2@@1))
))) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 t3@@1) ($IsBox bx@@5 u3))
 :qid |unknown.0:0|
 :skolemid |3037|
 :pattern ( ($IsBox bx@@5 t3@@1))
 :pattern ( ($IsBox bx@@5 u3))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
 :qid |unknown.0:0|
 :skolemid |3038|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@12 T@U) (FunctionsAsValues.Trait$H@@12 T@U) (FunctionsAsValues.Trait$J@@12 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|g#0@@1| T@U) (|h#0@@1| T@U) (|j#0@@1| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.ApplySelect#canCall| FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12 this@@1 |g#0@@1| |h#0@@1| |j#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12)) ($IsAlloc refType this@@1 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12) $Heap@@0)))) ($IsBox |g#0@@1| FunctionsAsValues.Trait$G@@12)) ($IsBox |h#0@@1| FunctionsAsValues.Trait$H@@12)) ($IsBox |j#0@@1| FunctionsAsValues.Trait$J@@12)))) (= (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12 this@@1 |g#0@@1| |h#0@@1| |j#0@@1|) (let ((|f#0| (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12 this@@1)))
(Apply3 FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12 FunctionsAsValues.Trait$G@@12 $Heap@@0 |f#0| |g#0@@1| |h#0@@1| |j#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |3140|
 :pattern ( (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@12 FunctionsAsValues.Trait$H@@12 FunctionsAsValues.Trait$J@@12 this@@1 |g#0@@1| |h#0@@1| |j#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2572|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2470|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2468|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@13 T@U) (FunctionsAsValues.Trait$H@@13 T@U) (FunctionsAsValues.Trait$J@@13 T@U) (this@@2 T@U) (|g#0@@2| T@U) (|h#0@@2| T@U) (|j#0@@2| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.Select#canCall| FunctionsAsValues.Trait$G@@13 FunctionsAsValues.Trait$H@@13 FunctionsAsValues.Trait$J@@13 this@@2 |g#0@@2| |h#0@@2| |j#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@13 FunctionsAsValues.Trait$H@@13 FunctionsAsValues.Trait$J@@13))) ($IsBox |g#0@@2| FunctionsAsValues.Trait$G@@13)) ($IsBox |h#0@@2| FunctionsAsValues.Trait$H@@13)) ($IsBox |j#0@@2| FunctionsAsValues.Trait$J@@13)))) ($IsBox (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@13 FunctionsAsValues.Trait$H@@13 FunctionsAsValues.Trait$J@@13 this@@2 |g#0@@2| |h#0@@2| |j#0@@2|) FunctionsAsValues.Trait$G@@13))
 :qid |unknown.0:0|
 :skolemid |3128|
 :pattern ( (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@13 FunctionsAsValues.Trait$H@@13 FunctionsAsValues.Trait$J@@13 this@@2 |g#0@@2| |h#0@@2| |j#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@14 T@U) (FunctionsAsValues.Trait$H@@14 T@U) (FunctionsAsValues.Trait$J@@14 T@U) (this@@3 T@U) (|g#0@@3| T@U) (|h#0@@3| T@U) (|j#0@@3| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.ApplySelect#canCall| FunctionsAsValues.Trait$G@@14 FunctionsAsValues.Trait$H@@14 FunctionsAsValues.Trait$J@@14 this@@3 |g#0@@3| |h#0@@3| |j#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@14 FunctionsAsValues.Trait$H@@14 FunctionsAsValues.Trait$J@@14))) ($IsBox |g#0@@3| FunctionsAsValues.Trait$G@@14)) ($IsBox |h#0@@3| FunctionsAsValues.Trait$H@@14)) ($IsBox |j#0@@3| FunctionsAsValues.Trait$J@@14)))) ($IsBox (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@14 FunctionsAsValues.Trait$H@@14 FunctionsAsValues.Trait$J@@14 this@@3 |g#0@@3| |h#0@@3| |j#0@@3|) FunctionsAsValues.Trait$G@@14))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@14 FunctionsAsValues.Trait$H@@14 FunctionsAsValues.Trait$J@@14 this@@3 |g#0@@3| |h#0@@3| |j#0@@3|))
))))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |3009|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (FunctionsAsValues.Trait$G@@15 T@U) (FunctionsAsValues.Trait$H@@15 T@U) (FunctionsAsValues.Trait$J@@15 T@U) (this@@4 T@U) (|g#0@@4| T@U) (|h#0@@4| T@U) (|j#0@@4| T@U) ) (!  (=> (and (or (|FunctionsAsValues.Trait.Select#canCall| FunctionsAsValues.Trait$G@@15 FunctionsAsValues.Trait$H@@15 FunctionsAsValues.Trait$J@@15 this@@4 |g#0@@4| |h#0@@4| |j#0@@4|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@4 null)) (not true)) ($IsAlloc refType this@@4 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@15 FunctionsAsValues.Trait$H@@15 FunctionsAsValues.Trait$J@@15) $Heap@@1)) (and ($IsBox |g#0@@4| FunctionsAsValues.Trait$G@@15) ($IsAllocBox |g#0@@4| FunctionsAsValues.Trait$G@@15 $Heap@@1))) (and ($IsBox |h#0@@4| FunctionsAsValues.Trait$H@@15) ($IsAllocBox |h#0@@4| FunctionsAsValues.Trait$H@@15 $Heap@@1))) (and ($IsBox |j#0@@4| FunctionsAsValues.Trait$J@@15) ($IsAllocBox |j#0@@4| FunctionsAsValues.Trait$J@@15 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@15 FunctionsAsValues.Trait$H@@15 FunctionsAsValues.Trait$J@@15 this@@4 |g#0@@4| |h#0@@4| |j#0@@4|) FunctionsAsValues.Trait$G@@15 $Heap@@1))
 :qid |MoreAutoInitdfy.328:14|
 :skolemid |3129|
 :pattern ( ($IsAllocBox (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@15 FunctionsAsValues.Trait$H@@15 FunctionsAsValues.Trait$J@@15 this@@4 |g#0@@4| |h#0@@4| |j#0@@4|) FunctionsAsValues.Trait$G@@15 $Heap@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (FunctionsAsValues.Trait$G@@16 T@U) (FunctionsAsValues.Trait$H@@16 T@U) (FunctionsAsValues.Trait$J@@16 T@U) (this@@5 T@U) (|g#0@@5| T@U) (|h#0@@5| T@U) (|j#0@@5| T@U) ) (!  (=> (and (or (|FunctionsAsValues.Trait.ApplySelect#canCall| FunctionsAsValues.Trait$G@@16 FunctionsAsValues.Trait$H@@16 FunctionsAsValues.Trait$J@@16 this@@5 |g#0@@5| |h#0@@5| |j#0@@5|) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@5 null)) (not true)) ($IsAlloc refType this@@5 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@16 FunctionsAsValues.Trait$H@@16 FunctionsAsValues.Trait$J@@16) $Heap@@2)) (and ($IsBox |g#0@@5| FunctionsAsValues.Trait$G@@16) ($IsAllocBox |g#0@@5| FunctionsAsValues.Trait$G@@16 $Heap@@2))) (and ($IsBox |h#0@@5| FunctionsAsValues.Trait$H@@16) ($IsAllocBox |h#0@@5| FunctionsAsValues.Trait$H@@16 $Heap@@2))) (and ($IsBox |j#0@@5| FunctionsAsValues.Trait$J@@16) ($IsAllocBox |j#0@@5| FunctionsAsValues.Trait$J@@16 $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAllocBox (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@16 FunctionsAsValues.Trait$H@@16 FunctionsAsValues.Trait$J@@16 this@@5 |g#0@@5| |h#0@@5| |j#0@@5|) FunctionsAsValues.Trait$G@@16 $Heap@@2))
 :qid |MoreAutoInitdfy.330:14|
 :skolemid |3134|
 :pattern ( ($IsAllocBox (FunctionsAsValues.Trait.ApplySelect FunctionsAsValues.Trait$G@@16 FunctionsAsValues.Trait$H@@16 FunctionsAsValues.Trait$J@@16 this@@5 |g#0@@5| |h#0@@5| |j#0@@5|) FunctionsAsValues.Trait$G@@16 $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@17 T@U) (FunctionsAsValues.Trait$H@@17 T@U) (FunctionsAsValues.Trait$J@@17 T@U) (this@@6 T@U) (|g#0@@6| T@U) (|h#0@@6| T@U) (|j#0@@6| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.Select#canCall| FunctionsAsValues.Trait$G@@17 FunctionsAsValues.Trait$H@@17 FunctionsAsValues.Trait$J@@17 (Lit refType this@@6) (Lit BoxType |g#0@@6|) (Lit BoxType |h#0@@6|) (Lit BoxType |j#0@@6|)) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@17 FunctionsAsValues.Trait$H@@17 FunctionsAsValues.Trait$J@@17))) ($IsBox |g#0@@6| FunctionsAsValues.Trait$G@@17)) ($IsBox |h#0@@6| FunctionsAsValues.Trait$H@@17)) ($IsBox |j#0@@6| FunctionsAsValues.Trait$J@@17)))) (= (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@17 FunctionsAsValues.Trait$H@@17 FunctionsAsValues.Trait$J@@17 (Lit refType this@@6) (Lit BoxType |g#0@@6|) (Lit BoxType |h#0@@6|) (Lit BoxType |j#0@@6|)) (Lit BoxType |g#0@@6|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3132|
 :pattern ( (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@17 FunctionsAsValues.Trait$H@@17 FunctionsAsValues.Trait$J@@17 (Lit refType this@@6) (Lit BoxType |g#0@@6|) (Lit BoxType |h#0@@6|) (Lit BoxType |j#0@@6|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2479|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@1) ($IsAlloc T@@1 v t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2492|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@2) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2564|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@6 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@3) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2563|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@3))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |3014|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.FunctionsAsValues.Class) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.FunctionsAsValues.Class)))
 :qid |unknown.0:0|
 :skolemid |3114|
 :pattern ( ($IsBox bx@@8 Tclass.FunctionsAsValues.Class))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.FunctionsAsValues.Class?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.FunctionsAsValues.Class?)))
 :qid |unknown.0:0|
 :skolemid |3144|
 :pattern ( ($IsBox bx@@9 Tclass.FunctionsAsValues.Class?))
)))
(assert (forall ((bx@@10 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@10 Tclass.FunctionsAsValues.Class? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@10 (Tclass.FunctionsAsValues.Trait? TInt TInt TInt) $h@@1))
 :qid |unknown.0:0|
 :skolemid |3153|
 :pattern ( ($IsAllocBox bx@@10 Tclass.FunctionsAsValues.Class? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.FunctionsAsValues.Class)  (and ($Is refType |c#0@@1| Tclass.FunctionsAsValues.Class?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3150|
 :pattern ( ($Is refType |c#0@@1| Tclass.FunctionsAsValues.Class))
 :pattern ( ($Is refType |c#0@@1| Tclass.FunctionsAsValues.Class?))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@18 T@U) (FunctionsAsValues.Trait$H@@18 T@U) (FunctionsAsValues.Trait$J@@18 T@U) ($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@18 FunctionsAsValues.Trait$H@@18 FunctionsAsValues.Trait$J@@18) $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3122|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@18 FunctionsAsValues.Trait$H@@18 FunctionsAsValues.Trait$J@@18) $h@@2))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (t3@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2)) (forall ((h@@4 T@U) (bx0@@1 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) (and (and ($IsBox bx0@@1 t0@@3) ($IsBox bx1@@1 t1@@3)) ($IsBox bx2@@1 t2@@2))) (Requires3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1)) ($IsBox (Apply3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1) t3@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3032|
 :pattern ( (Apply3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1))
)))
 :qid |unknown.0:0|
 :skolemid |3033|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2)))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@3 T@U) (heap@@0 T@U) (f@@3 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@2 t0@@4) ($IsBox bx1@@2 t1@@4)) ($IsBox bx2@@2 t2@@3)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@3)))) (|Set#Equal| (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) |Set#Empty|)) (= (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@3 bx0@@2 bx1@@2 bx2@@2)))
 :qid |unknown.0:0|
 :skolemid |3031|
 :pattern ( (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) ($IsGoodHeap heap@@0))
 :pattern ( (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@3 bx0@@2 bx1@@2 bx2@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2603|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2570|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2480|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2491|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@19 T@U) (FunctionsAsValues.Trait$H@@19 T@U) (FunctionsAsValues.Trait$J@@19 T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) (|$fh$0x#2| T@U) ) (! (= (Requires3 FunctionsAsValues.Trait$G@@19 FunctionsAsValues.Trait$H@@19 FunctionsAsValues.Trait$J@@19 FunctionsAsValues.Trait$G@@19 $heap (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@19 FunctionsAsValues.Trait$H@@19 FunctionsAsValues.Trait$J@@19 $self) |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|) (|FunctionsAsValues.Trait.Select#requires| FunctionsAsValues.Trait$G@@19 FunctionsAsValues.Trait$H@@19 FunctionsAsValues.Trait$J@@19 $self |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|))
 :qid |unknown.0:0|
 :skolemid |3137|
 :pattern ( (Requires3 FunctionsAsValues.Trait$G@@19 FunctionsAsValues.Trait$H@@19 FunctionsAsValues.Trait$J@@19 FunctionsAsValues.Trait$G@@19 $heap (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@19 FunctionsAsValues.Trait$H@@19 FunctionsAsValues.Trait$J@@19 $self) |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2478|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (implements$FunctionsAsValues.Trait Tclass.FunctionsAsValues.Class? TInt TInt TInt))
(assert (forall ((FunctionsAsValues.Trait$G@@20 T@U) (FunctionsAsValues.Trait$H@@20 T@U) (FunctionsAsValues.Trait$J@@20 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) (|$fh$0x#2@@0| T@U) ) (! (= (Apply3 FunctionsAsValues.Trait$G@@20 FunctionsAsValues.Trait$H@@20 FunctionsAsValues.Trait$J@@20 FunctionsAsValues.Trait$G@@20 $heap@@0 (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@20 FunctionsAsValues.Trait$H@@20 FunctionsAsValues.Trait$J@@20 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|) (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@20 FunctionsAsValues.Trait$H@@20 FunctionsAsValues.Trait$J@@20 $self@@0 |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|))
 :qid |unknown.0:0|
 :skolemid |3136|
 :pattern ( (Apply3 FunctionsAsValues.Trait$G@@20 FunctionsAsValues.Trait$H@@20 FunctionsAsValues.Trait$J@@20 FunctionsAsValues.Trait$G@@20 $heap@@0 (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@20 FunctionsAsValues.Trait$H@@20 FunctionsAsValues.Trait$J@@20 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|))
)))
(assert (forall ((f@@4 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (t3@@4 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4) h@@5)) (forall ((bx0@@3 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@3 t0@@5 h@@5) ($IsAllocBox bx1@@3 t1@@5 h@@5)) ($IsAllocBox bx2@@3 t2@@4 h@@5)) (Requires3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3)) ($IsAllocBox (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3) t3@@4 h@@5))
 :qid |unknown.0:0|
 :skolemid |3042|
 :pattern ( (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3))
)))
 :qid |unknown.0:0|
 :skolemid |3043|
 :pattern ( ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4) h@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5454|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@21 T@U) (FunctionsAsValues.Trait$H@@21 T@U) (FunctionsAsValues.Trait$J@@21 T@U) (|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@21 FunctionsAsValues.Trait$H@@21 FunctionsAsValues.Trait$J@@21) $h@@3) ($IsAlloc refType |c#0@@2| (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@21 FunctionsAsValues.Trait$H@@21 FunctionsAsValues.Trait$J@@21) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3143|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@21 FunctionsAsValues.Trait$H@@21 FunctionsAsValues.Trait$J@@21) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@21 FunctionsAsValues.Trait$H@@21 FunctionsAsValues.Trait$J@@21) $h@@3))
)))
(assert (forall ((FunctionsAsValues.Trait$G@@22 T@U) (FunctionsAsValues.Trait$H@@22 T@U) (FunctionsAsValues.Trait$J@@22 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) (|$fh$0x#2@@1| T@U) ) (! (= (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@22 FunctionsAsValues.Trait$H@@22 FunctionsAsValues.Trait$J@@22 $self@@1 |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|) (Apply3 FunctionsAsValues.Trait$G@@22 FunctionsAsValues.Trait$H@@22 FunctionsAsValues.Trait$J@@22 FunctionsAsValues.Trait$G@@22 $heap@@1 (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@22 FunctionsAsValues.Trait$H@@22 FunctionsAsValues.Trait$J@@22 $self@@1) |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|))
 :qid |unknown.0:0|
 :skolemid |3139|
 :pattern ( (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@22 FunctionsAsValues.Trait$H@@22 FunctionsAsValues.Trait$J@@22 $self@@1 |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (t2@@6 T@U) (t3@@5 T@U) (h0 T@U) (h1 T@U) (f@@5 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx2@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and (and ($IsBox bx0@@4 t0@@7) ($IsBox bx1@@4 t1@@7)) ($IsBox bx2@@4 t2@@6)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@7 t1@@7 t2@@6 t3@@5)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@5 bx0@@4 bx1@@4 bx2@@4) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |3022|
))) (= (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@5 bx0@@4 bx1@@4 bx2@@4) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@5 bx0@@4 bx1@@4 bx2@@4)))
 :qid |unknown.0:0|
 :skolemid |3023|
 :pattern ( ($HeapSucc h0 h1) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@5 bx0@@4 bx1@@4 bx2@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@8 T@U) (t2@@7 T@U) (t3@@6 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@6 T@U) (bx0@@5 T@U) (bx1@@5 T@U) (bx2@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and (and ($IsBox bx0@@5 t0@@8) ($IsBox bx1@@5 t1@@8)) ($IsBox bx2@@5 t2@@7)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc3 t0@@8 t1@@8 t2@@7 t3@@6)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |3024|
))) (= (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h0@@0 f@@6 bx0@@5 bx1@@5 bx2@@5) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |3025|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5))
)))
(assert (= (Tag Tclass.FunctionsAsValues.Class) Tagclass.FunctionsAsValues.Class))
(assert (= (TagFamily Tclass.FunctionsAsValues.Class) tytagFamily$Class))
(assert (= (Tag Tclass.FunctionsAsValues.Class?) Tagclass.FunctionsAsValues.Class?))
(assert (= (TagFamily Tclass.FunctionsAsValues.Class?) tytagFamily$Class))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((FunctionsAsValues.Trait$G@@23 T@U) (FunctionsAsValues.Trait$H@@23 T@U) (FunctionsAsValues.Trait$J@@23 T@U) (this@@7 T@U) (|g#0@@7| T@U) (|h#0@@7| T@U) (|j#0@@7| T@U) ) (!  (=> (or (|FunctionsAsValues.Trait.Select#canCall| FunctionsAsValues.Trait$G@@23 FunctionsAsValues.Trait$H@@23 FunctionsAsValues.Trait$J@@23 this@@7 |g#0@@7| |h#0@@7| |j#0@@7|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass.FunctionsAsValues.Trait FunctionsAsValues.Trait$G@@23 FunctionsAsValues.Trait$H@@23 FunctionsAsValues.Trait$J@@23))) ($IsBox |g#0@@7| FunctionsAsValues.Trait$G@@23)) ($IsBox |h#0@@7| FunctionsAsValues.Trait$H@@23)) ($IsBox |j#0@@7| FunctionsAsValues.Trait$J@@23)))) (= (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@23 FunctionsAsValues.Trait$H@@23 FunctionsAsValues.Trait$J@@23 this@@7 |g#0@@7| |h#0@@7| |j#0@@7|) |g#0@@7|))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( (FunctionsAsValues.Trait.Select FunctionsAsValues.Trait$G@@23 FunctionsAsValues.Trait$H@@23 FunctionsAsValues.Trait$J@@23 this@@7 |g#0@@7| |h#0@@7| |j#0@@7|))
))))
(assert (forall ((FunctionsAsValues.Trait$G@@24 T@U) (FunctionsAsValues.Trait$H@@24 T@U) (FunctionsAsValues.Trait$J@@24 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@24 FunctionsAsValues.Trait$H@@24 FunctionsAsValues.Trait$J@@24))  (or (= $o@@4 null) (implements$FunctionsAsValues.Trait (dtype $o@@4) FunctionsAsValues.Trait$G@@24 FunctionsAsValues.Trait$H@@24 FunctionsAsValues.Trait$J@@24)))
 :qid |unknown.0:0|
 :skolemid |3121|
 :pattern ( ($Is refType $o@@4 (Tclass.FunctionsAsValues.Trait? FunctionsAsValues.Trait$G@@24 FunctionsAsValues.Trait$H@@24 FunctionsAsValues.Trait$J@@24)))
)))
(assert (forall (($o@@5 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.FunctionsAsValues.Class? $heap@@2) ($IsAlloc refType $o@@5 (Tclass.FunctionsAsValues.Trait? TInt TInt TInt) $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3155|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.FunctionsAsValues.Class? $heap@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@1 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2601|
 :pattern ( (|Set#IsMember| a@@1 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2602|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@9 T@U) (t1@@9 T@U) (t2@@8 T@U) (t3@@7 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@6 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and (and ($IsBox bx0@@6 t0@@9) ($IsBox bx1@@6 t1@@9)) ($IsBox bx2@@6 t2@@8)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc3 t0@@9 t1@@9 t2@@8 t3@@7)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@7 bx0@@6 bx1@@6 bx2@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |3018|
))) (= (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@7 bx0@@6 bx1@@6 bx2@@6) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@7 bx0@@6 bx1@@6 bx2@@6)))
 :qid |unknown.0:0|
 :skolemid |3019|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@7 bx0@@6 bx1@@6 bx2@@6))
)))
(assert (forall ((t0@@10 T@U) (t1@@10 T@U) (t2@@9 T@U) (t3@@8 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and (and ($IsBox bx0@@7 t0@@10) ($IsBox bx1@@7 t1@@10)) ($IsBox bx2@@7 t2@@9)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc3 t0@@10 t1@@10 t2@@9 t3@@8)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |3020|
))) (= (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h0@@2 f@@8 bx0@@7 bx1@@7 bx2@@7) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |3021|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7))
)))
(assert (forall ((t0@@11 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@9 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@9 T@U) (bx0@@8 T@U) (bx1@@8 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and (and ($IsBox bx0@@8 t0@@11) ($IsBox bx1@@8 t1@@11)) ($IsBox bx2@@8 t2@@10)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc3 t0@@11 t1@@11 t2@@10 t3@@9)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@9 bx0@@8 bx1@@8 bx2@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |3026|
))) (= (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@9 bx0@@8 bx1@@8 bx2@@8) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@9 bx0@@8 bx1@@8 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |3027|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@9 bx0@@8 bx1@@8 bx2@@8))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (t2@@11 T@U) (t3@@10 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@10 T@U) (bx0@@9 T@U) (bx1@@9 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and (and ($IsBox bx0@@9 t0@@12) ($IsBox bx1@@9 t1@@12)) ($IsBox bx2@@9 t2@@11)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@12 t1@@12 t2@@11 t3@@10)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |3028|
))) (= (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h0@@4 f@@10 bx0@@9 bx1@@9 bx2@@9) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |3029|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9))
)))
(assert (forall (($bx T@U) (FunctionsAsValues.Trait$G@@25 T@U) (FunctionsAsValues.Trait$H@@25 T@U) (FunctionsAsValues.Trait$J@@25 T@U) ($self@@2 T@U) ($heap@@3 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) (|$fh$0x#2@@2| T@U) ) (! (= (|Set#IsMember| (Reads3 FunctionsAsValues.Trait$G@@25 FunctionsAsValues.Trait$H@@25 FunctionsAsValues.Trait$J@@25 FunctionsAsValues.Trait$G@@25 $heap@@3 (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@25 FunctionsAsValues.Trait$H@@25 FunctionsAsValues.Trait$J@@25 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |3138|
 :pattern ( (|Set#IsMember| (Reads3 FunctionsAsValues.Trait$G@@25 FunctionsAsValues.Trait$H@@25 FunctionsAsValues.Trait$J@@25 FunctionsAsValues.Trait$G@@25 $heap@@3 (|FunctionsAsValues.Trait.Select#Handle| FunctionsAsValues.Trait$G@@25 FunctionsAsValues.Trait$H@@25 FunctionsAsValues.Trait$J@@25 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|) $bx))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2471|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2469|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@6 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2514|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@6))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2493|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(set-info :boogie-vc-id Impl$$FunctionsAsValues.__default.TestStart)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.FunctionsAsValues.Class) ($IsAlloc refType call1formal@this Tclass.FunctionsAsValues.Class $Heap@@3))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.FunctionsAsValues.Class) ($IsAlloc refType call1formal@this@0 Tclass.FunctionsAsValues.Class $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 call1formal@this@0) alloc))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@6)))
 :qid |MoreAutoInitdfy.337:5|
 :skolemid |3148|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap@@3 $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call1formal@this@0 null)) (not true)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@3| Tclass.FunctionsAsValues.Class) ($IsAlloc refType |c#0@@3| Tclass.FunctionsAsValues.Class $Heap@@3))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
