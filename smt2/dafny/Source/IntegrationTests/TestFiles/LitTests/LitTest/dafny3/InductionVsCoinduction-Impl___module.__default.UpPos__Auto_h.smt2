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
(declare-fun |##_module.Stream.SNil| () T@U)
(declare-fun |##_module.Stream.SCons| () T@U)
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
(declare-fun |#_module.Stream.SNil| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Up (T@U Int) T@U)
(declare-fun |_module.__default.Up#canCall| (Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Stream.SCons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.Pos_h (T@U T@U T@U) Bool)
(declare-fun _module.Stream.SNil_q (T@U) Bool)
(declare-fun _module.Stream.SCons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Pos_h#canCall| (T@U T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Stream |##_module.Stream.SNil| |##_module.Stream.SCons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
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
(assert (= (DatatypeCtorId |#_module.Stream.SNil|) |##_module.Stream.SNil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |n#0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Up $ly |n#0|) (Tclass._module.Stream TInt)))
 :qid |InductionVsCoinductiondfy.16:16|
 :skolemid |533|
 :pattern ( (_module.__default.Up $ly |n#0|))
))))
(assert (forall ((_module.Stream$T T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.SNil| (Tclass._module.Stream _module.Stream$T))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.SNil| (Tclass._module.Stream _module.Stream$T)))
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
(assert (forall ((_module.Stream$T@@0 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.SCons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#5#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.SCons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0| T@U) (|_k#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream TInt)) (= |_k#0| (|ORD#FromNat| 0))) (_module.__default.Pos_h $ly@@0 |_k#0| |s#0|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |552|
 :pattern ( (_module.__default.Pos_h $ly@@0 |_k#0| |s#0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.Stream.SNil_q d) (= (DatatypeCtorId d) |##_module.Stream.SNil|))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (_module.Stream.SNil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.SCons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.SCons|))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (_module.Stream.SCons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@0| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Stream.SNil_q (Lit DatatypeTypeType |s#0@@0|)))))) (let ((|rest#9| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|x#9| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|)))))))
 (=> (> |x#9| 0) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |rest#9|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.SNil_q (Lit DatatypeTypeType |s#0@@0|)) true (let ((|rest#10| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|x#10| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|)))))))
 (and (> |x#10| 0) (_module.__default.Pos_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |rest#10|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@0|) (|_module.__default.Pos_h#canCall| |_k'#2| |s#0@@0|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |565|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@1) |_k'#2| |s#0@@0|))
))))) (= (_module.__default.Pos_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Stream.SNil_q (Lit DatatypeTypeType |s#0@@0|)) true (let ((|rest#8| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|x#8| (LitInt (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@0|)))))))
 (and (> |x#8| 0) (_module.__default.Pos_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |rest#8|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@0|) (_module.__default.Pos_h ($LS $ly@@1) |_k'#2@@0| |s#0@@0|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |564|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@1) |_k'#2@@0| |s#0@@0|))
)))))))
 :qid |InductionVsCoinductiondfy.38:20|
 :weight 3
 :skolemid |566|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@0|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.SCons_q d@@1) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.SCons| |a#4#0#0| |a#4#1#0|))
 :qid |InductionVsCoinductiondfy.6:37|
 :skolemid |624|
)))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (_module.Stream.SCons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.SNil_q d@@2) (= d@@2 |#_module.Stream.SNil|))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (_module.Stream.SNil_q d@@2))
)))
(assert (forall (($ly@@2 T@U) (|_k#0@@1| T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.Pos_h ($LS $ly@@2) |_k#0@@1| |s#0@@1|) (_module.__default.Pos_h $ly@@2 |_k#0@@1| |s#0@@1|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |554|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@2) |_k#0@@1| |s#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| (Lit BoxType |_k#0@@2|) |s#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.Stream.SNil_q |s#0@@2|)) (let ((|rest#6| (_module.Stream.tail |s#0@@2|)))
(let ((|x#6| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@2|)))))
 (=> (> |x#6| 0) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |rest#6|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.SNil_q |s#0@@2|) true (let ((|rest#7| (_module.Stream.tail |s#0@@2|)))
(let ((|x#7| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@2|)))))
 (and (> |x#7| 0) (_module.__default.Pos_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |rest#7|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (|_module.__default.Pos_h#canCall| |_k'#1| |s#0@@2|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |562|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@3) |_k'#1| |s#0@@2|))
))))) (= (_module.__default.Pos_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |s#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.Stream.SNil_q |s#0@@2|) true (let ((|rest#5| (_module.Stream.tail |s#0@@2|)))
(let ((|x#5| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@2|)))))
 (and (> |x#5| 0) (_module.__default.Pos_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |rest#5|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@2|) (_module.__default.Pos_h ($LS $ly@@3) |_k'#1@@0| |s#0@@2|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |561|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@3) |_k'#1@@0| |s#0@@2|))
)))))))
 :qid |InductionVsCoinductiondfy.38:20|
 :weight 3
 :skolemid |563|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |s#0@@2|))
))))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
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
(assert (forall ((_module.Stream$T@@2 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@2)) (or (_module.Stream.SNil_q d@@3) (_module.Stream.SCons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (_module.Stream.SCons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@2)))
 :pattern ( (_module.Stream.SNil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@2)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@3| T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| |_k#0@@3| |s#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (not (_module.Stream.SNil_q |s#0@@3|)) (let ((|rest#3| (_module.Stream.tail |s#0@@3|)))
(let ((|x#3| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@3|)))))
 (=> (> |x#3| 0) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |rest#3|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.SNil_q |s#0@@3|) true (let ((|rest#4| (_module.Stream.tail |s#0@@3|)))
(let ((|x#4| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@3|)))))
 (and (> |x#4| 0) (_module.__default.Pos_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |rest#4|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@3|) (|_module.__default.Pos_h#canCall| |_k'#0| |s#0@@3|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |559|
 :pattern ( (_module.__default.Pos_h $ly@@4 |_k'#0| |s#0@@3|))
))))) (= (_module.__default.Pos_h ($LS $ly@@4) |_k#0@@3| |s#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (ite (_module.Stream.SNil_q |s#0@@3|) true (let ((|rest#2| (_module.Stream.tail |s#0@@3|)))
(let ((|x#2| (U_2_int ($Unbox intType (_module.Stream.head |s#0@@3|)))))
 (and (> |x#2| 0) (_module.__default.Pos_h $ly@@4 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |rest#2|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@3|) (_module.__default.Pos_h $ly@@4 |_k'#0@@0| |s#0@@3|))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |558|
 :pattern ( (_module.__default.Pos_h $ly@@4 |_k'#0@@0| |s#0@@3|))
)))))))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |560|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@4) |_k#0@@3| |s#0@@3|))
))))
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
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.SCons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.SCons|)
 :qid |InductionVsCoinductiondfy.6:37|
 :skolemid |622|
 :pattern ( (|#_module.Stream.SCons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.SCons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |InductionVsCoinductiondfy.6:37|
 :skolemid |630|
 :pattern ( (|#_module.Stream.SCons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.SCons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |InductionVsCoinductiondfy.6:37|
 :skolemid |631|
 :pattern ( (|#_module.Stream.SCons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((_module.Stream$T@@3 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@3)) _module.Stream$T@@3)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@3))
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
(assert (forall (($ly@@5 T@U) (|n#0@@0| Int) ) (! (= (_module.__default.Up ($LS $ly@@5) |n#0@@0|) (_module.__default.Up $ly@@5 |n#0@@0|))
 :qid |InductionVsCoinductiondfy.16:16|
 :skolemid |528|
 :pattern ( (_module.__default.Up ($LS $ly@@5) |n#0@@0|))
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
 :skolemid |645|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |n#0@@1|) (< 1 $FunctionContextHeight)) (and (|_module.__default.Up#canCall| (+ |n#0@@1| 1)) (= (_module.__default.Up ($LS $ly@@6) |n#0@@1|) (|#_module.Stream.SCons| ($Box intType (int_2_U |n#0@@1|)) (_module.__default.Up $ly@@6 (+ |n#0@@1| 1))))))
 :qid |InductionVsCoinductiondfy.16:16|
 :skolemid |535|
 :pattern ( (_module.__default.Up ($LS $ly@@6) |n#0@@1|))
))))
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
(declare-fun |n#1| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.UpPos__Auto_h)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|))) (let ((|x#4@@0| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Up ($LS ($LS $LZ)) |n#1|))))))
(> |x#4@@0| 0))))))) (=> (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|))) (let ((|x#4@@1| (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Up ($LS ($LS $LZ)) |n#1|))))))
(> |x#4@@1| 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|))) (let ((|rest#4@@0| (_module.Stream.tail (_module.__default.Up ($LS ($LS $LZ)) |n#1|))))
(_module.__default.Pos_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |rest#4@@0|))))))) (=> (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (_module.Stream.SNil_q (_module.__default.Up ($LS $LZ) |n#1|))) (let ((|rest#4@@1| (_module.Stream.tail (_module.__default.Up ($LS ($LS $LZ)) |n#1|))))
(_module.__default.Pos_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |rest#4@@1|)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.Pos_h#canCall| |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (or (_module.__default.Pos_h ($LS $LZ) |_k#0@@4| (_module.__default.Up ($LS $LZ) |n#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@4|) (_module.__default.Pos_h ($LS ($LS $LZ)) |_k'#1@@1| (_module.__default.Up ($LS ($LS $LZ)) |n#1|)))
 :qid |InductionVsCoinductiondfy.38:20|
 :skolemid |596|
 :pattern ( (_module.__default.Pos_h ($LS ($LS $LZ)) |_k'#1@@1| (_module.__default.Up ($LS ($LS $LZ)) |n#1|)))
))))))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@4|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|n#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#2@@1| |_k#0@@4|) (> |n#2| 0)) (_module.__default.Pos_h ($LS $LZ) |_k'#2@@1| (_module.__default.Up ($LS $LZ) |n#2|)))
 :qid |InductionVsCoinductiondfy.109:16|
 :skolemid |600|
 :pattern ( (_module.__default.Up ($LS $LZ) |n#2|) (|ORD#Less| |_k'#2@@1| |_k#0@@4|))
)) (= (ControlFlow 0 7) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@4|)) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#n0#0| Int) ) (!  (=> (and (> |$ih#n0#0| 0) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@4|) (and (= |$ih#_k0#0| |_k#0@@4|) (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#1|))))) (_module.__default.Pos_h ($LS $LZ) |$ih#_k0#0| (_module.__default.Up ($LS $LZ) |$ih#n0#0|)))
 :qid |InductionVsCoinductiondfy.109:16|
 :skolemid |599|
 :pattern ( (_module.__default.Pos_h ($LS $LZ) |$ih#_k0#0| (_module.__default.Up ($LS $LZ) |$ih#n0#0|)))
)))) (and (=> (= (ControlFlow 0 8) 6) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 3 $FunctionContextHeight)) (and (> |n#1| 0) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
