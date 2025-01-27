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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.Alt.natinf () T@U)
(declare-fun |##Alt.natinf.N| () T@U)
(declare-fun |##Alt.natinf.Inf| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$natinf () T@U)
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
(declare-fun Alt.__default.Even_h (T@U T@U T@U) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Alt.natinf#Equal| (T@U T@U) Bool)
(declare-fun Alt.natinf.N_q (T@U) Bool)
(declare-fun Alt.natinf.n (T@U) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Alt.natinf.Inf| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Alt.natinf () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Alt.__default.Even_h#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Alt.__default.S (T@U) T@U)
(declare-fun |$IsA#Alt.natinf| (T@U) Bool)
(declare-fun |Alt.__default.S#canCall| (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Alt.natinf.Inf_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Alt.__default.Even (T@U T@U) Bool)
(declare-fun |#Alt.natinf.N| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun |Alt.__default.Even#canCall| (T@U) Bool)
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
(declare-fun Mod (Int Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.Alt.natinf |##Alt.natinf.N| |##Alt.natinf.Inf| tytagFamily$nat tytagFamily$natinf)
)
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (Alt.__default.Even_h $ly |_k#0| |x#0|) (Alt.__default.Even_h $ly _m |x#0|)))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |654|
 :pattern ( (Alt.__default.Even_h $ly |_k#0| |x#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (Alt.natinf.N_q a) (Alt.natinf.N_q b)) (= (|Alt.natinf#Equal| a b) (= (Alt.natinf.n a) (Alt.natinf.n b))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( (|Alt.natinf#Equal| a b) (Alt.natinf.N_q a))
 :pattern ( (|Alt.natinf#Equal| a b) (Alt.natinf.N_q b))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#Alt.natinf.Inf|) |##Alt.natinf.Inf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#Alt.natinf.Inf| Tclass.Alt.natinf))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Alt.natinf#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( (|Alt.natinf#Equal| a@@0 b@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|x#0@@1| T@U) ) (!  (=> (or (|Alt.__default.Even_h#canCall| |_k#0@@0| |x#0@@1|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@1| Tclass.Alt.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (and (Alt.natinf.N_q |x#0@@1|) (= (Alt.natinf.n |x#0@@1|) (LitInt 0)))) (forall ((|y#3| T@U) ) (!  (=> ($Is DatatypeTypeType |y#3| Tclass.Alt.natinf) (and (and (and (|$IsA#Alt.natinf| |x#0@@1|) (|$IsA#Alt.natinf| (Alt.__default.S (Alt.__default.S |y#3|)))) (and (|Alt.__default.S#canCall| |y#3|) (|Alt.__default.S#canCall| (Alt.__default.S |y#3|)))) (=> (|Alt.natinf#Equal| |x#0@@1| (Alt.__default.S (Alt.__default.S |y#3|))) (|Alt.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3|))))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |667|
 :pattern ( (Alt.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#3|)))
)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (and (Alt.natinf.N_q |x#0@@1|) (= (Alt.natinf.n |x#0@@1|) (LitInt 0))) (exists ((|y#3@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#3@@0| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@1| (Alt.__default.S (Alt.__default.S |y#3@@0|))) (Alt.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3@@0|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |669|
 :pattern ( (Alt.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3@@0|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#3@@0|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@0|) (|Alt.__default.Even_h#canCall| |_k'#0| |x#0@@1|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |668|
 :pattern ( (Alt.__default.Even_h $ly@@0 |_k'#0| |x#0@@1|))
))))) (= (Alt.__default.Even_h ($LS $ly@@0) |_k#0@@0| |x#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (and (Alt.natinf.N_q |x#0@@1|) (= (Alt.natinf.n |x#0@@1|) (LitInt 0))) (exists ((|y#3@@1| T@U) ) (!  (and ($Is DatatypeTypeType |y#3@@1| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@1| (Alt.__default.S (Alt.__default.S |y#3@@1|))) (Alt.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3@@1|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |665|
 :pattern ( (Alt.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |y#3@@1|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#3@@1|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@0|) (Alt.__default.Even_h $ly@@0 |_k'#0@@0| |x#0@@1|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |666|
 :pattern ( (Alt.__default.Even_h $ly@@0 |_k'#0@@0| |x#0@@1|))
)))))))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |670|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@0) |_k#0@@0| |x#0@@1|))
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
(assert (forall ((d T@U) ) (! (= (Alt.natinf.N_q d) (= (DatatypeCtorId d) |##Alt.natinf.N|))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( (Alt.natinf.N_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Alt.natinf.Inf_q d@@0) (= (DatatypeCtorId d@@0) |##Alt.natinf.Inf|))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (Alt.natinf.Inf_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#0@@2| Tclass.Alt.natinf) (exists ((|_k#0@@1| T@U) ) (! (Alt.__default.Even_h ($LS $ly@@1) |_k#0@@1| |x#0@@2|)
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |650|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@1) |_k#0@@1| |x#0@@2|))
))) (Alt.__default.Even ($LS $ly@@1) |x#0@@2|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |652|
 :pattern ( (Alt.__default.Even ($LS $ly@@1) |x#0@@2|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@3| T@U) (|_k#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#0@@3| Tclass.Alt.natinf) (= |_k#0@@2| (|ORD#FromNat| 0))) (not (Alt.__default.Even_h $ly@@2 |_k#0@@2| |x#0@@3|)))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |653|
 :pattern ( (Alt.__default.Even_h $ly@@2 |_k#0@@2| |x#0@@3|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (Alt.natinf.Inf_q d@@1) (= d@@1 |#Alt.natinf.Inf|))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( (Alt.natinf.Inf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Alt.natinf.N_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#Alt.natinf.N| |a#1#0#0|))
 :qid |InductivePredicatesdfy.120:23|
 :skolemid |761|
)))
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( (Alt.natinf.N_q d@@2))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@4|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@4| Tclass._System.nat))
)))
(assert (forall (($ly@@3 T@U) (|_k#0@@3| T@U) (|x#0@@5| T@U) ) (! (= (Alt.__default.Even_h ($LS $ly@@3) |_k#0@@3| |x#0@@5|) (Alt.__default.Even_h $ly@@3 |_k#0@@3| |x#0@@5|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |661|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@3) |_k#0@@3| |x#0@@5|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0@@6| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#0@@6| Tclass.Alt.natinf) (Alt.__default.Even ($LS $ly@@4) |x#0@@6|)) (exists ((|_k#0@@4| T@U) ) (! (Alt.__default.Even_h ($LS $ly@@4) |_k#0@@4| |x#0@@6|)
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |650|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@4) |_k#0@@4| |x#0@@6|))
)))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |651|
 :pattern ( (Alt.__default.Even ($LS $ly@@4) |x#0@@6|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@7| T@U) ) (!  (=> (or (|Alt.__default.S#canCall| |x#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@7| Tclass.Alt.natinf))) (= (Alt.__default.S |x#0@@7|) (ite (Alt.natinf.N_q |x#0@@7|) (let ((|n#0| (Alt.natinf.n |x#0@@7|)))
(|#Alt.natinf.N| (+ |n#0| 1))) |#Alt.natinf.Inf|)))
 :qid |InductivePredicatesdfy.122:20|
 :skolemid |641|
 :pattern ( (Alt.__default.S |x#0@@7|))
))))
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
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#Alt.natinf.N| |a#2#0#0|) Tclass.Alt.natinf) ($Is intType (int_2_U |a#2#0#0|) Tclass._System.nat))
 :qid |InductivePredicatesdfy.120:23|
 :skolemid |763|
 :pattern ( ($Is DatatypeTypeType (|#Alt.natinf.N| |a#2#0#0|) Tclass.Alt.natinf))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@5| T@U) (|x#0@@8| T@U) ) (!  (=> (or (|Alt.__default.Even_h#canCall| (Lit BoxType |_k#0@@5|) |x#0@@8|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@8| Tclass.Alt.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (not (and (Alt.natinf.N_q |x#0@@8|) (= (Alt.natinf.n |x#0@@8|) (LitInt 0)))) (forall ((|y#4| T@U) ) (!  (=> ($Is DatatypeTypeType |y#4| Tclass.Alt.natinf) (and (and (and (|$IsA#Alt.natinf| |x#0@@8|) (|$IsA#Alt.natinf| (Alt.__default.S (Alt.__default.S |y#4|)))) (and (|Alt.__default.S#canCall| |y#4|) (|Alt.__default.S#canCall| (Alt.__default.S |y#4|)))) (=> (|Alt.natinf#Equal| |x#0@@8| (Alt.__default.S (Alt.__default.S |y#4|))) (|Alt.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4|))))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |673|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#4|)))
)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (and (Alt.natinf.N_q |x#0@@8|) (= (Alt.natinf.n |x#0@@8|) (LitInt 0))) (exists ((|y#4@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#4@@0| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@8| (Alt.__default.S (Alt.__default.S |y#4@@0|))) (Alt.__default.Even_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4@@0|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |675|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4@@0|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#4@@0|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@5|) (|Alt.__default.Even_h#canCall| |_k'#1| |x#0@@8|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |674|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) |_k'#1| |x#0@@8|))
))))) (= (Alt.__default.Even_h ($LS $ly@@5) (Lit BoxType |_k#0@@5|) |x#0@@8|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (and (Alt.natinf.N_q |x#0@@8|) (= (Alt.natinf.n |x#0@@8|) (LitInt 0))) (exists ((|y#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |y#4@@1| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@8| (Alt.__default.S (Alt.__default.S |y#4@@1|))) (Alt.__default.Even_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4@@1|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |671|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |y#4@@1|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#4@@1|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@5|) (Alt.__default.Even_h ($LS $ly@@5) |_k'#1@@0| |x#0@@8|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |672|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) |_k'#1@@0| |x#0@@8|))
)))))))
 :qid |InductivePredicatesdfy.129:19|
 :weight 3
 :skolemid |676|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@5) (Lit BoxType |_k#0@@5|) |x#0@@8|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#Alt.natinf| d@@3) (or (Alt.natinf.N_q d@@3) (Alt.natinf.Inf_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( (|$IsA#Alt.natinf| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@9| T@U) ) (!  (=> (or (|Alt.__default.S#canCall| |x#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@9| Tclass.Alt.natinf))) ($Is DatatypeTypeType (Alt.__default.S |x#0@@9|) Tclass.Alt.natinf))
 :qid |InductivePredicatesdfy.122:20|
 :skolemid |639|
 :pattern ( (Alt.__default.S |x#0@@9|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.Alt.natinf) (or (Alt.natinf.N_q d@@4) (Alt.natinf.Inf_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( (Alt.natinf.Inf_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.Alt.natinf))
 :pattern ( (Alt.natinf.N_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.Alt.natinf))
)))
(assert (forall (($ly@@6 T@U) (|x#0@@10| T@U) ) (! (= (Alt.__default.Even ($LS $ly@@6) |x#0@@10|) (Alt.__default.Even $ly@@6 |x#0@@10|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |643|
 :pattern ( (Alt.__default.Even ($LS $ly@@6) |x#0@@10|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Alt.natinf.Inf_q a@@1) (Alt.natinf.Inf_q b@@1)) (|Alt.natinf#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (|Alt.natinf#Equal| a@@1 b@@1) (Alt.natinf.Inf_q a@@1))
 :pattern ( (|Alt.natinf#Equal| a@@1 b@@1) (Alt.natinf.Inf_q b@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|x#0@@11| T@U) ) (!  (=> (or (|Alt.__default.Even#canCall| |x#0@@11|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@11| Tclass.Alt.natinf))) (and (=> (not (and (Alt.natinf.N_q |x#0@@11|) (= (Alt.natinf.n |x#0@@11|) (LitInt 0)))) (forall ((|y#0| T@U) ) (!  (=> ($Is DatatypeTypeType |y#0| Tclass.Alt.natinf) (and (and (and (|$IsA#Alt.natinf| |x#0@@11|) (|$IsA#Alt.natinf| (Alt.__default.S (Alt.__default.S |y#0|)))) (and (|Alt.__default.S#canCall| |y#0|) (|Alt.__default.S#canCall| (Alt.__default.S |y#0|)))) (=> (|Alt.natinf#Equal| |x#0@@11| (Alt.__default.S (Alt.__default.S |y#0|))) (|Alt.__default.Even#canCall| |y#0|))))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |648|
 :pattern ( (Alt.__default.Even $ly@@7 |y#0|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#0|)))
))) (= (Alt.__default.Even ($LS $ly@@7) |x#0@@11|)  (or (and (Alt.natinf.N_q |x#0@@11|) (= (Alt.natinf.n |x#0@@11|) (LitInt 0))) (exists ((|y#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#0@@0| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@11| (Alt.__default.S (Alt.__default.S |y#0@@0|))) (Alt.__default.Even $ly@@7 |y#0@@0|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |647|
 :pattern ( (Alt.__default.Even $ly@@7 |y#0@@0|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#0@@0|)))
))))))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |649|
 :pattern ( (Alt.__default.Even ($LS $ly@@7) |x#0@@11|))
))))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#Alt.natinf.N| |a#0#0#0|)) |##Alt.natinf.N|)
 :qid |InductivePredicatesdfy.120:23|
 :skolemid |759|
 :pattern ( (|#Alt.natinf.N| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (Alt.natinf.n (|#Alt.natinf.N| |a#4#0#0|)) |a#4#0#0|)
 :qid |InductivePredicatesdfy.120:23|
 :skolemid |766|
 :pattern ( (|#Alt.natinf.N| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|_k#0@@6| T@U) (|x#0@@12| T@U) ) (!  (=> (or (|Alt.__default.Even_h#canCall| (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |x#0@@12|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@12| Tclass.Alt.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (=> (not (and (Alt.natinf.N_q (Lit DatatypeTypeType |x#0@@12|)) (= (LitInt (Alt.natinf.n (Lit DatatypeTypeType |x#0@@12|))) (LitInt 0)))) (forall ((|y#5| T@U) ) (!  (=> ($Is DatatypeTypeType |y#5| Tclass.Alt.natinf) (and (and (and (|$IsA#Alt.natinf| (Lit DatatypeTypeType |x#0@@12|)) (|$IsA#Alt.natinf| (Alt.__default.S (Alt.__default.S |y#5|)))) (and (|Alt.__default.S#canCall| |y#5|) (|Alt.__default.S#canCall| (Alt.__default.S |y#5|)))) (=> (|Alt.natinf#Equal| |x#0@@12| (Alt.__default.S (Alt.__default.S |y#5|))) (|Alt.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5|))))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |679|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#5|)))
)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (or (and (Alt.natinf.N_q (Lit DatatypeTypeType |x#0@@12|)) (= (LitInt (Alt.natinf.n (Lit DatatypeTypeType |x#0@@12|))) (LitInt 0))) (exists ((|y#5@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#5@@0| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@12| (Alt.__default.S (Alt.__default.S |y#5@@0|))) (Alt.__default.Even_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5@@0|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |681|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5@@0|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#5@@0|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@6|) (|Alt.__default.Even_h#canCall| |_k'#2| |x#0@@12|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |680|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) |_k'#2| |x#0@@12|))
))))) (= (Alt.__default.Even_h ($LS $ly@@8) (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |x#0@@12|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (or (and (Alt.natinf.N_q (Lit DatatypeTypeType |x#0@@12|)) (= (LitInt (Alt.natinf.n (Lit DatatypeTypeType |x#0@@12|))) (LitInt 0))) (exists ((|y#5@@1| T@U) ) (!  (and ($Is DatatypeTypeType |y#5@@1| Tclass.Alt.natinf) (and (|Alt.natinf#Equal| |x#0@@12| (Alt.__default.S (Alt.__default.S |y#5@@1|))) (Alt.__default.Even_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5@@1|)))
 :qid |InductivePredicatesdfy.132:12|
 :skolemid |677|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |y#5@@1|))
 :pattern ( (Alt.__default.S (Alt.__default.S |y#5@@1|)))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@6|) (Alt.__default.Even_h ($LS $ly@@8) |_k'#2@@0| |x#0@@12|))
 :qid |InductivePredicatesdfy.129:19|
 :skolemid |678|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) |_k'#2@@0| |x#0@@12|))
)))))))
 :qid |InductivePredicatesdfy.129:19|
 :weight 3
 :skolemid |682|
 :pattern ( (Alt.__default.Even_h ($LS $ly@@8) (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |x#0@@12|)))
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
 :skolemid |3066|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@13| T@U) ) (!  (=> (or (|Alt.__default.S#canCall| (Lit DatatypeTypeType |x#0@@13|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@13| Tclass.Alt.natinf))) (= (Alt.__default.S (Lit DatatypeTypeType |x#0@@13|)) (ite (Alt.natinf.N_q (Lit DatatypeTypeType |x#0@@13|)) (let ((|n#2| (LitInt (Alt.natinf.n (Lit DatatypeTypeType |x#0@@13|)))))
(Lit DatatypeTypeType (|#Alt.natinf.N| (LitInt (+ |n#2| 1))))) |#Alt.natinf.Inf|)))
 :qid |InductivePredicatesdfy.122:20|
 :weight 3
 :skolemid |642|
 :pattern ( (Alt.__default.S (Lit DatatypeTypeType |x#0@@13|)))
))))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass.Alt.natinf)) ($IsAlloc DatatypeTypeType d@@5 Tclass.Alt.natinf $h@@0))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.Alt.natinf $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.Alt.natinf) Tagclass.Alt.natinf))
(assert (= (TagFamily Tclass.Alt.natinf) tytagFamily$natinf))
(assert (= |#Alt.natinf.Inf| (Lit DatatypeTypeType |#Alt.natinf.Inf|)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Alt.natinf.N_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.Alt.natinf $h@@1))) ($IsAlloc intType (int_2_U (Alt.natinf.n d@@6)) Tclass._System.nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($IsAlloc intType (int_2_U (Alt.natinf.n d@@6)) Tclass._System.nat $h@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#Alt.natinf.N| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#Alt.natinf.N| |a#3#0#0|)))
 :qid |InductivePredicatesdfy.120:23|
 :skolemid |765|
 :pattern ( (|#Alt.natinf.N| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@@14| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$Alt.__default.MyLemma__RealNice__AndFastToo)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAlloc DatatypeTypeType |x#0@@14| Tclass.Alt.natinf $Heap)) (and (|Alt.__default.Even#canCall| |x#0@@14|) (Alt.__default.Even ($LS $LZ) |x#0@@14|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (Alt.natinf.N_q |x#0@@14|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Alt.natinf.N_q |x#0@@14|)) (=> (Alt.natinf.N_q |x#0@@14|) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= (LitInt 2) 0)) (not true))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |x#0@@14| Tclass.Alt.natinf) ($IsAlloc DatatypeTypeType |x#0@@14| Tclass.Alt.natinf $Heap)) (|$IsA#Alt.natinf| |x#0@@14|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
