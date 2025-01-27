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
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Suc| () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$Nat () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.List () T@U)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.concat (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.concat#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h2 (T@U) T@U)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Nat.Zero| () T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.__default.count (T@U T@U T@U) T@U)
(declare-fun |_module.__default.count#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun |_module.Nat#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Nat.Suc| (T@U) T@U)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Suc_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.add (T@U T@U T@U) T@U)
(declare-fun |_module.__default.add#canCall| (T@U T@U) Bool)
(declare-fun _module.Nat._h0 (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Nat Tagclass._module.List |##_module.Nat.Zero| |##_module.Nat.Suc| |##_module.List.Nil| |##_module.List.Cons| tytagFamily$Nat tytagFamily$List)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List)  (and ($Is DatatypeTypeType |a#24#0#0| Tclass._module.Nat) ($Is DatatypeTypeType |a#24#1#0| Tclass._module.List)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1245|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.concat#canCall| (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| Tclass._module.List) ($Is DatatypeTypeType |ys#0| Tclass._module.List)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.concat#canCall| |tail#3| (Lit DatatypeTypeType |ys#0|)))) (= (_module.__default.concat ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |ys#0| (let ((|tail#2| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |x#2| (Lit DatatypeTypeType (_module.__default.concat ($LS $ly) |tail#2| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |Ripplinglegacydfy.99:16|
 :weight 3
 :skolemid |646|
 :pattern ( (_module.__default.concat ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0| T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.count#canCall| |x#0| |xs#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@0| Tclass._module.List)))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|ys#1| (_module.List._h2 |xs#0@@0|)))
(let ((|y#1| (_module.List._h1 |xs#0@@0|)))
 (and (and (and (|$IsA#_module.Nat| |x#0|) (|$IsA#_module.Nat| |y#1|)) (=> (|_module.Nat#Equal| |x#0| |y#1|) (|_module.__default.count#canCall| |x#0| |ys#1|))) (=> (not (|_module.Nat#Equal| |x#0| |y#1|)) (|_module.__default.count#canCall| |x#0| |ys#1|)))))) (= (_module.__default.count ($LS $ly@@0) |x#0| |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |#_module.Nat.Zero| (let ((|ys#0@@0| (_module.List._h2 |xs#0@@0|)))
(let ((|y#0| (_module.List._h1 |xs#0@@0|)))
(ite (|_module.Nat#Equal| |x#0| |y#0|) (|#_module.Nat.Suc| (_module.__default.count $ly@@0 |x#0| |ys#0@@0|)) (_module.__default.count $ly@@0 |x#0| |ys#0@@0|))))))))
 :qid |Ripplinglegacydfy.146:16|
 :skolemid |688|
 :pattern ( (_module.__default.count ($LS $ly@@0) |x#0| |xs#0@@0|))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Nat#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( (|_module.Nat#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@0| T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.count#canCall| (Lit DatatypeTypeType |x#0@@0|) (Lit DatatypeTypeType |xs#0@@1|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@1| Tclass._module.List)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|y#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@1|)))))
 (and (and (and (|$IsA#_module.Nat| (Lit DatatypeTypeType |x#0@@0|)) (|$IsA#_module.Nat| |y#3|)) (=> (|_module.Nat#Equal| |x#0@@0| |y#3|) (|_module.__default.count#canCall| (Lit DatatypeTypeType |x#0@@0|) |ys#3|))) (=> (not (|_module.Nat#Equal| |x#0@@0| |y#3|)) (|_module.__default.count#canCall| (Lit DatatypeTypeType |x#0@@0|) |ys#3|)))))) (= (_module.__default.count ($LS $ly@@1) (Lit DatatypeTypeType |x#0@@0|) (Lit DatatypeTypeType |xs#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) |#_module.Nat.Zero| (let ((|ys#2| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|y#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@1|)))))
(ite (|_module.Nat#Equal| |x#0@@0| |y#2|) (|#_module.Nat.Suc| (Lit DatatypeTypeType (_module.__default.count ($LS $ly@@1) (Lit DatatypeTypeType |x#0@@0|) |ys#2|))) (_module.__default.count ($LS $ly@@1) (Lit DatatypeTypeType |x#0@@0|) |ys#2|))))))))
 :qid |Ripplinglegacydfy.146:16|
 :weight 3
 :skolemid |689|
 :pattern ( (_module.__default.count ($LS $ly@@1) (Lit DatatypeTypeType |x#0@@0|) (Lit DatatypeTypeType |xs#0@@1|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Nat.Zero_q d) (= (DatatypeCtorId d) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Suc_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Suc|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (_module.Nat.Suc_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|xs#0@@2| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.concat#canCall| |xs#0@@2| |ys#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@2| Tclass._module.List) ($Is DatatypeTypeType |ys#0@@1| Tclass._module.List)))) (and (=> (not (_module.List.Nil_q |xs#0@@2|)) (let ((|tail#1| (_module.List._h2 |xs#0@@2|)))
(|_module.__default.concat#canCall| |tail#1| |ys#0@@1|))) (= (_module.__default.concat ($LS $ly@@2) |xs#0@@2| |ys#0@@1|) (ite (_module.List.Nil_q |xs#0@@2|) |ys#0@@1| (let ((|tail#0| (_module.List._h2 |xs#0@@2|)))
(let ((|x#0@@1| (_module.List._h1 |xs#0@@2|)))
(|#_module.List.Cons| |x#0@@1| (_module.__default.concat $ly@@2 |tail#0| |ys#0@@1|))))))))
 :qid |Ripplinglegacydfy.99:16|
 :skolemid |645|
 :pattern ( (_module.__default.concat ($LS $ly@@2) |xs#0@@2| |ys#0@@1|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#23#0#0| |a#23#1#0|))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1243|
)))
 :qid |unknown.0:0|
 :skolemid |1244|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Nat.Zero_q d@@4) (= d@@4 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1223|
 :pattern ( (_module.Nat.Zero_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1240|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Nat.Suc_q d@@6) (exists ((|a#13#0#0| T@U) ) (! (= d@@6 (|#_module.Nat.Suc| |a#13#0#0|))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (_module.Nat.Suc_q d@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|x#0@@2| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|_module.__default.add#canCall| (Lit DatatypeTypeType |x#0@@2|) (Lit DatatypeTypeType |y#0@@0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@0| Tclass._module.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@2|)))))) (let ((|w#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@2|)))))
(|_module.__default.add#canCall| |w#3| (Lit DatatypeTypeType |y#0@@0|)))) (= (_module.__default.add ($LS $ly@@3) (Lit DatatypeTypeType |x#0@@2|) (Lit DatatypeTypeType |y#0@@0|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@2|)) |y#0@@0| (let ((|w#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@2|)))))
(Lit DatatypeTypeType (|#_module.Nat.Suc| (Lit DatatypeTypeType (_module.__default.add ($LS $ly@@3) |w#2| (Lit DatatypeTypeType |y#0@@0|))))))))))
 :qid |Ripplinglegacydfy.34:16|
 :weight 3
 :skolemid |596|
 :pattern ( (_module.__default.add ($LS $ly@@3) (Lit DatatypeTypeType |x#0@@2|) (Lit DatatypeTypeType |y#0@@0|)))
))))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#14#0#0| Tclass._module.Nat))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Nat.Suc_q a@@0) (_module.Nat.Suc_q b@@0)) (= (|_module.Nat#Equal| a@@0 b@@0) (|_module.Nat#Equal| (_module.Nat._h0 a@@0) (_module.Nat._h0 b@@0))))
 :qid |unknown.0:0|
 :skolemid |1237|
 :pattern ( (|_module.Nat#Equal| a@@0 b@@0) (_module.Nat.Suc_q a@@0))
 :pattern ( (|_module.Nat#Equal| a@@0 b@@0) (_module.Nat.Suc_q b@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0@@3| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |x#0@@3| |y#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@3| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@1| Tclass._module.Nat)))) ($Is DatatypeTypeType (_module.__default.add $ly@@4 |x#0@@3| |y#0@@1|) Tclass._module.Nat))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |593|
 :pattern ( (_module.__default.add $ly@@4 |x#0@@3| |y#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|xs#0@@3| T@U) (|ys#0@@2| T@U) ) (!  (=> (or (|_module.__default.concat#canCall| |xs#0@@3| |ys#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| Tclass._module.List) ($Is DatatypeTypeType |ys#0@@2| Tclass._module.List)))) ($Is DatatypeTypeType (_module.__default.concat $ly@@5 |xs#0@@3| |ys#0@@2|) Tclass._module.List))
 :qid |Ripplinglegacydfy.99:16|
 :skolemid |643|
 :pattern ( (_module.__default.concat $ly@@5 |xs#0@@3| |ys#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|x#0@@4| T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.count#canCall| |x#0@@4| |xs#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@4| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@4| Tclass._module.List)))) ($Is DatatypeTypeType (_module.__default.count $ly@@6 |x#0@@4| |xs#0@@4|) Tclass._module.Nat))
 :qid |Ripplinglegacydfy.146:16|
 :skolemid |686|
 :pattern ( (_module.__default.count $ly@@6 |x#0@@4| |xs#0@@4|))
))))
(assert (forall (($ly@@7 T@U) (|x#0@@5| T@U) (|y#0@@2| T@U) ) (! (= (_module.__default.add ($LS $ly@@7) |x#0@@5| |y#0@@2|) (_module.__default.add $ly@@7 |x#0@@5| |y#0@@2|))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |590|
 :pattern ( (_module.__default.add ($LS $ly@@7) |x#0@@5| |y#0@@2|))
)))
(assert (forall (($ly@@8 T@U) (|xs#0@@5| T@U) (|ys#0@@3| T@U) ) (! (= (_module.__default.concat ($LS $ly@@8) |xs#0@@5| |ys#0@@3|) (_module.__default.concat $ly@@8 |xs#0@@5| |ys#0@@3|))
 :qid |Ripplinglegacydfy.99:16|
 :skolemid |640|
 :pattern ( (_module.__default.concat ($LS $ly@@8) |xs#0@@5| |ys#0@@3|))
)))
(assert (forall (($ly@@9 T@U) (|x#0@@6| T@U) (|xs#0@@6| T@U) ) (! (= (_module.__default.count ($LS $ly@@9) |x#0@@6| |xs#0@@6|) (_module.__default.count $ly@@9 |x#0@@6| |xs#0@@6|))
 :qid |Ripplinglegacydfy.146:16|
 :skolemid |684|
 :pattern ( (_module.__default.count ($LS $ly@@9) |x#0@@6| |xs#0@@6|))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@7) (or (_module.Nat.Zero_q d@@7) (_module.Nat.Suc_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1234|
 :pattern ( (|$IsA#_module.Nat| d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (|$IsA#_module.List| d@@8) (or (_module.List.Nil_q d@@8) (_module.List.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |1254|
 :pattern ( (|$IsA#_module.List| d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@9) (_module.Nat.Suc_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |1235|
 :pattern ( (_module.Nat.Suc_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Nat))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.List) (or (_module.List.Nil_q d@@10) (_module.List.Cons_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( (_module.List.Cons_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.List))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Nat.Zero_q a@@1) (_module.Nat.Zero_q b@@1)) (|_module.Nat#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1236|
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Zero_q a@@1))
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Zero_q b@@1))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#22#0#0| |a#22#1#0|)) |##_module.List.Cons|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1241|
 :pattern ( (|#_module.List.Cons| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#26#0#0| |a#26#1#0|)) |a#26#0#0|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1249|
 :pattern ( (|#_module.List.Cons| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (_module.List._h2 (|#_module.List.Cons| |a#28#0#0| |a#28#1#0|)) |a#28#1#0|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1251|
 :pattern ( (|#_module.List.Cons| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Suc| |a#12#0#0|)) |##_module.Nat.Suc|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1224|
 :pattern ( (|#_module.Nat.Suc| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_module.Nat._h0 (|#_module.Nat.Suc| |a#16#0#0|)) |a#16#0#0|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1231|
 :pattern ( (|#_module.Nat.Suc| |a#16#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|x#0@@7| T@U) (|y#0@@3| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |x#0@@7| |y#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@7| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@3| Tclass._module.Nat)))) (and (=> (not (_module.Nat.Zero_q |x#0@@7|)) (let ((|w#1| (_module.Nat._h0 |x#0@@7|)))
(|_module.__default.add#canCall| |w#1| |y#0@@3|))) (= (_module.__default.add ($LS $ly@@10) |x#0@@7| |y#0@@3|) (ite (_module.Nat.Zero_q |x#0@@7|) |y#0@@3| (let ((|w#0| (_module.Nat._h0 |x#0@@7|)))
(|#_module.Nat.Suc| (_module.__default.add $ly@@10 |w#0| |y#0@@3|)))))))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |595|
 :pattern ( (_module.__default.add ($LS $ly@@10) |x#0@@7| |y#0@@3|))
))))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (< (DtRank |a#27#0#0|) (DtRank (|#_module.List.Cons| |a#27#0#0| |a#27#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1250|
 :pattern ( (|#_module.List.Cons| |a#27#0#0| |a#27#1#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (< (DtRank |a#29#1#0|) (DtRank (|#_module.List.Cons| |a#29#0#0| |a#29#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1252|
 :pattern ( (|#_module.List.Cons| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (DtRank |a#17#0#0|) (DtRank (|#_module.Nat.Suc| |a#17#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1232|
 :pattern ( (|#_module.Nat.Suc| |a#17#0#0|))
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
 :skolemid |1320|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@11 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@11 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Nat $h))
)))
(assert (forall ((d@@12 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@12 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.List $h@@0))
 :qid |unknown.0:0|
 :skolemid |1253|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.List $h@@0))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@13 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Nat.Suc_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Nat $h@@1))) ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@13) Tclass._module.Nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@13) Tclass._module.Nat $h@@1))
)))
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.List $h@@2))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@14) Tclass._module.Nat $h@@2))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@14) Tclass._module.Nat $h@@2))
)))
(assert (forall ((d@@15 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.List $h@@3))) ($IsAlloc DatatypeTypeType (_module.List._h2 d@@15) Tclass._module.List $h@@3))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h2 d@@15) Tclass._module.List $h@@3))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#25#0#0| |a#25#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1248|
 :pattern ( (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Suc| |a#15#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1230|
 :pattern ( (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n#0| () T@U)
(declare-fun |xs#0@@7| () T@U)
(declare-fun |ys#0@@4| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $LZ () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.P2__alt)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Nat| |n#0|)) (and (|$IsA#_module.List| |xs#0@@7|) (|$IsA#_module.List| |ys#0@@4|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (forall ((|$ih#n0#0| T@U) (|$ih#xs0#0| T@U) (|$ih#ys0#0| T@U) ) (!  (=> (and (and (and (and ($Is DatatypeTypeType |$ih#n0#0| Tclass._module.Nat) ($Is DatatypeTypeType |$ih#xs0#0| Tclass._module.List)) ($Is DatatypeTypeType |$ih#ys0#0| Tclass._module.List)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#n0#0|) (DtRank |n#0|)) (and (= (DtRank |$ih#n0#0|) (DtRank |n#0|)) (or (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@7|)) (and (= (DtRank |$ih#xs0#0|) (DtRank |xs#0@@7|)) (< (DtRank |$ih#ys0#0|) (DtRank |ys#0@@4|))))))) (|_module.Nat#Equal| (_module.__default.add ($LS $LZ) (_module.__default.count ($LS $LZ) |$ih#n0#0| |$ih#xs0#0|) (_module.__default.count ($LS $LZ) |$ih#n0#0| |$ih#ys0#0|)) (_module.__default.count ($LS $LZ) |$ih#n0#0| (_module.__default.concat ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|))))
 :qid |Ripplinglegacydfy.590:14|
 :skolemid |1200|
 :pattern ( (_module.__default.count ($LS $LZ) |$ih#n0#0| (_module.__default.concat ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|)))
 :pattern ( (_module.__default.add ($LS $LZ) (_module.__default.count ($LS $LZ) |$ih#n0#0| |$ih#xs0#0|) (_module.__default.count ($LS $LZ) |$ih#n0#0| |$ih#ys0#0|)))
)) (= (ControlFlow 0 2) (- 0 1)))) (|_module.Nat#Equal| (_module.__default.add ($LS ($LS $LZ)) (_module.__default.count ($LS ($LS $LZ)) |n#0| |xs#0@@7|) (_module.__default.count ($LS ($LS $LZ)) |n#0| |ys#0@@4|)) (_module.__default.count ($LS ($LS $LZ)) |n#0| (_module.__default.concat ($LS ($LS $LZ)) |xs#0@@7| |ys#0@@4|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |n#0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |n#0| Tclass._module.Nat $Heap)) (|$IsA#_module.Nat| |n#0|)) (and (and ($Is DatatypeTypeType |xs#0@@7| Tclass._module.List) ($IsAlloc DatatypeTypeType |xs#0@@7| Tclass._module.List $Heap)) (|$IsA#_module.List| |xs#0@@7|))) (and (and (and ($Is DatatypeTypeType |ys#0@@4| Tclass._module.List) ($IsAlloc DatatypeTypeType |ys#0@@4| Tclass._module.List $Heap)) (|$IsA#_module.List| |ys#0@@4|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
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
