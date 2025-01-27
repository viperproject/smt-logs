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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.CheckReadsParens (T@U Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.CheckReadsParens#canCall| (T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1|)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor HandleTypeType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|f#0| T@U) (|x#0| Int) ) (!  (=> (or (|_module.__default.CheckReadsParens#canCall| |f#0| |x#0|) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 TInt TInt))))) (= (_module.__default.CheckReadsParens |f#0| |x#0|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f#0| ($Box intType (int_2_U |x#0|)))))))
 :qid |ArrowTypeOptimizationsdfy.25:16|
 :skolemid |546|
 :pattern ( (_module.__default.CheckReadsParens |f#0| |x#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
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
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|f#0@@0| T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.__default.CheckReadsParens#canCall| |f#0@@0| (LitInt |x#0@@0|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 TInt TInt))))) (= (_module.__default.CheckReadsParens |f#0@@0| (LitInt |x#0@@0|)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt |x#0@@0|))))))))
 :qid |ArrowTypeOptimizationsdfy.25:16|
 :weight 3
 :skolemid |547|
 :pattern ( (_module.__default.CheckReadsParens |f#0@@0| (LitInt |x#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1)) (forall ((h T@U) (bx0@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h) ($IsBox bx0@@0 t0@@1)) (Requires1 t0@@1 t1@@1 h f@@1 bx0@@0)) ($IsBox (Apply1 t0@@1 t1@@1 h f@@1 bx0@@0) t1@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@1 t1@@1 h f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@5|) (Requires1 |#$T0@@5| |#$R@@5| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@6|) (|Set#Equal| (Reads1 |#$T0@@6| |#$R@@6| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1@@2 t2 (MapType0Store t0@@2 t1@@2 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 u2 (MapType0Store u0@@0 u1@@0 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0@@0 u1@@0 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@1 u1@@1 u2@@0 (MapType0Store u0@@1 u1@@1 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@1 u1@@1 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@3 T@T) (t1@@3 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@3 (MapType1Store t0@@3 t1@@3 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@2 u1@@2 (MapType1Store u0@@2 u1@@2 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@2 u1@@2 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |562|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (heap@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (|Set#Equal| (Reads1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) |Set#Empty|)) (= (Requires1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) (Requires1 t0@@4 t1@@4 heap@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@4 t1@@4 heap@@0 f@@2 bx0@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|f#0@@3| T@U) (|x#0@@1| Int) ) (!  (=> (or (|_module.__default.CheckReadsParens#canCall| (Lit HandleTypeType |f#0@@3|) (LitInt |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt))))) (= (_module.__default.CheckReadsParens (Lit HandleTypeType |f#0@@3|) (LitInt |x#0@@1|)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 (Lit HandleTypeType |f#0@@3|) ($Box intType (int_2_U (LitInt |x#0@@1|))))))))
 :qid |ArrowTypeOptimizationsdfy.25:16|
 :weight 3
 :skolemid |548|
 :pattern ( (_module.__default.CheckReadsParens (Lit HandleTypeType |f#0@@3|) (LitInt |x#0@@1|)) ($IsGoodHeap $Heap@@1))
))))
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
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f#0@@4| () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.CheckReadsParens)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (Lit boolType (bool_2_U true))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 TInt TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
