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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
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
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.BadNamedLambdaDiv (Int Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.BadNamedLambdaDiv#canCall| (Int Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#5| (T@U T@U Int) T@U)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType1Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun null () T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 tytagFamily$object |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|a#0| Int) (|b#0| Int) ) (!  (=> (or (|_module.__default.BadNamedLambdaDiv#canCall| (LitInt |a#0|) (LitInt |b#0|)) (and (< 0 $FunctionContextHeight) ($IsGoodHeap $Heap))) (= (_module.__default.BadNamedLambdaDiv (LitInt |a#0|) (LitInt |b#0|)) (U_2_int (let ((|lam#1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle2 |lambda#4| (|lambda#5| TInt TInt 0) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
($Unbox intType (Apply2 TInt TInt TInt $Heap |lam#1| ($Box intType (int_2_U (LitInt |a#0|))) ($Box intType (int_2_U (LitInt |b#0|)))))))))
 :qid |preconditionsatisfieddfy.26:10|
 :weight 3
 :skolemid |549|
 :pattern ( (_module.__default.BadNamedLambdaDiv (LitInt |a#0|) (LitInt |b#0|)) ($IsGoodHeap $Heap))
))))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0@@9|) ($IsBox |x1#0| |#$T1@@9|)) (|Set#Equal| (Reads2 |#$T0@@9| |#$T1@@9| |#$R@@9| $OneHeap |f#0| |x0#0| |x1#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)))
)))
(assert  (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (t3 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) (x2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 t3 (MapType1Store t0@@0 t1@@0 t2 t3 m@@1 x0@@1 x1 x2 val@@1) x0@@1 x1 x2) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (u3 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (x2@@0 T@U) (y0@@0 T@U) (y1 T@U) (y2 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 u3 (MapType1Store u0@@0 u1@@0 u2 u3 m@@2 x0@@2 x1@@0 x2@@0 val@@2) y0@@0 y1 y2) (MapType1Select u0@@0 u1@@0 u2 u3 m@@2 y0@@0 y1 y2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (u3@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (x2@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) (y2@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 (MapType1Store u0@@1 u1@@1 u2@@0 u3@@0 m@@3 x0@@3 x1@@1 x2@@1 val@@3) y0@@1 y1@@0 y2@@0) (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 m@@3 y0@@1 y1@@0 y2@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (u3@@1 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@2 T@U) (x2@@2 T@U) (y0@@2 T@U) (y1@@1 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 (MapType1Store u0@@2 u1@@2 u2@@1 u3@@1 m@@4 x0@@4 x1@@2 x2@@2 val@@4) y0@@2 y1@@1 y2@@1) (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 m@@4 y0@@2 y1@@1 y2@@1)))
 :qid |mapAx1:MapType1Select:2|
 :weight 0
)))) (= (Ctor SetType) 8)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (heap T@U) (h@@0 T@U) (r T@U) (rd T@U) (bx0 T@U) (bx1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@1) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType rd heap bx0 bx1) bx@@1))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType0Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap@@0 T@U) (h@@1 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@1 r@@0 rd@@0) bx0@@0 bx1@@0) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType h@@1 heap@@0 bx0@@0 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@1 r@@0 rd@@0) bx0@@0 bx1@@0))
)))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|a#0@@0| Int) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.BadNamedLambdaDiv#canCall| |a#0@@0| |b#0@@0|) (and (< 0 $FunctionContextHeight) ($IsGoodHeap $Heap@@0))) (= (_module.__default.BadNamedLambdaDiv |a#0@@0| |b#0@@0|) (U_2_int (let ((|lam#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle2 |lambda#4| (|lambda#5| TInt TInt 0) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
($Unbox intType (Apply2 TInt TInt TInt $Heap@@0 |lam#0| ($Box intType (int_2_U |a#0@@0|)) ($Box intType (int_2_U |b#0@@0|))))))))
 :qid |preconditionsatisfieddfy.26:10|
 :skolemid |548|
 :pattern ( (_module.__default.BadNamedLambdaDiv |a#0@@0| |b#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|l#0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#6| |l#0|) |$l#0#o#0|)) |l#0|)
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (MapType0Select refType boolType (|lambda#6| |l#0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@0|) |$l#0#ly#0|) |l#0@@0|)
 :qid |preconditionsatisfieddfy.28:16|
 :skolemid |559|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@0|) |$l#0#ly#0|))
)))
(assert (forall ((f@@0 T@U) (t0@@4 T@U) (t1@@3 T@U) (t2@@2 T@U) ) (! (= ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2)) (forall ((h@@2 T@U) (bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@2) (and ($IsBox bx0@@1 t0@@4) ($IsBox bx1@@1 t1@@3))) (Requires2 t0@@4 t1@@3 t2@@2 h@@2 f@@0 bx0@@1 bx1@@1)) ($IsBox (Apply2 t0@@4 t1@@3 t2@@2 h@@2 f@@0 bx0@@1 bx1@@1) t2@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@4 t1@@3 t2@@2 h@@2 f@@0 bx0@@1 bx1@@1))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2)))
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
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (t2@@3 T@U) (heap@@1 T@U) (f@@1 T@U) (bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@2 t1@@4)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)))) (= (|Set#Equal| (Reads2 t0@@5 t1@@4 t2@@3 $OneHeap f@@1 bx0@@2 bx1@@2) |Set#Empty|) (|Set#Equal| (Reads2 t0@@5 t1@@4 t2@@3 heap@@1 f@@1 bx0@@2 bx1@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@5 t1@@4 t2@@3 $OneHeap f@@1 bx0@@2 bx1@@2) ($IsGoodHeap heap@@1))
 :pattern ( (Reads2 t0@@5 t1@@4 t2@@3 heap@@1 f@@1 bx0@@2 bx1@@2))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| Int) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) (|$l#0#y#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#5| |l#0@@1| |l#1| |l#2|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))  (and (and ($IsBox |$l#0#x#0| |l#0@@1|) ($IsBox |$l#0#y#0| |l#1|)) (or (not (= (U_2_int ($Unbox intType |$l#0#y#0|)) |l#2|)) (not true))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |556|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#5| |l#0@@1| |l#1| |l#2|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall (($o T@U) ) (! ($Is refType $o Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o Tclass._System.object?))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSet (TSet t@@0)) t@@0)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSet t@@1)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) (|$l#0#y#0@@0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType |lambda#4| |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|) ($Box intType (int_2_U (Div (U_2_int ($Unbox intType |$l#0#x#0@@0|)) (U_2_int ($Unbox intType |$l#0#y#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |555|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType |lambda#4| |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (t2@@4 T@U) (heap@@2 T@U) (f@@2 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@3 t0@@6) ($IsBox bx1@@3 t1@@5)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)))) (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) (Requires2 t0@@6 t1@@5 t2@@4 heap@@2 f@@2 bx0@@3 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) ($IsGoodHeap heap@@2))
 :pattern ( (Requires2 t0@@6 t1@@5 t2@@4 heap@@2 f@@2 bx0@@3 bx1@@3))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) (|$l#0#y#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#7| |l#0@@2|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|) |l#0@@2|)
 :qid |preconditionsatisfieddfy.28:16|
 :skolemid |558|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#7| |l#0@@2|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|))
)))
(assert (forall ((f@@3 T@U) (t0@@7 T@U) (t1@@6 T@U) (t2@@5 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5)) (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 u0@@3) ($IsBox bx@@7 t0@@7))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@7 u0@@3))
 :pattern ( ($IsBox bx@@7 t0@@7))
))) (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 u1@@3) ($IsBox bx@@8 t1@@6))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@8 u1@@3))
 :pattern ( ($IsBox bx@@8 t1@@6))
))) (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 t2@@5) ($IsBox bx@@9 u2@@2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@9 t2@@5))
 :pattern ( ($IsBox bx@@9 u2@@2))
))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
)))
(assert (forall ((f@@4 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@4 ($LS ly@@0)) (AtLayer A@@0 f@@4 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@4 ($LS ly@@0)))
)))
(assert  (and (forall ((t0@@8 T@T) (t1@@7 T@T) (t2@@6 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) ) (! (= (MapType2Select t0@@8 t1@@7 t2@@6 (MapType2Store t0@@8 t1@@7 t2@@6 m@@5 x0@@5 x1@@3 val@@5) x0@@5 x1@@3) val@@5)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (y0@@3 T@U) (y1@@2 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@6 x0@@6 x1@@4 val@@6) y0@@3 y1@@2) (MapType2Select u0@@4 u1@@4 u2@@3 m@@6 y0@@3 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@5 u1@@5 u2@@4 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@0) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |554|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@0 $f))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (t2@@7 T@U) (h0 T@U) (h1 T@U) (f@@5 T@U) (bx0@@4 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@4 t0@@9) ($IsBox bx1@@4 t1@@8)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@9 t1@@8 t2@@7)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@9 t1@@8 t2@@7 h0 f@@5 bx0@@4 bx1@@4) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@9 t1@@8 t2@@7 h0 f@@5 bx0@@4 bx1@@4) (Requires2 t0@@9 t1@@8 t2@@7 h1 f@@5 bx0@@4 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@9 t1@@8 t2@@7 h1 f@@5 bx0@@4 bx1@@4))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (t2@@8 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@6 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@5 t0@@10) ($IsBox bx1@@5 t1@@9)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@10 t1@@9 t2@@8)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads2 t0@@10 t1@@9 t2@@8 h1@@0 f@@6 bx0@@5 bx1@@5) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@10 t1@@9 t2@@8 h0@@0 f@@6 bx0@@5 bx1@@5) (Requires2 t0@@10 t1@@9 t2@@8 h1@@0 f@@6 bx0@@5 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@10 t1@@9 t2@@8 h1@@0 f@@6 bx0@@5 bx1@@5))
)))
(assert (forall ((bx@@10 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@2)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@2))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@2)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@1 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (t2@@9 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and ($IsBox bx0@@6 t0@@11) ($IsBox bx1@@6 t1@@10)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@9)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads2 t0@@11 t1@@10 t2@@9 h0@@1 f@@7 bx0@@6 bx1@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@11 t1@@10 t2@@9 h0@@1 f@@7 bx0@@6 bx1@@6) (Reads2 t0@@11 t1@@10 t2@@9 h1@@1 f@@7 bx0@@6 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads2 t0@@11 t1@@10 t2@@9 h1@@1 f@@7 bx0@@6 bx1@@6))
)))
(assert (forall ((t0@@12 T@U) (t1@@11 T@U) (t2@@10 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and ($IsBox bx0@@7 t0@@12) ($IsBox bx1@@7 t1@@11)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@10)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@10 h1@@2 f@@8 bx0@@7 bx1@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@12 t1@@11 t2@@10 h0@@2 f@@8 bx0@@7 bx1@@7) (Reads2 t0@@12 t1@@11 t2@@10 h1@@2 f@@8 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads2 t0@@12 t1@@11 t2@@10 h1@@2 f@@8 bx0@@7 bx1@@7))
)))
(assert (forall ((t0@@13 T@U) (t1@@12 T@U) (t2@@11 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@9 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@8 t0@@13) ($IsBox bx1@@8 t1@@12)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@13 t1@@12 t2@@11)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@13 t1@@12 t2@@11 h0@@3 f@@9 bx0@@8 bx1@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@13 t1@@12 t2@@11 h0@@3 f@@9 bx0@@8 bx1@@8) (Apply2 t0@@13 t1@@12 t2@@11 h1@@3 f@@9 bx0@@8 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply2 t0@@13 t1@@12 t2@@11 h1@@3 f@@9 bx0@@8 bx1@@8))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (t2@@12 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@10 T@U) (bx0@@9 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@9 t0@@14) ($IsBox bx1@@9 t1@@13)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@12)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@14 t1@@13 t2@@12 h1@@4 f@@10 bx0@@9 bx1@@9) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@14 t1@@13 t2@@12 h0@@4 f@@10 bx0@@9 bx1@@9) (Apply2 t0@@14 t1@@13 t2@@12 h1@@4 f@@10 bx0@@9 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply2 t0@@14 t1@@13 t2@@12 h1@@4 f@@10 bx0@@9 bx1@@9))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (t2@@13 T@U) (heap@@3 T@U) (h@@3 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) (bx1@@10 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType r@@1 heap@@3 bx0@@10 bx1@@10)) (Requires2 t0@@15 t1@@14 t2@@13 heap@@3 (Handle2 h@@3 r@@1 rd@@1) bx0@@10 bx1@@10))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires2 t0@@15 t1@@14 t2@@13 heap@@3 (Handle2 h@@3 r@@1 rd@@1) bx0@@10 bx1@@10))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0@0| () Int)
(declare-fun |lambdaResult#0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |lam#Z#0@0| () T@U)
(declare-fun |a#0@@1| () Int)
(declare-fun |b#0@@1| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.BadNamedLambdaDiv)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon7_correct true))
(let ((anon13_Else_correct  (=> (and (= |y#0@0| 0) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon13_Then_correct  (=> (or (not (= |y#0@0| 0)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= |y#0@0| 0)) (not true))) (=> (or (not (= |y#0@0| 0)) (not true)) (=> (= |lambdaResult#0| (Div |x#0@0| |y#0@0|)) (=> (and ($Is intType (int_2_U |lambdaResult#0|) TInt) (= (ControlFlow 0 6) 5)) anon7_correct)))))))
(let ((anon12_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 9) 6) anon13_Then_correct) (=> (= (ControlFlow 0 9) 8) anon13_Else_correct)))))
(let ((anon12_Else_correct true))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 10) 9) anon12_Then_correct) (=> (= (ControlFlow 0 10) 4) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (and (= |let#0#0#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle2 |lambda#4| (|lambda#5| TInt TInt 0) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) ($Is HandleTypeType |let#0#0#0| (Tclass._System.___hPartialFunc2 TInt TInt TInt))) (and (= |lam#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 3) (- 0 2)))) (Requires2 TInt TInt TInt $Heap@@1 |lam#Z#0@0| ($Box intType (int_2_U |a#0@@1|)) ($Box intType (int_2_U |b#0@@1|))))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 11) 1) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon11_Then_correct)) (=> (= (ControlFlow 0 11) 3) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
