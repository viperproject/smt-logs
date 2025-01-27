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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.PreY (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.PreY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1|)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 3))
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
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A T@U) (_module._default.PreY$B T@U) ($Heap T@U) (|f#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 _module._default.PreY$A _module._default.PreY$B))) ($Is SetType |s#0| (TSet _module._default.PreY$A))))) (and (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |573|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0|))
)) (= (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (forall ((|x#0@@0| T@U) ) (!  (=> ($IsBox |x#0@@0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0@@0|) (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |572|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@0 T@U) (_module._default.PreY$B@@0 T@U) ($Heap@@0 T@U) (|f#0@@0| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@0|) (Lit SetType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@0 _module._default.PreY$B@@0))) ($Is SetType |s#0@@0| (TSet _module._default.PreY$A@@0))))) (and (forall ((|x#2| T@U) ) (!  (=> ($IsBox |x#2| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |579|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@0 |f#0@@0| |x#2|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2|))
)) (= (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@0|) (Lit SetType |s#0@@0|)) (forall ((|x#2@@0| T@U) ) (!  (=> ($IsBox |x#2@@0| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2@@0|) (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@0 (Lit HandleTypeType |f#0@@0|) |x#2@@0|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |578|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@0 |f#0@@0| |x#2@@0|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |580|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@0|) (Lit SetType |s#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@1| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@2 h@@0) (Requires1 t0@@2 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@2 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@2 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@1) h@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@3)) (Requires1 t0@@3 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@3 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@3 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@2)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@4 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@4) h@@2) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@4 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@4) h@@2))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@4|) (|Set#Equal| (Reads1 |#$T0@@4| |#$R@@4| $OneHeap |f#0@@2| |x0#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 5) (forall ((t0@@5 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@5 t1@@3 (MapType0Store t0@@5 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@6 T@U) (t1@@4 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@4) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@6) ($IsAllocBox bx0@@2 t0@@6 h@@3)) (Requires1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@4) h@@3))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert  (and (forall ((t0@@7 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@7 t1@@5 t2 (MapType1Store t0@@7 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |669|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))
)))
(assert (forall ((t0@@8 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@8) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@8 t1@@6)))) (|Set#Equal| (Reads1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((bx@@6 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@1 T@U) (_module._default.PreY$B@@1 T@U) ($Heap@@1 T@U) (|f#0@@3| T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@3| (Lit SetType |s#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@1 _module._default.PreY$B@@1))) ($Is SetType |s#0@@1| (TSet _module._default.PreY$A@@1))))) (and (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |576|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@1 |f#0@@3| |x#1|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1|))
)) (= (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@3| (Lit SetType |s#0@@1|)) (forall ((|x#1@@0| T@U) ) (!  (=> ($IsBox |x#1@@0| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1@@0|) (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@1 |f#0@@3| |x#1@@0|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |575|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@1 |f#0@@3| |x#1@@0|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |577|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@3| (Lit SetType |s#0@@1|)) ($IsGoodHeap $Heap@@1))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.PreY$A@@2 () T@U)
(declare-fun _module._default.PreY$B@@2 () T@U)
(declare-fun |f#0@@4| () T@U)
(declare-fun |s#0@@2| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |x#3@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.PreY)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_correct  (=> (and (and (= (_module.__default.PreY _module._default.PreY$A@@2 _module._default.PreY$B@@2 |f#0@@4| |s#0@@2|) (forall ((|x#4| T@U) ) (!  (=> ($IsBox |x#4| _module._default.PreY$A@@2) (=> (|Set#IsMember| |s#0@@2| |x#4|) (Requires1 _module._default.PreY$A@@2 _module._default.PreY$B@@2 $Heap@@2 |f#0@@4| |x#4|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |583|
 :pattern ( (Requires1 _module._default.PreY$A@@2 _module._default.PreY$B@@2 $Heap@@2 |f#0@@4| |x#4|))
 :pattern ( (|Set#IsMember| |s#0@@2| |x#4|))
))) (forall ((|x#4@@0| T@U) ) (!  (=> ($IsBox |x#4@@0| _module._default.PreY$A@@2) (=> (|Set#IsMember| |s#0@@2| |x#4@@0|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |584|
 :pattern ( (Requires1 _module._default.PreY$A@@2 _module._default.PreY$B@@2 $Heap@@2 |f#0@@4| |x#4@@0|))
 :pattern ( (|Set#IsMember| |s#0@@2| |x#4@@0|))
))) (and ($Is boolType (bool_2_U (_module.__default.PreY _module._default.PreY$A@@2 _module._default.PreY$B@@2 |f#0@@4| |s#0@@2|)) TBool) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@1|)))
(let ((anon10_Else_correct  (=> (not (|Set#IsMember| |s#0@@2| |x#3@0|)) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 6) 3)) anon6_correct))))
(let ((anon10_Then_correct  (=> (and (|Set#IsMember| |s#0@@2| |x#3@0|) ($IsAllocBox ($Box HandleTypeType |f#0@@4|) (Tclass._System.___hFunc1 _module._default.PreY$A@@2 _module._default.PreY$B@@2) $Heap@@2)) (=> (and (and ($IsAllocBox |x#3@0| _module._default.PreY$A@@2 $Heap@@2) (= |b$reqreads#0@0| (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@0) alloc)))) (|Set#IsMember| (Reads1 _module._default.PreY$A@@2 _module._default.PreY$B@@2 $Heap@@2 |f#0@@4| |x#3@0|) ($Box refType $o@@0))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@0 $f@@0)))
 :qid |TreeMapSimpledfy.29:28|
 :skolemid |581|
)))) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 5) 3))) anon6_correct))))
(let ((anon9_Then_correct  (=> (and ($IsBox |x#3@0| _module._default.PreY$A@@2) ($IsAllocBox |x#3@0| _module._default.PreY$A@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 7) 5) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not (and ($IsBox |x#3@0| _module._default.PreY$A@@2) ($IsAllocBox |x#3@0| _module._default.PreY$A@@2 $Heap@@2))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 4) 3)) anon6_correct))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 4) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@2 _module._default.PreY$B@@2)) ($Is SetType |s#0@@2| (TSet _module._default.PreY$A@@2))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
