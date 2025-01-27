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
(declare-fun Tagclass._module.Term () T@U)
(declare-fun Tagclass._module.Context () T@U)
(declare-fun |##_module.Term.S| () T@U)
(declare-fun |##_module.Term.K| () T@U)
(declare-fun |##_module.Term.Apply| () T@U)
(declare-fun |##_module.Context.Hole| () T@U)
(declare-fun |##_module.Context.C_term| () T@U)
(declare-fun |##_module.Context.value_C| () T@U)
(declare-fun tytagFamily$Term () T@U)
(declare-fun tytagFamily$Context () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Term.Apply| (T@U T@U) T@U)
(declare-fun Tclass._module.Term () T@U)
(declare-fun |#_module.Context.C_term| (T@U T@U) T@U)
(declare-fun Tclass._module.Context () T@U)
(declare-fun |#_module.Context.value_C| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Term.S| () T@U)
(declare-fun |#_module.Term.K| () T@U)
(declare-fun |#_module.Context.Hole| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IsValue (T@U T@U) Bool)
(declare-fun |_module.__default.IsValue#canCall| (T@U) Bool)
(declare-fun _module.Term.Apply_q (T@U) Bool)
(declare-fun _module.Term.car (T@U) T@U)
(declare-fun _module.Term.cdr (T@U) T@U)
(declare-fun |_module.Term#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Term.S_q (T@U) Bool)
(declare-fun _module.Term.K_q (T@U) Bool)
(declare-fun _module.Context.Hole_q (T@U) Bool)
(declare-fun _module.Context.C__term_q (T@U) Bool)
(declare-fun _module.Context.value__C_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.EvalExpr (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.EvalExpr#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.IsContext (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Context._h0 (T@U) T@U)
(declare-fun _module.Context._h3 (T@U) T@U)
(declare-fun _module.Context._h1 (T@U) T@U)
(declare-fun _module.Context._h2 (T@U) T@U)
(declare-fun |_module.__default.IsContext#canCall| (T@U) Bool)
(declare-fun |$IsA#_module.Term| (T@U) Bool)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Term Tagclass._module.Context |##_module.Term.S| |##_module.Term.K| |##_module.Term.Apply| |##_module.Context.Hole| |##_module.Context.C_term| |##_module.Context.value_C| tytagFamily$Term tytagFamily$Context)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term)  (and ($Is DatatypeTypeType |a#10#0#0| Tclass._module.Term) ($Is DatatypeTypeType |a#10#1#0| Tclass._module.Term)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |816|
 :pattern ( ($Is DatatypeTypeType (|#_module.Term.Apply| |a#10#0#0| |a#10#1#0|) Tclass._module.Term))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Context.C_term| |a#22#0#0| |a#22#1#0|) Tclass._module.Context)  (and ($Is DatatypeTypeType |a#22#0#0| Tclass._module.Context) ($Is DatatypeTypeType |a#22#1#0| Tclass._module.Term)))
 :qid |Combinatorsdfy.43:34|
 :skolemid |837|
 :pattern ( ($Is DatatypeTypeType (|#_module.Context.C_term| |a#22#0#0| |a#22#1#0|) Tclass._module.Context))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Context.value_C| |a#30#0#0| |a#30#1#0|) Tclass._module.Context)  (and ($Is DatatypeTypeType |a#30#0#0| Tclass._module.Term) ($Is DatatypeTypeType |a#30#1#0| Tclass._module.Context)))
 :qid |Combinatorsdfy.43:59|
 :skolemid |849|
 :pattern ( ($Is DatatypeTypeType (|#_module.Context.value_C| |a#30#0#0| |a#30#1#0|) Tclass._module.Context))
)))
(assert (= (DatatypeCtorId |#_module.Term.S|) |##_module.Term.S|))
(assert (= (DatatypeCtorId |#_module.Term.K|) |##_module.Term.K|))
(assert (= (DatatypeCtorId |#_module.Context.Hole|) |##_module.Context.Hole|))
(assert ($Is DatatypeTypeType |#_module.Term.S| Tclass._module.Term))
(assert ($Is DatatypeTypeType |#_module.Term.K| Tclass._module.Term))
(assert ($Is DatatypeTypeType |#_module.Context.Hole| Tclass._module.Context))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| |t#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Term))) (=> (and (_module.__default.IsValue $ly |t#0|) (_module.Term.Apply_q |t#0|)) (and (_module.__default.IsValue $ly (_module.Term.car |t#0|)) (_module.__default.IsValue $ly (_module.Term.cdr |t#0|)))))
 :qid |Combinatorsdfy.21:10|
 :skolemid |584|
 :pattern ( (_module.__default.IsValue $ly |t#0|))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Term#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |830|
 :pattern ( (|_module.Term#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
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
(assert (forall ((d@@2 T@U) ) (! (= (_module.Context.Hole_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Context.Hole|))
 :qid |unknown.0:0|
 :skolemid |831|
 :pattern ( (_module.Context.Hole_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Context.C__term_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Context.C_term|))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( (_module.Context.C__term_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Context.value__C_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Context.value_C|))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( (_module.Context.value__C_q d@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Term.Apply_q d@@5) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= d@@5 (|#_module.Term.Apply| |a#9#0#0| |a#9#1#0|))
 :qid |Combinatorsdfy.14:31|
 :skolemid |814|
)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( (_module.Term.Apply_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Context.C__term_q d@@6) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) ) (! (= d@@6 (|#_module.Context.C_term| |a#21#0#0| |a#21#1#0|))
 :qid |Combinatorsdfy.43:34|
 :skolemid |835|
)))
 :qid |unknown.0:0|
 :skolemid |836|
 :pattern ( (_module.Context.C__term_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Context.value__C_q d@@7) (exists ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (= d@@7 (|#_module.Context.value_C| |a#29#0#0| |a#29#1#0|))
 :qid |Combinatorsdfy.43:59|
 :skolemid |847|
)))
 :qid |unknown.0:0|
 :skolemid |848|
 :pattern ( (_module.Context.value__C_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Term.S_q d@@8) (= d@@8 |#_module.Term.S|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Term.S_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Term.K_q d@@9) (= d@@9 |#_module.Term.K|))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.Term.K_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Context.Hole_q d@@10) (= d@@10 |#_module.Context.Hole|))
 :qid |unknown.0:0|
 :skolemid |832|
 :pattern ( (_module.Context.Hole_q d@@10))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|C#0| T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.EvalExpr#canCall| (Lit DatatypeTypeType |C#0|) (Lit DatatypeTypeType |t#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |C#0| Tclass._module.Context) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Term)) (U_2_bool (Lit boolType (bool_2_U (_module.__default.IsContext ($LS $LZ) (Lit DatatypeTypeType |C#0|)))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Context.Hole_q (Lit DatatypeTypeType |C#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Context.C__term_q (Lit DatatypeTypeType |C#0|))))) (let ((|D#6| (Lit DatatypeTypeType (_module.Context._h0 (Lit DatatypeTypeType |C#0|)))))
(|_module.__default.EvalExpr#canCall| |D#6| (Lit DatatypeTypeType |t#0@@0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Context.C__term_q (Lit DatatypeTypeType |C#0|)))))) (let ((|D#7| (Lit DatatypeTypeType (_module.Context._h3 (Lit DatatypeTypeType |C#0|)))))
(|_module.__default.EvalExpr#canCall| |D#7| (Lit DatatypeTypeType |t#0@@0|)))))) (= (_module.__default.EvalExpr ($LS $ly@@0) (Lit DatatypeTypeType |C#0|) (Lit DatatypeTypeType |t#0@@0|)) (ite (_module.Context.Hole_q (Lit DatatypeTypeType |C#0|)) |t#0@@0| (ite (_module.Context.C__term_q (Lit DatatypeTypeType |C#0|)) (let ((|u#2| (Lit DatatypeTypeType (_module.Context._h1 (Lit DatatypeTypeType |C#0|)))))
(let ((|D#4| (Lit DatatypeTypeType (_module.Context._h0 (Lit DatatypeTypeType |C#0|)))))
(Lit DatatypeTypeType (|#_module.Term.Apply| (Lit DatatypeTypeType (_module.__default.EvalExpr ($LS $ly@@0) |D#4| (Lit DatatypeTypeType |t#0@@0|))) |u#2|)))) (let ((|D#5| (Lit DatatypeTypeType (_module.Context._h3 (Lit DatatypeTypeType |C#0|)))))
(let ((|v#2| (Lit DatatypeTypeType (_module.Context._h2 (Lit DatatypeTypeType |C#0|)))))
(Lit DatatypeTypeType (|#_module.Term.Apply| |v#2| (Lit DatatypeTypeType (_module.__default.EvalExpr ($LS $ly@@0) |D#5| (Lit DatatypeTypeType |t#0@@0|))))))))))))
 :qid |Combinatorsdfy.59:16|
 :weight 3
 :skolemid |612|
 :pattern ( (_module.__default.EvalExpr ($LS $ly@@0) (Lit DatatypeTypeType |C#0|) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (forall (($ly@@1 T@U) (|C#0@@0| T@U) (|t#0@@1| T@U) ) (! (= (_module.__default.EvalExpr ($LS $ly@@1) |C#0@@0| |t#0@@1|) (_module.__default.EvalExpr $ly@@1 |C#0@@0| |t#0@@1|))
 :qid |Combinatorsdfy.59:16|
 :skolemid |607|
 :pattern ( (_module.__default.EvalExpr ($LS $ly@@1) |C#0@@0| |t#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|C#0@@1| T@U) ) (!  (=> (or (|_module.__default.IsContext#canCall| |C#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |C#0@@1| Tclass._module.Context))) (and (=> (not (_module.Context.Hole_q |C#0@@1|)) (and (=> (_module.Context.C__term_q |C#0@@1|) (let ((|D#2| (_module.Context._h0 |C#0@@1|)))
(|_module.__default.IsContext#canCall| |D#2|))) (=> (not (_module.Context.C__term_q |C#0@@1|)) (let ((|D#3| (_module.Context._h3 |C#0@@1|)))
(let ((|v#1| (_module.Context._h2 |C#0@@1|)))
 (and (|_module.__default.IsValue#canCall| |v#1|) (=> (_module.__default.IsValue ($LS $LZ) |v#1|) (|_module.__default.IsContext#canCall| |D#3|)))))))) (= (_module.__default.IsContext ($LS $ly@@2) |C#0@@1|) (ite (_module.Context.Hole_q |C#0@@1|) true (ite (_module.Context.C__term_q |C#0@@1|) (let ((|D#0| (_module.Context._h0 |C#0@@1|)))
(_module.__default.IsContext $ly@@2 |D#0|)) (let ((|D#1| (_module.Context._h3 |C#0@@1|)))
(let ((|v#0| (_module.Context._h2 |C#0@@1|)))
 (and (_module.__default.IsValue ($LS $LZ) |v#0|) (_module.__default.IsContext $ly@@2 |D#1|)))))))))
 :qid |Combinatorsdfy.49:16|
 :skolemid |602|
 :pattern ( (_module.__default.IsContext ($LS $ly@@2) |C#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|C#0@@2| T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.EvalExpr#canCall| |C#0@@2| |t#0@@2|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |C#0@@2| Tclass._module.Context) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Term)) (_module.__default.IsContext ($LS $LZ) |C#0@@2|)))) ($Is DatatypeTypeType (_module.__default.EvalExpr $ly@@3 |C#0@@2| |t#0@@2|) Tclass._module.Term))
 :qid |Combinatorsdfy.59:16|
 :skolemid |609|
 :pattern ( (_module.__default.EvalExpr $ly@@3 |C#0@@2| |t#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|t#0@@3| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| |t#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@3| Tclass._module.Term))) (and (=> (not (_module.Term.S_q |t#0@@3|)) (=> (not (_module.Term.K_q |t#0@@3|)) (let ((|b#1| (_module.Term.cdr |t#0@@3|)))
(let ((|a#1| (_module.Term.car |t#0@@3|)))
 (and (=> (_module.Term.S_q |a#1|) (|_module.__default.IsValue#canCall| |b#1|)) (=> (not (_module.Term.S_q |a#1|)) (and (=> (_module.Term.K_q |a#1|) (|_module.__default.IsValue#canCall| |b#1|)) (=> (not (_module.Term.K_q |a#1|)) (let ((|y#1| (_module.Term.cdr |a#1|)))
(let ((|x#1| (_module.Term.car |a#1|)))
 (and (|$IsA#_module.Term| |x#1|) (=> (|_module.Term#Equal| |x#1| |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| |y#1|) (=> (_module.__default.IsValue $ly@@4 |y#1|) (|_module.__default.IsValue#canCall| |b#1|))))))))))))))) (= (_module.__default.IsValue ($LS $ly@@4) |t#0@@3|) (ite (_module.Term.S_q |t#0@@3|) true (ite (_module.Term.K_q |t#0@@3|) true (let ((|b#0| (_module.Term.cdr |t#0@@3|)))
(let ((|a#0| (_module.Term.car |t#0@@3|)))
(ite (_module.Term.S_q |a#0|) (_module.__default.IsValue $ly@@4 |b#0|) (ite (_module.Term.K_q |a#0|) (_module.__default.IsValue $ly@@4 |b#0|) (let ((|y#0| (_module.Term.cdr |a#0|)))
(let ((|x#0| (_module.Term.car |a#0|)))
 (and (and (|_module.Term#Equal| |x#0| |#_module.Term.S|) (_module.__default.IsValue $ly@@4 |y#0|)) (_module.__default.IsValue $ly@@4 |b#0|)))))))))))))
 :qid |Combinatorsdfy.21:10|
 :skolemid |586|
 :pattern ( (_module.__default.IsValue ($LS $ly@@4) |t#0@@3|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Term.Apply_q a@@0) (_module.Term.Apply_q b@@0)) (= (|_module.Term#Equal| a@@0 b@@0)  (and (|_module.Term#Equal| (_module.Term.car a@@0) (_module.Term.car b@@0)) (|_module.Term#Equal| (_module.Term.cdr a@@0) (_module.Term.cdr b@@0)))))
 :qid |unknown.0:0|
 :skolemid |829|
 :pattern ( (|_module.Term#Equal| a@@0 b@@0) (_module.Term.Apply_q a@@0))
 :pattern ( (|_module.Term#Equal| a@@0 b@@0) (_module.Term.Apply_q b@@0))
)))
(assert (forall (($ly@@5 T@U) (|t#0@@4| T@U) ) (! (= (_module.__default.IsValue ($LS $ly@@5) |t#0@@4|) (_module.__default.IsValue $ly@@5 |t#0@@4|))
 :qid |Combinatorsdfy.21:10|
 :skolemid |581|
 :pattern ( (_module.__default.IsValue ($LS $ly@@5) |t#0@@4|))
)))
(assert (forall (($ly@@6 T@U) (|C#0@@3| T@U) ) (! (= (_module.__default.IsContext ($LS $ly@@6) |C#0@@3|) (_module.__default.IsContext $ly@@6 |C#0@@3|))
 :qid |Combinatorsdfy.49:16|
 :skolemid |597|
 :pattern ( (_module.__default.IsContext ($LS $ly@@6) |C#0@@3|))
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
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Context.C_term| |a#20#0#0| |a#20#1#0|)) |##_module.Context.C_term|)
 :qid |Combinatorsdfy.43:34|
 :skolemid |833|
 :pattern ( (|#_module.Context.C_term| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= (_module.Context._h0 (|#_module.Context.C_term| |a#24#0#0| |a#24#1#0|)) |a#24#0#0|)
 :qid |Combinatorsdfy.43:34|
 :skolemid |841|
 :pattern ( (|#_module.Context.C_term| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= (_module.Context._h1 (|#_module.Context.C_term| |a#26#0#0| |a#26#1#0|)) |a#26#1#0|)
 :qid |Combinatorsdfy.43:34|
 :skolemid |843|
 :pattern ( (|#_module.Context.C_term| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Context.value_C| |a#28#0#0| |a#28#1#0|)) |##_module.Context.value_C|)
 :qid |Combinatorsdfy.43:59|
 :skolemid |845|
 :pattern ( (|#_module.Context.value_C| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) ) (! (= (_module.Context._h2 (|#_module.Context.value_C| |a#32#0#0| |a#32#1#0|)) |a#32#0#0|)
 :qid |Combinatorsdfy.43:59|
 :skolemid |853|
 :pattern ( (|#_module.Context.value_C| |a#32#0#0| |a#32#1#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= (_module.Context._h3 (|#_module.Context.value_C| |a#34#0#0| |a#34#1#0|)) |a#34#1#0|)
 :qid |Combinatorsdfy.43:59|
 :skolemid |855|
 :pattern ( (|#_module.Context.value_C| |a#34#0#0| |a#34#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.IsValue#canCall| (Lit DatatypeTypeType |t#0@@5|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@5| Tclass._module.Term))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.S_q (Lit DatatypeTypeType |t#0@@5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Term.K_q (Lit DatatypeTypeType |t#0@@5|)))))) (let ((|b#3| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@5|)))))
(let ((|a#3| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@5|)))))
 (and (=> (_module.Term.S_q |a#3|) (|_module.__default.IsValue#canCall| |b#3|)) (=> (not (_module.Term.S_q |a#3|)) (and (=> (_module.Term.K_q |a#3|) (|_module.__default.IsValue#canCall| |b#3|)) (=> (not (_module.Term.K_q |a#3|)) (let ((|y#3| (_module.Term.cdr |a#3|)))
(let ((|x#3| (_module.Term.car |a#3|)))
 (and (|$IsA#_module.Term| |x#3|) (=> (|_module.Term#Equal| |x#3| |#_module.Term.S|) (and (|_module.__default.IsValue#canCall| |y#3|) (=> (_module.__default.IsValue ($LS $ly@@7) |y#3|) (|_module.__default.IsValue#canCall| |b#3|))))))))))))))) (= (_module.__default.IsValue ($LS $ly@@7) (Lit DatatypeTypeType |t#0@@5|)) (ite (_module.Term.S_q (Lit DatatypeTypeType |t#0@@5|)) true (ite (_module.Term.K_q (Lit DatatypeTypeType |t#0@@5|)) true (let ((|b#2| (Lit DatatypeTypeType (_module.Term.cdr (Lit DatatypeTypeType |t#0@@5|)))))
(let ((|a#2| (Lit DatatypeTypeType (_module.Term.car (Lit DatatypeTypeType |t#0@@5|)))))
(ite (_module.Term.S_q |a#2|) (_module.__default.IsValue ($LS $ly@@7) |b#2|) (ite (_module.Term.K_q |a#2|) (_module.__default.IsValue ($LS $ly@@7) |b#2|) (let ((|y#2| (Lit DatatypeTypeType (_module.Term.cdr |a#2|))))
(let ((|x#2| (Lit DatatypeTypeType (_module.Term.car |a#2|))))
 (and (and (|_module.Term#Equal| |x#2| |#_module.Term.S|) (_module.__default.IsValue ($LS $ly@@7) |y#2|)) (_module.__default.IsValue ($LS $ly@@7) |b#2|)))))))))))))
 :qid |Combinatorsdfy.21:10|
 :weight 3
 :skolemid |587|
 :pattern ( (_module.__default.IsValue ($LS $ly@@7) (Lit DatatypeTypeType |t#0@@5|)))
))))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#_module.Term| d@@11) (or (or (_module.Term.S_q d@@11) (_module.Term.K_q d@@11)) (_module.Term.Apply_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (|$IsA#_module.Term| d@@11))
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
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#_module.Context.C_term| |a#25#0#0| |a#25#1#0|)))
 :qid |Combinatorsdfy.43:34|
 :skolemid |842|
 :pattern ( (|#_module.Context.C_term| |a#25#0#0| |a#25#1#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (< (DtRank |a#27#1#0|) (DtRank (|#_module.Context.C_term| |a#27#0#0| |a#27#1#0|)))
 :qid |Combinatorsdfy.43:34|
 :skolemid |844|
 :pattern ( (|#_module.Context.C_term| |a#27#0#0| |a#27#1#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (< (DtRank |a#33#0#0|) (DtRank (|#_module.Context.value_C| |a#33#0#0| |a#33#1#0|)))
 :qid |Combinatorsdfy.43:59|
 :skolemid |854|
 :pattern ( (|#_module.Context.value_C| |a#33#0#0| |a#33#1#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (< (DtRank |a#35#1#0|) (DtRank (|#_module.Context.value_C| |a#35#0#0| |a#35#1#0|)))
 :qid |Combinatorsdfy.43:59|
 :skolemid |856|
 :pattern ( (|#_module.Context.value_C| |a#35#0#0| |a#35#1#0|))
)))
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
(assert (forall ((d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 Tclass._module.Term) (or (or (_module.Term.S_q d@@12) (_module.Term.K_q d@@12)) (_module.Term.Apply_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (_module.Term.Apply_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Term))
 :pattern ( (_module.Term.K_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Term))
 :pattern ( (_module.Term.S_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Term))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass._module.Context) (or (or (_module.Context.Hole_q d@@13) (_module.Context.C__term_q d@@13)) (_module.Context.value__C_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( (_module.Context.value__C_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Context))
 :pattern ( (_module.Context.C__term_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Context))
 :pattern ( (_module.Context.Hole_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Context))
)))
(assert (forall ((d@@14 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@14 Tclass._module.Term)) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Term $h))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Term $h))
)))
(assert (forall ((d@@15 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@15 Tclass._module.Context)) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Context $h@@0))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Context $h@@0))
)))
(assert (= (Tag Tclass._module.Term) Tagclass._module.Term))
(assert (= (TagFamily Tclass._module.Term) tytagFamily$Term))
(assert (= (Tag Tclass._module.Context) Tagclass._module.Context))
(assert (= (TagFamily Tclass._module.Context) tytagFamily$Context))
(assert (= |#_module.Term.S| (Lit DatatypeTypeType |#_module.Term.S|)))
(assert (= |#_module.Term.K| (Lit DatatypeTypeType |#_module.Term.K|)))
(assert (= |#_module.Context.Hole| (Lit DatatypeTypeType |#_module.Context.Hole|)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|C#0@@4| T@U) (|t#0@@6| T@U) ) (!  (=> (or (|_module.__default.EvalExpr#canCall| |C#0@@4| |t#0@@6|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |C#0@@4| Tclass._module.Context) ($Is DatatypeTypeType |t#0@@6| Tclass._module.Term)) (_module.__default.IsContext ($LS $LZ) |C#0@@4|)))) (and (=> (not (_module.Context.Hole_q |C#0@@4|)) (and (=> (_module.Context.C__term_q |C#0@@4|) (let ((|D#2@@0| (_module.Context._h0 |C#0@@4|)))
(|_module.__default.EvalExpr#canCall| |D#2@@0| |t#0@@6|))) (=> (not (_module.Context.C__term_q |C#0@@4|)) (let ((|D#3@@0| (_module.Context._h3 |C#0@@4|)))
(|_module.__default.EvalExpr#canCall| |D#3@@0| |t#0@@6|))))) (= (_module.__default.EvalExpr ($LS $ly@@8) |C#0@@4| |t#0@@6|) (ite (_module.Context.Hole_q |C#0@@4|) |t#0@@6| (ite (_module.Context.C__term_q |C#0@@4|) (let ((|u#0| (_module.Context._h1 |C#0@@4|)))
(let ((|D#0@@0| (_module.Context._h0 |C#0@@4|)))
(|#_module.Term.Apply| (_module.__default.EvalExpr $ly@@8 |D#0@@0| |t#0@@6|) |u#0|))) (let ((|D#1@@0| (_module.Context._h3 |C#0@@4|)))
(let ((|v#0@@0| (_module.Context._h2 |C#0@@4|)))
(|#_module.Term.Apply| |v#0@@0| (_module.__default.EvalExpr $ly@@8 |D#1@@0| |t#0@@6|)))))))))
 :qid |Combinatorsdfy.59:16|
 :skolemid |611|
 :pattern ( (_module.__default.EvalExpr ($LS $ly@@8) |C#0@@4| |t#0@@6|))
))))
(assert (forall ((d@@16 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Term.Apply_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Term $h@@1))) ($IsAlloc DatatypeTypeType (_module.Term.car d@@16) Tclass._module.Term $h@@1))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.car d@@16) Tclass._module.Term $h@@1))
)))
(assert (forall ((d@@17 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Term.Apply_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Term $h@@2))) ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@17) Tclass._module.Term $h@@2))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Term.cdr d@@17) Tclass._module.Term $h@@2))
)))
(assert (forall ((d@@18 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Context.C__term_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Context $h@@3))) ($IsAlloc DatatypeTypeType (_module.Context._h0 d@@18) Tclass._module.Context $h@@3))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Context._h0 d@@18) Tclass._module.Context $h@@3))
)))
(assert (forall ((d@@19 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Context.C__term_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Context $h@@4))) ($IsAlloc DatatypeTypeType (_module.Context._h1 d@@19) Tclass._module.Term $h@@4))
 :qid |unknown.0:0|
 :skolemid |839|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Context._h1 d@@19) Tclass._module.Term $h@@4))
)))
(assert (forall ((d@@20 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Context.value__C_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Context $h@@5))) ($IsAlloc DatatypeTypeType (_module.Context._h2 d@@20) Tclass._module.Term $h@@5))
 :qid |unknown.0:0|
 :skolemid |850|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Context._h2 d@@20) Tclass._module.Term $h@@5))
)))
(assert (forall ((d@@21 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Context.value__C_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Context $h@@6))) ($IsAlloc DatatypeTypeType (_module.Context._h3 d@@21) Tclass._module.Context $h@@6))
 :qid |unknown.0:0|
 :skolemid |851|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Context._h3 d@@21) Tclass._module.Context $h@@6))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)) (Lit DatatypeTypeType (|#_module.Term.Apply| |a#11#0#0| |a#11#1#0|)))
 :qid |Combinatorsdfy.14:31|
 :skolemid |819|
 :pattern ( (|#_module.Term.Apply| (Lit DatatypeTypeType |a#11#0#0|) (Lit DatatypeTypeType |a#11#1#0|)))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= (|#_module.Context.C_term| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|)) (Lit DatatypeTypeType (|#_module.Context.C_term| |a#23#0#0| |a#23#1#0|)))
 :qid |Combinatorsdfy.43:34|
 :skolemid |840|
 :pattern ( (|#_module.Context.C_term| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|)))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) ) (! (= (|#_module.Context.value_C| (Lit DatatypeTypeType |a#31#0#0|) (Lit DatatypeTypeType |a#31#1#0|)) (Lit DatatypeTypeType (|#_module.Context.value_C| |a#31#0#0| |a#31#1#0|)))
 :qid |Combinatorsdfy.43:59|
 :skolemid |852|
 :pattern ( (|#_module.Context.value_C| (Lit DatatypeTypeType |a#31#0#0|) (Lit DatatypeTypeType |a#31#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|C#0@@5| T@U) ) (!  (=> (or (|_module.__default.IsContext#canCall| (Lit DatatypeTypeType |C#0@@5|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |C#0@@5| Tclass._module.Context))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Context.Hole_q (Lit DatatypeTypeType |C#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Context.C__term_q (Lit DatatypeTypeType |C#0@@5|))))) (let ((|D#6@@0| (Lit DatatypeTypeType (_module.Context._h0 (Lit DatatypeTypeType |C#0@@5|)))))
(|_module.__default.IsContext#canCall| |D#6@@0|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Context.C__term_q (Lit DatatypeTypeType |C#0@@5|)))))) (let ((|D#7@@0| (Lit DatatypeTypeType (_module.Context._h3 (Lit DatatypeTypeType |C#0@@5|)))))
(let ((|v#3| (Lit DatatypeTypeType (_module.Context._h2 (Lit DatatypeTypeType |C#0@@5|)))))
 (and (|_module.__default.IsValue#canCall| |v#3|) (=> (_module.__default.IsValue ($LS $LZ) |v#3|) (|_module.__default.IsContext#canCall| |D#7@@0|)))))))) (= (_module.__default.IsContext ($LS $ly@@9) (Lit DatatypeTypeType |C#0@@5|)) (ite (_module.Context.Hole_q (Lit DatatypeTypeType |C#0@@5|)) true (ite (_module.Context.C__term_q (Lit DatatypeTypeType |C#0@@5|)) (U_2_bool (let ((|D#4@@0| (Lit DatatypeTypeType (_module.Context._h0 (Lit DatatypeTypeType |C#0@@5|)))))
(Lit boolType (bool_2_U (_module.__default.IsContext ($LS $ly@@9) |D#4@@0|))))) (U_2_bool (let ((|D#5@@0| (Lit DatatypeTypeType (_module.Context._h3 (Lit DatatypeTypeType |C#0@@5|)))))
(let ((|v#2@@0| (Lit DatatypeTypeType (_module.Context._h2 (Lit DatatypeTypeType |C#0@@5|)))))
(Lit boolType (bool_2_U  (and (_module.__default.IsValue ($LS $LZ) |v#2@@0|) (_module.__default.IsContext ($LS $ly@@9) |D#5@@0|))))))))))))
 :qid |Combinatorsdfy.49:16|
 :weight 3
 :skolemid |603|
 :pattern ( (_module.__default.IsContext ($LS $ly@@9) (Lit DatatypeTypeType |C#0@@5|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |C#0@@6| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |D#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |v#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@7| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |u#Z#0@0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |D#Z#1@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.EvalExpr)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon12_Else_correct true))
(let ((anon12_Then_correct  (=> (= |C#0@@6| (|#_module.Context.value_C| |_mcc#2#0| |_mcc#3#0|)) (=> (and ($Is DatatypeTypeType |_mcc#2#0| Tclass._module.Term) ($Is DatatypeTypeType |_mcc#3#0| Tclass._module.Context)) (=> (and (and (and (= |let#0#0#0| |_mcc#3#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Context)) (and (= |D#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#2#0|))) (and (and ($Is DatatypeTypeType |let#1#0#0| Tclass._module.Term) (= |v#Z#0@0| |let#1#0#0|)) (and ($IsAlloc DatatypeTypeType |D#Z#0@0| Tclass._module.Context $Heap) ($IsAlloc DatatypeTypeType |t#0@@7| Tclass._module.Term $Heap)))) (and (=> (= (ControlFlow 0 16) (- 0 26)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (_module.Context.Hole_q |D#Z#0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 16) (- 0 25)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (_module.Context.C__term_q |D#Z#0@0|) (let ((|D#8| (_module.Context._h0 |D#Z#0@0|)))
(_module.__default.IsContext ($LS ($LS $LZ)) |D#8|))))))) (and (=> (= (ControlFlow 0 16) (- 0 24)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4|) (or (_module.__default.IsValue ($LS $LZ) |v#4|) (=> (_module.Term.S_q |v#4|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 23)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@0| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@0|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@0|) (=> (not (_module.Term.S_q |v#4@@0|)) (=> (_module.Term.K_q |v#4@@0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 22)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@1| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@1|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@1|) (=> (not (_module.Term.S_q |v#4@@1|)) (=> (not (_module.Term.K_q |v#4@@1|)) (let ((|b#0@@0| (_module.Term.cdr |v#4@@1|)))
(let ((|a#0@@0| (_module.Term.car |v#4@@1|)))
 (=> (_module.Term.S_q |a#0@@0|) (=> (_module.__default.IsValue ($LS $LZ) |a#0@@0|) (_module.__default.IsValue ($LS ($LS $LZ)) |b#0@@0|))))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 21)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@2| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@2|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@2|) (=> (not (_module.Term.S_q |v#4@@2|)) (=> (not (_module.Term.K_q |v#4@@2|)) (let ((|b#0@@1| (_module.Term.cdr |v#4@@2|)))
(let ((|a#0@@1| (_module.Term.car |v#4@@2|)))
 (=> (not (_module.Term.S_q |a#0@@1|)) (=> (_module.Term.K_q |a#0@@1|) (=> (_module.__default.IsValue ($LS $LZ) |a#0@@1|) (_module.__default.IsValue ($LS ($LS $LZ)) |b#0@@1|)))))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@3| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@3|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@3|) (=> (not (_module.Term.S_q |v#4@@3|)) (=> (not (_module.Term.K_q |v#4@@3|)) (let ((|b#0@@2| (_module.Term.cdr |v#4@@3|)))
(let ((|a#0@@2| (_module.Term.car |v#4@@3|)))
 (=> (not (_module.Term.S_q |a#0@@2|)) (=> (not (_module.Term.K_q |a#0@@2|)) (let ((|y#0@@0| (_module.Term.cdr |a#0@@2|)))
(let ((|x#0@@0| (_module.Term.car |a#0@@2|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#0@@0| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#0@@0|)) (_module.__default.IsValue ($LS $LZ) |b#0@@2|)) (_module.__default.IsValue ($LS $LZ) |a#0@@2|)) (|_module.Term#Equal| |x#0@@0| |#_module.Term.S|)))))))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@4| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@4|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@4|) (=> (not (_module.Term.S_q |v#4@@4|)) (=> (not (_module.Term.K_q |v#4@@4|)) (let ((|b#0@@3| (_module.Term.cdr |v#4@@4|)))
(let ((|a#0@@3| (_module.Term.car |v#4@@4|)))
 (=> (not (_module.Term.S_q |a#0@@3|)) (=> (not (_module.Term.K_q |a#0@@3|)) (let ((|y#0@@1| (_module.Term.cdr |a#0@@3|)))
(let ((|x#0@@1| (_module.Term.car |a#0@@3|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#0@@1| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#0@@1|)) (_module.__default.IsValue ($LS $LZ) |b#0@@3|)) (_module.__default.IsValue ($LS $LZ) |a#0@@3|)) (_module.__default.IsValue ($LS ($LS $LZ)) |y#0@@1|)))))))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|v#4@@5| (_module.Context._h2 |D#Z#0@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#4@@5|) (or (_module.__default.IsValue ($LS $LZ) |v#4@@5|) (=> (not (_module.Term.S_q |v#4@@5|)) (=> (not (_module.Term.K_q |v#4@@5|)) (let ((|b#0@@4| (_module.Term.cdr |v#4@@5|)))
(let ((|a#0@@4| (_module.Term.car |v#4@@5|)))
 (=> (not (_module.Term.S_q |a#0@@4|)) (=> (not (_module.Term.K_q |a#0@@4|)) (let ((|y#0@@2| (_module.Term.cdr |a#0@@4|)))
(let ((|x#0@@2| (_module.Term.car |a#0@@4|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#0@@2| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#0@@2|)) (_module.__default.IsValue ($LS $LZ) |b#0@@4|)) (_module.__default.IsValue ($LS $LZ) |a#0@@4|)) (_module.__default.IsValue ($LS ($LS $LZ)) |b#0@@4|)))))))))))))))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (|_module.__default.IsContext#canCall| |D#Z#0@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (=> (not (_module.Context.Hole_q |D#Z#0@0|)) (=> (not (_module.Context.C__term_q |D#Z#0@0|)) (let ((|D#9| (_module.Context._h3 |D#Z#0@0|)))
(_module.__default.IsContext ($LS ($LS $LZ)) |D#9|))))))) (=> (and (_module.__default.IsContext ($LS $LZ) |D#Z#0@0|) (= (ControlFlow 0 16) (- 0 15))) (or (< (DtRank |D#Z#0@0|) (DtRank |C#0@@6|)) (and (= (DtRank |D#Z#0@0|) (DtRank |C#0@@6|)) (< (DtRank |t#0@@7|) (DtRank |t#0@@7|))))))))))))))))))))
(let ((anon11_Else_correct  (=> (or (not (= |C#0@@6| (|#_module.Context.C_term| |_mcc#0#0| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 28) 16) anon12_Then_correct) (=> (= (ControlFlow 0 28) 27) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (= |C#0@@6| (|#_module.Context.C_term| |_mcc#0#0| |_mcc#1#0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Context) ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.Term)) (=> (and (and (and (= |let#2#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#2#0#0| Tclass._module.Term)) (and (= |u#Z#0@0| |let#2#0#0|) (= |let#3#0#0| |_mcc#0#0|))) (and (and ($Is DatatypeTypeType |let#3#0#0| Tclass._module.Context) (= |D#Z#1@0| |let#3#0#0|)) (and ($IsAlloc DatatypeTypeType |D#Z#1@0| Tclass._module.Context $Heap) ($IsAlloc DatatypeTypeType |t#0@@7| Tclass._module.Term $Heap)))) (and (=> (= (ControlFlow 0 4) (- 0 14)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (_module.Context.Hole_q |D#Z#1@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 4) (- 0 13)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (_module.Context.C__term_q |D#Z#1@0|) (let ((|D#12| (_module.Context._h0 |D#Z#1@0|)))
(_module.__default.IsContext ($LS ($LS $LZ)) |D#12|))))))) (and (=> (= (ControlFlow 0 4) (- 0 12)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6|) (or (_module.__default.IsValue ($LS $LZ) |v#6|) (=> (_module.Term.S_q |v#6|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 11)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@0| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@0|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@0|) (=> (not (_module.Term.S_q |v#6@@0|)) (=> (_module.Term.K_q |v#6@@0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 10)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@1| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@1|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@1|) (=> (not (_module.Term.S_q |v#6@@1|)) (=> (not (_module.Term.K_q |v#6@@1|)) (let ((|b#2@@0| (_module.Term.cdr |v#6@@1|)))
(let ((|a#2@@0| (_module.Term.car |v#6@@1|)))
 (=> (_module.Term.S_q |a#2@@0|) (=> (_module.__default.IsValue ($LS $LZ) |a#2@@0|) (_module.__default.IsValue ($LS ($LS $LZ)) |b#2@@0|))))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@2| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@2|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@2|) (=> (not (_module.Term.S_q |v#6@@2|)) (=> (not (_module.Term.K_q |v#6@@2|)) (let ((|b#2@@1| (_module.Term.cdr |v#6@@2|)))
(let ((|a#2@@1| (_module.Term.car |v#6@@2|)))
 (=> (not (_module.Term.S_q |a#2@@1|)) (=> (_module.Term.K_q |a#2@@1|) (=> (_module.__default.IsValue ($LS $LZ) |a#2@@1|) (_module.__default.IsValue ($LS ($LS $LZ)) |b#2@@1|)))))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@3| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@3|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@3|) (=> (not (_module.Term.S_q |v#6@@3|)) (=> (not (_module.Term.K_q |v#6@@3|)) (let ((|b#2@@2| (_module.Term.cdr |v#6@@3|)))
(let ((|a#2@@2| (_module.Term.car |v#6@@3|)))
 (=> (not (_module.Term.S_q |a#2@@2|)) (=> (not (_module.Term.K_q |a#2@@2|)) (let ((|y#2@@0| (_module.Term.cdr |a#2@@2|)))
(let ((|x#2@@0| (_module.Term.car |a#2@@2|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#2@@0| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#2@@0|)) (_module.__default.IsValue ($LS $LZ) |b#2@@2|)) (_module.__default.IsValue ($LS $LZ) |a#2@@2|)) (|_module.Term#Equal| |x#2@@0| |#_module.Term.S|)))))))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@4| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@4|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@4|) (=> (not (_module.Term.S_q |v#6@@4|)) (=> (not (_module.Term.K_q |v#6@@4|)) (let ((|b#2@@3| (_module.Term.cdr |v#6@@4|)))
(let ((|a#2@@3| (_module.Term.car |v#6@@4|)))
 (=> (not (_module.Term.S_q |a#2@@3|)) (=> (not (_module.Term.K_q |a#2@@3|)) (let ((|y#2@@1| (_module.Term.cdr |a#2@@3|)))
(let ((|x#2@@1| (_module.Term.car |a#2@@3|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#2@@1| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#2@@1|)) (_module.__default.IsValue ($LS $LZ) |b#2@@3|)) (_module.__default.IsValue ($LS $LZ) |a#2@@3|)) (_module.__default.IsValue ($LS ($LS $LZ)) |y#2@@1|)))))))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|v#6@@5| (_module.Context._h2 |D#Z#1@0|)))
 (=> (|_module.__default.IsValue#canCall| |v#6@@5|) (or (_module.__default.IsValue ($LS $LZ) |v#6@@5|) (=> (not (_module.Term.S_q |v#6@@5|)) (=> (not (_module.Term.K_q |v#6@@5|)) (let ((|b#2@@4| (_module.Term.cdr |v#6@@5|)))
(let ((|a#2@@4| (_module.Term.car |v#6@@5|)))
 (=> (not (_module.Term.S_q |a#2@@4|)) (=> (not (_module.Term.K_q |a#2@@4|)) (let ((|y#2@@2| (_module.Term.cdr |a#2@@4|)))
(let ((|x#2@@2| (_module.Term.car |a#2@@4|)))
 (=> (=> (and (and (|_module.Term#Equal| |x#2@@2| |#_module.Term.S|) (_module.__default.IsValue ($LS $LZ) |y#2@@2|)) (_module.__default.IsValue ($LS $LZ) |b#2@@4|)) (_module.__default.IsValue ($LS $LZ) |a#2@@4|)) (_module.__default.IsValue ($LS ($LS $LZ)) |b#2@@4|)))))))))))))))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (|_module.__default.IsContext#canCall| |D#Z#1@0|) (or (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (=> (not (_module.Context.Hole_q |D#Z#1@0|)) (=> (not (_module.Context.C__term_q |D#Z#1@0|)) (let ((|D#13| (_module.Context._h3 |D#Z#1@0|)))
(_module.__default.IsContext ($LS ($LS $LZ)) |D#13|))))))) (=> (and (_module.__default.IsContext ($LS $LZ) |D#Z#1@0|) (= (ControlFlow 0 4) (- 0 3))) (or (< (DtRank |D#Z#1@0|) (DtRank |C#0@@6|)) (and (= (DtRank |D#Z#1@0|) (DtRank |C#0@@6|)) (< (DtRank |t#0@@7|) (DtRank |t#0@@7|))))))))))))))))))))
(let ((anon10_Else_correct  (=> (or (not (= |C#0@@6| |#_module.Context.Hole|)) (not true)) (and (=> (= (ControlFlow 0 29) 4) anon11_Then_correct) (=> (= (ControlFlow 0 29) 28) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAlloc DatatypeTypeType |C#0@@6| Tclass._module.Context $Heap)) (and (|_module.__default.IsContext#canCall| |C#0@@6|) (_module.__default.IsContext ($LS $LZ) |C#0@@6|))) (and (and (=> (= (ControlFlow 0 30) 1) anon9_Then_correct) (=> (= (ControlFlow 0 30) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 30) 29) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |C#0@@6| Tclass._module.Context) ($Is DatatypeTypeType |t#0@@7| Tclass._module.Term)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 31) 30))) anon0_correct))))
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
