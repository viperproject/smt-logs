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
(declare-fun Tagclass._module.Term () T@U)
(declare-fun |##_module.Term.S| () T@U)
(declare-fun |##_module.Term.K| () T@U)
(declare-fun |##_module.Term.Apply| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Term () T@U)
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
(declare-fun _module.__default.Step (T@U) T@U)
(declare-fun |_module.__default.Step#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Term () T@U)
(declare-fun _module.Term.S_q (T@U) Bool)
(declare-fun _module.Term.K_q (T@U) Bool)
(declare-fun _module.Term.cdr (T@U) T@U)
(declare-fun _module.Term.car (T@U) T@U)
(declare-fun |$IsA#_module.Term| (T@U) Bool)
(declare-fun |_module.Term#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Term.K| () T@U)
(declare-fun |_module.__default.IsValue#canCall| (T@U) Bool)
(declare-fun _module.__default.IsValue (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun _module.Term.Apply_q (T@U) Bool)
(declare-fun |#_module.Term.S| () T@U)
(declare-fun |#_module.Term.Apply| (T@U T@U) T@U)
(declare-fun _module.__default.ContainsS (T@U T@U) Bool)
(declare-fun |_module.__default.ContainsS#canCall| (T@U) Bool)
(declare-fun _module.__default.FindAndStep (T@U T@U) T@U)
(declare-fun |_module.__default.FindAndStep#canCall| (T@U) Bool)
(declare-fun _module.__default.TermSize (T@U T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.__default.ks (T@U Int) T@U)
(declare-fun |_module.__default.ks#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.__default.TerminatingReduction (T@U T@U) T@U)
(declare-fun |_module.__default.TerminatingReduction#canCall| (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.TermSize#canCall| (T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._module.Term |##_module.Term.S| |##_module.Term.K| |##_module.Term.Apply| tytagFamily$nat tytagFamily$Term)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|_module.__default.Step#canCall| |t#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0|)) (=> (not (_module.Term.K_q |t#0|)) (let ((|y#1| (_module.Term.cdr |t#0|)))
(let ((|x#1| (_module.Term.car |t#0|)))
 (=> (not (_module.Term.S_q |x#1|)) (=> (not (_module.Term.K_q |x#1|)) (let ((|n#1| (_module.Term.cdr |x#1|)))
(let ((|m#1| (_module.Term.car |x#1|)))
 (and (and (|$IsA#_module.Term| |m#1|) (=> (|_module.Term#Equal| |m#1| |#_module.Term.K|) (and (|_module.__default.IsValue#canCall| |n#1|) (=> (_module.__default.IsValue ($LS $LZ) |n#1|) (|_module.__default.IsValue#canCall| |y#1|))))) (=> (not (and (and (|_module.Term#Equal| |m#1| |#_module.Term.K|) (_module.__default.IsValue ($LS $LZ) |n#1|)) (_module.__default.IsValue ($LS $LZ) |y#1|))) (=> (_module.Term.Apply_q |m#1|) (and (|$IsA#_module.Term| (_module.Term.car |m#1|)) (=> (|_module.Term#Equal| (_module.Term.car |m#1|) |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| (_module.Term.cdr |m#1|)) (=> (_module.__default.IsValue ($LS $LZ) (_module.Term.cdr |m#1|)) (and (|_module.__default.IsValue#canCall| |n#1|) (=> (_module.__default.IsValue ($LS $LZ) |n#1|) (|_module.__default.IsValue#canCall| |y#1|)))))))))))))))))) (= (_module.__default.Step |t#0|) (ite (_module.Term.S_q |t#0|) |t#0| (ite (_module.Term.K_q |t#0|) |t#0| (let ((|y#0| (_module.Term.cdr |t#0|)))
(let ((|x#0| (_module.Term.car |t#0|)))
(ite (_module.Term.S_q |x#0|) |t#0| (ite (_module.Term.K_q |x#0|) |t#0| (let ((|n#0| (_module.Term.cdr |x#0|)))
(let ((|m#0| (_module.Term.car |x#0|)))
(ite  (and (and (|_module.Term#Equal| |m#0| |#_module.Term.K|) (_module.__default.IsValue ($LS $LZ) |n#0|)) (_module.__default.IsValue ($LS $LZ) |y#0|)) |n#0| (ite  (and (and (and (and (_module.Term.Apply_q |m#0|) (|_module.Term#Equal| (_module.Term.car |m#0|) |#_module.Term.S|)) (_module.__default.IsValue ($LS $LZ) (_module.Term.cdr |m#0|))) (_module.__default.IsValue ($LS $LZ) |n#0|)) (_module.__default.IsValue ($LS $LZ) |y#0|)) (|#_module.Term.Apply| (|#_module.Term.Apply| (_module.Term.cdr |m#0|) |y#0|) (|#_module.Term.Apply| |n#0| |y#0|)) |t#0|)))))))))))))
 :qid |Combinatorsdfy.99:15|
 :skolemid |618|
 :pattern ( (_module.__default.Step |t#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.ContainsS#canCall| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0@@0|)) (=> (not (_module.Term.K_q |t#0@@0|)) (let ((|y#1@@0| (_module.Term.cdr |t#0@@0|)))
(let ((|x#1@@0| (_module.Term.car |t#0@@0|)))
 (and (|_module.__default.ContainsS#canCall| |x#1@@0|) (=> (not (_module.__default.ContainsS $ly |x#1@@0|)) (|_module.__default.ContainsS#canCall| |y#1@@0|))))))) (= (_module.__default.ContainsS ($LS $ly) |t#0@@0|) (ite (_module.Term.S_q |t#0@@0|) true (ite (_module.Term.K_q |t#0@@0|) false (let ((|y#0@@0| (_module.Term.cdr |t#0@@0|)))
(let ((|x#0@@0| (_module.Term.car |t#0@@0|)))
 (or (_module.__default.ContainsS $ly |x#0@@0|) (_module.__default.ContainsS $ly |y#0@@0|)))))))))
 :qid |Combinatorsdfy.333:10|
 :skolemid |746|
 :pattern ( (_module.__default.ContainsS ($LS $ly) |t#0@@0|))
))))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term)  (and ($Is DatatypeTypeType |a#10#0#0| Tclass._module.Term) ($Is DatatypeTypeType |a#10#1#0| Tclass._module.Term)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |816|
 :pattern ( ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.FindAndStep#canCall| |t#0@@1|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| Tclass._module.Term))) (and (=> (not (_module.__default.ContainsS ($LS $LZ) |t#0@@1|)) (and (not (_module.__default.ContainsS ($LS $LZ) (_module.__default.FindAndStep $ly@@0 |t#0@@1|))) (or (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@0 |t#0@@1|) |t#0@@1|) (< (_module.__default.TermSize ($LS $LZ) (_module.__default.FindAndStep $ly@@0 |t#0@@1|)) (_module.__default.TermSize ($LS $LZ) |t#0@@1|))))) ($Is DatatypeTypeType (_module.__default.FindAndStep $ly@@0 |t#0@@1|) Tclass._module.Term)))
 :qid |Combinatorsdfy.145:10|
 :skolemid |633|
 :pattern ( (_module.__default.FindAndStep $ly@@0 |t#0@@1|))
))))
(assert (forall ((|x#0@@1| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#_module.Term.S|) |##_module.Term.S|))
(assert (= (DatatypeCtorId |#_module.Term.K|) |##_module.Term.K|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.ks#canCall| |n#0@@0|) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.ks#canCall| (- |n#0@@0| 1))) (= (_module.__default.ks ($LS $ly@@1) |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |#_module.Term.K| (|#_module.Term.Apply| (_module.__default.ks $ly@@1 (- |n#0@@0| 1)) (Lit DatatypeTypeType |#_module.Term.K|))))))
 :qid |Combinatorsdfy.432:10|
 :skolemid |790|
 :pattern ( (_module.__default.ks ($LS $ly@@1) |n#0@@0|))
))))
(assert ($Is DatatypeTypeType |#_module.Term.S| Tclass._module.Term))
(assert ($Is DatatypeTypeType |#_module.Term.K| Tclass._module.Term))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| |t#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Term))) (=> (and (_module.__default.IsValue $ly@@2 |t#0@@2|) (_module.Term.Apply_q |t#0@@2|)) (and (_module.__default.IsValue $ly@@2 (_module.Term.car |t#0@@2|)) (_module.__default.IsValue $ly@@2 (_module.Term.cdr |t#0@@2|)))))
 :qid |Combinatorsdfy.21:10|
 :skolemid |584|
 :pattern ( (_module.__default.IsValue $ly@@2 |t#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@3| T@U) ) (!  (=> (or (|_module.__default.Step#canCall| (Lit DatatypeTypeType |t#0@@3|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@3| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@3|)))))) (let ((|y#3| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@3|)))))
(let ((|x#3| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@3|)))))
 (=> (not (_module.Term.S_q |x#3|)) (=> (not (_module.Term.K_q |x#3|)) (let ((|n#3| (_module.Term.cdr |x#3|)))
(let ((|m#3| (_module.Term.car |x#3|)))
 (and (and (|$IsA#_module.Term| |m#3|) (=> (|_module.Term#Equal| |m#3| |#_module.Term.K|) (and (|_module.__default.IsValue#canCall| |n#3|) (=> (_module.__default.IsValue ($LS $LZ) |n#3|) (|_module.__default.IsValue#canCall| |y#3|))))) (=> (not (and (and (|_module.Term#Equal| |m#3| |#_module.Term.K|) (_module.__default.IsValue ($LS $LZ) |n#3|)) (_module.__default.IsValue ($LS $LZ) |y#3|))) (=> (_module.Term.Apply_q |m#3|) (and (|$IsA#_module.Term| (_module.Term.car |m#3|)) (=> (|_module.Term#Equal| (_module.Term.car |m#3|) |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| (_module.Term.cdr |m#3|)) (=> (_module.__default.IsValue ($LS $LZ) (_module.Term.cdr |m#3|)) (and (|_module.__default.IsValue#canCall| |n#3|) (=> (_module.__default.IsValue ($LS $LZ) |n#3|) (|_module.__default.IsValue#canCall| |y#3|)))))))))))))))))) (= (_module.__default.Step (Lit DatatypeTypeType |t#0@@3|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@3|)) |t#0@@3| (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@3|)) |t#0@@3| (let ((|y#2| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@3|)))))
(let ((|x#2| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@3|)))))
(ite (_module.Term.S_q |x#2|) |t#0@@3| (ite (_module.Term.K_q |x#2|) |t#0@@3| (let ((|n#2| (Lit DatatypeTypeType (_module.Term.cdr |x#2|))))
(let ((|m#2| (Lit DatatypeTypeType (_module.Term.car |x#2|))))
(ite  (and (and (|_module.Term#Equal| |m#2| |#_module.Term.K|) (_module.__default.IsValue ($LS $LZ) |n#2|)) (_module.__default.IsValue ($LS $LZ) |y#2|)) |n#2| (ite  (and (and (and (and (_module.Term.Apply_q |m#2|) (|_module.Term#Equal| (_module.Term.car |m#2|) |#_module.Term.S|)) (_module.__default.IsValue ($LS $LZ) (Lit DatatypeTypeType (_module.Term.cdr |m#2|)))) (_module.__default.IsValue ($LS $LZ) |n#2|)) (_module.__default.IsValue ($LS $LZ) |y#2|)) (|#_module.Term.Apply| (Lit DatatypeTypeType (|#_module.Term.Apply| (Lit DatatypeTypeType (_module.Term.cdr |m#2|)) |y#2|)) (Lit DatatypeTypeType (|#_module.Term.Apply| |n#2| |y#2|))) |t#0@@3|)))))))))))))
 :qid |Combinatorsdfy.99:15|
 :weight 3
 :skolemid |619|
 :pattern ( (_module.__default.Step (Lit DatatypeTypeType |t#0@@3|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@3 T@U) (|t#0@@4| T@U) ) (!  (=> (or (|_module.__default.TerminatingReduction#canCall| |t#0@@4|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@4| Tclass._module.Term) (not (_module.__default.ContainsS ($LS $LZ) |t#0@@4|))))) (and (and (and (and (|$IsA#_module.Term| (_module.__default.FindAndStep ($LS $LZ) |t#0@@4|)) (|$IsA#_module.Term| |t#0@@4|)) (|_module.__default.FindAndStep#canCall| |t#0@@4|)) (=> (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) |t#0@@4|) |t#0@@4|)) (and (|_module.__default.FindAndStep#canCall| |t#0@@4|) (|_module.__default.TerminatingReduction#canCall| (_module.__default.FindAndStep ($LS $LZ) |t#0@@4|))))) (= (_module.__default.TerminatingReduction ($LS $ly@@3) |t#0@@4|) (ite (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) |t#0@@4|) |t#0@@4|) |t#0@@4| (_module.__default.TerminatingReduction $ly@@3 (_module.__default.FindAndStep ($LS $LZ) |t#0@@4|))))))
 :qid |Combinatorsdfy.415:16|
 :skolemid |780|
 :pattern ( (_module.__default.TerminatingReduction ($LS $ly@@3) |t#0@@4|))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Term#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |830|
 :pattern ( (|_module.Term#Equal| a b))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@4 T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.TerminatingReduction#canCall| |t#0@@5|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@5| Tclass._module.Term) (not (_module.__default.ContainsS ($LS $LZ) |t#0@@5|))))) ($Is DatatypeTypeType (_module.__default.TerminatingReduction $ly@@4 |t#0@@5|) Tclass._module.Term))
 :qid |Combinatorsdfy.415:16|
 :skolemid |778|
 :pattern ( (_module.__default.TerminatingReduction $ly@@4 |t#0@@5|))
))))
(assert (forall ((d T@U) ) (! (= (_module.Term.S_q d) (= (DatatypeCtorId d) |##_module.Term.S|))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (_module.Term.S_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Term.K_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Term.K|))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (_module.Term.K_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Term.Apply_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Term.Apply|))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( (_module.Term.Apply_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Term.Apply_q d@@2) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= d@@2 (|#_module.Term.Apply| |a#9#0#0| |a#9#1#0|))
 :qid |Combinatorsdfy.14:31|
 :skolemid |814|
)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( (_module.Term.Apply_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Term.S_q d@@3) (= d@@3 |#_module.Term.S|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Term.S_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Term.K_q d@@4) (= d@@4 |#_module.Term.K|))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.Term.K_q d@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.ks#canCall| (LitInt |n#0@@1|)) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |n#0@@1|))) (and (=> (or (not (= (LitInt |n#0@@1|) (LitInt 0))) (not true)) (|_module.__default.ks#canCall| (LitInt (- |n#0@@1| 1)))) (= (_module.__default.ks ($LS $ly@@5) (LitInt |n#0@@1|)) (ite (= (LitInt |n#0@@1|) (LitInt 0)) |#_module.Term.K| (|#_module.Term.Apply| (Lit DatatypeTypeType (_module.__default.ks ($LS $ly@@5) (LitInt (- |n#0@@1| 1)))) (Lit DatatypeTypeType |#_module.Term.K|))))))
 :qid |Combinatorsdfy.432:10|
 :weight 3
 :skolemid |791|
 :pattern ( (_module.__default.ks ($LS $ly@@5) (LitInt |n#0@@1|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@6| T@U) ) (!  (=> (or (|_module.__default.Step#canCall| |t#0@@6|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@6| Tclass._module.Term))) (and (=> (not (_module.__default.ContainsS ($LS $LZ) |t#0@@6|)) (and (not (_module.__default.ContainsS ($LS $LZ) (_module.__default.Step |t#0@@6|))) (or (|_module.Term#Equal| (_module.__default.Step |t#0@@6|) |t#0@@6|) (< (_module.__default.TermSize ($LS $LZ) (_module.__default.Step |t#0@@6|)) (_module.__default.TermSize ($LS $LZ) |t#0@@6|))))) ($Is DatatypeTypeType (_module.__default.Step |t#0@@6|) Tclass._module.Term)))
 :qid |Combinatorsdfy.99:15|
 :skolemid |616|
 :pattern ( (_module.__default.Step |t#0@@6|))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|t#0@@7| T@U) ) (!  (=> (or (|_module.__default.ContainsS#canCall| (Lit DatatypeTypeType |t#0@@7|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@7| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@7|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@7|)))))) (let ((|y#3@@0| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@7|)))))
(let ((|x#3@@0| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@7|)))))
 (and (|_module.__default.ContainsS#canCall| |x#3@@0|) (=> (not (_module.__default.ContainsS ($LS $ly@@6) |x#3@@0|)) (|_module.__default.ContainsS#canCall| |y#3@@0|))))))) (= (_module.__default.ContainsS ($LS $ly@@6) (Lit DatatypeTypeType |t#0@@7|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@7|)) true (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@7|)) false (U_2_bool (let ((|y#2@@0| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@7|)))))
(let ((|x#2@@0| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@7|)))))
(Lit boolType (bool_2_U  (or (_module.__default.ContainsS ($LS $ly@@6) |x#2@@0|) (_module.__default.ContainsS ($LS $ly@@6) |y#2@@0|))))))))))))
 :qid |Combinatorsdfy.333:10|
 :weight 3
 :skolemid |747|
 :pattern ( (_module.__default.ContainsS ($LS $ly@@6) (Lit DatatypeTypeType |t#0@@7|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|t#0@@8| T@U) ) (!  (=> (or (|_module.__default.TermSize#canCall| (Lit DatatypeTypeType |t#0@@8|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@8| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@8|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@8|)))))) (let ((|y#3@@1| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@8|)))))
(let ((|x#3@@1| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@8|)))))
 (and (|_module.__default.TermSize#canCall| |x#3@@1|) (|_module.__default.TermSize#canCall| |y#3@@1|)))))) (= (_module.__default.TermSize ($LS $ly@@7) (Lit DatatypeTypeType |t#0@@8|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@8|)) 1 (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@8|)) 1 (let ((|y#2@@1| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@8|)))))
(let ((|x#2@@1| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@8|)))))
(LitInt (+ (+ 1 (_module.__default.TermSize ($LS $ly@@7) |x#2@@1|)) (_module.__default.TermSize ($LS $ly@@7) |y#2@@1|))))))))))
 :qid |Combinatorsdfy.392:16|
 :weight 3
 :skolemid |773|
 :pattern ( (_module.__default.TermSize ($LS $ly@@7) (Lit DatatypeTypeType |t#0@@8|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|t#0@@9| T@U) ) (!  (=> (or (|_module.__default.FindAndStep#canCall| |t#0@@9|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@9| Tclass._module.Term))) (and (and (and (and (and (|$IsA#_module.Term| (_module.__default.Step |t#0@@9|)) (|$IsA#_module.Term| |t#0@@9|)) (|_module.__default.Step#canCall| |t#0@@9|)) (=> (not (|_module.Term#Equal| (_module.__default.Step |t#0@@9|) |t#0@@9|)) (|_module.__default.Step#canCall| |t#0@@9|))) (=> (|_module.Term#Equal| (_module.__default.Step |t#0@@9|) |t#0@@9|) (=> (_module.Term.Apply_q |t#0@@9|) (and (and (and (and (|$IsA#_module.Term| (_module.__default.FindAndStep $ly@@8 (_module.Term.car |t#0@@9|))) (|$IsA#_module.Term| (_module.Term.car |t#0@@9|))) (|_module.__default.FindAndStep#canCall| (_module.Term.car |t#0@@9|))) (=> (not (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@8 (_module.Term.car |t#0@@9|)) (_module.Term.car |t#0@@9|))) (|_module.__default.FindAndStep#canCall| (_module.Term.car |t#0@@9|)))) (=> (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@8 (_module.Term.car |t#0@@9|)) (_module.Term.car |t#0@@9|)) (and (and (|_module.__default.IsValue#canCall| (_module.Term.car |t#0@@9|)) (=> (_module.__default.IsValue ($LS $LZ) (_module.Term.car |t#0@@9|)) (and (and (|$IsA#_module.Term| (_module.__default.FindAndStep $ly@@8 (_module.Term.cdr |t#0@@9|))) (|$IsA#_module.Term| (_module.Term.cdr |t#0@@9|))) (|_module.__default.FindAndStep#canCall| (_module.Term.cdr |t#0@@9|))))) (=> (and (_module.__default.IsValue ($LS $LZ) (_module.Term.car |t#0@@9|)) (not (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@8 (_module.Term.cdr |t#0@@9|)) (_module.Term.cdr |t#0@@9|)))) (|_module.__default.FindAndStep#canCall| (_module.Term.cdr |t#0@@9|))))))))) (= (_module.__default.FindAndStep ($LS $ly@@8) |t#0@@9|) (ite  (not (|_module.Term#Equal| (_module.__default.Step |t#0@@9|) |t#0@@9|)) (_module.__default.Step |t#0@@9|) (ite  (not (_module.Term.Apply_q |t#0@@9|)) |t#0@@9| (ite  (not (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@8 (_module.Term.car |t#0@@9|)) (_module.Term.car |t#0@@9|))) (|#_module.Term.Apply| (_module.__default.FindAndStep $ly@@8 (_module.Term.car |t#0@@9|)) (_module.Term.cdr |t#0@@9|)) (ite  (and (_module.__default.IsValue ($LS $LZ) (_module.Term.car |t#0@@9|)) (not (|_module.Term#Equal| (_module.__default.FindAndStep $ly@@8 (_module.Term.cdr |t#0@@9|)) (_module.Term.cdr |t#0@@9|)))) (|#_module.Term.Apply| (_module.Term.car |t#0@@9|) (_module.__default.FindAndStep $ly@@8 (_module.Term.cdr |t#0@@9|))) |t#0@@9|)))))))
 :qid |Combinatorsdfy.145:10|
 :skolemid |635|
 :pattern ( (_module.__default.FindAndStep ($LS $ly@@8) |t#0@@9|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|t#0@@10| T@U) ) (!  (=> (or (|_module.__default.TermSize#canCall| |t#0@@10|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@10| Tclass._module.Term))) (<= (LitInt 0) (_module.__default.TermSize $ly@@9 |t#0@@10|)))
 :qid |Combinatorsdfy.392:16|
 :skolemid |770|
 :pattern ( (_module.__default.TermSize $ly@@9 |t#0@@10|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|t#0@@11| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| |t#0@@11|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@11| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0@@11|)) (=> (not (_module.Term.K_q |t#0@@11|)) (let ((|b#1| (_module.Term.cdr |t#0@@11|)))
(let ((|a#1| (_module.Term.car |t#0@@11|)))
 (and (=> (_module.Term.S_q |a#1|) (|_module.__default.IsValue#canCall| |b#1|)) (=> (not (_module.Term.S_q |a#1|)) (and (=> (_module.Term.K_q |a#1|) (|_module.__default.IsValue#canCall| |b#1|)) (=> (not (_module.Term.K_q |a#1|)) (let ((|y#1@@1| (_module.Term.cdr |a#1|)))
(let ((|x#1@@1| (_module.Term.car |a#1|)))
 (and (|$IsA#_module.Term| |x#1@@1|) (=> (|_module.Term#Equal| |x#1@@1| |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| |y#1@@1|) (=> (_module.__default.IsValue $ly@@10 |y#1@@1|) (|_module.__default.IsValue#canCall| |b#1|))))))))))))))) (= (_module.__default.IsValue ($LS $ly@@10) |t#0@@11|) (ite (_module.Term.S_q |t#0@@11|) true (ite (_module.Term.K_q |t#0@@11|) true (let ((|b#0| (_module.Term.cdr |t#0@@11|)))
(let ((|a#0| (_module.Term.car |t#0@@11|)))
(ite (_module.Term.S_q |a#0|) (_module.__default.IsValue $ly@@10 |b#0|) (ite (_module.Term.K_q |a#0|) (_module.__default.IsValue $ly@@10 |b#0|) (let ((|y#0@@1| (_module.Term.cdr |a#0|)))
(let ((|x#0@@3| (_module.Term.car |a#0|)))
 (and (and (|_module.Term#Equal| |x#0@@3| |#_module.Term.S|) (_module.__default.IsValue $ly@@10 |y#0@@1|)) (_module.__default.IsValue $ly@@10 |b#0|)))))))))))))
 :qid |Combinatorsdfy.21:10|
 :skolemid |586|
 :pattern ( (_module.__default.IsValue ($LS $ly@@10) |t#0@@11|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@11 T@U) (|t#0@@12| T@U) ) (!  (=> (or (|_module.__default.TermSize#canCall| |t#0@@12|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@12| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0@@12|)) (=> (not (_module.Term.K_q |t#0@@12|)) (let ((|y#1@@2| (_module.Term.cdr |t#0@@12|)))
(let ((|x#1@@2| (_module.Term.car |t#0@@12|)))
 (and (|_module.__default.TermSize#canCall| |x#1@@2|) (|_module.__default.TermSize#canCall| |y#1@@2|)))))) (= (_module.__default.TermSize ($LS $ly@@11) |t#0@@12|) (ite (_module.Term.S_q |t#0@@12|) 1 (ite (_module.Term.K_q |t#0@@12|) 1 (let ((|y#0@@2| (_module.Term.cdr |t#0@@12|)))
(let ((|x#0@@4| (_module.Term.car |t#0@@12|)))
(+ (+ 1 (_module.__default.TermSize $ly@@11 |x#0@@4|)) (_module.__default.TermSize $ly@@11 |y#0@@2|)))))))))
 :qid |Combinatorsdfy.392:16|
 :skolemid |772|
 :pattern ( (_module.__default.TermSize ($LS $ly@@11) |t#0@@12|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Term.Apply_q a@@0) (_module.Term.Apply_q b@@0)) (= (|_module.Term#Equal| a@@0 b@@0)  (and (|_module.Term#Equal| (_module.Term.car a@@0) (_module.Term.car b@@0)) (|_module.Term#Equal| (_module.Term.cdr a@@0) (_module.Term.cdr b@@0)))))
 :qid |unknown.0:0|
 :skolemid |829|
 :pattern ( (|_module.Term#Equal| a@@0 b@@0) (_module.Term.Apply_q a@@0))
 :pattern ( (|_module.Term#Equal| a@@0 b@@0) (_module.Term.Apply_q b@@0))
)))
(assert (forall (($ly@@12 T@U) (|t#0@@13| T@U) ) (! (= (_module.__default.IsValue ($LS $ly@@12) |t#0@@13|) (_module.__default.IsValue $ly@@12 |t#0@@13|))
 :qid |Combinatorsdfy.21:10|
 :skolemid |581|
 :pattern ( (_module.__default.IsValue ($LS $ly@@12) |t#0@@13|))
)))
(assert (forall (($ly@@13 T@U) (|t#0@@14| T@U) ) (! (= (_module.__default.ContainsS ($LS $ly@@13) |t#0@@14|) (_module.__default.ContainsS $ly@@13 |t#0@@14|))
 :qid |Combinatorsdfy.333:10|
 :skolemid |742|
 :pattern ( (_module.__default.ContainsS ($LS $ly@@13) |t#0@@14|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Term.S_q a@@1) (_module.Term.S_q b@@1)) (|_module.Term#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( (|_module.Term#Equal| a@@1 b@@1) (_module.Term.S_q a@@1))
 :pattern ( (|_module.Term#Equal| a@@1 b@@1) (_module.Term.S_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Term.K_q a@@2) (_module.Term.K_q b@@2)) (|_module.Term#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( (|_module.Term#Equal| a@@2 b@@2) (_module.Term.K_q a@@2))
 :pattern ( (|_module.Term#Equal| a@@2 b@@2) (_module.Term.K_q b@@2))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Term.Apply| |a#8#0#0| |a#8#1#0|)) |##_module.Term.Apply|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |812|
 :pattern ( (|#_module.Term.Apply| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (_module.Term.car (|#_module.Term.Apply| |a#12#0#0| |a#12#1#0|)) |a#12#0#0|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |820|
 :pattern ( (|#_module.Term.Apply| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= (_module.Term.cdr (|#_module.Term.Apply| |a#14#0#0| |a#14#1#0|)) |a#14#1#0|)
 :qid |Combinatorsdfy.14:31|
 :skolemid |822|
 :pattern ( (|#_module.Term.Apply| |a#14#0#0| |a#14#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@14 T@U) (|t#0@@15| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| (Lit DatatypeTypeType |t#0@@15|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@15| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@15|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@15|)))))) (let ((|b#3| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@15|)))))
(let ((|a#3| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@15|)))))
 (and (=> (_module.Term.S_q |a#3|) (|_module.__default.IsValue#canCall| |b#3|)) (=> (not (_module.Term.S_q |a#3|)) (and (=> (_module.Term.K_q |a#3|) (|_module.__default.IsValue#canCall| |b#3|)) (=> (not (_module.Term.K_q |a#3|)) (let ((|y#3@@2| (_module.Term.cdr |a#3|)))
(let ((|x#3@@2| (_module.Term.car |a#3|)))
 (and (|$IsA#_module.Term| |x#3@@2|) (=> (|_module.Term#Equal| |x#3@@2| |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| |y#3@@2|) (=> (_module.__default.IsValue ($LS $ly@@14) |y#3@@2|) (|_module.__default.IsValue#canCall| |b#3|))))))))))))))) (= (_module.__default.IsValue ($LS $ly@@14) (Lit DatatypeTypeType |t#0@@15|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@15|)) true (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@15|)) true (let ((|b#2| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@15|)))))
(let ((|a#2| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@15|)))))
(ite (_module.Term.S_q |a#2|) (_module.__default.IsValue ($LS $ly@@14) |b#2|) (ite (_module.Term.K_q |a#2|) (_module.__default.IsValue ($LS $ly@@14) |b#2|) (let ((|y#2@@2| (Lit DatatypeTypeType (_module.Term.cdr |a#2|))))
(let ((|x#2@@2| (Lit DatatypeTypeType (_module.Term.car |a#2|))))
 (and (and (|_module.Term#Equal| |x#2@@2| |#_module.Term.S|) (_module.__default.IsValue ($LS $ly@@14) |y#2@@2|)) (_module.__default.IsValue ($LS $ly@@14) |b#2|)))))))))))))
 :qid |Combinatorsdfy.21:10|
 :weight 3
 :skolemid |587|
 :pattern ( (_module.__default.IsValue ($LS $ly@@14) (Lit DatatypeTypeType |t#0@@15|)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.Term| d@@5) (or (or (_module.Term.S_q d@@5) (_module.Term.K_q d@@5)) (_module.Term.Apply_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (|$IsA#_module.Term| d@@5))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (< (DtRank |a#13#0#0|) (DtRank (|#_module.Term.Apply| |a#13#0#0| |a#13#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |821|
 :pattern ( (|#_module.Term.Apply| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (< (DtRank |a#15#1#0|) (DtRank (|#_module.Term.Apply| |a#15#0#0| |a#15#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |823|
 :pattern ( (|#_module.Term.Apply| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall (($ly@@15 T@U) (|t#0@@16| T@U) ) (! (= (_module.__default.FindAndStep ($LS $ly@@15) |t#0@@16|) (_module.__default.FindAndStep $ly@@15 |t#0@@16|))
 :qid |Combinatorsdfy.145:10|
 :skolemid |631|
 :pattern ( (_module.__default.FindAndStep ($LS $ly@@15) |t#0@@16|))
)))
(assert (forall (($ly@@16 T@U) (|t#0@@17| T@U) ) (! (= (_module.__default.TermSize ($LS $ly@@16) |t#0@@17|) (_module.__default.TermSize $ly@@16 |t#0@@17|))
 :qid |Combinatorsdfy.392:16|
 :skolemid |768|
 :pattern ( (_module.__default.TermSize ($LS $ly@@16) |t#0@@17|))
)))
(assert (forall (($ly@@17 T@U) (|t#0@@18| T@U) ) (! (= (_module.__default.TerminatingReduction ($LS $ly@@17) |t#0@@18|) (_module.__default.TerminatingReduction $ly@@17 |t#0@@18|))
 :qid |Combinatorsdfy.415:16|
 :skolemid |776|
 :pattern ( (_module.__default.TerminatingReduction ($LS $ly@@17) |t#0@@18|))
)))
(assert (forall (($ly@@18 T@U) (|n#0@@2| Int) ) (! (= (_module.__default.ks ($LS $ly@@18) |n#0@@2|) (_module.__default.ks $ly@@18 |n#0@@2|))
 :qid |Combinatorsdfy.432:10|
 :skolemid |786|
 :pattern ( (_module.__default.ks ($LS $ly@@18) |n#0@@2|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@19 T@U) (|t#0@@19| T@U) ) (!  (=> (or (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType |t#0@@19|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@19| Tclass._module.Term))) (and (and (and (and (and (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.__default.Step (Lit DatatypeTypeType |t#0@@19|)))) (|$IsA#_module.Term| (Lit DatatypeTypeType |t#0@@19|))) (|_module.__default.Step#canCall| (Lit DatatypeTypeType |t#0@@19|))) (=> (not (|_module.Term#Equal| (_module.__default.Step (Lit DatatypeTypeType |t#0@@19|)) |t#0@@19|)) (|_module.__default.Step#canCall| (Lit DatatypeTypeType |t#0@@19|)))) (=> (|_module.Term#Equal| (_module.__default.Step (Lit DatatypeTypeType |t#0@@19|)) |t#0@@19|) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Term.Apply_q (Lit DatatypeTypeType |t#0@@19|))))) (and (and (and (and (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))))) (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))))) (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))))) (=> (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))))) (=> (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))) (and (and (|_module.__default.IsValue#canCall| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.__default.IsValue ($LS $LZ) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))))))) (and (and (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|)))))) (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|))))) (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|))))))) (=> (and (_module.__default.IsValue ($LS $LZ) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|)))) (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|))))) (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|))))))))))) (= (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType |t#0@@19|)) (ite  (not (|_module.Term#Equal| (_module.__default.Step (Lit DatatypeTypeType |t#0@@19|)) |t#0@@19|)) (_module.__default.Step (Lit DatatypeTypeType |t#0@@19|)) (ite  (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.Apply_q (Lit DatatypeTypeType |t#0@@19|)))))) |t#0@@19| (ite  (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (|#_module.Term.Apply| (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))))) (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|)))) (ite  (and (_module.__default.IsValue ($LS $LZ) (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|)))) (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|)))) (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|))))) (|#_module.Term.Apply| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@19|))) (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@19|)))))) |t#0@@19|)))))))
 :qid |Combinatorsdfy.145:10|
 :weight 3
 :skolemid |636|
 :pattern ( (_module.__default.FindAndStep ($LS $ly@@19) (Lit DatatypeTypeType |t#0@@19|)))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |884|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.Term) (or (or (_module.Term.S_q d@@6) (_module.Term.K_q d@@6)) (_module.Term.Apply_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (_module.Term.Apply_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Term))
 :pattern ( (_module.Term.K_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Term))
 :pattern ( (_module.Term.S_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Term))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@7 Tclass._module.Term)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Term $h@@0))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Term $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Term) Tagclass._module.Term))
(assert (= (TagFamily Tclass._module.Term) tytagFamily$Term))
(assert (= |#_module.Term.S| (Lit DatatypeTypeType |#_module.Term.S|)))
(assert (= |#_module.Term.K| (Lit DatatypeTypeType |#_module.Term.K|)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@20 T@U) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.ks#canCall| |n#0@@3|) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |n#0@@3|))) (and (not (_module.__default.ContainsS ($LS $LZ) (_module.__default.ks $ly@@20 |n#0@@3|))) ($Is DatatypeTypeType (_module.__default.ks $ly@@20 |n#0@@3|) Tclass._module.Term)))
 :qid |Combinatorsdfy.432:10|
 :skolemid |788|
 :pattern ( (_module.__default.ks $ly@@20 |n#0@@3|))
))))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Term.Apply_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Term $h@@1))) ($IsAlloc DatatypeTypeType (_module.Term.car d@@8) Tclass._module.Term $h@@1))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.car d@@8) Tclass._module.Term $h@@1))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Term.Apply_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Term $h@@2))) ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@9) Tclass._module.Term $h@@2))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@9) Tclass._module.Term $h@@2))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)) (Lit DatatypeTypeType (|#_module.Term.Apply| |a#11#0#0| |a#11#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |819|
 :pattern ( (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@21 T@U) (|t#0@@20| T@U) ) (!  (=> (or (|_module.__default.TerminatingReduction#canCall| (Lit DatatypeTypeType |t#0@@20|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@20| Tclass._module.Term) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.ContainsS ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|))))))))) (and (and (and (and (|$IsA#_module.Term| (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|)))) (|$IsA#_module.Term| (Lit DatatypeTypeType |t#0@@20|))) (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType |t#0@@20|))) (=> (not (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|)) |t#0@@20|)) (and (|_module.__default.FindAndStep#canCall| (Lit DatatypeTypeType |t#0@@20|)) (|_module.__default.TerminatingReduction#canCall| (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|))))))) (= (_module.__default.TerminatingReduction ($LS $ly@@21) (Lit DatatypeTypeType |t#0@@20|)) (ite (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|)) |t#0@@20|) |t#0@@20| (_module.__default.TerminatingReduction ($LS $ly@@21) (Lit DatatypeTypeType (_module.__default.FindAndStep ($LS $LZ) (Lit DatatypeTypeType |t#0@@20|))))))))
 :qid |Combinatorsdfy.415:16|
 :weight 3
 :skolemid |781|
 :pattern ( (_module.__default.TerminatingReduction ($LS $ly@@21) (Lit DatatypeTypeType |t#0@@20|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@4| () Int)
(declare-fun |p#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |##t#1@0| () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.VT3)
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
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|_module.Term#Equal| (_module.__default.TerminatingReduction ($LS ($LS $LZ)) (_module.__default.ks ($LS ($LS $LZ)) |n#0@@4|)) (ite (= (Mod |n#0@@4| (LitInt 2)) (LitInt 0)) |#_module.Term.K| (|#_module.Term.Apply| (Lit DatatypeTypeType |#_module.Term.K|) (Lit DatatypeTypeType |#_module.Term.K|)))))))
(let ((anon3_correct  (=> (forall ((|p#1| Int) ) (!  (=> (<= (LitInt 2) |p#1|) (and (and (|$IsA#_module.Term| (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p#1|))) (|$IsA#_module.Term| (_module.__default.ks ($LS $LZ) (- |p#1| 2)))) (and (and (|_module.__default.ks#canCall| |p#1|) (|_module.__default.FindAndStep#canCall| (_module.__default.ks ($LS $LZ) |p#1|))) (|_module.__default.ks#canCall| (- |p#1| 2)))))
 :qid |Combinatorsdfy.459:17|
 :skolemid |803|
 :pattern ( (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p#1|)))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((|p#1@@0| Int) ) (!  (=> (and (forall ((|p$ih#0#0| Int) ) (!  (=> (and (<= 0 |p$ih#0#0|) (< |p$ih#0#0| |p#1@@0|)) (=> (<= (LitInt 2) |p$ih#0#0|) (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p$ih#0#0|)) (_module.__default.ks ($LS $LZ) (- |p$ih#0#0| 2)))))
 :qid |Combinatorsdfy.459:17|
 :skolemid |804|
 :pattern ( (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p$ih#0#0|)))
)) true) (=> (<= (LitInt 2) |p#1@@0|) (|_module.Term#Equal| (_module.__default.FindAndStep ($LS ($LS $LZ)) (_module.__default.ks ($LS ($LS $LZ)) |p#1@@0|)) (_module.__default.ks ($LS ($LS $LZ)) (- |p#1@@0| 2)))))
 :qid |Combinatorsdfy.459:17|
 :skolemid |805|
 :pattern ( (_module.__default.FindAndStep ($LS ($LS $LZ)) (_module.__default.ks ($LS ($LS $LZ)) |p#1@@0|)))
))) (=> (and (forall ((|p#1@@1| Int) ) (!  (=> (<= (LitInt 2) |p#1@@1|) (|_module.Term#Equal| (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p#1@@1|)) (_module.__default.ks ($LS $LZ) (- |p#1@@1| 2))))
 :qid |Combinatorsdfy.459:17|
 :skolemid |807|
 :pattern ( (_module.__default.FindAndStep ($LS $LZ) (_module.__default.ks ($LS $LZ) |p#1@@1|)))
)) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))))
(let ((anon5_Else_correct  (=> (and (< |p#0@0| (LitInt 2)) (= (ControlFlow 0 9) 4)) anon3_correct)))
(let ((anon5_Then_correct  (=> (<= (LitInt 2) |p#0@0|) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($Is intType (int_2_U |p#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |p#0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |p#0@0|) Tclass._System.nat $Heap@0) (=> (and (and (|_module.__default.ks#canCall| |p#0@0|) (= |##t#1@0| (_module.__default.ks ($LS $LZ) |p#0@0|))) (and ($IsAlloc DatatypeTypeType |##t#1@0| Tclass._module.Term $Heap@0) (|_module.__default.FindAndStep#canCall| (_module.__default.ks ($LS $LZ) |p#0@0|)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is intType (int_2_U (- |p#0@0| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |p#0@0| 2)) Tclass._System.nat) (=> (and (and (= |##n#2@0| (- |p#0@0| 2)) ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.ks#canCall| (- |p#0@0| 2)) (= (ControlFlow 0 6) 4))) anon3_correct))))))))))
(let ((anon4_Then_correct  (and (=> (= (ControlFlow 0 10) 6) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct))))
(let ((anon4_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#n0#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |$ih#n0#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#0@@4|))) (|_module.Term#Equal| (_module.__default.TerminatingReduction ($LS $LZ) (_module.__default.ks ($LS $LZ) |$ih#n0#0|)) (ite (= (Mod |$ih#n0#0| (LitInt 2)) (LitInt 0)) |#_module.Term.K| (|#_module.Term.Apply| (Lit DatatypeTypeType |#_module.Term.K|) (Lit DatatypeTypeType |#_module.Term.K|)))))
 :qid |Combinatorsdfy.454:11|
 :skolemid |802|
 :pattern ( (_module.__default.ks ($LS $LZ) |$ih#n0#0|))
)))) (and (=> (= (ControlFlow 0 11) 10) anon4_Then_correct) (=> (= (ControlFlow 0 11) 1) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0@@4|)) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
