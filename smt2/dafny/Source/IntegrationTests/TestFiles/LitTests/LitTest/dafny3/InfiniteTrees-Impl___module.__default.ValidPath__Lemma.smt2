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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$Tree () T@U)
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
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ValidPath (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.__default.ValidPath_h (T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.ValidPath_h#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.Tail#canCall| (T@U T@U Int) Bool)
(declare-fun _module.Tree.children (T@U) T@U)
(declare-fun _module.__default.Tail (T@U T@U T@U Int) T@U)
(declare-fun $LZ () T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |_module.Tree#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Tree.Node| (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun |_module.__default.ValidPath#canCall| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.Stream Tagclass._module.Tree |##_module.Stream.Nil| |##_module.Stream.Cons| |##_module.Tree.Node| tytagFamily$nat tytagFamily$Stream tytagFamily$Tree)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Tree| d) (_module.Tree.Node_q d))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (|$IsA#_module.Tree| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) (|p#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0| Tclass._module.Tree) ($Is DatatypeTypeType |p#0| (Tclass._module.Stream TInt))) (_module.__default.ValidPath ($LS $ly) |t#0| |p#0|)) (forall ((|_k#0| T@U) ) (! (_module.__default.ValidPath_h ($LS $ly) |_k#0| |t#0| |p#0|)
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |783|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly) |_k#0| |t#0| |p#0|))
)))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |784|
 :pattern ( (_module.__default.ValidPath ($LS $ly) |t#0| |p#0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|t#0@@0| T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| (Lit BoxType |_k#0@@0|) |t#0@@0| |p#0@@0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@0| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (=> (_module.Stream.Nil_q |p#0@@0|) (|$IsA#_module.Tree| |t#0@@0|)) (=> (not (_module.Stream.Nil_q |p#0@@0|)) (let ((|tail#6| (_module.Stream.tail |p#0@@0|)))
(let ((|index#6| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (=> (<= (LitInt 0) |index#6|) (and (and (_module.Tree.Node_q |t#0@@0|) (|_module.__default.Tail#canCall| Tclass._module.Tree (_module.Tree.children |t#0@@0|) |index#6|)) (let ((|ch#7| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@0|) |index#6|)))
 (=> (_module.Stream.Cons_q |ch#7|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#7|)) |tail#6|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |p#0@@0|) (|_module.Tree#Equal| |t#0@@0| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#7| (_module.Stream.tail |p#0@@0|)))
(let ((|index#7| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (and (<= (LitInt 0) |index#7|) (let ((|ch#8| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@0|) |index#7|)))
 (and (_module.Stream.Cons_q |ch#8|) (_module.__default.ValidPath_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#8|)) |tail#7|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|_module.__default.ValidPath_h#canCall| |_k'#1| |t#0@@0| |p#0@@0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |797|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@0) |_k'#1| |t#0@@0| |p#0@@0|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |t#0@@0| |p#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |p#0@@0|) (|_module.Tree#Equal| |t#0@@0| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#5| (_module.Stream.tail |p#0@@0|)))
(let ((|index#5| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (and (<= (LitInt 0) |index#5|) (let ((|ch#6| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@0|) |index#5|)))
 (and (_module.Stream.Cons_q |ch#6|) (_module.__default.ValidPath_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#6|)) |tail#5|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (_module.__default.ValidPath_h ($LS $ly@@0) |_k'#1@@0| |t#0@@0| |p#0@@0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |796|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@0) |_k'#1@@0| |t#0@@0| |p#0@@0|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :weight 3
 :skolemid |798|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |t#0@@0| |p#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|t#0@@1| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|_module.__default.ValidPath#canCall| |t#0@@1| |p#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@1| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@1| (Tclass._module.Stream TInt))))) (and (and (=> (_module.Stream.Nil_q |p#0@@1|) (|$IsA#_module.Tree| |t#0@@1|)) (=> (not (_module.Stream.Nil_q |p#0@@1|)) (let ((|tail#1| (_module.Stream.tail |p#0@@1|)))
(let ((|index#1| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@1|)))))
 (=> (<= (LitInt 0) |index#1|) (and (and (_module.Tree.Node_q |t#0@@1|) (|_module.__default.Tail#canCall| Tclass._module.Tree (_module.Tree.children |t#0@@1|) |index#1|)) (let ((|ch#1| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@1|) |index#1|)))
 (=> (_module.Stream.Cons_q |ch#1|) (|_module.__default.ValidPath#canCall| ($Unbox DatatypeTypeType (_module.Stream.head |ch#1|)) |tail#1|))))))))) (= (_module.__default.ValidPath ($LS $ly@@1) |t#0@@1| |p#0@@1|) (ite (_module.Stream.Nil_q |p#0@@1|) (|_module.Tree#Equal| |t#0@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#0| (_module.Stream.tail |p#0@@1|)))
(let ((|index#0| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@1|)))))
 (and (<= (LitInt 0) |index#0|) (let ((|ch#0| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@1|) |index#0|)))
 (and (_module.Stream.Cons_q |ch#0|) (_module.__default.ValidPath $ly@@1 ($Unbox DatatypeTypeType (_module.Stream.head |ch#0|)) |tail#0|))))))))))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |782|
 :pattern ( (_module.__default.ValidPath ($LS $ly@@1) |t#0@@1| |p#0@@1|))
))))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |1172|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Tree) (_module.Tree.Node_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( (_module.Tree.Node_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Tree))
)))
(assert (forall ((_module.Stream$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
)))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |1164|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((_module.Stream$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Tree#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1186|
 :pattern ( (|_module.Tree#Equal| a b))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0 T@U) ($ly@@2 T@U) (|s#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0 |s#0| |n#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.Tail$_T0)) (<= (LitInt 0) |n#0|)))) ($Is DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0 $ly@@2 |s#0| |n#0|) (Tclass._module.Stream _module._default.Tail$_T0)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0 $ly@@2 |s#0| |n#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@0 T@U) ($ly@@3 T@U) (|s#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@0| (LitInt |n#0@@0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.Tail$_T0@@0)) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@0| (LitInt (- |n#0@@0| 1))) (let ((|t#1| (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@3) |s#0@@0| (LitInt (- |n#0@@0| 1)))))
(|$IsA#_module.Stream| |t#1|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@3) |s#0@@0| (LitInt |n#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |s#0@@0| (let ((|t#1@@0| (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@3) |s#0@@0| (LitInt (- |n#0@@0| 1)))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@0 _module._default.Tail$_T0@@0 ($LS ($LS $LZ)) |t#1@@0| |#_module.Stream.Nil|) |t#1@@0| (_module.Stream.tail |t#1@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |590|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@3) |s#0@@0| (LitInt |n#0@@0|)))
))))
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.Stream.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Stream.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Tree.Node_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (_module.Tree.Node_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|t#0@@2| T@U) (|p#0@@2| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@2| (Tclass._module.Stream TInt))) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.ValidPath_h ($LS $ly@@4) |_k#0@@1| |t#0@@2| |p#0@@2|)
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |783|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@4) |_k#0@@1| |t#0@@2| |p#0@@2|))
))) (_module.__default.ValidPath ($LS $ly@@4) |t#0@@2| |p#0@@2|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |785|
 :pattern ( (_module.__default.ValidPath ($LS $ly@@4) |t#0@@2| |p#0@@2|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Stream.Cons_q d@@4) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@4 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1152|
)))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (_module.Stream.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Stream.Nil_q d@@5) (= d@@5 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (_module.Stream.Nil_q d@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@2| T@U) (|t#0@@3| T@U) (|p#0@@3| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| |_k#0@@2| |t#0@@3| |p#0@@3|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@3| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@3| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (and (=> (_module.Stream.Nil_q |p#0@@3|) (|$IsA#_module.Tree| |t#0@@3|)) (=> (not (_module.Stream.Nil_q |p#0@@3|)) (let ((|tail#3| (_module.Stream.tail |p#0@@3|)))
(let ((|index#3| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@3|)))))
 (=> (<= (LitInt 0) |index#3|) (and (and (_module.Tree.Node_q |t#0@@3|) (|_module.__default.Tail#canCall| Tclass._module.Tree (_module.Tree.children |t#0@@3|) |index#3|)) (let ((|ch#4| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@3|) |index#3|)))
 (=> (_module.Stream.Cons_q |ch#4|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#4|)) |tail#3|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |p#0@@3|) (|_module.Tree#Equal| |t#0@@3| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#4| (_module.Stream.tail |p#0@@3|)))
(let ((|index#4| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@3|)))))
 (and (<= (LitInt 0) |index#4|) (let ((|ch#5| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@3|) |index#4|)))
 (and (_module.Stream.Cons_q |ch#5|) (_module.__default.ValidPath_h $ly@@5 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#5|)) |tail#4|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|_module.__default.ValidPath_h#canCall| |_k'#0| |t#0@@3| |p#0@@3|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |794|
 :pattern ( (_module.__default.ValidPath_h $ly@@5 |_k'#0| |t#0@@3| |p#0@@3|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@5) |_k#0@@2| |t#0@@3| |p#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |p#0@@3|) (|_module.Tree#Equal| |t#0@@3| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#2| (_module.Stream.tail |p#0@@3|)))
(let ((|index#2| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@3|)))))
 (and (<= (LitInt 0) |index#2|) (let ((|ch#3| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@3|) |index#2|)))
 (and (_module.Stream.Cons_q |ch#3|) (_module.__default.ValidPath_h $ly@@5 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#3|)) |tail#2|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (_module.__default.ValidPath_h $ly@@5 |_k'#0@@0| |t#0@@3| |p#0@@3|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |793|
 :pattern ( (_module.__default.ValidPath_h $ly@@5 |_k'#0@@0| |t#0@@3| |p#0@@3|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |795|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@5) |_k#0@@2| |t#0@@3| |p#0@@3|))
))))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Stream |_module.Stream$T#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Stream |_module.Stream$T#r@@2|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Stream.Nil_q d0@@2) (_module.Stream.Nil_q d1@@2)) (and (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (=> (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (and (= (_module.Stream.head d0@@2) (_module.Stream.head d1@@2)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Stream.tail d0@@2) (_module.Stream.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Tree.Node_q d@@6) (exists ((|a#9#0#0| T@U) ) (! (= d@@6 (|#_module.Tree.Node| |a#9#0#0|))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (_module.Tree.Node_q d@@6))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Tree#Equal| a@@0 b@@0) (= (_module.Tree.children a@@0) (_module.Tree.children b@@0)))
 :qid |unknown.0:0|
 :skolemid |1185|
 :pattern ( (|_module.Tree#Equal| a@@0 b@@0))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@6 T@U) (|t#0@@4| T@U) (|p#0@@4| T@U) ) (! (= (_module.__default.ValidPath ($LS $ly@@6) |t#0@@4| |p#0@@4|) (_module.__default.ValidPath $ly@@6 |t#0@@4| |p#0@@4|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |778|
 :pattern ( (_module.__default.ValidPath ($LS $ly@@6) |t#0@@4| |p#0@@4|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@2)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@2)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@1 T@U) ($ly@@7 T@U) (|s#0@@1| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 (Lit DatatypeTypeType |s#0@@1|) (LitInt |n#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.Tail$_T0@@1)) (<= (LitInt 0) |n#0@@1|)))) (and (=> (or (not (= (LitInt |n#0@@1|) (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 (Lit DatatypeTypeType |s#0@@1|) (LitInt (- |n#0@@1| 1))) (let ((|t#2| (Lit DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@7) (Lit DatatypeTypeType |s#0@@1|) (LitInt (- |n#0@@1| 1))))))
(|$IsA#_module.Stream| |t#2|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@7) (Lit DatatypeTypeType |s#0@@1|) (LitInt |n#0@@1|)) (ite (= (LitInt |n#0@@1|) (LitInt 0)) |s#0@@1| (let ((|t#2@@0| (Lit DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@7) (Lit DatatypeTypeType |s#0@@1|) (LitInt (- |n#0@@1| 1))))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@1 _module._default.Tail$_T0@@1 ($LS ($LS $LZ)) |t#2@@0| |#_module.Stream.Nil|) |t#2@@0| (_module.Stream.tail |t#2@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@7) (Lit DatatypeTypeType |s#0@@1|) (LitInt |n#0@@1|)))
))))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( ($IsBox bx@@0 Tclass._module.Tree))
)))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.Stream.Nil_q d0@@3) (_module.Stream.Nil_q d1@@3)) (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3))))))))
 :qid |unknown.0:0|
 :skolemid |1162|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Tail$_T0@@2 T@U) ($ly@@8 T@U) (|s#0@@2| T@U) (|n#0@@2| Int) ) (!  (=> (and (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 |s#0@@2| |n#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.Tail$_T0@@2)) ($IsAlloc DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap)) (<= (LitInt 0) |n#0@@2|)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@2 $ly@@8 |s#0@@2| |n#0@@2|) (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap))
 :qid |InfiniteTreesdfy.9:16|
 :skolemid |587|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@2 $ly@@8 |s#0@@2| |n#0@@2|) (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Stream| d@@7) (or (_module.Stream.Nil_q d@@7) (_module.Stream.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1160|
 :pattern ( (|$IsA#_module.Stream| d@@7))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#10#0#0|) Tclass._module.Tree) ($Is DatatypeTypeType |a#10#0#0| (Tclass._module.Stream Tclass._module.Tree)))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1177|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#10#0#0|) Tclass._module.Tree))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@3 T@U) ($ly@@9 T@U) (|s#0@@3| T@U) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@3| |n#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.Tail$_T0@@3)) (<= (LitInt 0) |n#0@@3|)))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@3| (- |n#0@@3| 1)) (let ((|t#0@@5| (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@9 |s#0@@3| (- |n#0@@3| 1))))
(|$IsA#_module.Stream| |t#0@@5|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@3 ($LS $ly@@9) |s#0@@3| |n#0@@3|) (ite (= |n#0@@3| (LitInt 0)) |s#0@@3| (let ((|t#0@@6| (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@9 |s#0@@3| (- |n#0@@3| 1))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@3 _module._default.Tail$_T0@@3 ($LS ($LS $LZ)) |t#0@@6| |#_module.Stream.Nil|) |t#0@@6| (_module.Stream.tail |t#0@@6|)))))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@3 ($LS $ly@@9) |s#0@@3| |n#0@@3|))
))))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@8) (_module.Stream.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (_module.Stream.Cons_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($ly@@10 T@U) (|_k#0@@3| T@U) (|t#0@@7| T@U) (|p#0@@5| T@U) ) (! (= (_module.__default.ValidPath_h ($LS $ly@@10) |_k#0@@3| |t#0@@7| |p#0@@5|) (_module.__default.ValidPath_h $ly@@10 |_k#0@@3| |t#0@@7| |p#0@@5|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |789|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@10) |_k#0@@3| |t#0@@7| |p#0@@5|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.Cons|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1150|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1158|
 :pattern ( (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1159|
 :pattern ( (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@4)) _module.Stream$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@4))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#8#0#0|)) |##_module.Tree.Node|)
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1173|
 :pattern ( (|#_module.Tree.Node| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (_module.Tree.children (|#_module.Tree.Node| |a#12#0#0|)) |a#12#0#0|)
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1180|
 :pattern ( (|#_module.Tree.Node| |a#12#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|_k#0@@4| T@U) (|t#0@@8| T@U) (|p#0@@6| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |t#0@@8|) (Lit DatatypeTypeType |p#0@@6|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@8| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@6| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@6|))))) (|$IsA#_module.Tree| (Lit DatatypeTypeType |t#0@@8|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@6|)))))) (let ((|tail#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@6|)))))
(let ((|index#9| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@6|)))))))
 (=> (<= (LitInt 0) |index#9|) (and (and (_module.Tree.Node_q (Lit DatatypeTypeType |t#0@@8|)) (|_module.__default.Tail#canCall| Tclass._module.Tree (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@8|))) |index#9|)) (let ((|ch#10| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@8|))) |index#9|)))
 (=> (_module.Stream.Cons_q |ch#10|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#10|)) |tail#9|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@6|)) (|_module.Tree#Equal| |t#0@@8| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@6|)))))
(let ((|index#10| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@6|)))))))
 (and (<= (LitInt 0) |index#10|) (let ((|ch#11| (Lit DatatypeTypeType (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@8|))) |index#10|))))
 (and (_module.Stream.Cons_q |ch#11|) (_module.__default.ValidPath_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head |ch#11|))) |tail#10|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@4|) (|_module.__default.ValidPath_h#canCall| |_k'#2| |t#0@@8| |p#0@@6|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |800|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@11) |_k'#2| |t#0@@8| |p#0@@6|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@11) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |t#0@@8|) (Lit DatatypeTypeType |p#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@6|)) (|_module.Tree#Equal| |t#0@@8| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@6|)))))
(let ((|index#8| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@6|)))))))
 (and (<= (LitInt 0) |index#8|) (let ((|ch#9| (Lit DatatypeTypeType (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@8|))) |index#8|))))
 (and (_module.Stream.Cons_q |ch#9|) (_module.__default.ValidPath_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head |ch#9|))) |tail#8|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@4|) (_module.__default.ValidPath_h ($LS $ly@@11) |_k'#2@@0| |t#0@@8| |p#0@@6|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |799|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@11) |_k'#2@@0| |t#0@@8| |p#0@@6|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :weight 3
 :skolemid |801|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@11) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |t#0@@8|) (Lit DatatypeTypeType |p#0@@6|)))
))))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |1167|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |1168|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (< (DtRank |a#13#0#0|) (DtRank (|#_module.Tree.Node| |a#13#0#0|)))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1181|
 :pattern ( (|#_module.Tree.Node| |a#13#0#0|))
)))
(assert (forall ((d@@9 T@U) (_module.Stream$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.Stream _module.Stream$T@@5) $h@@1))) ($IsAllocBox (_module.Stream.head d@@9) _module.Stream$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@9) _module.Stream$T@@5 $h@@1))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |1298|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module._default.Tail$_T0@@4 T@U) ($ly@@12 T@U) (|s#0@@4| T@U) (|n#0@@4| Int) ) (! (= (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@12) |s#0@@4| |n#0@@4|) (_module.__default.Tail _module._default.Tail$_T0@@4 $ly@@12 |s#0@@4| |n#0@@4|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@12) |s#0@@4| |n#0@@4|))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@13 T@U) (|t#0@@9| T@U) (|p#0@@7| T@U) (|_k#0@@5| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@9| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@7| (Tclass._module.Stream TInt))) (= |_k#0@@5| (|ORD#FromNat| 0))) (_module.__default.ValidPath_h $ly@@13 |_k#0@@5| |t#0@@9| |p#0@@7|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |786|
 :pattern ( (_module.__default.ValidPath_h $ly@@13 |_k#0@@5| |t#0@@9| |p#0@@7|))
))))
(assert (forall ((d@@10 T@U) (_module.Stream$T@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Stream.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.Stream _module.Stream$T@@7) $h@@2))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@10) (Tclass._module.Stream _module.Stream$T@@7) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@10) (Tclass._module.Stream _module.Stream$T@@7) $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@11 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Tree $h@@3))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Tree $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#11#0#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#11#0#0|)))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1179|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#11#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Tree.Node_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Tree $h@@4))) ($IsAlloc DatatypeTypeType (_module.Tree.children d@@12) (Tclass._module.Stream Tclass._module.Tree) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.children d@@12) (Tclass._module.Stream Tclass._module.Tree) $h@@4))
)))
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@5)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@5))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |p#0@@8| () T@U)
(declare-fun |_mcc#0#0_0_0@0| () Int)
(declare-fun |_mcc#1#0_0_0@0| () T@U)
(declare-fun |tail#0_0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |let#0_0_0#0#0| () T@U)
(declare-fun |let#0_0_1#0#0| () Int)
(declare-fun |index#0_0_0@0| () Int)
(declare-fun |nil#0_0_0@0| () T@U)
(declare-fun |k##0_0_0@0| () Int)
(declare-fun call0formal@_module._default.Tail_Lemma1$_T0@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##t#1@0| () T@U)
(declare-fun |nil#0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.ValidPath__Lemma)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon8_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (_module.__default.ValidPath ($LS $LZ) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |p#0@@8|) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) |p#0@@8| |#_module.Stream.Nil|)))))
(let ((anon8_Then_correct  (=> (and (= |p#0@@8| (|#_module.Stream.Cons| ($Box intType (int_2_U |_mcc#0#0_0_0@0|)) |_mcc#1#0_0_0@0|)) ($Is DatatypeTypeType |_mcc#1#0_0_0@0| (Tclass._module.Stream TInt))) (=> (and (and (and (and ($Is DatatypeTypeType |tail#0_0_0@0| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |tail#0_0_0@0| (Tclass._module.Stream TInt) $Heap@0)) (= |let#0_0_0#0#0| |_mcc#1#0_0_0@0|)) (and ($Is DatatypeTypeType |let#0_0_0#0#0| (Tclass._module.Stream TInt)) (= |tail#0_0_0@0| |let#0_0_0#0#0|))) (and (and (= |let#0_0_1#0#0| |_mcc#0#0_0_0@0|) ($Is intType (int_2_U |let#0_0_1#0#0|) TInt)) (and (= |index#0_0_0@0| |let#0_0_1#0#0|) (= |nil#0_0_0@0| (Lit DatatypeTypeType |#_module.Stream.Nil|))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |k##0_0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 5) (- 0 7)) ($Is intType (int_2_U |index#0_0_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |index#0_0_0@0|) Tclass._System.nat) (=> (= call0formal@_module._default.Tail_Lemma1$_T0@0 Tclass._module.Tree) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= |k##0_0_0@0| |index#0_0_0@0|)) (=> (<= |k##0_0_0@0| |index#0_0_0@0|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.Tail#canCall| call0formal@_module._default.Tail_Lemma1$_T0@0 |nil#0_0_0@0| |index#0_0_0@0|) (=> (_module.Stream.Cons_q (_module.__default.Tail call0formal@_module._default.Tail_Lemma1$_T0@0 ($LS $LZ) |nil#0_0_0@0| |index#0_0_0@0|)) (|_module.__default.Tail#canCall| call0formal@_module._default.Tail_Lemma1$_T0@0 |nil#0_0_0@0| |k##0_0_0@0|))) (=> (_module.Stream.Cons_q (_module.__default.Tail call0formal@_module._default.Tail_Lemma1$_T0@0 ($LS $LZ) |nil#0_0_0@0| |index#0_0_0@0|)) (_module.Stream.Cons_q (_module.__default.Tail call0formal@_module._default.Tail_Lemma1$_T0@0 ($LS ($LS $LZ)) |nil#0_0_0@0| |k##0_0_0@0|)))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))))))))))))
(let ((anon7_Else_correct  (=> (or (not (= |p#0@@8| |#_module.Stream.Nil|)) (not true)) (and (=> (= (ControlFlow 0 10) 5) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (and (= |p#0@@8| |#_module.Stream.Nil|) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon6_Then_correct  (=> (_module.__default.ValidPath ($LS $LZ) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |p#0@@8|) (and (=> (= (ControlFlow 0 11) 4) anon7_Then_correct) (=> (= (ControlFlow 0 11) 10) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (not (_module.__default.ValidPath ($LS $LZ) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |p#0@@8|)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.Stream| |p#0@@8|)) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@0 $Heap@0)) (and (forall ((|$ih#p0#0| T@U) ) (! true
 :qid |InfiniteTreesdfy.243:23|
 :skolemid |802|
 :pattern ( (_module.__default.ValidPath ($LS $LZ) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |$ih#p0#0|))
)) (= |##t#1@0| (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|)))))) (and (and ($IsAlloc DatatypeTypeType |##t#1@0| Tclass._module.Tree $Heap@0) ($IsAlloc DatatypeTypeType |p#0@@8| (Tclass._module.Stream TInt) $Heap@0)) (and (|_module.__default.ValidPath#canCall| (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |p#0@@8|) (|_module.__default.ValidPath#canCall| (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) |p#0@@8|)))) (and (=> (= (ControlFlow 0 12) 11) anon6_Then_correct) (=> (= (ControlFlow 0 12) 3) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is DatatypeTypeType |p#0@@8| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |p#0@@8| (Tclass._module.Stream TInt) $Heap@@0)) (|$IsA#_module.Stream| |p#0@@8|)) (=> (and (and (and ($Is DatatypeTypeType |nil#0_0_0| (Tclass._module.Stream Tclass._module.Tree)) ($IsAlloc DatatypeTypeType |nil#0_0_0| (Tclass._module.Stream Tclass._module.Tree) $Heap@@0)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
