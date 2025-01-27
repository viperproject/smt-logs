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
(declare-fun Tagclass._module.cmd () T@U)
(declare-fun |##_module.cmd.Inc| () T@U)
(declare-fun |##_module.cmd.Seq| () T@U)
(declare-fun |##_module.cmd.Repeat| () T@U)
(declare-fun tytagFamily$cmd () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.cmd.Seq| (T@U T@U) T@U)
(declare-fun Tclass._module.cmd () T@U)
(declare-fun _module.__default.CoBigStep_h (T@U T@U T@U Int Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.CoBigStep (T@U T@U Int Int) Bool)
(declare-fun |_module.__default.CoBigStep#canCall| (T@U Int Int) Bool)
(declare-fun _module.cmd.Inc_q (T@U) Bool)
(declare-fun _module.cmd.Seq_q (T@U) Bool)
(declare-fun _module.cmd._h1 (T@U) T@U)
(declare-fun _module.cmd._h0 (T@U) T@U)
(declare-fun _module.cmd._h2 (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.CoBigStep_h#canCall| (T@U T@U Int Int) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.cmd.Inc| () T@U)
(declare-fun _module.cmd.Repeat_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.cmd.Repeat| (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.cmd| (T@U) Bool)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.cmd |##_module.cmd.Inc| |##_module.cmd.Seq| |##_module.cmd.Repeat| tytagFamily$cmd)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.cmd.Seq| |a#6#0#0| |a#6#1#0|) Tclass._module.cmd)  (and ($Is DatatypeTypeType |a#6#0#0| Tclass._module.cmd) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.cmd)))
 :qid |Incdfy.4:26|
 :skolemid |1149|
 :pattern ( ($Is DatatypeTypeType (|#_module.cmd.Seq| |a#6#0#0| |a#6#1#0|) Tclass._module.cmd))
)))
(assert (forall (($ly T@U) (|_k#0| T@U) (|c#0| T@U) (|s#0| Int) (|t#0| Int) ) (! (= (_module.__default.CoBigStep_h ($LS $ly) |_k#0| |c#0| |s#0| |t#0|) (_module.__default.CoBigStep_h $ly |_k#0| |c#0| |s#0| |t#0|))
 :qid |Incdfy.263:20|
 :skolemid |1062|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly) |_k#0| |c#0| |s#0| |t#0|))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|c#0@@0| T@U) (|s#0@@0| Int) (|t#0@@0| Int) ) (!  (=> (or (|_module.__default.CoBigStep#canCall| |c#0@@0| |s#0@@0| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@0| Tclass._module.cmd))) (and (=> (not (_module.cmd.Inc_q |c#0@@0|)) (and (=> (_module.cmd.Seq_q |c#0@@0|) (let ((|c1#1| (_module.cmd._h1 |c#0@@0|)))
(let ((|c0#1| (_module.cmd._h0 |c#0@@0|)))
(forall ((|s'#2| Int) ) (!  (and (|_module.__default.CoBigStep#canCall| |c0#1| |s#0@@0| |s'#2|) (=> (_module.__default.CoBigStep $ly@@0 |c0#1| |s#0@@0| |s'#2|) (|_module.__default.CoBigStep#canCall| |c1#1| |s'#2| |t#0@@0|)))
 :qid |Incdfy.269:12|
 :skolemid |1045|
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c1#1| |s'#2| |t#0@@0|))
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c0#1| |s#0@@0| |s'#2|))
))))) (=> (not (_module.cmd.Seq_q |c#0@@0|)) (let ((|body#1| (_module.cmd._h2 |c#0@@0|)))
 (=> (or (not (= |s#0@@0| |t#0@@0|)) (not true)) (forall ((|s'#3| Int) ) (!  (and (|_module.__default.CoBigStep#canCall| |body#1| |s#0@@0| |s'#3|) (=> (_module.__default.CoBigStep $ly@@0 |body#1| |s#0@@0| |s'#3|) (|_module.__default.CoBigStep#canCall| |c#0@@0| |s'#3| |t#0@@0|)))
 :qid |Incdfy.272:12|
 :skolemid |1046|
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c#0@@0| |s'#3| |t#0@@0|))
 :pattern ( (_module.__default.CoBigStep $ly@@0 |body#1| |s#0@@0| |s'#3|))
))))))) (= (_module.__default.CoBigStep ($LS $ly@@0) |c#0@@0| |s#0@@0| |t#0@@0|) (ite (_module.cmd.Inc_q |c#0@@0|) (= |t#0@@0| (+ |s#0@@0| 1)) (ite (_module.cmd.Seq_q |c#0@@0|) (let ((|c1#0| (_module.cmd._h1 |c#0@@0|)))
(let ((|c0#0| (_module.cmd._h0 |c#0@@0|)))
(exists ((|s'#0| Int) ) (!  (and (_module.__default.CoBigStep $ly@@0 |c0#0| |s#0@@0| |s'#0|) (_module.__default.CoBigStep $ly@@0 |c1#0| |s'#0| |t#0@@0|))
 :qid |Incdfy.269:12|
 :skolemid |1043|
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c1#0| |s'#0| |t#0@@0|))
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c0#0| |s#0@@0| |s'#0|))
)))) (let ((|body#0| (_module.cmd._h2 |c#0@@0|)))
 (or (= |s#0@@0| |t#0@@0|) (exists ((|s'#1| Int) ) (!  (and (_module.__default.CoBigStep $ly@@0 |body#0| |s#0@@0| |s'#1|) (_module.__default.CoBigStep $ly@@0 |c#0@@0| |s'#1| |t#0@@0|))
 :qid |Incdfy.272:12|
 :skolemid |1044|
 :pattern ( (_module.__default.CoBigStep $ly@@0 |c#0@@0| |s'#1| |t#0@@0|))
 :pattern ( (_module.__default.CoBigStep $ly@@0 |body#0| |s#0@@0| |s'#1|))
)))))))))
 :qid |Incdfy.263:20|
 :skolemid |1047|
 :pattern ( (_module.__default.CoBigStep ($LS $ly@@0) |c#0@@0| |s#0@@0| |t#0@@0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@0| T@U) (|c#0@@1| T@U) (|s#0@@1| Int) (|t#0@@1| Int) ) (!  (=> (or (|_module.__default.CoBigStep_h#canCall| (Lit BoxType |_k#0@@0|) |c#0@@1| |s#0@@1| |t#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@1| Tclass._module.cmd))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (_module.cmd.Inc_q |c#0@@1|)) (and (=> (_module.cmd.Seq_q |c#0@@1|) (let ((|c1#6| (_module.cmd._h1 |c#0@@1|)))
(let ((|c0#6| (_module.cmd._h0 |c#0@@1|)))
(forall ((|s'#16| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|) (=> (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#6| |s'#16| |t#0@@1|)))
 :qid |Incdfy.269:12|
 :skolemid |1078|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#6| |s'#16| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|))
))))) (=> (not (_module.cmd.Seq_q |c#0@@1|)) (let ((|body#6| (_module.cmd._h2 |c#0@@1|)))
 (=> (or (not (= |s#0@@1| |t#0@@1|)) (not true)) (forall ((|s'#17| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|) (=> (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#17| |t#0@@1|)))
 :qid |Incdfy.272:12|
 :skolemid |1079|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#17| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|))
)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.cmd.Inc_q |c#0@@1|) (= |t#0@@1| (+ |s#0@@1| 1)) (ite (_module.cmd.Seq_q |c#0@@1|) (let ((|c1#7| (_module.cmd._h1 |c#0@@1|)))
(let ((|c0#7| (_module.cmd._h0 |c#0@@1|)))
(exists ((|s'#18| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#7| |s#0@@1| |s'#18|) (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#7| |s'#18| |t#0@@1|))
 :qid |Incdfy.269:12|
 :skolemid |1081|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#7| |s'#18| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#7| |s#0@@1| |s'#18|))
)))) (let ((|body#7| (_module.cmd._h2 |c#0@@1|)))
 (or (= |s#0@@1| |t#0@@1|) (exists ((|s'#19| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#7| |s#0@@1| |s'#19|) (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#19| |t#0@@1|))
 :qid |Incdfy.272:12|
 :skolemid |1082|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#19| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#7| |s#0@@1| |s'#19|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|_module.__default.CoBigStep_h#canCall| |_k'#1| |c#0@@1| |s#0@@1| |t#0@@1|))
 :qid |Incdfy.263:20|
 :skolemid |1080|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) |_k'#1| |c#0@@1| |s#0@@1| |t#0@@1|))
))))) (= (_module.__default.CoBigStep_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) |c#0@@1| |s#0@@1| |t#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.cmd.Inc_q |c#0@@1|) (= |t#0@@1| (+ |s#0@@1| 1)) (ite (_module.cmd.Seq_q |c#0@@1|) (let ((|c1#5| (_module.cmd._h1 |c#0@@1|)))
(let ((|c0#5| (_module.cmd._h0 |c#0@@1|)))
(exists ((|s'#14| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#5| |s#0@@1| |s'#14|) (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#5| |s'#14| |t#0@@1|))
 :qid |Incdfy.269:12|
 :skolemid |1075|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c1#5| |s'#14| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c0#5| |s#0@@1| |s'#14|))
)))) (let ((|body#5| (_module.cmd._h2 |c#0@@1|)))
 (or (= |s#0@@1| |t#0@@1|) (exists ((|s'#15| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#5| |s#0@@1| |s'#15|) (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#15| |t#0@@1|))
 :qid |Incdfy.272:12|
 :skolemid |1076|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |c#0@@1| |s'#15| |t#0@@1|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |body#5| |s#0@@1| |s'#15|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (_module.__default.CoBigStep_h ($LS $ly@@1) |_k'#1@@0| |c#0@@1| |s#0@@1| |t#0@@1|))
 :qid |Incdfy.263:20|
 :skolemid |1077|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) |_k'#1@@0| |c#0@@1| |s#0@@1| |t#0@@1|))
)))))))
 :qid |Incdfy.263:20|
 :weight 3
 :skolemid |1083|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@1) (Lit BoxType |_k#0@@0|) |c#0@@1| |s#0@@1| |t#0@@1|))
))))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.cmd.Inc|) |##_module.cmd.Inc|))
(assert ($Is DatatypeTypeType |#_module.cmd.Inc| Tclass._module.cmd))
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
(assert (forall ((d T@U) ) (! (= (_module.cmd.Inc_q d) (= (DatatypeCtorId d) |##_module.cmd.Inc|))
 :qid |unknown.0:0|
 :skolemid |1143|
 :pattern ( (_module.cmd.Inc_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.cmd.Seq_q d@@0) (= (DatatypeCtorId d@@0) |##_module.cmd.Seq|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.cmd.Seq_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.cmd.Repeat_q d@@1) (= (DatatypeCtorId d@@1) |##_module.cmd.Repeat|))
 :qid |unknown.0:0|
 :skolemid |1158|
 :pattern ( (_module.cmd.Repeat_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|c#0@@2| T@U) (|s#0@@2| Int) (|t#0@@2| Int) ) (!  (=> (and ($Is DatatypeTypeType |c#0@@2| Tclass._module.cmd) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.CoBigStep_h ($LS $ly@@2) |_k#0@@1| |c#0@@2| |s#0@@2| |t#0@@2|)
 :qid |Incdfy.263:20|
 :skolemid |1048|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@2) |_k#0@@1| |c#0@@2| |s#0@@2| |t#0@@2|))
))) (_module.__default.CoBigStep ($LS $ly@@2) |c#0@@2| |s#0@@2| |t#0@@2|))
 :qid |Incdfy.263:20|
 :skolemid |1050|
 :pattern ( (_module.__default.CoBigStep ($LS $ly@@2) |c#0@@2| |s#0@@2| |t#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| T@U) (|c#0@@3| T@U) (|s#0@@3| Int) (|t#0@@3| Int) ) (!  (=> (or (|_module.__default.CoBigStep_h#canCall| |_k#0@@2| |c#0@@3| |s#0@@3| |t#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@3| Tclass._module.cmd))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (not (_module.cmd.Inc_q |c#0@@3|)) (and (=> (_module.cmd.Seq_q |c#0@@3|) (let ((|c1#3| (_module.cmd._h1 |c#0@@3|)))
(let ((|c0#3| (_module.cmd._h0 |c#0@@3|)))
(forall ((|s'#10| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#3| |s#0@@3| |s'#10|) (=> (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#3| |s#0@@3| |s'#10|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#3| |s'#10| |t#0@@3|)))
 :qid |Incdfy.269:12|
 :skolemid |1069|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#3| |s'#10| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#3| |s#0@@3| |s'#10|))
))))) (=> (not (_module.cmd.Seq_q |c#0@@3|)) (let ((|body#3| (_module.cmd._h2 |c#0@@3|)))
 (=> (or (not (= |s#0@@3| |t#0@@3|)) (not true)) (forall ((|s'#11| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#3| |s#0@@3| |s'#11|) (=> (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#3| |s#0@@3| |s'#11|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#11| |t#0@@3|)))
 :qid |Incdfy.272:12|
 :skolemid |1070|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#11| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#3| |s#0@@3| |s'#11|))
)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.cmd.Inc_q |c#0@@3|) (= |t#0@@3| (+ |s#0@@3| 1)) (ite (_module.cmd.Seq_q |c#0@@3|) (let ((|c1#4| (_module.cmd._h1 |c#0@@3|)))
(let ((|c0#4| (_module.cmd._h0 |c#0@@3|)))
(exists ((|s'#12| Int) ) (!  (and (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#4| |s#0@@3| |s'#12|) (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#4| |s'#12| |t#0@@3|))
 :qid |Incdfy.269:12|
 :skolemid |1072|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#4| |s'#12| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#4| |s#0@@3| |s'#12|))
)))) (let ((|body#4| (_module.cmd._h2 |c#0@@3|)))
 (or (= |s#0@@3| |t#0@@3|) (exists ((|s'#13| Int) ) (!  (and (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#4| |s#0@@3| |s'#13|) (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#13| |t#0@@3|))
 :qid |Incdfy.272:12|
 :skolemid |1073|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#13| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#4| |s#0@@3| |s'#13|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|_module.__default.CoBigStep_h#canCall| |_k'#0| |c#0@@3| |s#0@@3| |t#0@@3|))
 :qid |Incdfy.263:20|
 :skolemid |1071|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 |_k'#0| |c#0@@3| |s#0@@3| |t#0@@3|))
))))) (= (_module.__default.CoBigStep_h ($LS $ly@@3) |_k#0@@2| |c#0@@3| |s#0@@3| |t#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (ite (_module.cmd.Inc_q |c#0@@3|) (= |t#0@@3| (+ |s#0@@3| 1)) (ite (_module.cmd.Seq_q |c#0@@3|) (let ((|c1#2| (_module.cmd._h1 |c#0@@3|)))
(let ((|c0#2| (_module.cmd._h0 |c#0@@3|)))
(exists ((|s'#8| Int) ) (!  (and (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#2| |s#0@@3| |s'#8|) (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#2| |s'#8| |t#0@@3|))
 :qid |Incdfy.269:12|
 :skolemid |1066|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c1#2| |s'#8| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c0#2| |s#0@@3| |s'#8|))
)))) (let ((|body#2| (_module.cmd._h2 |c#0@@3|)))
 (or (= |s#0@@3| |t#0@@3|) (exists ((|s'#9| Int) ) (!  (and (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#2| |s#0@@3| |s'#9|) (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#9| |t#0@@3|))
 :qid |Incdfy.272:12|
 :skolemid |1067|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |c#0@@3| |s'#9| |t#0@@3|))
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) |body#2| |s#0@@3| |s'#9|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (_module.__default.CoBigStep_h $ly@@3 |_k'#0@@0| |c#0@@3| |s#0@@3| |t#0@@3|))
 :qid |Incdfy.263:20|
 :skolemid |1068|
 :pattern ( (_module.__default.CoBigStep_h $ly@@3 |_k'#0@@0| |c#0@@3| |s#0@@3| |t#0@@3|))
)))))))
 :qid |Incdfy.263:20|
 :skolemid |1074|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@3) |_k#0@@2| |c#0@@3| |s#0@@3| |t#0@@3|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.cmd.Seq_q d@@2) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@2 (|#_module.cmd.Seq| |a#5#0#0| |a#5#1#0|))
 :qid |Incdfy.4:26|
 :skolemid |1147|
)))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( (_module.cmd.Seq_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.cmd.Inc_q d@@3) (= d@@3 |#_module.cmd.Inc|))
 :qid |unknown.0:0|
 :skolemid |1144|
 :pattern ( (_module.cmd.Inc_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.cmd.Repeat_q d@@4) (exists ((|a#13#0#0| T@U) ) (! (= d@@4 (|#_module.cmd.Repeat| |a#13#0#0|))
 :qid |Incdfy.4:45|
 :skolemid |1159|
)))
 :qid |unknown.0:0|
 :skolemid |1160|
 :pattern ( (_module.cmd.Repeat_q d@@4))
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
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.cmd.Repeat| |a#14#0#0|) Tclass._module.cmd) ($Is DatatypeTypeType |a#14#0#0| Tclass._module.cmd))
 :qid |Incdfy.4:45|
 :skolemid |1161|
 :pattern ( ($Is DatatypeTypeType (|#_module.cmd.Repeat| |a#14#0#0|) Tclass._module.cmd))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|c#0@@4| T@U) (|s#0@@4| Int) (|t#0@@4| Int) (|_k#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |c#0@@4| Tclass._module.cmd) (= |_k#0@@3| (|ORD#FromNat| 0))) (_module.__default.CoBigStep_h $ly@@4 |_k#0@@3| |c#0@@4| |s#0@@4| |t#0@@4|))
 :qid |Incdfy.263:20|
 :skolemid |1051|
 :pattern ( (_module.__default.CoBigStep_h $ly@@4 |_k#0@@3| |c#0@@4| |s#0@@4| |t#0@@4|))
))))
(assert (forall (($ly@@5 T@U) (|c#0@@5| T@U) (|s#0@@5| Int) (|t#0@@5| Int) ) (! (= (_module.__default.CoBigStep ($LS $ly@@5) |c#0@@5| |s#0@@5| |t#0@@5|) (_module.__default.CoBigStep $ly@@5 |c#0@@5| |s#0@@5| |t#0@@5|))
 :qid |Incdfy.263:20|
 :skolemid |1039|
 :pattern ( (_module.__default.CoBigStep ($LS $ly@@5) |c#0@@5| |s#0@@5| |t#0@@5|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.cmd.Seq| |a#4#0#0| |a#4#1#0|)) |##_module.cmd.Seq|)
 :qid |Incdfy.4:26|
 :skolemid |1145|
 :pattern ( (|#_module.cmd.Seq| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.cmd._h0 (|#_module.cmd.Seq| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Incdfy.4:26|
 :skolemid |1153|
 :pattern ( (|#_module.cmd.Seq| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.cmd._h1 (|#_module.cmd.Seq| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Incdfy.4:26|
 :skolemid |1155|
 :pattern ( (|#_module.cmd.Seq| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.cmd.Repeat| |a#12#0#0|)) |##_module.cmd.Repeat|)
 :qid |Incdfy.4:45|
 :skolemid |1157|
 :pattern ( (|#_module.cmd.Repeat| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_module.cmd._h2 (|#_module.cmd.Repeat| |a#16#0#0|)) |a#16#0#0|)
 :qid |Incdfy.4:45|
 :skolemid |1164|
 :pattern ( (|#_module.cmd.Repeat| |a#16#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|c#0@@6| T@U) (|s#0@@6| Int) (|t#0@@6| Int) ) (!  (=> (and ($Is DatatypeTypeType |c#0@@6| Tclass._module.cmd) (_module.__default.CoBigStep ($LS $ly@@6) |c#0@@6| |s#0@@6| |t#0@@6|)) (forall ((|_k#0@@4| T@U) ) (! (_module.__default.CoBigStep_h ($LS $ly@@6) |_k#0@@4| |c#0@@6| |s#0@@6| |t#0@@6|)
 :qid |Incdfy.263:20|
 :skolemid |1048|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@6) |_k#0@@4| |c#0@@6| |s#0@@6| |t#0@@6|))
)))
 :qid |Incdfy.263:20|
 :skolemid |1049|
 :pattern ( (_module.__default.CoBigStep ($LS $ly@@6) |c#0@@6| |s#0@@6| |t#0@@6|))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.cmd| d@@5) (or (or (_module.cmd.Inc_q d@@5) (_module.cmd.Seq_q d@@5)) (_module.cmd.Repeat_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1167|
 :pattern ( (|$IsA#_module.cmd| d@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|_k#0@@5| T@U) (|c#0@@7| T@U) (|s#0@@7| Int) (|t#0@@7| Int) ) (!  (=> (or (|_module.__default.CoBigStep_h#canCall| (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |c#0@@7|) (LitInt |s#0@@7|) (LitInt |t#0@@7|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@7| Tclass._module.cmd))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.cmd.Inc_q (Lit DatatypeTypeType |c#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.cmd.Seq_q (Lit DatatypeTypeType |c#0@@7|))))) (let ((|c1#9| (Lit DatatypeTypeType (_module.cmd._h1 (Lit DatatypeTypeType |c#0@@7|)))))
(let ((|c0#9| (Lit DatatypeTypeType (_module.cmd._h0 (Lit DatatypeTypeType |c#0@@7|)))))
(forall ((|s'#22| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#9| (LitInt |s#0@@7|) |s'#22|) (=> (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#9| (LitInt |s#0@@7|) |s'#22|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#9| |s'#22| (LitInt |t#0@@7|))))
 :qid |Incdfy.269:12|
 :skolemid |1087|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#9| |s'#22| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#9| |s#0@@7| |s'#22|))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.cmd.Seq_q (Lit DatatypeTypeType |c#0@@7|)))))) (let ((|body#9| (Lit DatatypeTypeType (_module.cmd._h2 (Lit DatatypeTypeType |c#0@@7|)))))
 (=> (or (not (= (LitInt |s#0@@7|) (LitInt |t#0@@7|))) (not true)) (forall ((|s'#23| Int) ) (!  (and (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#9| (LitInt |s#0@@7|) |s'#23|) (=> (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#9| (LitInt |s#0@@7|) |s'#23|) (|_module.__default.CoBigStep_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |c#0@@7|) |s'#23| (LitInt |t#0@@7|))))
 :qid |Incdfy.272:12|
 :skolemid |1088|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c#0@@7| |s'#23| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#9| |s#0@@7| |s'#23|))
)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.cmd.Inc_q (Lit DatatypeTypeType |c#0@@7|)) (= (LitInt |t#0@@7|) (LitInt (+ |s#0@@7| 1))) (ite (_module.cmd.Seq_q (Lit DatatypeTypeType |c#0@@7|)) (let ((|c1#10| (Lit DatatypeTypeType (_module.cmd._h1 (Lit DatatypeTypeType |c#0@@7|)))))
(let ((|c0#10| (Lit DatatypeTypeType (_module.cmd._h0 (Lit DatatypeTypeType |c#0@@7|)))))
(exists ((|s'#24| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#10| (LitInt |s#0@@7|) |s'#24|) (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#10| |s'#24| (LitInt |t#0@@7|)))
 :qid |Incdfy.269:12|
 :skolemid |1090|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#10| |s'#24| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#10| |s#0@@7| |s'#24|))
)))) (let ((|body#10| (Lit DatatypeTypeType (_module.cmd._h2 (Lit DatatypeTypeType |c#0@@7|)))))
 (or (= (LitInt |s#0@@7|) (LitInt |t#0@@7|)) (exists ((|s'#25| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#10| (LitInt |s#0@@7|) |s'#25|) (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |c#0@@7|) |s'#25| (LitInt |t#0@@7|)))
 :qid |Incdfy.272:12|
 :skolemid |1091|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c#0@@7| |s'#25| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#10| |s#0@@7| |s'#25|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@5|) (|_module.__default.CoBigStep_h#canCall| |_k'#2| |c#0@@7| |s#0@@7| |t#0@@7|))
 :qid |Incdfy.263:20|
 :skolemid |1089|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) |_k'#2| |c#0@@7| |s#0@@7| |t#0@@7|))
))))) (= (_module.__default.CoBigStep_h ($LS $ly@@7) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |c#0@@7|) (LitInt |s#0@@7|) (LitInt |t#0@@7|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.cmd.Inc_q (Lit DatatypeTypeType |c#0@@7|)) (= (LitInt |t#0@@7|) (LitInt (+ |s#0@@7| 1))) (ite (_module.cmd.Seq_q (Lit DatatypeTypeType |c#0@@7|)) (let ((|c1#8| (Lit DatatypeTypeType (_module.cmd._h1 (Lit DatatypeTypeType |c#0@@7|)))))
(let ((|c0#8| (Lit DatatypeTypeType (_module.cmd._h0 (Lit DatatypeTypeType |c#0@@7|)))))
(exists ((|s'#20| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#8| (LitInt |s#0@@7|) |s'#20|) (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#8| |s'#20| (LitInt |t#0@@7|)))
 :qid |Incdfy.269:12|
 :skolemid |1084|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#8| |s'#20| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#8| |s#0@@7| |s'#20|))
)))) (let ((|body#8| (Lit DatatypeTypeType (_module.cmd._h2 (Lit DatatypeTypeType |c#0@@7|)))))
 (or (= (LitInt |s#0@@7|) (LitInt |t#0@@7|)) (exists ((|s'#21| Int) ) (!  (and (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#8| (LitInt |s#0@@7|) |s'#21|) (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |c#0@@7|) |s'#21| (LitInt |t#0@@7|)))
 :qid |Incdfy.272:12|
 :skolemid |1085|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c#0@@7| |s'#21| |t#0@@7|))
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#8| |s#0@@7| |s'#21|))
))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@5|) (_module.__default.CoBigStep_h ($LS $ly@@7) |_k'#2@@0| |c#0@@7| |s#0@@7| |t#0@@7|))
 :qid |Incdfy.263:20|
 :skolemid |1086|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) |_k'#2@@0| |c#0@@7| |s#0@@7| |t#0@@7|))
)))))))
 :qid |Incdfy.263:20|
 :weight 3
 :skolemid |1092|
 :pattern ( (_module.__default.CoBigStep_h ($LS $ly@@7) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |c#0@@7|) (LitInt |s#0@@7|) (LitInt |t#0@@7|)))
))))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.cmd.Seq| |a#9#0#0| |a#9#1#0|)))
 :qid |Incdfy.4:26|
 :skolemid |1154|
 :pattern ( (|#_module.cmd.Seq| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.cmd.Seq| |a#11#0#0| |a#11#1#0|)))
 :qid |Incdfy.4:26|
 :skolemid |1156|
 :pattern ( (|#_module.cmd.Seq| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (DtRank |a#17#0#0|) (DtRank (|#_module.cmd.Repeat| |a#17#0#0|)))
 :qid |Incdfy.4:45|
 :skolemid |1165|
 :pattern ( (|#_module.cmd.Repeat| |a#17#0#0|))
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
 :skolemid |1173|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.cmd) (or (or (_module.cmd.Inc_q d@@6) (_module.cmd.Seq_q d@@6)) (_module.cmd.Repeat_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1168|
 :pattern ( (_module.cmd.Repeat_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.cmd))
 :pattern ( (_module.cmd.Seq_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.cmd))
 :pattern ( (_module.cmd.Inc_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.cmd))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass._module.cmd)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.cmd $h))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.cmd $h))
)))
(assert (= (Tag Tclass._module.cmd) Tagclass._module.cmd))
(assert (= (TagFamily Tclass._module.cmd) tytagFamily$cmd))
(assert (= |#_module.cmd.Inc| (Lit DatatypeTypeType |#_module.cmd.Inc|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.cmd.Seq_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.cmd $h@@0))) ($IsAlloc DatatypeTypeType (_module.cmd._h0 d@@8) Tclass._module.cmd $h@@0))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.cmd._h0 d@@8) Tclass._module.cmd $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.cmd.Seq_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.cmd $h@@1))) ($IsAlloc DatatypeTypeType (_module.cmd._h1 d@@9) Tclass._module.cmd $h@@1))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.cmd._h1 d@@9) Tclass._module.cmd $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.cmd.Repeat_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.cmd $h@@2))) ($IsAlloc DatatypeTypeType (_module.cmd._h2 d@@10) Tclass._module.cmd $h@@2))
 :qid |unknown.0:0|
 :skolemid |1162|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.cmd._h2 d@@10) Tclass._module.cmd $h@@2))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.cmd.Seq| (Lit DatatypeTypeType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.cmd.Seq| |a#7#0#0| |a#7#1#0|)))
 :qid |Incdfy.4:26|
 :skolemid |1152|
 :pattern ( (|#_module.cmd.Seq| (Lit DatatypeTypeType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_module.cmd.Repeat| (Lit DatatypeTypeType |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.cmd.Repeat| |a#15#0#0|)))
 :qid |Incdfy.4:45|
 :skolemid |1163|
 :pattern ( (|#_module.cmd.Repeat| (Lit DatatypeTypeType |a#15#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@8| () Int)
(declare-fun |t#0@@8| () Int)
(declare-fun |c0#1_0@0| () T@U)
(declare-fun |s'#1_1@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |c1#1_0@0| () T@U)
(declare-fun |s'#1_0@0| () Int)
(declare-fun |c#0@@8| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |_mcc#0#1_0@0| () T@U)
(declare-fun |_mcc#1#1_0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |let#1_1#0#0| () T@U)
(declare-fun |body#0_0@0| () T@U)
(declare-fun |s'#0_1_1@0| () Int)
(declare-fun |s'#0_1_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |_mcc#2#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.CoMonotonic)
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
 (=> (= (ControlFlow 0 0) 48) (let ((anon17_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (<= |s#0@@8| |t#0@@8|))))
(let ((anon5_correct  (=> (and (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_1@0|) (=> (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_1@0|) (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_1@0| |t#0@@8|))) (and (=> (= (ControlFlow 0 28) (- 0 41)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| (LitInt 0)) (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| (LitInt 0) |t#0@@8|))) (exists ((|$as#s'1_0#1_0| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |$as#s'1_0#1_0|) (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |$as#s'1_0#1_0| |t#0@@8|))
 :qid |Incdfy.310:9|
 :skolemid |1140|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| (LitInt 0)) (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| (LitInt 0) |t#0@@8|))) (exists ((|$as#s'1_0#1_0@@0| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |$as#s'1_0#1_0@@0|) (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |$as#s'1_0#1_0@@0| |t#0@@8|))
 :qid |Incdfy.310:9|
 :skolemid |1140|
))) (=> (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|)) (and (=> (= (ControlFlow 0 28) (- 0 40)) (or (or (<= 0 |s#0@@8|) (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|))) (= |s#0@@8| |s#0@@8|))) (=> (or (or (<= 0 |s#0@@8|) (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|))) (= |s#0@@8| |s#0@@8|)) (and (=> (= (ControlFlow 0 28) (- 0 39)) (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|))) (< |s#0@@8| |s#0@@8|)) (= |s'#1_0@0| |t#0@@8|))) (=> (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|))) (< |s#0@@8| |s#0@@8|)) (= |s'#1_0@0| |t#0@@8|)) (and (=> (= (ControlFlow 0 28) (- 0 38)) (or (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |c0#1_0@0|) (DtRank |c#0@@8|)) (or (< |s#0@@8| |s#0@@8|) (and (= |s#0@@8| |s#0@@8|) (< |s'#1_0@0| |t#0@@8|)))))) (=> (or (< (DtRank |c0#1_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |c0#1_0@0|) (DtRank |c#0@@8|)) (or (< |s#0@@8| |s#0@@8|) (and (= |s#0@@8| |s#0@@8|) (< |s'#1_0@0| |t#0@@8|))))) (and (=> (= (ControlFlow 0 28) (- 0 37)) (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (_module.cmd.Inc_q |c0#1_0@0|) (= |s'#1_0@0| (+ |s#0@@8| 1)))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (_module.cmd.Inc_q |c0#1_0@0|) (= |s'#1_0@0| (+ |s#0@@8| 1))))) (and (=> (= (ControlFlow 0 28) (- 0 36)) (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (not (_module.cmd.Inc_q |c0#1_0@0|)) (=> (_module.cmd.Seq_q |c0#1_0@0|) (let ((|c1#0@@0| (_module.cmd._h1 |c0#1_0@0|)))
(let ((|c0#0@@0| (_module.cmd._h0 |c0#1_0@0|)))
(exists ((|s'#0@@0| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@0| |s#0@@8| |s'#0@@0|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@0| |s'#0@@0| |s'#1_0@0|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@0| |s'#0@@0| |s'#1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@0| |s#0@@8| |s'#0@@0|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (not (_module.cmd.Inc_q |c0#1_0@0|)) (=> (_module.cmd.Seq_q |c0#1_0@0|) (let ((|c1#0@@1| (_module.cmd._h1 |c0#1_0@0|)))
(let ((|c0#0@@1| (_module.cmd._h0 |c0#1_0@0|)))
(exists ((|s'#0@@1| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@1| |s#0@@8| |s'#0@@1|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@1| |s'#0@@1| |s'#1_0@0|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@1| |s'#0@@1| |s'#1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@1| |s#0@@8| |s'#0@@1|))
)))))))) (and (=> (= (ControlFlow 0 28) (- 0 35)) (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (not (_module.cmd.Inc_q |c0#1_0@0|)) (=> (not (_module.cmd.Seq_q |c0#1_0@0|)) (let ((|body#0@@0| (_module.cmd._h2 |c0#1_0@0|)))
 (or (= |s#0@@8| |s'#1_0@0|) (exists ((|s'#1@@0| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@0| |s#0@@8| |s'#1@@0|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c0#1_0@0| |s'#1@@0| |s'#1_0@0|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c0#1_0@0| |s'#1@@0| |s'#1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@0| |s#0@@8| |s'#1@@0|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_0@0|) (=> (not (_module.cmd.Inc_q |c0#1_0@0|)) (=> (not (_module.cmd.Seq_q |c0#1_0@0|)) (let ((|body#0@@1| (_module.cmd._h2 |c0#1_0@0|)))
 (or (= |s#0@@8| |s'#1_0@0|) (exists ((|s'#1@@1| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@1| |s#0@@8| |s'#1@@1|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c0#1_0@0| |s'#1@@1| |s'#1_0@0|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c0#1_0@0| |s'#1@@1| |s'#1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@1| |s#0@@8| |s'#1@@1|))
)))))))) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (<= |s#0@@8| |s'#1_0@0|) (= $Heap@0 $Heap@3))) (and (=> (= (ControlFlow 0 28) (- 0 34)) (or (or (<= 0 |s#0@@8|) (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|))) (= |s'#1_0@0| |s#0@@8|))) (=> (or (or (<= 0 |s#0@@8|) (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|))) (= |s'#1_0@0| |s#0@@8|)) (and (=> (= (ControlFlow 0 28) (- 0 33)) (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|))) (< |s'#1_0@0| |s#0@@8|)) (= |t#0@@8| |t#0@@8|))) (=> (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|))) (< |s'#1_0@0| |s#0@@8|)) (= |t#0@@8| |t#0@@8|)) (and (=> (= (ControlFlow 0 28) (- 0 32)) (or (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |c1#1_0@0|) (DtRank |c#0@@8|)) (or (< |s'#1_0@0| |s#0@@8|) (and (= |s'#1_0@0| |s#0@@8|) (< |t#0@@8| |t#0@@8|)))))) (=> (or (< (DtRank |c1#1_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |c1#1_0@0|) (DtRank |c#0@@8|)) (or (< |s'#1_0@0| |s#0@@8|) (and (= |s'#1_0@0| |s#0@@8|) (< |t#0@@8| |t#0@@8|))))) (and (=> (= (ControlFlow 0 28) (- 0 31)) (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (_module.cmd.Inc_q |c1#1_0@0|) (= |t#0@@8| (+ |s'#1_0@0| 1)))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (_module.cmd.Inc_q |c1#1_0@0|) (= |t#0@@8| (+ |s'#1_0@0| 1))))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c1#1_0@0|)) (=> (_module.cmd.Seq_q |c1#1_0@0|) (let ((|c1#0@@2| (_module.cmd._h1 |c1#1_0@0|)))
(let ((|c0#0@@2| (_module.cmd._h0 |c1#1_0@0|)))
(exists ((|s'#0@@2| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@2| |s'#1_0@0| |s'#0@@2|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@2| |s'#0@@2| |t#0@@8|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@2| |s'#0@@2| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@2| |s'#1_0@0| |s'#0@@2|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c1#1_0@0|)) (=> (_module.cmd.Seq_q |c1#1_0@0|) (let ((|c1#0@@3| (_module.cmd._h1 |c1#1_0@0|)))
(let ((|c0#0@@3| (_module.cmd._h0 |c1#1_0@0|)))
(exists ((|s'#0@@3| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@3| |s'#1_0@0| |s'#0@@3|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@3| |s'#0@@3| |t#0@@8|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@3| |s'#0@@3| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@3| |s'#1_0@0| |s'#0@@3|))
)))))))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c1#1_0@0|)) (=> (not (_module.cmd.Seq_q |c1#1_0@0|)) (let ((|body#0@@2| (_module.cmd._h2 |c1#1_0@0|)))
 (or (= |s'#1_0@0| |t#0@@8|) (exists ((|s'#1@@2| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@2| |s'#1_0@0| |s'#1@@2|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c1#1_0@0| |s'#1@@2| |t#0@@8|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c1#1_0@0| |s'#1@@2| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@2| |s'#1_0@0| |s'#1@@2|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c1#1_0@0| |s'#1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c1#1_0@0|)) (=> (not (_module.cmd.Seq_q |c1#1_0@0|)) (let ((|body#0@@3| (_module.cmd._h2 |c1#1_0@0|)))
 (or (= |s'#1_0@0| |t#0@@8|) (exists ((|s'#1@@3| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@3| |s'#1_0@0| |s'#1@@3|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c1#1_0@0| |s'#1@@3| |t#0@@8|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c1#1_0@0| |s'#1@@3| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@3| |s'#1_0@0| |s'#1@@3|))
)))))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (<= |s'#1_0@0| |t#0@@8|)) (and (= $Heap@3 $Heap@4) (= (ControlFlow 0 28) 4))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_1@0|)) (= (ControlFlow 0 43) 28)) anon5_correct)))
(let ((anon18_Then_correct  (=> (and (_module.__default.CoBigStep ($LS $LZ) |c0#1_0@0| |s#0@@8| |s'#1_1@0|) ($IsAlloc DatatypeTypeType |c1#1_0@0| Tclass._module.cmd $Heap@0)) (=> (and (and ($IsAlloc intType (int_2_U |s'#1_1@0|) TInt $Heap@0) ($IsAlloc intType (int_2_U |t#0@@8|) TInt $Heap@0)) (and (|_module.__default.CoBigStep#canCall| |c1#1_0@0| |s'#1_1@0| |t#0@@8|) (= (ControlFlow 0 42) 28))) anon5_correct))))
(let ((anon17_Then_correct  (=> (and (and ($IsAlloc DatatypeTypeType |c0#1_0@0| Tclass._module.cmd $Heap@0) ($IsAlloc intType (int_2_U |s#0@@8|) TInt $Heap@0)) (and ($IsAlloc intType (int_2_U |s'#1_1@0|) TInt $Heap@0) (|_module.__default.CoBigStep#canCall| |c0#1_0@0| |s#0@@8| |s'#1_1@0|))) (and (=> (= (ControlFlow 0 44) 42) anon18_Then_correct) (=> (= (ControlFlow 0 44) 43) anon18_Else_correct)))))
(let ((anon16_Then_correct  (=> (= |c#0@@8| (|#_module.cmd.Seq| |_mcc#0#1_0@0| |_mcc#1#1_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#1_0@0| Tclass._module.cmd) ($Is DatatypeTypeType |_mcc#1#1_0@0| Tclass._module.cmd)) (=> (and (and (and (and ($Is DatatypeTypeType |c1#1_0@0| Tclass._module.cmd) ($IsAlloc DatatypeTypeType |c1#1_0@0| Tclass._module.cmd $Heap@0)) (= |let#1_0#0#0| |_mcc#1#1_0@0|)) (and ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.cmd) (= |c1#1_0@0| |let#1_0#0#0|))) (and (and (and ($Is DatatypeTypeType |c0#1_0@0| Tclass._module.cmd) ($IsAlloc DatatypeTypeType |c0#1_0@0| Tclass._module.cmd $Heap@0)) (= |let#1_1#0#0| |_mcc#0#1_0@0|)) (and ($Is DatatypeTypeType |let#1_1#0#0| Tclass._module.cmd) (= |c0#1_0@0| |let#1_1#0#0|)))) (and (=> (= (ControlFlow 0 45) 44) anon17_Then_correct) (=> (= (ControlFlow 0 45) 27) anon17_Else_correct)))))))
(let ((anon12_correct  (=> (and (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_1@0|) (=> (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_1@0|) (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_1@0| |t#0@@8|))) (and (=> (= (ControlFlow 0 7) (- 0 20)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| (LitInt 0)) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| (LitInt 0) |t#0@@8|))) (exists ((|$as#s'0_1_0#0_1_0| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |$as#s'0_1_0#0_1_0|) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |$as#s'0_1_0#0_1_0| |t#0@@8|))
 :qid |Incdfy.316:11|
 :skolemid |1137|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| (LitInt 0)) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| (LitInt 0) |t#0@@8|))) (exists ((|$as#s'0_1_0#0_1_0@@0| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |$as#s'0_1_0#0_1_0@@0|) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |$as#s'0_1_0#0_1_0@@0| |t#0@@8|))
 :qid |Incdfy.316:11|
 :skolemid |1137|
))) (=> (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|)) (and (=> (= (ControlFlow 0 7) (- 0 19)) (or (or (<= 0 |s#0@@8|) (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|))) (= |s#0@@8| |s#0@@8|))) (=> (or (or (<= 0 |s#0@@8|) (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|))) (= |s#0@@8| |s#0@@8|)) (and (=> (= (ControlFlow 0 7) (- 0 18)) (or (or (or (<= 0 |t#0@@8|) (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|))) (< |s#0@@8| |s#0@@8|)) (= |s'#0_1_0@0| |t#0@@8|))) (=> (or (or (or (<= 0 |t#0@@8|) (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|))) (< |s#0@@8| |s#0@@8|)) (= |s'#0_1_0@0| |t#0@@8|)) (and (=> (= (ControlFlow 0 7) (- 0 17)) (or (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |body#0_0@0|) (DtRank |c#0@@8|)) (or (< |s#0@@8| |s#0@@8|) (and (= |s#0@@8| |s#0@@8|) (< |s'#0_1_0@0| |t#0@@8|)))))) (=> (or (< (DtRank |body#0_0@0|) (DtRank |c#0@@8|)) (and (= (DtRank |body#0_0@0|) (DtRank |c#0@@8|)) (or (< |s#0@@8| |s#0@@8|) (and (= |s#0@@8| |s#0@@8|) (< |s'#0_1_0@0| |t#0@@8|))))) (and (=> (= (ControlFlow 0 7) (- 0 16)) (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (_module.cmd.Inc_q |body#0_0@0|) (= |s'#0_1_0@0| (+ |s#0@@8| 1)))))) (=> (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (_module.cmd.Inc_q |body#0_0@0|) (= |s'#0_1_0@0| (+ |s#0@@8| 1))))) (and (=> (= (ControlFlow 0 7) (- 0 15)) (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (not (_module.cmd.Inc_q |body#0_0@0|)) (=> (_module.cmd.Seq_q |body#0_0@0|) (let ((|c1#0@@4| (_module.cmd._h1 |body#0_0@0|)))
(let ((|c0#0@@4| (_module.cmd._h0 |body#0_0@0|)))
(exists ((|s'#0@@4| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@4| |s#0@@8| |s'#0@@4|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@4| |s'#0@@4| |s'#0_1_0@0|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@4| |s'#0@@4| |s'#0_1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@4| |s#0@@8| |s'#0@@4|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (not (_module.cmd.Inc_q |body#0_0@0|)) (=> (_module.cmd.Seq_q |body#0_0@0|) (let ((|c1#0@@5| (_module.cmd._h1 |body#0_0@0|)))
(let ((|c0#0@@5| (_module.cmd._h0 |body#0_0@0|)))
(exists ((|s'#0@@5| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@5| |s#0@@8| |s'#0@@5|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@5| |s'#0@@5| |s'#0_1_0@0|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@5| |s'#0@@5| |s'#0_1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@5| |s#0@@8| |s'#0@@5|))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 14)) (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (not (_module.cmd.Inc_q |body#0_0@0|)) (=> (not (_module.cmd.Seq_q |body#0_0@0|)) (let ((|body#0@@4| (_module.cmd._h2 |body#0_0@0|)))
 (or (= |s#0@@8| |s'#0_1_0@0|) (exists ((|s'#1@@4| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@4| |s#0@@8| |s'#1@@4|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0_0@0| |s'#1@@4| |s'#0_1_0@0|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0_0@0| |s'#1@@4| |s'#0_1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@4| |s#0@@8| |s'#1@@4|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (or (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_0@0|) (=> (not (_module.cmd.Inc_q |body#0_0@0|)) (=> (not (_module.cmd.Seq_q |body#0_0@0|)) (let ((|body#0@@5| (_module.cmd._h2 |body#0_0@0|)))
 (or (= |s#0@@8| |s'#0_1_0@0|) (exists ((|s'#1@@5| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@5| |s#0@@8| |s'#1@@5|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0_0@0| |s'#1@@5| |s'#0_1_0@0|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0_0@0| |s'#1@@5| |s'#0_1_0@0|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@5| |s#0@@8| |s'#1@@5|))
)))))))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (<= |s#0@@8| |s'#0_1_0@0|) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (or (or (<= 0 |s#0@@8|) (< (DtRank |c#0@@8|) (DtRank |c#0@@8|))) (= |s'#0_1_0@0| |s#0@@8|))) (=> (or (or (<= 0 |s#0@@8|) (< (DtRank |c#0@@8|) (DtRank |c#0@@8|))) (= |s'#0_1_0@0| |s#0@@8|)) (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c#0@@8|) (DtRank |c#0@@8|))) (< |s'#0_1_0@0| |s#0@@8|)) (= |t#0@@8| |t#0@@8|))) (=> (or (or (or (<= 0 |t#0@@8|) (< (DtRank |c#0@@8|) (DtRank |c#0@@8|))) (< |s'#0_1_0@0| |s#0@@8|)) (= |t#0@@8| |t#0@@8|)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (or (< (DtRank |c#0@@8|) (DtRank |c#0@@8|)) (and (= (DtRank |c#0@@8|) (DtRank |c#0@@8|)) (or (< |s'#0_1_0@0| |s#0@@8|) (and (= |s'#0_1_0@0| |s#0@@8|) (< |t#0@@8| |t#0@@8|)))))) (=> (or (< (DtRank |c#0@@8|) (DtRank |c#0@@8|)) (and (= (DtRank |c#0@@8|) (DtRank |c#0@@8|)) (or (< |s'#0_1_0@0| |s#0@@8|) (and (= |s'#0_1_0@0| |s#0@@8|) (< |t#0@@8| |t#0@@8|))))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (_module.cmd.Inc_q |c#0@@8|) (= |t#0@@8| (+ |s'#0_1_0@0| 1)))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (_module.cmd.Inc_q |c#0@@8|) (= |t#0@@8| (+ |s'#0_1_0@0| 1))))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c#0@@8|)) (=> (_module.cmd.Seq_q |c#0@@8|) (let ((|c1#0@@6| (_module.cmd._h1 |c#0@@8|)))
(let ((|c0#0@@6| (_module.cmd._h0 |c#0@@8|)))
(exists ((|s'#0@@6| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@6| |s'#0_1_0@0| |s'#0@@6|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@6| |s'#0@@6| |t#0@@8|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@6| |s'#0@@6| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@6| |s'#0_1_0@0| |s'#0@@6|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c#0@@8|)) (=> (_module.cmd.Seq_q |c#0@@8|) (let ((|c1#0@@7| (_module.cmd._h1 |c#0@@8|)))
(let ((|c0#0@@7| (_module.cmd._h0 |c#0@@8|)))
(exists ((|s'#0@@7| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#0@@7| |s'#0_1_0@0| |s'#0@@7|) (_module.__default.CoBigStep ($LS $LZ) |c1#0@@7| |s'#0@@7| |t#0@@8|))
 :qid |Incdfy.269:12|
 :skolemid |1126|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#0@@7| |s'#0@@7| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#0@@7| |s'#0_1_0@0| |s'#0@@7|))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c#0@@8|)) (=> (not (_module.cmd.Seq_q |c#0@@8|)) (let ((|body#0@@6| (_module.cmd._h2 |c#0@@8|)))
 (or (= |s'#0_1_0@0| |t#0@@8|) (exists ((|s'#1@@6| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@6| |s'#0_1_0@0| |s'#1@@6|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c#0@@8| |s'#1@@6| |t#0@@8|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c#0@@8| |s'#1@@6| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@6| |s'#0_1_0@0| |s'#1@@6|))
))))))))) (=> (=> (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (or (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#0_1_0@0| |t#0@@8|) (=> (not (_module.cmd.Inc_q |c#0@@8|)) (=> (not (_module.cmd.Seq_q |c#0@@8|)) (let ((|body#0@@7| (_module.cmd._h2 |c#0@@8|)))
 (or (= |s'#0_1_0@0| |t#0@@8|) (exists ((|s'#1@@7| Int) ) (!  (and (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@7| |s'#0_1_0@0| |s'#1@@7|) (_module.__default.CoBigStep ($LS ($LS $LZ)) |c#0@@8| |s'#1@@7| |t#0@@8|))
 :qid |Incdfy.272:12|
 :skolemid |1128|
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |c#0@@8| |s'#1@@7| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS ($LS $LZ)) |body#0@@7| |s'#0_1_0@0| |s'#1@@7|))
)))))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (<= |s'#0_1_0@0| |t#0@@8|)) (and (= $Heap@1 $Heap@2) (= (ControlFlow 0 7) 4))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))))))))
(let ((anon22_Else_correct  (=> (and (not (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_1@0|)) (= (ControlFlow 0 22) 7)) anon12_correct)))
(let ((anon22_Then_correct  (=> (and (_module.__default.CoBigStep ($LS $LZ) |body#0_0@0| |s#0@@8| |s'#0_1_1@0|) ($IsAlloc DatatypeTypeType |c#0@@8| Tclass._module.cmd $Heap@0)) (=> (and (and ($IsAlloc intType (int_2_U |s'#0_1_1@0|) TInt $Heap@0) ($IsAlloc intType (int_2_U |t#0@@8|) TInt $Heap@0)) (and (|_module.__default.CoBigStep#canCall| |c#0@@8| |s'#0_1_1@0| |t#0@@8|) (= (ControlFlow 0 21) 7))) anon12_correct))))
(let ((anon21_Then_correct  (=> (and (and ($IsAlloc DatatypeTypeType |body#0_0@0| Tclass._module.cmd $Heap@0) ($IsAlloc intType (int_2_U |s#0@@8|) TInt $Heap@0)) (and ($IsAlloc intType (int_2_U |s'#0_1_1@0|) TInt $Heap@0) (|_module.__default.CoBigStep#canCall| |body#0_0@0| |s#0@@8| |s'#0_1_1@0|))) (and (=> (= (ControlFlow 0 23) 21) anon22_Then_correct) (=> (= (ControlFlow 0 23) 22) anon22_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (= |s#0@@8| |t#0@@8|) (= (ControlFlow 0 6) 4)) GeneratedUnifiedExit_correct)))
(let ((anon15_Then_correct  (=> (and (= |c#0@@8| |#_module.cmd.Inc|) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct)))
(let ((anon21_Else_correct true))
(let ((anon20_Else_correct  (=> (or (not (= |s#0@@8| |t#0@@8|)) (not true)) (and (=> (= (ControlFlow 0 24) 23) anon21_Then_correct) (=> (= (ControlFlow 0 24) 2) anon21_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (= |c#0@@8| (|#_module.cmd.Repeat| |_mcc#2#0_0@0|)) ($Is DatatypeTypeType |_mcc#2#0_0@0| Tclass._module.cmd)) (=> (and (and (and ($Is DatatypeTypeType |body#0_0@0| Tclass._module.cmd) ($IsAlloc DatatypeTypeType |body#0_0@0| Tclass._module.cmd $Heap@0)) (= |let#0_0#0#0| |_mcc#2#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.cmd) (= |body#0_0@0| |let#0_0#0#0|))) (and (=> (= (ControlFlow 0 25) 6) anon20_Then_correct) (=> (= (ControlFlow 0 25) 24) anon20_Else_correct))))))
(let ((anon19_Else_correct true))
(let ((anon16_Else_correct  (=> (or (not (= |c#0@@8| (|#_module.cmd.Seq| |_mcc#0#1_0@0| |_mcc#1#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 26) 25) anon19_Then_correct) (=> (= (ControlFlow 0 26) 1) anon19_Else_correct)))))
(let ((anon15_Else_correct  (=> (or (not (= |c#0@@8| |#_module.cmd.Inc|)) (not true)) (and (=> (= (ControlFlow 0 46) 45) anon16_Then_correct) (=> (= (ControlFlow 0 46) 26) anon16_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.cmd| |c#0@@8|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#c0#0| T@U) (|$ih#s0#0| Int) (|$ih#t0#0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#c0#0| Tclass._module.cmd) (_module.__default.CoBigStep ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t0#0|)) (or (< (DtRank |$ih#c0#0|) (DtRank |c#0@@8|)) (and (= (DtRank |$ih#c0#0|) (DtRank |c#0@@8|)) (or (and (<= 0 |$ih#s0#0|) (< |$ih#s0#0| |s#0@@8|)) (and (= |$ih#s0#0| |s#0@@8|) (and (<= 0 |$ih#t0#0|) (< |$ih#t0#0| |t#0@@8|))))))) (<= |$ih#s0#0| |$ih#t0#0|))
 :qid |Incdfy.303:19|
 :skolemid |1136|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t0#0|))
)))) (and (=> (= (ControlFlow 0 47) 5) anon15_Then_correct) (=> (= (ControlFlow 0 47) 46) anon15_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |c#0@@8| Tclass._module.cmd) ($IsAlloc DatatypeTypeType |c#0@@8| Tclass._module.cmd $Heap)) (|$IsA#_module.cmd| |c#0@@8|)) (= 2 $FunctionContextHeight)) (and (and (|_module.__default.CoBigStep#canCall| |c#0@@8| |s#0@@8| |t#0@@8|) (and (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s#0@@8| |t#0@@8|) (ite (_module.cmd.Inc_q |c#0@@8|) (= |t#0@@8| (+ |s#0@@8| 1)) (ite (_module.cmd.Seq_q |c#0@@8|) (let ((|c1#3@@0| (_module.cmd._h1 |c#0@@8|)))
(let ((|c0#3@@0| (_module.cmd._h0 |c#0@@8|)))
(exists ((|s'#6| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |c0#3@@0| |s#0@@8| |s'#6|) (_module.__default.CoBigStep ($LS $LZ) |c1#3@@0| |s'#6| |t#0@@8|))
 :qid |Incdfy.269:12|
 :skolemid |1134|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c1#3@@0| |s'#6| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c0#3@@0| |s#0@@8| |s'#6|))
)))) (let ((|body#3@@0| (_module.cmd._h2 |c#0@@8|)))
 (or (= |s#0@@8| |t#0@@8|) (exists ((|s'#7| Int) ) (!  (and (_module.__default.CoBigStep ($LS $LZ) |body#3@@0| |s#0@@8| |s'#7|) (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#7| |t#0@@8|))
 :qid |Incdfy.272:12|
 :skolemid |1135|
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |c#0@@8| |s'#7| |t#0@@8|))
 :pattern ( (_module.__default.CoBigStep ($LS $LZ) |body#3@@0| |s#0@@8| |s'#7|))
)))))))) (= (ControlFlow 0 48) 47))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 13))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 11))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
