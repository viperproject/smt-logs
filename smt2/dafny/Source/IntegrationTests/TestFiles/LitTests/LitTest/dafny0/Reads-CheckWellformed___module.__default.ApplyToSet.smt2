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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.__default.ApplyToSet (T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.__default.ApplyToSet#canCall| (T@U T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.___hFunc1 |tytagFamily$_#Func1|)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((_module._default.ApplyToSet$X T@U) (S T@U) ) (!  (=> (|$let#0$canCall| _module._default.ApplyToSet$X S) (|Set#IsMember| S (|$let#0_x| _module._default.ApplyToSet$X S)))
 :qid |Readsdfy.106:5|
 :skolemid |588|
 :pattern ( (|$let#0_x| _module._default.ApplyToSet$X S))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.ApplyToSet$X@@0 T@U) ($ly T@U) ($Heap T@U) (|S#0| T@U) (|f#0| T@U) ) (!  (=> (or (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@0 |S#0| |f#0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is SetType |S#0| (TSet _module._default.ApplyToSet$X@@0)) ($IsAlloc SetType |S#0| (TSet _module._default.ApplyToSet$X@@0) $Heap)) (and ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0)) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0) $Heap))) (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| _module._default.ApplyToSet$X@@0) (and (=> (|Set#IsMember| |S#0| |x#0|) (Requires1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0 $Heap |f#0| |x#0|)) (=> (|Set#IsMember| |S#0| |x#0|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0 $Heap |f#0| |x#0|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |583|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0 $Heap |f#0| |x#0|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@0 _module._default.ApplyToSet$X@@0 $Heap |f#0| |x#0|))
 :pattern ( (|Set#IsMember| |S#0| |x#0|))
))))) ($IsAlloc SetType (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@0 $ly |S#0| |f#0|) (TSet _module._default.ApplyToSet$X@@0) $Heap))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsAlloc SetType (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@0 $ly |S#0| |f#0|) (TSet _module._default.ApplyToSet$X@@0) $Heap))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.ApplyToSet$X@@1 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (|S#0@@0| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@1 (Lit SetType |S#0@@0|) |f#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |S#0@@0| (TSet _module._default.ApplyToSet$X@@1))) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1))) (forall ((|x#3| T@U) ) (!  (=> ($IsBox |x#3| _module._default.ApplyToSet$X@@1) (and (=> (|Set#IsMember| (Lit SetType |S#0@@0|) |x#3|) (Requires1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1 $Heap@@0 |f#0@@0| |x#3|)) (=> (|Set#IsMember| (Lit SetType |S#0@@0|) |x#3|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1 $Heap@@0 |f#0@@0| |x#3|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |590|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1 $Heap@@0 |f#0@@0| |x#3|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1 $Heap@@0 |f#0@@0| |x#3|))
 :pattern ( (|Set#IsMember| |S#0@@0| |x#3|))
))))) (and (=> (not (|Set#Equal| |S#0@@0| |Set#Empty|)) (and (|$let#0$canCall| _module._default.ApplyToSet$X@@1 (Lit SetType |S#0@@0|)) (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@1 (|Set#Difference| |S#0@@0| (|Set#UnionOne| |Set#Empty| (|$let#0_x| _module._default.ApplyToSet$X@@1 (Lit SetType |S#0@@0|)))) |f#0@@0|))) (= (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@1 ($LS $ly@@0) (Lit SetType |S#0@@0|) |f#0@@0|) (ite (|Set#Equal| |S#0@@0| |Set#Empty|) |Set#Empty| (let ((|x#4| (|$let#0_x| _module._default.ApplyToSet$X@@1 (Lit SetType |S#0@@0|))))
(|Set#Union| (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@1 ($LS $ly@@0) (|Set#Difference| |S#0@@0| (|Set#UnionOne| |Set#Empty| |x#4|)) |f#0@@0|) (|Set#UnionOne| |Set#Empty| (Apply1 _module._default.ApplyToSet$X@@1 _module._default.ApplyToSet$X@@1 $Heap@@0 |f#0@@0| |x#4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@1 ($LS $ly@@0) (Lit SetType |S#0@@0|) |f#0@@0|) ($IsGoodHeap $Heap@@0))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.ApplyToSet$X@@2 T@U) ($ly@@1 T@U) ($Heap@@1 T@U) (|S#0@@1| T@U) (|f#0@@1| T@U) ) (!  (=> (or (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@2 |S#0@@1| |f#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) (and ($Is SetType |S#0@@1| (TSet _module._default.ApplyToSet$X@@2)) ($IsAlloc SetType |S#0@@1| (TSet _module._default.ApplyToSet$X@@2) $Heap@@1))) (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2)) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2) $Heap@@1))) (forall ((|x#0@@0| T@U) ) (!  (=> ($IsBox |x#0@@0| _module._default.ApplyToSet$X@@2) (and (=> (|Set#IsMember| |S#0@@1| |x#0@@0|) (Requires1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2 $Heap@@1 |f#0@@1| |x#0@@0|)) (=> (|Set#IsMember| |S#0@@1| |x#0@@0|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2 $Heap@@1 |f#0@@1| |x#0@@0|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |583|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2 $Heap@@1 |f#0@@1| |x#0@@0|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@2 _module._default.ApplyToSet$X@@2 $Heap@@1 |f#0@@1| |x#0@@0|))
 :pattern ( (|Set#IsMember| |S#0@@1| |x#0@@0|))
))))) ($Is SetType (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@2 $ly@@1 |S#0@@1| |f#0@@1|) (TSet _module._default.ApplyToSet$X@@2)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@2 $ly@@1 |S#0@@1| |f#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.ApplyToSet$X@@3 T@U) ($ly@@2 T@U) ($Heap@@2 T@U) (|S#0@@2| T@U) (|f#0@@2| T@U) ) (!  (=> (or (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@3 (Lit SetType |S#0@@2|) (Lit HandleTypeType |f#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($Is SetType |S#0@@2| (TSet _module._default.ApplyToSet$X@@3))) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3))) (forall ((|x#5| T@U) ) (!  (=> ($IsBox |x#5| _module._default.ApplyToSet$X@@3) (and (=> (|Set#IsMember| (Lit SetType |S#0@@2|) |x#5|) (Requires1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3 $Heap@@2 (Lit HandleTypeType |f#0@@2|) |x#5|)) (=> (|Set#IsMember| (Lit SetType |S#0@@2|) |x#5|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3 $Heap@@2 (Lit HandleTypeType |f#0@@2|) |x#5|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |592|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3 $Heap@@2 |f#0@@2| |x#5|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3 $Heap@@2 |f#0@@2| |x#5|))
 :pattern ( (|Set#IsMember| |S#0@@2| |x#5|))
))))) (and (=> (not (|Set#Equal| |S#0@@2| |Set#Empty|)) (and (|$let#0$canCall| _module._default.ApplyToSet$X@@3 (Lit SetType |S#0@@2|)) (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@3 (|Set#Difference| |S#0@@2| (|Set#UnionOne| |Set#Empty| (|$let#0_x| _module._default.ApplyToSet$X@@3 (Lit SetType |S#0@@2|)))) (Lit HandleTypeType |f#0@@2|)))) (= (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@3 ($LS $ly@@2) (Lit SetType |S#0@@2|) (Lit HandleTypeType |f#0@@2|)) (ite (|Set#Equal| |S#0@@2| |Set#Empty|) |Set#Empty| (let ((|x#6| (|$let#0_x| _module._default.ApplyToSet$X@@3 (Lit SetType |S#0@@2|))))
(|Set#Union| (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@3 ($LS $ly@@2) (|Set#Difference| |S#0@@2| (|Set#UnionOne| |Set#Empty| |x#6|)) (Lit HandleTypeType |f#0@@2|)) (|Set#UnionOne| |Set#Empty| (Apply1 _module._default.ApplyToSet$X@@3 _module._default.ApplyToSet$X@@3 $Heap@@2 (Lit HandleTypeType |f#0@@2|) |x#6|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |593|
 :pattern ( (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@3 ($LS $ly@@2) (Lit SetType |S#0@@2|) (Lit HandleTypeType |f#0@@2|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.ApplyToSet$X@@4 T@U) ($ly@@3 T@U) ($Heap@@3 T@U) (|S#0@@3| T@U) (|f#0@@3| T@U) ) (!  (=> (or (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@4 |S#0@@3| |f#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) ($Is SetType |S#0@@3| (TSet _module._default.ApplyToSet$X@@4))) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4))) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module._default.ApplyToSet$X@@4) (and (=> (|Set#IsMember| |S#0@@3| |x#1|) (Requires1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4 $Heap@@3 |f#0@@3| |x#1|)) (=> (|Set#IsMember| |S#0@@3| |x#1|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4 $Heap@@3 |f#0@@3| |x#1|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |586|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4 $Heap@@3 |f#0@@3| |x#1|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4 $Heap@@3 |f#0@@3| |x#1|))
 :pattern ( (|Set#IsMember| |S#0@@3| |x#1|))
))))) (and (=> (not (|Set#Equal| |S#0@@3| |Set#Empty|)) (and (|$let#0$canCall| _module._default.ApplyToSet$X@@4 |S#0@@3|) (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@4 (|Set#Difference| |S#0@@3| (|Set#UnionOne| |Set#Empty| (|$let#0_x| _module._default.ApplyToSet$X@@4 |S#0@@3|))) |f#0@@3|))) (= (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@4 ($LS $ly@@3) |S#0@@3| |f#0@@3|) (ite (|Set#Equal| |S#0@@3| |Set#Empty|) |Set#Empty| (let ((|x#2| (|$let#0_x| _module._default.ApplyToSet$X@@4 |S#0@@3|)))
(|Set#Union| (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@4 $ly@@3 (|Set#Difference| |S#0@@3| (|Set#UnionOne| |Set#Empty| |x#2|)) |f#0@@3|) (|Set#UnionOne| |Set#Empty| (Apply1 _module._default.ApplyToSet$X@@4 _module._default.ApplyToSet$X@@4 $Heap@@3 |f#0@@3| |x#2|))))))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@4 ($LS $ly@@3) |S#0@@3| |f#0@@3|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
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
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
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
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@4 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@4) h@@2) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@4 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@4) h@@2))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
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
 :skolemid |772|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@8 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@8) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@8 t1@@6)))) (|Set#Equal| (Reads1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((_module._default.ApplyToSet$X@@5 T@U) ($ly@@4 T@U) (|S#0@@4| T@U) (|f#0@@4| T@U) ) (! (= (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@5 ($LS $ly@@4) |S#0@@4| |f#0@@4|) (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@5 $ly@@4 |S#0@@4| |f#0@@4|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@5 ($LS $ly@@4) |S#0@@4| |f#0@@4|))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.ApplyToSet$X@@6 () T@U)
(declare-fun |S#0@@5| () T@U)
(declare-fun |x#8@0| () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun |##S#0@0| () T@U)
(declare-fun |f#0@@5| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |x#7@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.ApplyToSet)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon10_correct  (and (=> (= (ControlFlow 0 4) (- 0 8)) (exists ((|x#9| T@U) ) (!  (and ($IsBox |x#9| _module._default.ApplyToSet$X@@6) (|Set#IsMember| |S#0@@5| |x#9|))
 :qid |Readsdfy.106:9|
 :skolemid |597|
))) (=> (exists ((|x#9@@0| T@U) ) (!  (and ($IsBox |x#9@@0| _module._default.ApplyToSet$X@@6) (|Set#IsMember| |S#0@@5| |x#9@@0|))
 :qid |Readsdfy.106:9|
 :skolemid |597|
)) (=> (and ($IsBox |x#8@0| _module._default.ApplyToSet$X@@6) ($IsAllocBox |x#8@0| _module._default.ApplyToSet$X@@6 $Heap@@4)) (=> (and (and (|Set#IsMember| |S#0@@5| |x#8@0|) (= |##S#0@0| (|Set#Difference| |S#0@@5| (|Set#UnionOne| |Set#Empty| |x#8@0|)))) (and ($IsAlloc SetType |##S#0@0| (TSet _module._default.ApplyToSet$X@@6) $Heap@@4) ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6) $Heap@@4))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((|x#10| T@U) ) (!  (=> ($IsBox |x#10| _module._default.ApplyToSet$X@@6) (and (=> (|Set#IsMember| |##S#0@0| |x#10|) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10|)) (=> (|Set#IsMember| |##S#0@0| |x#10|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |598|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10|))
 :pattern ( (|Set#IsMember| |##S#0@0| |x#10|))
))) (=> (forall ((|x#10@@0| T@U) ) (!  (=> ($IsBox |x#10@@0| _module._default.ApplyToSet$X@@6) (and (=> (|Set#IsMember| |##S#0@0| |x#10@@0|) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10@@0|)) (=> (|Set#IsMember| |##S#0@0| |x#10@@0|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10@@0|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |599|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10@@0|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#10@@0|))
 :pattern ( (|Set#IsMember| |##S#0@0| |x#10@@0|))
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (|Set#Subset| |##S#0@0| |S#0@@5|) (not (|Set#Subset| |S#0@@5| |##S#0@0|)))) (=> (and (|Set#Subset| |##S#0@0| |S#0@@5|) (not (|Set#Subset| |S#0@@5| |##S#0@0|))) (=> (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@6 (|Set#Difference| |S#0@@5| (|Set#UnionOne| |Set#Empty| |x#8@0|)) |f#0@@5|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#8@0|)) (=> (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#8@0|) (=> (and (= |b$reqreads#2@0| (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@0) alloc)))) (|Set#IsMember| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#8@0|) ($Box refType $o@@0))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@0 $f@@0)))
 :qid |Readsdfy.107:31|
 :skolemid |601|
))) (|$let#0$canCall| _module._default.ApplyToSet$X@@6 |S#0@@5|)) (=> (and (and (= (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@6 ($LS $LZ) |S#0@@5| |f#0@@5|) (|Set#Union| (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@6 ($LS $LZ) (|Set#Difference| |S#0@@5| (|Set#UnionOne| |Set#Empty| |x#8@0|)) |f#0@@5|) (|Set#UnionOne| |Set#Empty| (Apply1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#8@0|)))) (|_module.__default.ApplyToSet#canCall| _module._default.ApplyToSet$X@@6 (|Set#Difference| |S#0@@5| (|Set#UnionOne| |Set#Empty| |x#8@0|)) |f#0@@5|)) (and ($Is SetType (_module.__default.ApplyToSet _module._default.ApplyToSet$X@@6 ($LS $LZ) |S#0@@5| |f#0@@5|) (TSet _module._default.ApplyToSet$X@@6)) (= (ControlFlow 0 4) (- 0 3)))) |b$reqreads#2@0|)))))))))))))))
(let ((anon15_Else_correct  (=> (and (not (and ($IsBox |x#8@0| _module._default.ApplyToSet$X@@6) ($IsAllocBox |x#8@0| _module._default.ApplyToSet$X@@6 $Heap@@4))) (= (ControlFlow 0 10) 4)) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and ($IsBox |x#8@0| _module._default.ApplyToSet$X@@6) ($IsAllocBox |x#8@0| _module._default.ApplyToSet$X@@6 $Heap@@4)) (= (ControlFlow 0 9) 4)) anon10_correct)))
(let ((anon14_Else_correct  (=> (not (|Set#Equal| |S#0@@5| |Set#Empty|)) (and (=> (= (ControlFlow 0 11) 9) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Then_correct true))
(let ((anon4_correct  (=> (forall ((|x#0@@1| T@U) ) (!  (=> ($IsBox |x#0@@1| _module._default.ApplyToSet$X@@6) (and (=> (|Set#IsMember| |S#0@@5| |x#0@@1|) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#0@@1|)) (=> (|Set#IsMember| |S#0@@5| |x#0@@1|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#0@@1|) |Set#Empty|))))
 :qid |Readsdfy.103:19|
 :skolemid |596|
 :pattern ( (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#0@@1|))
 :pattern ( (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#0@@1|))
 :pattern ( (|Set#IsMember| |S#0@@5| |x#0@@1|))
)) (and (=> (= (ControlFlow 0 12) (- 0 14)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 12) (- 0 13)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (and (=> (= (ControlFlow 0 12) 1) anon13_Then_correct) (=> (= (ControlFlow 0 12) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct)))))))))
(let ((anon12_Else_correct  (=> (and (and (=> (|Set#IsMember| |S#0@@5| |x#7@0|) (and (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) |Set#Empty|))) (= |b$reqreads#0@1| true)) (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 17) 12))) anon4_correct)))
(let ((anon12_Then_correct  (=> (|Set#IsMember| |S#0@@5| |x#7@0|) (=> (and ($IsAllocBox ($Box HandleTypeType |f#0@@5|) (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6) $Heap@@4) ($IsAllocBox |x#7@0| _module._default.ApplyToSet$X@@6 $Heap@@4)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@1) alloc)))) (|Set#IsMember| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) ($Box refType $o@@1))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@1 $f@@1)))
 :qid |Readsdfy.103:37|
 :skolemid |594|
))) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|)) (and ($IsAllocBox ($Box HandleTypeType |f#0@@5|) (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6) $Heap@@4) ($IsAllocBox |x#7@0| _module._default.ApplyToSet$X@@6 $Heap@@4))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|)) (=> (Requires1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) (=> (= |b$reqreads#1@0| (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@2) alloc)))) (|Set#IsMember| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) ($Box refType $o@@2))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@2)))
 :qid |Readsdfy.103:54|
 :skolemid |595|
))) (=> (and (and (|Set#Equal| (Reads1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6 $Heap@@4 |f#0@@5| |x#7@0|) |Set#Empty|) (= |b$reqreads#0@1| |b$reqreads#0@0|)) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 15) 12))) anon4_correct)))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (=> (and ($IsBox |x#7@0| _module._default.ApplyToSet$X@@6) ($IsAllocBox |x#7@0| _module._default.ApplyToSet$X@@6 $Heap@@4)) (and (=> (= (ControlFlow 0 18) 15) anon12_Then_correct) (=> (= (ControlFlow 0 18) 17) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and ($Is SetType |S#0@@5| (TSet _module._default.ApplyToSet$X@@6)) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 _module._default.ApplyToSet$X@@6 _module._default.ApplyToSet$X@@6))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 19) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
