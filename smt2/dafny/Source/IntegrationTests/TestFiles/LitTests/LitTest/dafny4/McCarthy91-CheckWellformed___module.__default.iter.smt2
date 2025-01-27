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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.iter (T@U Int T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.iter#canCall| (Int T@U Int) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 tytagFamily$nat |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|e#0| Int) (|f#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.iter#canCall| (LitInt |e#0|) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (<= (LitInt 0) |e#0|)) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= (LitInt |e#0|) (LitInt 0))) (not true)) (|_module.__default.iter#canCall| (LitInt (- |e#0| 1)) (Lit HandleTypeType |f#0|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt |n#0|)))))))) (= (_module.__default.iter ($LS $ly) (LitInt |e#0|) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (ite (= (LitInt |e#0|) (LitInt 0)) |n#0| (_module.__default.iter ($LS $ly) (LitInt (- |e#0| 1)) (Lit HandleTypeType |f#0|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt |n#0|)))))))))))
 :qid |McCarthy91dfy.61:10|
 :weight 3
 :skolemid |569|
 :pattern ( (_module.__default.iter ($LS $ly) (LitInt |e#0|) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|e#0@@0| Int) (|f#0@@2| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.iter#canCall| (LitInt |e#0@@0|) |f#0@@2| (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (<= (LitInt 0) |e#0@@0|)) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= (LitInt |e#0@@0|) (LitInt 0))) (not true)) (|_module.__default.iter#canCall| (LitInt (- |e#0@@0| 1)) |f#0@@2| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@2| ($Box intType (int_2_U (LitInt |n#0@@0|)))))))) (= (_module.__default.iter ($LS $ly@@0) (LitInt |e#0@@0|) |f#0@@2| (LitInt |n#0@@0|)) (ite (= (LitInt |e#0@@0|) (LitInt 0)) |n#0@@0| (_module.__default.iter ($LS $ly@@0) (LitInt (- |e#0@@0| 1)) |f#0@@2| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@2| ($Box intType (int_2_U (LitInt |n#0@@0|)))))))))))
 :qid |McCarthy91dfy.61:10|
 :weight 3
 :skolemid |568|
 :pattern ( (_module.__default.iter ($LS $ly@@0) (LitInt |e#0@@0|) |f#0@@2| (LitInt |n#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|e#0@@1| Int) (|f#0@@3| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.iter#canCall| |e#0@@1| |f#0@@3| |n#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (<= (LitInt 0) |e#0@@1|)) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (or (not (= |e#0@@1| (LitInt 0))) (not true)) (|_module.__default.iter#canCall| (- |e#0@@1| 1) |f#0@@3| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 |f#0@@3| ($Box intType (int_2_U |n#0@@1|))))))) (= (_module.__default.iter ($LS $ly@@1) |e#0@@1| |f#0@@3| |n#0@@1|) (ite (= |e#0@@1| (LitInt 0)) |n#0@@1| (_module.__default.iter $ly@@1 (- |e#0@@1| 1) |f#0@@3| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 |f#0@@3| ($Box intType (int_2_U |n#0@@1|))))))))))
 :qid |McCarthy91dfy.61:10|
 :skolemid |567|
 :pattern ( (_module.__default.iter ($LS $ly@@1) |e#0@@1| |f#0@@3| |n#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@4| T@U) ) (! (= ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@4| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@5| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall (($ly@@2 T@U) (|e#0@@2| Int) (|f#0@@6| T@U) (|n#0@@2| Int) ) (! (= (_module.__default.iter ($LS $ly@@2) |e#0@@2| |f#0@@6| |n#0@@2|) (_module.__default.iter $ly@@2 |e#0@@2| |f#0@@6| |n#0@@2|))
 :qid |McCarthy91dfy.61:10|
 :skolemid |563|
 :pattern ( (_module.__default.iter ($LS $ly@@2) |e#0@@2| |f#0@@6| |n#0@@2|))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 4) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |576|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
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
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |e#0@@3| () Int)
(declare-fun |##e#0@0| () Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun |f#0@@7| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |n#0@@3| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.iter)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon8_Else_correct  (=> (or (not (= |e#0@@3| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 7)) ($Is intType (int_2_U (- |e#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |e#0@@3| 1)) Tclass._System.nat) (=> (= |##e#0@0| (- |e#0@@3| 1)) (=> (and (and ($IsAlloc intType (int_2_U |##e#0@0|) Tclass._System.nat $Heap@@2) ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@2)) (and (= |##n#0@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 |f#0@@7| ($Box intType (int_2_U |n#0@@3|)))))) ($IsAlloc intType (int_2_U |##n#0@0|) TInt $Heap@@2))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (<= 0 |e#0@@3|) (= |##e#0@0| |e#0@@3|))) (=> (or (<= 0 |e#0@@3|) (= |##e#0@0| |e#0@@3|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (<= 0 |n#0@@3|) (< |##e#0@0| |e#0@@3|)) (= |##n#0@0| |n#0@@3|))) (=> (or (or (<= 0 |n#0@@3|) (< |##e#0@0| |e#0@@3|)) (= |##n#0@0| |n#0@@3|)) (=> (= (ControlFlow 0 4) (- 0 3)) (or (< |##e#0@0| |e#0@@3|) (and (= |##e#0@0| |e#0@@3|) (< |##n#0@0| |n#0@@3|)))))))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 8) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (<= (LitInt 0) |e#0@@3|) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 TInt TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
