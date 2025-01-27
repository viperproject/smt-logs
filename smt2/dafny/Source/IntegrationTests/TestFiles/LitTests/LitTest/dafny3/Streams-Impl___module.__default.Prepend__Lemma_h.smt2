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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.StreamOfNonEmpties_h (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.StreamOfNonEmpties_h#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
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
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Stream$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h))
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h))
)))
(assert (forall ((_module.Stream$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0| T@U) ($ly T@U) (|_k#0| T@U) (|M#0| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0| (Lit BoxType |_k#0|) (Lit DatatypeTypeType |M#0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0|)))))) (let ((|N#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0|)))))
(let ((|s#9| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0|))))))
 (=> (_module.Stream.Cons_q |s#9|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |N#9|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0|)) true (let ((|N#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0|)))))
(let ((|s#10| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0|))))))
 (and (_module.Stream.Cons_q |s#10|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |N#10|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0| |_k'#2| |M#0|))
 :qid |Streamsdfy.211:20|
 :skolemid |689|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) |_k'#2| |M#0|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |M#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |M#0|)) true (let ((|N#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |M#0|)))))
(let ((|s#8| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |M#0|))))))
 (and (_module.Stream.Cons_q |s#8|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |N#8|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) |_k'#2@@0| |M#0|))
 :qid |Streamsdfy.211:20|
 :skolemid |688|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) |_k'#2@@0| |M#0|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |690|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0| ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |M#0|)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@0| T@U) ($ly@@0 T@U) (|_k#0@@0| T@U) (|M#0@@0| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@0| (Lit BoxType |_k#0@@0|) |M#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@0|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (_module.Stream.Nil_q |M#0@@0|)) (let ((|N#6| (_module.Stream.tail |M#0@@0|)))
(let ((|s#6| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@0|))))
 (=> (_module.Stream.Cons_q |s#6|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@0| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |N#6|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |M#0@@0|) true (let ((|N#7| (_module.Stream.tail |M#0@@0|)))
(let ((|s#7| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@0|))))
 (and (_module.Stream.Cons_q |s#7|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |N#7|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@0| |_k'#1| |M#0@@0|))
 :qid |Streamsdfy.211:20|
 :skolemid |686|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) |_k'#1| |M#0@@0|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |M#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q |M#0@@0|) true (let ((|N#5| (_module.Stream.tail |M#0@@0|)))
(let ((|s#5| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@0|))))
 (and (_module.Stream.Cons_q |s#5|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |N#5|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) |_k'#1@@0| |M#0@@0|))
 :qid |Streamsdfy.211:20|
 :skolemid |685|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) |_k'#1@@0| |M#0@@0|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |687|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@0| ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |M#0@@0|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@1| T@U) ($ly@@1 T@U) (|_k#0@@1| T@U) (|M#0@@1| T@U) ) (!  (=> (or (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| |_k#0@@1| |M#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |M#0@@1| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@1|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (not (_module.Stream.Nil_q |M#0@@1|)) (let ((|N#3| (_module.Stream.tail |M#0@@1|)))
(let ((|s#3| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@1|))))
 (=> (_module.Stream.Cons_q |s#3|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#3|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.Stream.Nil_q |M#0@@1|) true (let ((|N#4| (_module.Stream.tail |M#0@@1|)))
(let ((|s#4| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@1|))))
 (and (_module.Stream.Cons_q |s#4|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| $ly@@1 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#4|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@1|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.StreamOfNonEmpties#$_T0@@1| |_k'#0| |M#0@@1|))
 :qid |Streamsdfy.211:20|
 :skolemid |683|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| $ly@@1 |_k'#0| |M#0@@1|))
))))) (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@1) |_k#0@@1| |M#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.Stream.Nil_q |M#0@@1|) true (let ((|N#2| (_module.Stream.tail |M#0@@1|)))
(let ((|s#2| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@1|))))
 (and (_module.Stream.Cons_q |s#2|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| $ly@@1 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |N#2|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@1|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| $ly@@1 |_k'#0@@0| |M#0@@1|))
 :qid |Streamsdfy.211:20|
 :skolemid |682|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| $ly@@1 |_k'#0@@0| |M#0@@1|))
)))))))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@1| ($LS $ly@@1) |_k#0@@1| |M#0@@1|))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.StreamOfNonEmpties#$_T0@@2| T@U) ($ly@@2 T@U) (|M#0@@2| T@U) (|_k#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |M#0@@2| (Tclass._module.Stream (Tclass._module.Stream |_module._default.StreamOfNonEmpties#$_T0@@2|))) (= |_k#0@@2| (|ORD#FromNat| 0))) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| $ly@@2 |_k#0@@2| |M#0@@2|))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@2| $ly@@2 |_k#0@@2| |M#0@@2|))
))))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((|_module._default.StreamOfNonEmpties#$_T0@@3| T@U) ($ly@@3 T@U) (|_k#0@@3| T@U) (|M#0@@3| T@U) ) (! (= (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| ($LS $ly@@3) |_k#0@@3| |M#0@@3|) (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| $ly@@3 |_k#0@@3| |M#0@@3|))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.StreamOfNonEmpties#$_T0@@3| ($LS $ly@@3) |_k#0@@3| |M#0@@3|))
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
(assert (forall ((_module._default.Prepend$T T@U) ($ly@@4 T@U) (|x#0| T@U) (|M#0@@4| T@U) ) (! (= (_module.__default.Prepend _module._default.Prepend$T ($LS $ly@@4) |x#0| |M#0@@4|) (_module.__default.Prepend _module._default.Prepend$T $ly@@4 |x#0| |M#0@@4|))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T ($LS $ly@@4) |x#0| |M#0@@4|))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Prepend$T@@0 T@U) ($ly@@5 T@U) (|x#0@@0| T@U) (|M#0@@5| T@U) ) (!  (=> (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@0 |x#0@@0| |M#0@@5|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@0| _module._default.Prepend$T@@0) ($Is DatatypeTypeType |M#0@@5| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@0)))))) ($Is DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@0 $ly@@5 |x#0@@0| |M#0@@5|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@0))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T@@0 $ly@@5 |x#0@@0| |M#0@@5|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Prepend$T@@1 T@U) ($ly@@6 T@U) (|x#0@@1| T@U) (|M#0@@6| T@U) ) (!  (=> (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@1 |x#0@@1| |M#0@@6|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@1| _module._default.Prepend$T@@1) ($Is DatatypeTypeType |M#0@@6| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@1)))))) (and (=> (not (_module.Stream.Nil_q |M#0@@6|)) (let ((|N#1| (_module.Stream.tail |M#0@@6|)))
(|_module.__default.Prepend#canCall| _module._default.Prepend$T@@1 |x#0@@1| |N#1|))) (= (_module.__default.Prepend _module._default.Prepend$T@@1 ($LS $ly@@6) |x#0@@1| |M#0@@6|) (ite (_module.Stream.Nil_q |M#0@@6|) |#_module.Stream.Nil| (let ((|N#0| (_module.Stream.tail |M#0@@6|)))
(let ((|s#0| ($Unbox DatatypeTypeType (_module.Stream.head |M#0@@6|))))
(|#_module.Stream.Cons| ($Box DatatypeTypeType (|#_module.Stream.Cons| |x#0@@1| |s#0|)) (_module.__default.Prepend _module._default.Prepend$T@@1 $ly@@6 |x#0@@1| |N#0|))))))))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.__default.Prepend _module._default.Prepend$T@@1 ($LS $ly@@6) |x#0@@1| |M#0@@6|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Prepend$T@@2 T@U) ($ly@@7 T@U) (|x#0@@2| T@U) (|M#0@@7| T@U) ) (!  (=> (and (or (|_module.__default.Prepend#canCall| _module._default.Prepend$T@@2 |x#0@@2| |M#0@@7|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |x#0@@2| _module._default.Prepend$T@@2) ($IsAllocBox |x#0@@2| _module._default.Prepend$T@@2 $Heap)) (and ($Is DatatypeTypeType |M#0@@7| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2))) ($IsAlloc DatatypeTypeType |M#0@@7| (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@2 $ly@@7 |x#0@@2| |M#0@@7|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap))
 :qid |Streamsdfy.240:16|
 :skolemid |710|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Prepend _module._default.Prepend$T@@2 $ly@@7 |x#0@@2| |M#0@@7|) (Tclass._module.Stream (Tclass._module.Stream _module._default.Prepend$T@@2)) $Heap))
))))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@2)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module._default.Prepend_Lemma#$T| () T@U)
(declare-fun |_k#0@@4| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |x#1| () T@U)
(declare-fun |M#1| () T@U)
(declare-fun |_mcc#0#0@0| () T@U)
(declare-fun |_mcc#1#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |N#6@0| () T@U)
(declare-fun |let#0_0_0#0#0| () T@U)
(declare-fun |s#6@0| () T@U)
(declare-fun |let#0_0_1#0#0| () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Prepend__Lemma_h)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon8_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|))) (let ((|s#4@@0| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|)))))
(_module.Stream.Cons_q |s#4@@0|))))))) (=> (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|))) (let ((|s#4@@1| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|)))))
(_module.Stream.Cons_q |s#4@@1|)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|))) (let ((|N#4@@0| (_module.Stream.tail (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|))))
(_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |N#4@@0|))))))) (=> (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|))) (let ((|N#4@@1| (_module.Stream.tail (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|))))
(_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |N#4@@1|)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (or (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k#0@@4| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |M#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@4|) (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |_k'#1@@1| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|)))
 :qid |Streamsdfy.211:20|
 :skolemid |717|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |_k'#1@@1| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS ($LS $LZ)) |x#1| |M#1|)))
))))))))))))))
(let ((anon8_Then_correct  (=> (= |M#1| (|#_module.Stream.Cons| ($Box DatatypeTypeType |_mcc#0#0@0|) |_mcc#1#0@0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0@0| (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) ($IsAlloc DatatypeTypeType |_mcc#0#0@0| (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|) $Heap@0)) (and ($Is DatatypeTypeType |_mcc#1#0@0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|))) ($IsAlloc DatatypeTypeType |_mcc#1#0@0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) $Heap@0))) (=> (and (and (and (and ($Is DatatypeTypeType |N#6@0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|))) ($IsAlloc DatatypeTypeType |N#6@0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) $Heap@0)) (= |let#0_0_0#0#0| |_mcc#1#0@0|)) (and ($Is DatatypeTypeType |let#0_0_0#0#0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|))) (= |N#6@0| |let#0_0_0#0#0|))) (and (and (and ($Is DatatypeTypeType |s#6@0| (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) ($IsAlloc DatatypeTypeType |s#6@0| (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|) $Heap@0)) (= |let#0_0_1#0#0| |_mcc#0#0@0|)) (and ($Is DatatypeTypeType |let#0_0_1#0#0| (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) (= |s#6@0| |let#0_0_1#0#0|)))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@4|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@4|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|_module.__default.Prepend#canCall| |_module._default.Prepend_Lemma#$T| |x#1| |N#6@0|) (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k##0@0| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)))) (and (and (|_module.__default.StreamOfNonEmpties_h#canCall| |_module._default.Prepend_Lemma#$T| |_k##0@0| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)) (and (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k##0@0| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)) (and (=> (< 0 (|ORD#Offset| |_k##0@0|)) (ite (_module.Stream.Nil_q (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)) true (let ((|N#3@@0| (_module.Stream.tail (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|))))
(let ((|s#3@@0| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)))))
 (and (_module.Stream.Cons_q |s#3@@0|) (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |N#3@@0|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k##0@0|) (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k'#0@@1| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)))
 :qid |Streamsdfy.211:20|
 :skolemid |716|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k'#0@@1| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |N#6@0|)))
)))))) (and (= $Heap@0 $Heap@2) (= (ControlFlow 0 8) 2)))) GeneratedUnifiedExit_correct)))))))))))
(let ((anon7_Else_correct  (=> (or (not (= |M#1| |#_module.Stream.Nil|)) (not true)) (and (=> (= (ControlFlow 0 12) 8) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (and (= |M#1| |#_module.Stream.Nil|) (= (ControlFlow 0 7) 2)) GeneratedUnifiedExit_correct)))
(let ((anon6_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (=> (= (ControlFlow 0 13) 7) anon7_Then_correct) (=> (= (ControlFlow 0 13) 12) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@4|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|x#2| T@U) (|M#2| T@U) ) (!  (=> (and (and ($IsBox |x#2| |_module._default.Prepend_Lemma#$T|) ($Is DatatypeTypeType |M#2| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)))) (|ORD#Less| |_k'#2@@1| |_k#0@@4|)) (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |_k'#2@@1| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#2| |M#2|)))
 :qid |Streamsdfy.247:16|
 :skolemid |722|
 :pattern ( (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#2| |M#2|) (|ORD#Less| |_k'#2@@1| |_k#0@@4|))
)) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.Stream| |M#1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#M0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#M0#0| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|))) (U_2_bool (Lit boolType (bool_2_U true)))) (|ORD#Less| |$ih#_k0#0| |_k#0@@4|)) (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |$ih#_k0#0| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |$ih#M0#0|)))
 :qid |Streamsdfy.247:16|
 :skolemid |720|
 :pattern ( (_module.__default.StreamOfNonEmpties_h |_module._default.Prepend_Lemma#$T| ($LS $LZ) |$ih#_k0#0| (_module.__default.Prepend |_module._default.Prepend_Lemma#$T| ($LS $LZ) |x#1| |$ih#M0#0|)))
)))) (and (=> (= (ControlFlow 0 14) 13) anon6_Then_correct) (=> (= (ControlFlow 0 14) 6) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($IsBox |x#1| |_module._default.Prepend_Lemma#$T|) ($IsAllocBox |x#1| |_module._default.Prepend_Lemma#$T| $Heap@@0))) (=> (and (and (and ($Is DatatypeTypeType |M#1| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|))) ($IsAlloc DatatypeTypeType |M#1| (Tclass._module.Stream (Tclass._module.Stream |_module._default.Prepend_Lemma#$T|)) $Heap@@0)) (|$IsA#_module.Stream| |M#1|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
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
