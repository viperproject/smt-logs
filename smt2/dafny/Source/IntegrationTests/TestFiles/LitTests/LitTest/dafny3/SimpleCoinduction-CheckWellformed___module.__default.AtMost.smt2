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
(declare-fun Tagclass._module.IList () T@U)
(declare-fun |##_module.IList.Nil| () T@U)
(declare-fun |##_module.IList.ICons| () T@U)
(declare-fun tytagFamily$IList () T@U)
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
(declare-fun _module.__default.AtMost_h (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.AtMost_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.IList (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.IList.Nil_q (T@U) Bool)
(declare-fun _module.IList.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.IList.head (T@U) T@U)
(declare-fun _module.IList.ICons_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.IList.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.IList.ICons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.AtMost (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun Tclass._module.IList_0 (T@U) T@U)
(declare-fun |_module.__default.AtMost#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._module.IList |##_module.IList.Nil| |##_module.IList.ICons| tytagFamily$IList)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.AtMost_h#canCall| |_k#0| |a#0| |b#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0| (Tclass._module.IList TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (not (_module.IList.Nil_q |a#0|)) (let ((|t#3| (_module.IList.tail |a#0|)))
(let ((|h#3| (U_2_int ($Unbox intType (_module.IList.head |a#0|)))))
 (=> (_module.IList.ICons_q |b#0|) (=> (<= |h#3| (U_2_int ($Unbox intType (_module.IList.head |b#0|)))) (|_module.__default.AtMost_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#3| (_module.IList.tail |b#0|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.IList.Nil_q |a#0|) true (let ((|t#4| (_module.IList.tail |a#0|)))
(let ((|h#4| (U_2_int ($Unbox intType (_module.IList.head |a#0|)))))
 (and (and (_module.IList.ICons_q |b#0|) (<= |h#4| (U_2_int ($Unbox intType (_module.IList.head |b#0|))))) (_module.__default.AtMost_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#4| (_module.IList.tail |b#0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0|) (|_module.__default.AtMost_h#canCall| |_k'#0| |a#0| |b#0|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |763|
 :pattern ( (_module.__default.AtMost_h $ly |_k'#0| |a#0| |b#0|))
))))) (= (_module.__default.AtMost_h ($LS $ly) |_k#0| |a#0| |b#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (ite (_module.IList.Nil_q |a#0|) true (let ((|t#2| (_module.IList.tail |a#0|)))
(let ((|h#2| (U_2_int ($Unbox intType (_module.IList.head |a#0|)))))
 (and (and (_module.IList.ICons_q |b#0|) (<= |h#2| (U_2_int ($Unbox intType (_module.IList.head |b#0|))))) (_module.__default.AtMost_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |t#2| (_module.IList.tail |b#0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0|) (_module.__default.AtMost_h $ly |_k'#0@@0| |a#0| |b#0|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |762|
 :pattern ( (_module.__default.AtMost_h $ly |_k'#0@@0| |a#0| |b#0|))
)))))))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |764|
 :pattern ( (_module.__default.AtMost_h ($LS $ly) |_k#0| |a#0| |b#0|))
))))
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
(assert (= (DatatypeCtorId |#_module.IList.Nil|) |##_module.IList.Nil|))
(assert (forall ((_module.IList$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T) $h))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T) $h))
)))
(assert (forall ((_module.IList$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T@@0))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( ($Is DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) (|_k#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@0| (Tclass._module.IList TInt))) (= |_k#0@@0| (|ORD#FromNat| 0))) (_module.__default.AtMost_h $ly@@0 |_k#0@@0| |a#0@@0| |b#0@@0|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |756|
 :pattern ( (_module.__default.AtMost_h $ly@@0 |_k#0@@0| |a#0@@0| |b#0@@0|))
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
(assert (forall ((_module.IList$T@@1 T@U) (|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0| |a#10#1#0|) (Tclass._module.IList _module.IList$T@@1))  (and ($IsBox |a#10#0#0| _module.IList$T@@1) ($Is DatatypeTypeType |a#10#1#0| (Tclass._module.IList _module.IList$T@@1))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0| |a#10#1#0|) (Tclass._module.IList _module.IList$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.IList.Nil_q d) (= (DatatypeCtorId d) |##_module.IList.Nil|))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( (_module.IList.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.IList.ICons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.IList.ICons|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.IList.ICons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.IList.ICons_q d@@1) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= d@@1 (|#_module.IList.ICons| |a#9#0#0| |a#9#1#0|))
 :qid |SimpleCoinductiondfy.5:35|
 :skolemid |810|
)))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.IList.ICons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.IList.Nil_q d@@2) (= d@@2 |#_module.IList.Nil|))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( (_module.IList.Nil_q d@@2))
)))
(assert (forall (($ly@@1 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (! (= (_module.__default.AtMost ($LS $ly@@1) |a#0@@1| |b#0@@1|) (_module.__default.AtMost $ly@@1 |a#0@@1| |b#0@@1|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |748|
 :pattern ( (_module.__default.AtMost ($LS $ly@@1) |a#0@@1| |b#0@@1|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.IList$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.IList _module.IList$T@@2)) Tagclass._module.IList) (= (TagFamily (Tclass._module.IList _module.IList$T@@2)) tytagFamily$IList))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (Tclass._module.IList _module.IList$T@@2))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@2| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@2| (Tclass._module.IList TInt))) (_module.__default.AtMost ($LS $ly@@2) |a#0@@2| |b#0@@2|)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.AtMost_h ($LS $ly@@2) |_k#0@@1| |a#0@@2| |b#0@@2|)
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |753|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@2) |_k#0@@1| |a#0@@2| |b#0@@2|))
)))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |754|
 :pattern ( (_module.__default.AtMost ($LS $ly@@2) |a#0@@2| |b#0@@2|))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.AtMost_h#canCall| (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@3| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@3| (Tclass._module.IList TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.IList.Nil_q |a#0@@3|)) (let ((|t#6| (_module.IList.tail |a#0@@3|)))
(let ((|h#6| (U_2_int ($Unbox intType (_module.IList.head |a#0@@3|)))))
 (=> (_module.IList.ICons_q |b#0@@3|) (=> (<= |h#6| (U_2_int ($Unbox intType (_module.IList.head |b#0@@3|)))) (|_module.__default.AtMost_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#6| (_module.IList.tail |b#0@@3|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.IList.Nil_q |a#0@@3|) true (let ((|t#7| (_module.IList.tail |a#0@@3|)))
(let ((|h#7| (U_2_int ($Unbox intType (_module.IList.head |a#0@@3|)))))
 (and (and (_module.IList.ICons_q |b#0@@3|) (<= |h#7| (U_2_int ($Unbox intType (_module.IList.head |b#0@@3|))))) (_module.__default.AtMost_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#7| (_module.IList.tail |b#0@@3|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (|_module.__default.AtMost_h#canCall| |_k'#1| |a#0@@3| |b#0@@3|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |766|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@3) |_k'#1| |a#0@@3| |b#0@@3|))
))))) (= (_module.__default.AtMost_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.IList.Nil_q |a#0@@3|) true (let ((|t#5| (_module.IList.tail |a#0@@3|)))
(let ((|h#5| (U_2_int ($Unbox intType (_module.IList.head |a#0@@3|)))))
 (and (and (_module.IList.ICons_q |b#0@@3|) (<= |h#5| (U_2_int ($Unbox intType (_module.IList.head |b#0@@3|))))) (_module.__default.AtMost_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |t#5| (_module.IList.tail |b#0@@3|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@2|) (_module.__default.AtMost_h ($LS $ly@@3) |_k'#1@@0| |a#0@@3| |b#0@@3|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |765|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@3) |_k'#1@@0| |a#0@@3| |b#0@@3|))
)))))))
 :qid |SimpleCoinductiondfy.112:20|
 :weight 3
 :skolemid |767|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|))
))))
(assert (forall ((_module.IList$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@3)) (or (_module.IList.Nil_q d@@3) (_module.IList.ICons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( (_module.IList.ICons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@3)))
 :pattern ( (_module.IList.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($ly@@4 T@U) (|_k#0@@3| T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (! (= (_module.__default.AtMost_h ($LS $ly@@4) |_k#0@@3| |a#0@@4| |b#0@@4|) (_module.__default.AtMost_h $ly@@4 |_k#0@@3| |a#0@@4| |b#0@@4|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |758|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@4) |_k#0@@3| |a#0@@4| |b#0@@4|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@5| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@5| (Tclass._module.IList TInt))) (forall ((|_k#0@@4| T@U) ) (! (_module.__default.AtMost_h ($LS $ly@@5) |_k#0@@4| |a#0@@5| |b#0@@5|)
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |753|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@5) |_k#0@@4| |a#0@@5| |b#0@@5|))
))) (_module.__default.AtMost ($LS $ly@@5) |a#0@@5| |b#0@@5|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |755|
 :pattern ( (_module.__default.AtMost ($LS $ly@@5) |a#0@@5| |b#0@@5|))
))))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.IList.ICons| |a#8#0#0| |a#8#1#0|)) |##_module.IList.ICons|)
 :qid |SimpleCoinductiondfy.5:35|
 :skolemid |808|
 :pattern ( (|#_module.IList.ICons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (_module.IList.head (|#_module.IList.ICons| |a#11#0#0| |a#11#1#0|)) |a#11#0#0|)
 :qid |SimpleCoinductiondfy.5:35|
 :skolemid |816|
 :pattern ( (|#_module.IList.ICons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (_module.IList.tail (|#_module.IList.ICons| |a#12#0#0| |a#12#1#0|)) |a#12#1#0|)
 :qid |SimpleCoinductiondfy.5:35|
 :skolemid |817|
 :pattern ( (|#_module.IList.ICons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((_module.IList$T@@4 T@U) ) (! (= (Tclass._module.IList_0 (Tclass._module.IList _module.IList$T@@4)) _module.IList$T@@4)
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (Tclass._module.IList _module.IList$T@@4))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|_k#0@@5| T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) ) (!  (=> (or (|_module.__default.AtMost_h#canCall| (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@6|) (Lit DatatypeTypeType |b#0@@6|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@6| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@6| (Tclass._module.IList TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@6|)))))) (let ((|t#9| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@6|)))))
(let ((|h#9| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@6|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@6|))))) (=> (<= |h#9| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@6|)))))) (|_module.__default.AtMost_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#9| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@6|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@6|)) true (let ((|t#10| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@6|)))))
(let ((|h#10| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@6|)))))))
 (and (and (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@6|)) (<= |h#10| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@6|))))))) (_module.__default.AtMost_h ($LS $ly@@6) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#10| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@6|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@5|) (|_module.__default.AtMost_h#canCall| |_k'#2| |a#0@@6| |b#0@@6|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |769|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@6) |_k'#2| |a#0@@6| |b#0@@6|))
))))) (= (_module.__default.AtMost_h ($LS $ly@@6) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@6|) (Lit DatatypeTypeType |b#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@6|)) true (let ((|t#8| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@6|)))))
(let ((|h#8| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@6|)))))))
 (and (and (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@6|)) (<= |h#8| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@6|))))))) (_module.__default.AtMost_h ($LS $ly@@6) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |t#8| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@6|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@5|) (_module.__default.AtMost_h ($LS $ly@@6) |_k'#2@@0| |a#0@@6| |b#0@@6|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |768|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@6) |_k'#2@@0| |a#0@@6| |b#0@@6|))
)))))))
 :qid |SimpleCoinductiondfy.112:20|
 :weight 3
 :skolemid |770|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@6) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@6|) (Lit DatatypeTypeType |b#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (or (|_module.__default.AtMost#canCall| |a#0@@7| |b#0@@7|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@7| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@7| (Tclass._module.IList TInt))))) (and (=> (not (_module.IList.Nil_q |a#0@@7|)) (let ((|t#1| (_module.IList.tail |a#0@@7|)))
(let ((|h#1| (U_2_int ($Unbox intType (_module.IList.head |a#0@@7|)))))
 (=> (_module.IList.ICons_q |b#0@@7|) (=> (<= |h#1| (U_2_int ($Unbox intType (_module.IList.head |b#0@@7|)))) (|_module.__default.AtMost#canCall| |t#1| (_module.IList.tail |b#0@@7|))))))) (= (_module.__default.AtMost ($LS $ly@@7) |a#0@@7| |b#0@@7|) (ite (_module.IList.Nil_q |a#0@@7|) true (let ((|t#0| (_module.IList.tail |a#0@@7|)))
(let ((|h#0| (U_2_int ($Unbox intType (_module.IList.head |a#0@@7|)))))
 (and (and (_module.IList.ICons_q |b#0@@7|) (<= |h#0| (U_2_int ($Unbox intType (_module.IList.head |b#0@@7|))))) (_module.__default.AtMost $ly@@7 |t#0| (_module.IList.tail |b#0@@7|)))))))))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |752|
 :pattern ( (_module.__default.AtMost ($LS $ly@@7) |a#0@@7| |b#0@@7|))
))))
(assert (forall ((d@@4 T@U) (_module.IList$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.IList.ICons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.IList _module.IList$T@@5) $h@@0))) ($IsAllocBox (_module.IList.head d@@4) _module.IList$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsAllocBox (_module.IList.head d@@4) _module.IList$T@@5 $h@@0))
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
 :skolemid |831|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.IList$T@@6 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.IList _module.IList$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.IList _module.IList$T@@6))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($IsBox bx@@1 (Tclass._module.IList _module.IList$T@@6)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@5 T@U) (_module.IList$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.IList.ICons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.IList _module.IList$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.IList.tail d@@5) (Tclass._module.IList _module.IList$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.IList.tail d@@5) (Tclass._module.IList _module.IList$T@@7) $h@@1))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
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
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((_module.IList$T@@8 T@U) (|a#10#0#0@@0| T@U) (|a#10#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0@@0| |a#10#1#0@@0|) (Tclass._module.IList _module.IList$T@@8) $h@@2)  (and ($IsAllocBox |a#10#0#0@@0| _module.IList$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#10#1#0@@0| (Tclass._module.IList _module.IList$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0@@0| |a#10#1#0@@0|) (Tclass._module.IList _module.IList$T@@8) $h@@2))
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
(declare-fun |b#0@@8| () T@U)
(declare-fun |h#Z#0@0| () Int)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##b#0@0| () T@U)
(declare-fun |a#0@@8| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.AtMost)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon9_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (_module.IList.ICons_q |b#0@@8|) (<= |h#Z#0@0| (U_2_int ($Unbox intType (_module.IList.head |b#0@@8|)))))) (= (ControlFlow 0 7) 4)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (and (_module.IList.ICons_q |b#0@@8|) (<= |h#Z#0@0| (U_2_int ($Unbox intType (_module.IList.head |b#0@@8|))))) ($IsAlloc DatatypeTypeType |t#Z#0@0| (Tclass._module.IList TInt) $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (_module.IList.ICons_q |b#0@@8|)) (=> (_module.IList.ICons_q |b#0@@8|) (=> (and (and (= |##b#0@0| (_module.IList.tail |b#0@@8|)) ($IsAlloc DatatypeTypeType |##b#0@0| (Tclass._module.IList TInt) $Heap)) (and (|_module.__default.AtMost#canCall| |t#Z#0@0| (_module.IList.tail |b#0@@8|)) (= (ControlFlow 0 5) 4))) anon9_correct))))))
(let ((anon15_Else_correct  (=> (not (_module.IList.ICons_q |b#0@@8|)) (and (=> (= (ControlFlow 0 10) 5) anon16_Then_correct) (=> (= (ControlFlow 0 10) 7) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (_module.IList.ICons_q |b#0@@8|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (_module.IList.ICons_q |b#0@@8|)) (=> (_module.IList.ICons_q |b#0@@8|) (and (=> (= (ControlFlow 0 8) 5) anon16_Then_correct) (=> (= (ControlFlow 0 8) 7) anon16_Else_correct)))))))
(let ((anon14_Then_correct  (=> (and (and (and (= |a#0@@8| (|#_module.IList.ICons| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.IList TInt))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.IList TInt)))) (and (and (= |t#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |h#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 11) 8) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |a#0@@8| |#_module.IList.Nil|)) (not true)) (and (=> (= (ControlFlow 0 12) 11) anon14_Then_correct) (=> (= (ControlFlow 0 12) 3) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon12_Then_correct) (=> (= (ControlFlow 0 13) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a#0@@8| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@8| (Tclass._module.IList TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
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
