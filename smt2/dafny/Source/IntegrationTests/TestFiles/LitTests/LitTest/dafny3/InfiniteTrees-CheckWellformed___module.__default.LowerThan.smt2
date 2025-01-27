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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.LowerThan (T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.__default.LowerThan_h (T@U T@U T@U Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.LowerThan_h#canCall| (T@U T@U Int) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Tree.children (T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Tree.Node| (T@U) T@U)
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
(declare-fun |_module.__default.LowerThan#canCall| (T@U Int) Bool)
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
(assert (distinct TBool TagBool alloc Tagclass._System.nat Tagclass._module.Stream Tagclass._module.Tree |##_module.Stream.Nil| |##_module.Stream.Cons| |##_module.Tree.Node| tytagFamily$nat tytagFamily$Stream tytagFamily$Tree)
)
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Tree) (_module.Tree.Node_q d))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( (_module.Tree.Node_q d) ($Is DatatypeTypeType d Tclass._module.Tree))
)))
(assert (forall ((_module.Stream$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) (|n#0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0|)) (_module.__default.LowerThan ($LS $ly) |s#0| |n#0|)) (forall ((|_k#0| T@U) ) (! (_module.__default.LowerThan_h ($LS $ly) |_k#0| |s#0| |n#0|)
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |652|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly) |_k#0| |s#0| |n#0|))
)))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |653|
 :pattern ( (_module.__default.LowerThan ($LS $ly) |s#0| |n#0|))
))))
(assert (forall ((_module.Stream$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0))
 :qid |unknown.0:0|
 :skolemid |1148|
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
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|s#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.LowerThan_h#canCall| (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@0|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@0|)))))) (let ((|tail#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|t#9| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|))))))
 (=> (<= (LitInt 1) (LitInt |n#0@@0|)) (and (and (_module.Tree.Node_q |t#9|) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.Tree.children |t#9|) (LitInt (- |n#0@@0| 1)))) (=> (_module.__default.LowerThan_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.Tree.children |t#9|) (LitInt (- |n#0@@0| 1))) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |tail#9| (LitInt |n#0@@0|))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@0|)) true (let ((|tail#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|t#10| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|))))))
 (and (and (<= (LitInt 1) (LitInt |n#0@@0|)) (_module.__default.LowerThan_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Tree.children |t#10|)) (LitInt (- |n#0@@0| 1)))) (_module.__default.LowerThan_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |tail#10| (LitInt |n#0@@0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@0|) (|_module.__default.LowerThan_h#canCall| |_k'#2| |s#0@@0| |n#0@@0|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |669|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@0) |_k'#2| |s#0@@0| |n#0@@0|))
))))) (= (_module.__default.LowerThan_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |s#0@@0|)) true (let ((|tail#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|t#8| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|))))))
 (and (and (<= (LitInt 1) (LitInt |n#0@@0|)) (_module.__default.LowerThan_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Tree.children |t#8|)) (LitInt (- |n#0@@0| 1)))) (_module.__default.LowerThan_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |tail#8| (LitInt |n#0@@0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@0|) (_module.__default.LowerThan_h ($LS $ly@@0) |_k'#2@@0| |s#0@@0| |n#0@@0|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |668|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@0) |_k'#2@@0| |s#0@@0| |n#0@@0|))
)))))))
 :qid |InfiniteTreesdfy.71:20|
 :weight 3
 :skolemid |670|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0@@0|)))
))))
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.Stream.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Tree.Node_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (_module.Tree.Node_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Stream.Cons_q d@@3) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@3 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1152|
)))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (_module.Stream.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Stream.Nil_q d@@4) (= d@@4 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (_module.Stream.Nil_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Tree.Node_q d@@5) (exists ((|a#9#0#0| T@U) ) (! (= d@@5 (|#_module.Tree.Node| |a#9#0#0|))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (_module.Tree.Node_q d@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@1| T@U) (|n#0@@1| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@1|)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.LowerThan_h ($LS $ly@@1) |_k#0@@1| |s#0@@1| |n#0@@1|)
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |652|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@1) |_k#0@@1| |s#0@@1| |n#0@@1|))
))) (_module.__default.LowerThan ($LS $ly@@1) |s#0@@1| |n#0@@1|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |654|
 :pattern ( (_module.__default.LowerThan ($LS $ly@@1) |s#0@@1| |n#0@@1|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@2 T@U) (|s#0@@2| T@U) (|n#0@@2| Int) ) (! (= (_module.__default.LowerThan ($LS $ly@@2) |s#0@@2| |n#0@@2|) (_module.__default.LowerThan $ly@@2 |s#0@@2| |n#0@@2|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |647|
 :pattern ( (_module.__default.LowerThan ($LS $ly@@2) |s#0@@2| |n#0@@2|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| T@U) (|s#0@@3| T@U) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.LowerThan_h#canCall| (Lit BoxType |_k#0@@2|) |s#0@@3| |n#0@@3|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@3|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.Stream.Nil_q |s#0@@3|)) (let ((|tail#6| (_module.Stream.tail |s#0@@3|)))
(let ((|t#6| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@3|))))
 (=> (<= (LitInt 1) |n#0@@3|) (and (and (_module.Tree.Node_q |t#6|) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Tree.children |t#6|) (- |n#0@@3| 1))) (=> (_module.__default.LowerThan_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Tree.children |t#6|) (- |n#0@@3| 1)) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#6| |n#0@@3|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |s#0@@3|) true (let ((|tail#7| (_module.Stream.tail |s#0@@3|)))
(let ((|t#7| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@3|))))
 (and (and (<= (LitInt 1) |n#0@@3|) (_module.__default.LowerThan_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Tree.children |t#7|) (- |n#0@@3| 1))) (_module.__default.LowerThan_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#7| |n#0@@3|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (|_module.__default.LowerThan_h#canCall| |_k'#1| |s#0@@3| |n#0@@3|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |666|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@3) |_k'#1| |s#0@@3| |n#0@@3|))
))))) (= (_module.__default.LowerThan_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |s#0@@3| |n#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |s#0@@3|) true (let ((|tail#5| (_module.Stream.tail |s#0@@3|)))
(let ((|t#5| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@3|))))
 (and (and (<= (LitInt 1) |n#0@@3|) (_module.__default.LowerThan_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.Tree.children |t#5|) (- |n#0@@3| 1))) (_module.__default.LowerThan_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |tail#5| |n#0@@3|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@2|) (_module.__default.LowerThan_h ($LS $ly@@3) |_k'#1@@0| |s#0@@3| |n#0@@3|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |665|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@3) |_k'#1@@0| |s#0@@3| |n#0@@3|))
)))))))
 :qid |InfiniteTreesdfy.71:20|
 :weight 3
 :skolemid |667|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |s#0@@3| |n#0@@3|))
))))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@6) (_module.Stream.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (_module.Stream.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@3| T@U) (|s#0@@4| T@U) (|n#0@@4| Int) ) (!  (=> (or (|_module.__default.LowerThan_h#canCall| |_k#0@@3| |s#0@@4| |n#0@@4|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@4|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (not (_module.Stream.Nil_q |s#0@@4|)) (let ((|tail#3| (_module.Stream.tail |s#0@@4|)))
(let ((|t#3| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@4|))))
 (=> (<= (LitInt 1) |n#0@@4|) (and (and (_module.Tree.Node_q |t#3|) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Tree.children |t#3|) (- |n#0@@4| 1))) (=> (_module.__default.LowerThan_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Tree.children |t#3|) (- |n#0@@4| 1)) (|_module.__default.LowerThan_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |tail#3| |n#0@@4|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.Nil_q |s#0@@4|) true (let ((|tail#4| (_module.Stream.tail |s#0@@4|)))
(let ((|t#4| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@4|))))
 (and (and (<= (LitInt 1) |n#0@@4|) (_module.__default.LowerThan_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Tree.children |t#4|) (- |n#0@@4| 1))) (_module.__default.LowerThan_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |tail#4| |n#0@@4|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@3|) (|_module.__default.LowerThan_h#canCall| |_k'#0| |s#0@@4| |n#0@@4|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |663|
 :pattern ( (_module.__default.LowerThan_h $ly@@4 |_k'#0| |s#0@@4| |n#0@@4|))
))))) (= (_module.__default.LowerThan_h ($LS $ly@@4) |_k#0@@3| |s#0@@4| |n#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.Nil_q |s#0@@4|) true (let ((|tail#2| (_module.Stream.tail |s#0@@4|)))
(let ((|t#2| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@4|))))
 (and (and (<= (LitInt 1) |n#0@@4|) (_module.__default.LowerThan_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Tree.children |t#2|) (- |n#0@@4| 1))) (_module.__default.LowerThan_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |tail#2| |n#0@@4|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@3|) (_module.__default.LowerThan_h $ly@@4 |_k'#0@@0| |s#0@@4| |n#0@@4|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |662|
 :pattern ( (_module.__default.LowerThan_h $ly@@4 |_k'#0@@0| |s#0@@4| |n#0@@4|))
)))))))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |664|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@4) |_k#0@@3| |s#0@@4| |n#0@@4|))
))))
(assert (forall (($ly@@5 T@U) (|_k#0@@4| T@U) (|s#0@@5| T@U) (|n#0@@5| Int) ) (! (= (_module.__default.LowerThan_h ($LS $ly@@5) |_k#0@@4| |s#0@@5| |n#0@@5|) (_module.__default.LowerThan_h $ly@@5 |_k#0@@4| |s#0@@5| |n#0@@5|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |658|
 :pattern ( (_module.__default.LowerThan_h ($LS $ly@@5) |_k#0@@4| |s#0@@5| |n#0@@5|))
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
(assert (forall ((|a#13#0#0| T@U) ) (! (< (DtRank |a#13#0#0|) (DtRank (|#_module.Tree.Node| |a#13#0#0|)))
 :qid |InfiniteTreesdfy.61:22|
 :skolemid |1181|
 :pattern ( (|#_module.Tree.Node| |a#13#0#0|))
)))
(assert (forall ((d@@7 T@U) (_module.Stream$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Stream _module.Stream$T@@5) $h@@1))) ($IsAllocBox (_module.Stream.head d@@7) _module.Stream$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@7) _module.Stream$T@@5 $h@@1))
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
(assert (forall ((d@@8 T@U) (_module.Stream$T@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Stream.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Stream _module.Stream$T@@7) $h@@2))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@8) (Tclass._module.Stream _module.Stream$T@@7) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@8) (Tclass._module.Stream _module.Stream$T@@7) $h@@2))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@9 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Tree $h@@3))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Tree $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|s#0@@6| T@U) (|n#0@@6| Int) ) (!  (=> (or (|_module.__default.LowerThan#canCall| |s#0@@6| |n#0@@6|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@6|)))) (and (=> (not (_module.Stream.Nil_q |s#0@@6|)) (let ((|tail#1| (_module.Stream.tail |s#0@@6|)))
(let ((|t#1| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@6|))))
 (=> (<= (LitInt 1) |n#0@@6|) (and (and (_module.Tree.Node_q |t#1|) (|_module.__default.LowerThan#canCall| (_module.Tree.children |t#1|) (- |n#0@@6| 1))) (=> (_module.__default.LowerThan $ly@@6 (_module.Tree.children |t#1|) (- |n#0@@6| 1)) (|_module.__default.LowerThan#canCall| |tail#1| |n#0@@6|))))))) (= (_module.__default.LowerThan ($LS $ly@@6) |s#0@@6| |n#0@@6|) (ite (_module.Stream.Nil_q |s#0@@6|) true (let ((|tail#0| (_module.Stream.tail |s#0@@6|)))
(let ((|t#0| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@6|))))
 (and (and (<= (LitInt 1) |n#0@@6|) (_module.__default.LowerThan $ly@@6 (_module.Tree.children |t#0|) (- |n#0@@6| 1))) (_module.__default.LowerThan $ly@@6 |tail#0| |n#0@@6|))))))))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |651|
 :pattern ( (_module.__default.LowerThan ($LS $ly@@6) |s#0@@6| |n#0@@6|))
))))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|s#0@@7| T@U) (|n#0@@7| Int) (|_k#0@@5| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@7|)) (= |_k#0@@5| (|ORD#FromNat| 0))) (_module.__default.LowerThan_h $ly@@7 |_k#0@@5| |s#0@@7| |n#0@@7|))
 :qid |InfiniteTreesdfy.71:20|
 :skolemid |655|
 :pattern ( (_module.__default.LowerThan_h $ly@@7 |_k#0@@5| |s#0@@7| |n#0@@7|))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@10 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Tree.Node_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Tree $h@@4))) ($IsAlloc DatatypeTypeType (_module.Tree.children d@@10) (Tclass._module.Stream Tclass._module.Tree) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.children d@@10) (Tclass._module.Stream Tclass._module.Tree) $h@@4))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@0))
)))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@5)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@5))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@8| () Int)
(declare-fun $LZ () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun |tail#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |s#0@@8| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.LowerThan)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (<= (LitInt 1) |n#0@@8|) (_module.__default.LowerThan ($LS $LZ) (_module.Tree.children |t#Z#0@0|) (- |n#0@@8| 1)))) (= (ControlFlow 0 6) 4)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (<= (LitInt 1) |n#0@@8|) (_module.__default.LowerThan ($LS $LZ) (_module.Tree.children |t#Z#0@0|) (- |n#0@@8| 1))) (=> (and (and ($IsAlloc DatatypeTypeType |tail#Z#0@0| (Tclass._module.Stream Tclass._module.Tree) $Heap) ($IsAlloc intType (int_2_U |n#0@@8|) Tclass._System.nat $Heap)) (and (|_module.__default.LowerThan#canCall| |tail#Z#0@0| |n#0@@8|) (= (ControlFlow 0 5) 4))) anon9_correct))))
(let ((anon15_Else_correct  (=> (< |n#0@@8| (LitInt 1)) (and (=> (= (ControlFlow 0 9) 5) anon16_Then_correct) (=> (= (ControlFlow 0 9) 6) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (and (<= (LitInt 1) |n#0@@8|) (_module.Tree.Node_q |t#Z#0@0|)) (and (= |##s#0@0| (_module.Tree.children |t#Z#0@0|)) ($IsAlloc DatatypeTypeType |##s#0@0| (Tclass._module.Stream Tclass._module.Tree) $Heap))) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($Is intType (int_2_U (- |n#0@@8| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@8| 1)) Tclass._System.nat) (=> (= |##n#0@0| (- |n#0@@8| 1)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap) (|_module.__default.LowerThan#canCall| (_module.Tree.children |t#Z#0@0|) (- |n#0@@8| 1))) (and (=> (= (ControlFlow 0 7) 5) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))))))
(let ((anon14_Then_correct  (=> (= |s#0@@8| (|#_module.Stream.Cons| ($Box DatatypeTypeType |_mcc#0#0|) |_mcc#1#0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Tree) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.Stream Tclass._module.Tree))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Stream Tclass._module.Tree)))) (and (and (= |tail#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#1#0#0| Tclass._module.Tree) (= |t#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 10) 7) anon15_Then_correct) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct))))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |s#0@@8| |#_module.Stream.Nil|)) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon14_Then_correct) (=> (= (ControlFlow 0 11) 3) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon12_Then_correct) (=> (= (ControlFlow 0 12) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |s#0@@8| (Tclass._module.Stream Tclass._module.Tree)) (<= (LitInt 0) |n#0@@8|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
