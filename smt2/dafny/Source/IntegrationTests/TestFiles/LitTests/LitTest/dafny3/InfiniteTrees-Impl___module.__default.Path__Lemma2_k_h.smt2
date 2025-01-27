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
(declare-fun TORDINAL () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.CoOption () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |##_module.CoOption.None| () T@U)
(declare-fun |##_module.CoOption.Some| () T@U)
(declare-fun |##_module.Number.Succ| () T@U)
(declare-fun |##_module.Number.Zero| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$Number () T@U)
(declare-fun tytagFamily$CoOption () T@U)
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
(declare-fun _module.__default.S2N (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.S2N#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |_module.__default.S2N_k#canCall| (Int T@U) Bool)
(declare-fun |#_module.CoOption.None| () T@U)
(declare-fun |#_module.CoOption.Some| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.S2N_k (T@U Int T@U) T@U)
(declare-fun _module.__default.IsNeverEndingStream (T@U T@U T@U) Bool)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |_module.__default.IsNeverEndingStream#canCall| (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Tclass._module.Number () T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.CoOption (T@U) T@U)
(declare-fun _module.__default.IsNeverEndingStream_h (T@U T@U T@U T@U) Bool)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.InfinitePath_h (T@U T@U T@U) Bool)
(declare-fun |_module.__default.InfinitePath_h#canCall| (T@U T@U) Bool)
(declare-fun _module.CoOption.None_q (T@U) Bool)
(declare-fun _module.CoOption.get (T@U) T@U)
(declare-fun |_module.__default.InfinitePath_k_h#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.InfinitePath_k_h (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.IsNeverEndingStream_h#canCall| (T@U T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.CoOption.Some_q (T@U) Bool)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun |#_module.Number.Zero| (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.Number._h4 (T@U) T@U)
(declare-fun _module.Number._h5 (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun Tclass._module.CoOption_0 (T@U) T@U)
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
(assert (distinct TInt TORDINAL TagInt TagORDINAL alloc Tagclass._System.nat Tagclass._module.Stream Tagclass._module.Number Tagclass._module.CoOption |##_module.Stream.Nil| |##_module.Stream.Cons| |##_module.CoOption.None| |##_module.CoOption.Some| |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$nat tytagFamily$Stream tytagFamily$Number tytagFamily$CoOption)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|p#0| T@U) ) (!  (=> (or (|_module.__default.S2N#canCall| |p#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| (Tclass._module.Stream TInt)))) (and (=> (not (_module.Stream.Nil_q |p#0|)) (let ((|tail#1| (_module.Stream.tail |p#0|)))
(let ((|n#1| (U_2_int ($Unbox intType (_module.Stream.head |p#0|)))))
(|_module.__default.S2N_k#canCall| (ite (< |n#1| 0) 0 |n#1|) |tail#1|)))) (= (_module.__default.S2N ($LS $ly) |p#0|) (ite (_module.Stream.Nil_q |p#0|) |#_module.CoOption.None| (let ((|tail#0| (_module.Stream.tail |p#0|)))
(let ((|n#0| (U_2_int ($Unbox intType (_module.Stream.head |p#0|)))))
(|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k $ly (ite (< |n#0| 0) 0 |n#0|) |tail#0|)))))))))
 :qid |InfiniteTreesdfy.475:16|
 :skolemid |995|
 :pattern ( (_module.__default.S2N ($LS $ly) |p#0|))
))))
(assert (forall ((_module._default.IsNeverEndingStream$S T@U) ($ly@@0 T@U) (|s#0| T@U) ) (! (= (_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S ($LS $ly@@0) |s#0|) (_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S $ly@@0 |s#0|))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S ($LS $ly@@0) |s#0|))
)))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.IsNeverEndingStream$S@@0 T@U) ($ly@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.IsNeverEndingStream#canCall| _module._default.IsNeverEndingStream$S@@0 |s#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.IsNeverEndingStream$S@@0)))) (and (=> (not (_module.Stream.Nil_q |s#0@@0|)) (let ((|tail#1@@0| (_module.Stream.tail |s#0@@0|)))
(|_module.__default.IsNeverEndingStream#canCall| _module._default.IsNeverEndingStream$S@@0 |tail#1@@0|))) (= (_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S@@0 ($LS $ly@@1) |s#0@@0|) (ite (_module.Stream.Nil_q |s#0@@0|) false (let ((|tail#0@@0| (_module.Stream.tail |s#0@@0|)))
(_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S@@0 $ly@@1 |tail#0@@0|))))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.IsNeverEndingStream _module._default.IsNeverEndingStream$S@@0 ($LS $ly@@1) |s#0@@0|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@0| Int) (|tail#0@@1| T@U) ) (!  (=> (or (|_module.__default.S2N_k#canCall| |n#0@@0| |tail#0@@1|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) ($Is DatatypeTypeType |tail#0@@1| (Tclass._module.Stream TInt))))) ($Is DatatypeTypeType (_module.__default.S2N_k $ly@@2 |n#0@@0| |tail#0@@1|) Tclass._module.Number))
 :qid |InfiniteTreesdfy.482:16|
 :skolemid |999|
 :pattern ( (_module.__default.S2N_k $ly@@2 |n#0@@0| |tail#0@@1|))
))))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (= (DatatypeCtorId |#_module.CoOption.None|) |##_module.CoOption.None|))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |1172|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((_module.Stream$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
)))
(assert (forall ((_module.CoOption$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S| T@U) ($ly@@3 T@U) (|s#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S|)) (_module.__default.IsNeverEndingStream |_module._default.IsNeverEndingStream#$S| ($LS $ly@@3) |s#0@@1|)) (forall ((|_k#0| T@U) ) (! (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S| ($LS $ly@@3) |_k#0| |s#0@@1|)
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |602|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S| ($LS $ly@@3) |_k#0| |s#0@@1|))
)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (_module.__default.IsNeverEndingStream |_module._default.IsNeverEndingStream#$S| ($LS $ly@@3) |s#0@@1|))
))))
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
(assert (forall ((_module.CoOption$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T@@0))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($Is DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S@@0| T@U) ($ly@@4 T@U) (|s#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S@@0|)) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@0| ($LS $ly@@4) |_k#0@@0| |s#0@@2|)
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |602|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@0| ($LS $ly@@4) |_k#0@@0| |s#0@@2|))
))) (_module.__default.IsNeverEndingStream |_module._default.IsNeverEndingStream#$S@@0| ($LS $ly@@4) |s#0@@2|))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.IsNeverEndingStream |_module._default.IsNeverEndingStream#$S@@0| ($LS $ly@@4) |s#0@@2|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@1| T@U) (|r#0| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_h#canCall| |_k#0@@1| |r#0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |r#0| (Tclass._module.CoOption Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (not (_module.CoOption.None_q |r#0|)) (let ((|num#3| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0|))))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |num#3|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.CoOption.None_q |r#0|) false (let ((|num#4| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0|))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |num#4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@1|) (|_module.__default.InfinitePath_h#canCall| |_k'#0| |r#0|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |899|
 :pattern ( (_module.__default.InfinitePath_h $ly@@5 |_k'#0| |r#0|))
))))) (= (_module.__default.InfinitePath_h ($LS $ly@@5) |_k#0@@1| |r#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.CoOption.None_q |r#0|) false (let ((|num#2| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0|))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |num#2|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@1|) (_module.__default.InfinitePath_h $ly@@5 |_k'#0@@0| |r#0|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |898|
 :pattern ( (_module.__default.InfinitePath_h $ly@@5 |_k'#0@@0| |r#0|))
)))))))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |900|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@5) |_k#0@@1| |r#0|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S@@1| T@U) ($ly@@6 T@U) (|_k#0@@2| T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@1| |_k#0@@2| |s#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S@@1|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.Stream.Nil_q |s#0@@3|)) (let ((|tail#3| (_module.Stream.tail |s#0@@3|)))
(|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@1| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#3|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |s#0@@3|) false (let ((|tail#4| (_module.Stream.tail |s#0@@3|)))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| $ly@@6 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k#0@@2|) (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@1| |_k'#0@@1| |s#0@@3|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |612|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| $ly@@6 |_k'#0@@1| |s#0@@3|))
))))) (= (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| ($LS $ly@@6) |_k#0@@2| |s#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |s#0@@3|) false (let ((|tail#2| (_module.Stream.tail |s#0@@3|)))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| $ly@@6 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#2|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@2| |_k#0@@2|) (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| $ly@@6 |_k'#0@@2| |s#0@@3|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |611|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| $ly@@6 |_k'#0@@2| |s#0@@3|))
)))))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@1| ($LS $ly@@6) |_k#0@@2| |s#0@@3|))
))))
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Stream.Nil_q d) (= (DatatypeCtorId d) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.Stream.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.CoOption.None_q d@@1) (= (DatatypeCtorId d@@1) |##_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1187|
 :pattern ( (_module.CoOption.None_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.CoOption.Some_q d@@2) (= (DatatypeCtorId d@@2) |##_module.CoOption.Some|))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( (_module.CoOption.Some_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Number.Succ_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Number.Succ|))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (_module.Number.Succ_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Number.Zero_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Number.Zero_q d@@4))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|num#0| T@U) (|_k#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0| Tclass._module.Number) (= |_k#0@@3| (|ORD#FromNat| 0))) (_module.__default.InfinitePath_k_h $ly@@7 |_k#0@@3| |num#0|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |915|
 :pattern ( (_module.__default.InfinitePath_k_h $ly@@7 |_k#0@@3| |num#0|))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Stream.Cons_q d@@5) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@5 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1152|
)))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (_module.Stream.Cons_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Stream.Nil_q d@@6) (= d@@6 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (_module.Stream.Nil_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.CoOption.None_q d@@7) (= d@@7 |#_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( (_module.CoOption.None_q d@@7))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|r#0@@0| T@U) (|_k#0@@4| T@U) ) (!  (=> (and ($Is DatatypeTypeType |r#0@@0| (Tclass._module.CoOption Tclass._module.Number)) (= |_k#0@@4| (|ORD#FromNat| 0))) (_module.__default.InfinitePath_h $ly@@8 |_k#0@@4| |r#0@@0|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |892|
 :pattern ( (_module.__default.InfinitePath_h $ly@@8 |_k#0@@4| |r#0@@0|))
))))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Stream |_module.Stream$T#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Stream |_module.Stream$T#r@@2|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Stream.Nil_q d0@@2) (_module.Stream.Nil_q d1@@2)) (and (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (=> (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (and (= (_module.Stream.head d0@@2) (_module.Stream.head d1@@2)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Stream.tail d0@@2) (_module.Stream.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.CoOption.Some_q d@@8) (exists ((|a#18#0#0| T@U) ) (! (= d@@8 (|#_module.CoOption.Some| |a#18#0#0|))
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1193|
)))
 :qid |unknown.0:0|
 :skolemid |1194|
 :pattern ( (_module.CoOption.Some_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Number.Succ_q d@@9) (exists ((|a#22#0#0| T@U) ) (! (= d@@9 (|#_module.Number.Succ| |a#22#0#0|))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1214|
)))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (_module.Number.Succ_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Number.Zero_q d@@10) (exists ((|a#28#0#0| T@U) ) (! (= d@@10 (|#_module.Number.Zero| |a#28#0#0|))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1223|
)))
 :qid |unknown.0:0|
 :skolemid |1224|
 :pattern ( (_module.Number.Zero_q d@@10))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@5| T@U) (|num#0@@0| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_k_h#canCall| (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |num#0@@0|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@0| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|))))) (let ((|next#9| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0@@0|)))))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |next#9|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|)))))) (let ((|r#9| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0@@0|)))))
(|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |r#9|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|)) (let ((|next#10| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0@@0|)))))
(_module.__default.InfinitePath_k_h ($LS $ly@@9) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |next#10|)) (let ((|r#10| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0@@0|)))))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |r#10|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@5|) (|_module.__default.InfinitePath_k_h#canCall| |_k'#2| |num#0@@0|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |929|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@9) |_k'#2| |num#0@@0|))
))))) (= (_module.__default.InfinitePath_k_h ($LS $ly@@9) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |num#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@0|)) (let ((|next#8| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0@@0|)))))
(_module.__default.InfinitePath_k_h ($LS $ly@@9) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |next#8|)) (let ((|r#8| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0@@0|)))))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |r#8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@5|) (_module.__default.InfinitePath_k_h ($LS $ly@@9) |_k'#2@@0| |num#0@@0|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |928|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@9) |_k'#2@@0| |num#0@@0|))
)))))))
 :qid |InfiniteTreesdfy.440:20|
 :weight 3
 :skolemid |930|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@9) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |num#0@@0|)))
))))
(assert (forall (($ly@@10 T@U) (|_k#0@@6| T@U) (|r#0@@1| T@U) ) (! (= (_module.__default.InfinitePath_h ($LS $ly@@10) |_k#0@@6| |r#0@@1|) (_module.__default.InfinitePath_h $ly@@10 |_k#0@@6| |r#0@@1|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |894|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@10) |_k#0@@6| |r#0@@1|))
)))
(assert (forall (($ly@@11 T@U) (|_k#0@@7| T@U) (|num#0@@1| T@U) ) (! (= (_module.__default.InfinitePath_k_h ($LS $ly@@11) |_k#0@@7| |num#0@@1|) (_module.__default.InfinitePath_k_h $ly@@11 |_k#0@@7| |num#0@@1|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |918|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@11) |_k#0@@7| |num#0@@1|))
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
(assert (forall ((_module.CoOption$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.CoOption _module.CoOption$T@@1)) Tagclass._module.CoOption) (= (TagFamily (Tclass._module.CoOption _module.CoOption$T@@1)) tytagFamily$CoOption))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( (Tclass._module.CoOption _module.CoOption$T@@1))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Number) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($IsBox bx@@0 Tclass._module.Number))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#23#0#0| Tclass._module.Number))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1216|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number))
)))
(assert (forall (($ly@@12 T@U) (|n#0@@1| Int) (|tail#0@@2| T@U) ) (! (= (_module.__default.S2N_k ($LS $ly@@12) |n#0@@1| |tail#0@@2|) (_module.__default.S2N_k $ly@@12 |n#0@@1| |tail#0@@2|))
 :qid |InfiniteTreesdfy.482:16|
 :skolemid |997|
 :pattern ( (_module.__default.S2N_k ($LS $ly@@12) |n#0@@1| |tail#0@@2|))
)))
(assert (forall ((_module.CoOption$T@@2 T@U) (|a#19#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0|) (Tclass._module.CoOption _module.CoOption$T@@2) $h@@2) ($IsAllocBox |a#19#0#0| _module.CoOption$T@@2 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1196|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0|) (Tclass._module.CoOption _module.CoOption$T@@2) $h@@2))
)))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.Stream.Nil_q d0@@3) (_module.Stream.Nil_q d1@@3)) (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3))))))))
 :qid |unknown.0:0|
 :skolemid |1162|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#_module.Stream| d@@11) (or (_module.Stream.Nil_q d@@11) (_module.Stream.Cons_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |1160|
 :pattern ( (|$IsA#_module.Stream| d@@11))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#29#0#0| (Tclass._module.CoOption Tclass._module.Number)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1225|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number))
)))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@12) (_module.Stream.Cons_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (_module.Stream.Cons_q d@@12) ($Is DatatypeTypeType d@@12 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@12) ($Is DatatypeTypeType d@@12 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert (forall ((_module.CoOption$T@@3 T@U) (d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 (Tclass._module.CoOption _module.CoOption$T@@3)) (or (_module.CoOption.None_q d@@13) (_module.CoOption.Some_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (_module.CoOption.Some_q d@@13) ($Is DatatypeTypeType d@@13 (Tclass._module.CoOption _module.CoOption$T@@3)))
 :pattern ( (_module.CoOption.None_q d@@13) ($Is DatatypeTypeType d@@13 (Tclass._module.CoOption _module.CoOption$T@@3)))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 Tclass._module.Number) (or (_module.Number.Succ_q d@@14) (_module.Number.Zero_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |1232|
 :pattern ( (_module.Number.Zero_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Number))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S@@2| T@U) ($ly@@13 T@U) (|s#0@@4| T@U) (|_k#0@@8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S@@2|)) (= |_k#0@@8| (|ORD#FromNat| 0))) (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@2| $ly@@13 |_k#0@@8| |s#0@@4|))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@2| $ly@@13 |_k#0@@8| |s#0@@4|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.__default.S2N#canCall| |p#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.Stream TInt)))) ($Is DatatypeTypeType (_module.__default.S2N $ly@@14 |p#0@@0|) (Tclass._module.CoOption Tclass._module.Number)))
 :qid |InfiniteTreesdfy.475:16|
 :skolemid |993|
 :pattern ( (_module.__default.S2N $ly@@14 |p#0@@0|))
))))
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
(assert (forall ((_module.CoOption$T@@4 T@U) ) (! (= (Tclass._module.CoOption_0 (Tclass._module.CoOption _module.CoOption$T@@4)) _module.CoOption$T@@4)
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( (Tclass._module.CoOption _module.CoOption$T@@4))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.CoOption.Some| |a#17#0#0|)) |##_module.CoOption.Some|)
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1191|
 :pattern ( (|#_module.CoOption.Some| |a#17#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (_module.CoOption.get (|#_module.CoOption.Some| |a#20#0#0|)) |a#20#0#0|)
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1198|
 :pattern ( (|#_module.CoOption.Some| |a#20#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Succ| |a#21#0#0|)) |##_module.Number.Succ|)
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1212|
 :pattern ( (|#_module.Number.Succ| |a#21#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (_module.Number._h4 (|#_module.Number.Succ| |a#25#0#0|)) |a#25#0#0|)
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1219|
 :pattern ( (|#_module.Number.Succ| |a#25#0#0|))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Zero| |a#27#0#0|)) |##_module.Number.Zero|)
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1221|
 :pattern ( (|#_module.Number.Zero| |a#27#0#0|))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= (_module.Number._h5 (|#_module.Number.Zero| |a#31#0#0|)) |a#31#0#0|)
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1228|
 :pattern ( (|#_module.Number.Zero| |a#31#0#0|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S@@3| T@U) ($ly@@15 T@U) (|_k#0@@9| T@U) (|s#0@@5| T@U) ) (!  (=> (or (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@3| (Lit BoxType |_k#0@@9|) |s#0@@5|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S@@3|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (=> (not (_module.Stream.Nil_q |s#0@@5|)) (let ((|tail#6| (_module.Stream.tail |s#0@@5|)))
(|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@3| (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |tail#6|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (ite (_module.Stream.Nil_q |s#0@@5|) false (let ((|tail#7| (_module.Stream.tail |s#0@@5|)))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |tail#7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@9|) (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@3| |_k'#1| |s#0@@5|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |615|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) |_k'#1| |s#0@@5|))
))))) (= (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) (Lit BoxType |_k#0@@9|) |s#0@@5|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (ite (_module.Stream.Nil_q |s#0@@5|) false (let ((|tail#5| (_module.Stream.tail |s#0@@5|)))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |tail#5|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@9|) (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) |_k'#1@@0| |s#0@@5|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |614|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) |_k'#1@@0| |s#0@@5|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@3| ($LS $ly@@15) (Lit BoxType |_k#0@@9|) |s#0@@5|))
))))
(assert (forall ((_module.CoOption$T@@5 T@U) (|a#19#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)) ($IsBox |a#19#0#0@@0| _module.CoOption$T@@5))
 :qid |unknown.0:0|
 :skolemid |1195|
 :pattern ( ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@16 T@U) (|_k#0@@10| T@U) (|num#0@@2| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_k_h#canCall| (Lit BoxType |_k#0@@10|) |num#0@@2|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@2| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (and (=> (_module.Number.Succ_q |num#0@@2|) (let ((|next#6| (_module.Number._h4 |num#0@@2|)))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |next#6|))) (=> (not (_module.Number.Succ_q |num#0@@2|)) (let ((|r#6| (_module.Number._h5 |num#0@@2|)))
(|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |r#6|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (ite (_module.Number.Succ_q |num#0@@2|) (let ((|next#7| (_module.Number._h4 |num#0@@2|)))
(_module.__default.InfinitePath_k_h ($LS $ly@@16) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |next#7|)) (let ((|r#7| (_module.Number._h5 |num#0@@2|)))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |r#7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@10|) (|_module.__default.InfinitePath_k_h#canCall| |_k'#1@@1| |num#0@@2|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |926|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@16) |_k'#1@@1| |num#0@@2|))
))))) (= (_module.__default.InfinitePath_k_h ($LS $ly@@16) (Lit BoxType |_k#0@@10|) |num#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (ite (_module.Number.Succ_q |num#0@@2|) (let ((|next#5| (_module.Number._h4 |num#0@@2|)))
(_module.__default.InfinitePath_k_h ($LS $ly@@16) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |next#5|)) (let ((|r#5| (_module.Number._h5 |num#0@@2|)))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |r#5|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@2| |_k#0@@10|) (_module.__default.InfinitePath_k_h ($LS $ly@@16) |_k'#1@@2| |num#0@@2|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |925|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@16) |_k'#1@@2| |num#0@@2|))
)))))))
 :qid |InfiniteTreesdfy.440:20|
 :weight 3
 :skolemid |927|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@16) (Lit BoxType |_k#0@@10|) |num#0@@2|))
))))
(assert (forall ((|_module._default.IsNeverEndingStream#$S@@4| T@U) ($ly@@17 T@U) (|_k#0@@11| T@U) (|s#0@@6| T@U) ) (! (= (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@4| ($LS $ly@@17) |_k#0@@11| |s#0@@6|) (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@4| $ly@@17 |_k#0@@11| |s#0@@6|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@4| ($LS $ly@@17) |_k#0@@11| |s#0@@6|))
)))
(assert (forall (($ly@@18 T@U) (|p#0@@1| T@U) ) (! (= (_module.__default.S2N ($LS $ly@@18) |p#0@@1|) (_module.__default.S2N $ly@@18 |p#0@@1|))
 :qid |InfiniteTreesdfy.475:16|
 :skolemid |991|
 :pattern ( (_module.__default.S2N ($LS $ly@@18) |p#0@@1|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@19 T@U) (|_k#0@@12| T@U) (|r#0@@2| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_h#canCall| (Lit BoxType |_k#0@@12|) |r#0@@2|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |r#0@@2| (Tclass._module.CoOption Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (=> (not (_module.CoOption.None_q |r#0@@2|)) (let ((|num#6| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@2|))))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) |num#6|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (ite (_module.CoOption.None_q |r#0@@2|) false (let ((|num#7| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@2|))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) |num#7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#1@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@3| |_k#0@@12|) (|_module.__default.InfinitePath_h#canCall| |_k'#1@@3| |r#0@@2|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |902|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@19) |_k'#1@@3| |r#0@@2|))
))))) (= (_module.__default.InfinitePath_h ($LS $ly@@19) (Lit BoxType |_k#0@@12|) |r#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (ite (_module.CoOption.None_q |r#0@@2|) false (let ((|num#5| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@2|))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) |num#5|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#1@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@4| |_k#0@@12|) (_module.__default.InfinitePath_h ($LS $ly@@19) |_k'#1@@4| |r#0@@2|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |901|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@19) |_k'#1@@4| |r#0@@2|))
)))))))
 :qid |InfiniteTreesdfy.434:20|
 :weight 3
 :skolemid |903|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@19) (Lit BoxType |_k#0@@12|) |r#0@@2|))
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
(assert (forall ((|a#26#0#0| T@U) ) (! (< (DtRank |a#26#0#0|) (DtRank (|#_module.Number.Succ| |a#26#0#0|)))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1220|
 :pattern ( (|#_module.Number.Succ| |a#26#0#0|))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (< (DtRank |a#32#0#0|) (DtRank (|#_module.Number.Zero| |a#32#0#0|)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1229|
 :pattern ( (|#_module.Number.Zero| |a#32#0#0|))
)))
(assert (forall ((d@@15 T@U) (_module.Stream$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Stream.Cons_q d@@15) ($IsAlloc DatatypeTypeType d@@15 (Tclass._module.Stream _module.Stream$T@@5) $h@@3))) ($IsAllocBox (_module.Stream.head d@@15) _module.Stream$T@@5 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@15) _module.Stream$T@@5 $h@@3))
)))
(assert (forall ((d@@16 T@U) (_module.CoOption$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.CoOption.Some_q d@@16) ($IsAlloc DatatypeTypeType d@@16 (Tclass._module.CoOption _module.CoOption$T@@6) $h@@4))) ($IsAllocBox (_module.CoOption.get d@@16) _module.CoOption$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( ($IsAllocBox (_module.CoOption.get d@@16) _module.CoOption$T@@6 $h@@4))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IsNeverEndingStream#$S@@5| T@U) ($ly@@20 T@U) (|_k#0@@13| T@U) (|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@5| (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |s#0@@7|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream |_module._default.IsNeverEndingStream#$S@@5|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@7|)))))) (let ((|tail#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@7|)))))
(|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@5| (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) |tail#9|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@7|)) false (let ((|tail#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@7|)))))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) |tail#10|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@13|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@1| |_k#0@@13|) (|_module.__default.IsNeverEndingStream_h#canCall| |_module._default.IsNeverEndingStream#$S@@5| |_k'#2@@1| |s#0@@7|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |618|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) |_k'#2@@1| |s#0@@7|))
))))) (= (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |s#0@@7|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@7|)) false (let ((|tail#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@7|)))))
(_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) |tail#8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@13|)) (forall ((|_k'#2@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@2| |_k#0@@13|) (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) |_k'#2@@2| |s#0@@7|))
 :qid |InfiniteTreesdfy.41:20|
 :skolemid |617|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) |_k'#2@@2| |s#0@@7|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |619|
 :pattern ( (_module.__default.IsNeverEndingStream_h |_module._default.IsNeverEndingStream#$S@@5| ($LS $ly@@20) (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |s#0@@7|)))
))))
(assert (forall ((_module.Stream$T@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert (forall ((_module.CoOption$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.CoOption _module.CoOption$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.CoOption _module.CoOption$T@@7))))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsBox bx@@3 (Tclass._module.CoOption _module.CoOption$T@@7)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@17 T@U) (_module.Stream$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Stream.Cons_q d@@17) ($IsAlloc DatatypeTypeType d@@17 (Tclass._module.Stream _module.Stream$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@17) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@17) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@21 T@U) (|_k#0@@14| T@U) (|r#0@@3| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_h#canCall| (Lit BoxType |_k#0@@14|) (Lit DatatypeTypeType |r#0@@3|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |r#0@@3| (Tclass._module.CoOption Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@3|)))))) (let ((|num#9| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@3|))))))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) |num#9|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (ite (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@3|)) false (let ((|num#10| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@3|))))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) |num#10|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@14|)) (forall ((|_k'#2@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@3| |_k#0@@14|) (|_module.__default.InfinitePath_h#canCall| |_k'#2@@3| |r#0@@3|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |905|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@21) |_k'#2@@3| |r#0@@3|))
))))) (= (_module.__default.InfinitePath_h ($LS $ly@@21) (Lit BoxType |_k#0@@14|) (Lit DatatypeTypeType |r#0@@3|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (ite (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@3|)) false (let ((|num#8| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@3|))))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) |num#8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@14|)) (forall ((|_k'#2@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@4| |_k#0@@14|) (_module.__default.InfinitePath_h ($LS $ly@@21) |_k'#2@@4| |r#0@@3|))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |904|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@21) |_k'#2@@4| |r#0@@3|))
)))))))
 :qid |InfiniteTreesdfy.434:20|
 :weight 3
 :skolemid |906|
 :pattern ( (_module.__default.InfinitePath_h ($LS $ly@@21) (Lit BoxType |_k#0@@14|) (Lit DatatypeTypeType |r#0@@3|)))
))))
(assert (forall ((d@@18 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@18 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Number $h@@6))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Number $h@@6))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
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
(assert (forall ((d@@19 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Number.Succ_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Number $h@@7))) ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@19) Tclass._module.Number $h@@7))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@19) Tclass._module.Number $h@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@22 T@U) (|n#0@@2| Int) (|tail#0@@3| T@U) ) (!  (=> (or (|_module.__default.S2N_k#canCall| |n#0@@2| |tail#0@@3|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |tail#0@@3| (Tclass._module.Stream TInt))))) (and (and (=> (<= |n#0@@2| (LitInt 0)) (|_module.__default.S2N#canCall| |tail#0@@3|)) (=> (< (LitInt 0) |n#0@@2|) (|_module.__default.S2N_k#canCall| (- |n#0@@2| 1) |tail#0@@3|))) (= (_module.__default.S2N_k ($LS $ly@@22) |n#0@@2| |tail#0@@3|) (ite (<= |n#0@@2| (LitInt 0)) (|#_module.Number.Zero| (_module.__default.S2N $ly@@22 |tail#0@@3|)) (|#_module.Number.Succ| (_module.__default.S2N_k $ly@@22 (- |n#0@@2| 1) |tail#0@@3|))))))
 :qid |InfiniteTreesdfy.482:16|
 :skolemid |1001|
 :pattern ( (_module.__default.S2N_k ($LS $ly@@22) |n#0@@2| |tail#0@@3|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (|#_module.Number.Succ| (Lit DatatypeTypeType |a#24#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Succ| |a#24#0#0|)))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1218|
 :pattern ( (|#_module.Number.Succ| (Lit DatatypeTypeType |a#24#0#0|)))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (|#_module.Number.Zero| (Lit DatatypeTypeType |a#30#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Zero| |a#30#0#0|)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1227|
 :pattern ( (|#_module.Number.Zero| (Lit DatatypeTypeType |a#30#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@20 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Number.Zero_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Number $h@@8))) ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@20) (Tclass._module.CoOption Tclass._module.Number) $h@@8))
 :qid |unknown.0:0|
 :skolemid |1226|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@20) (Tclass._module.CoOption Tclass._module.Number) $h@@8))
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
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc BoxType v@@2 TORDINAL h@@1)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v@@2 TORDINAL h@@1))
)))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@9)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@9) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@9))))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@23 T@U) (|_k#0@@15| T@U) (|num#0@@3| T@U) ) (!  (=> (or (|_module.__default.InfinitePath_k_h#canCall| |_k#0@@15| |num#0@@3|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@3| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (and (=> (_module.Number.Succ_q |num#0@@3|) (let ((|next#3| (_module.Number._h4 |num#0@@3|)))
(|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |next#3|))) (=> (not (_module.Number.Succ_q |num#0@@3|)) (let ((|r#3| (_module.Number._h5 |num#0@@3|)))
(|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |r#3|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (ite (_module.Number.Succ_q |num#0@@3|) (let ((|next#4| (_module.Number._h4 |num#0@@3|)))
(_module.__default.InfinitePath_k_h $ly@@23 (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |next#4|)) (let ((|r#4| (_module.Number._h5 |num#0@@3|)))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |r#4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@15|)) (forall ((|_k'#0@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@3| |_k#0@@15|) (|_module.__default.InfinitePath_k_h#canCall| |_k'#0@@3| |num#0@@3|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |923|
 :pattern ( (_module.__default.InfinitePath_k_h $ly@@23 |_k'#0@@3| |num#0@@3|))
))))) (= (_module.__default.InfinitePath_k_h ($LS $ly@@23) |_k#0@@15| |num#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (ite (_module.Number.Succ_q |num#0@@3|) (let ((|next#2| (_module.Number._h4 |num#0@@3|)))
(_module.__default.InfinitePath_k_h $ly@@23 (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |next#2|)) (let ((|r#2| (_module.Number._h5 |num#0@@3|)))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) |r#2|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@15|)) (forall ((|_k'#0@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@4| |_k#0@@15|) (_module.__default.InfinitePath_k_h $ly@@23 |_k'#0@@4| |num#0@@3|))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |922|
 :pattern ( (_module.__default.InfinitePath_k_h $ly@@23 |_k'#0@@4| |num#0@@3|))
)))))))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |924|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $ly@@23) |_k#0@@15| |num#0@@3|))
))))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is BoxType v@@4 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |44|
 :pattern ( ($Is BoxType v@@4 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##n#3@0| () Int)
(declare-fun |n#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |tail#6@0| () T@U)
(declare-fun |##r#4@0| () T@U)
(declare-fun |_k#0@@16| () T@U)
(declare-fun |p#1| () T@U)
(declare-fun |##r#5@0| () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun |##r#3@0| () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |##num#1@0| () T@U)
(declare-fun |##_k#3@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |##num#0@0| () T@U)
(declare-fun |n##0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |_k##1@0| () T@U)
(declare-fun |##_k#2@0| () T@U)
(declare-fun |##_k#1@0| () T@U)
(declare-fun |##r#2@0| () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##_k#0@0| () T@U)
(declare-fun |##r#1@0| () T@U)
(declare-fun |_mcc#0#0@0| () Int)
(declare-fun |_mcc#1#0@0| () T@U)
(declare-fun |let#0_0_0#0#0| () T@U)
(declare-fun |let#0_0_1#0#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Path__Lemma2_k_h)
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
 (=> (= (ControlFlow 0 0) 60) (let ((anon7_correct  (=> (= |##n#3@0| (ite (< |n#0@0| 0) 0 |n#0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#3@0|) Tclass._System.nat $Heap@0) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@0)) (=> (and (and (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (= |##r#4@0| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))) (and ($IsAlloc DatatypeTypeType |##r#4@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))))) (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))) (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))))) (and (and (and ($IsAlloc BoxType |_k#0@@16| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |p#1| (Tclass._module.Stream TInt) $Heap@0)) (and (|_module.__default.S2N#canCall| |p#1|) (= |##r#5@0| (_module.__default.S2N ($LS $LZ) |p#1|)))) (and (and ($IsAlloc DatatypeTypeType |##r#5@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|))) (and (|_module.__default.S2N#canCall| |p#1|) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)))))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (=> (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|)) (U_2_bool (Lit boolType (bool_2_U false))))))))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (=> (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (not (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|))) (let ((|num#8@@0| ($Unbox DatatypeTypeType (_module.CoOption.get (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))))
(_module.__default.InfinitePath_k_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) |num#8@@0|)))))))) (=> (= (ControlFlow 0 51) (- 0 50)) (=> (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@16|)) (forall ((|_k'#3| T@U) ) (!  (=> (|ORD#Less| |_k'#3| |_k#0@@16|) (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#3| (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |1106|
 :pattern ( (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#3| (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))
))))))))))))))
(let ((anon31_Else_correct  (=> (<= 0 |n#0@0|) (=> (and ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (= (ControlFlow 0 55) 51)) anon7_correct))))
(let ((anon31_Then_correct  (=> (< |n#0@0| 0) (=> (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (= (ControlFlow 0 54) 51)) anon7_correct))))
(let ((anon30_Then_correct  (=> ($IsAlloc BoxType |_k#0@@16| TORDINAL $Heap@0) (and (=> (= (ControlFlow 0 56) 54) anon31_Then_correct) (=> (= (ControlFlow 0 56) 55) anon31_Else_correct)))))
(let ((anon14_correct  (=> (= |##n#2@0| (ite (< |n#0@0| 0) 0 |n#0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap@0) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@0)) (=> (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (= |##r#3@0| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))) (and ($IsAlloc DatatypeTypeType |##r#3@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))))) (=> (and (and (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))) (= (ControlFlow 0 41) (- 0 40))) (_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))) (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (|#_module.CoOption.Some| ($Box DatatypeTypeType (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))))))))
(let ((anon34_Else_correct  (=> (<= 0 |n#0@0|) (and (=> (= (ControlFlow 0 44) (- 0 45)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= (ControlFlow 0 44) 41) anon14_correct))))))
(let ((anon34_Then_correct  (=> (< |n#0@0| 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= (ControlFlow 0 42) 41) anon14_correct))))))
(let ((anon11_correct  (=> (= |##n#1@0| (ite (< |n#0@0| 0) 0 |n#0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@0) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@0)) (=> (and (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (= |##num#1@0| (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (and ($IsAlloc DatatypeTypeType |##num#1@0| Tclass._module.Number $Heap@0) (|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))) (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (and (_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)) ($IsAlloc BoxType |_k#0@@16| TORDINAL $Heap@0)))) (and (=> (= (ControlFlow 0 46) 42) anon34_Then_correct) (=> (= (ControlFlow 0 46) 44) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (<= 0 |n#0@0|) (=> (and ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (= (ControlFlow 0 48) 46)) anon11_correct))))
(let ((anon33_Then_correct  (=> (< |n#0@0| 0) (=> (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (= (ControlFlow 0 47) 46)) anon11_correct))))
(let ((anon32_Then_correct  (=> (and (and (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|))) (and (= |##_k#3@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) ($IsAlloc BoxType |##_k#3@0| TORDINAL $Heap@0))) (and (=> (= (ControlFlow 0 49) 47) anon33_Then_correct) (=> (= (ControlFlow 0 49) 48) anon33_Else_correct)))))
(let ((anon21_correct  (=> (= |##n#0@0| (ite (< |n#0@0| 0) 0 |n#0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@3) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@3)) (=> (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (= |##num#0@0| (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (and ($IsAlloc DatatypeTypeType |##num#0@0| Tclass._module.Number $Heap@3) (|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|)))) (=> (and (and (and (and (|_module.__default.S2N_k#canCall| (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|) (|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (= (ControlFlow 0 23) (- 0 22))) (_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|))) (|_module.__default.InfinitePath_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))) (_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N_k ($LS $LZ) (ite (< |n#0@0| 0) 0 |n#0@0|) |tail#6@0|))))))))
(let ((anon37_Else_correct  (=> (<= 0 |n#0@0|) (and (=> (= (ControlFlow 0 26) (- 0 27)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= (ControlFlow 0 26) 23) anon21_correct))))))
(let ((anon37_Then_correct  (=> (< |n#0@0| 0) (and (=> (= (ControlFlow 0 24) (- 0 25)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= (ControlFlow 0 24) 23) anon21_correct))))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 28) (- 0 34)) ($Is intType (int_2_U (ite (< |n#0@0| 0) 0 |n#0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (ite (< |n#0@0| 0) 0 |n#0@0|)) Tclass._System.nat) (=> (= |n##0@0| (ite (< |n#0@0| 0) 0 |n#0@0|)) (and (=> (= (ControlFlow 0 28) (- 0 33)) (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |p#1|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#1|) (=> (_module.Stream.Nil_q |p#1|) (U_2_bool (Lit boolType (bool_2_U false))))))) (=> (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |p#1|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#1|) (=> (_module.Stream.Nil_q |p#1|) (U_2_bool (Lit boolType (bool_2_U false)))))) (and (=> (= (ControlFlow 0 28) (- 0 32)) (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |p#1|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#1|) (=> (not (_module.Stream.Nil_q |p#1|)) (let ((|tail#4@@0| (_module.Stream.tail |p#1|)))
(_module.__default.IsNeverEndingStream TInt ($LS ($LS $LZ)) |tail#4@@0|)))))) (=> (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |p#1|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#1|) (=> (not (_module.Stream.Nil_q |p#1|)) (let ((|tail#4@@1| (_module.Stream.tail |p#1|)))
(_module.__default.IsNeverEndingStream TInt ($LS ($LS $LZ)) |tail#4@@1|))))) (and (=> (= (ControlFlow 0 28) (- 0 31)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.Stream.tail |p#1|) |tail#6@0|)) (=> (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.Stream.tail |p#1|) |tail#6@0|) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (|_module.__default.S2N_k#canCall| |n##0@0| |tail#6@0|) (|_module.__default.InfinitePath_k_h#canCall| |_k##1@0| (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)))) (and (and (|_module.__default.InfinitePath_k_h#canCall| |_k##1@0| (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)) (and (_module.__default.InfinitePath_k_h ($LS $LZ) |_k##1@0| (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)) (and (=> (< 0 (|ORD#Offset| |_k##1@0|)) (ite (_module.Number.Succ_q (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)) (let ((|next#3@@0| (_module.Number._h4 (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k##1@0| (|ORD#FromNat| 1)) |next#3@@0|)) (let ((|r#3@@0| (_module.Number._h5 (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|))))
(_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k##1@0| (|ORD#FromNat| 1)) |r#3@@0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k##1@0|)) (forall ((|_k'#0@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@5| |_k##1@0|) (_module.__default.InfinitePath_k_h ($LS $LZ) |_k'#0@@5| (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)))
 :qid |InfiniteTreesdfy.440:20|
 :skolemid |1112|
 :pattern ( (_module.__default.InfinitePath_k_h ($LS $LZ) |_k'#0@@5| (_module.__default.S2N_k ($LS $LZ) |n##0@0| |tail#6@0|)))
)))))) (= $Heap@0 $Heap@3))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|)) (=> (and (= |##_k#2@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) ($IsAlloc BoxType |##_k#2@0| TORDINAL $Heap@3)) (and (=> (= (ControlFlow 0 28) 24) anon37_Then_correct) (=> (= (ControlFlow 0 28) 26) anon37_Else_correct)))))))))))))))))))
(let ((anon36_Else_correct  (=> (and (<= 0 |n#0@0|) (= (ControlFlow 0 36) 28)) anon18_correct)))
(let ((anon36_Then_correct  (=> (and (< |n#0@0| 0) (= (ControlFlow 0 35) 28)) anon18_correct)))
(let ((anon35_Then_correct  (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (=> (and (and (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|)) (= |##_k#1@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)))) (and ($IsAlloc BoxType |##_k#1@0| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@0))) (=> (and (and (and (|_module.__default.S2N#canCall| |tail#6@0|) (= |##r#2@0| (_module.__default.S2N ($LS $LZ) |tail#6@0|))) (and ($IsAlloc DatatypeTypeType |##r#2@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0) (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)))) (and (and (|_module.__default.S2N#canCall| |tail#6@0|) (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|))) (_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|)) (=> (= |_k##1@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 37) 35) anon36_Then_correct) (=> (= (ControlFlow 0 37) 36) anon36_Else_correct))))))))))))
(let ((anon38_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 20)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 12) (- 0 19)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 12) (- 0 18)) (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |tail#6@0|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |tail#6@0|) (=> (_module.Stream.Nil_q |tail#6@0|) (U_2_bool (Lit boolType (bool_2_U false))))))) (=> (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |tail#6@0|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |tail#6@0|) (=> (_module.Stream.Nil_q |tail#6@0|) (U_2_bool (Lit boolType (bool_2_U false)))))) (and (=> (= (ControlFlow 0 12) (- 0 17)) (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |tail#6@0|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |tail#6@0|) (=> (not (_module.Stream.Nil_q |tail#6@0|)) (let ((|tail#2@@0| (_module.Stream.tail |tail#6@0|)))
(_module.__default.IsNeverEndingStream TInt ($LS ($LS $LZ)) |tail#2@@0|)))))) (=> (=> (|_module.__default.IsNeverEndingStream#canCall| TInt |tail#6@0|) (or (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |tail#6@0|) (=> (not (_module.Stream.Nil_q |tail#6@0|)) (let ((|tail#2@@1| (_module.Stream.tail |tail#6@0|)))
(_module.__default.IsNeverEndingStream TInt ($LS ($LS $LZ)) |tail#2@@1|))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|_module.__default.S2N#canCall| |tail#6@0|) (|_module.__default.InfinitePath_h#canCall| |_k##0@0| (_module.__default.S2N ($LS $LZ) |tail#6@0|)))) (and (and (|_module.__default.InfinitePath_h#canCall| |_k##0@0| (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (and (_module.__default.InfinitePath_h ($LS $LZ) |_k##0@0| (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (and (=> (< 0 (|ORD#Offset| |_k##0@0|)) (ite (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |tail#6@0|)) false (let ((|num#3@@0| ($Unbox DatatypeTypeType (_module.CoOption.get (_module.__default.S2N ($LS $LZ) |tail#6@0|)))))
(_module.__default.InfinitePath_k_h ($LS $LZ) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |num#3@@0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (forall ((|_k'#0@@6| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@6| |_k##0@0|) (_module.__default.InfinitePath_h ($LS $LZ) |_k'#0@@6| (_module.__default.S2N ($LS $LZ) |tail#6@0|)))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |1096|
 :pattern ( (_module.__default.InfinitePath_h ($LS $LZ) |_k'#0@@6| (_module.__default.S2N ($LS $LZ) |tail#6@0|)))
)))))) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 12) (- 0 15)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@16|)) (=> (= |##_k#0@0| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) (=> (and (and (and ($IsAlloc BoxType |##_k#0@0| TORDINAL $Heap@2) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@2)) (and (|_module.__default.S2N#canCall| |tail#6@0|) (= |##r#1@0| (_module.__default.S2N ($LS $LZ) |tail#6@0|)))) (and (and ($IsAlloc DatatypeTypeType |##r#1@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@2) (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|))) (and (|_module.__default.S2N#canCall| |tail#6@0|) (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|))))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (or (_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)))) (=> (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (U_2_bool (Lit boolType (bool_2_U false))))))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (or (_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)))) (=> (not (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |tail#6@0|))) (let ((|num#6@@0| ($Unbox DatatypeTypeType (_module.CoOption.get (_module.__default.S2N ($LS ($LS $LZ)) |tail#6@0|)))))
(_module.__default.InfinitePath_k_h ($LS ($LS $LZ)) (|ORD#Minus| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (|ORD#FromNat| 1)) |num#6@@0|)))))))) (=> (= (ControlFlow 0 12) (- 0 11)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.InfinitePath_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (or (_module.__default.InfinitePath_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.__default.S2N ($LS $LZ) |tail#6@0|)) (=> (= (LitInt 0) (|ORD#Offset| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)))) (forall ((|_k'#2@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@5| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1))) (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#2@@5| (_module.__default.S2N ($LS ($LS $LZ)) |tail#6@0|)))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |1102|
 :pattern ( (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#2@@5| (_module.__default.S2N ($LS ($LS $LZ)) |tail#6@0|)))
)))))))))))))))))))))))))))
(let ((anon29_Then_correct true))
(let ((anon39_Else_correct true))
(let ((anon39_Then_correct  (=> (and (= |p#1| |#_module.Stream.Nil|) (= (ControlFlow 0 7) (- 0 6))) false)))
(let ((anon28_Else_correct  (=> (or (not (= |p#1| (|#_module.Stream.Cons| ($Box intType (int_2_U |_mcc#0#0@0|)) |_mcc#1#0@0|))) (not true)) (and (=> (= (ControlFlow 0 9) 7) anon39_Then_correct) (=> (= (ControlFlow 0 9) 8) anon39_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|)) (U_2_bool (Lit boolType (bool_2_U false)))))))) (=> (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|)) (U_2_bool (Lit boolType (bool_2_U false))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (not (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|))) (let ((|num#4@@0| ($Unbox DatatypeTypeType (_module.CoOption.get (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))))
(_module.__default.InfinitePath_k_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) |num#4@@0|))))))) (=> (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (=> (not (_module.CoOption.None_q (_module.__default.S2N ($LS $LZ) |p#1|))) (let ((|num#4@@1| ($Unbox DatatypeTypeType (_module.CoOption.get (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))))
(_module.__default.InfinitePath_k_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) |num#4@@1|)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.InfinitePath_h#canCall| |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (or (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@16|)) (forall ((|_k'#1@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@5| |_k#0@@16|) (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#1@@5| (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))
 :qid |InfiniteTreesdfy.434:20|
 :skolemid |1097|
 :pattern ( (_module.__default.InfinitePath_h ($LS ($LS $LZ)) |_k'#1@@5| (_module.__default.S2N ($LS ($LS $LZ)) |p#1|)))
))))))))))))
(let ((anon38_Else_correct  (=> (and (=> true (_module.__default.InfinitePath_h ($LS $LZ) |_k#0@@16| (_module.__default.S2N ($LS $LZ) |p#1|))) (= (ControlFlow 0 21) 2)) GeneratedUnifiedExit_correct)))
(let ((anon28_Then_correct  (=> (= |p#1| (|#_module.Stream.Cons| ($Box intType (int_2_U |_mcc#0#0@0|)) |_mcc#1#0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#1#0@0| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |_mcc#1#0@0| (Tclass._module.Stream TInt) $Heap@0)) (=> (and (and (and ($Is DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |tail#6@0| (Tclass._module.Stream TInt) $Heap@0)) (and (= |let#0_0_0#0#0| |_mcc#1#0@0|) ($Is DatatypeTypeType |let#0_0_0#0#0| (Tclass._module.Stream TInt)))) (and (and (= |tail#6@0| |let#0_0_0#0#0|) (= |let#0_0_1#0#0| |_mcc#0#0@0|)) (and ($Is intType (int_2_U |let#0_0_1#0#0|) TInt) (= |n#0@0| |let#0_0_1#0#0|)))) (and (and (and (and (and (=> (= (ControlFlow 0 57) 10) anon29_Then_correct) (=> (= (ControlFlow 0 57) 56) anon30_Then_correct)) (=> (= (ControlFlow 0 57) 49) anon32_Then_correct)) (=> (= (ControlFlow 0 57) 37) anon35_Then_correct)) (=> (= (ControlFlow 0 57) 12) anon38_Then_correct)) (=> (= (ControlFlow 0 57) 21) anon38_Else_correct)))))))
(let ((anon27_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (and (=> (= (ControlFlow 0 58) 57) anon28_Then_correct) (=> (= (ControlFlow 0 58) 9) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@16|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#4| T@U) (|p#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |p#2| (Tclass._module.Stream TInt)) (and (|ORD#Less| |_k'#4| |_k#0@@16|) (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#2|))) (_module.__default.InfinitePath_h ($LS $LZ) |_k'#4| (_module.__default.S2N ($LS $LZ) |p#2|)))
 :qid |InfiniteTreesdfy.610:16|
 :skolemid |1109|
 :pattern ( (_module.__default.S2N ($LS $LZ) |p#2|) (|ORD#Less| |_k'#4| |_k#0@@16|))
 :pattern ( (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#2|) (|ORD#Less| |_k'#4| |_k#0@@16|))
)) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Stream| |p#1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#p0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#p0#0| (Tclass._module.Stream TInt)) (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |$ih#p0#0|)) (|ORD#Less| |$ih#_k0#0| |_k#0@@16|)) (_module.__default.InfinitePath_h ($LS $LZ) |$ih#_k0#0| (_module.__default.S2N ($LS $LZ) |$ih#p0#0|)))
 :qid |InfiniteTreesdfy.610:16|
 :skolemid |1100|
 :pattern ( (_module.__default.InfinitePath_h ($LS $LZ) |$ih#_k0#0| (_module.__default.S2N ($LS $LZ) |$ih#p0#0|)))
)))) (and (=> (= (ControlFlow 0 59) 58) anon27_Then_correct) (=> (= (ControlFlow 0 59) 5) anon27_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |p#1| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |p#1| (Tclass._module.Stream TInt) $Heap)) (|$IsA#_module.Stream| |p#1|)) (= 5 $FunctionContextHeight)) (and (and (|_module.__default.IsNeverEndingStream#canCall| TInt |p#1|) (and (_module.__default.IsNeverEndingStream TInt ($LS $LZ) |p#1|) (ite (_module.Stream.Nil_q |p#1|) false (let ((|tail#5@@0| (_module.Stream.tail |p#1|)))
(_module.__default.IsNeverEndingStream TInt ($LS $LZ) |tail#5@@0|))))) (= (ControlFlow 0 60) 59))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
