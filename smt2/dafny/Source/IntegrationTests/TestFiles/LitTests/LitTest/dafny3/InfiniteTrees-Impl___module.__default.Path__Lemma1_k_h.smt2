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
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.CoOption () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun |##_module.CoOption.None| () T@U)
(declare-fun |##_module.CoOption.Some| () T@U)
(declare-fun |##_module.Number.Succ| () T@U)
(declare-fun |##_module.Number.Zero| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$Tree () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ValidPath__Alt_k_h (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.ValidPath__Alt_k_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number._h4 (T@U) T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun _module.Number._h5 (T@U) T@U)
(declare-fun |_module.__default.ValidPath__Alt_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.__default.ValidPath__Alt_h (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.__default.N2S (T@U T@U) T@U)
(declare-fun |_module.__default.N2S#canCall| (T@U) Bool)
(declare-fun Tclass._module.CoOption (T@U) T@U)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun _module.__default.ValidPath_h (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.ValidPath_h#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun |_module.__default.Tail#canCall| (T@U T@U Int) Bool)
(declare-fun _module.Tree.children (T@U) T@U)
(declare-fun _module.__default.Tail (T@U T@U T@U Int) T@U)
(declare-fun |_module.Tree#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Tree.Node| (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.CoOption.None| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.ValidPath__Alt (T@U T@U T@U) Bool)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.ValidPath__Alt#canCall| (T@U T@U) Bool)
(declare-fun _module.CoOption.None_q (T@U) Bool)
(declare-fun _module.CoOption.get (T@U) T@U)
(declare-fun |_module.__default.ValidPath__Alt_k#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.ValidPath__Alt_k (T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.CoOption.Some_q (T@U) Bool)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.CoOption.Some| (T@U) T@U)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun |#_module.Number.Zero| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun _module.__default.N2S_k (T@U Int T@U) T@U)
(declare-fun |_module.__default.N2S_k#canCall| (Int T@U) Bool)
(declare-fun |$IsA#_module.CoOption| (T@U) Bool)
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
(assert (distinct TInt TORDINAL TagInt TagORDINAL alloc Tagclass._System.nat Tagclass._module.Stream Tagclass._module.Tree Tagclass._module.Number Tagclass._module.CoOption |##_module.Stream.Nil| |##_module.Stream.Cons| |##_module.Tree.Node| |##_module.CoOption.None| |##_module.CoOption.Some| |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$nat tytagFamily$Stream tytagFamily$Tree tytagFamily$Number tytagFamily$CoOption)
)
(assert  (and (= (Ctor BoxType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| T@U) (|s#0| T@U) (|num#0| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_k_h#canCall| (Lit BoxType |_k#0|) (Lit DatatypeTypeType |s#0|) (Lit DatatypeTypeType |num#0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0| Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0|))))) (let ((|next#9| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|))))) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0|))) |next#9|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0|)))))) (let ((|r#9| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|))))) (|_module.__default.ValidPath__Alt_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0|)))) |r#9|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0|)) (let ((|next#10| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0|)))))
 (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (_module.__default.ValidPath__Alt_k_h ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0|))) |next#10|))) (let ((|r#10| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0|)))))
 (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0|)))) |r#10|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0|) (|_module.__default.ValidPath__Alt_k_h#canCall| |_k'#2| |s#0| |num#0|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |976|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly) |_k'#2| |s#0| |num#0|))
))))) (= (_module.__default.ValidPath__Alt_k_h ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |s#0|) (Lit DatatypeTypeType |num#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0|)) (let ((|next#8| (Lit DatatypeTypeType (_module.Number._h4 (Lit DatatypeTypeType |num#0|)))))
 (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (_module.__default.ValidPath__Alt_k_h ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0|))) |next#8|))) (let ((|r#8| (Lit DatatypeTypeType (_module.Number._h5 (Lit DatatypeTypeType |num#0|)))))
 (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0|)))) |r#8|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0|) (_module.__default.ValidPath__Alt_k_h ($LS $ly) |_k'#2@@0| |s#0| |num#0|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |975|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly) |_k'#2@@0| |s#0| |num#0|))
)))))))
 :qid |InfiniteTreesdfy.456:20|
 :weight 3
 :skolemid |977|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |s#0|) (Lit DatatypeTypeType |num#0|)))
))))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|r#0| T@U) ) (!  (=> (or (|_module.__default.N2S#canCall| |r#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |r#0| (Tclass._module.CoOption Tclass._module.Number)))) ($Is DatatypeTypeType (_module.__default.N2S $ly@@0 |r#0|) (Tclass._module.Stream TInt)))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1006|
 :pattern ( (_module.__default.N2S $ly@@0 |r#0|))
))))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@0| T@U) (|t#0| T@U) (|p#0| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| (Lit BoxType |_k#0@@0|) |t#0| |p#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0| Tclass._module.Tree) ($Is DatatypeTypeType |p#0| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (=> (_module.Stream.Nil_q |p#0|) (|$IsA#_module.Tree| |t#0|)) (=> (not (_module.Stream.Nil_q |p#0|)) (let ((|tail#6| (_module.Stream.tail |p#0|)))
(let ((|index#6| (U_2_int ($Unbox intType (_module.Stream.head |p#0|)))))
 (=> (<= (LitInt 0) |index#6|) (and (and (_module.Tree.Node_q |t#0|) (|_module.__default.Tail#canCall| Tclass._module.Tree (_module.Tree.children |t#0|) |index#6|)) (let ((|ch#7| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0|) |index#6|)))
 (=> (_module.Stream.Cons_q |ch#7|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#7|)) |tail#6|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |p#0|) (|_module.Tree#Equal| |t#0| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#7| (_module.Stream.tail |p#0|)))
(let ((|index#7| (U_2_int ($Unbox intType (_module.Stream.head |p#0|)))))
 (and (<= (LitInt 0) |index#7|) (let ((|ch#8| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0|) |index#7|)))
 (and (_module.Stream.Cons_q |ch#8|) (_module.__default.ValidPath_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#8|)) |tail#7|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|_module.__default.ValidPath_h#canCall| |_k'#1| |t#0| |p#0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |797|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@1) |_k'#1| |t#0| |p#0|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) |t#0| |p#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |p#0|) (|_module.Tree#Equal| |t#0| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#5| (_module.Stream.tail |p#0|)))
(let ((|index#5| (U_2_int ($Unbox intType (_module.Stream.head |p#0|)))))
 (and (<= (LitInt 0) |index#5|) (let ((|ch#6| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0|) |index#5|)))
 (and (_module.Stream.Cons_q |ch#6|) (_module.__default.ValidPath_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#6|)) |tail#5|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (_module.__default.ValidPath_h ($LS $ly@@1) |_k'#1@@0| |t#0| |p#0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |796|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@1) |_k'#1@@0| |t#0| |p#0|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :weight 3
 :skolemid |798|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) |t#0| |p#0|))
))))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (= (DatatypeCtorId |#_module.CoOption.None|) |##_module.CoOption.None|))
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
(assert (forall ((_module.CoOption$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|t#0@@0| T@U) (|r#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@0| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@0| (Tclass._module.CoOption Tclass._module.Number))) (_module.__default.ValidPath__Alt ($LS $ly@@2) |t#0@@0| |r#0@@0|)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.ValidPath__Alt_h ($LS $ly@@2) |_k#0@@1| |t#0@@0| |r#0@@0|)
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |936|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@2) |_k#0@@1| |t#0@@0| |r#0@@0|))
)))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |937|
 :pattern ( (_module.__default.ValidPath__Alt ($LS $ly@@2) |t#0@@0| |r#0@@0|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0 T@U) ($ly@@3 T@U) (|s#0@@0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0 |s#0@@0| |n#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.Tail$_T0)) (<= (LitInt 0) |n#0|)))) ($Is DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0 $ly@@3 |s#0@@0| |n#0|) (Tclass._module.Stream _module._default.Tail$_T0)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0 $ly@@3 |s#0@@0| |n#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|t#0@@1| T@U) (|r#0@@1| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt#canCall| |t#0@@1| |r#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@1| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@1| (Tclass._module.CoOption Tclass._module.Number))))) (and (and (=> (_module.CoOption.None_q |r#0@@1|) (|$IsA#_module.Tree| |t#0@@1|)) (=> (not (_module.CoOption.None_q |r#0@@1|)) (let ((|num#1| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@1|))))
 (and (_module.Tree.Node_q |t#0@@1|) (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#0@@1|) |num#1|))))) (= (_module.__default.ValidPath__Alt ($LS $ly@@4) |t#0@@1| |r#0@@1|) (ite (_module.CoOption.None_q |r#0@@1|) (|_module.Tree#Equal| |t#0@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#0@@0| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@1|))))
(_module.__default.ValidPath__Alt_k $ly@@4 (_module.Tree.children |t#0@@1|) |num#0@@0|))))))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |935|
 :pattern ( (_module.__default.ValidPath__Alt ($LS $ly@@4) |t#0@@1| |r#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@0 T@U) ($ly@@5 T@U) (|s#0@@1| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@1| (LitInt |n#0@@0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.Tail$_T0@@0)) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@1| (LitInt (- |n#0@@0| 1))) (let ((|t#1| (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@5) |s#0@@1| (LitInt (- |n#0@@0| 1)))))
(|$IsA#_module.Stream| |t#1|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@5) |s#0@@1| (LitInt |n#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |s#0@@1| (let ((|t#1@@0| (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@5) |s#0@@1| (LitInt (- |n#0@@0| 1)))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@0 _module._default.Tail$_T0@@0 ($LS ($LS $LZ)) |t#1@@0| |#_module.Stream.Nil|) |t#1@@0| (_module.Stream.tail |t#1@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |590|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@5) |s#0@@1| (LitInt |n#0@@0|)))
))))
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|_k#0@@2| T@U) (|s#0@@2| T@U) (|num#0@@1| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_k_h#canCall| |_k#0@@2| |s#0@@2| |num#0@@1|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@1| Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (and (=> (_module.Number.Succ_q |num#0@@1|) (let ((|next#3| (_module.Number._h4 |num#0@@1|)))
 (=> (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@2|) |next#3|)))) (=> (not (_module.Number.Succ_q |num#0@@1|)) (let ((|r#3| (_module.Number._h5 |num#0@@1|)))
 (=> (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.ValidPath__Alt_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@2|)) |r#3|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Number.Succ_q |num#0@@1|) (let ((|next#4| (_module.Number._h4 |num#0@@1|)))
 (and (_module.Stream.Cons_q |s#0@@2|) (_module.__default.ValidPath__Alt_k_h $ly@@6 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@2|) |next#4|))) (let ((|r#4| (_module.Number._h5 |num#0@@1|)))
 (and (_module.Stream.Cons_q |s#0@@2|) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@2|)) |r#4|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|_module.__default.ValidPath__Alt_k_h#canCall| |_k'#0| |s#0@@2| |num#0@@1|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |970|
 :pattern ( (_module.__default.ValidPath__Alt_k_h $ly@@6 |_k'#0| |s#0@@2| |num#0@@1|))
))))) (= (_module.__default.ValidPath__Alt_k_h ($LS $ly@@6) |_k#0@@2| |s#0@@2| |num#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Number.Succ_q |num#0@@1|) (let ((|next#2| (_module.Number._h4 |num#0@@1|)))
 (and (_module.Stream.Cons_q |s#0@@2|) (_module.__default.ValidPath__Alt_k_h $ly@@6 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@2|) |next#2|))) (let ((|r#2| (_module.Number._h5 |num#0@@1|)))
 (and (_module.Stream.Cons_q |s#0@@2|) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@2|)) |r#2|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (_module.__default.ValidPath__Alt_k_h $ly@@6 |_k'#0@@0| |s#0@@2| |num#0@@1|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |969|
 :pattern ( (_module.__default.ValidPath__Alt_k_h $ly@@6 |_k'#0@@0| |s#0@@2| |num#0@@1|))
)))))))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |971|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@6) |_k#0@@2| |s#0@@2| |num#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|s#0@@3| T@U) (|num#0@@2| T@U) (|_k#0@@3| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@2| Tclass._module.Number)) (= |_k#0@@3| (|ORD#FromNat| 0))) (_module.__default.ValidPath__Alt_k_h $ly@@7 |_k#0@@3| |s#0@@3| |num#0@@2|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |962|
 :pattern ( (_module.__default.ValidPath__Alt_k_h $ly@@7 |_k#0@@3| |s#0@@3| |num#0@@2|))
))))
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
(assert (forall ((d@@4 T@U) ) (! (= (_module.CoOption.None_q d@@4) (= (DatatypeCtorId d@@4) |##_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1187|
 :pattern ( (_module.CoOption.None_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.CoOption.Some_q d@@5) (= (DatatypeCtorId d@@5) |##_module.CoOption.Some|))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( (_module.CoOption.Some_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Number.Succ_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Number.Succ|))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (_module.Number.Succ_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Number.Zero_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Number.Zero_q d@@7))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Stream.Cons_q d@@8) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@8 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1152|
)))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (_module.Stream.Cons_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Stream.Nil_q d@@9) (= d@@9 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (_module.Stream.Nil_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.CoOption.None_q d@@10) (= d@@10 |#_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( (_module.CoOption.None_q d@@10))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|_k#0@@4| T@U) (|t#0@@2| T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| |_k#0@@4| |t#0@@2| |p#0@@0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (=> (_module.Stream.Nil_q |p#0@@0|) (|$IsA#_module.Tree| |t#0@@2|)) (=> (not (_module.Stream.Nil_q |p#0@@0|)) (let ((|tail#3| (_module.Stream.tail |p#0@@0|)))
(let ((|index#3| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (=> (<= (LitInt 0) |index#3|) (and (and (_module.Tree.Node_q |t#0@@2|) (|_module.__default.Tail#canCall| Tclass._module.Tree (_module.Tree.children |t#0@@2|) |index#3|)) (let ((|ch#4| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@2|) |index#3|)))
 (=> (_module.Stream.Cons_q |ch#4|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#4|)) |tail#3|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Stream.Nil_q |p#0@@0|) (|_module.Tree#Equal| |t#0@@2| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#4| (_module.Stream.tail |p#0@@0|)))
(let ((|index#4| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (and (<= (LitInt 0) |index#4|) (let ((|ch#5| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@2|) |index#4|)))
 (and (_module.Stream.Cons_q |ch#5|) (_module.__default.ValidPath_h $ly@@8 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#5|)) |tail#4|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k#0@@4|) (|_module.__default.ValidPath_h#canCall| |_k'#0@@1| |t#0@@2| |p#0@@0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |794|
 :pattern ( (_module.__default.ValidPath_h $ly@@8 |_k'#0@@1| |t#0@@2| |p#0@@0|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@8) |_k#0@@4| |t#0@@2| |p#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Stream.Nil_q |p#0@@0|) (|_module.Tree#Equal| |t#0@@2| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#2| (_module.Stream.tail |p#0@@0|)))
(let ((|index#2| (U_2_int ($Unbox intType (_module.Stream.head |p#0@@0|)))))
 (and (<= (LitInt 0) |index#2|) (let ((|ch#3| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children |t#0@@2|) |index#2|)))
 (and (_module.Stream.Cons_q |ch#3|) (_module.__default.ValidPath_h $ly@@8 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#3|)) |tail#2|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@2| |_k#0@@4|) (_module.__default.ValidPath_h $ly@@8 |_k'#0@@2| |t#0@@2| |p#0@@0|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |793|
 :pattern ( (_module.__default.ValidPath_h $ly@@8 |_k'#0@@2| |t#0@@2| |p#0@@0|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |795|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@8) |_k#0@@4| |t#0@@2| |p#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@5| T@U) (|t#0@@3| T@U) (|r#0@@2| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_h#canCall| (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |t#0@@3|) (Lit DatatypeTypeType |r#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@3| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@2| (Tclass._module.CoOption Tclass._module.Number))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@2|))))) (|$IsA#_module.Tree| (Lit DatatypeTypeType |t#0@@3|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@2|)))))) (let ((|num#9| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@2|))))))
 (and (_module.Tree.Node_q (Lit DatatypeTypeType |t#0@@3|)) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@3|))) |num#9|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@2|)) (|_module.Tree#Equal| |t#0@@3| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#10| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@2|))))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@3|))) |num#10|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@1| |_k#0@@5|) (|_module.__default.ValidPath__Alt_h#canCall| |_k'#2@@1| |t#0@@3| |r#0@@2|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |952|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@9) |_k'#2@@1| |t#0@@3| |r#0@@2|))
))))) (= (_module.__default.ValidPath__Alt_h ($LS $ly@@9) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |t#0@@3|) (Lit DatatypeTypeType |r#0@@2|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.CoOption.None_q (Lit DatatypeTypeType |r#0@@2|)) (|_module.Tree#Equal| |t#0@@3| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#8| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.CoOption.get (Lit DatatypeTypeType |r#0@@2|))))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@3|))) |num#8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@2| |_k#0@@5|) (_module.__default.ValidPath__Alt_h ($LS $ly@@9) |_k'#2@@2| |t#0@@3| |r#0@@2|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |951|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@9) |_k'#2@@2| |t#0@@3| |r#0@@2|))
)))))))
 :qid |InfiniteTreesdfy.450:20|
 :weight 3
 :skolemid |953|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@9) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |t#0@@3|) (Lit DatatypeTypeType |r#0@@2|)))
))))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Stream |_module.Stream$T#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Stream |_module.Stream$T#r@@2|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Stream.Nil_q d0@@2) (_module.Stream.Nil_q d1@@2)) (and (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (=> (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (and (= (_module.Stream.head d0@@2) (_module.Stream.head d1@@2)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Stream.tail d0@@2) (_module.Stream.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.Tree.Node_q d@@11) (exists ((|a#9#0#0| T@U) ) (! (= d@@11 (|#_module.Tree.Node| |a#9#0#0|))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (_module.Tree.Node_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.CoOption.Some_q d@@12) (exists ((|a#18#0#0| T@U) ) (! (= d@@12 (|#_module.CoOption.Some| |a#18#0#0|))
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1193|
)))
 :qid |unknown.0:0|
 :skolemid |1194|
 :pattern ( (_module.CoOption.Some_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Number.Succ_q d@@13) (exists ((|a#22#0#0| T@U) ) (! (= d@@13 (|#_module.Number.Succ| |a#22#0#0|))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1214|
)))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (_module.Number.Succ_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.Number.Zero_q d@@14) (exists ((|a#28#0#0| T@U) ) (! (= d@@14 (|#_module.Number.Zero| |a#28#0#0|))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1223|
)))
 :qid |unknown.0:0|
 :skolemid |1224|
 :pattern ( (_module.Number.Zero_q d@@14))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@10 T@U) (|t#0@@4| T@U) (|r#0@@3| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@4| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@3| (Tclass._module.CoOption Tclass._module.Number))) (forall ((|_k#0@@6| T@U) ) (! (_module.__default.ValidPath__Alt_h ($LS $ly@@10) |_k#0@@6| |t#0@@4| |r#0@@3|)
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |936|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@10) |_k#0@@6| |t#0@@4| |r#0@@3|))
))) (_module.__default.ValidPath__Alt ($LS $ly@@10) |t#0@@4| |r#0@@3|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |938|
 :pattern ( (_module.__default.ValidPath__Alt ($LS $ly@@10) |t#0@@4| |r#0@@3|))
))))
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
(assert (forall (($ly@@11 T@U) (|t#0@@5| T@U) (|r#0@@4| T@U) ) (! (= (_module.__default.ValidPath__Alt ($LS $ly@@11) |t#0@@5| |r#0@@4|) (_module.__default.ValidPath__Alt $ly@@11 |t#0@@5| |r#0@@4|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |931|
 :pattern ( (_module.__default.ValidPath__Alt ($LS $ly@@11) |t#0@@5| |r#0@@4|))
)))
(assert (forall (($ly@@12 T@U) (|s#0@@4| T@U) (|num#0@@3| T@U) ) (! (= (_module.__default.ValidPath__Alt_k ($LS $ly@@12) |s#0@@4| |num#0@@3|) (_module.__default.ValidPath__Alt_k $ly@@12 |s#0@@4| |num#0@@3|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |954|
 :pattern ( (_module.__default.ValidPath__Alt_k ($LS $ly@@12) |s#0@@4| |num#0@@3|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@1 T@U) ($ly@@13 T@U) (|s#0@@5| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 (Lit DatatypeTypeType |s#0@@5|) (LitInt |n#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.Tail$_T0@@1)) (<= (LitInt 0) |n#0@@1|)))) (and (=> (or (not (= (LitInt |n#0@@1|) (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 (Lit DatatypeTypeType |s#0@@5|) (LitInt (- |n#0@@1| 1))) (let ((|t#2| (Lit DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|) (LitInt (- |n#0@@1| 1))))))
(|$IsA#_module.Stream| |t#2|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|) (LitInt |n#0@@1|)) (ite (= (LitInt |n#0@@1|) (LitInt 0)) |s#0@@5| (let ((|t#2@@0| (Lit DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|) (LitInt (- |n#0@@1| 1))))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@1 _module._default.Tail$_T0@@1 ($LS ($LS $LZ)) |t#2@@0| |#_module.Stream.Nil|) |t#2@@0| (_module.Stream.tail |t#2@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|) (LitInt |n#0@@1|)))
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
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Number) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($IsBox bx@@1 Tclass._module.Number))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#23#0#0| Tclass._module.Number))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1216|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) (|n#0@@2| Int) (|num#0@@4| T@U) ) (!  (=> (or (|_module.__default.N2S_k#canCall| |n#0@@2| |num#0@@4|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |num#0@@4| Tclass._module.Number)))) ($Is DatatypeTypeType (_module.__default.N2S_k $ly@@14 |n#0@@2| |num#0@@4|) (Tclass._module.Stream TInt)))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1012|
 :pattern ( (_module.__default.N2S_k $ly@@14 |n#0@@2| |num#0@@4|))
))))
(assert (forall (($ly@@15 T@U) (|n#0@@3| Int) (|num#0@@5| T@U) ) (! (= (_module.__default.N2S_k ($LS $ly@@15) |n#0@@3| |num#0@@5|) (_module.__default.N2S_k $ly@@15 |n#0@@3| |num#0@@5|))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1010|
 :pattern ( (_module.__default.N2S_k ($LS $ly@@15) |n#0@@3| |num#0@@5|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Tail$_T0@@2 T@U) ($ly@@16 T@U) (|s#0@@6| T@U) (|n#0@@4| Int) ) (!  (=> (and (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 |s#0@@6| |n#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.Tail$_T0@@2)) ($IsAlloc DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap)) (<= (LitInt 0) |n#0@@4|)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@2 $ly@@16 |s#0@@6| |n#0@@4|) (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap))
 :qid |InfiniteTreesdfy.9:16|
 :skolemid |587|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@2 $ly@@16 |s#0@@6| |n#0@@4|) (Tclass._module.Stream _module._default.Tail$_T0@@2) $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@17 T@U) (|s#0@@7| T@U) (|num#0@@6| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@6| Tclass._module.Number)) (_module.__default.ValidPath__Alt_k ($LS $ly@@17) |s#0@@7| |num#0@@6|)) (forall ((|_k#0@@7| T@U) ) (! (_module.__default.ValidPath__Alt_k_h ($LS $ly@@17) |_k#0@@7| |s#0@@7| |num#0@@6|)
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |959|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@17) |_k#0@@7| |s#0@@7| |num#0@@6|))
)))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |960|
 :pattern ( (_module.__default.ValidPath__Alt_k ($LS $ly@@17) |s#0@@7| |num#0@@6|))
))))
(assert (forall ((d@@15 T@U) ) (!  (=> (|$IsA#_module.Stream| d@@15) (or (_module.Stream.Nil_q d@@15) (_module.Stream.Cons_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |1160|
 :pattern ( (|$IsA#_module.Stream| d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (|$IsA#_module.CoOption| d@@16) (or (_module.CoOption.None_q d@@16) (_module.CoOption.Some_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( (|$IsA#_module.CoOption| d@@16))
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
(assert (forall ((|a#29#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#29#0#0| (Tclass._module.CoOption Tclass._module.Number)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1225|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@3 T@U) ($ly@@18 T@U) (|s#0@@8| T@U) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@8| |n#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@8| (Tclass._module.Stream _module._default.Tail$_T0@@3)) (<= (LitInt 0) |n#0@@5|)))) (and (=> (or (not (= |n#0@@5| (LitInt 0))) (not true)) (and (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@8| (- |n#0@@5| 1)) (let ((|t#0@@6| (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@18 |s#0@@8| (- |n#0@@5| 1))))
(|$IsA#_module.Stream| |t#0@@6|)))) (= (_module.__default.Tail _module._default.Tail$_T0@@3 ($LS $ly@@18) |s#0@@8| |n#0@@5|) (ite (= |n#0@@5| (LitInt 0)) |s#0@@8| (let ((|t#0@@7| (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@18 |s#0@@8| (- |n#0@@5| 1))))
(ite (|$Eq#_module.Stream| _module._default.Tail$_T0@@3 _module._default.Tail$_T0@@3 ($LS ($LS $LZ)) |t#0@@7| |#_module.Stream.Nil|) |t#0@@7| (_module.Stream.tail |t#0@@7|)))))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@3 ($LS $ly@@18) |s#0@@8| |n#0@@5|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@19 T@U) (|n#0@@6| Int) (|num#0@@7| T@U) ) (!  (=> (or (|_module.__default.N2S_k#canCall| |n#0@@6| |num#0@@7|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@6|) ($Is DatatypeTypeType |num#0@@7| Tclass._module.Number)))) (and (and (=> (_module.Number.Succ_q |num#0@@7|) (let ((|next#1| (_module.Number._h4 |num#0@@7|)))
(|_module.__default.N2S_k#canCall| (+ |n#0@@6| 1) |next#1|))) (=> (not (_module.Number.Succ_q |num#0@@7|)) (let ((|r#1| (_module.Number._h5 |num#0@@7|)))
(|_module.__default.N2S#canCall| |r#1|)))) (= (_module.__default.N2S_k ($LS $ly@@19) |n#0@@6| |num#0@@7|) (ite (_module.Number.Succ_q |num#0@@7|) (let ((|next#0| (_module.Number._h4 |num#0@@7|)))
(_module.__default.N2S_k $ly@@19 (+ |n#0@@6| 1) |next#0|)) (let ((|r#0@@5| (_module.Number._h5 |num#0@@7|)))
(|#_module.Stream.Cons| ($Box intType (int_2_U |n#0@@6|)) (_module.__default.N2S $ly@@19 |r#0@@5|)))))))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1014|
 :pattern ( (_module.__default.N2S_k ($LS $ly@@19) |n#0@@6| |num#0@@7|))
))))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@17) (_module.Stream.Cons_q d@@17)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (_module.Stream.Cons_q d@@17) ($Is DatatypeTypeType d@@17 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@17) ($Is DatatypeTypeType d@@17 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert (forall ((_module.CoOption$T@@3 T@U) (d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 (Tclass._module.CoOption _module.CoOption$T@@3)) (or (_module.CoOption.None_q d@@18) (_module.CoOption.Some_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (_module.CoOption.Some_q d@@18) ($Is DatatypeTypeType d@@18 (Tclass._module.CoOption _module.CoOption$T@@3)))
 :pattern ( (_module.CoOption.None_q d@@18) ($Is DatatypeTypeType d@@18 (Tclass._module.CoOption _module.CoOption$T@@3)))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> ($Is DatatypeTypeType d@@19 Tclass._module.Number) (or (_module.Number.Succ_q d@@19) (_module.Number.Zero_q d@@19)))
 :qid |unknown.0:0|
 :skolemid |1232|
 :pattern ( (_module.Number.Zero_q d@@19) ($Is DatatypeTypeType d@@19 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@19) ($Is DatatypeTypeType d@@19 Tclass._module.Number))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@20 T@U) (|_k#0@@8| T@U) (|t#0@@8| T@U) (|r#0@@6| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_h#canCall| |_k#0@@8| |t#0@@8| |r#0@@6|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@8| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@6| (Tclass._module.CoOption Tclass._module.Number))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (and (=> (_module.CoOption.None_q |r#0@@6|) (|$IsA#_module.Tree| |t#0@@8|)) (=> (not (_module.CoOption.None_q |r#0@@6|)) (let ((|num#3| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@6|))))
 (and (_module.Tree.Node_q |t#0@@8|) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@8|) |num#3|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (ite (_module.CoOption.None_q |r#0@@6|) (|_module.Tree#Equal| |t#0@@8| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#4| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@6|))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@8|) |num#4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#0@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@3| |_k#0@@8|) (|_module.__default.ValidPath__Alt_h#canCall| |_k'#0@@3| |t#0@@8| |r#0@@6|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |946|
 :pattern ( (_module.__default.ValidPath__Alt_h $ly@@20 |_k'#0@@3| |t#0@@8| |r#0@@6|))
))))) (= (_module.__default.ValidPath__Alt_h ($LS $ly@@20) |_k#0@@8| |t#0@@8| |r#0@@6|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (ite (_module.CoOption.None_q |r#0@@6|) (|_module.Tree#Equal| |t#0@@8| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#2| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@6|))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@8|) |num#2|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#0@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@4| |_k#0@@8|) (_module.__default.ValidPath__Alt_h $ly@@20 |_k'#0@@4| |t#0@@8| |r#0@@6|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |945|
 :pattern ( (_module.__default.ValidPath__Alt_h $ly@@20 |_k'#0@@4| |t#0@@8| |r#0@@6|))
)))))))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |947|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@20) |_k#0@@8| |t#0@@8| |r#0@@6|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@21 T@U) (|s#0@@9| T@U) (|num#0@@8| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_k#canCall| |s#0@@9| |num#0@@8|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@8| Tclass._module.Number)))) (and (and (=> (_module.Number.Succ_q |num#0@@8|) (let ((|next#1@@0| (_module.Number._h4 |num#0@@8|)))
 (=> (_module.Stream.Cons_q |s#0@@9|) (|_module.__default.ValidPath__Alt_k#canCall| (_module.Stream.tail |s#0@@9|) |next#1@@0|)))) (=> (not (_module.Number.Succ_q |num#0@@8|)) (let ((|r#1@@0| (_module.Number._h5 |num#0@@8|)))
 (=> (_module.Stream.Cons_q |s#0@@9|) (|_module.__default.ValidPath__Alt#canCall| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@9|)) |r#1@@0|))))) (= (_module.__default.ValidPath__Alt_k ($LS $ly@@21) |s#0@@9| |num#0@@8|) (ite (_module.Number.Succ_q |num#0@@8|) (let ((|next#0@@0| (_module.Number._h4 |num#0@@8|)))
 (and (_module.Stream.Cons_q |s#0@@9|) (_module.__default.ValidPath__Alt_k $ly@@21 (_module.Stream.tail |s#0@@9|) |next#0@@0|))) (let ((|r#0@@7| (_module.Number._h5 |num#0@@8|)))
 (and (_module.Stream.Cons_q |s#0@@9|) (_module.__default.ValidPath__Alt $ly@@21 ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@9|)) |r#0@@7|)))))))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |958|
 :pattern ( (_module.__default.ValidPath__Alt_k ($LS $ly@@21) |s#0@@9| |num#0@@8|))
))))
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
(assert (forall (($ly@@22 T@U) (|_k#0@@9| T@U) (|t#0@@9| T@U) (|p#0@@1| T@U) ) (! (= (_module.__default.ValidPath_h ($LS $ly@@22) |_k#0@@9| |t#0@@9| |p#0@@1|) (_module.__default.ValidPath_h $ly@@22 |_k#0@@9| |t#0@@9| |p#0@@1|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |789|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@22) |_k#0@@9| |t#0@@9| |p#0@@1|))
)))
(assert (forall (($ly@@23 T@U) (|_k#0@@10| T@U) (|t#0@@10| T@U) (|r#0@@8| T@U) ) (! (= (_module.__default.ValidPath__Alt_h ($LS $ly@@23) |_k#0@@10| |t#0@@10| |r#0@@8|) (_module.__default.ValidPath__Alt_h $ly@@23 |_k#0@@10| |t#0@@10| |r#0@@8|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |941|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@23) |_k#0@@10| |t#0@@10| |r#0@@8|))
)))
(assert (forall (($ly@@24 T@U) (|_k#0@@11| T@U) (|s#0@@10| T@U) (|num#0@@9| T@U) ) (! (= (_module.__default.ValidPath__Alt_k_h ($LS $ly@@24) |_k#0@@11| |s#0@@10| |num#0@@9|) (_module.__default.ValidPath__Alt_k_h $ly@@24 |_k#0@@11| |s#0@@10| |num#0@@9|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |965|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@24) |_k#0@@11| |s#0@@10| |num#0@@9|))
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
(assert (forall ((_module.CoOption$T@@4 T@U) ) (! (= (Tclass._module.CoOption_0 (Tclass._module.CoOption _module.CoOption$T@@4)) _module.CoOption$T@@4)
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( (Tclass._module.CoOption _module.CoOption$T@@4))
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
(assert (forall ((_module.CoOption$T@@5 T@U) (|a#19#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)) ($IsBox |a#19#0#0@@0| _module.CoOption$T@@5))
 :qid |unknown.0:0|
 :skolemid |1195|
 :pattern ( ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@25 T@U) (|_k#0@@12| T@U) (|t#0@@11| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|_module.__default.ValidPath_h#canCall| (Lit BoxType |_k#0@@12|) (Lit DatatypeTypeType |t#0@@11|) (Lit DatatypeTypeType |p#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@11| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@2| (Tclass._module.Stream TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@2|))))) (|$IsA#_module.Tree| (Lit DatatypeTypeType |t#0@@11|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@2|)))))) (let ((|tail#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@2|)))))
(let ((|index#9| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@2|)))))))
 (=> (<= (LitInt 0) |index#9|) (and (and (_module.Tree.Node_q (Lit DatatypeTypeType |t#0@@11|)) (|_module.__default.Tail#canCall| Tclass._module.Tree (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@11|))) |index#9|)) (let ((|ch#10| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@11|))) |index#9|)))
 (=> (_module.Stream.Cons_q |ch#10|) (|_module.__default.ValidPath_h#canCall| (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#10|)) |tail#9|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@2|)) (|_module.Tree#Equal| |t#0@@11| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@2|)))))
(let ((|index#10| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@2|)))))))
 (and (<= (LitInt 0) |index#10|) (let ((|ch#11| (Lit DatatypeTypeType (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@11|))) |index#10|))))
 (and (_module.Stream.Cons_q |ch#11|) (_module.__default.ValidPath_h ($LS $ly@@25) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head |ch#11|))) |tail#10|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#2@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@3| |_k#0@@12|) (|_module.__default.ValidPath_h#canCall| |_k'#2@@3| |t#0@@11| |p#0@@2|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |800|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@25) |_k'#2@@3| |t#0@@11| |p#0@@2|))
))))) (= (_module.__default.ValidPath_h ($LS $ly@@25) (Lit BoxType |_k#0@@12|) (Lit DatatypeTypeType |t#0@@11|) (Lit DatatypeTypeType |p#0@@2|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |p#0@@2|)) (|_module.Tree#Equal| |t#0@@11| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |p#0@@2|)))))
(let ((|index#8| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |p#0@@2|)))))))
 (and (<= (LitInt 0) |index#8|) (let ((|ch#9| (Lit DatatypeTypeType (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (Lit DatatypeTypeType (_module.Tree.children (Lit DatatypeTypeType |t#0@@11|))) |index#8|))))
 (and (_module.Stream.Cons_q |ch#9|) (_module.__default.ValidPath_h ($LS $ly@@25) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head |ch#9|))) |tail#8|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#2@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@4| |_k#0@@12|) (_module.__default.ValidPath_h ($LS $ly@@25) |_k'#2@@4| |t#0@@11| |p#0@@2|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |799|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@25) |_k'#2@@4| |t#0@@11| |p#0@@2|))
)))))))
 :qid |InfiniteTreesdfy.234:20|
 :weight 3
 :skolemid |801|
 :pattern ( (_module.__default.ValidPath_h ($LS $ly@@25) (Lit BoxType |_k#0@@12|) (Lit DatatypeTypeType |t#0@@11|) (Lit DatatypeTypeType |p#0@@2|)))
))))
(assert (forall (($ly@@26 T@U) (|r#0@@9| T@U) ) (! (= (_module.__default.N2S ($LS $ly@@26) |r#0@@9|) (_module.__default.N2S $ly@@26 |r#0@@9|))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1004|
 :pattern ( (_module.__default.N2S ($LS $ly@@26) |r#0@@9|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@27 T@U) (|s#0@@11| T@U) (|num#0@@10| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@11| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@10| Tclass._module.Number)) (forall ((|_k#0@@13| T@U) ) (! (_module.__default.ValidPath__Alt_k_h ($LS $ly@@27) |_k#0@@13| |s#0@@11| |num#0@@10|)
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |959|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@27) |_k#0@@13| |s#0@@11| |num#0@@10|))
))) (_module.__default.ValidPath__Alt_k ($LS $ly@@27) |s#0@@11| |num#0@@10|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |961|
 :pattern ( (_module.__default.ValidPath__Alt_k ($LS $ly@@27) |s#0@@11| |num#0@@10|))
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
(assert (forall ((d@@20 T@U) (_module.Stream$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Stream.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 (Tclass._module.Stream _module.Stream$T@@5) $h@@3))) ($IsAllocBox (_module.Stream.head d@@20) _module.Stream$T@@5 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@20) _module.Stream$T@@5 $h@@3))
)))
(assert (forall ((d@@21 T@U) (_module.CoOption$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.CoOption.Some_q d@@21) ($IsAlloc DatatypeTypeType d@@21 (Tclass._module.CoOption _module.CoOption$T@@6) $h@@4))) ($IsAllocBox (_module.CoOption.get d@@21) _module.CoOption$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( ($IsAllocBox (_module.CoOption.get d@@21) _module.CoOption$T@@6 $h@@4))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@28 T@U) (|r#0@@10| T@U) ) (!  (=> (or (|_module.__default.N2S#canCall| |r#0@@10|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |r#0@@10| (Tclass._module.CoOption Tclass._module.Number)))) (and (=> (not (_module.CoOption.None_q |r#0@@10|)) (let ((|num#1@@0| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@10|))))
(|_module.__default.N2S_k#canCall| (LitInt 0) |num#1@@0|))) (= (_module.__default.N2S ($LS $ly@@28) |r#0@@10|) (ite (_module.CoOption.None_q |r#0@@10|) |#_module.Stream.Nil| (let ((|num#0@@11| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@10|))))
(_module.__default.N2S_k $ly@@28 (LitInt 0) |num#0@@11|))))))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1008|
 :pattern ( (_module.__default.N2S ($LS $ly@@28) |r#0@@10|))
))))
(assert (forall ((_module._default.Tail$_T0@@4 T@U) ($ly@@29 T@U) (|s#0@@12| T@U) (|n#0@@7| Int) ) (! (= (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@29) |s#0@@12| |n#0@@7|) (_module.__default.Tail _module._default.Tail$_T0@@4 $ly@@29 |s#0@@12| |n#0@@7|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@29) |s#0@@12| |n#0@@7|))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert (forall ((_module.CoOption$T@@7 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.CoOption _module.CoOption$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.CoOption _module.CoOption$T@@7))))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsBox bx@@4 (Tclass._module.CoOption _module.CoOption$T@@7)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@30 T@U) (|t#0@@12| T@U) (|p#0@@3| T@U) (|_k#0@@14| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@12| Tclass._module.Tree) ($Is DatatypeTypeType |p#0@@3| (Tclass._module.Stream TInt))) (= |_k#0@@14| (|ORD#FromNat| 0))) (_module.__default.ValidPath_h $ly@@30 |_k#0@@14| |t#0@@12| |p#0@@3|))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |786|
 :pattern ( (_module.__default.ValidPath_h $ly@@30 |_k#0@@14| |t#0@@12| |p#0@@3|))
))))
(assert (forall ((d@@22 T@U) (_module.Stream$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Stream.Cons_q d@@22) ($IsAlloc DatatypeTypeType d@@22 (Tclass._module.Stream _module.Stream$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@22) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@22) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
)))
(assert (forall ((d@@23 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@23 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Tree $h@@6))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Tree $h@@6))
)))
(assert (forall ((d@@24 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@24 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@24 Tclass._module.Number $h@@7))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 Tclass._module.Number $h@@7))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@31 T@U) (|_k#0@@15| T@U) (|s#0@@13| T@U) (|num#0@@12| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_k_h#canCall| (Lit BoxType |_k#0@@15|) |s#0@@13| |num#0@@12|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@13| (Tclass._module.Stream Tclass._module.Tree)) ($Is DatatypeTypeType |num#0@@12| Tclass._module.Number)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (and (=> (_module.Number.Succ_q |num#0@@12|) (let ((|next#6| (_module.Number._h4 |num#0@@12|)))
 (=> (_module.Stream.Cons_q |s#0@@13|) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@13|) |next#6|)))) (=> (not (_module.Number.Succ_q |num#0@@12|)) (let ((|r#6| (_module.Number._h5 |num#0@@12|)))
 (=> (_module.Stream.Cons_q |s#0@@13|) (|_module.__default.ValidPath__Alt_h#canCall| (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@13|)) |r#6|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (ite (_module.Number.Succ_q |num#0@@12|) (let ((|next#7| (_module.Number._h4 |num#0@@12|)))
 (and (_module.Stream.Cons_q |s#0@@13|) (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@13|) |next#7|))) (let ((|r#7| (_module.Number._h5 |num#0@@12|)))
 (and (_module.Stream.Cons_q |s#0@@13|) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@13|)) |r#7|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@15|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@15|) (|_module.__default.ValidPath__Alt_k_h#canCall| |_k'#1@@1| |s#0@@13| |num#0@@12|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |973|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) |_k'#1@@1| |s#0@@13| |num#0@@12|))
))))) (= (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) (Lit BoxType |_k#0@@15|) |s#0@@13| |num#0@@12|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@15|)) (ite (_module.Number.Succ_q |num#0@@12|) (let ((|next#5| (_module.Number._h4 |num#0@@12|)))
 (and (_module.Stream.Cons_q |s#0@@13|) (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@13|) |next#5|))) (let ((|r#5| (_module.Number._h5 |num#0@@12|)))
 (and (_module.Stream.Cons_q |s#0@@13|) (_module.__default.ValidPath__Alt_h ($LS $LZ) (|ORD#Minus| |_k#0@@15| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@13|)) |r#5|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@15|)) (forall ((|_k'#1@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@2| |_k#0@@15|) (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) |_k'#1@@2| |s#0@@13| |num#0@@12|))
 :qid |InfiniteTreesdfy.456:20|
 :skolemid |972|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) |_k'#1@@2| |s#0@@13| |num#0@@12|))
)))))))
 :qid |InfiniteTreesdfy.456:20|
 :weight 3
 :skolemid |974|
 :pattern ( (_module.__default.ValidPath__Alt_k_h ($LS $ly@@31) (Lit BoxType |_k#0@@15|) |s#0@@13| |num#0@@12|))
))))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@32 T@U) (|_k#0@@16| T@U) (|t#0@@13| T@U) (|r#0@@11| T@U) ) (!  (=> (or (|_module.__default.ValidPath__Alt_h#canCall| (Lit BoxType |_k#0@@16|) |t#0@@13| |r#0@@11|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@13| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@11| (Tclass._module.CoOption Tclass._module.Number))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (and (=> (_module.CoOption.None_q |r#0@@11|) (|$IsA#_module.Tree| |t#0@@13|)) (=> (not (_module.CoOption.None_q |r#0@@11|)) (let ((|num#6| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@11|))))
 (and (_module.Tree.Node_q |t#0@@13|) (|_module.__default.ValidPath__Alt_k_h#canCall| (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@13|) |num#6|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (ite (_module.CoOption.None_q |r#0@@11|) (|_module.Tree#Equal| |t#0@@13| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#7| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@11|))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@13|) |num#7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@16|)) (forall ((|_k'#1@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@3| |_k#0@@16|) (|_module.__default.ValidPath__Alt_h#canCall| |_k'#1@@3| |t#0@@13| |r#0@@11|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |949|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@32) |_k'#1@@3| |t#0@@13| |r#0@@11|))
))))) (= (_module.__default.ValidPath__Alt_h ($LS $ly@@32) (Lit BoxType |_k#0@@16|) |t#0@@13| |r#0@@11|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@16|)) (ite (_module.CoOption.None_q |r#0@@11|) (|_module.Tree#Equal| |t#0@@13| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#5| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@11|))))
(_module.__default.ValidPath__Alt_k_h ($LS $LZ) (|ORD#Minus| |_k#0@@16| (|ORD#FromNat| 1)) (_module.Tree.children |t#0@@13|) |num#5|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@16|)) (forall ((|_k'#1@@4| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@4| |_k#0@@16|) (_module.__default.ValidPath__Alt_h ($LS $ly@@32) |_k'#1@@4| |t#0@@13| |r#0@@11|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |948|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@32) |_k'#1@@4| |t#0@@13| |r#0@@11|))
)))))))
 :qid |InfiniteTreesdfy.450:20|
 :weight 3
 :skolemid |950|
 :pattern ( (_module.__default.ValidPath__Alt_h ($LS $ly@@32) (Lit BoxType |_k#0@@16|) |t#0@@13| |r#0@@11|))
))))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((d@@25 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Number.Succ_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass._module.Number $h@@8))) ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@25) Tclass._module.Number $h@@8))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@25) Tclass._module.Number $h@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@33 T@U) (|t#0@@14| T@U) (|r#0@@12| T@U) (|_k#0@@17| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#0@@14| Tclass._module.Tree) ($Is DatatypeTypeType |r#0@@12| (Tclass._module.CoOption Tclass._module.Number))) (= |_k#0@@17| (|ORD#FromNat| 0))) (_module.__default.ValidPath__Alt_h $ly@@33 |_k#0@@17| |t#0@@14| |r#0@@12|))
 :qid |InfiniteTreesdfy.450:20|
 :skolemid |939|
 :pattern ( (_module.__default.ValidPath__Alt_h $ly@@33 |_k#0@@17| |t#0@@14| |r#0@@12|))
))))
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
(assert (forall ((d@@26 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Tree.Node_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.Tree $h@@9))) ($IsAlloc DatatypeTypeType (_module.Tree.children d@@26) (Tclass._module.Stream Tclass._module.Tree) $h@@9))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.children d@@26) (Tclass._module.Stream Tclass._module.Tree) $h@@9))
)))
(assert (forall ((d@@27 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Number.Zero_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Number $h@@10))) ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@27) (Tclass._module.CoOption Tclass._module.Number) $h@@10))
 :qid |unknown.0:0|
 :skolemid |1226|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@27) (Tclass._module.CoOption Tclass._module.Number) $h@@10))
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
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@11)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@11) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@11))))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@11))
)))
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
(declare-fun |t#1@@1| () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun |n##0@0| () Int)
(declare-fun |_k#0@@18| () T@U)
(declare-fun |num#6@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |##p#1@0| () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun |##p#2@0| () T@U)
(declare-fun |##r#2@0| () T@U)
(declare-fun |##p#3@0| () T@U)
(declare-fun |##r#3@0| () T@U)
(declare-fun |##p#4@0| () T@U)
(declare-fun |r#1@@1| () T@U)
(declare-fun |##p#5@0| () T@U)
(declare-fun |_mcc#0#0@0| () T@U)
(declare-fun |let#0_0_0#0#0| () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |p#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |p#0@@4| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Path__Lemma1_k_h)
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
 (=> (= (ControlFlow 0 0) 49) (let ((anon17_Then_correct  (=> (_module.Tree.Node_q |t#1@@1|) (=> (and (_module.Tree.Node_q |t#1@@1|) (= |s##0@0| (_module.Tree.children |t#1@@1|))) (and (=> (= (ControlFlow 0 26) (- 0 38)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 26) (- 0 37)) (or (or (<= 0 (LitInt 1)) (or (= |_k#0@@18| |_k#0@@18|) (|ORD#Less| |_k#0@@18| |_k#0@@18|))) (= (LitInt 0) (LitInt 1)))) (=> (or (or (<= 0 (LitInt 1)) (or (= |_k#0@@18| |_k#0@@18|) (|ORD#Less| |_k#0@@18| |_k#0@@18|))) (= (LitInt 0) (LitInt 1))) (and (=> (= (ControlFlow 0 26) (- 0 36)) (and (or (= |_k#0@@18| |_k#0@@18|) (|ORD#Less| |_k#0@@18| |_k#0@@18|)) (=> (= |_k#0@@18| |_k#0@@18|) (<= (LitInt 0) (LitInt 1))))) (=> (and (or (= |_k#0@@18| |_k#0@@18|) (|ORD#Less| |_k#0@@18| |_k#0@@18|)) (=> (= |_k#0@@18| |_k#0@@18|) (<= (LitInt 0) (LitInt 1)))) (and (=> (= (ControlFlow 0 26) (- 0 35)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (_module.Stream.Cons_q (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|)))))) (=> (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (_module.Stream.Cons_q (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|))))) (and (=> (= (ControlFlow 0 26) (- 0 34)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (let ((|next#2@@0| (_module.Number._h4 |num#6@0|)))
(_module.__default.ValidPath__Alt_k ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|)) |next#2@@0|)))))) (=> (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (let ((|next#2@@1| (_module.Number._h4 |num#6@0|)))
(_module.__default.ValidPath__Alt_k ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|)) |next#2@@1|))))) (and (=> (= (ControlFlow 0 26) (- 0 33)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (_module.Stream.Cons_q (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|)))))) (=> (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (_module.Stream.Cons_q (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|))))) (and (=> (= (ControlFlow 0 26) (- 0 32)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (let ((|r#2@@0| (_module.Number._h5 |num#6@0|)))
(_module.__default.ValidPath__Alt ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|))) |r#2@@0|)))))) (=> (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.__default.Tail Tclass._module.Tree ($LS $LZ) |s##0@0| |n##0@0|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (let ((|r#2@@1| (_module.Number._h5 |num#6@0|)))
(_module.__default.ValidPath__Alt ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) |s##0@0| |n##0@0|))) |r#2@@1|))))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|_module.__default.N2S_k#canCall| |n##0@0| |num#6@0|) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| (|#_module.Tree.Node| |s##0@0|) (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)))) (=> (and (and (and (|_module.__default.ValidPath_h#canCall| |_k#0@@18| (|#_module.Tree.Node| |s##0@0|) (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)) (and (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| (|#_module.Tree.Node| |s##0@0|) (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)) (and (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (ite (_module.Stream.Nil_q (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)) (|_module.Tree#Equal| (|#_module.Tree.Node| |s##0@0|) (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|tail#3@@0| (_module.Stream.tail (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|))))
(let ((|index#3@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|))))))
 (and (<= (LitInt 0) |index#3@@0|) (let ((|ch#3@@0| (_module.__default.Tail Tclass._module.Tree ($LS $LZ) (_module.Tree.children (|#_module.Tree.Node| |s##0@0|)) |index#3@@0|)))
 (and (_module.Stream.Cons_q |ch#3@@0|) (_module.__default.ValidPath_h ($LS $LZ) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#3@@0|)) |tail#3@@0|)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@18|)) (forall ((|_k'#0@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@5| |_k#0@@18|) (_module.__default.ValidPath_h ($LS $LZ) |_k'#0@@5| (|#_module.Tree.Node| |s##0@0|) (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |1072|
 :pattern ( (_module.__default.ValidPath_h ($LS $LZ) |_k'#0@@5| (|#_module.Tree.Node| |s##0@0|) (_module.__default.N2S_k ($LS $LZ) |n##0@0| |num#6@0|)))
)))))) (= $Heap@0 $Heap@2)) (and ($IsAlloc BoxType |_k#0@@18| TORDINAL $Heap@2) ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@2))) (and (=> (= (ControlFlow 0 26) (- 0 31)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |##n#1@0| (LitInt 0)) (=> (and (and (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@2) ($IsAlloc DatatypeTypeType |num#6@0| Tclass._module.Number $Heap@2)) (and (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|) (= |##p#1@0| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)))) (and (and ($IsAlloc DatatypeTypeType |##p#1@0| (Tclass._module.Stream TInt) $Heap@2) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (and (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (_module.Stream.Nil_q (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))))))))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (let ((|index#6@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S_k ($LS ($LS $LZ)) (LitInt 0) |num#6@0|))))))
(<= (LitInt 0) |index#6@@0|)))))))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (let ((|index#6@@1| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S_k ($LS ($LS $LZ)) (LitInt 0) |num#6@0|))))))
(let ((|ch#6@@0| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#6@@1|)))
(_module.Stream.Cons_q |ch#6@@0|))))))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (let ((|tail#6@@0| (_module.Stream.tail (_module.__default.N2S_k ($LS ($LS $LZ)) (LitInt 0) |num#6@0|))))
(let ((|index#6@@2| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S_k ($LS ($LS $LZ)) (LitInt 0) |num#6@0|))))))
(let ((|ch#6@@1| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#6@@2|)))
(_module.__default.ValidPath_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#6@@1|)) |tail#6@@0|)))))))))) (=> (= (ControlFlow 0 26) (- 0 25)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@18|)) (forall ((|_k'#2@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@5| |_k#0@@18|) (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#2@@5| |t#1@@1| (_module.__default.N2S_k ($LS ($LS $LZ)) (LitInt 0) |num#6@0|)))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |1060|
 :pattern ( (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#2@@5| |t#1@@1| (_module.__default.N2S_k ($LS ($LS $LZ)) 0 |num#6@0|)))
))))))))))))))))))))))))))))))))))))
(let ((anon16_Then_correct  (=> (and ($IsAlloc BoxType |_k#0@@18| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@0)) (=> (and (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (= |##n#2@0| (LitInt 0))) (and ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap@0) ($IsAlloc DatatypeTypeType |num#6@0| Tclass._module.Number $Heap@0))) (and (and (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|) (= |##p#2@0| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (and ($IsAlloc DatatypeTypeType |##p#2@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))))) (=> (and (and (and (and (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|))) (and ($IsAlloc BoxType |_k#0@@18| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@0))) (and (and (and (= |##r#2@0| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) ($IsAlloc DatatypeTypeType |##r#2@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0)) (and (|_module.__default.N2S#canCall| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) (= |##p#3@0| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))))) (and (and ($IsAlloc DatatypeTypeType |##p#3@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (and (|_module.__default.N2S#canCall| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))))))) (and (=> (= (ControlFlow 0 20) (- 0 24)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))))))))) (and (=> (= (ControlFlow 0 20) (- 0 23)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (let ((|index#8@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))))))
(<= (LitInt 0) |index#8@@0|)))))))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (let ((|index#8@@1| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))))))
(let ((|ch#8@@0| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#8@@1|)))
(_module.Stream.Cons_q |ch#8@@0|))))))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (let ((|tail#8@@0| (_module.Stream.tail (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))))
(let ((|index#8@@2| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))))))
(let ((|ch#8@@1| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#8@@2|)))
(_module.__default.ValidPath_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#8@@1|)) |tail#8@@0|)))))))))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@18|)) (forall ((|_k'#3| T@U) ) (!  (=> (|ORD#Less| |_k'#3| |_k#0@@18|) (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#3| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |1063|
 :pattern ( (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#3| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))))
))))))))))))))))
(let ((anon15_Then_correct  (=> (and (and ($IsAlloc BoxType |_k#0@@18| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@0)) (and (= |##r#3@0| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) ($IsAlloc DatatypeTypeType |##r#3@0| (Tclass._module.CoOption Tclass._module.Number) $Heap@0))) (=> (and (and (and (and (|_module.__default.N2S#canCall| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) (= |##p#4@0| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (and ($IsAlloc DatatypeTypeType |##p#4@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))))) (and (and (|_module.__default.N2S#canCall| (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|))))) (and (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) ($IsAlloc BoxType |_k#0@@18| TORDINAL $Heap@0)))) (and (and (and ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@0) ($IsAlloc DatatypeTypeType |r#1@@1| (Tclass._module.CoOption Tclass._module.Number) $Heap@0)) (and (|_module.__default.N2S#canCall| |r#1@@1|) (= |##p#5@0| (_module.__default.N2S ($LS $LZ) |r#1@@1|)))) (and (and ($IsAlloc DatatypeTypeType |##p#5@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (and (|_module.__default.N2S#canCall| |r#1@@1|) (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))))))))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#10@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(<= (LitInt 0) |index#10@@0|)))))))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#10@@1| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#10@@0| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#10@@1|)))
(_module.Stream.Cons_q |ch#10@@0|))))))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|tail#10@@0| (_module.Stream.tail (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))
(let ((|index#10@@2| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#10@@1| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#10@@2|)))
(_module.__default.ValidPath_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#10@@1|)) |tail#10@@0|)))))))))) (=> (= (ControlFlow 0 14) (- 0 13)) (=> (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) (|#_module.CoOption.Some| ($Box DatatypeTypeType |num#6@0|)))) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@18|)) (forall ((|_k'#4| T@U) ) (!  (=> (|ORD#Less| |_k'#4| |_k#0@@18|) (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#4| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|)))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |1066|
 :pattern ( (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#4| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|)))
)))))))))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|)))))))) (=> (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#4@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(<= (LitInt 0) |index#4@@0|))))))) (=> (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#4@@1| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(<= (LitInt 0) |index#4@@1|)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#4@@2| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#4@@0| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#4@@2|)))
(_module.Stream.Cons_q |ch#4@@0|)))))))) (=> (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|index#4@@3| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#4@@1| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#4@@3|)))
(_module.Stream.Cons_q |ch#4@@1|))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|tail#4@@0| (_module.Stream.tail (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))
(let ((|index#4@@4| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#4@@2| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#4@@4|)))
(_module.__default.ValidPath_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#4@@2|)) |tail#4@@0|))))))))) (=> (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (=> (not (_module.Stream.Nil_q (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (let ((|tail#4@@1| (_module.Stream.tail (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))
(let ((|index#4@@5| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|))))))
(let ((|ch#4@@3| (_module.__default.Tail Tclass._module.Tree ($LS ($LS $LZ)) (_module.Tree.children |t#1@@1|) |index#4@@5|)))
(_module.__default.ValidPath_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@18| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (_module.Stream.head |ch#4@@3|)) |tail#4@@1|)))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.ValidPath_h#canCall| |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (or (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@18|)) (forall ((|_k'#1@@5| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@5| |_k#0@@18|) (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#1@@5| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|)))
 :qid |InfiniteTreesdfy.234:20|
 :skolemid |1055|
 :pattern ( (_module.__default.ValidPath_h ($LS ($LS $LZ)) |_k'#1@@5| |t#1@@1| (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|)))
))))))))))))))))
(let ((anon17_Else_correct  (=> (and (=> true (_module.__default.ValidPath_h ($LS $LZ) |_k#0@@18| |t#1@@1| (_module.__default.N2S ($LS $LZ) |r#1@@1|))) (= (ControlFlow 0 39) 2)) GeneratedUnifiedExit_correct)))
(let ((anon13_Then_correct  (=> (= |r#1@@1| (|#_module.CoOption.Some| ($Box DatatypeTypeType |_mcc#0#0@0|))) (=> (and ($Is DatatypeTypeType |_mcc#0#0@0| Tclass._module.Number) ($IsAlloc DatatypeTypeType |_mcc#0#0@0| Tclass._module.Number $Heap@0)) (=> (and (and ($Is DatatypeTypeType |num#6@0| Tclass._module.Number) ($IsAlloc DatatypeTypeType |num#6@0| Tclass._module.Number $Heap@0)) (and (= |let#0_0_0#0#0| |_mcc#0#0@0|) ($Is DatatypeTypeType |let#0_0_0#0#0| Tclass._module.Number))) (=> (and (and (and (= |num#6@0| |let#0_0_0#0#0|) (_module.Tree.Node_q |t#1@@1|)) (and (= |##s#0@0| (_module.Tree.children |t#1@@1|)) ($IsAlloc DatatypeTypeType |##s#0@0| (Tclass._module.Stream Tclass._module.Tree) $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |num#6@0| Tclass._module.Number $Heap@0) (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|)) (and (_module.Tree.Node_q |t#1@@1|) (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|)))) (and (=> (= (ControlFlow 0 40) (- 0 45)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (_module.Stream.Cons_q (_module.Tree.children |t#1@@1|)))))) (and (=> (= (ControlFlow 0 40) (- 0 44)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#6@0|) (=> (_module.Number.Succ_q |num#6@0|) (let ((|next#0@@1| (_module.Number._h4 |num#6@0|)))
(_module.__default.ValidPath__Alt_k ($LS ($LS $LZ)) (_module.Stream.tail (_module.Tree.children |t#1@@1|)) |next#0@@1|)))))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (_module.Stream.Cons_q (_module.Tree.children |t#1@@1|)))))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (=> (|_module.__default.ValidPath__Alt_k#canCall| (_module.Tree.children |t#1@@1|) |num#6@0|) (or (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#6@0|) (=> (not (_module.Number.Succ_q |num#6@0|)) (let ((|r#2@@2| (_module.Number._h5 |num#6@0|)))
(_module.__default.ValidPath__Alt ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_module.Stream.head (_module.Tree.children |t#1@@1|))) |r#2@@2|)))))) (=> (_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#6@0|) (and (=> (= (ControlFlow 0 40) (- 0 41)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (and (= |##n#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@0)) (=> (and (and ($IsAlloc DatatypeTypeType |num#6@0| Tclass._module.Number $Heap@0) (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|)) (and (|_module.__default.N2S_k#canCall| (LitInt 0) |num#6@0|) (= |p#0@0| (_module.__default.N2S_k ($LS $LZ) (LitInt 0) |num#6@0|)))) (and (and (and (and (=> (= (ControlFlow 0 40) 12) anon14_Then_correct) (=> (= (ControlFlow 0 40) 14) anon15_Then_correct)) (=> (= (ControlFlow 0 40) 20) anon16_Then_correct)) (=> (= (ControlFlow 0 40) 26) anon17_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon17_Else_correct)))))))))))))))))
(let ((anon12_Else_correct  (=> (or (not (= |r#1@@1| |#_module.CoOption.None|)) (not true)) (and (=> (= (ControlFlow 0 46) 40) anon13_Then_correct) (=> (= (ControlFlow 0 46) 11) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (= |r#1@@1| |#_module.CoOption.None|) (|$IsA#_module.Tree| |t#1@@1|)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|)))) (=> (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (=> (and (and ($IsAlloc DatatypeTypeType |r#1@@1| (Tclass._module.CoOption Tclass._module.Number) $Heap@0) (|_module.__default.N2S#canCall| |r#1@@1|)) (and (|$IsA#_module.Stream| (_module.__default.N2S ($LS $LZ) |r#1@@1|)) (|_module.__default.N2S#canCall| |r#1@@1|))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.N2S ($LS ($LS $LZ)) |r#1@@1|) |#_module.Stream.Nil|)) (=> (and (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.N2S ($LS $LZ) |r#1@@1|) |#_module.Stream.Nil|) (= (ControlFlow 0 8) 2)) GeneratedUnifiedExit_correct))))))))
(let ((anon11_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@18|)) (and (=> (= (ControlFlow 0 47) 8) anon12_Then_correct) (=> (= (ControlFlow 0 47) 46) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@18|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#5| T@U) (|t#2@@1| T@U) (|r#4@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |t#2@@1| Tclass._module.Tree) ($Is DatatypeTypeType |r#4@@0| (Tclass._module.CoOption Tclass._module.Number))) (and (|ORD#Less| |_k'#5| |_k#0@@18|) (_module.__default.ValidPath__Alt ($LS $LZ) |t#2@@1| |r#4@@0|))) (_module.__default.ValidPath_h ($LS $LZ) |_k'#5| |t#2@@1| (_module.__default.N2S ($LS $LZ) |r#4@@0|)))
 :qid |InfiniteTreesdfy.560:16|
 :skolemid |1069|
 :pattern ( (_module.__default.ValidPath_h ($LS $LZ) |_k'#5| |t#2@@1| (_module.__default.N2S ($LS $LZ) |r#4@@0|)))
 :pattern ( (_module.__default.ValidPath__Alt ($LS $LZ) |t#2@@1| |r#4@@0|) (|ORD#Less| |_k'#5| |_k#0@@18|))
)) (= (ControlFlow 0 7) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (|$IsA#_module.Tree| |t#1@@1|) (|$IsA#_module.CoOption| |r#1@@1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#t0#0| T@U) (|$ih#r0#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |$ih#t0#0| Tclass._module.Tree) ($Is DatatypeTypeType |$ih#r0#0| (Tclass._module.CoOption Tclass._module.Number))) (_module.__default.ValidPath__Alt ($LS $LZ) |$ih#t0#0| |$ih#r0#0|)) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@18|) (and (= |$ih#_k0#0| |_k#0@@18|) (and (<= 0 (LitInt 1)) (< (LitInt 1) (LitInt 1)))))) (_module.__default.ValidPath_h ($LS $LZ) |$ih#_k0#0| |$ih#t0#0| (_module.__default.N2S ($LS $LZ) |$ih#r0#0|)))
 :qid |InfiniteTreesdfy.560:16|
 :skolemid |1058|
 :pattern ( (_module.__default.ValidPath_h ($LS $LZ) |$ih#_k0#0| |$ih#t0#0| (_module.__default.N2S ($LS $LZ) |$ih#r0#0|)))
)))) (and (=> (= (ControlFlow 0 48) 47) anon11_Then_correct) (=> (= (ControlFlow 0 48) 7) anon11_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |t#1@@1| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t#1@@1| Tclass._module.Tree $Heap@@0)) (|$IsA#_module.Tree| |t#1@@1|)) (and (and ($Is DatatypeTypeType |r#1@@1| (Tclass._module.CoOption Tclass._module.Number)) ($IsAlloc DatatypeTypeType |r#1@@1| (Tclass._module.CoOption Tclass._module.Number) $Heap@@0)) (|$IsA#_module.CoOption| |r#1@@1|))) (=> (and (and (and (and ($Is DatatypeTypeType |p#0@@4| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |p#0@@4| (Tclass._module.Stream TInt) $Heap@@0)) true) (= 4 $FunctionContextHeight)) (and (and (|_module.__default.ValidPath__Alt#canCall| |t#1@@1| |r#1@@1|) (and (_module.__default.ValidPath__Alt ($LS $LZ) |t#1@@1| |r#1@@1|) (ite (_module.CoOption.None_q |r#1@@1|) (|_module.Tree#Equal| |t#1@@1| (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Stream.Nil|))) (let ((|num#5@@0| ($Unbox DatatypeTypeType (_module.CoOption.get |r#1@@1|))))
(_module.__default.ValidPath__Alt_k ($LS $LZ) (_module.Tree.children |t#1@@1|) |num#5@@0|))))) (= (ControlFlow 0 49) 48))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
