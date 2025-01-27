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
(declare-fun Tag (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.atmost_h (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.atmost_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Stream () T@U)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.Stream.head (T@U) Int)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.__default.atmost (T@U T@U T@U) Bool)
(declare-fun _module.__default.zeros (T@U) T@U)
(declare-fun |_module.__default.zeros#canCall| () Bool)
(declare-fun |#_module.Stream.Cons| (Int T@U) T@U)
(declare-fun _module.__default.ones (T@U) T@U)
(declare-fun |_module.__default.ones#canCall| () Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.atmost#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Stream |##_module.Stream.Nil| |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |1300|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |1308|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert  (and (= (Ctor BoxType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.atmost_h#canCall| (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass._module.Stream) ($Is DatatypeTypeType |b#0| Tclass._module.Stream)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType |a#0|)))))) (let ((|t#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |a#0|)))))
(let ((|h#9| (LitInt (_module.Stream.head (Lit DatatypeTypeType |a#0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Cons_q (Lit DatatypeTypeType |b#0|))))) (=> (<= |h#9| (LitInt (_module.Stream.head (Lit DatatypeTypeType |b#0|)))) (|_module.__default.atmost_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |b#0|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |a#0|)) true (let ((|t#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |a#0|)))))
(let ((|h#10| (LitInt (_module.Stream.head (Lit DatatypeTypeType |a#0|)))))
 (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |b#0|)) (<= |h#10| (LitInt (_module.Stream.head (Lit DatatypeTypeType |b#0|))))) (_module.__default.atmost_h ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |b#0|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0|) (|_module.__default.atmost_h#canCall| |_k'#2| |a#0| |b#0|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1831|
 :pattern ( (_module.__default.atmost_h ($LS $ly) |_k'#2| |a#0| |b#0|))
))))) (= (_module.__default.atmost_h ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.Stream.Nil_q (Lit DatatypeTypeType |a#0|)) true (let ((|t#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |a#0|)))))
(let ((|h#8| (LitInt (_module.Stream.head (Lit DatatypeTypeType |a#0|)))))
 (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |b#0|)) (<= |h#8| (LitInt (_module.Stream.head (Lit DatatypeTypeType |b#0|))))) (_module.__default.atmost_h ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |b#0|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0|) (_module.__default.atmost_h ($LS $ly) |_k'#2@@0| |a#0| |b#0|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1830|
 :pattern ( (_module.__default.atmost_h ($LS $ly) |_k'#2@@0| |a#0| |b#0|))
)))))))
 :qid |CoPrefixdfy.25:20|
 :weight 3
 :skolemid |1832|
 :pattern ( (_module.__default.atmost_h ($LS $ly) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0|) (Lit DatatypeTypeType |b#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@0| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@0| Tclass._module.Stream)) (_module.__default.atmost ($LS $ly@@0) |a#0@@0| |b#0@@0|)) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.atmost_h ($LS $ly@@0) |_k#0@@0| |a#0@@0| |b#0@@0|)
 :qid |CoPrefixdfy.25:20|
 :skolemid |1815|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@0) |_k#0@@0| |a#0@@0| |b#0@@0|))
)))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1816|
 :pattern ( (_module.__default.atmost ($LS $ly@@0) |a#0@@0| |b#0@@0|))
))))
(assert ($Is DatatypeTypeType |#_module.Stream.Nil| Tclass._module.Stream))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1227|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1225|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ) (!  (=> (or |_module.__default.zeros#canCall| (< 1 $FunctionContextHeight)) (and |_module.__default.zeros#canCall| (= (_module.__default.zeros ($LS $ly@@1)) (Lit DatatypeTypeType (|#_module.Stream.Cons| (LitInt 0) (Lit DatatypeTypeType (_module.__default.zeros $ly@@1)))))))
 :qid |CoPrefixdfy.15:16|
 :skolemid |1802|
 :pattern ( (_module.__default.zeros ($LS $ly@@1)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) (and |_module.__default.ones#canCall| (= (_module.__default.ones ($LS $ly@@2)) (Lit DatatypeTypeType (|#_module.Stream.Cons| (LitInt 1) (Lit DatatypeTypeType (_module.__default.ones $ly@@2)))))))
 :qid |CoPrefixdfy.20:16|
 :skolemid |1808|
 :pattern ( (_module.__default.ones ($LS $ly@@2)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Stream.Nil_q d) (= (DatatypeCtorId d) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( (_module.Stream.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1236|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@1| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@1| Tclass._module.Stream)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.atmost_h ($LS $ly@@3) |_k#0@@1| |a#0@@1| |b#0@@1|)
 :qid |CoPrefixdfy.25:20|
 :skolemid |1815|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@3) |_k#0@@1| |a#0@@1| |b#0@@1|))
))) (_module.__default.atmost ($LS $ly@@3) |a#0@@1| |b#0@@1|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1817|
 :pattern ( (_module.__default.atmost ($LS $ly@@3) |a#0@@1| |b#0@@1|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Cons_q d@@1) (exists ((|a#4#0#0| Int) (|a#4#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |CoPrefixdfy.6:32|
 :skolemid |1949|
)))
 :qid |unknown.0:0|
 :skolemid |1950|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Nil_q d@@2) (= d@@2 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( (_module.Stream.Nil_q d@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@2| T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.atmost_h#canCall| |_k#0@@2| |a#0@@2| |b#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@2| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@2| Tclass._module.Stream)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.Stream.Nil_q |a#0@@2|)) (let ((|t#3| (_module.Stream.tail |a#0@@2|)))
(let ((|h#3| (_module.Stream.head |a#0@@2|)))
 (=> (_module.Stream.Cons_q |b#0@@2|) (=> (<= |h#3| (_module.Stream.head |b#0@@2|)) (|_module.__default.atmost_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#3| (_module.Stream.tail |b#0@@2|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |a#0@@2|) true (let ((|t#4| (_module.Stream.tail |a#0@@2|)))
(let ((|h#4| (_module.Stream.head |a#0@@2|)))
 (and (and (_module.Stream.Cons_q |b#0@@2|) (<= |h#4| (_module.Stream.head |b#0@@2|))) (_module.__default.atmost_h $ly@@4 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#4| (_module.Stream.tail |b#0@@2|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|_module.__default.atmost_h#canCall| |_k'#0| |a#0@@2| |b#0@@2|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1825|
 :pattern ( (_module.__default.atmost_h $ly@@4 |_k'#0| |a#0@@2| |b#0@@2|))
))))) (= (_module.__default.atmost_h ($LS $ly@@4) |_k#0@@2| |a#0@@2| |b#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.Nil_q |a#0@@2|) true (let ((|t#2| (_module.Stream.tail |a#0@@2|)))
(let ((|h#2| (_module.Stream.head |a#0@@2|)))
 (and (and (_module.Stream.Cons_q |b#0@@2|) (<= |h#2| (_module.Stream.head |b#0@@2|))) (_module.__default.atmost_h $ly@@4 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#2| (_module.Stream.tail |b#0@@2|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (_module.__default.atmost_h $ly@@4 |_k'#0@@0| |a#0@@2| |b#0@@2|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1824|
 :pattern ( (_module.__default.atmost_h $ly@@4 |_k'#0@@0| |a#0@@2| |b#0@@2|))
)))))))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1826|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@4) |_k#0@@2| |a#0@@2| |b#0@@2|))
))))
(assert (forall (($ly@@5 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (! (= (_module.__default.atmost ($LS $ly@@5) |a#0@@3| |b#0@@3|) (_module.__default.atmost $ly@@5 |a#0@@3| |b#0@@3|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1810|
 :pattern ( (_module.__default.atmost ($LS $ly@@5) |a#0@@3| |b#0@@3|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |1305|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |1296|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |1299|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Stream) (or (_module.Stream.Nil_q d@@3) (_module.Stream.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1958|
 :pattern ( (_module.Stream.Cons_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Stream))
 :pattern ( (_module.Stream.Nil_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Stream))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@3| T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (! (= (_module.__default.atmost_h ($LS $ly@@6) |_k#0@@3| |a#0@@4| |b#0@@4|) (_module.__default.atmost_h $ly@@6 |_k#0@@3| |a#0@@4| |b#0@@4|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1820|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@6) |_k#0@@3| |a#0@@4| |b#0@@4|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |1295|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.Cons|)
 :qid |CoPrefixdfy.6:32|
 :skolemid |1947|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |CoPrefixdfy.6:32|
 :skolemid |1954|
 :pattern ( (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |CoPrefixdfy.6:32|
 :skolemid |1955|
 :pattern ( (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1235|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |1298|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (!  (=> (or (|_module.__default.atmost#canCall| |a#0@@5| |b#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@5| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@5| Tclass._module.Stream)))) (and (=> (not (_module.Stream.Nil_q |a#0@@5|)) (let ((|t#1| (_module.Stream.tail |a#0@@5|)))
(let ((|h#1| (_module.Stream.head |a#0@@5|)))
 (=> (_module.Stream.Cons_q |b#0@@5|) (=> (<= |h#1| (_module.Stream.head |b#0@@5|)) (|_module.__default.atmost#canCall| |t#1| (_module.Stream.tail |b#0@@5|))))))) (= (_module.__default.atmost ($LS $ly@@7) |a#0@@5| |b#0@@5|) (ite (_module.Stream.Nil_q |a#0@@5|) true (let ((|t#0| (_module.Stream.tail |a#0@@5|)))
(let ((|h#0| (_module.Stream.head |a#0@@5|)))
 (and (and (_module.Stream.Cons_q |b#0@@5|) (<= |h#0| (_module.Stream.head |b#0@@5|))) (_module.__default.atmost $ly@@7 |t#0| (_module.Stream.tail |b#0@@5|)))))))))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1814|
 :pattern ( (_module.__default.atmost ($LS $ly@@7) |a#0@@5| |b#0@@5|))
))))
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
 :skolemid |2061|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) ) (!  (=> (or |_module.__default.zeros#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.zeros $ly@@8) Tclass._module.Stream))
 :qid |CoPrefixdfy.15:16|
 :skolemid |1800|
 :pattern ( (_module.__default.zeros $ly@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.ones $ly@@9) Tclass._module.Stream))
 :qid |CoPrefixdfy.20:16|
 :skolemid |1806|
 :pattern ( (_module.__default.ones $ly@@9))
))))
(assert (forall (($ly@@10 T@U) ) (! (= (_module.__default.zeros ($LS $ly@@10)) (_module.__default.zeros $ly@@10))
 :qid |CoPrefixdfy.15:16|
 :skolemid |1798|
 :pattern ( (_module.__default.zeros ($LS $ly@@10)))
)))
(assert (forall (($ly@@11 T@U) ) (! (= (_module.__default.ones ($LS $ly@@11)) (_module.__default.ones $ly@@11))
 :qid |CoPrefixdfy.20:16|
 :skolemid |1804|
 :pattern ( (_module.__default.ones ($LS $ly@@11)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |1297|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (= (Tag Tclass._module.Stream) Tagclass._module.Stream))
(assert (= (TagFamily Tclass._module.Stream) tytagFamily$Stream))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) (|_k#0@@4| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@6| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@6| Tclass._module.Stream)) (= |_k#0@@4| (|ORD#FromNat| 0))) (_module.__default.atmost_h $ly@@12 |_k#0@@4| |a#0@@6| |b#0@@6|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1818|
 :pattern ( (_module.__default.atmost_h $ly@@12 |_k#0@@4| |a#0@@6| |b#0@@6|))
))))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |1306|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1228|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1226|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) Tclass._module.Stream)  (and ($Is intType (int_2_U |a#5#0#0|) TInt) ($Is DatatypeTypeType |a#5#1#0| Tclass._module.Stream)))
 :qid |CoPrefixdfy.6:32|
 :skolemid |1951|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) Tclass._module.Stream))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@13 T@U) (|_k#0@@5| T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (or (|_module.__default.atmost_h#canCall| (Lit BoxType |_k#0@@5|) |a#0@@7| |b#0@@7|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@7| Tclass._module.Stream) ($Is DatatypeTypeType |b#0@@7| Tclass._module.Stream)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (not (_module.Stream.Nil_q |a#0@@7|)) (let ((|t#6| (_module.Stream.tail |a#0@@7|)))
(let ((|h#6| (_module.Stream.head |a#0@@7|)))
 (=> (_module.Stream.Cons_q |b#0@@7|) (=> (<= |h#6| (_module.Stream.head |b#0@@7|)) (|_module.__default.atmost_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#6| (_module.Stream.tail |b#0@@7|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.Stream.Nil_q |a#0@@7|) true (let ((|t#7| (_module.Stream.tail |a#0@@7|)))
(let ((|h#7| (_module.Stream.head |a#0@@7|)))
 (and (and (_module.Stream.Cons_q |b#0@@7|) (<= |h#7| (_module.Stream.head |b#0@@7|))) (_module.__default.atmost_h ($LS $ly@@13) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#7| (_module.Stream.tail |b#0@@7|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@5|) (|_module.__default.atmost_h#canCall| |_k'#1| |a#0@@7| |b#0@@7|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1828|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@13) |_k'#1| |a#0@@7| |b#0@@7|))
))))) (= (_module.__default.atmost_h ($LS $ly@@13) (Lit BoxType |_k#0@@5|) |a#0@@7| |b#0@@7|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.Stream.Nil_q |a#0@@7|) true (let ((|t#5| (_module.Stream.tail |a#0@@7|)))
(let ((|h#5| (_module.Stream.head |a#0@@7|)))
 (and (and (_module.Stream.Cons_q |b#0@@7|) (<= |h#5| (_module.Stream.head |b#0@@7|))) (_module.__default.atmost_h ($LS $ly@@13) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#5| (_module.Stream.tail |b#0@@7|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@5|) (_module.__default.atmost_h ($LS $ly@@13) |_k'#1@@0| |a#0@@7| |b#0@@7|))
 :qid |CoPrefixdfy.25:20|
 :skolemid |1827|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@13) |_k'#1@@0| |a#0@@7| |b#0@@7|))
)))))))
 :qid |CoPrefixdfy.25:20|
 :weight 3
 :skolemid |1829|
 :pattern ( (_module.__default.atmost_h ($LS $ly@@13) (Lit BoxType |_k#0@@5|) |a#0@@7| |b#0@@7|))
))))
(assert (forall ((v T@U) ) (! ($Is intType v TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1250|
 :pattern ( ($Is intType v TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem0__Manual)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))))))) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))))))) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ)))))))))))) (=> (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|h#2@@0| (LitInt (_module.Stream.head (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))
(<= |h#2@@0| (LitInt (_module.Stream.head (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ)))))))))))) (=> (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|h#2@@1| (LitInt (_module.Stream.head (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))
(<= |h#2@@1| (LitInt (_module.Stream.head (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|_module.__default.atmost#canCall| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.atmost ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|t#2@@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))
(_module.__default.atmost ($LS ($LS $LZ)) |t#2@@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))))))))))))
(let ((anon3_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap $Heap@1)) (and (forall ((|k#0_1| T@U) ) (!  (=> (U_2_bool (Lit boolType (bool_2_U true))) (_module.__default.atmost_h ($LS $LZ) |k#0_1| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))
 :qid |CoPrefixdfy.47:10|
 :skolemid |1843|
 :pattern ( (_module.__default.atmost_h ($LS $LZ) |k#0_1| (_module.__default.zeros ($LS $LZ)) (_module.__default.ones ($LS $LZ))))
)) (= (ControlFlow 0 7) 3))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 1) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
