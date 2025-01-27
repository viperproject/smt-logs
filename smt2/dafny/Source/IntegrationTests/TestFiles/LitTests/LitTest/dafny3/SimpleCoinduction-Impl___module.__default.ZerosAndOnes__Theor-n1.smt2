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
(declare-fun _module.__default.zeros (T@U) T@U)
(declare-fun |_module.__default.zeros#canCall| () Bool)
(declare-fun _module.__default.ones (T@U) T@U)
(declare-fun |_module.__default.ones#canCall| () Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.IList.ICons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun Tclass._module.IList_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.IList |##_module.IList.Nil| |##_module.IList.ICons| tytagFamily$IList)
)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ) (!  (=> (or |_module.__default.zeros#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.zeros $ly@@0) (Tclass._module.IList TInt)))
 :qid |SimpleCoinductiondfy.102:16|
 :skolemid |738|
 :pattern ( (_module.__default.zeros $ly@@0))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.ones $ly@@1) (Tclass._module.IList TInt)))
 :qid |SimpleCoinductiondfy.107:16|
 :skolemid |744|
 :pattern ( (_module.__default.ones $ly@@1))
))))
(assert (forall ((_module.IList$T T@U) ) (! ($Is DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( ($Is DatatypeTypeType |#_module.IList.Nil| (Tclass._module.IList _module.IList$T)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) (|_k#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@0| (Tclass._module.IList TInt))) (= |_k#0@@0| (|ORD#FromNat| 0))) (_module.__default.AtMost_h $ly@@2 |_k#0@@0| |a#0@@0| |b#0@@0|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |756|
 :pattern ( (_module.__default.AtMost_h $ly@@2 |_k#0@@0| |a#0@@0| |b#0@@0|))
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
(assert (forall ((_module.IList$T@@0 T@U) (|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0| |a#10#1#0|) (Tclass._module.IList _module.IList$T@@0))  (and ($IsBox |a#10#0#0| _module.IList$T@@0) ($Is DatatypeTypeType |a#10#1#0| (Tclass._module.IList _module.IList$T@@0))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is DatatypeTypeType (|#_module.IList.ICons| |a#10#0#0| |a#10#1#0|) (Tclass._module.IList _module.IList$T@@0)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ) (!  (=> (or |_module.__default.zeros#canCall| (< 1 $FunctionContextHeight)) (and |_module.__default.zeros#canCall| (= (_module.__default.zeros ($LS $ly@@3)) (Lit DatatypeTypeType (|#_module.IList.ICons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (_module.__default.zeros $ly@@3)))))))
 :qid |SimpleCoinductiondfy.102:16|
 :skolemid |740|
 :pattern ( (_module.__default.zeros ($LS $ly@@3)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) (and |_module.__default.ones#canCall| (= (_module.__default.ones ($LS $ly@@4)) (Lit DatatypeTypeType (|#_module.IList.ICons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.ones $ly@@4)))))))
 :qid |SimpleCoinductiondfy.107:16|
 :skolemid |746|
 :pattern ( (_module.__default.ones ($LS $ly@@4)))
))))
(assert (forall ((_module.IList$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.IList _module.IList$T@@1)) Tagclass._module.IList) (= (TagFamily (Tclass._module.IList _module.IList$T@@1)) tytagFamily$IList))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (Tclass._module.IList _module.IList$T@@1))
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
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@1| T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.AtMost_h#canCall| (Lit BoxType |_k#0@@1|) |a#0@@1| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@1| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@1| (Tclass._module.IList TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (not (_module.IList.Nil_q |a#0@@1|)) (let ((|t#6| (_module.IList.tail |a#0@@1|)))
(let ((|h#6| (U_2_int ($Unbox intType (_module.IList.head |a#0@@1|)))))
 (=> (_module.IList.ICons_q |b#0@@1|) (=> (<= |h#6| (U_2_int ($Unbox intType (_module.IList.head |b#0@@1|)))) (|_module.__default.AtMost_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |t#6| (_module.IList.tail |b#0@@1|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.IList.Nil_q |a#0@@1|) true (let ((|t#7| (_module.IList.tail |a#0@@1|)))
(let ((|h#7| (U_2_int ($Unbox intType (_module.IList.head |a#0@@1|)))))
 (and (and (_module.IList.ICons_q |b#0@@1|) (<= |h#7| (U_2_int ($Unbox intType (_module.IList.head |b#0@@1|))))) (_module.__default.AtMost_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |t#7| (_module.IList.tail |b#0@@1|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@1|) (|_module.__default.AtMost_h#canCall| |_k'#1| |a#0@@1| |b#0@@1|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |766|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@5) |_k'#1| |a#0@@1| |b#0@@1|))
))))) (= (_module.__default.AtMost_h ($LS $ly@@5) (Lit BoxType |_k#0@@1|) |a#0@@1| |b#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.IList.Nil_q |a#0@@1|) true (let ((|t#5| (_module.IList.tail |a#0@@1|)))
(let ((|h#5| (U_2_int ($Unbox intType (_module.IList.head |a#0@@1|)))))
 (and (and (_module.IList.ICons_q |b#0@@1|) (<= |h#5| (U_2_int ($Unbox intType (_module.IList.head |b#0@@1|))))) (_module.__default.AtMost_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |t#5| (_module.IList.tail |b#0@@1|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@1|) (_module.__default.AtMost_h ($LS $ly@@5) |_k'#1@@0| |a#0@@1| |b#0@@1|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |765|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@5) |_k'#1@@0| |a#0@@1| |b#0@@1|))
)))))))
 :qid |SimpleCoinductiondfy.112:20|
 :weight 3
 :skolemid |767|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@5) (Lit BoxType |_k#0@@1|) |a#0@@1| |b#0@@1|))
))))
(assert (forall ((_module.IList$T@@2 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@2)) (or (_module.IList.Nil_q d@@3) (_module.IList.ICons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( (_module.IList.ICons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@2)))
 :pattern ( (_module.IList.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.IList _module.IList$T@@2)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@2| T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (! (= (_module.__default.AtMost_h ($LS $ly@@6) |_k#0@@2| |a#0@@2| |b#0@@2|) (_module.__default.AtMost_h $ly@@6 |_k#0@@2| |a#0@@2| |b#0@@2|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |758|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@6) |_k#0@@2| |a#0@@2| |b#0@@2|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
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
(assert (forall ((_module.IList$T@@3 T@U) ) (! (= (Tclass._module.IList_0 (Tclass._module.IList _module.IList$T@@3)) _module.IList$T@@3)
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (Tclass._module.IList _module.IList$T@@3))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|_k#0@@3| T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.AtMost_h#canCall| (Lit BoxType |_k#0@@3|) (Lit DatatypeTypeType |a#0@@3|) (Lit DatatypeTypeType |b#0@@3|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@3| (Tclass._module.IList TInt)) ($Is DatatypeTypeType |b#0@@3| (Tclass._module.IList TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@3|)))))) (let ((|t#9| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@3|)))))
(let ((|h#9| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@3|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@3|))))) (=> (<= |h#9| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@3|)))))) (|_module.__default.AtMost_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |t#9| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@3|)))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@3|)) true (let ((|t#10| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@3|)))))
(let ((|h#10| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@3|)))))))
 (and (and (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@3|)) (<= |h#10| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@3|))))))) (_module.__default.AtMost_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |t#10| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@3|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@3|) (|_module.__default.AtMost_h#canCall| |_k'#2| |a#0@@3| |b#0@@3|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |769|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@7) |_k'#2| |a#0@@3| |b#0@@3|))
))))) (= (_module.__default.AtMost_h ($LS $ly@@7) (Lit BoxType |_k#0@@3|) (Lit DatatypeTypeType |a#0@@3|) (Lit DatatypeTypeType |b#0@@3|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.IList.Nil_q (Lit DatatypeTypeType |a#0@@3|)) true (let ((|t#8| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |a#0@@3|)))))
(let ((|h#8| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |a#0@@3|)))))))
 (and (and (_module.IList.ICons_q (Lit DatatypeTypeType |b#0@@3|)) (<= |h#8| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType |b#0@@3|))))))) (_module.__default.AtMost_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |t#8| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType |b#0@@3|))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@3|) (_module.__default.AtMost_h ($LS $ly@@7) |_k'#2@@0| |a#0@@3| |b#0@@3|))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |768|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@7) |_k'#2@@0| |a#0@@3| |b#0@@3|))
)))))))
 :qid |SimpleCoinductiondfy.112:20|
 :weight 3
 :skolemid |770|
 :pattern ( (_module.__default.AtMost_h ($LS $ly@@7) (Lit BoxType |_k#0@@3|) (Lit DatatypeTypeType |a#0@@3|) (Lit DatatypeTypeType |b#0@@3|)))
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
 :skolemid |831|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@8 T@U) ) (! (= (_module.__default.zeros ($LS $ly@@8)) (_module.__default.zeros $ly@@8))
 :qid |SimpleCoinductiondfy.102:16|
 :skolemid |736|
 :pattern ( (_module.__default.zeros ($LS $ly@@8)))
)))
(assert (forall (($ly@@9 T@U) ) (! (= (_module.__default.ones ($LS $ly@@9)) (_module.__default.ones $ly@@9))
 :qid |SimpleCoinductiondfy.107:16|
 :skolemid |742|
 :pattern ( (_module.__default.ones ($LS $ly@@9)))
)))
(assert (forall ((_module.IList$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.IList _module.IList$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.IList _module.IList$T@@4))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($IsBox bx@@0 (Tclass._module.IList _module.IList$T@@4)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@4| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.ZerosAndOnes__Theorem0_h)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))))))) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))))))) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (U_2_bool (Lit boolType (bool_2_U (_module.IList.ICons_q (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))))) (=> (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (U_2_bool (Lit boolType (bool_2_U (_module.IList.ICons_q (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ)))))))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|h#4@@0| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))))
(<= |h#4@@0| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))))))) (=> (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|h#4@@1| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))))
(<= |h#4@@1| (LitInt (U_2_int ($Unbox intType (_module.IList.head (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ)))))))))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|t#4@@0| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))
(_module.__default.AtMost_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |t#4@@0| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))))))))) (=> (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.IList.Nil_q (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ)))))))) (let ((|t#4@@1| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ))))))))
(_module.__default.AtMost_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |t#4@@1| (Lit DatatypeTypeType (_module.IList.tail (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ)))))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.AtMost_h#canCall| |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (or (_module.__default.AtMost_h ($LS $LZ) |_k#0@@4| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@4|) (_module.__default.AtMost_h ($LS ($LS $LZ)) |_k'#1@@1| (Lit DatatypeTypeType (_module.__default.zeros ($LS ($LS $LZ)))) (Lit DatatypeTypeType (_module.__default.ones ($LS ($LS $LZ))))))
 :qid |SimpleCoinductiondfy.112:20|
 :skolemid |774|
 :pattern ( (_module.__default.AtMost_h ($LS ($LS $LZ)) |_k'#1@@1| (_module.__default.zeros ($LS ($LS $LZ))) (_module.__default.ones ($LS ($LS $LZ)))))
))))))))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@4|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@1| |_k#0@@4|) (_module.__default.AtMost_h ($LS $LZ) |_k'#2@@1| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))
 :qid |SimpleCoinductiondfy.119:16|
 :skolemid |778|
 :pattern ( (_module.__default.AtMost_h ($LS $LZ) |_k'#2@@1| (_module.__default.zeros ($LS $LZ)) (_module.__default.ones ($LS $LZ))))
 :pattern ( (|ORD#Less| |_k'#2@@1| |_k#0@@4|))
)) (= (ControlFlow 0 8) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@4|)) (= (ControlFlow 0 7) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) ) (!  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (|ORD#Less| |$ih#_k0#0| |_k#0@@4|)) (_module.__default.AtMost_h ($LS $LZ) |$ih#_k0#0| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))
 :qid |SimpleCoinductiondfy.119:16|
 :skolemid |777|
 :pattern ( (_module.__default.AtMost_h ($LS $LZ) |$ih#_k0#0| (Lit DatatypeTypeType (_module.__default.zeros ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))
)))) (and (=> (= (ControlFlow 0 9) 7) anon3_Then_correct) (=> (= (ControlFlow 0 9) 8) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
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
