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
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.ListData (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.ListData#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.__default.PreY (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.PreY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.MapY (T@U T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.MapY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun BoxType () T@T)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| tytagFamily$List)
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((_module._default.ListData$_T0 T@U) ($ly T@U) (|xs#0| T@U) ) (! (= (_module.__default.ListData _module._default.ListData$_T0 ($LS $ly) |xs#0|) (_module.__default.ListData _module._default.ListData$_T0 $ly |xs#0|))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0 ($LS $ly) |xs#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
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
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.List$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h))
)))
(assert (forall ((_module.List$A@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@0 |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.ListData$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|xs#2| (_module.List.tail |xs#0@@0|)))
(|_module.__default.ListData#canCall| _module._default.ListData$_T0@@0 |xs#2|))) (= (_module.__default.ListData _module._default.ListData$_T0@@0 ($LS $ly@@0) |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |Set#Empty| (let ((|xs#1| (_module.List.tail |xs#0@@0|)))
(let ((|x#1| (_module.List.head |xs#0@@0|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#1|) (_module.__default.ListData _module._default.ListData$_T0@@0 $ly@@0 |xs#1|))))))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@0 ($LS $ly@@0) |xs#0@@0|))
))))
(assert (= (Ctor SetType) 5))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A T@U) (_module._default.PreY$B T@U) ($Heap T@U) (|f#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 _module._default.PreY$A _module._default.PreY$B))) ($Is SetType |s#0| (TSet _module._default.PreY$A))))) (and (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0|) true))
 :qid |treemapsimpledfy.30:10|
 :skolemid |573|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0|))
)) (= (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (forall ((|x#0@@0| T@U) ) (!  (=> ($IsBox |x#0@@0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0@@0|) (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|)))
 :qid |treemapsimpledfy.30:10|
 :skolemid |572|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor BoxType) 6))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A T@U) (_module._default.MapY$B T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|xs#0@@1| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A _module._default.MapY$B (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.MapY$A))) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 _module._default.MapY$A _module._default.MapY$B))) (_module.__default.PreY _module._default.MapY$A _module._default.MapY$B |f#0@@0| (Lit SetType (_module.__default.ListData _module._default.MapY$A ($LS $LZ) (Lit DatatypeTypeType |xs#0@@1|))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|xs#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(|_module.__default.MapY#canCall| _module._default.MapY$A _module._default.MapY$B |xs#4| |f#0@@0|))) (= (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) |#_module.List.Nil| (let ((|xs#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@1|)))))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A _module._default.MapY$B $Heap@@0 |f#0@@0| |x#2|) (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@1) |xs#3| |f#0@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) ($IsGoodHeap $Heap@@0))
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
(assert (forall ((_module.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1))  (and ($IsBox |a#6#0#0| _module.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$A@@1))))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@2)) (not (|Set#IsMember| b@@4 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@1 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 (Lit DatatypeTypeType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.ListData$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|xs#4@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 |xs#4@@0|))) (= (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |Set#Empty| (let ((|xs#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@2|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#3|) (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) |xs#3@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |treemapsimpledfy.8:31|
 :skolemid |636|
)))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.List.Nil_q d@@2))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.MapY$A@@0 T@U) (_module._default.MapY$B@@0 T@U) ($ly@@3 T@U) (|xs#0@@3| T@U) (|f#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@0 _module._default.MapY$B@@0 |xs#0@@3| |f#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.MapY$A@@0)) ($IsAlloc DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.MapY$A@@0) $Heap@@1)) (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@0 _module._default.MapY$B@@0)) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@0 _module._default.MapY$B@@0) $Heap@@1))) (_module.__default.PreY _module._default.MapY$A@@0 _module._default.MapY$B@@0 |f#0@@1| (_module.__default.ListData _module._default.MapY$A@@0 ($LS $LZ) |xs#0@@3|))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@0 _module._default.MapY$B@@0 $ly@@3 |xs#0@@3| |f#0@@1|) (Tclass._module.List _module._default.MapY$B@@0) $Heap@@1))
 :qid |treemapsimpledfy.33:10|
 :skolemid |588|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@0 _module._default.MapY$B@@0 $ly@@3 |xs#0@@3| |f#0@@1|) (Tclass._module.List _module._default.MapY$B@@0) $Heap@@1))
))))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@2 T@U) ($ly@@4 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@2 |xs#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.ListData$_T0@@2)))) (and (forall ((|x#0@@1| T@U) ) (!  (=> ($IsBox |x#0@@1| _module._default.ListData$_T0@@2) (=> (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@4 |xs#0@@4|) |x#0@@1|) (< (BoxRank |x#0@@1|) (DtRank |xs#0@@4|))))
 :qid |treemapsimpledfy.13:18|
 :skolemid |537|
 :pattern ( (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@4 |xs#0@@4|) |x#0@@1|))
)) ($Is SetType (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@4 |xs#0@@4|) (TSet _module._default.ListData$_T0@@2))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@4 |xs#0@@4|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@0 T@U) (_module._default.PreY$B@@0 T@U) ($Heap@@2 T@U) (|f#0@@2| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@2|) (Lit SetType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@0 _module._default.PreY$B@@0))) ($Is SetType |s#0@@0| (TSet _module._default.PreY$A@@0))))) (and (forall ((|x#2@@0| T@U) ) (!  (=> ($IsBox |x#2@@0| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2@@0|) true))
 :qid |treemapsimpledfy.30:10|
 :skolemid |579|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@2 |f#0@@2| |x#2@@0|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2@@0|))
)) (= (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@2|) (Lit SetType |s#0@@0|)) (forall ((|x#2@@1| T@U) ) (!  (=> ($IsBox |x#2@@1| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2@@1|) (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@2 (Lit HandleTypeType |f#0@@2|) |x#2@@1|)))
 :qid |treemapsimpledfy.30:10|
 :skolemid |578|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@2 |f#0@@2| |x#2@@1|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |580|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@2|) (Lit SetType |s#0@@0|)) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((_module.List$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$A@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$A@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (Tclass._module.List _module.List$A@@2))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@3| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3)  (or (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
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
(assert (forall ((_module.List$A@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$A@@3)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$A@@3)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$A@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@1 T@U) (_module._default.MapY$B@@1 T@U) ($ly@@5 T@U) ($Heap@@3 T@U) (|xs#0@@5| T@U) (|f#0@@4| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@1 _module._default.MapY$B@@1 |xs#0@@5| |f#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.MapY$A@@1))) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@1 _module._default.MapY$B@@1))) (_module.__default.PreY _module._default.MapY$A@@1 _module._default.MapY$B@@1 |f#0@@4| (_module.__default.ListData _module._default.MapY$A@@1 ($LS $LZ) |xs#0@@5|))))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|xs#2@@0| (_module.List.tail |xs#0@@5|)))
(|_module.__default.MapY#canCall| _module._default.MapY$A@@1 _module._default.MapY$B@@1 |xs#2@@0| |f#0@@4|))) (= (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 ($LS $ly@@5) |xs#0@@5| |f#0@@4|) (ite (_module.List.Nil_q |xs#0@@5|) |#_module.List.Nil| (let ((|xs#1@@0| (_module.List.tail |xs#0@@5|)))
(let ((|x#0@@2| (_module.List.head |xs#0@@5|)))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A@@1 _module._default.MapY$B@@1 $Heap@@3 |f#0@@4| |x#0@@2|) (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 $ly@@5 |xs#1@@0| |f#0@@4|))))))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 ($LS $ly@@5) |xs#0@@5| |f#0@@4|) ($IsGoodHeap $Heap@@3))
))))
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
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |treemapsimpledfy.8:31|
 :skolemid |634|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |treemapsimpledfy.8:31|
 :skolemid |643|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |treemapsimpledfy.8:31|
 :skolemid |645|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (_module._default.ListData$_T0@@3 T@U) ($ly@@6 T@U) (|xs#0@@6| T@U) ) (!  (=> (and (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@3 |xs#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.ListData$_T0@@3)) ($IsAlloc DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.ListData$_T0@@3) $Heap@@4)))) ($IsGoodHeap $Heap@@4)) ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@6 |xs#0@@6|) (TSet _module._default.ListData$_T0@@3) $Heap@@4))
 :qid |treemapsimpledfy.12:16|
 :skolemid |539|
 :pattern ( ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@6 |xs#0@@6|) (TSet _module._default.ListData$_T0@@3) $Heap@@4))
))))
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
(assert (forall ((_module.List$A@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$A@@4)) _module.List$A@@4)
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._module.List _module.List$A@@4))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |644|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |646|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@4|) (|Set#Equal| (Reads1 |#$T0@@4| |#$R@@4| $OneHeap |f#0@@5| |x0#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert  (and (and (and (and (and (and (= (Ctor refType) 7) (forall ((t0@@5 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@5 t1@@3 (MapType0Store t0@@5 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
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
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((d@@4 T@U) (_module.List$A@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$A@@5) $h@@1))) ($IsAllocBox (_module.List.head d@@4) _module.List$A@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAllocBox (_module.List.head d@@4) _module.List$A@@5 $h@@1))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@2 T@U) (_module._default.MapY$B@@2 T@U) ($ly@@7 T@U) (|xs#0@@7| T@U) (|f#0@@6| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@2 _module._default.MapY$B@@2 |xs#0@@7| |f#0@@6|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.MapY$A@@2)) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@2 _module._default.MapY$B@@2))) (_module.__default.PreY _module._default.MapY$A@@2 _module._default.MapY$B@@2 |f#0@@6| (_module.__default.ListData _module._default.MapY$A@@2 ($LS $LZ) |xs#0@@7|))))) ($Is DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@2 _module._default.MapY$B@@2 $ly@@7 |xs#0@@7| |f#0@@6|) (Tclass._module.List _module._default.MapY$B@@2)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@2 _module._default.MapY$B@@2 $ly@@7 |xs#0@@7| |f#0@@6|))
))))
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
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (forall ((_module.List$A@@6 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.List _module.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.List _module.List$A@@6))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@6 (Tclass._module.List _module.List$A@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@1 T@U) (_module._default.PreY$B@@1 T@U) ($Heap@@5 T@U) (|f#0@@7| T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@7| (Lit SetType |s#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@1 _module._default.PreY$B@@1))) ($Is SetType |s#0@@1| (TSet _module._default.PreY$A@@1))))) (and (forall ((|x#1@@0| T@U) ) (!  (=> ($IsBox |x#1@@0| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1@@0|) true))
 :qid |treemapsimpledfy.30:10|
 :skolemid |576|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@5 |f#0@@7| |x#1@@0|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1@@0|))
)) (= (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@7| (Lit SetType |s#0@@1|)) (forall ((|x#1@@1| T@U) ) (!  (=> ($IsBox |x#1@@1| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1@@1|) (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@5 |f#0@@7| |x#1@@1|)))
 :qid |treemapsimpledfy.30:10|
 :skolemid |575|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@5 |f#0@@7| |x#1@@1|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |577|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@7| (Lit SetType |s#0@@1|)) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((d@@6 T@U) (_module.List$A@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@7) $h@@2))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$A@@7) $h@@2))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$A@@7) $h@@2))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Equal| a@@12 b@@9) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@12 o@@4) (|Set#IsMember| b@@9 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@12 o@@4))
 :pattern ( (|Set#IsMember| b@@9 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |642|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((_module._default.MapY$A@@3 T@U) (_module._default.MapY$B@@3 T@U) ($ly@@8 T@U) (|xs#0@@8| T@U) (|f#0@@8| T@U) ) (! (= (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 ($LS $ly@@8) |xs#0@@8| |f#0@@8|) (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 $ly@@8 |xs#0@@8| |f#0@@8|))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 ($LS $ly@@8) |xs#0@@8| |f#0@@8|))
)))
(assert (forall ((_module.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@3)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$A@@8 $h@@3) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$A@@8) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@4 T@U) (_module._default.MapY$B@@4 T@U) ($ly@@9 T@U) ($Heap@@6 T@U) (|xs#0@@9| T@U) (|f#0@@9| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@4 _module._default.MapY$B@@4 (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.MapY$A@@4))) ($Is HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@4 _module._default.MapY$B@@4))) (U_2_bool (Lit boolType (bool_2_U (_module.__default.PreY _module._default.MapY$A@@4 _module._default.MapY$B@@4 (Lit HandleTypeType |f#0@@9|) (Lit SetType (_module.__default.ListData _module._default.MapY$A@@4 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@9|)))))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)))))) (let ((|xs#6| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(|_module.__default.MapY#canCall| _module._default.MapY$A@@4 _module._default.MapY$B@@4 |xs#6| (Lit HandleTypeType |f#0@@9|)))) (= (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@9) (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@9|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)) |#_module.List.Nil| (let ((|xs#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(let ((|x#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@9|)))))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A@@4 _module._default.MapY$B@@4 $Heap@@6 (Lit HandleTypeType |f#0@@9|) |x#4|) (Lit DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@9) |xs#5| (Lit HandleTypeType |f#0@@9|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |592|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@9) (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@9|)) ($IsGoodHeap $Heap@@6))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0@@10| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun _module._default.MapY$A@@5 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |xs#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun _module._default.MapY$B@@5 () T@U)
(declare-fun $Heap@@7 () T@U)
(declare-fun |f#0@@10| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.MapY)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= |xs#0@@10| (|#_module.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($IsBox |_mcc#0#0| _module._default.MapY$A@@5) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List _module._default.MapY$A@@5))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List _module._default.MapY$A@@5)))) (and (and (= |xs#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| _module._default.MapY$A@@5) (= |x#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (Requires1 _module._default.MapY$A@@5 _module._default.MapY$B@@5 $Heap@@7 |f#0@@10| |x#Z#0@0|)) (=> (Requires1 _module._default.MapY$A@@5 _module._default.MapY$B@@5 $Heap@@7 |f#0@@10| |x#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |xs#Z#0@0| (Tclass._module.List _module._default.MapY$A@@5) $Heap@@7) ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@5 _module._default.MapY$B@@5) $Heap@@7)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (|_module.__default.PreY#canCall| _module._default.MapY$A@@5 _module._default.MapY$B@@5 |f#0@@10| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#Z#0@0|)) (or (_module.__default.PreY _module._default.MapY$A@@5 _module._default.MapY$B@@5 |f#0@@10| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#Z#0@0|)) (forall ((|x#6| T@U) ) (!  (=> ($IsBox |x#6| _module._default.MapY$A@@5) (=> (|Set#IsMember| (_module.__default.ListData _module._default.MapY$A@@5 ($LS ($LS $LZ)) |xs#Z#0@0|) |x#6|) (Requires1 _module._default.MapY$A@@5 _module._default.MapY$B@@5 $Heap@@7 |f#0@@10| |x#6|)))
 :qid |treemapsimpledfy.30:10|
 :skolemid |595|
 :pattern ( (Requires1 _module._default.MapY$A@@5 _module._default.MapY$B@@5 $Heap@@7 |f#0@@10| |x#6|))
 :pattern ( (|Set#IsMember| (_module.__default.ListData _module._default.MapY$A@@5 ($LS ($LS $LZ)) |xs#Z#0@0|) |x#6|))
))))) (=> (and (_module.__default.PreY _module._default.MapY$A@@5 _module._default.MapY$B@@5 |f#0@@10| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#Z#0@0|)) (= (ControlFlow 0 4) (- 0 3))) (< (DtRank |xs#Z#0@0|) (DtRank |xs#0@@10|)))))))))))
(let ((anon9_Else_correct  (=> (or (not (= |xs#0@@10| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 8) 4) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@7 alloc false)) ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@5 _module._default.MapY$B@@5) $Heap@@7)) (and ($IsAlloc DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.MapY$A@@5) $Heap@@7) (|_module.__default.ListData#canCall| _module._default.MapY$A@@5 |xs#0@@10|))) (and (and (= |##s#0@0| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#0@@10|)) ($IsAlloc SetType |##s#0@0| (TSet _module._default.MapY$A@@5) $Heap@@7)) (and (|_module.__default.PreY#canCall| _module._default.MapY$A@@5 _module._default.MapY$B@@5 |f#0@@10| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#0@@10|)) (_module.__default.PreY _module._default.MapY$A@@5 _module._default.MapY$B@@5 |f#0@@10| (_module.__default.ListData _module._default.MapY$A@@5 ($LS $LZ) |xs#0@@10|))))) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.MapY$A@@5)) ($Is HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@5 _module._default.MapY$B@@5))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
