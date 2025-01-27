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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.NextMinimizer (T@U T@U T@U T@U Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.NextMinimizer#canCall| (T@U T@U T@U Int) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.Tail (T@U T@U T@U Int) T@U)
(declare-fun $LZ () T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.Tail#canCall| (T@U T@U Int) Bool)
(declare-fun BoxType () T@T)
(declare-fun |$let#3$canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun |$let#3_k| (T@U T@U Int T@U T@U) Int)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.nat Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$nat |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Stream)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$T#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (=> (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (and (= (_module.Stream.head d0) (_module.Stream.head d1)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tail d0) (_module.Stream.tail d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NextMinimizer$_T0 T@U) ($ly T@U) ($Heap T@U) (|s#0| T@U) (|P#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0 |s#0| |P#0| |n#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.NextMinimizer$_T0)) ($IsAlloc DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.NextMinimizer$_T0) $Heap))) (and ($Is HandleTypeType |P#0| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0 TBool)) ($IsAlloc HandleTypeType |P#0| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0 TBool) $Heap))) (<= (LitInt 0) |n#0|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0 TBool $Heap |P#0| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0 ($LS $LZ) |s#0| |n#0|)))))))) (and (and (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0 TBool $Heap |P#0| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0 ($LS $LZ) |s#0| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0 $ly |s#0| |P#0| |n#0|)))))) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0 $ly |s#0| |P#0| |n#0|))) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0 TBool $Heap |P#0| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0 ($LS $LZ) |s#0| |i#0|)))))))
 :qid |Filterdfy.104:18|
 :skolemid |857|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0 ($LS $LZ) |s#0| |i#0|))
))) (<= (LitInt 0) (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0 $ly |s#0| |P#0| |n#0|))))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0 $ly |s#0| |P#0| |n#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |1216|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0 T@U) ($ly@@0 T@U) (|s#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0 (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.Tail$_T0)) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@0|)) (|_module.__default.Tail#canCall| _module._default.Tail$_T0 (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|))) (LitInt (- |n#0@@0| 1))))) (= (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |s#0@@0| (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|))) (LitInt (- |n#0@@0| 1)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |648|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|)))
))))
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NextMinimizer$_T0@@0 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|s#0@@1| T@U) (|P#0@@0| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@0 (Lit DatatypeTypeType |s#0@@1|) (Lit HandleTypeType |P#0@@0|) (LitInt |n#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@0))) ($Is HandleTypeType |P#0@@0| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@0 TBool))) (<= (LitInt 0) |n#0@@1|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@0 TBool $Heap@@0 (Lit HandleTypeType |P#0@@0|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) (LitInt |n#0@@1|))))))))))) (and (and (forall ((|i#3| Int) ) (!  (=> (<= (LitInt 0) |i#3|) (=> (< |i#3| |n#0@@1|) (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@0 (Lit DatatypeTypeType |s#0@@1|) |i#3|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) |i#3|)))))
 :qid |Filterdfy.106:13|
 :skolemid |870|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) |s#0@@1| |i#3|))
)) (=> (not (forall ((|i#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| |n#0@@1|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@0 TBool $Heap@@0 (Lit HandleTypeType |P#0@@0|) (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) |i#3@@0|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |871|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) |s#0@@1| |i#3@@0|))
))) (and (|$let#3$canCall| _module._default.NextMinimizer$_T0@@0 $Heap@@0 (LitInt |n#0@@1|) (Lit HandleTypeType |P#0@@0|) (Lit DatatypeTypeType |s#0@@1|)) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@0 (Lit DatatypeTypeType |s#0@@1|) (Lit HandleTypeType |P#0@@0|) (|$let#3_k| _module._default.NextMinimizer$_T0@@0 $Heap@@0 (LitInt |n#0@@1|) (Lit HandleTypeType |P#0@@0|) (Lit DatatypeTypeType |s#0@@1|)))))) (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@0 ($LS $ly@@1) (Lit DatatypeTypeType |s#0@@1|) (Lit HandleTypeType |P#0@@0|) (LitInt |n#0@@1|)) (ite (forall ((|i#3@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#3@@1|) (< |i#3@@1| |n#0@@1|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@0 TBool $Heap@@0 (Lit HandleTypeType |P#0@@0|) (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) |i#3@@1|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |869|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@0 ($LS $LZ) |s#0@@1| |i#3@@1|))
)) |n#0@@1| (let ((|k#2| (|$let#3_k| _module._default.NextMinimizer$_T0@@0 $Heap@@0 (LitInt |n#0@@1|) (Lit HandleTypeType |P#0@@0|) (Lit DatatypeTypeType |s#0@@1|))))
(_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@0 ($LS $ly@@1) (Lit DatatypeTypeType |s#0@@1|) (Lit HandleTypeType |P#0@@0|) |k#2|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |872|
 :pattern ( (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@0 ($LS $ly@@1) (Lit DatatypeTypeType |s#0@@1|) (Lit HandleTypeType |P#0@@0|) (LitInt |n#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@1))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@1))
)))
(assert (forall ((_module.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |1211|
 :pattern ( (_module.Stream.Cons_q d) ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@0 T@U) ($ly@@2 T@U) (|s#0@@2| T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@2| |n#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.Tail$_T0@@0)) (<= (LitInt 0) |n#0@@2|)))) (and (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 (_module.Stream.tail |s#0@@2|) (- |n#0@@2| 1)))) (= (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@2) |s#0@@2| |n#0@@2|) (ite (= |n#0@@2| (LitInt 0)) |s#0@@2| (_module.__default.Tail _module._default.Tail$_T0@@0 $ly@@2 (_module.Stream.tail |s#0@@2|) (- |n#0@@2| 1))))))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@2) |s#0@@2| |n#0@@2|))
))))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
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
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@1 T@U) ($ly@@3 T@U) (|s#0@@3| T@U) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 |s#0@@3| |n#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.Tail$_T0@@1)) (<= (LitInt 0) |n#0@@3|)))) ($Is DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 $ly@@3 |s#0@@3| |n#0@@3|) (Tclass._module.Stream _module._default.Tail$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@1 $ly@@3 |s#0@@3| |n#0@@3|))
))))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@2 T@U) ($ly@@4 T@U) (|s#0@@4| T@U) (|n#0@@4| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 |s#0@@4| (LitInt |n#0@@4|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream _module._default.Tail$_T0@@2)) (<= (LitInt 0) |n#0@@4|)))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@4|) (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 (_module.Stream.tail |s#0@@4|) (LitInt (- |n#0@@4| 1))))) (= (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@4) |s#0@@4| (LitInt |n#0@@4|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) |s#0@@4| (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@4) (_module.Stream.tail |s#0@@4|) (LitInt (- |n#0@@4| 1)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |647|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@4) |s#0@@4| (LitInt |n#0@@4|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NextMinimizer$_T0@@1 T@U) ($ly@@5 T@U) ($Heap@@1 T@U) (|s#0@@5| T@U) (|P#0@@1| T@U) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@1 |s#0@@5| |P#0@@1| (LitInt |n#0@@5|)) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@1))) ($Is HandleTypeType |P#0@@1| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@1 TBool))) (<= (LitInt 0) |n#0@@5|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@1 TBool $Heap@@1 |P#0@@1| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| (LitInt |n#0@@5|))))))))) (and (and (forall ((|i#2| Int) ) (!  (=> (<= (LitInt 0) |i#2|) (=> (< |i#2| |n#0@@5|) (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@1 |s#0@@5| |i#2|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2|)))))
 :qid |Filterdfy.106:13|
 :skolemid |866|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2|))
)) (=> (not (forall ((|i#2@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#2@@0|) (< |i#2@@0| |n#0@@5|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@1 TBool $Heap@@1 |P#0@@1| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2@@0|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |867|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2@@0|))
))) (and (|$let#3$canCall| _module._default.NextMinimizer$_T0@@1 $Heap@@1 (LitInt |n#0@@5|) |P#0@@1| |s#0@@5|) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@1 |s#0@@5| |P#0@@1| (|$let#3_k| _module._default.NextMinimizer$_T0@@1 $Heap@@1 (LitInt |n#0@@5|) |P#0@@1| |s#0@@5|))))) (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@1 ($LS $ly@@5) |s#0@@5| |P#0@@1| (LitInt |n#0@@5|)) (ite (forall ((|i#2@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#2@@1|) (< |i#2@@1| |n#0@@5|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@1 TBool $Heap@@1 |P#0@@1| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2@@1|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |865|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@1 ($LS $LZ) |s#0@@5| |i#2@@1|))
)) |n#0@@5| (let ((|k#1| (|$let#3_k| _module._default.NextMinimizer$_T0@@1 $Heap@@1 (LitInt |n#0@@5|) |P#0@@1| |s#0@@5|)))
(_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@1 ($LS $ly@@5) |s#0@@5| |P#0@@1| |k#1|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |868|
 :pattern ( (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@1 ($LS $ly@@5) |s#0@@5| |P#0@@1| (LitInt |n#0@@5|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Filterdfy.4:29|
 :skolemid |1202|
)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@2))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@2 p@@0)) (|ORD#IsNat| o@@2)) (= (|ORD#Offset| (|ORD#Minus| o@@2 p@@0)) (- (|ORD#Offset| o@@2) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@2 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.Tail$_T0@@3 T@U) ($ly@@6 T@U) (|s#0@@6| T@U) (|n#0@@6| Int) ) (!  (=> (and (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@6| |n#0@@6|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.Tail$_T0@@3)) ($IsAlloc DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@2)) (<= (LitInt 0) |n#0@@6|)))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@6 |s#0@@6| |n#0@@6|) (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@2))
 :qid |Filterdfy.6:16|
 :skolemid |644|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@6 |s#0@@6| |n#0@@6|) (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@2))
))))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
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
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((_module._default.NextMinimizer$_T0@@2 T@U) ($heap T@U) (n@@1 Int) (P T@U) (s T@U) ) (!  (=> (|$let#3$canCall| _module._default.NextMinimizer$_T0@@2 $heap n@@1 P s) (and (and (<= (LitInt 0) (|$let#3_k| _module._default.NextMinimizer$_T0@@2 $heap n@@1 P s)) (< (|$let#3_k| _module._default.NextMinimizer$_T0@@2 $heap n@@1 P s) n@@1)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@2 TBool $heap P (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@2 ($LS $LZ) s (|$let#3_k| _module._default.NextMinimizer$_T0@@2 $heap n@@1 P s))))))))
 :qid |Filterdfy.109:5|
 :skolemid |861|
 :pattern ( (|$let#3_k| _module._default.NextMinimizer$_T0@@2 $heap n@@1 P s))
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
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.Cons|)
 :qid |Filterdfy.4:29|
 :skolemid |1200|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Filterdfy.4:29|
 :skolemid |1208|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Filterdfy.4:29|
 :skolemid |1209|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@2) (or (not (= o@@5 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@5 p@@2))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@5 p@@2) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@5 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@2))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (and (and (and (and (and (and (= (Ctor refType) 6) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@1 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r@@0)))
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
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |1218|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@2 T@U) (_module.Stream$T@@3 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Stream.Cons_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Stream _module.Stream$T@@3) $h@@2))) ($IsAllocBox (_module.Stream.head d@@2) _module.Stream$T@@3 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1206|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@2) _module.Stream$T@@3 $h@@2))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1223|
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
(assert (forall ((_module._default.Tail$_T0@@4 T@U) ($ly@@7 T@U) (|s#0@@7| T@U) (|n#0@@7| Int) ) (! (= (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@7) |s#0@@7| |n#0@@7|) (_module.__default.Tail _module._default.Tail$_T0@@4 $ly@@7 |s#0@@7| |n#0@@7|))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@7) |s#0@@7| |n#0@@7|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@5) $h@@3))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@3) (Tclass._module.Stream _module.Stream$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1207|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@3) (Tclass._module.Stream _module.Stream$T@@5) $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((o@@7 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@7))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@3) o@@7)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@3) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@3))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |1221|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@0 o@@8) (|Set#IsMember| b@@0 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@8))
 :pattern ( (|Set#IsMember| b@@0 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((_module._default.NextMinimizer$_T0@@3 T@U) ($ly@@8 T@U) (|s#0@@8| T@U) (|P#0@@2| T@U) (|n#0@@8| Int) ) (! (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@3 ($LS $ly@@8) |s#0@@8| |P#0@@2| |n#0@@8|) (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@3 $ly@@8 |s#0@@8| |P#0@@2| |n#0@@8|))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@3 ($LS $ly@@8) |s#0@@8| |P#0@@2| |n#0@@8|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NextMinimizer$_T0@@4 T@U) ($ly@@9 T@U) ($Heap@@3 T@U) (|s#0@@9| T@U) (|P#0@@3| T@U) (|n#0@@9| Int) ) (!  (=> (or (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@4 |s#0@@9| |P#0@@3| |n#0@@9|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@4))) ($Is HandleTypeType |P#0@@3| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@4 TBool))) (<= (LitInt 0) |n#0@@9|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@4 TBool $Heap@@3 |P#0@@3| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |n#0@@9|)))))))) (and (and (forall ((|i#1| Int) ) (!  (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| |n#0@@9|) (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@4 |s#0@@9| |i#1|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1|)))))
 :qid |Filterdfy.106:13|
 :skolemid |862|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1|))
)) (=> (not (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |n#0@@9|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@4 TBool $Heap@@3 |P#0@@3| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1@@0|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |863|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1@@0|))
))) (and (|$let#3$canCall| _module._default.NextMinimizer$_T0@@4 $Heap@@3 |n#0@@9| |P#0@@3| |s#0@@9|) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@4 |s#0@@9| |P#0@@3| (|$let#3_k| _module._default.NextMinimizer$_T0@@4 $Heap@@3 |n#0@@9| |P#0@@3| |s#0@@9|))))) (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@4 ($LS $ly@@9) |s#0@@9| |P#0@@3| |n#0@@9|) (ite (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| |n#0@@9|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@4 TBool $Heap@@3 |P#0@@3| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1@@1|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |860|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@4 ($LS $LZ) |s#0@@9| |i#1@@1|))
)) |n#0@@9| (let ((|k#0| (|$let#3_k| _module._default.NextMinimizer$_T0@@4 $Heap@@3 |n#0@@9| |P#0@@3| |s#0@@9|)))
(_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@4 $ly@@9 |s#0@@9| |P#0@@3| |k#0|))))))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@4 ($LS $ly@@9) |s#0@@9| |P#0@@3| |n#0@@9|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1219|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1220|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@4) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#5@0| () Int)
(declare-fun _module._default.NextMinimizer$_T0@@5 () T@U)
(declare-fun |s#0@@10| () T@U)
(declare-fun |P#0@@4| () T@U)
(declare-fun |n#0@@10| () Int)
(declare-fun $Heap@@4 () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |k#3@0| () Int)
(declare-fun |i#6@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.NextMinimizer)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon7_correct true))
(let ((anon5_correct  (=> (and (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|))) ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4)) (and (=> (= (ControlFlow 0 28) (- 0 29)) ($Is intType (int_2_U |i#5@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |i#5@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |i#5@0|) Tclass._System.nat $Heap@@4) (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |i#5@0|)) (=> (and (and (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#5@0|)) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#5@0|))) (and (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#5@0|)))))) (= (ControlFlow 0 28) 26))) anon7_correct)))))))
(let ((anon24_Else_correct  (=> (and (< |i#5@0| (LitInt 0)) (= (ControlFlow 0 34) 28)) anon5_correct)))
(let ((anon24_Then_correct  (=> (and (and (<= (LitInt 0) |i#5@0|) ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4)) (and ($IsAlloc HandleTypeType |P#0@@4| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@5 TBool) $Heap@@4) ($IsAlloc intType (int_2_U |n#0@@10|) Tclass._System.nat $Heap@@4))) (and (=> (= (ControlFlow 0 30) (- 0 33)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |n#0@@10|)))))) (=> (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |n#0@@10|))))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (or (<= 0 |n#0@@10|) (= |n#0@@10| |n#0@@10|))) (=> (or (<= 0 |n#0@@10|) (= |n#0@@10| |n#0@@10|)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (< |n#0@@10| |n#0@@10|))) (=> (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (< |n#0@@10| |n#0@@10|)) (=> (and (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |P#0@@4| |n#0@@10|)) (= (ControlFlow 0 30) 28)) anon5_correct))))))))))
(let ((anon23_Else_correct  (=> (and (=> (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|))) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#5@0|))))))) (= (ControlFlow 0 27) 26)) anon7_correct)))
(let ((anon22_Then_correct  (=> (<= (LitInt 0) (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)) (=> (and (and ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4) ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4)) (and ($IsAlloc HandleTypeType |P#0@@4| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@5 TBool) $Heap@@4) ($IsAlloc intType (int_2_U |n#0@@10|) Tclass._System.nat $Heap@@4))) (and (=> (= (ControlFlow 0 35) (- 0 38)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |n#0@@10|)))))) (=> (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |n#0@@10|))))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (or (<= 0 |n#0@@10|) (= |n#0@@10| |n#0@@10|))) (=> (or (<= 0 |n#0@@10|) (= |n#0@@10| |n#0@@10|)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (< |n#0@@10| |n#0@@10|))) (=> (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (< |n#0@@10| |n#0@@10|)) (=> (or (and (and (|$Eq#_module.Stream| _module._default.NextMinimizer$_T0@@5 _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |s#0@@10|) (= |P#0@@4| |P#0@@4|)) (= |n#0@@10| |n#0@@10|)) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |P#0@@4| |n#0@@10|)) (=> (and (= |##n#1@0| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)) ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@@4)) (=> (and (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)))) (and (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|))) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)))))))) (and (and (=> (= (ControlFlow 0 35) 27) anon23_Else_correct) (=> (= (ControlFlow 0 35) 30) anon24_Then_correct)) (=> (= (ControlFlow 0 35) 34) anon24_Else_correct)))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |P#0@@4| |n#0@@10|))))))) (=> (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |P#0@@4| |n#0@@10|)))))) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((|i#4| Int) ) (!  (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |P#0@@4| |n#0@@10|))) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |i#4|)))))))
 :qid |Filterdfy.104:18|
 :skolemid |873|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |i#4|))
)))))))
(let ((anon20_correct  (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (and ($Is intType (int_2_U (- |n#0@@10| 1)) TInt) (and (and (<= (LitInt 0) (- |n#0@@10| 1)) (< (- |n#0@@10| 1) |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (- |n#0@@10| 1)))))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 0) (LitInt 0)) (< 0 |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (LitInt 0)))))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 0) (LitInt 0)) (< 0 |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (LitInt 0)))))))) (exists ((|k#4| Int) ) (!  (and (and (<= (LitInt 0) |k#4|) (< |k#4| |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#4|))))))
 :qid |Filterdfy.109:9|
 :skolemid |879|
)))))) (=> (or (and ($Is intType (int_2_U (- |n#0@@10| 1)) TInt) (and (and (<= (LitInt 0) (- |n#0@@10| 1)) (< (- |n#0@@10| 1) |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (- |n#0@@10| 1)))))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 0) (LitInt 0)) (< 0 |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (LitInt 0)))))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 0) (LitInt 0)) (< 0 |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| (LitInt 0)))))))) (exists ((|k#4@@0| Int) ) (!  (and (and (<= (LitInt 0) |k#4@@0|) (< |k#4@@0| |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#4@@0|))))))
 :qid |Filterdfy.109:9|
 :skolemid |879|
))))) (=> (and (and (and (<= (LitInt 0) |k#3@0|) (< |k#3@0| |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#3@0|)))))) (and ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4) ($IsAlloc HandleTypeType |P#0@@4| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@5 TBool) $Heap@@4))) (and (=> (= (ControlFlow 0 7) (- 0 11)) ($Is intType (int_2_U |k#3@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |k#3@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |k#3@0|) Tclass._System.nat $Heap@@4) (and (=> (= (ControlFlow 0 7) (- 0 10)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS ($LS $LZ)) |s#0@@10| |k#3@0|)))))) (=> (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#3@0|))))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (<= 0 |n#0@@10|) (= |k#3@0| |n#0@@10|))) (=> (or (<= 0 |n#0@@10|) (= |k#3@0| |n#0@@10|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< |k#3@0| |n#0@@10|)) (=> (< |k#3@0| |n#0@@10|) (=> (and (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |P#0@@4| |k#3@0|) (|$let#3$canCall| _module._default.NextMinimizer$_T0@@5 $Heap@@4 |n#0@@10| |P#0@@4| |s#0@@10|)) (=> (and (and (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|) (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |k#3@0|)) (|_module.__default.NextMinimizer#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |P#0@@4| |k#3@0|)) (and ($Is intType (int_2_U (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)) Tclass._System.nat) (= (ControlFlow 0 7) 4))) GeneratedUnifiedExit_correct))))))))))))))))
(let ((anon31_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#3@0|) (< |k#3@0| |n#0@@10|))) (= (ControlFlow 0 15) 7)) anon20_correct)))
(let ((anon31_Then_correct  (=> (and (and (<= (LitInt 0) |k#3@0|) (< |k#3@0| |n#0@@10|)) ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4)) (and (=> (= (ControlFlow 0 13) (- 0 14)) ($Is intType (int_2_U |k#3@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |k#3@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |k#3@0|) Tclass._System.nat $Heap@@4) (=> (and (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |k#3@0|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#3@0|))) (and (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |k#3@0|)) (= (ControlFlow 0 13) 7))) anon20_correct)))))))
(let ((anon30_Else_correct  (=> (< |k#3@0| (LitInt 0)) (and (=> (= (ControlFlow 0 17) 13) anon31_Then_correct) (=> (= (ControlFlow 0 17) 15) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (<= (LitInt 0) |k#3@0|) (and (=> (= (ControlFlow 0 16) 13) anon31_Then_correct) (=> (= (ControlFlow 0 16) 15) anon31_Else_correct)))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 18) 16) anon30_Then_correct) (=> (= (ControlFlow 0 18) 17) anon30_Else_correct))))
(let ((anon28_Then_correct  (=> (and (and (forall ((|i#7| Int) ) (!  (=> (and (<= (LitInt 0) |i#7|) (< |i#7| |n#0@@10|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#7|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |881|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#7|))
)) (= (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|) |n#0@@10|)) (and ($Is intType (int_2_U (_module.__default.NextMinimizer _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |P#0@@4| |n#0@@10|)) Tclass._System.nat) (= (ControlFlow 0 6) 4))) GeneratedUnifiedExit_correct)))
(let ((anon29_Else_correct true))
(let ((anon28_Else_correct  (=> (not (forall ((|i#7@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#7@@0|) (< |i#7@@0| |n#0@@10|)) (not (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#7@@0|)))))))
 :qid |Filterdfy.106:13|
 :skolemid |881|
 :pattern ( (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#7@@0|))
))) (and (=> (= (ControlFlow 0 19) 18) anon29_Then_correct) (=> (= (ControlFlow 0 19) 2) anon29_Else_correct)))))
(let ((anon27_Else_correct  (=> (not (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@@10|))) (and (=> (= (ControlFlow 0 22) 6) anon28_Then_correct) (=> (= (ControlFlow 0 22) 19) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (and (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@@10|)) ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4)) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($Is intType (int_2_U |i#6@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |i#6@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |i#6@0|) Tclass._System.nat $Heap@@4) (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |i#6@0|)) (and (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#6@0|)) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |i#6@0|)))) (and (=> (= (ControlFlow 0 20) 6) anon28_Then_correct) (=> (= (ControlFlow 0 20) 19) anon28_Else_correct))))))))
(let ((anon26_Else_correct  (=> (< |i#6@0| (LitInt 0)) (and (=> (= (ControlFlow 0 24) 20) anon27_Then_correct) (=> (= (ControlFlow 0 24) 22) anon27_Else_correct)))))
(let ((anon26_Then_correct  (=> (<= (LitInt 0) |i#6@0|) (and (=> (= (ControlFlow 0 23) 20) anon27_Then_correct) (=> (= (ControlFlow 0 23) 22) anon27_Else_correct)))))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 25) 23) anon26_Then_correct) (=> (= (ControlFlow 0 25) 24) anon26_Else_correct))))
(let ((anon25_Else_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (=> (and ($IsAlloc DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5) $Heap@@4) ($IsAlloc intType (int_2_U |n#0@@10|) Tclass._System.nat $Heap@@4)) (=> (and (and (|_module.__default.Tail#canCall| _module._default.NextMinimizer$_T0@@5 |s#0@@10| |n#0@@10|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |n#0@@10|))) (and (_module.Stream.Cons_q (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |n#0@@10|)) (U_2_bool ($Unbox boolType (Apply1 _module._default.NextMinimizer$_T0@@5 TBool $Heap@@4 |P#0@@4| (_module.Stream.head (_module.__default.Tail _module._default.NextMinimizer$_T0@@5 ($LS $LZ) |s#0@@10| |n#0@@10|))))))) (and (and (=> (= (ControlFlow 0 39) 35) anon22_Then_correct) (=> (= (ControlFlow 0 39) 25) anon25_Then_correct)) (=> (= (ControlFlow 0 39) 1) anon25_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) ($Is DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.NextMinimizer$_T0@@5))) (and (and ($Is HandleTypeType |P#0@@4| (Tclass._System.___hTotalFunc1 _module._default.NextMinimizer$_T0@@5 TBool)) (<= (LitInt 0) |n#0@@10|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 40) 39)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
