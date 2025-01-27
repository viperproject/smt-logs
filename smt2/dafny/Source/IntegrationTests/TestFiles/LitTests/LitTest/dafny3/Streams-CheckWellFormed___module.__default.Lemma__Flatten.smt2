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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
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
(declare-fun _module.__default.StreamOfNonEmpties (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.StreamOfNonEmpties#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.PrependThenFlattenStartMarker (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.PrependThenFlattenStartMarker#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun _module.__default.StreamOfNonEmpties_h (T@U T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.__default.PrependThenFlattenNonEmpties (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.PrependThenFlattenNonEmpties#canCall| (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.StreamOfNonEmpties_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
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
(declare-fun _module.__default.Prepend (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Prepend#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Stream |##_module.Stream.Nil| |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (forall ((_module._default.StreamOfNonEmpties$_T0 T@U) ($ly T@U) (|M#0| T@U) ) (! (= (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0 ($LS $ly) |M#0|) (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0 $ly |M#0|))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0 ($LS $ly) |M#0|))
)))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.StreamOfNonEmpties$_T0@@0 T@U) ($ly@@0 T@U) (|M#0@@0| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties#canCall| _module._default.StreamOfNonEmpties$_T0@@0 |M#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@0| (Tclass._module.Stream (Tclass._module.Stream _module._default.StreamOfNonEmpties$_T0@@0))))) (and (=> (not (_module.Stream.Nil_q |M#0@@0|)) (let ((|N#1| (_module.Stream.tail |M#0@@0|)))
(let ((|s#1| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@0|))))
 (=> (_module.Stream.Cons_q |s#1|) (|_module.__default.StreamOfNonEmpties#canCall| _module._default.StreamOfNonEmpties$_T0@@0 |N#1|))))) (= (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0@@0 ($LS $ly@@0) |M#0@@0|) (ite (_module.Stream.Nil_q |M#0@@0|) true (let ((|N#0| (_module.Stream.tail |M#0@@0|)))
(let ((|s#0| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@0|))))
 (and (_module.Stream.Cons_q |s#0|) (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0@@0 $ly@@0 |N#0|))))))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( (_module.__default.StreamOfNonEmpties _module._default.StreamOfNonEmpties$_T0@@0 ($LS $ly@@0) |M#0@@0|))
))))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((_module.Stream$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h))
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h))
)))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((_module.Stream$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.PrependThenFlattenStartMarker$T T@U) ($ly@@1 T@U) (|prefix#0| T@U) (|M#0@@1| T@U) (|startMarker#0| T@U) ) (!  (=> (or (|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.PrependThenFlattenStartMarker$T |prefix#0| |M#0@@1| |startMarker#0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prefix#0| (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T)) ($Is DatatypeTypeType |M#0@@1| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T)))) ($IsBox |startMarker#0| _module._default.PrependThenFlattenStartMarker$T)))) (and (and (=> (_module.Stream.Nil_q |prefix#0|) (=> (not (_module.Stream.Nil_q |M#0@@1|)) (let ((|N#1@@0| (_module.Stream.tail |M#0@@1|)))
(let ((|s#1@@0| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@1|))))
(|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.PrependThenFlattenStartMarker$T |s#1@@0| |N#1@@0| |startMarker#0|))))) (=> (not (_module.Stream.Nil_q |prefix#0|)) (let ((|tl#1| (_module.Stream.tail |prefix#0|)))
(|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.PrependThenFlattenStartMarker$T |tl#1| |M#0@@1| |startMarker#0|)))) (= (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T ($LS $ly@@1) |prefix#0| |M#0@@1| |startMarker#0|) (ite (_module.Stream.Nil_q |prefix#0|) (ite (_module.Stream.Nil_q |M#0@@1|) |#_module.Stream.Nil| (let ((|N#0@@0| (_module.Stream.tail |M#0@@1|)))
(let ((|s#0@@0| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@1|))))
(|#_module.Stream.Cons| |startMarker#0| (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T $ly@@1 |s#0@@0| |N#0@@0| |startMarker#0|))))) (let ((|tl#0| (_module.Stream.tail |prefix#0|)))
(let ((|hd#0| (_module.Stream.head |prefix#0|)))
(|#_module.Stream.Cons| |hd#0| (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T $ly@@1 |tl#0| |M#0@@1| |startMarker#0|))))))))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T ($LS $ly@@1) |prefix#0| |M#0@@1| |startMarker#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0| T@U) ($ly@@2 T@U) (|M#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |M#0@@2| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0|))) (_module.__default.StreamOfNonEmpties |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly@@2) |M#0@@2|)) (forall ((|_k#0| T@U) ) (! (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly@@2) |_k#0| |M#0@@2|)
 :qid |Streamsdfy.211:20|
 :skolemid |673|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly@@2) |_k#0| |M#0@@2|))
)))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.__default.StreamOfNonEmpties |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly@@2) |M#0@@2|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@0| T@U) ($ly@@3 T@U) (|M#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |M#0@@3| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@0|))) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@3) |_k#0@@0| |M#0@@3|)
 :qid |Streamsdfy.211:20|
 :skolemid |673|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@3) |_k#0@@0| |M#0@@3|))
))) (_module.__default.StreamOfNonEmpties |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@3) |M#0@@3|))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( (_module.__default.StreamOfNonEmpties |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@3) |M#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.PrependThenFlattenNonEmpties$_T0 T@U) ($ly@@4 T@U) (|prefix#0@@0| T@U) (|M#0@@4| T@U) ) (!  (=> (or (|_module.__default.PrependThenFlattenNonEmpties#canCall| _module._default.PrependThenFlattenNonEmpties$_T0 |prefix#0@@0| |M#0@@4|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prefix#0@@0| (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0)) ($Is DatatypeTypeType |M#0@@4| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0)))) (_module.__default.StreamOfNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0 ($LS $LZ) |M#0@@4|)))) (and (and (=> (_module.Stream.Nil_q |prefix#0@@0|) (=> (not (_module.Stream.Nil_q |M#0@@4|)) (let ((|N#1@@1| (_module.Stream.tail |M#0@@4|)))
(let ((|s#1@@1| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@4|))))
(|_module.__default.PrependThenFlattenNonEmpties#canCall| _module._default.PrependThenFlattenNonEmpties$_T0 (_module.Stream.tail |s#1@@1|) |N#1@@1|))))) (=> (not (_module.Stream.Nil_q |prefix#0@@0|)) (let ((|tl#1@@0| (_module.Stream.tail |prefix#0@@0|)))
(|_module.__default.PrependThenFlattenNonEmpties#canCall| _module._default.PrependThenFlattenNonEmpties$_T0 |tl#1@@0| |M#0@@4|)))) (= (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0 ($LS $ly@@4) |prefix#0@@0| |M#0@@4|) (ite (_module.Stream.Nil_q |prefix#0@@0|) (ite (_module.Stream.Nil_q |M#0@@4|) |#_module.Stream.Nil| (let ((|N#0@@1| (_module.Stream.tail |M#0@@4|)))
(let ((|s#0@@1| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@4|))))
(|#_module.Stream.Cons| (_module.Stream.head |s#0@@1|) (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0 $ly@@4 (_module.Stream.tail |s#0@@1|) |N#0@@1|))))) (let ((|tl#0@@0| (_module.Stream.tail |prefix#0@@0|)))
(let ((|hd#0@@0| (_module.Stream.head |prefix#0@@0|)))
(|#_module.Stream.Cons| |hd#0@@0| (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0 $ly@@4 |tl#0@@0| |M#0@@4|))))))))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0 ($LS $ly@@4) |prefix#0@@0| |M#0@@4|))
))))
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Stream.Nil_q d) (= (DatatypeCtorId d) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( (_module.Stream.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@1| T@U) ($ly@@5 T@U) (|_k#0@@1| T@U) (|M#0@@5| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |M#0@@5|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@5| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@1|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0@@5|)))))) (let ((|N#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0@@5|)))))
(let ((|s#9| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0@@5|))))))
 (=> (_module.Stream.Cons_q |s#9|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#9|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0@@5|)) true (let ((|N#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0@@5|)))))
(let ((|s#10| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0@@5|))))))
 (and (_module.Stream.Cons_q |s#10|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#10|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@1|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| |_k'#2| |M#0@@5|))
 :qid |Streamsdfy.211:20|
 :skolemid |689|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) |_k'#2| |M#0@@5|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |M#0@@5|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0@@5|)) true (let ((|N#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0@@5|)))))
(let ((|s#8| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0@@5|))))))
 (and (_module.Stream.Cons_q |s#8|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#8|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@1|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) |_k'#2@@0| |M#0@@5|))
 :qid |Streamsdfy.211:20|
 :skolemid |688|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) |_k'#2@@0| |M#0@@5|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |690|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@5) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |M#0@@5|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Cons_q d@@1) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |Streamsdfy.6:35|
 :skolemid |744|
)))
 :qid |unknown.0:0|
 :skolemid |745|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Nil_q d@@2) (= d@@2 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( (_module.Stream.Nil_q d@@2))
)))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Stream |_module.Stream$T#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Stream |_module.Stream$T#r@@2|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Stream.Nil_q d0@@2) (_module.Stream.Nil_q d1@@2)) (and (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (=> (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (and (= (_module.Stream.head d0@@2) (_module.Stream.head d1@@2)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Stream.tail d0@@2) (_module.Stream.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@2| T@U) ($ly@@6 T@U) (|_k#0@@2| T@U) (|M#0@@6| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@2| (Lit BoxType |_k#0@@2|) |M#0@@6|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@6| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@2|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.Stream.Nil_q |M#0@@6|)) (let ((|N#6| (_module.Stream.tail |M#0@@6|)))
(let ((|s#6| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@6|))))
 (=> (_module.Stream.Cons_q |s#6|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@2| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |N#6|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |M#0@@6|) true (let ((|N#7| (_module.Stream.tail |M#0@@6|)))
(let ((|s#7| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@6|))))
 (and (_module.Stream.Cons_q |s#7|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |N#7|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@2| |_k'#1| |M#0@@6|))
 :qid |Streamsdfy.211:20|
 :skolemid |686|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) |_k'#1| |M#0@@6|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) (Lit BoxType |_k#0@@2|) |M#0@@6|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |M#0@@6|) true (let ((|N#5| (_module.Stream.tail |M#0@@6|)))
(let ((|s#5| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@6|))))
 (and (_module.Stream.Cons_q |s#5|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |N#5|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@2|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) |_k'#1@@0| |M#0@@6|))
 :qid |Streamsdfy.211:20|
 :skolemid |685|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) |_k'#1@@0| |M#0@@6|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |687|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| ($LS $ly@@6) (Lit BoxType |_k#0@@2|) |M#0@@6|))
))))
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
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.PrependThenFlattenNonEmpties$_T0@@0 T@U) ($ly@@7 T@U) (|prefix#0@@1| T@U) (|M#0@@7| T@U) ) (!  (=> (and (or (|_module.__default.PrependThenFlattenNonEmpties#canCall| _module._default.PrependThenFlattenNonEmpties$_T0@@0 |prefix#0@@1| |M#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prefix#0@@1| (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0)) ($IsAlloc DatatypeTypeType |prefix#0@@1| (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0) $Heap)) (and ($Is DatatypeTypeType |M#0@@7| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0))) ($IsAlloc DatatypeTypeType |M#0@@7| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0)) $Heap))) (_module.__default.StreamOfNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@0 ($LS $LZ) |M#0@@7|)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@0 $ly@@7 |prefix#0@@1| |M#0@@7|) (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0) $Heap))
 :qid |Streamsdfy.224:16|
 :skolemid |701|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@0 $ly@@7 |prefix#0@@1| |M#0@@7|) (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@0) $Heap))
))))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.Stream.Nil_q d0@@3) (_module.Stream.Nil_q d1@@3)) (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3))))))))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Stream| d@@3) (or (_module.Stream.Nil_q d@@3) (_module.Stream.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |752|
 :pattern ( (|$IsA#_module.Stream| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@4) (_module.Stream.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( (_module.Stream.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.PrependThenFlattenStartMarker$T@@0 T@U) ($ly@@8 T@U) (|prefix#0@@2| T@U) (|M#0@@8| T@U) (|startMarker#0@@0| T@U) ) (!  (=> (or (|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.PrependThenFlattenStartMarker$T@@0 |prefix#0@@2| |M#0@@8| |startMarker#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prefix#0@@2| (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@0)) ($Is DatatypeTypeType |M#0@@8| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@0)))) ($IsBox |startMarker#0@@0| _module._default.PrependThenFlattenStartMarker$T@@0)))) ($Is DatatypeTypeType (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@0 $ly@@8 |prefix#0@@2| |M#0@@8| |startMarker#0@@0|) (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@0)))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@0 $ly@@8 |prefix#0@@2| |M#0@@8| |startMarker#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@3| T@U) ($ly@@9 T@U) (|_k#0@@3| T@U) (|M#0@@9| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@3| |_k#0@@3| |M#0@@9|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@9| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@3|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (not (_module.Stream.Nil_q |M#0@@9|)) (let ((|N#3| (_module.Stream.tail |M#0@@9|)))
(let ((|s#3| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@9|))))
 (=> (_module.Stream.Cons_q |s#3|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@3| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |N#3|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.Nil_q |M#0@@9|) true (let ((|N#4| (_module.Stream.tail |M#0@@9|)))
(let ((|s#4| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@9|))))
 (and (_module.Stream.Cons_q |s#4|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@9 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |N#4|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@3|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@3| |_k'#0| |M#0@@9|))
 :qid |Streamsdfy.211:20|
 :skolemid |683|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@9 |_k'#0| |M#0@@9|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| ($LS $ly@@9) |_k#0@@3| |M#0@@9|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.Nil_q |M#0@@9|) true (let ((|N#2| (_module.Stream.tail |M#0@@9|)))
(let ((|s#2| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@9|))))
 (and (_module.Stream.Cons_q |s#2|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@9 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |N#2|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@3|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@9 |_k'#0@@0| |M#0@@9|))
 :qid |Streamsdfy.211:20|
 :skolemid |682|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@9 |_k'#0@@0| |M#0@@9|))
)))))))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| ($LS $ly@@9) |_k#0@@3| |M#0@@9|))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.PrependThenFlattenNonEmpties$_T0@@1 T@U) ($ly@@10 T@U) (|prefix#0@@3| T@U) (|M#0@@10| T@U) ) (!  (=> (or (|_module.__default.PrependThenFlattenNonEmpties#canCall| _module._default.PrependThenFlattenNonEmpties$_T0@@1 |prefix#0@@3| |M#0@@10|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prefix#0@@3| (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@1)) ($Is DatatypeTypeType |M#0@@10| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@1)))) (_module.__default.StreamOfNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@1 ($LS $LZ) |M#0@@10|)))) ($Is DatatypeTypeType (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@1 $ly@@10 |prefix#0@@3| |M#0@@10|) (Tclass._module.Stream _module._default.PrependThenFlattenNonEmpties$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@1 $ly@@10 |prefix#0@@3| |M#0@@10|))
))))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.Cons|)
 :qid |Streamsdfy.6:35|
 :skolemid |742|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |Streamsdfy.6:35|
 :skolemid |750|
 :pattern ( (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |Streamsdfy.6:35|
 :skolemid |751|
 :pattern ( (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@4)) _module.Stream$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@4| T@U) ($ly@@11 T@U) (|M#0@@11| T@U) (|_k#0@@4| T@U) ) (!  (=> (and ($Is DatatypeTypeType |M#0@@11| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@4|))) (= |_k#0@@4| (|ORD#FromNat| 0))) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@4| $ly@@11 |_k#0@@4| |M#0@@11|))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@4| $ly@@11 |_k#0@@4| |M#0@@11|))
))))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((|_module._default.StreamOfNonEmpties#$_T0@@5| T@U) ($ly@@12 T@U) (|_k#0@@5| T@U) (|M#0@@12| T@U) ) (! (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@5| ($LS $ly@@12) |_k#0@@5| |M#0@@12|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@5| $ly@@12 |_k#0@@5| |M#0@@12|))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@5| ($LS $ly@@12) |_k#0@@5| |M#0@@12|))
)))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@5 T@U) (_module.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Stream _module.Stream$T@@5) $h@@0))) ($IsAllocBox (_module.Stream.head d@@5) _module.Stream$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@5) _module.Stream$T@@5 $h@@0))
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
 :skolemid |765|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.PrependThenFlattenStartMarker$T@@1 T@U) ($ly@@13 T@U) (|prefix#0@@4| T@U) (|M#0@@13| T@U) (|startMarker#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.PrependThenFlattenStartMarker$T@@1 |prefix#0@@4| |M#0@@13| |startMarker#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prefix#0@@4| (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1)) ($IsAlloc DatatypeTypeType |prefix#0@@4| (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1) $Heap@@0)) (and ($Is DatatypeTypeType |M#0@@13| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1))) ($IsAlloc DatatypeTypeType |M#0@@13| (Tclass._module.Stream (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1)) $Heap@@0))) (and ($IsBox |startMarker#0@@1| _module._default.PrependThenFlattenStartMarker$T@@1) ($IsAllocBox |startMarker#0@@1| _module._default.PrependThenFlattenStartMarker$T@@1 $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@1 $ly@@13 |prefix#0@@4| |M#0@@13| |startMarker#0@@1|) (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1) $Heap@@0))
 :qid |Streamsdfy.198:16|
 :skolemid |663|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@1 $ly@@13 |prefix#0@@4| |M#0@@13| |startMarker#0@@1|) (Tclass._module.Stream _module._default.PrependThenFlattenStartMarker$T@@1) $Heap@@0))
))))
(assert (forall ((_module._default.PrependThenFlattenNonEmpties$_T0@@2 T@U) ($ly@@14 T@U) (|prefix#0@@5| T@U) (|M#0@@14| T@U) ) (! (= (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@2 ($LS $ly@@14) |prefix#0@@5| |M#0@@14|) (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@2 $ly@@14 |prefix#0@@5| |M#0@@14|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.__default.PrependThenFlattenNonEmpties _module._default.PrependThenFlattenNonEmpties$_T0@@2 ($LS $ly@@14) |prefix#0@@5| |M#0@@14|))
)))
(assert (forall ((_module._default.Prepend$T T@U) ($ly@@15 T@U) (|x#0| T@U) (|M#0@@15| T@U) ) (! (= (_module.__default.Prepend _module._default.Prepend$T ($LS $ly@@15) |x#0| |M#0@@15|) (_module.__default.Prepend _module._default.Prepend$T $ly@@15 |x#0| |M#0@@15|))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T ($LS $ly@@15) |x#0| |M#0@@15|))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Prepend$T@@0 T@U) ($ly@@16 T@U) (|x#0@@0| T@U) (|M#0@@16| T@U) ) (!  (=> (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@0 |x#0@@0| |M#0@@16|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@0| _module._default.Prepend$T@@0) ($Is DatatypeTypeType |M#0@@16| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@0)))))) ($Is DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@0 $ly@@16 |x#0@@0| |M#0@@16|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@0))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T@@0 $ly@@16 |x#0@@0| |M#0@@16|))
))))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@6 T@U) (_module.Stream$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@6) (Tclass._module.Stream _module.Stream$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |749|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@6) (Tclass._module.Stream _module.Stream$T@@7) $h@@1))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Prepend$T@@1 T@U) ($ly@@17 T@U) (|x#0@@1| T@U) (|M#0@@17| T@U) ) (!  (=> (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@1 |x#0@@1| |M#0@@17|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@1| _module._default.Prepend$T@@1) ($Is DatatypeTypeType |M#0@@17| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@1)))))) (and (=> (not (_module.Stream.Nil_q |M#0@@17|)) (let ((|N#1@@2| (_module.Stream.tail |M#0@@17|)))
(|_module.__default.Prepend#canCall| _module._default.Prepend$T@@1 |x#0@@1| |N#1@@2|))) (= (_module.__default.Prepend _module._default.Prepend$T@@1 ($LS $ly@@17) |x#0@@1| |M#0@@17|) (ite (_module.Stream.Nil_q |M#0@@17|) |#_module.Stream.Nil| (let ((|N#0@@2| (_module.Stream.tail |M#0@@17|)))
(let ((|s#0@@2| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@17|))))
(|#_module.Stream.Cons| ($Box DatatypeTypeType (|#_module.Stream.Cons| |x#0@@1| |s#0@@2|)) (_module.__default.Prepend _module._default.Prepend$T@@1 $ly@@17 |x#0@@1| |N#0@@2|))))))))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T@@1 ($LS $ly@@17) |x#0@@1| |M#0@@17|))
))))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((_module._default.PrependThenFlattenStartMarker$T@@2 T@U) ($ly@@18 T@U) (|prefix#0@@6| T@U) (|M#0@@18| T@U) (|startMarker#0@@2| T@U) ) (! (= (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@2 ($LS $ly@@18) |prefix#0@@6| |M#0@@18| |startMarker#0@@2|) (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@2 $ly@@18 |prefix#0@@6| |M#0@@18| |startMarker#0@@2|))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( (_module.__default.PrependThenFlattenStartMarker _module._default.PrependThenFlattenStartMarker$T@@2 ($LS $ly@@18) |prefix#0@@6| |M#0@@18| |startMarker#0@@2|))
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
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.Prepend$T@@2 T@U) ($ly@@19 T@U) (|x#0@@2| T@U) (|M#0@@19| T@U) ) (!  (=> (and (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@2 |x#0@@2| |M#0@@19|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |x#0@@2| _module._default.Prepend$T@@2) ($IsAllocBox |x#0@@2| _module._default.Prepend$T@@2 $Heap@@1)) (and ($Is DatatypeTypeType |M#0@@19| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2))) ($IsAlloc DatatypeTypeType |M#0@@19| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@2 $ly@@19 |x#0@@2| |M#0@@19|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap@@1))
 :qid |Streamsdfy.240:16|
 :skolemid |710|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@2 $ly@@19 |x#0@@2| |M#0@@19|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap@@1))
))))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@2)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |startMarker#0@@3| () T@U)
(declare-fun _module._default.Lemma_Flatten$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |M#0@@20| () T@U)
(declare-fun |##M#0@0| () T@U)
(declare-fun |prefix#0@@7| () T@U)
(declare-fun |##M#3@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.Lemma__Flatten)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon4_Else_correct true))
(let ((anon4_Then_correct  (=> ($IsAllocBox |startMarker#0@@3| _module._default.Lemma_Flatten$T $Heap@0) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |M#0@@20| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@0) (|_module.__default.Prepend#canCall| _module._default.Lemma_Flatten$T |startMarker#0@@3| |M#0@@20|)) (and (= |##M#0@0| (_module.__default.Prepend _module._default.Lemma_Flatten$T ($LS $LZ) |startMarker#0@@3| |M#0@@20|)) ($IsAlloc DatatypeTypeType |##M#0@0| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@0))) (and (and (|_module.__default.StreamOfNonEmpties#canCall| _module._default.Lemma_Flatten$T (_module.__default.Prepend _module._default.Lemma_Flatten$T ($LS $LZ) |startMarker#0@@3| |M#0@@20|)) (_module.__default.StreamOfNonEmpties _module._default.Lemma_Flatten$T ($LS $LZ) (_module.__default.Prepend _module._default.Lemma_Flatten$T ($LS $LZ) |startMarker#0@@3| |M#0@@20|))) (and ($IsAlloc DatatypeTypeType |prefix#0@@7| (Tclass._module.Stream _module._default.Lemma_Flatten$T) $Heap@0) ($IsAlloc DatatypeTypeType |M#0@@20| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@0)))) (and (and (and ($IsAllocBox |startMarker#0@@3| _module._default.Lemma_Flatten$T $Heap@0) (|_module.__default.PrependThenFlattenStartMarker#canCall| _module._default.Lemma_Flatten$T |prefix#0@@7| |M#0@@20| |startMarker#0@@3|)) (and ($IsAlloc DatatypeTypeType |prefix#0@@7| (Tclass._module.Stream _module._default.Lemma_Flatten$T) $Heap@0) ($IsAllocBox |startMarker#0@@3| _module._default.Lemma_Flatten$T $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |M#0@@20| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@0) (|_module.__default.Prepend#canCall| _module._default.Lemma_Flatten$T |startMarker#0@@3| |M#0@@20|)) (and (= |##M#3@0| (_module.__default.Prepend _module._default.Lemma_Flatten$T ($LS $LZ) |startMarker#0@@3| |M#0@@20|)) ($IsAlloc DatatypeTypeType |##M#3@0| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.StreamOfNonEmpties#canCall| _module._default.Lemma_Flatten$T |##M#3@0|) (or (_module.__default.StreamOfNonEmpties _module._default.Lemma_Flatten$T ($LS $LZ) |##M#3@0|) (=> (_module.Stream.Nil_q |##M#3@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.StreamOfNonEmpties#canCall| _module._default.Lemma_Flatten$T |##M#3@0|) (or (_module.__default.StreamOfNonEmpties _module._default.Lemma_Flatten$T ($LS $LZ) |##M#3@0|) (=> (not (_module.Stream.Nil_q |##M#3@0|)) (let ((|s#0@@3| ($Unbox DatatypeTypeType (_module.Stream.head |##M#3@0|))))
(_module.Stream.Cons_q |s#0@@3|)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.StreamOfNonEmpties#canCall| _module._default.Lemma_Flatten$T |##M#3@0|) (or (_module.__default.StreamOfNonEmpties _module._default.Lemma_Flatten$T ($LS $LZ) |##M#3@0|) (=> (not (_module.Stream.Nil_q |##M#3@0|)) (let ((|N#0@@3| (_module.Stream.tail |##M#3@0|)))
(_module.__default.StreamOfNonEmpties _module._default.Lemma_Flatten$T ($LS ($LS $LZ)) |N#0@@3|))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@2 $Heap@0)) (and (=> (= (ControlFlow 0 6) 2) anon4_Then_correct) (=> (= (ControlFlow 0 6) 5) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is DatatypeTypeType |prefix#0@@7| (Tclass._module.Stream _module._default.Lemma_Flatten$T)) ($IsAlloc DatatypeTypeType |prefix#0@@7| (Tclass._module.Stream _module._default.Lemma_Flatten$T) $Heap@@2)) (|$IsA#_module.Stream| |prefix#0@@7|)) (=> (and (and (and ($Is DatatypeTypeType |M#0@@20| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T))) ($IsAlloc DatatypeTypeType |M#0@@20| (Tclass._module.Stream (Tclass._module.Stream _module._default.Lemma_Flatten$T)) $Heap@@2)) (|$IsA#_module.Stream| |M#0@@20|)) (and (and ($IsBox |startMarker#0@@3| _module._default.Lemma_Flatten$T) ($IsAllocBox |startMarker#0@@3| _module._default.Lemma_Flatten$T $Heap@@2)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 7) 6)))) anon0_correct)))))
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
